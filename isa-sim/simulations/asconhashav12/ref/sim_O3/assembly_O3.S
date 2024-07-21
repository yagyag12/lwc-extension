
sim_O3/my_program:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	1141                	addi	sp,sp,-16
   10096:	4581                	li	a1,0
   10098:	c422                	sw	s0,8(sp)
   1009a:	c606                	sw	ra,12(sp)
   1009c:	842a                	mv	s0,a0
   1009e:	2fa040ef          	jal	14398 <__call_exitprocs>
   100a2:	f201a783          	lw	a5,-224(gp) # 1f8c0 <__stdio_exit_handler>
   100a6:	c391                	beqz	a5,100aa <exit+0x16>
   100a8:	9782                	jalr	a5
   100aa:	8522                	mv	a0,s0
   100ac:	1aa0b0ef          	jal	1b256 <_exit>

000100b0 <main>:
   100b0:	67f9                	lui	a5,0x1e
   100b2:	92c78793          	addi	a5,a5,-1748 # 1d92c <__clzsi2+0x74>
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
   100e6:	91050513          	addi	a0,a0,-1776 # 1d910 <__clzsi2+0x58>
   100ea:	c4a2                	sw	s0,72(sp)
   100ec:	c2a6                	sw	s1,68(sp)
   100ee:	c0ca                	sw	s2,64(sp)
   100f0:	711030ef          	jal	14000 <printf>
   100f4:	6579                	lui	a0,0x1e
   100f6:	91c50513          	addi	a0,a0,-1764 # 1d91c <__clzsi2+0x64>
   100fa:	707030ef          	jal	14000 <printf>
   100fe:	0800                	addi	s0,sp,16
   10100:	03010913          	addi	s2,sp,48
   10104:	64f9                	lui	s1,0x1e
   10106:	00044583          	lbu	a1,0(s0)
   1010a:	92448513          	addi	a0,s1,-1756 # 1d924 <__clzsi2+0x6c>
   1010e:	0405                	addi	s0,s0,1
   10110:	6f1030ef          	jal	14000 <printf>
   10114:	ff2419e3          	bne	s0,s2,10106 <main+0x56>
   10118:	4529                	li	a0,10
   1011a:	719030ef          	jal	14032 <putchar>
   1011e:	4426                	lw	s0,72(sp)
   10120:	4496                	lw	s1,68(sp)
   10122:	4906                	lw	s2,64(sp)
   10124:	40b6                	lw	ra,76(sp)
   10126:	854e                	mv	a0,s3
   10128:	59f2                	lw	s3,60(sp)
   1012a:	6161                	addi	sp,sp,80
   1012c:	8082                	ret
   1012e:	f141a783          	lw	a5,-236(gp) # 1f8b4 <_impure_ptr>
   10132:	6579                	lui	a0,0x1e
   10134:	4655                	li	a2,21
   10136:	47d4                	lw	a3,12(a5)
   10138:	4585                	li	a1,1
   1013a:	8f850513          	addi	a0,a0,-1800 # 1d8f8 <__clzsi2+0x40>
   1013e:	609030ef          	jal	13f46 <fwrite>
   10142:	4985                	li	s3,1
   10144:	b7c5                	j	10124 <main+0x74>

00010146 <register_fini>:
   10146:	00000793          	li	a5,0
   1014a:	c791                	beqz	a5,10156 <register_fini+0x10>
   1014c:	655d                	lui	a0,0x17
   1014e:	37650513          	addi	a0,a0,886 # 17376 <__libc_fini_array>
   10152:	3140406f          	j	14466 <atexit>
   10156:	8082                	ret

00010158 <_start>:
   10158:	00010197          	auipc	gp,0x10
   1015c:	84818193          	addi	gp,gp,-1976 # 1f9a0 <__global_pointer$>
   10160:	f2018513          	addi	a0,gp,-224 # 1f8c0 <__stdio_exit_handler>
   10164:	24c18613          	addi	a2,gp,588 # 1fbec <__BSS_END__>
   10168:	8e09                	sub	a2,a2,a0
   1016a:	4581                	li	a1,0
   1016c:	184040ef          	jal	142f0 <memset>
   10170:	00004517          	auipc	a0,0x4
   10174:	2f650513          	addi	a0,a0,758 # 14466 <atexit>
   10178:	c519                	beqz	a0,10186 <_start+0x2e>
   1017a:	00007517          	auipc	a0,0x7
   1017e:	1fc50513          	addi	a0,a0,508 # 17376 <__libc_fini_array>
   10182:	2e4040ef          	jal	14466 <atexit>
   10186:	0f8040ef          	jal	1427e <__libc_init_array>
   1018a:	4502                	lw	a0,0(sp)
   1018c:	004c                	addi	a1,sp,4
   1018e:	4601                	li	a2,0
   10190:	3705                	jal	100b0 <main>
   10192:	b709                	j	10094 <exit>

00010194 <__do_global_dtors_aux>:
   10194:	1141                	addi	sp,sp,-16
   10196:	c422                	sw	s0,8(sp)
   10198:	f401c783          	lbu	a5,-192(gp) # 1f8e0 <completed.1>
   1019c:	c606                	sw	ra,12(sp)
   1019e:	ef99                	bnez	a5,101bc <__do_global_dtors_aux+0x28>
   101a0:	00000793          	li	a5,0
   101a4:	cb89                	beqz	a5,101b6 <__do_global_dtors_aux+0x22>
   101a6:	0001f537          	lui	a0,0x1f
   101aa:	19050513          	addi	a0,a0,400 # 1f190 <__EH_FRAME_BEGIN__>
   101ae:	00000097          	auipc	ra,0x0
   101b2:	000000e7          	jalr	zero # 0 <exit-0x10094>
   101b6:	4785                	li	a5,1
   101b8:	f4f18023          	sb	a5,-192(gp) # 1f8e0 <completed.1>
   101bc:	40b2                	lw	ra,12(sp)
   101be:	4422                	lw	s0,8(sp)
   101c0:	0141                	addi	sp,sp,16
   101c2:	8082                	ret

000101c4 <frame_dummy>:
   101c4:	00000793          	li	a5,0
   101c8:	cb99                	beqz	a5,101de <frame_dummy+0x1a>
   101ca:	0001f537          	lui	a0,0x1f
   101ce:	f4418593          	addi	a1,gp,-188 # 1f8e4 <object.0>
   101d2:	19050513          	addi	a0,a0,400 # 1f190 <__EH_FRAME_BEGIN__>
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
   101fa:	de2a                	sw	a0,60(sp)
   101fc:	d62e                	sw	a1,44(sp)
   101fe:	d432                	sw	a2,40(sp)
   10200:	8836                	mv	a6,a3
   10202:	e299                	bnez	a3,10208 <crypto_hash+0x28>
   10204:	1110306f          	j	13b14 <crypto_hash+0x3934>
   10208:	5b22                	lw	s6,40(sp)
   1020a:	5bb2                	lw	s7,44(sp)
   1020c:	23be9937          	lui	s2,0x23be9
   10210:	a13c49b7          	lui	s3,0xa13c4
   10214:	7f5233b7          	lui	t2,0x7f523
   10218:	d6f6a437          	lui	s0,0xd6f6a
   1021c:	6c764fb7          	lui	t6,0x6c764
   10220:	2ec8e4b7          	lui	s1,0x2ec8e
   10224:	c0ae0f37          	lui	t5,0xc0ae0
   10228:	738ec7b7          	lui	a5,0x738ec
   1022c:	fc6536b7          	lui	a3,0xfc653
   10230:	01470737          	lui	a4,0x1470
   10234:	c442                	sw	a6,8(sp)
   10236:	d8790913          	addi	s2,s2,-633 # 23be8d87 <__BSS_END__+0x23bc919b>
   1023a:	2a298993          	addi	s3,s3,674 # a13c42a2 <__BSS_END__+0xa13a46b6>
   1023e:	77d38393          	addi	t2,t2,1917 # 7f52377d <__BSS_END__+0x7f503b91>
   10242:	54d40413          	addi	s0,s0,1357 # d6f6a54d <__BSS_END__+0xd6f4a961>
   10246:	84cf8f93          	addi	t6,t6,-1972 # 6c76384c <__BSS_END__+0x6c743c60>
   1024a:	32948493          	addi	s1,s1,809 # 2ec8e329 <__BSS_END__+0x2ec6e73d>
   1024e:	fa7f0f13          	addi	t5,t5,-89 # c0adffa7 <__BSS_END__+0xc0ac03bb>
   10252:	38a78793          	addi	a5,a5,906 # 738ec38a <__BSS_END__+0x738cc79e>
   10256:	8a668693          	addi	a3,a3,-1882 # fc6528a6 <__BSS_END__+0xfc632cba>
   1025a:	19470713          	addi	a4,a4,404 # 1470194 <__BSS_END__+0x14505a8>
   1025e:	c05e                	sw	s7,0(sp)
   10260:	c25a                	sw	s6,4(sp)
   10262:	4302                	lw	t1,0(sp)
   10264:	00034603          	lbu	a2,0(t1) # 101d6 <frame_dummy+0x12>
   10268:	00134e83          	lbu	t4,1(t1)
   1026c:	00434e03          	lbu	t3,4(t1)
   10270:	00234883          	lbu	a7,2(t1)
   10274:	00734583          	lbu	a1,7(t1)
   10278:	00534803          	lbu	a6,5(t1)
   1027c:	00634503          	lbu	a0,6(t1)
   10280:	0ec2                	slli	t4,t4,0x10
   10282:	00334303          	lbu	t1,3(t1)
   10286:	0662                	slli	a2,a2,0x18
   10288:	0e62                	slli	t3,t3,0x18
   1028a:	01d66633          	or	a2,a2,t4
   1028e:	08a2                	slli	a7,a7,0x8
   10290:	01c5e5b3          	or	a1,a1,t3
   10294:	0842                	slli	a6,a6,0x10
   10296:	01166633          	or	a2,a2,a7
   1029a:	0105e5b3          	or	a1,a1,a6
   1029e:	00666633          	or	a2,a2,t1
   102a2:	0522                	slli	a0,a0,0x8
   102a4:	8d4d                	or	a0,a0,a1
   102a6:	01364633          	xor	a2,a2,s3
   102aa:	0097c333          	xor	t1,a5,s1
   102ae:	013449b3          	xor	s3,s0,s3
   102b2:	8e39                	xor	a2,a2,a4
   102b4:	01ff45b3          	xor	a1,t5,t6
   102b8:	01254533          	xor	a0,a0,s2
   102bc:	fff44713          	not	a4,s0
   102c0:	0123c8b3          	xor	a7,t2,s2
   102c4:	00d54833          	xor	a6,a0,a3
   102c8:	0b45c913          	xori	s2,a1,180
   102cc:	01377733          	and	a4,a4,s3
   102d0:	f4b5cf93          	xori	t6,a1,-181
   102d4:	fff3c513          	not	a0,t2
   102d8:	ffff4e93          	not	t4,t5
   102dc:	fff7c693          	not	a3,a5
   102e0:	fff34e13          	not	t3,t1
   102e4:	006745b3          	xor	a1,a4,t1
   102e8:	01157533          	and	a0,a0,a7
   102ec:	007ff733          	and	a4,t6,t2
   102f0:	fff84493          	not	s1,a6
   102f4:	008e7e33          	and	t3,t3,s0
   102f8:	012efeb3          	and	t4,t4,s2
   102fc:	0066f6b3          	and	a3,a3,t1
   10300:	010eceb3          	xor	t4,t4,a6
   10304:	8eb1                	xor	a3,a3,a2
   10306:	01254533          	xor	a0,a0,s2
   1030a:	fff9cf93          	not	t6,s3
   1030e:	fff64293          	not	t0,a2
   10312:	01e4f4b3          	and	s1,s1,t5
   10316:	fff8c913          	not	s2,a7
   1031a:	01e74733          	xor	a4,a4,t5
   1031e:	00fe4e33          	xor	t3,t3,a5
   10322:	0114c4b3          	xor	s1,s1,a7
   10326:	01d74733          	xor	a4,a4,t4
   1032a:	00de4e33          	xor	t3,t3,a3
   1032e:	00a3c8b3          	xor	a7,t2,a0
   10332:	00b44333          	xor	t1,s0,a1
   10336:	00f2f2b3          	and	t0,t0,a5
   1033a:	01097933          	and	s2,s2,a6
   1033e:	00cff7b3          	and	a5,t6,a2
   10342:	0067c3b3          	xor	t2,a5,t1
   10346:	01194933          	xor	s2,s2,a7
   1034a:	003e1793          	slli	a5,t3,0x3
   1034e:	01d75893          	srli	a7,a4,0x1d
   10352:	00f8e8b3          	or	a7,a7,a5
   10356:	01de5d93          	srli	s11,t3,0x1d
   1035a:	00371793          	slli	a5,a4,0x3
   1035e:	00fdedb3          	or	s11,s11,a5
   10362:	00775d13          	srli	s10,a4,0x7
   10366:	019e1793          	slli	a5,t3,0x19
   1036a:	007e5f93          	srli	t6,t3,0x7
   1036e:	00fd6d33          	or	s10,s10,a5
   10372:	01971793          	slli	a5,a4,0x19
   10376:	00a95f13          	srli	t5,s2,0xa
   1037a:	00ffefb3          	or	t6,t6,a5
   1037e:	01639793          	slli	a5,t2,0x16
   10382:	009ecab3          	xor	s5,t4,s1
   10386:	01e7ef33          	or	t5,a5,t5
   1038a:	00a3de93          	srli	t4,t2,0xa
   1038e:	01691793          	slli	a5,s2,0x16
   10392:	01195c93          	srli	s9,s2,0x11
   10396:	01d7eeb3          	or	t4,a5,t4
   1039a:	00f39793          	slli	a5,t2,0xf
   1039e:	0132c2b3          	xor	t0,t0,s3
   103a2:	0197ecb3          	or	s9,a5,s9
   103a6:	0113dc13          	srli	s8,t2,0x11
   103aa:	00f91793          	slli	a5,s2,0xf
   103ae:	0187ec33          	or	s8,a5,s8
   103b2:	0074d613          	srli	a2,s1,0x7
   103b6:	01929793          	slli	a5,t0,0x19
   103ba:	0072db13          	srli	s6,t0,0x7
   103be:	8e5d                	or	a2,a2,a5
   103c0:	01949793          	slli	a5,s1,0x19
   103c4:	0056ca33          	xor	s4,a3,t0
   103c8:	0167eb33          	or	s6,a5,s6
   103cc:	01729693          	slli	a3,t0,0x17
   103d0:	0094d793          	srli	a5,s1,0x9
   103d4:	fff54513          	not	a0,a0
   103d8:	fff5c593          	not	a1,a1
   103dc:	01749b93          	slli	s7,s1,0x17
   103e0:	8edd                	or	a3,a3,a5
   103e2:	0092d793          	srli	a5,t0,0x9
   103e6:	c646                	sw	a7,12(sp)
   103e8:	0177ebb3          	or	s7,a5,s7
   103ec:	00155893          	srli	a7,a0,0x1
   103f0:	01f59793          	slli	a5,a1,0x1f
   103f4:	0117e7b3          	or	a5,a5,a7
   103f8:	c83e                	sw	a5,16(sp)
   103fa:	0015d893          	srli	a7,a1,0x1
   103fe:	01f51793          	slli	a5,a0,0x1f
   10402:	0117e7b3          	or	a5,a5,a7
   10406:	ca3e                	sw	a5,20(sp)
   10408:	00655893          	srli	a7,a0,0x6
   1040c:	01a59793          	slli	a5,a1,0x1a
   10410:	0117e7b3          	or	a5,a5,a7
   10414:	0065d813          	srli	a6,a1,0x6
   10418:	01a51893          	slli	a7,a0,0x1a
   1041c:	013ad993          	srli	s3,s5,0x13
   10420:	0108e833          	or	a6,a7,a6
   10424:	00da1893          	slli	a7,s4,0xd
   10428:	0138e9b3          	or	s3,a7,s3
   1042c:	013a5413          	srli	s0,s4,0x13
   10430:	00da9893          	slli	a7,s5,0xd
   10434:	0088e433          	or	s0,a7,s0
   10438:	01cad313          	srli	t1,s5,0x1c
   1043c:	004a1893          	slli	a7,s4,0x4
   10440:	cc3e                	sw	a5,24(sp)
   10442:	0068e333          	or	t1,a7,t1
   10446:	01ca5793          	srli	a5,s4,0x1c
   1044a:	004a9893          	slli	a7,s5,0x4
   1044e:	00f8e8b3          	or	a7,a7,a5
   10452:	00db46b3          	xor	a3,s6,a3
   10456:	47e2                	lw	a5,24(sp)
   10458:	4b42                	lw	s6,16(sp)
   1045a:	01fdcfb3          	xor	t6,s11,t6
   1045e:	4db2                	lw	s11,12(sp)
   10460:	00fb47b3          	xor	a5,s6,a5
   10464:	4b52                	lw	s6,20(sp)
   10466:	01adcd33          	xor	s10,s11,s10
   1046a:	01764633          	xor	a2,a2,s7
   1046e:	010b4833          	xor	a6,s6,a6
   10472:	0069c333          	xor	t1,s3,t1
   10476:	00efcfb3          	xor	t6,t6,a4
   1047a:	01cd4d33          	xor	s10,s10,t3
   1047e:	8e25                	xor	a2,a2,s1
   10480:	019f4f33          	xor	t5,t5,s9
   10484:	018eceb3          	xor	t4,t4,s8
   10488:	011448b3          	xor	a7,s0,a7
   1048c:	8fa9                	xor	a5,a5,a0
   1048e:	00b84833          	xor	a6,a6,a1
   10492:	01534333          	xor	t1,t1,s5
   10496:	012f4f33          	xor	t5,t5,s2
   1049a:	007eceb3          	xor	t4,t4,t2
   1049e:	01a84833          	xor	a6,a6,s10
   104a2:	00c34333          	xor	t1,t1,a2
   104a6:	0056c6b3          	xor	a3,a3,t0
   104aa:	01f7c7b3          	xor	a5,a5,t6
   104ae:	0148c8b3          	xor	a7,a7,s4
   104b2:	00cf4633          	xor	a2,t5,a2
   104b6:	00d8c8b3          	xor	a7,a7,a3
   104ba:	0a57c993          	xori	s3,a5,165
   104be:	00dec6b3          	xor	a3,t4,a3
   104c2:	ffffc913          	not	s2,t6
   104c6:	fffd4713          	not	a4,s10
   104ca:	fff34493          	not	s1,t1
   104ce:	fff84393          	not	t2,a6
   104d2:	f5a7c793          	xori	a5,a5,-166
   104d6:	01397933          	and	s2,s2,s3
   104da:	01077733          	and	a4,a4,a6
   104de:	01e7f7b3          	and	a5,a5,t5
   104e2:	01d3f3b3          	and	t2,t2,t4
   104e6:	ffff4513          	not	a0,t5
   104ea:	fff8c413          	not	s0,a7
   104ee:	fff64293          	not	t0,a2
   104f2:	fff6ce13          	not	t3,a3
   104f6:	01f4f4b3          	and	s1,s1,t6
   104fa:	8cb1                	xor	s1,s1,a2
   104fc:	0062f2b3          	and	t0,t0,t1
   10500:	fffec593          	not	a1,t4
   10504:	00694333          	xor	t1,s2,t1
   10508:	8d71                	and	a0,a0,a2
   1050a:	01a47433          	and	s0,s0,s10
   1050e:	01a3c633          	xor	a2,t2,s10
   10512:	011e7e33          	and	t3,t3,a7
   10516:	011748b3          	xor	a7,a4,a7
   1051a:	01f7c733          	xor	a4,a5,t6
   1051e:	8c35                	xor	s0,s0,a3
   10520:	00674733          	xor	a4,a4,t1
   10524:	8df5                	and	a1,a1,a3
   10526:	01e2c6b3          	xor	a3,t0,t5
   1052a:	01164f33          	xor	t5,a2,a7
   1052e:	0088ca33          	xor	s4,a7,s0
   10532:	003f1793          	slli	a5,t5,0x3
   10536:	01d75893          	srli	a7,a4,0x1d
   1053a:	00f8e8b3          	or	a7,a7,a5
   1053e:	01df5d93          	srli	s11,t5,0x1d
   10542:	00371793          	slli	a5,a4,0x3
   10546:	01354533          	xor	a0,a0,s3
   1054a:	0105c5b3          	xor	a1,a1,a6
   1054e:	00fdedb3          	or	s11,s11,a5
   10552:	01de4e33          	xor	t3,t3,t4
   10556:	019f1793          	slli	a5,t5,0x19
   1055a:	00775d13          	srli	s10,a4,0x7
   1055e:	00a6ceb3          	xor	t4,a3,a0
   10562:	00be4e33          	xor	t3,t3,a1
   10566:	007f5393          	srli	t2,t5,0x7
   1056a:	00fd6d33          	or	s10,s10,a5
   1056e:	01971793          	slli	a5,a4,0x19
   10572:	00aed293          	srli	t0,t4,0xa
   10576:	00f3e3b3          	or	t2,t2,a5
   1057a:	016e1793          	slli	a5,t3,0x16
   1057e:	00ae5f93          	srli	t6,t3,0xa
   10582:	0057e2b3          	or	t0,a5,t0
   10586:	016e9793          	slli	a5,t4,0x16
   1058a:	011edc93          	srli	s9,t4,0x11
   1058e:	01f7efb3          	or	t6,a5,t6
   10592:	00fe1793          	slli	a5,t3,0xf
   10596:	0197ecb3          	or	s9,a5,s9
   1059a:	011e5c13          	srli	s8,t3,0x11
   1059e:	00fe9793          	slli	a5,t4,0xf
   105a2:	0187ec33          	or	s8,a5,s8
   105a6:	0074d613          	srli	a2,s1,0x7
   105aa:	01941793          	slli	a5,s0,0x19
   105ae:	00745b13          	srli	s6,s0,0x7
   105b2:	8e5d                	or	a2,a2,a5
   105b4:	01949793          	slli	a5,s1,0x19
   105b8:	0167eb33          	or	s6,a5,s6
   105bc:	01741693          	slli	a3,s0,0x17
   105c0:	0094d793          	srli	a5,s1,0x9
   105c4:	fff54513          	not	a0,a0
   105c8:	fff5c593          	not	a1,a1
   105cc:	01749b93          	slli	s7,s1,0x17
   105d0:	8edd                	or	a3,a3,a5
   105d2:	00945793          	srli	a5,s0,0x9
   105d6:	c646                	sw	a7,12(sp)
   105d8:	0177ebb3          	or	s7,a5,s7
   105dc:	00155893          	srli	a7,a0,0x1
   105e0:	01f59793          	slli	a5,a1,0x1f
   105e4:	0117e7b3          	or	a5,a5,a7
   105e8:	c83e                	sw	a5,16(sp)
   105ea:	0015d893          	srli	a7,a1,0x1
   105ee:	01f51793          	slli	a5,a0,0x1f
   105f2:	0117e7b3          	or	a5,a5,a7
   105f6:	ca3e                	sw	a5,20(sp)
   105f8:	00655893          	srli	a7,a0,0x6
   105fc:	01a59793          	slli	a5,a1,0x1a
   10600:	00934ab3          	xor	s5,t1,s1
   10604:	0117e7b3          	or	a5,a5,a7
   10608:	0065d813          	srli	a6,a1,0x6
   1060c:	01a51893          	slli	a7,a0,0x1a
   10610:	013ad993          	srli	s3,s5,0x13
   10614:	0108e833          	or	a6,a7,a6
   10618:	00da1893          	slli	a7,s4,0xd
   1061c:	0138e9b3          	or	s3,a7,s3
   10620:	013a5913          	srli	s2,s4,0x13
   10624:	00da9893          	slli	a7,s5,0xd
   10628:	0128e933          	or	s2,a7,s2
   1062c:	01cad313          	srli	t1,s5,0x1c
   10630:	004a1893          	slli	a7,s4,0x4
   10634:	cc3e                	sw	a5,24(sp)
   10636:	0068e333          	or	t1,a7,t1
   1063a:	01ca5793          	srli	a5,s4,0x1c
   1063e:	004a9893          	slli	a7,s5,0x4
   10642:	00f8e8b3          	or	a7,a7,a5
   10646:	00db46b3          	xor	a3,s6,a3
   1064a:	47e2                	lw	a5,24(sp)
   1064c:	4b42                	lw	s6,16(sp)
   1064e:	007dc3b3          	xor	t2,s11,t2
   10652:	4db2                	lw	s11,12(sp)
   10654:	00fb47b3          	xor	a5,s6,a5
   10658:	4b52                	lw	s6,20(sp)
   1065a:	01adcd33          	xor	s10,s11,s10
   1065e:	01764633          	xor	a2,a2,s7
   10662:	010b4833          	xor	a6,s6,a6
   10666:	0069c333          	xor	t1,s3,t1
   1066a:	011948b3          	xor	a7,s2,a7
   1066e:	00e3c3b3          	xor	t2,t2,a4
   10672:	01ed4d33          	xor	s10,s10,t5
   10676:	8e25                	xor	a2,a2,s1
   10678:	8ea1                	xor	a3,a3,s0
   1067a:	00b84833          	xor	a6,a6,a1
   1067e:	0192c2b3          	xor	t0,t0,s9
   10682:	018fcfb3          	xor	t6,t6,s8
   10686:	8fa9                	xor	a5,a5,a0
   10688:	01534333          	xor	t1,t1,s5
   1068c:	0148c8b3          	xor	a7,a7,s4
   10690:	01d2c2b3          	xor	t0,t0,t4
   10694:	01cfcfb3          	xor	t6,t6,t3
   10698:	01a84733          	xor	a4,a6,s10
   1069c:	00c34333          	xor	t1,t1,a2
   106a0:	00d8c8b3          	xor	a7,a7,a3
   106a4:	0077c7b3          	xor	a5,a5,t2
   106a8:	00c2c533          	xor	a0,t0,a2
   106ac:	00dfc6b3          	xor	a3,t6,a3
   106b0:	0967c993          	xori	s3,a5,150
   106b4:	fff3c913          	not	s2,t2
   106b8:	fffd4493          	not	s1,s10
   106bc:	fff34f13          	not	t5,t1
   106c0:	fff8ce93          	not	t4,a7
   106c4:	fff74413          	not	s0,a4
   106c8:	01397933          	and	s2,s2,s3
   106cc:	8cf9                	and	s1,s1,a4
   106ce:	01f47433          	and	s0,s0,t6
   106d2:	ffffc613          	not	a2,t6
   106d6:	fff54e13          	not	t3,a0
   106da:	fff6c813          	not	a6,a3
   106de:	007f7f33          	and	t5,t5,t2
   106e2:	01aefeb3          	and	t4,t4,s10
   106e6:	f697c793          	xori	a5,a5,-151
   106ea:	00af4f33          	xor	t5,t5,a0
   106ee:	00deceb3          	xor	t4,t4,a3
   106f2:	00694b33          	xor	s6,s2,t1
   106f6:	0057f7b3          	and	a5,a5,t0
   106fa:	006e7e33          	and	t3,t3,t1
   106fe:	fff2c593          	not	a1,t0
   10702:	01a44333          	xor	t1,s0,s10
   10706:	8e75                	and	a2,a2,a3
   10708:	01187833          	and	a6,a6,a7
   1070c:	0114c6b3          	xor	a3,s1,a7
   10710:	00d34333          	xor	t1,t1,a3
   10714:	8e39                	xor	a2,a2,a4
   10716:	005e48b3          	xor	a7,t3,t0
   1071a:	0077c733          	xor	a4,a5,t2
   1071e:	8e36                	mv	t3,a3
   10720:	007f5293          	srli	t0,t5,0x7
   10724:	017f1793          	slli	a5,t5,0x17
   10728:	8de9                	and	a1,a1,a0
   1072a:	01f84833          	xor	a6,a6,t6
   1072e:	017e9513          	slli	a0,t4,0x17
   10732:	007edf93          	srli	t6,t4,0x7
   10736:	019e9693          	slli	a3,t4,0x19
   1073a:	019f1413          	slli	s0,t5,0x19
   1073e:	009f5393          	srli	t2,t5,0x9
   10742:	009ed493          	srli	s1,t4,0x9
   10746:	01674733          	xor	a4,a4,s6
   1074a:	00a3e3b3          	or	t2,t2,a0
   1074e:	8cdd                	or	s1,s1,a5
   10750:	0056e6b3          	or	a3,a3,t0
   10754:	01f46433          	or	s0,s0,t6
   10758:	8ea5                	xor	a3,a3,s1
   1075a:	00744433          	xor	s0,s0,t2
   1075e:	01d75493          	srli	s1,a4,0x1d
   10762:	00331393          	slli	t2,t1,0x3
   10766:	c622                	sw	s0,12(sp)
   10768:	0135c5b3          	xor	a1,a1,s3
   1076c:	0074e433          	or	s0,s1,t2
   10770:	00371393          	slli	t2,a4,0x3
   10774:	01d35493          	srli	s1,t1,0x1d
   10778:	00b8c8b3          	xor	a7,a7,a1
   1077c:	01931c93          	slli	s9,t1,0x19
   10780:	0074e4b3          	or	s1,s1,t2
   10784:	00775393          	srli	t2,a4,0x7
   10788:	00c84833          	xor	a6,a6,a2
   1078c:	00a8da93          	srli	s5,a7,0xa
   10790:	0193ecb3          	or	s9,t2,s9
   10794:	00735d13          	srli	s10,t1,0x7
   10798:	01971393          	slli	t2,a4,0x19
   1079c:	8dd6                	mv	s11,s5
   1079e:	007d6d33          	or	s10,s10,t2
   107a2:	01681393          	slli	t2,a6,0x16
   107a6:	00a85b93          	srli	s7,a6,0xa
   107aa:	01b3e3b3          	or	t2,t2,s11
   107ae:	01689d93          	slli	s11,a7,0x16
   107b2:	017debb3          	or	s7,s11,s7
   107b6:	0118dc13          	srli	s8,a7,0x11
   107ba:	00f81d93          	slli	s11,a6,0xf
   107be:	fff5c593          	not	a1,a1
   107c2:	fff64613          	not	a2,a2
   107c6:	01de49b3          	xor	s3,t3,t4
   107ca:	c872                	sw	t3,16(sp)
   107cc:	018dec33          	or	s8,s11,s8
   107d0:	01185e13          	srli	t3,a6,0x11
   107d4:	00f89d93          	slli	s11,a7,0xf
   107d8:	01f61a93          	slli	s5,a2,0x1f
   107dc:	01cdee33          	or	t3,s11,t3
   107e0:	0015dd93          	srli	s11,a1,0x1
   107e4:	00665f93          	srli	t6,a2,0x6
   107e8:	01baeab3          	or	s5,s5,s11
   107ec:	01f59a13          	slli	s4,a1,0x1f
   107f0:	00165d93          	srli	s11,a2,0x1
   107f4:	01a59513          	slli	a0,a1,0x1a
   107f8:	01ba6a33          	or	s4,s4,s11
   107fc:	01f56533          	or	a0,a0,t6
   10800:	0065d293          	srli	t0,a1,0x6
   10804:	01a61793          	slli	a5,a2,0x1a
   10808:	0183c3b3          	xor	t2,t2,s8
   1080c:	00aa4533          	xor	a0,s4,a0
   10810:	4c32                	lw	s8,12(sp)
   10812:	4a42                	lw	s4,16(sp)
   10814:	01eb4933          	xor	s2,s6,t5
   10818:	0057e7b3          	or	a5,a5,t0
   1081c:	00d99d93          	slli	s11,s3,0xd
   10820:	01395293          	srli	t0,s2,0x13
   10824:	0139df93          	srli	t6,s3,0x13
   10828:	00fac7b3          	xor	a5,s5,a5
   1082c:	00d91a93          	slli	s5,s2,0xd
   10830:	0166cb33          	xor	s6,a3,s6
   10834:	01944433          	xor	s0,s0,s9
   10838:	01cbce33          	xor	t3,s7,t3
   1083c:	005de2b3          	or	t0,s11,t0
   10840:	014c4bb3          	xor	s7,s8,s4
   10844:	01faefb3          	or	t6,s5,t6
   10848:	00499a13          	slli	s4,s3,0x4
   1084c:	01c95a93          	srli	s5,s2,0x1c
   10850:	01c9d993          	srli	s3,s3,0x1c
   10854:	0912                	slli	s2,s2,0x4
   10856:	00644433          	xor	s0,s0,t1
   1085a:	015a6a33          	or	s4,s4,s5
   1085e:	01396933          	or	s2,s2,s3
   10862:	01a4c4b3          	xor	s1,s1,s10
   10866:	8d31                	xor	a0,a0,a2
   10868:	0162c2b3          	xor	t0,t0,s6
   1086c:	017fcfb3          	xor	t6,t6,s7
   10870:	8cb9                	xor	s1,s1,a4
   10872:	0113c3b3          	xor	t2,t2,a7
   10876:	010e4e33          	xor	t3,t3,a6
   1087a:	8d21                	xor	a0,a0,s0
   1087c:	0142c2b3          	xor	t0,t0,s4
   10880:	012fcfb3          	xor	t6,t6,s2
   10884:	01dc4733          	xor	a4,s8,t4
   10888:	8fad                	xor	a5,a5,a1
   1088a:	01e6c6b3          	xor	a3,a3,t5
   1088e:	01c74933          	xor	s2,a4,t3
   10892:	0076c6b3          	xor	a3,a3,t2
   10896:	8fa5                	xor	a5,a5,s1
   10898:	fff44713          	not	a4,s0
   1089c:	fff2cf13          	not	t5,t0
   108a0:	ffffce93          	not	t4,t6
   108a4:	fff54313          	not	t1,a0
   108a8:	0877ca13          	xori	s4,a5,135
   108ac:	8f69                	and	a4,a4,a0
   108ae:	fff4c993          	not	s3,s1
   108b2:	fff3c593          	not	a1,t2
   108b6:	fffe4613          	not	a2,t3
   108ba:	fff6c893          	not	a7,a3
   108be:	fff94813          	not	a6,s2
   108c2:	009f7f33          	and	t5,t5,s1
   108c6:	008efeb3          	and	t4,t4,s0
   108ca:	01c37333          	and	t1,t1,t3
   108ce:	f787c793          	xori	a5,a5,-136
   108d2:	00df4f33          	xor	t5,t5,a3
   108d6:	012eceb3          	xor	t4,t4,s2
   108da:	0149f9b3          	and	s3,s3,s4
   108de:	0077f7b3          	and	a5,a5,t2
   108e2:	8df5                	and	a1,a1,a3
   108e4:	01267633          	and	a2,a2,s2
   108e8:	01f746b3          	xor	a3,a4,t6
   108ec:	0058f8b3          	and	a7,a7,t0
   108f0:	01f87833          	and	a6,a6,t6
   108f4:	00834333          	xor	t1,t1,s0
   108f8:	00d34333          	xor	t1,t1,a3
   108fc:	0059cb33          	xor	s6,s3,t0
   10900:	8e29                	xor	a2,a2,a0
   10902:	0097c733          	xor	a4,a5,s1
   10906:	007f5293          	srli	t0,t5,0x7
   1090a:	007edf93          	srli	t6,t4,0x7
   1090e:	017e9513          	slli	a0,t4,0x17
   10912:	017f1793          	slli	a5,t5,0x17
   10916:	0078c8b3          	xor	a7,a7,t2
   1091a:	01c84833          	xor	a6,a6,t3
   1091e:	019f1413          	slli	s0,t5,0x19
   10922:	8e36                	mv	t3,a3
   10924:	009f5393          	srli	t2,t5,0x9
   10928:	019e9693          	slli	a3,t4,0x19
   1092c:	009ed493          	srli	s1,t4,0x9
   10930:	01674733          	xor	a4,a4,s6
   10934:	00a3e3b3          	or	t2,t2,a0
   10938:	8cdd                	or	s1,s1,a5
   1093a:	0056e6b3          	or	a3,a3,t0
   1093e:	01f46433          	or	s0,s0,t6
   10942:	8ea5                	xor	a3,a3,s1
   10944:	00744433          	xor	s0,s0,t2
   10948:	01d75493          	srli	s1,a4,0x1d
   1094c:	00331393          	slli	t2,t1,0x3
   10950:	0145c5b3          	xor	a1,a1,s4
   10954:	c622                	sw	s0,12(sp)
   10956:	0074e433          	or	s0,s1,t2
   1095a:	00371393          	slli	t2,a4,0x3
   1095e:	01d35493          	srli	s1,t1,0x1d
   10962:	00b8c8b3          	xor	a7,a7,a1
   10966:	01931c93          	slli	s9,t1,0x19
   1096a:	0074e4b3          	or	s1,s1,t2
   1096e:	00775393          	srli	t2,a4,0x7
   10972:	00c84833          	xor	a6,a6,a2
   10976:	00a8da93          	srli	s5,a7,0xa
   1097a:	0193ecb3          	or	s9,t2,s9
   1097e:	00735d13          	srli	s10,t1,0x7
   10982:	01971393          	slli	t2,a4,0x19
   10986:	8dd6                	mv	s11,s5
   10988:	007d6d33          	or	s10,s10,t2
   1098c:	01681393          	slli	t2,a6,0x16
   10990:	00a85b93          	srli	s7,a6,0xa
   10994:	01b3e3b3          	or	t2,t2,s11
   10998:	01689d93          	slli	s11,a7,0x16
   1099c:	017debb3          	or	s7,s11,s7
   109a0:	0118dc13          	srli	s8,a7,0x11
   109a4:	00f81d93          	slli	s11,a6,0xf
   109a8:	fff5c593          	not	a1,a1
   109ac:	fff64613          	not	a2,a2
   109b0:	01de49b3          	xor	s3,t3,t4
   109b4:	018dec33          	or	s8,s11,s8
   109b8:	c872                	sw	t3,16(sp)
   109ba:	00f89d93          	slli	s11,a7,0xf
   109be:	01185e13          	srli	t3,a6,0x11
   109c2:	01f61a93          	slli	s5,a2,0x1f
   109c6:	01cdee33          	or	t3,s11,t3
   109ca:	0015dd93          	srli	s11,a1,0x1
   109ce:	00665f93          	srli	t6,a2,0x6
   109d2:	01baeab3          	or	s5,s5,s11
   109d6:	01f59a13          	slli	s4,a1,0x1f
   109da:	00165d93          	srli	s11,a2,0x1
   109de:	01a59513          	slli	a0,a1,0x1a
   109e2:	01ba6a33          	or	s4,s4,s11
   109e6:	01f56533          	or	a0,a0,t6
   109ea:	0065d293          	srli	t0,a1,0x6
   109ee:	01a61793          	slli	a5,a2,0x1a
   109f2:	0183c3b3          	xor	t2,t2,s8
   109f6:	00aa4533          	xor	a0,s4,a0
   109fa:	4c32                	lw	s8,12(sp)
   109fc:	4a42                	lw	s4,16(sp)
   109fe:	01eb4933          	xor	s2,s6,t5
   10a02:	0057e7b3          	or	a5,a5,t0
   10a06:	00d99d93          	slli	s11,s3,0xd
   10a0a:	01395293          	srli	t0,s2,0x13
   10a0e:	0139df93          	srli	t6,s3,0x13
   10a12:	00fac7b3          	xor	a5,s5,a5
   10a16:	00d91a93          	slli	s5,s2,0xd
   10a1a:	0166cb33          	xor	s6,a3,s6
   10a1e:	01944433          	xor	s0,s0,s9
   10a22:	01cbce33          	xor	t3,s7,t3
   10a26:	005de2b3          	or	t0,s11,t0
   10a2a:	014c4bb3          	xor	s7,s8,s4
   10a2e:	01faefb3          	or	t6,s5,t6
   10a32:	00499a13          	slli	s4,s3,0x4
   10a36:	01c95a93          	srli	s5,s2,0x1c
   10a3a:	01c9d993          	srli	s3,s3,0x1c
   10a3e:	0912                	slli	s2,s2,0x4
   10a40:	00644433          	xor	s0,s0,t1
   10a44:	8d31                	xor	a0,a0,a2
   10a46:	015a6a33          	or	s4,s4,s5
   10a4a:	01396933          	or	s2,s2,s3
   10a4e:	01a4c4b3          	xor	s1,s1,s10
   10a52:	0162c2b3          	xor	t0,t0,s6
   10a56:	017fcfb3          	xor	t6,t6,s7
   10a5a:	8cb9                	xor	s1,s1,a4
   10a5c:	0113c3b3          	xor	t2,t2,a7
   10a60:	010e4e33          	xor	t3,t3,a6
   10a64:	00854733          	xor	a4,a0,s0
   10a68:	0142c2b3          	xor	t0,t0,s4
   10a6c:	012fcfb3          	xor	t6,t6,s2
   10a70:	01e6c6b3          	xor	a3,a3,t5
   10a74:	01dc4833          	xor	a6,s8,t4
   10a78:	8fad                	xor	a5,a5,a1
   10a7a:	0076ceb3          	xor	t4,a3,t2
   10a7e:	01c84833          	xor	a6,a6,t3
   10a82:	8fa5                	xor	a5,a5,s1
   10a84:	fff44913          	not	s2,s0
   10a88:	fff2c613          	not	a2,t0
   10a8c:	ffffc693          	not	a3,t6
   10a90:	fff74f13          	not	t5,a4
   10a94:	0787ca13          	xori	s4,a5,120
   10a98:	00e97933          	and	s2,s2,a4
   10a9c:	01cf7f33          	and	t5,t5,t3
   10aa0:	fff4c993          	not	s3,s1
   10aa4:	fff3c513          	not	a0,t2
   10aa8:	fffe4593          	not	a1,t3
   10aac:	fffec313          	not	t1,t4
   10ab0:	fff84893          	not	a7,a6
   10ab4:	8e65                	and	a2,a2,s1
   10ab6:	8ee1                	and	a3,a3,s0
   10ab8:	f877c793          	xori	a5,a5,-121
   10abc:	01d64633          	xor	a2,a2,t4
   10ac0:	0106c6b3          	xor	a3,a3,a6
   10ac4:	0149f9b3          	and	s3,s3,s4
   10ac8:	0077f7b3          	and	a5,a5,t2
   10acc:	01d57533          	and	a0,a0,t4
   10ad0:	0105f5b3          	and	a1,a1,a6
   10ad4:	01f94eb3          	xor	t4,s2,t6
   10ad8:	008f4833          	xor	a6,t5,s0
   10adc:	00537333          	and	t1,t1,t0
   10ae0:	01f8f8b3          	and	a7,a7,t6
   10ae4:	0059cb33          	xor	s6,s3,t0
   10ae8:	8db9                	xor	a1,a1,a4
   10aea:	00765f93          	srli	t6,a2,0x7
   10aee:	0097c733          	xor	a4,a5,s1
   10af2:	0076df13          	srli	t5,a3,0x7
   10af6:	01761793          	slli	a5,a2,0x17
   10afa:	00734333          	xor	t1,t1,t2
   10afe:	01c8c8b3          	xor	a7,a7,t3
   10b02:	01969913          	slli	s2,a3,0x19
   10b06:	01d84e33          	xor	t3,a6,t4
   10b0a:	01961393          	slli	t2,a2,0x19
   10b0e:	01769813          	slli	a6,a3,0x17
   10b12:	00965293          	srli	t0,a2,0x9
   10b16:	0096d413          	srli	s0,a3,0x9
   10b1a:	01674733          	xor	a4,a4,s6
   10b1e:	01e3e3b3          	or	t2,t2,t5
   10b22:	0102e2b3          	or	t0,t0,a6
   10b26:	8c5d                	or	s0,s0,a5
   10b28:	01f96933          	or	s2,s2,t6
   10b2c:	00894933          	xor	s2,s2,s0
   10b30:	0053c433          	xor	s0,t2,t0
   10b34:	01d75293          	srli	t0,a4,0x1d
   10b38:	003e1393          	slli	t2,t3,0x3
   10b3c:	c822                	sw	s0,16(sp)
   10b3e:	01454533          	xor	a0,a0,s4
   10b42:	0072e3b3          	or	t2,t0,t2
   10b46:	00371413          	slli	s0,a4,0x3
   10b4a:	01de5293          	srli	t0,t3,0x1d
   10b4e:	00a34333          	xor	t1,t1,a0
   10b52:	019e1c93          	slli	s9,t3,0x19
   10b56:	0082e433          	or	s0,t0,s0
   10b5a:	00775293          	srli	t0,a4,0x7
   10b5e:	00b8c8b3          	xor	a7,a7,a1
   10b62:	00a35a93          	srli	s5,t1,0xa
   10b66:	0192ecb3          	or	s9,t0,s9
   10b6a:	007e5d13          	srli	s10,t3,0x7
   10b6e:	01971293          	slli	t0,a4,0x19
   10b72:	8dd6                	mv	s11,s5
   10b74:	005d6d33          	or	s10,s10,t0
   10b78:	01689293          	slli	t0,a7,0x16
   10b7c:	00a8db93          	srli	s7,a7,0xa
   10b80:	01b2e2b3          	or	t0,t0,s11
   10b84:	01631d93          	slli	s11,t1,0x16
   10b88:	017debb3          	or	s7,s11,s7
   10b8c:	01135c13          	srli	s8,t1,0x11
   10b90:	00f89d93          	slli	s11,a7,0xf
   10b94:	c676                	sw	t4,12(sp)
   10b96:	fff54513          	not	a0,a0
   10b9a:	fff5c593          	not	a1,a1
   10b9e:	00dec9b3          	xor	s3,t4,a3
   10ba2:	018dec33          	or	s8,s11,s8
   10ba6:	0118de93          	srli	t4,a7,0x11
   10baa:	00f31d93          	slli	s11,t1,0xf
   10bae:	01f59a93          	slli	s5,a1,0x1f
   10bb2:	01ddeeb3          	or	t4,s11,t4
   10bb6:	00155d93          	srli	s11,a0,0x1
   10bba:	0065df13          	srli	t5,a1,0x6
   10bbe:	01baeab3          	or	s5,s5,s11
   10bc2:	01f51a13          	slli	s4,a0,0x1f
   10bc6:	0015dd93          	srli	s11,a1,0x1
   10bca:	01a51813          	slli	a6,a0,0x1a
   10bce:	01ba6a33          	or	s4,s4,s11
   10bd2:	01e86833          	or	a6,a6,t5
   10bd6:	00655f93          	srli	t6,a0,0x6
   10bda:	01a59793          	slli	a5,a1,0x1a
   10bde:	0182c2b3          	xor	t0,t0,s8
   10be2:	010a4833          	xor	a6,s4,a6
   10be6:	4c42                	lw	s8,16(sp)
   10be8:	4a32                	lw	s4,12(sp)
   10bea:	00cb44b3          	xor	s1,s6,a2
   10bee:	01f7e7b3          	or	a5,a5,t6
   10bf2:	00d99d93          	slli	s11,s3,0xd
   10bf6:	0134df93          	srli	t6,s1,0x13
   10bfa:	0139df13          	srli	t5,s3,0x13
   10bfe:	00fac7b3          	xor	a5,s5,a5
   10c02:	00d49a93          	slli	s5,s1,0xd
   10c06:	012b4b33          	xor	s6,s6,s2
   10c0a:	01dbceb3          	xor	t4,s7,t4
   10c0e:	01fdefb3          	or	t6,s11,t6
   10c12:	018a4bb3          	xor	s7,s4,s8
   10c16:	01eaef33          	or	t5,s5,t5
   10c1a:	00499a13          	slli	s4,s3,0x4
   10c1e:	01c4da93          	srli	s5,s1,0x1c
   10c22:	01c9d993          	srli	s3,s3,0x1c
   10c26:	0492                	slli	s1,s1,0x4
   10c28:	015a6a33          	or	s4,s4,s5
   10c2c:	0134e4b3          	or	s1,s1,s3
   10c30:	01a44433          	xor	s0,s0,s10
   10c34:	0193c3b3          	xor	t2,t2,s9
   10c38:	016fcfb3          	xor	t6,t6,s6
   10c3c:	017f4f33          	xor	t5,t5,s7
   10c40:	8c39                	xor	s0,s0,a4
   10c42:	01c3c3b3          	xor	t2,t2,t3
   10c46:	0062c2b3          	xor	t0,t0,t1
   10c4a:	011eceb3          	xor	t4,t4,a7
   10c4e:	014fcfb3          	xor	t6,t6,s4
   10c52:	009f4f33          	xor	t5,t5,s1
   10c56:	0186c6b3          	xor	a3,a3,s8
   10c5a:	8fa9                	xor	a5,a5,a0
   10c5c:	00b84833          	xor	a6,a6,a1
   10c60:	01264633          	xor	a2,a2,s2
   10c64:	00564933          	xor	s2,a2,t0
   10c68:	01d6c4b3          	xor	s1,a3,t4
   10c6c:	00784833          	xor	a6,a6,t2
   10c70:	8fa1                	xor	a5,a5,s0
   10c72:	ffffc613          	not	a2,t6
   10c76:	ffff4693          	not	a3,t5
   10c7a:	0697ca13          	xori	s4,a5,105
   10c7e:	fff44993          	not	s3,s0
   10c82:	fff3c713          	not	a4,t2
   10c86:	fffec593          	not	a1,t4
   10c8a:	fff84e13          	not	t3,a6
   10c8e:	fff94313          	not	t1,s2
   10c92:	8e61                	and	a2,a2,s0
   10c94:	0076f6b3          	and	a3,a3,t2
   10c98:	f967c793          	xori	a5,a5,-106
   10c9c:	01264633          	xor	a2,a2,s2
   10ca0:	8ea5                	xor	a3,a3,s1
   10ca2:	0149f9b3          	and	s3,s3,s4
   10ca6:	01077733          	and	a4,a4,a6
   10caa:	0057f7b3          	and	a5,a5,t0
   10cae:	fff2c513          	not	a0,t0
   10cb2:	fff4c893          	not	a7,s1
   10cb6:	8de5                	and	a1,a1,s1
   10cb8:	01de7e33          	and	t3,t3,t4
   10cbc:	01f37333          	and	t1,t1,t6
   10cc0:	01f9cb33          	xor	s6,s3,t6
   10cc4:	01e744b3          	xor	s1,a4,t5
   10cc8:	0105c5b3          	xor	a1,a1,a6
   10ccc:	0087c733          	xor	a4,a5,s0
   10cd0:	00765f93          	srli	t6,a2,0x7
   10cd4:	01769813          	slli	a6,a3,0x17
   10cd8:	01761793          	slli	a5,a2,0x17
   10cdc:	01257533          	and	a0,a0,s2
   10ce0:	01e8f8b3          	and	a7,a7,t5
   10ce4:	007e4e33          	xor	t3,t3,t2
   10ce8:	0076df13          	srli	t5,a3,0x7
   10cec:	00534333          	xor	t1,t1,t0
   10cf0:	01969913          	slli	s2,a3,0x19
   10cf4:	01961393          	slli	t2,a2,0x19
   10cf8:	00965293          	srli	t0,a2,0x9
   10cfc:	0096d413          	srli	s0,a3,0x9
   10d00:	01674733          	xor	a4,a4,s6
   10d04:	009e4e33          	xor	t3,t3,s1
   10d08:	01e3e3b3          	or	t2,t2,t5
   10d0c:	0102e2b3          	or	t0,t0,a6
   10d10:	8c5d                	or	s0,s0,a5
   10d12:	01f96933          	or	s2,s2,t6
   10d16:	00894933          	xor	s2,s2,s0
   10d1a:	0053c433          	xor	s0,t2,t0
   10d1e:	01d75293          	srli	t0,a4,0x1d
   10d22:	003e1393          	slli	t2,t3,0x3
   10d26:	c822                	sw	s0,16(sp)
   10d28:	01454533          	xor	a0,a0,s4
   10d2c:	0072e3b3          	or	t2,t0,t2
   10d30:	00371413          	slli	s0,a4,0x3
   10d34:	01de5293          	srli	t0,t3,0x1d
   10d38:	00a34333          	xor	t1,t1,a0
   10d3c:	01d8c8b3          	xor	a7,a7,t4
   10d40:	019e1c93          	slli	s9,t3,0x19
   10d44:	0082e433          	or	s0,t0,s0
   10d48:	00775293          	srli	t0,a4,0x7
   10d4c:	00b8c8b3          	xor	a7,a7,a1
   10d50:	00a35a93          	srli	s5,t1,0xa
   10d54:	0192ecb3          	or	s9,t0,s9
   10d58:	007e5d13          	srli	s10,t3,0x7
   10d5c:	01971293          	slli	t0,a4,0x19
   10d60:	8dd6                	mv	s11,s5
   10d62:	005d6d33          	or	s10,s10,t0
   10d66:	01689293          	slli	t0,a7,0x16
   10d6a:	00a8db93          	srli	s7,a7,0xa
   10d6e:	01b2e2b3          	or	t0,t0,s11
   10d72:	01631d93          	slli	s11,t1,0x16
   10d76:	8ea6                	mv	t4,s1
   10d78:	017debb3          	or	s7,s11,s7
   10d7c:	01135c13          	srli	s8,t1,0x11
   10d80:	00f89d93          	slli	s11,a7,0xf
   10d84:	c676                	sw	t4,12(sp)
   10d86:	fff54513          	not	a0,a0
   10d8a:	fff5c593          	not	a1,a1
   10d8e:	00dec9b3          	xor	s3,t4,a3
   10d92:	018dec33          	or	s8,s11,s8
   10d96:	0118de93          	srli	t4,a7,0x11
   10d9a:	00f31d93          	slli	s11,t1,0xf
   10d9e:	01f59a93          	slli	s5,a1,0x1f
   10da2:	01ddeeb3          	or	t4,s11,t4
   10da6:	00155d93          	srli	s11,a0,0x1
   10daa:	0065df13          	srli	t5,a1,0x6
   10dae:	01baeab3          	or	s5,s5,s11
   10db2:	01f51a13          	slli	s4,a0,0x1f
   10db6:	0015dd93          	srli	s11,a1,0x1
   10dba:	01a51813          	slli	a6,a0,0x1a
   10dbe:	01ba6a33          	or	s4,s4,s11
   10dc2:	01e86833          	or	a6,a6,t5
   10dc6:	00655f93          	srli	t6,a0,0x6
   10dca:	01a59793          	slli	a5,a1,0x1a
   10dce:	0182c2b3          	xor	t0,t0,s8
   10dd2:	010a4833          	xor	a6,s4,a6
   10dd6:	4c42                	lw	s8,16(sp)
   10dd8:	4a32                	lw	s4,12(sp)
   10dda:	00cb44b3          	xor	s1,s6,a2
   10dde:	01f7e7b3          	or	a5,a5,t6
   10de2:	00d99d93          	slli	s11,s3,0xd
   10de6:	0134df93          	srli	t6,s1,0x13
   10dea:	0139df13          	srli	t5,s3,0x13
   10dee:	00fac7b3          	xor	a5,s5,a5
   10df2:	00d49a93          	slli	s5,s1,0xd
   10df6:	012b4b33          	xor	s6,s6,s2
   10dfa:	01a44433          	xor	s0,s0,s10
   10dfe:	01dbceb3          	xor	t4,s7,t4
   10e02:	01fdefb3          	or	t6,s11,t6
   10e06:	018a4bb3          	xor	s7,s4,s8
   10e0a:	01eaef33          	or	t5,s5,t5
   10e0e:	00499a13          	slli	s4,s3,0x4
   10e12:	01c4da93          	srli	s5,s1,0x1c
   10e16:	01c9d993          	srli	s3,s3,0x1c
   10e1a:	0492                	slli	s1,s1,0x4
   10e1c:	8c39                	xor	s0,s0,a4
   10e1e:	015a6a33          	or	s4,s4,s5
   10e22:	0134e4b3          	or	s1,s1,s3
   10e26:	0193c3b3          	xor	t2,t2,s9
   10e2a:	8fa9                	xor	a5,a5,a0
   10e2c:	016fcfb3          	xor	t6,t6,s6
   10e30:	017f4f33          	xor	t5,t5,s7
   10e34:	01c3c3b3          	xor	t2,t2,t3
   10e38:	0062c2b3          	xor	t0,t0,t1
   10e3c:	011eceb3          	xor	t4,t4,a7
   10e40:	014fcfb3          	xor	t6,t6,s4
   10e44:	009f4f33          	xor	t5,t5,s1
   10e48:	01264633          	xor	a2,a2,s2
   10e4c:	0186c6b3          	xor	a3,a3,s8
   10e50:	8fa1                	xor	a5,a5,s0
   10e52:	00b84833          	xor	a6,a6,a1
   10e56:	005644b3          	xor	s1,a2,t0
   10e5a:	01d6c733          	xor	a4,a3,t4
   10e5e:	00784833          	xor	a6,a6,t2
   10e62:	05a7ca13          	xori	s4,a5,90
   10e66:	fff44993          	not	s3,s0
   10e6a:	ffffc613          	not	a2,t6
   10e6e:	ffff4693          	not	a3,t5
   10e72:	fa57c793          	xori	a5,a5,-91
   10e76:	0149f9b3          	and	s3,s3,s4
   10e7a:	fff3c913          	not	s2,t2
   10e7e:	fffec593          	not	a1,t4
   10e82:	fff84e13          	not	t3,a6
   10e86:	fff4c313          	not	t1,s1
   10e8a:	fff74893          	not	a7,a4
   10e8e:	8e61                	and	a2,a2,s0
   10e90:	0076f6b3          	and	a3,a3,t2
   10e94:	0057f7b3          	and	a5,a5,t0
   10e98:	8e25                	xor	a2,a2,s1
   10e9a:	8eb9                	xor	a3,a3,a4
   10e9c:	01097933          	and	s2,s2,a6
   10ea0:	fff2c513          	not	a0,t0
   10ea4:	8df9                	and	a1,a1,a4
   10ea6:	01de7e33          	and	t3,t3,t4
   10eaa:	01f9c733          	xor	a4,s3,t6
   10eae:	01f37333          	and	t1,t1,t6
   10eb2:	01e8f8b3          	and	a7,a7,t5
   10eb6:	8fa1                	xor	a5,a5,s0
   10eb8:	8fb9                	xor	a5,a5,a4
   10eba:	01e94bb3          	xor	s7,s2,t5
   10ebe:	0105c5b3          	xor	a1,a1,a6
   10ec2:	00765f13          	srli	t5,a2,0x7
   10ec6:	01769813          	slli	a6,a3,0x17
   10eca:	8d65                	and	a0,a0,s1
   10ecc:	007e4e33          	xor	t3,t3,t2
   10ed0:	84ba                	mv	s1,a4
   10ed2:	00534333          	xor	t1,t1,t0
   10ed6:	01761713          	slli	a4,a2,0x17
   10eda:	01d8c8b3          	xor	a7,a7,t4
   10ede:	01969913          	slli	s2,a3,0x19
   10ee2:	0076de93          	srli	t4,a3,0x7
   10ee6:	01961393          	slli	t2,a2,0x19
   10eea:	00965293          	srli	t0,a2,0x9
   10eee:	0096d413          	srli	s0,a3,0x9
   10ef2:	017e4e33          	xor	t3,t3,s7
   10ef6:	01d3e3b3          	or	t2,t2,t4
   10efa:	0102e2b3          	or	t0,t0,a6
   10efe:	8c59                	or	s0,s0,a4
   10f00:	01e96933          	or	s2,s2,t5
   10f04:	00894933          	xor	s2,s2,s0
   10f08:	0053c433          	xor	s0,t2,t0
   10f0c:	01d7d293          	srli	t0,a5,0x1d
   10f10:	003e1393          	slli	t2,t3,0x3
   10f14:	c822                	sw	s0,16(sp)
   10f16:	01454533          	xor	a0,a0,s4
   10f1a:	0072e3b3          	or	t2,t0,t2
   10f1e:	00379413          	slli	s0,a5,0x3
   10f22:	01de5293          	srli	t0,t3,0x1d
   10f26:	00a34333          	xor	t1,t1,a0
   10f2a:	019e1c93          	slli	s9,t3,0x19
   10f2e:	0082e433          	or	s0,t0,s0
   10f32:	0077d293          	srli	t0,a5,0x7
   10f36:	00b8c8b3          	xor	a7,a7,a1
   10f3a:	00a35a13          	srli	s4,t1,0xa
   10f3e:	0192ecb3          	or	s9,t0,s9
   10f42:	007e5d13          	srli	s10,t3,0x7
   10f46:	01979293          	slli	t0,a5,0x19
   10f4a:	8ad2                	mv	s5,s4
   10f4c:	005d6d33          	or	s10,s10,t0
   10f50:	01689293          	slli	t0,a7,0x16
   10f54:	00a8df93          	srli	t6,a7,0xa
   10f58:	0152e2b3          	or	t0,t0,s5
   10f5c:	01631a93          	slli	s5,t1,0x16
   10f60:	01135c13          	srli	s8,t1,0x11
   10f64:	01faefb3          	or	t6,s5,t6
   10f68:	00f89a93          	slli	s5,a7,0xf
   10f6c:	fff54513          	not	a0,a0
   10f70:	fff5c593          	not	a1,a1
   10f74:	018aec33          	or	s8,s5,s8
   10f78:	0118db13          	srli	s6,a7,0x11
   10f7c:	00f31a93          	slli	s5,t1,0xf
   10f80:	00155d93          	srli	s11,a0,0x1
   10f84:	016aeb33          	or	s6,s5,s6
   10f88:	01f59a93          	slli	s5,a1,0x1f
   10f8c:	0065de93          	srli	t4,a1,0x6
   10f90:	01baeab3          	or	s5,s5,s11
   10f94:	01f51a13          	slli	s4,a0,0x1f
   10f98:	0015dd93          	srli	s11,a1,0x1
   10f9c:	01a51813          	slli	a6,a0,0x1a
   10fa0:	c626                	sw	s1,12(sp)
   10fa2:	01ba6a33          	or	s4,s4,s11
   10fa6:	01d86833          	or	a6,a6,t4
   10faa:	00655f13          	srli	t5,a0,0x6
   10fae:	0182c2b3          	xor	t0,t0,s8
   10fb2:	01a59713          	slli	a4,a1,0x1a
   10fb6:	4c42                	lw	s8,16(sp)
   10fb8:	010a4833          	xor	a6,s4,a6
   10fbc:	4a32                	lw	s4,12(sp)
   10fbe:	00dbc9b3          	xor	s3,s7,a3
   10fc2:	8cb1                	xor	s1,s1,a2
   10fc4:	01e76733          	or	a4,a4,t5
   10fc8:	0139de93          	srli	t4,s3,0x13
   10fcc:	00eac733          	xor	a4,s5,a4
   10fd0:	00d49a93          	slli	s5,s1,0xd
   10fd4:	00d99d93          	slli	s11,s3,0xd
   10fd8:	018bcbb3          	xor	s7,s7,s8
   10fdc:	0134df13          	srli	t5,s1,0x13
   10fe0:	016fcfb3          	xor	t6,t6,s6
   10fe4:	01daeeb3          	or	t4,s5,t4
   10fe8:	012a4b33          	xor	s6,s4,s2
   10fec:	01c4da93          	srli	s5,s1,0x1c
   10ff0:	00499a13          	slli	s4,s3,0x4
   10ff4:	0492                	slli	s1,s1,0x4
   10ff6:	01c9d993          	srli	s3,s3,0x1c
   10ffa:	011fcfb3          	xor	t6,t6,a7
   10ffe:	0134e4b3          	or	s1,s1,s3
   11002:	0186c6b3          	xor	a3,a3,s8
   11006:	017eceb3          	xor	t4,t4,s7
   1100a:	009eceb3          	xor	t4,t4,s1
   1100e:	0193c3b3          	xor	t2,t2,s9
   11012:	00b84833          	xor	a6,a6,a1
   11016:	01f6c5b3          	xor	a1,a3,t6
   1101a:	01c3c3b3          	xor	t2,t2,t3
   1101e:	0062c333          	xor	t1,t0,t1
   11022:	8f29                	xor	a4,a4,a0
   11024:	fffec293          	not	t0,t4
   11028:	ffffc513          	not	a0,t6
   1102c:	fff5c993          	not	s3,a1
   11030:	00784833          	xor	a6,a6,t2
   11034:	01d9f9b3          	and	s3,s3,t4
   11038:	01a44433          	xor	s0,s0,s10
   1103c:	01edef33          	or	t5,s11,t5
   11040:	8d6d                	and	a0,a0,a1
   11042:	0072f2b3          	and	t0,t0,t2
   11046:	00b2c2b3          	xor	t0,t0,a1
   1104a:	8c3d                	xor	s0,s0,a5
   1104c:	01f9c5b3          	xor	a1,s3,t6
   11050:	015a6a33          	or	s4,s4,s5
   11054:	01264633          	xor	a2,a2,s2
   11058:	01054533          	xor	a0,a0,a6
   1105c:	016f4f33          	xor	t5,t5,s6
   11060:	006648b3          	xor	a7,a2,t1
   11064:	00a5cb33          	xor	s6,a1,a0
   11068:	014f4f33          	xor	t5,t5,s4
   1106c:	4592                	lw	a1,4(sp)
   1106e:	8f21                	xor	a4,a4,s0
   11070:	fff3c493          	not	s1,t2
   11074:	fff84793          	not	a5,a6
   11078:	04b74a93          	xori	s5,a4,75
   1107c:	0104f4b3          	and	s1,s1,a6
   11080:	fff44693          	not	a3,s0
   11084:	ffff4913          	not	s2,t5
   11088:	fb474713          	xori	a4,a4,-76
   1108c:	fff8ca13          	not	s4,a7
   11090:	01f7f7b3          	and	a5,a5,t6
   11094:	00677633          	and	a2,a4,t1
   11098:	01ea7a33          	and	s4,s4,t5
   1109c:	01d4c733          	xor	a4,s1,t4
   110a0:	0077c7b3          	xor	a5,a5,t2
   110a4:	fff34e13          	not	t3,t1
   110a8:	0156f6b3          	and	a3,a3,s5
   110ac:	00897933          	and	s2,s2,s0
   110b0:	01194933          	xor	s2,s2,a7
   110b4:	01e6c6b3          	xor	a3,a3,t5
   110b8:	011e7e33          	and	t3,t3,a7
   110bc:	8e21                	xor	a2,a2,s0
   110be:	006a48b3          	xor	a7,s4,t1
   110c2:	00e7c333          	xor	t1,a5,a4
   110c6:	ff858793          	addi	a5,a1,-8
   110ca:	8e35                	xor	a2,a2,a3
   110cc:	00574733          	xor	a4,a4,t0
   110d0:	0126c6b3          	xor	a3,a3,s2
   110d4:	00b7b5b3          	sltu	a1,a5,a1
   110d8:	ca2e                	sw	a1,20(sp)
   110da:	d23e                	sw	a5,36(sp)
   110dc:	00d71593          	slli	a1,a4,0xd
   110e0:	0136d793          	srli	a5,a3,0x13
   110e4:	8ddd                	or	a1,a1,a5
   110e6:	ce2e                	sw	a1,28(sp)
   110e8:	01375793          	srli	a5,a4,0x13
   110ec:	00d69593          	slli	a1,a3,0xd
   110f0:	8ddd                	or	a1,a1,a5
   110f2:	d02e                	sw	a1,32(sp)
   110f4:	01c6da13          	srli	s4,a3,0x1c
   110f8:	00471593          	slli	a1,a4,0x4
   110fc:	015e4e33          	xor	t3,t3,s5
   11100:	01d35393          	srli	t2,t1,0x1d
   11104:	01c75a93          	srli	s5,a4,0x1c
   11108:	0145ea33          	or	s4,a1,s4
   1110c:	00469593          	slli	a1,a3,0x4
   11110:	c21e                	sw	t2,4(sp)
   11112:	01931b93          	slli	s7,t1,0x19
   11116:	00331f93          	slli	t6,t1,0x3
   1111a:	0155eab3          	or	s5,a1,s5
   1111e:	01d65593          	srli	a1,a2,0x1d
   11122:	c65e                	sw	s7,12(sp)
   11124:	01f5efb3          	or	t6,a1,t6
   11128:	4592                	lw	a1,4(sp)
   1112a:	47b2                	lw	a5,12(sp)
   1112c:	00361f13          	slli	t5,a2,0x3
   11130:	00735c13          	srli	s8,t1,0x7
   11134:	01e5ef33          	or	t5,a1,t5
   11138:	00765593          	srli	a1,a2,0x7
   1113c:	c862                	sw	s8,16(sp)
   1113e:	8ddd                	or	a1,a1,a5
   11140:	c22e                	sw	a1,4(sp)
   11142:	45c2                	lw	a1,16(sp)
   11144:	fffe4813          	not	a6,t3
   11148:	fff54513          	not	a0,a0
   1114c:	01961d93          	slli	s11,a2,0x19
   11150:	01b5edb3          	or	s11,a1,s11
   11154:	00185793          	srli	a5,a6,0x1
   11158:	01f51593          	slli	a1,a0,0x1f
   1115c:	8ddd                	or	a1,a1,a5
   1115e:	00155393          	srli	t2,a0,0x1
   11162:	01f81793          	slli	a5,a6,0x1f
   11166:	0077e3b3          	or	t2,a5,t2
   1116a:	01a51c93          	slli	s9,a0,0x1a
   1116e:	00685793          	srli	a5,a6,0x6
   11172:	01c8cd33          	xor	s10,a7,t3
   11176:	00fcecb3          	or	s9,s9,a5
   1117a:	00655493          	srli	s1,a0,0x6
   1117e:	01a81793          	slli	a5,a6,0x1a
   11182:	8cdd                	or	s1,s1,a5
   11184:	00ad5893          	srli	a7,s10,0xa
   11188:	016b1793          	slli	a5,s6,0x16
   1118c:	0117e8b3          	or	a7,a5,a7
   11190:	00ab5413          	srli	s0,s6,0xa
   11194:	016d1793          	slli	a5,s10,0x16
   11198:	8c5d                	or	s0,s0,a5
   1119a:	00fb1c13          	slli	s8,s6,0xf
   1119e:	011d5793          	srli	a5,s10,0x11
   111a2:	cc1a                	sw	t1,24(sp)
   111a4:	00fc6c33          	or	s8,s8,a5
   111a8:	011b5313          	srli	t1,s6,0x11
   111ac:	00fd1793          	slli	a5,s10,0xf
   111b0:	00795b93          	srli	s7,s2,0x7
   111b4:	0067e333          	or	t1,a5,t1
   111b8:	01929793          	slli	a5,t0,0x19
   111bc:	0177ebb3          	or	s7,a5,s7
   111c0:	0072d993          	srli	s3,t0,0x7
   111c4:	01991793          	slli	a5,s2,0x19
   111c8:	0137e9b3          	or	s3,a5,s3
   111cc:	01729e93          	slli	t4,t0,0x17
   111d0:	00995793          	srli	a5,s2,0x9
   111d4:	01791e13          	slli	t3,s2,0x17
   111d8:	01d7eeb3          	or	t4,a5,t4
   111dc:	0092d793          	srli	a5,t0,0x9
   111e0:	01c7ee33          	or	t3,a5,t3
   111e4:	47a2                	lw	a5,8(sp)
   111e6:	0093c3b3          	xor	t2,t2,s1
   111ea:	00644333          	xor	t1,s0,t1
   111ee:	17fd                	addi	a5,a5,-1
   111f0:	c43e                	sw	a5,8(sp)
   111f2:	47f2                	lw	a5,28(sp)
   111f4:	4452                	lw	s0,20(sp)
   111f6:	01bf4f33          	xor	t5,t5,s11
   111fa:	0147ca33          	xor	s4,a5,s4
   111fe:	4d92                	lw	s11,4(sp)
   11200:	5782                	lw	a5,32(sp)
   11202:	44a2                	lw	s1,8(sp)
   11204:	01cbce33          	xor	t3,s7,t3
   11208:	0157cab3          	xor	s5,a5,s5
   1120c:	00940bb3          	add	s7,s0,s1
   11210:	47e2                	lw	a5,24(sp)
   11212:	01634433          	xor	s0,t1,s6
   11216:	4302                	lw	t1,0(sp)
   11218:	00cf4f33          	xor	t5,t5,a2
   1121c:	5612                	lw	a2,36(sp)
   1121e:	01bfcfb3          	xor	t6,t6,s11
   11222:	0195c5b3          	xor	a1,a1,s9
   11226:	00ffc7b3          	xor	a5,t6,a5
   1122a:	0105cfb3          	xor	t6,a1,a6
   1122e:	00830593          	addi	a1,t1,8
   11232:	0188c8b3          	xor	a7,a7,s8
   11236:	01d9ceb3          	xor	t4,s3,t4
   1123a:	c45e                	sw	s7,8(sp)
   1123c:	c02e                	sw	a1,0(sp)
   1123e:	c232                	sw	a2,4(sp)
   11240:	00a3c4b3          	xor	s1,t2,a0
   11244:	00da46b3          	xor	a3,s4,a3
   11248:	00eac733          	xor	a4,s5,a4
   1124c:	01a8c3b3          	xor	t2,a7,s10
   11250:	012e4933          	xor	s2,t3,s2
   11254:	005ec9b3          	xor	s3,t4,t0
   11258:	800b9563          	bnez	s7,10262 <crypto_hash+0x82>
   1125c:	459d                	li	a1,7
   1125e:	80c5e263          	bltu	a1,a2,10262 <crypto_hash+0x82>
   11262:	01ff4633          	xor	a2,t5,t6
   11266:	0123cab3          	xor	s5,t2,s2
   1126a:	fff3ce13          	not	t3,t2
   1126e:	0097c8b3          	xor	a7,a5,s1
   11272:	01344a33          	xor	s4,s0,s3
   11276:	0f064493          	xori	s1,a2,240
   1127a:	fff44f93          	not	t6,s0
   1127e:	015e7e33          	and	t3,t3,s5
   11282:	55a2                	lw	a1,40(sp)
   11284:	009e4e33          	xor	t3,t3,s1
   11288:	014fffb3          	and	t6,t6,s4
   1128c:	fffe4b13          	not	s6,t3
   11290:	011fcfb3          	xor	t6,t6,a7
   11294:	ffffc813          	not	a6,t6
   11298:	8bda                	mv	s7,s6
   1129a:	001b5d13          	srli	s10,s6,0x1
   1129e:	c05a                	sw	s6,0(sp)
   112a0:	0b7e                	slli	s6,s6,0x1f
   112a2:	c45a                	sw	s6,8(sp)
   112a4:	ff858293          	addi	t0,a1,-8
   112a8:	00185d93          	srli	s11,a6,0x1
   112ac:	01f81593          	slli	a1,a6,0x1f
   112b0:	01a81c93          	slli	s9,a6,0x1a
   112b4:	00685b13          	srli	s6,a6,0x6
   112b8:	c242                	sw	a6,4(sp)
   112ba:	5832                	lw	a6,44(sp)
   112bc:	ff82f293          	andi	t0,t0,-8
   112c0:	02a1                	addi	t0,t0,8
   112c2:	92c2                	add	t0,t0,a6
   112c4:	f0f64513          	xori	a0,a2,-241
   112c8:	fff7c613          	not	a2,a5
   112cc:	d616                	sw	t0,44(sp)
   112ce:	013749b3          	xor	s3,a4,s3
   112d2:	52a2                	lw	t0,40(sp)
   112d4:	01167733          	and	a4,a2,a7
   112d8:	4622                	lw	a2,8(sp)
   112da:	006bdc13          	srli	s8,s7,0x6
   112de:	fff8ce93          	not	t4,a7
   112e2:	ffff4313          	not	t1,t5
   112e6:	008efeb3          	and	t4,t4,s0
   112ea:	0072f813          	andi	a6,t0,7
   112ee:	00757533          	and	a0,a0,t2
   112f2:	0bea                	slli	s7,s7,0x1a
   112f4:	01b66db3          	or	s11,a2,s11
   112f8:	018ce633          	or	a2,s9,s8
   112fc:	0126c933          	xor	s2,a3,s2
   11300:	d442                	sw	a6,40(sp)
   11302:	009376b3          	and	a3,t1,s1
   11306:	01e54533          	xor	a0,a0,t5
   1130a:	00feceb3          	xor	t4,t4,a5
   1130e:	fffac313          	not	t1,s5
   11312:	fffa4893          	not	a7,s4
   11316:	01a5ed33          	or	s10,a1,s10
   1131a:	c432                	sw	a2,8(sp)
   1131c:	016bec33          	or	s8,s7,s6
   11320:	01c3ce33          	xor	t3,t2,t3
   11324:	01f44433          	xor	s0,s0,t6
   11328:	84c2                	mv	s1,a6
   1132a:	e099                	bnez	s1,11330 <crypto_hash+0x1150>
   1132c:	7e00206f          	j	13b0c <crypto_hash+0x392c>
   11330:	5b32                	lw	s6,44(sp)
   11332:	4605                	li	a2,1
   11334:	4381                	li	t2,0
   11336:	000b4283          	lbu	t0,0(s6)
   1133a:	02e2                	slli	t0,t0,0x18
   1133c:	04c48c63          	beq	s1,a2,11394 <crypto_hash+0x11b4>
   11340:	001b4603          	lbu	a2,1(s6)
   11344:	4f89                	li	t6,2
   11346:	0642                	slli	a2,a2,0x10
   11348:	00c2e2b3          	or	t0,t0,a2
   1134c:	05f48463          	beq	s1,t6,11394 <crypto_hash+0x11b4>
   11350:	002b4603          	lbu	a2,2(s6)
   11354:	4f8d                	li	t6,3
   11356:	0622                	slli	a2,a2,0x8
   11358:	00c2e2b3          	or	t0,t0,a2
   1135c:	03f48c63          	beq	s1,t6,11394 <crypto_hash+0x11b4>
   11360:	003b4f83          	lbu	t6,3(s6)
   11364:	4611                	li	a2,4
   11366:	01f2e2b3          	or	t0,t0,t6
   1136a:	02c48563          	beq	s1,a2,11394 <crypto_hash+0x11b4>
   1136e:	004b4383          	lbu	t2,4(s6)
   11372:	4615                	li	a2,5
   11374:	03e2                	slli	t2,t2,0x18
   11376:	00c48f63          	beq	s1,a2,11394 <crypto_hash+0x11b4>
   1137a:	005b4603          	lbu	a2,5(s6)
   1137e:	4f9d                	li	t6,7
   11380:	0642                	slli	a2,a2,0x10
   11382:	00c3e3b3          	or	t2,t2,a2
   11386:	01f49763          	bne	s1,t6,11394 <crypto_hash+0x11b4>
   1138a:	006b4603          	lbu	a2,6(s6)
   1138e:	0622                	slli	a2,a2,0x8
   11390:	00c3e3b3          	or	t2,t2,a2
   11394:	54a2                	lw	s1,40(sp)
   11396:	461d                	li	a2,7
   11398:	8e05                	sub	a2,a2,s1
   1139a:	060e                	slli	a2,a2,0x3
   1139c:	fe060493          	addi	s1,a2,-32
   113a0:	0004d463          	bgez	s1,113a8 <crypto_hash+0x11c8>
   113a4:	7500206f          	j	13af4 <crypto_hash+0x3914>
   113a8:	08000f93          	li	t6,128
   113ac:	009f9fb3          	sll	t6,t6,s1
   113b0:	4601                	li	a2,0
   113b2:	01264633          	xor	a2,a2,s2
   113b6:	007643b3          	xor	t2,a2,t2
   113ba:	013fcfb3          	xor	t6,t6,s3
   113be:	005fc4b3          	xor	s1,t6,t0
   113c2:	fff3c293          	not	t0,t2
   113c6:	00e4c633          	xor	a2,s1,a4
   113ca:	fff4cf93          	not	t6,s1
   113ce:	01e2f2b3          	and	t0,t0,t5
   113d2:	00d3cf33          	xor	t5,t2,a3
   113d6:	01d64eb3          	xor	t4,a2,t4
   113da:	00ffffb3          	and	t6,t6,a5
   113de:	00af47b3          	xor	a5,t5,a0
   113e2:	014fcfb3          	xor	t6,t6,s4
   113e6:	0152c2b3          	xor	t0,t0,s5
   113ea:	01d7dc93          	srli	s9,a5,0x1d
   113ee:	003e9a13          	slli	s4,t4,0x3
   113f2:	005f4533          	xor	a0,t5,t0
   113f6:	014cea33          	or	s4,s9,s4
   113fa:	01dedf13          	srli	t5,t4,0x1d
   113fe:	00379c93          	slli	s9,a5,0x3
   11402:	0063f6b3          	and	a3,t2,t1
   11406:	0114f733          	and	a4,s1,a7
   1140a:	0077d993          	srli	s3,a5,0x7
   1140e:	019f6f33          	or	t5,t5,s9
   11412:	019e9c93          	slli	s9,t4,0x19
   11416:	01c6c6b3          	xor	a3,a3,t3
   1141a:	8f21                	xor	a4,a4,s0
   1141c:	007edb13          	srli	s6,t4,0x7
   11420:	0199e9b3          	or	s3,s3,s9
   11424:	01979c93          	slli	s9,a5,0x19
   11428:	019b6b33          	or	s6,s6,s9
   1142c:	00a6d413          	srli	s0,a3,0xa
   11430:	01671c93          	slli	s9,a4,0x16
   11434:	00a75593          	srli	a1,a4,0xa
   11438:	008ce433          	or	s0,s9,s0
   1143c:	01669c93          	slli	s9,a3,0x16
   11440:	00bcecb3          	or	s9,s9,a1
   11444:	0116db93          	srli	s7,a3,0x11
   11448:	00f71593          	slli	a1,a4,0xf
   1144c:	0175ebb3          	or	s7,a1,s7
   11450:	01175393          	srli	t2,a4,0x11
   11454:	00f69593          	slli	a1,a3,0xf
   11458:	0072da93          	srli	s5,t0,0x7
   1145c:	0075e3b3          	or	t2,a1,t2
   11460:	019f9593          	slli	a1,t6,0x19
   11464:	c666                	sw	s9,12(sp)
   11466:	0155eab3          	or	s5,a1,s5
   1146a:	007fdc93          	srli	s9,t6,0x7
   1146e:	01929593          	slli	a1,t0,0x19
   11472:	0195ecb3          	or	s9,a1,s9
   11476:	017f9893          	slli	a7,t6,0x17
   1147a:	0092d593          	srli	a1,t0,0x9
   1147e:	01f64633          	xor	a2,a2,t6
   11482:	009fd313          	srli	t1,t6,0x9
   11486:	0115e8b3          	or	a7,a1,a7
   1148a:	01729593          	slli	a1,t0,0x17
   1148e:	00d61913          	slli	s2,a2,0xd
   11492:	00b36333          	or	t1,t1,a1
   11496:	01355593          	srli	a1,a0,0x13
   1149a:	00b96933          	or	s2,s2,a1
   1149e:	00d51493          	slli	s1,a0,0xd
   114a2:	01365593          	srli	a1,a2,0x13
   114a6:	01c65813          	srli	a6,a2,0x1c
   114aa:	c866                	sw	s9,16(sp)
   114ac:	8ccd                	or	s1,s1,a1
   114ae:	01c55c93          	srli	s9,a0,0x1c
   114b2:	00451593          	slli	a1,a0,0x4
   114b6:	00461e13          	slli	t3,a2,0x4
   114ba:	019e6e33          	or	t3,t3,s9
   114be:	0105ecb3          	or	s9,a1,a6
   114c2:	45b2                	lw	a1,12(sp)
   114c4:	4812                	lw	a6,4(sp)
   114c6:	016f4f33          	xor	t5,t5,s6
   114ca:	0075c3b3          	xor	t2,a1,t2
   114ce:	45c2                	lw	a1,16(sp)
   114d0:	00ff4f33          	xor	t5,t5,a5
   114d4:	47a2                	lw	a5,8(sp)
   114d6:	0115c8b3          	xor	a7,a1,a7
   114da:	4582                	lw	a1,0(sp)
   114dc:	013a49b3          	xor	s3,s4,s3
   114e0:	01b84833          	xor	a6,a6,s11
   114e4:	01a5c5b3          	xor	a1,a1,s10
   114e8:	01d9c9b3          	xor	s3,s3,t4
   114ec:	01884833          	xor	a6,a6,s8
   114f0:	8fad                	xor	a5,a5,a1
   114f2:	00e3c3b3          	xor	t2,t2,a4
   114f6:	01744433          	xor	s0,s0,s7
   114fa:	01f8c733          	xor	a4,a7,t6
   114fe:	01e7c7b3          	xor	a5,a5,t5
   11502:	013848b3          	xor	a7,a6,s3
   11506:	006ac333          	xor	t1,s5,t1
   1150a:	01c94e33          	xor	t3,s2,t3
   1150e:	0194ccb3          	xor	s9,s1,s9
   11512:	00d44933          	xor	s2,s0,a3
   11516:	0e17ca13          	xori	s4,a5,225
   1151a:	00534333          	xor	t1,t1,t0
   1151e:	00ae4e33          	xor	t3,t3,a0
   11522:	00ccccb3          	xor	s9,s9,a2
   11526:	fff9c693          	not	a3,s3
   1152a:	ffff4613          	not	a2,t5
   1152e:	fff8ce93          	not	t4,a7
   11532:	f1e7c793          	xori	a5,a5,-226
   11536:	006e42b3          	xor	t0,t3,t1
   1153a:	00eccfb3          	xor	t6,s9,a4
   1153e:	01467633          	and	a2,a2,s4
   11542:	0116f6b3          	and	a3,a3,a7
   11546:	0127f7b3          	and	a5,a5,s2
   1154a:	007efeb3          	and	t4,t4,t2
   1154e:	00564633          	xor	a2,a2,t0
   11552:	01f6c6b3          	xor	a3,a3,t6
   11556:	fff2c493          	not	s1,t0
   1155a:	01e7c7b3          	xor	a5,a5,t5
   1155e:	013eceb3          	xor	t4,t4,s3
   11562:	8fb1                	xor	a5,a5,a2
   11564:	00deceb3          	xor	t4,t4,a3
   11568:	00694833          	xor	a6,s2,t1
   1156c:	00e3c733          	xor	a4,t2,a4
   11570:	fff94513          	not	a0,s2
   11574:	01e4f4b3          	and	s1,s1,t5
   11578:	0104c4b3          	xor	s1,s1,a6
   1157c:	fff3c593          	not	a1,t2
   11580:	fff84e13          	not	t3,a6
   11584:	fff74313          	not	t1,a4
   11588:	01057533          	and	a0,a0,a6
   1158c:	01d7df13          	srli	t5,a5,0x1d
   11590:	003e9813          	slli	a6,t4,0x3
   11594:	ffffc413          	not	s0,t6
   11598:	8df9                	and	a1,a1,a4
   1159a:	005e7e33          	and	t3,t3,t0
   1159e:	01f37333          	and	t1,t1,t6
   115a2:	010f6f33          	or	t5,t5,a6
   115a6:	01dedf93          	srli	t6,t4,0x1d
   115aa:	00379813          	slli	a6,a5,0x3
   115ae:	01454533          	xor	a0,a0,s4
   115b2:	0115c5b3          	xor	a1,a1,a7
   115b6:	01347433          	and	s0,s0,s3
   115ba:	012e4e33          	xor	t3,t3,s2
   115be:	00734333          	xor	t1,t1,t2
   115c2:	0077d993          	srli	s3,a5,0x7
   115c6:	010fefb3          	or	t6,t6,a6
   115ca:	019e9813          	slli	a6,t4,0x19
   115ce:	00ae4e33          	xor	t3,t3,a0
   115d2:	00b34333          	xor	t1,t1,a1
   115d6:	0109e9b3          	or	s3,s3,a6
   115da:	007eda13          	srli	s4,t4,0x7
   115de:	01979813          	slli	a6,a5,0x19
   115e2:	010a6a33          	or	s4,s4,a6
   115e6:	00ae5a93          	srli	s5,t3,0xa
   115ea:	01631813          	slli	a6,t1,0x16
   115ee:	01586ab3          	or	s5,a6,s5
   115f2:	00a35b93          	srli	s7,t1,0xa
   115f6:	016e1813          	slli	a6,t3,0x16
   115fa:	01786bb3          	or	s7,a6,s7
   115fe:	c05e                	sw	s7,0(sp)
   11600:	00f31813          	slli	a6,t1,0xf
   11604:	011e5b93          	srli	s7,t3,0x11
   11608:	01786bb3          	or	s7,a6,s7
   1160c:	c25e                	sw	s7,4(sp)
   1160e:	8c39                	xor	s0,s0,a4
   11610:	00fe1813          	slli	a6,t3,0xf
   11614:	01135b93          	srli	s7,t1,0x11
   11618:	01786bb3          	or	s7,a6,s7
   1161c:	0074dd13          	srli	s10,s1,0x7
   11620:	01941813          	slli	a6,s0,0x19
   11624:	01a86d33          	or	s10,a6,s10
   11628:	00745c93          	srli	s9,s0,0x7
   1162c:	01949813          	slli	a6,s1,0x19
   11630:	01986cb3          	or	s9,a6,s9
   11634:	01741293          	slli	t0,s0,0x17
   11638:	0094d813          	srli	a6,s1,0x9
   1163c:	fff54513          	not	a0,a0
   11640:	fff5c593          	not	a1,a1
   11644:	01749393          	slli	t2,s1,0x17
   11648:	005862b3          	or	t0,a6,t0
   1164c:	00945813          	srli	a6,s0,0x9
   11650:	00155c13          	srli	s8,a0,0x1
   11654:	007863b3          	or	t2,a6,t2
   11658:	01f59813          	slli	a6,a1,0x1f
   1165c:	c45e                	sw	s7,8(sp)
   1165e:	01886c33          	or	s8,a6,s8
   11662:	0015db93          	srli	s7,a1,0x1
   11666:	01f51813          	slli	a6,a0,0x1f
   1166a:	01786bb3          	or	s7,a6,s7
   1166e:	00655713          	srli	a4,a0,0x6
   11672:	01a59813          	slli	a6,a1,0x1a
   11676:	8e25                	xor	a2,a2,s1
   11678:	8ea1                	xor	a3,a3,s0
   1167a:	00e86733          	or	a4,a6,a4
   1167e:	0065d913          	srli	s2,a1,0x6
   11682:	01a51813          	slli	a6,a0,0x1a
   11686:	0136d893          	srli	a7,a3,0x13
   1168a:	01365b13          	srli	s6,a2,0x13
   1168e:	01286933          	or	s2,a6,s2
   11692:	00d69813          	slli	a6,a3,0xd
   11696:	01686b33          	or	s6,a6,s6
   1169a:	8dc6                	mv	s11,a7
   1169c:	00d61813          	slli	a6,a2,0xd
   116a0:	013f4f33          	xor	t5,t5,s3
   116a4:	4992                	lw	s3,4(sp)
   116a6:	01b86db3          	or	s11,a6,s11
   116aa:	01c65893          	srli	a7,a2,0x1c
   116ae:	00469813          	slli	a6,a3,0x4
   116b2:	c63a                	sw	a4,12(sp)
   116b4:	011868b3          	or	a7,a6,a7
   116b8:	00461713          	slli	a4,a2,0x4
   116bc:	01c6d813          	srli	a6,a3,0x1c
   116c0:	01076833          	or	a6,a4,a6
   116c4:	014fcfb3          	xor	t6,t6,s4
   116c8:	4732                	lw	a4,12(sp)
   116ca:	4a02                	lw	s4,0(sp)
   116cc:	013ac9b3          	xor	s3,s5,s3
   116d0:	4aa2                	lw	s5,8(sp)
   116d2:	005cc2b3          	xor	t0,s9,t0
   116d6:	00ec4733          	xor	a4,s8,a4
   116da:	015a4a33          	xor	s4,s4,s5
   116de:	007d43b3          	xor	t2,s10,t2
   116e2:	011b48b3          	xor	a7,s6,a7
   116e6:	010dc833          	xor	a6,s11,a6
   116ea:	00ffcfb3          	xor	t6,t6,a5
   116ee:	006a4a33          	xor	s4,s4,t1
   116f2:	0093c3b3          	xor	t2,t2,s1
   116f6:	0082c333          	xor	t1,t0,s0
   116fa:	00a747b3          	xor	a5,a4,a0
   116fe:	012bc933          	xor	s2,s7,s2
   11702:	00c8c8b3          	xor	a7,a7,a2
   11706:	00d84833          	xor	a6,a6,a3
   1170a:	01df4f33          	xor	t5,t5,t4
   1170e:	0078c8b3          	xor	a7,a7,t2
   11712:	00684833          	xor	a6,a6,t1
   11716:	01f7c7b3          	xor	a5,a5,t6
   1171a:	00b94933          	xor	s2,s2,a1
   1171e:	01c9c9b3          	xor	s3,s3,t3
   11722:	006a4733          	xor	a4,s4,t1
   11726:	01e94933          	xor	s2,s2,t5
   1172a:	0d27c293          	xori	t0,a5,210
   1172e:	ffffc493          	not	s1,t6
   11732:	fff8c613          	not	a2,a7
   11736:	fff84693          	not	a3,a6
   1173a:	f2d7c793          	xori	a5,a5,-211
   1173e:	0079c3b3          	xor	t2,s3,t2
   11742:	0137f7b3          	and	a5,a5,s3
   11746:	ffff4413          	not	s0,t5
   1174a:	fff9c513          	not	a0,s3
   1174e:	fffa4593          	not	a1,s4
   11752:	fff94e13          	not	t3,s2
   11756:	fff74e93          	not	t4,a4
   1175a:	0054f4b3          	and	s1,s1,t0
   1175e:	01f67633          	and	a2,a2,t6
   11762:	01e6f6b3          	and	a3,a3,t5
   11766:	00764633          	xor	a2,a2,t2
   1176a:	8eb9                	xor	a3,a3,a4
   1176c:	0114c4b3          	xor	s1,s1,a7
   11770:	01247433          	and	s0,s0,s2
   11774:	010efeb3          	and	t4,t4,a6
   11778:	fff3c313          	not	t1,t2
   1177c:	00757533          	and	a0,a0,t2
   11780:	8df9                	and	a1,a1,a4
   11782:	014e7e33          	and	t3,t3,s4
   11786:	01f7c733          	xor	a4,a5,t6
   1178a:	8f25                	xor	a4,a4,s1
   1178c:	01044bb3          	xor	s7,s0,a6
   11790:	00554533          	xor	a0,a0,t0
   11794:	0125c5b3          	xor	a1,a1,s2
   11798:	8426                	mv	s0,s1
   1179a:	00765393          	srli	t2,a2,0x7
   1179e:	0076d293          	srli	t0,a3,0x7
   117a2:	01769813          	slli	a6,a3,0x17
   117a6:	01761793          	slli	a5,a2,0x17
   117aa:	01137333          	and	t1,t1,a7
   117ae:	01ee4e33          	xor	t3,t3,t5
   117b2:	014ec8b3          	xor	a7,t4,s4
   117b6:	01969913          	slli	s2,a3,0x19
   117ba:	01961493          	slli	s1,a2,0x19
   117be:	00965e93          	srli	t4,a2,0x9
   117c2:	0096db13          	srli	s6,a3,0x9
   117c6:	017e4e33          	xor	t3,t3,s7
   117ca:	010eeeb3          	or	t4,t4,a6
   117ce:	00fb6b33          	or	s6,s6,a5
   117d2:	00796933          	or	s2,s2,t2
   117d6:	0054e4b3          	or	s1,s1,t0
   117da:	01694933          	xor	s2,s2,s6
   117de:	01d4c4b3          	xor	s1,s1,t4
   117e2:	003e1b13          	slli	s6,t3,0x3
   117e6:	01d75e93          	srli	t4,a4,0x1d
   117ea:	016eeb33          	or	s6,t4,s6
   117ee:	01de5c93          	srli	s9,t3,0x1d
   117f2:	00371e93          	slli	t4,a4,0x3
   117f6:	01dcecb3          	or	s9,s9,t4
   117fa:	01334333          	xor	t1,t1,s3
   117fe:	019e1e93          	slli	t4,t3,0x19
   11802:	00775c13          	srli	s8,a4,0x7
   11806:	00a34333          	xor	t1,t1,a0
   1180a:	00b8c8b3          	xor	a7,a7,a1
   1180e:	01971f93          	slli	t6,a4,0x19
   11812:	01dc6c33          	or	s8,s8,t4
   11816:	007e5e93          	srli	t4,t3,0x7
   1181a:	fff5c593          	not	a1,a1
   1181e:	fff54513          	not	a0,a0
   11822:	00a35f13          	srli	t5,t1,0xa
   11826:	01feefb3          	or	t6,t4,t6
   1182a:	01689e93          	slli	t4,a7,0x16
   1182e:	c25a                	sw	s6,4(sp)
   11830:	0015dd13          	srli	s10,a1,0x1
   11834:	0065d293          	srli	t0,a1,0x6
   11838:	01f51a13          	slli	s4,a0,0x1f
   1183c:	01a51813          	slli	a6,a0,0x1a
   11840:	01eeef33          	or	t5,t4,t5
   11844:	00a8db13          	srli	s6,a7,0xa
   11848:	01631e93          	slli	t4,t1,0x16
   1184c:	c022                	sw	s0,0(sp)
   1184e:	01135d93          	srli	s11,t1,0x11
   11852:	016eeb33          	or	s6,t4,s6
   11856:	01aa6a33          	or	s4,s4,s10
   1185a:	00f89e93          	slli	t4,a7,0xf
   1185e:	00586833          	or	a6,a6,t0
   11862:	01fccfb3          	xor	t6,s9,t6
   11866:	4c92                	lw	s9,4(sp)
   11868:	00155393          	srli	t2,a0,0x1
   1186c:	01beeeb3          	or	t4,t4,s11
   11870:	01f59a93          	slli	s5,a1,0x1f
   11874:	010a4833          	xor	a6,s4,a6
   11878:	4a02                	lw	s4,0(sp)
   1187a:	c476                	sw	t4,8(sp)
   1187c:	00dbc9b3          	xor	s3,s7,a3
   11880:	8c31                	xor	s0,s0,a2
   11882:	0118dd93          	srli	s11,a7,0x11
   11886:	007aeab3          	or	s5,s5,t2
   1188a:	00655793          	srli	a5,a0,0x6
   1188e:	01a59393          	slli	t2,a1,0x1a
   11892:	00f31e93          	slli	t4,t1,0xf
   11896:	00d41d13          	slli	s10,s0,0xd
   1189a:	01beeeb3          	or	t4,t4,s11
   1189e:	00f3e7b3          	or	a5,t2,a5
   118a2:	00d99d93          	slli	s11,s3,0xd
   118a6:	01345393          	srli	t2,s0,0x13
   118aa:	0139d293          	srli	t0,s3,0x13
   118ae:	018ccc33          	xor	s8,s9,s8
   118b2:	4ca2                	lw	s9,8(sp)
   118b4:	00fac7b3          	xor	a5,s5,a5
   118b8:	009bcbb3          	xor	s7,s7,s1
   118bc:	01c45a93          	srli	s5,s0,0x1c
   118c0:	01db4eb3          	xor	t4,s6,t4
   118c4:	007de3b3          	or	t2,s11,t2
   118c8:	012a4b33          	xor	s6,s4,s2
   118cc:	005d62b3          	or	t0,s10,t0
   118d0:	00499a13          	slli	s4,s3,0x4
   118d4:	0412                	slli	s0,s0,0x4
   118d6:	01c9d993          	srli	s3,s3,0x1c
   118da:	00efcfb3          	xor	t6,t6,a4
   118de:	011eceb3          	xor	t4,t4,a7
   118e2:	8d3d                	xor	a0,a0,a5
   118e4:	015a6a33          	or	s4,s4,s5
   118e8:	01346433          	or	s0,s0,s3
   118ec:	8ea5                	xor	a3,a3,s1
   118ee:	0163c3b3          	xor	t2,t2,s6
   118f2:	0172c2b3          	xor	t0,t0,s7
   118f6:	01cc4c33          	xor	s8,s8,t3
   118fa:	01d6c7b3          	xor	a5,a3,t4
   118fe:	0143c3b3          	xor	t2,t2,s4
   11902:	0082c2b3          	xor	t0,t0,s0
   11906:	01f546b3          	xor	a3,a0,t6
   1190a:	00b84833          	xor	a6,a6,a1
   1190e:	019f4f33          	xor	t5,t5,s9
   11912:	006f4f33          	xor	t5,t5,t1
   11916:	018844b3          	xor	s1,a6,s8
   1191a:	01264733          	xor	a4,a2,s2
   1191e:	ffffca13          	not	s4,t6
   11922:	0c36c913          	xori	s2,a3,195
   11926:	fff3c613          	not	a2,t2
   1192a:	fff2c813          	not	a6,t0
   1192e:	f3c6c693          	xori	a3,a3,-196
   11932:	01e74733          	xor	a4,a4,t5
   11936:	01e6f433          	and	s0,a3,t5
   1193a:	012a7a33          	and	s4,s4,s2
   1193e:	01887833          	and	a6,a6,s8
   11942:	fffc4993          	not	s3,s8
   11946:	ffff4513          	not	a0,t5
   1194a:	fffec593          	not	a1,t4
   1194e:	fff4ce13          	not	t3,s1
   11952:	fff7c893          	not	a7,a5
   11956:	01f67633          	and	a2,a2,t6
   1195a:	8e39                	xor	a2,a2,a4
   1195c:	00f846b3          	xor	a3,a6,a5
   11960:	0099f9b3          	and	s3,s3,s1
   11964:	fff74313          	not	t1,a4
   11968:	8d79                	and	a0,a0,a4
   1196a:	8dfd                	and	a1,a1,a5
   1196c:	01f44733          	xor	a4,s0,t6
   11970:	007a47b3          	xor	a5,s4,t2
   11974:	01de7e33          	and	t3,t3,t4
   11978:	0058f8b3          	and	a7,a7,t0
   1197c:	8f3d                	xor	a4,a4,a5
   1197e:	0059cbb3          	xor	s7,s3,t0
   11982:	01254533          	xor	a0,a0,s2
   11986:	8da5                	xor	a1,a1,s1
   11988:	843e                	mv	s0,a5
   1198a:	0076d293          	srli	t0,a3,0x7
   1198e:	01769813          	slli	a6,a3,0x17
   11992:	01761793          	slli	a5,a2,0x17
   11996:	00737333          	and	t1,t1,t2
   1199a:	018e4e33          	xor	t3,t3,s8
   1199e:	00765393          	srli	t2,a2,0x7
   119a2:	01d8c8b3          	xor	a7,a7,t4
   119a6:	01969913          	slli	s2,a3,0x19
   119aa:	01961493          	slli	s1,a2,0x19
   119ae:	00965e93          	srli	t4,a2,0x9
   119b2:	0096db13          	srli	s6,a3,0x9
   119b6:	017e4e33          	xor	t3,t3,s7
   119ba:	010eeeb3          	or	t4,t4,a6
   119be:	00fb6b33          	or	s6,s6,a5
   119c2:	00796933          	or	s2,s2,t2
   119c6:	0054e4b3          	or	s1,s1,t0
   119ca:	01694933          	xor	s2,s2,s6
   119ce:	01d4c4b3          	xor	s1,s1,t4
   119d2:	003e1b13          	slli	s6,t3,0x3
   119d6:	01d75e93          	srli	t4,a4,0x1d
   119da:	016eeb33          	or	s6,t4,s6
   119de:	01de5c93          	srli	s9,t3,0x1d
   119e2:	00371e93          	slli	t4,a4,0x3
   119e6:	01dcecb3          	or	s9,s9,t4
   119ea:	01e34333          	xor	t1,t1,t5
   119ee:	019e1e93          	slli	t4,t3,0x19
   119f2:	00775c13          	srli	s8,a4,0x7
   119f6:	00a34333          	xor	t1,t1,a0
   119fa:	00b8c8b3          	xor	a7,a7,a1
   119fe:	01971f93          	slli	t6,a4,0x19
   11a02:	01dc6c33          	or	s8,s8,t4
   11a06:	007e5e93          	srli	t4,t3,0x7
   11a0a:	fff5c593          	not	a1,a1
   11a0e:	fff54513          	not	a0,a0
   11a12:	00a35f13          	srli	t5,t1,0xa
   11a16:	01feefb3          	or	t6,t4,t6
   11a1a:	01689e93          	slli	t4,a7,0x16
   11a1e:	c25a                	sw	s6,4(sp)
   11a20:	0015dd13          	srli	s10,a1,0x1
   11a24:	0065d293          	srli	t0,a1,0x6
   11a28:	01f51a13          	slli	s4,a0,0x1f
   11a2c:	01a51813          	slli	a6,a0,0x1a
   11a30:	01eeef33          	or	t5,t4,t5
   11a34:	00a8db13          	srli	s6,a7,0xa
   11a38:	01631e93          	slli	t4,t1,0x16
   11a3c:	c022                	sw	s0,0(sp)
   11a3e:	01135d93          	srli	s11,t1,0x11
   11a42:	016eeb33          	or	s6,t4,s6
   11a46:	01aa6a33          	or	s4,s4,s10
   11a4a:	00f89e93          	slli	t4,a7,0xf
   11a4e:	00586833          	or	a6,a6,t0
   11a52:	01fccfb3          	xor	t6,s9,t6
   11a56:	4c92                	lw	s9,4(sp)
   11a58:	00155393          	srli	t2,a0,0x1
   11a5c:	01beeeb3          	or	t4,t4,s11
   11a60:	01f59a93          	slli	s5,a1,0x1f
   11a64:	010a4833          	xor	a6,s4,a6
   11a68:	4a02                	lw	s4,0(sp)
   11a6a:	00dbc9b3          	xor	s3,s7,a3
   11a6e:	8c31                	xor	s0,s0,a2
   11a70:	c476                	sw	t4,8(sp)
   11a72:	0118dd93          	srli	s11,a7,0x11
   11a76:	007aeab3          	or	s5,s5,t2
   11a7a:	00655793          	srli	a5,a0,0x6
   11a7e:	01a59393          	slli	t2,a1,0x1a
   11a82:	00f31e93          	slli	t4,t1,0xf
   11a86:	00d41d13          	slli	s10,s0,0xd
   11a8a:	01beeeb3          	or	t4,t4,s11
   11a8e:	00f3e7b3          	or	a5,t2,a5
   11a92:	00d99d93          	slli	s11,s3,0xd
   11a96:	01345393          	srli	t2,s0,0x13
   11a9a:	0139d293          	srli	t0,s3,0x13
   11a9e:	018ccc33          	xor	s8,s9,s8
   11aa2:	4ca2                	lw	s9,8(sp)
   11aa4:	00fac7b3          	xor	a5,s5,a5
   11aa8:	009bcbb3          	xor	s7,s7,s1
   11aac:	01c45a93          	srli	s5,s0,0x1c
   11ab0:	01db4eb3          	xor	t4,s6,t4
   11ab4:	007de3b3          	or	t2,s11,t2
   11ab8:	012a4b33          	xor	s6,s4,s2
   11abc:	005d62b3          	or	t0,s10,t0
   11ac0:	00499a13          	slli	s4,s3,0x4
   11ac4:	0412                	slli	s0,s0,0x4
   11ac6:	01c9d993          	srli	s3,s3,0x1c
   11aca:	00efcfb3          	xor	t6,t6,a4
   11ace:	011eceb3          	xor	t4,t4,a7
   11ad2:	8d3d                	xor	a0,a0,a5
   11ad4:	015a6a33          	or	s4,s4,s5
   11ad8:	01346433          	or	s0,s0,s3
   11adc:	8ea5                	xor	a3,a3,s1
   11ade:	0163c3b3          	xor	t2,t2,s6
   11ae2:	0172c2b3          	xor	t0,t0,s7
   11ae6:	01cc4c33          	xor	s8,s8,t3
   11aea:	01d6c7b3          	xor	a5,a3,t4
   11aee:	0143c3b3          	xor	t2,t2,s4
   11af2:	0082c2b3          	xor	t0,t0,s0
   11af6:	01f546b3          	xor	a3,a0,t6
   11afa:	00b84833          	xor	a6,a6,a1
   11afe:	019f4f33          	xor	t5,t5,s9
   11b02:	006f4f33          	xor	t5,t5,t1
   11b06:	018844b3          	xor	s1,a6,s8
   11b0a:	01264733          	xor	a4,a2,s2
   11b0e:	ffffca13          	not	s4,t6
   11b12:	0b46c913          	xori	s2,a3,180
   11b16:	fff3c613          	not	a2,t2
   11b1a:	fff2c813          	not	a6,t0
   11b1e:	f4b6c693          	xori	a3,a3,-181
   11b22:	01e74733          	xor	a4,a4,t5
   11b26:	01e6f433          	and	s0,a3,t5
   11b2a:	012a7a33          	and	s4,s4,s2
   11b2e:	01887833          	and	a6,a6,s8
   11b32:	fffc4993          	not	s3,s8
   11b36:	ffff4513          	not	a0,t5
   11b3a:	fffec593          	not	a1,t4
   11b3e:	fff4ce13          	not	t3,s1
   11b42:	fff7c893          	not	a7,a5
   11b46:	01f67633          	and	a2,a2,t6
   11b4a:	8e39                	xor	a2,a2,a4
   11b4c:	00f846b3          	xor	a3,a6,a5
   11b50:	0099f9b3          	and	s3,s3,s1
   11b54:	fff74313          	not	t1,a4
   11b58:	8d79                	and	a0,a0,a4
   11b5a:	8dfd                	and	a1,a1,a5
   11b5c:	01f44733          	xor	a4,s0,t6
   11b60:	007a47b3          	xor	a5,s4,t2
   11b64:	01de7e33          	and	t3,t3,t4
   11b68:	0058f8b3          	and	a7,a7,t0
   11b6c:	8f3d                	xor	a4,a4,a5
   11b6e:	0059cbb3          	xor	s7,s3,t0
   11b72:	01254533          	xor	a0,a0,s2
   11b76:	8da5                	xor	a1,a1,s1
   11b78:	843e                	mv	s0,a5
   11b7a:	0076d293          	srli	t0,a3,0x7
   11b7e:	01769813          	slli	a6,a3,0x17
   11b82:	01761793          	slli	a5,a2,0x17
   11b86:	00737333          	and	t1,t1,t2
   11b8a:	018e4e33          	xor	t3,t3,s8
   11b8e:	00765393          	srli	t2,a2,0x7
   11b92:	01d8c8b3          	xor	a7,a7,t4
   11b96:	01969913          	slli	s2,a3,0x19
   11b9a:	01961493          	slli	s1,a2,0x19
   11b9e:	00965e93          	srli	t4,a2,0x9
   11ba2:	0096db13          	srli	s6,a3,0x9
   11ba6:	017e4e33          	xor	t3,t3,s7
   11baa:	010eeeb3          	or	t4,t4,a6
   11bae:	00fb6b33          	or	s6,s6,a5
   11bb2:	00796933          	or	s2,s2,t2
   11bb6:	0054e4b3          	or	s1,s1,t0
   11bba:	01694933          	xor	s2,s2,s6
   11bbe:	01d4c4b3          	xor	s1,s1,t4
   11bc2:	003e1b13          	slli	s6,t3,0x3
   11bc6:	01d75e93          	srli	t4,a4,0x1d
   11bca:	016eeb33          	or	s6,t4,s6
   11bce:	01de5c93          	srli	s9,t3,0x1d
   11bd2:	00371e93          	slli	t4,a4,0x3
   11bd6:	01dcecb3          	or	s9,s9,t4
   11bda:	01e34333          	xor	t1,t1,t5
   11bde:	019e1e93          	slli	t4,t3,0x19
   11be2:	00775c13          	srli	s8,a4,0x7
   11be6:	00a34333          	xor	t1,t1,a0
   11bea:	00b8c8b3          	xor	a7,a7,a1
   11bee:	01971f93          	slli	t6,a4,0x19
   11bf2:	01dc6c33          	or	s8,s8,t4
   11bf6:	007e5e93          	srli	t4,t3,0x7
   11bfa:	00a35f13          	srli	t5,t1,0xa
   11bfe:	01feefb3          	or	t6,t4,t6
   11c02:	01689e93          	slli	t4,a7,0x16
   11c06:	c25a                	sw	s6,4(sp)
   11c08:	01eeef33          	or	t5,t4,t5
   11c0c:	00a8db13          	srli	s6,a7,0xa
   11c10:	01631e93          	slli	t4,t1,0x16
   11c14:	fff5c593          	not	a1,a1
   11c18:	fff54513          	not	a0,a0
   11c1c:	01135d93          	srli	s11,t1,0x11
   11c20:	016eeb33          	or	s6,t4,s6
   11c24:	01fccfb3          	xor	t6,s9,t6
   11c28:	00f89e93          	slli	t4,a7,0xf
   11c2c:	4c92                	lw	s9,4(sp)
   11c2e:	0015dd13          	srli	s10,a1,0x1
   11c32:	0065d293          	srli	t0,a1,0x6
   11c36:	01beeeb3          	or	t4,t4,s11
   11c3a:	01f51a13          	slli	s4,a0,0x1f
   11c3e:	01a51813          	slli	a6,a0,0x1a
   11c42:	c476                	sw	t4,8(sp)
   11c44:	01aa6a33          	or	s4,s4,s10
   11c48:	c022                	sw	s0,0(sp)
   11c4a:	00586833          	or	a6,a6,t0
   11c4e:	00155393          	srli	t2,a0,0x1
   11c52:	01f59a93          	slli	s5,a1,0x1f
   11c56:	018ccc33          	xor	s8,s9,s8
   11c5a:	010a4833          	xor	a6,s4,a6
   11c5e:	4ca2                	lw	s9,8(sp)
   11c60:	4a02                	lw	s4,0(sp)
   11c62:	00dbc9b3          	xor	s3,s7,a3
   11c66:	8c31                	xor	s0,s0,a2
   11c68:	0118dd93          	srli	s11,a7,0x11
   11c6c:	007aeab3          	or	s5,s5,t2
   11c70:	00655793          	srli	a5,a0,0x6
   11c74:	01a59393          	slli	t2,a1,0x1a
   11c78:	00f31e93          	slli	t4,t1,0xf
   11c7c:	00d41d13          	slli	s10,s0,0xd
   11c80:	01beeeb3          	or	t4,t4,s11
   11c84:	00f3e7b3          	or	a5,t2,a5
   11c88:	00d99d93          	slli	s11,s3,0xd
   11c8c:	01345393          	srli	t2,s0,0x13
   11c90:	0139d293          	srli	t0,s3,0x13
   11c94:	00fac7b3          	xor	a5,s5,a5
   11c98:	009bcbb3          	xor	s7,s7,s1
   11c9c:	01c45a93          	srli	s5,s0,0x1c
   11ca0:	01db4eb3          	xor	t4,s6,t4
   11ca4:	007de3b3          	or	t2,s11,t2
   11ca8:	012a4b33          	xor	s6,s4,s2
   11cac:	005d62b3          	or	t0,s10,t0
   11cb0:	00499a13          	slli	s4,s3,0x4
   11cb4:	0412                	slli	s0,s0,0x4
   11cb6:	01c9d993          	srli	s3,s3,0x1c
   11cba:	00efcfb3          	xor	t6,t6,a4
   11cbe:	011eceb3          	xor	t4,t4,a7
   11cc2:	8d3d                	xor	a0,a0,a5
   11cc4:	015a6a33          	or	s4,s4,s5
   11cc8:	01346433          	or	s0,s0,s3
   11ccc:	8ea5                	xor	a3,a3,s1
   11cce:	0163c3b3          	xor	t2,t2,s6
   11cd2:	0172c2b3          	xor	t0,t0,s7
   11cd6:	01cc4c33          	xor	s8,s8,t3
   11cda:	01d6c7b3          	xor	a5,a3,t4
   11cde:	0143c3b3          	xor	t2,t2,s4
   11ce2:	0082c2b3          	xor	t0,t0,s0
   11ce6:	01f546b3          	xor	a3,a0,t6
   11cea:	00b84833          	xor	a6,a6,a1
   11cee:	019f4f33          	xor	t5,t5,s9
   11cf2:	006f4f33          	xor	t5,t5,t1
   11cf6:	018844b3          	xor	s1,a6,s8
   11cfa:	01264733          	xor	a4,a2,s2
   11cfe:	ffffca13          	not	s4,t6
   11d02:	0a56c913          	xori	s2,a3,165
   11d06:	fff3c613          	not	a2,t2
   11d0a:	fff2c813          	not	a6,t0
   11d0e:	f5a6c693          	xori	a3,a3,-166
   11d12:	01e74733          	xor	a4,a4,t5
   11d16:	01e6f433          	and	s0,a3,t5
   11d1a:	012a7a33          	and	s4,s4,s2
   11d1e:	01887833          	and	a6,a6,s8
   11d22:	fffc4993          	not	s3,s8
   11d26:	ffff4513          	not	a0,t5
   11d2a:	fffec593          	not	a1,t4
   11d2e:	fff4ce13          	not	t3,s1
   11d32:	fff7c893          	not	a7,a5
   11d36:	01f67633          	and	a2,a2,t6
   11d3a:	8e39                	xor	a2,a2,a4
   11d3c:	00f846b3          	xor	a3,a6,a5
   11d40:	0099f9b3          	and	s3,s3,s1
   11d44:	fff74313          	not	t1,a4
   11d48:	8d79                	and	a0,a0,a4
   11d4a:	8dfd                	and	a1,a1,a5
   11d4c:	01f44733          	xor	a4,s0,t6
   11d50:	007a47b3          	xor	a5,s4,t2
   11d54:	01de7e33          	and	t3,t3,t4
   11d58:	0058f8b3          	and	a7,a7,t0
   11d5c:	8f3d                	xor	a4,a4,a5
   11d5e:	0059cbb3          	xor	s7,s3,t0
   11d62:	01254533          	xor	a0,a0,s2
   11d66:	8da5                	xor	a1,a1,s1
   11d68:	843e                	mv	s0,a5
   11d6a:	0076d293          	srli	t0,a3,0x7
   11d6e:	01769813          	slli	a6,a3,0x17
   11d72:	01761793          	slli	a5,a2,0x17
   11d76:	00737333          	and	t1,t1,t2
   11d7a:	018e4e33          	xor	t3,t3,s8
   11d7e:	00765393          	srli	t2,a2,0x7
   11d82:	01d8c8b3          	xor	a7,a7,t4
   11d86:	01969913          	slli	s2,a3,0x19
   11d8a:	01961493          	slli	s1,a2,0x19
   11d8e:	00965e93          	srli	t4,a2,0x9
   11d92:	0096db13          	srli	s6,a3,0x9
   11d96:	017e4e33          	xor	t3,t3,s7
   11d9a:	010eeeb3          	or	t4,t4,a6
   11d9e:	00fb6b33          	or	s6,s6,a5
   11da2:	00796933          	or	s2,s2,t2
   11da6:	0054e4b3          	or	s1,s1,t0
   11daa:	01694933          	xor	s2,s2,s6
   11dae:	01d4c4b3          	xor	s1,s1,t4
   11db2:	003e1b13          	slli	s6,t3,0x3
   11db6:	01d75e93          	srli	t4,a4,0x1d
   11dba:	016eeb33          	or	s6,t4,s6
   11dbe:	01de5c93          	srli	s9,t3,0x1d
   11dc2:	00371e93          	slli	t4,a4,0x3
   11dc6:	01dcecb3          	or	s9,s9,t4
   11dca:	01e34333          	xor	t1,t1,t5
   11dce:	019e1e93          	slli	t4,t3,0x19
   11dd2:	00775c13          	srli	s8,a4,0x7
   11dd6:	00a34333          	xor	t1,t1,a0
   11dda:	00b8c8b3          	xor	a7,a7,a1
   11dde:	01971f93          	slli	t6,a4,0x19
   11de2:	01dc6c33          	or	s8,s8,t4
   11de6:	007e5e93          	srli	t4,t3,0x7
   11dea:	fff5c593          	not	a1,a1
   11dee:	fff54513          	not	a0,a0
   11df2:	00a35f13          	srli	t5,t1,0xa
   11df6:	01feefb3          	or	t6,t4,t6
   11dfa:	01689e93          	slli	t4,a7,0x16
   11dfe:	c25a                	sw	s6,4(sp)
   11e00:	0015dd13          	srli	s10,a1,0x1
   11e04:	0065d293          	srli	t0,a1,0x6
   11e08:	01f51a13          	slli	s4,a0,0x1f
   11e0c:	01a51813          	slli	a6,a0,0x1a
   11e10:	01eeef33          	or	t5,t4,t5
   11e14:	00a8db13          	srli	s6,a7,0xa
   11e18:	01631e93          	slli	t4,t1,0x16
   11e1c:	c022                	sw	s0,0(sp)
   11e1e:	01135d93          	srli	s11,t1,0x11
   11e22:	016eeb33          	or	s6,t4,s6
   11e26:	01aa6a33          	or	s4,s4,s10
   11e2a:	00f89e93          	slli	t4,a7,0xf
   11e2e:	00586833          	or	a6,a6,t0
   11e32:	01fccfb3          	xor	t6,s9,t6
   11e36:	4c92                	lw	s9,4(sp)
   11e38:	00155393          	srli	t2,a0,0x1
   11e3c:	01beeeb3          	or	t4,t4,s11
   11e40:	01f59a93          	slli	s5,a1,0x1f
   11e44:	010a4833          	xor	a6,s4,a6
   11e48:	4a02                	lw	s4,0(sp)
   11e4a:	c476                	sw	t4,8(sp)
   11e4c:	00dbc9b3          	xor	s3,s7,a3
   11e50:	8c31                	xor	s0,s0,a2
   11e52:	0118dd93          	srli	s11,a7,0x11
   11e56:	007aeab3          	or	s5,s5,t2
   11e5a:	00655793          	srli	a5,a0,0x6
   11e5e:	01a59393          	slli	t2,a1,0x1a
   11e62:	00f31e93          	slli	t4,t1,0xf
   11e66:	00d41d13          	slli	s10,s0,0xd
   11e6a:	01beeeb3          	or	t4,t4,s11
   11e6e:	00f3e7b3          	or	a5,t2,a5
   11e72:	00d99d93          	slli	s11,s3,0xd
   11e76:	01345393          	srli	t2,s0,0x13
   11e7a:	0139d293          	srli	t0,s3,0x13
   11e7e:	018ccc33          	xor	s8,s9,s8
   11e82:	4ca2                	lw	s9,8(sp)
   11e84:	00fac7b3          	xor	a5,s5,a5
   11e88:	009bcbb3          	xor	s7,s7,s1
   11e8c:	01c45a93          	srli	s5,s0,0x1c
   11e90:	01db4eb3          	xor	t4,s6,t4
   11e94:	007de3b3          	or	t2,s11,t2
   11e98:	012a4b33          	xor	s6,s4,s2
   11e9c:	005d62b3          	or	t0,s10,t0
   11ea0:	00499a13          	slli	s4,s3,0x4
   11ea4:	0412                	slli	s0,s0,0x4
   11ea6:	01c9d993          	srli	s3,s3,0x1c
   11eaa:	00efcfb3          	xor	t6,t6,a4
   11eae:	011eceb3          	xor	t4,t4,a7
   11eb2:	8d3d                	xor	a0,a0,a5
   11eb4:	015a6a33          	or	s4,s4,s5
   11eb8:	01346433          	or	s0,s0,s3
   11ebc:	8ea5                	xor	a3,a3,s1
   11ebe:	0163c3b3          	xor	t2,t2,s6
   11ec2:	0172c2b3          	xor	t0,t0,s7
   11ec6:	01cc4c33          	xor	s8,s8,t3
   11eca:	01d6c7b3          	xor	a5,a3,t4
   11ece:	0143c3b3          	xor	t2,t2,s4
   11ed2:	0082c2b3          	xor	t0,t0,s0
   11ed6:	01f546b3          	xor	a3,a0,t6
   11eda:	00b84833          	xor	a6,a6,a1
   11ede:	019f4f33          	xor	t5,t5,s9
   11ee2:	006f4f33          	xor	t5,t5,t1
   11ee6:	018844b3          	xor	s1,a6,s8
   11eea:	01264733          	xor	a4,a2,s2
   11eee:	ffffca13          	not	s4,t6
   11ef2:	0966c913          	xori	s2,a3,150
   11ef6:	fff3c613          	not	a2,t2
   11efa:	fff2c813          	not	a6,t0
   11efe:	f696c693          	xori	a3,a3,-151
   11f02:	01e74733          	xor	a4,a4,t5
   11f06:	01e6f433          	and	s0,a3,t5
   11f0a:	012a7a33          	and	s4,s4,s2
   11f0e:	01887833          	and	a6,a6,s8
   11f12:	fffc4993          	not	s3,s8
   11f16:	ffff4513          	not	a0,t5
   11f1a:	fffec593          	not	a1,t4
   11f1e:	fff4ce13          	not	t3,s1
   11f22:	fff7c893          	not	a7,a5
   11f26:	01f67633          	and	a2,a2,t6
   11f2a:	8e39                	xor	a2,a2,a4
   11f2c:	00f846b3          	xor	a3,a6,a5
   11f30:	0099f9b3          	and	s3,s3,s1
   11f34:	fff74313          	not	t1,a4
   11f38:	8d79                	and	a0,a0,a4
   11f3a:	8dfd                	and	a1,a1,a5
   11f3c:	01f44733          	xor	a4,s0,t6
   11f40:	007a47b3          	xor	a5,s4,t2
   11f44:	01de7e33          	and	t3,t3,t4
   11f48:	0058f8b3          	and	a7,a7,t0
   11f4c:	8f3d                	xor	a4,a4,a5
   11f4e:	0059cbb3          	xor	s7,s3,t0
   11f52:	01254533          	xor	a0,a0,s2
   11f56:	8da5                	xor	a1,a1,s1
   11f58:	843e                	mv	s0,a5
   11f5a:	0076d293          	srli	t0,a3,0x7
   11f5e:	01769813          	slli	a6,a3,0x17
   11f62:	01761793          	slli	a5,a2,0x17
   11f66:	00737333          	and	t1,t1,t2
   11f6a:	018e4e33          	xor	t3,t3,s8
   11f6e:	00765393          	srli	t2,a2,0x7
   11f72:	01d8c8b3          	xor	a7,a7,t4
   11f76:	01969913          	slli	s2,a3,0x19
   11f7a:	01961493          	slli	s1,a2,0x19
   11f7e:	00965e93          	srli	t4,a2,0x9
   11f82:	0096db13          	srli	s6,a3,0x9
   11f86:	017e4e33          	xor	t3,t3,s7
   11f8a:	010eeeb3          	or	t4,t4,a6
   11f8e:	00fb6b33          	or	s6,s6,a5
   11f92:	00796933          	or	s2,s2,t2
   11f96:	0054e4b3          	or	s1,s1,t0
   11f9a:	01694933          	xor	s2,s2,s6
   11f9e:	01d4c4b3          	xor	s1,s1,t4
   11fa2:	003e1b13          	slli	s6,t3,0x3
   11fa6:	01d75e93          	srli	t4,a4,0x1d
   11faa:	016eeb33          	or	s6,t4,s6
   11fae:	01de5c93          	srli	s9,t3,0x1d
   11fb2:	00371e93          	slli	t4,a4,0x3
   11fb6:	01dcecb3          	or	s9,s9,t4
   11fba:	01e34333          	xor	t1,t1,t5
   11fbe:	019e1e93          	slli	t4,t3,0x19
   11fc2:	00775c13          	srli	s8,a4,0x7
   11fc6:	00a34333          	xor	t1,t1,a0
   11fca:	00b8c8b3          	xor	a7,a7,a1
   11fce:	01971f93          	slli	t6,a4,0x19
   11fd2:	01dc6c33          	or	s8,s8,t4
   11fd6:	007e5e93          	srli	t4,t3,0x7
   11fda:	fff5c593          	not	a1,a1
   11fde:	fff54513          	not	a0,a0
   11fe2:	00a35f13          	srli	t5,t1,0xa
   11fe6:	01feefb3          	or	t6,t4,t6
   11fea:	01689e93          	slli	t4,a7,0x16
   11fee:	c25a                	sw	s6,4(sp)
   11ff0:	0015dd13          	srli	s10,a1,0x1
   11ff4:	0065d293          	srli	t0,a1,0x6
   11ff8:	01f51a13          	slli	s4,a0,0x1f
   11ffc:	01a51813          	slli	a6,a0,0x1a
   12000:	01eeef33          	or	t5,t4,t5
   12004:	00a8db13          	srli	s6,a7,0xa
   12008:	01631e93          	slli	t4,t1,0x16
   1200c:	c022                	sw	s0,0(sp)
   1200e:	01135d93          	srli	s11,t1,0x11
   12012:	016eeb33          	or	s6,t4,s6
   12016:	01aa6a33          	or	s4,s4,s10
   1201a:	00f89e93          	slli	t4,a7,0xf
   1201e:	00586833          	or	a6,a6,t0
   12022:	01fccfb3          	xor	t6,s9,t6
   12026:	4c92                	lw	s9,4(sp)
   12028:	00155393          	srli	t2,a0,0x1
   1202c:	01beeeb3          	or	t4,t4,s11
   12030:	01f59a93          	slli	s5,a1,0x1f
   12034:	010a4833          	xor	a6,s4,a6
   12038:	4a02                	lw	s4,0(sp)
   1203a:	c476                	sw	t4,8(sp)
   1203c:	00dbc9b3          	xor	s3,s7,a3
   12040:	8c31                	xor	s0,s0,a2
   12042:	0118dd93          	srli	s11,a7,0x11
   12046:	007aeab3          	or	s5,s5,t2
   1204a:	00655793          	srli	a5,a0,0x6
   1204e:	01a59393          	slli	t2,a1,0x1a
   12052:	00f31e93          	slli	t4,t1,0xf
   12056:	00d41d13          	slli	s10,s0,0xd
   1205a:	01beeeb3          	or	t4,t4,s11
   1205e:	00f3e7b3          	or	a5,t2,a5
   12062:	00d99d93          	slli	s11,s3,0xd
   12066:	01345393          	srli	t2,s0,0x13
   1206a:	0139d293          	srli	t0,s3,0x13
   1206e:	018ccc33          	xor	s8,s9,s8
   12072:	4ca2                	lw	s9,8(sp)
   12074:	00fac7b3          	xor	a5,s5,a5
   12078:	009bcbb3          	xor	s7,s7,s1
   1207c:	01c45a93          	srli	s5,s0,0x1c
   12080:	01db4eb3          	xor	t4,s6,t4
   12084:	007de3b3          	or	t2,s11,t2
   12088:	012a4b33          	xor	s6,s4,s2
   1208c:	005d62b3          	or	t0,s10,t0
   12090:	00499a13          	slli	s4,s3,0x4
   12094:	0412                	slli	s0,s0,0x4
   12096:	01c9d993          	srli	s3,s3,0x1c
   1209a:	00efcfb3          	xor	t6,t6,a4
   1209e:	011eceb3          	xor	t4,t4,a7
   120a2:	8d3d                	xor	a0,a0,a5
   120a4:	015a6a33          	or	s4,s4,s5
   120a8:	01346433          	or	s0,s0,s3
   120ac:	8ea5                	xor	a3,a3,s1
   120ae:	0163c3b3          	xor	t2,t2,s6
   120b2:	0172c2b3          	xor	t0,t0,s7
   120b6:	01cc4c33          	xor	s8,s8,t3
   120ba:	01d6c7b3          	xor	a5,a3,t4
   120be:	0143c3b3          	xor	t2,t2,s4
   120c2:	0082c2b3          	xor	t0,t0,s0
   120c6:	01f546b3          	xor	a3,a0,t6
   120ca:	00b84833          	xor	a6,a6,a1
   120ce:	019f4f33          	xor	t5,t5,s9
   120d2:	006f4f33          	xor	t5,t5,t1
   120d6:	018844b3          	xor	s1,a6,s8
   120da:	01264733          	xor	a4,a2,s2
   120de:	ffffca13          	not	s4,t6
   120e2:	0876c913          	xori	s2,a3,135
   120e6:	fff3c613          	not	a2,t2
   120ea:	fff2c813          	not	a6,t0
   120ee:	f786c693          	xori	a3,a3,-136
   120f2:	01e74733          	xor	a4,a4,t5
   120f6:	01e6f433          	and	s0,a3,t5
   120fa:	012a7a33          	and	s4,s4,s2
   120fe:	01887833          	and	a6,a6,s8
   12102:	fffc4993          	not	s3,s8
   12106:	ffff4513          	not	a0,t5
   1210a:	fffec593          	not	a1,t4
   1210e:	fff4ce13          	not	t3,s1
   12112:	fff7c893          	not	a7,a5
   12116:	01f67633          	and	a2,a2,t6
   1211a:	8e39                	xor	a2,a2,a4
   1211c:	00f846b3          	xor	a3,a6,a5
   12120:	0099f9b3          	and	s3,s3,s1
   12124:	fff74313          	not	t1,a4
   12128:	8d79                	and	a0,a0,a4
   1212a:	8dfd                	and	a1,a1,a5
   1212c:	01f44733          	xor	a4,s0,t6
   12130:	007a47b3          	xor	a5,s4,t2
   12134:	01de7e33          	and	t3,t3,t4
   12138:	0058f8b3          	and	a7,a7,t0
   1213c:	8f3d                	xor	a4,a4,a5
   1213e:	0059cbb3          	xor	s7,s3,t0
   12142:	01254533          	xor	a0,a0,s2
   12146:	8da5                	xor	a1,a1,s1
   12148:	843e                	mv	s0,a5
   1214a:	0076d293          	srli	t0,a3,0x7
   1214e:	01769813          	slli	a6,a3,0x17
   12152:	01761793          	slli	a5,a2,0x17
   12156:	00737333          	and	t1,t1,t2
   1215a:	018e4e33          	xor	t3,t3,s8
   1215e:	00765393          	srli	t2,a2,0x7
   12162:	01d8c8b3          	xor	a7,a7,t4
   12166:	01969913          	slli	s2,a3,0x19
   1216a:	01961493          	slli	s1,a2,0x19
   1216e:	00965e93          	srli	t4,a2,0x9
   12172:	0096db13          	srli	s6,a3,0x9
   12176:	017e4e33          	xor	t3,t3,s7
   1217a:	010eeeb3          	or	t4,t4,a6
   1217e:	00fb6b33          	or	s6,s6,a5
   12182:	00796933          	or	s2,s2,t2
   12186:	0054e4b3          	or	s1,s1,t0
   1218a:	01694933          	xor	s2,s2,s6
   1218e:	01d4c4b3          	xor	s1,s1,t4
   12192:	003e1b13          	slli	s6,t3,0x3
   12196:	01d75e93          	srli	t4,a4,0x1d
   1219a:	016eeb33          	or	s6,t4,s6
   1219e:	01de5c93          	srli	s9,t3,0x1d
   121a2:	00371e93          	slli	t4,a4,0x3
   121a6:	01dcecb3          	or	s9,s9,t4
   121aa:	01e34333          	xor	t1,t1,t5
   121ae:	019e1e93          	slli	t4,t3,0x19
   121b2:	00775c13          	srli	s8,a4,0x7
   121b6:	00a34333          	xor	t1,t1,a0
   121ba:	00b8c8b3          	xor	a7,a7,a1
   121be:	01971f93          	slli	t6,a4,0x19
   121c2:	01dc6c33          	or	s8,s8,t4
   121c6:	007e5e93          	srli	t4,t3,0x7
   121ca:	00a35f13          	srli	t5,t1,0xa
   121ce:	01feefb3          	or	t6,t4,t6
   121d2:	01689e93          	slli	t4,a7,0x16
   121d6:	c25a                	sw	s6,4(sp)
   121d8:	fff5c593          	not	a1,a1
   121dc:	fff54513          	not	a0,a0
   121e0:	01eeef33          	or	t5,t4,t5
   121e4:	00a8db13          	srli	s6,a7,0xa
   121e8:	01631e93          	slli	t4,t1,0x16
   121ec:	01135d93          	srli	s11,t1,0x11
   121f0:	0015dd13          	srli	s10,a1,0x1
   121f4:	0065d293          	srli	t0,a1,0x6
   121f8:	016eeb33          	or	s6,t4,s6
   121fc:	01f51a13          	slli	s4,a0,0x1f
   12200:	01a51813          	slli	a6,a0,0x1a
   12204:	00f89e93          	slli	t4,a7,0xf
   12208:	01fccfb3          	xor	t6,s9,t6
   1220c:	4c92                	lw	s9,4(sp)
   1220e:	c022                	sw	s0,0(sp)
   12210:	01beeeb3          	or	t4,t4,s11
   12214:	01aa6a33          	or	s4,s4,s10
   12218:	00586833          	or	a6,a6,t0
   1221c:	c476                	sw	t4,8(sp)
   1221e:	00155393          	srli	t2,a0,0x1
   12222:	01f59a93          	slli	s5,a1,0x1f
   12226:	010a4833          	xor	a6,s4,a6
   1222a:	4a02                	lw	s4,0(sp)
   1222c:	00dbc9b3          	xor	s3,s7,a3
   12230:	8c31                	xor	s0,s0,a2
   12232:	0118dd93          	srli	s11,a7,0x11
   12236:	007aeab3          	or	s5,s5,t2
   1223a:	00655793          	srli	a5,a0,0x6
   1223e:	01a59393          	slli	t2,a1,0x1a
   12242:	00f31e93          	slli	t4,t1,0xf
   12246:	018ccc33          	xor	s8,s9,s8
   1224a:	4ca2                	lw	s9,8(sp)
   1224c:	00d41d13          	slli	s10,s0,0xd
   12250:	01beeeb3          	or	t4,t4,s11
   12254:	00f3e7b3          	or	a5,t2,a5
   12258:	00d99d93          	slli	s11,s3,0xd
   1225c:	01345393          	srli	t2,s0,0x13
   12260:	0139d293          	srli	t0,s3,0x13
   12264:	00fac7b3          	xor	a5,s5,a5
   12268:	009bcbb3          	xor	s7,s7,s1
   1226c:	01c45a93          	srli	s5,s0,0x1c
   12270:	01db4eb3          	xor	t4,s6,t4
   12274:	007de3b3          	or	t2,s11,t2
   12278:	012a4b33          	xor	s6,s4,s2
   1227c:	005d62b3          	or	t0,s10,t0
   12280:	00499a13          	slli	s4,s3,0x4
   12284:	0412                	slli	s0,s0,0x4
   12286:	01c9d993          	srli	s3,s3,0x1c
   1228a:	00efcfb3          	xor	t6,t6,a4
   1228e:	01cc4c33          	xor	s8,s8,t3
   12292:	011eceb3          	xor	t4,t4,a7
   12296:	8d3d                	xor	a0,a0,a5
   12298:	00b84833          	xor	a6,a6,a1
   1229c:	015a6a33          	or	s4,s4,s5
   122a0:	01346433          	or	s0,s0,s3
   122a4:	8ea5                	xor	a3,a3,s1
   122a6:	019f4f33          	xor	t5,t5,s9
   122aa:	0163c3b3          	xor	t2,t2,s6
   122ae:	0172c2b3          	xor	t0,t0,s7
   122b2:	006f4f33          	xor	t5,t5,t1
   122b6:	018844b3          	xor	s1,a6,s8
   122ba:	01d6c7b3          	xor	a5,a3,t4
   122be:	0143c3b3          	xor	t2,t2,s4
   122c2:	0082c2b3          	xor	t0,t0,s0
   122c6:	01f546b3          	xor	a3,a0,t6
   122ca:	01264733          	xor	a4,a2,s2
   122ce:	01e74733          	xor	a4,a4,t5
   122d2:	0786c913          	xori	s2,a3,120
   122d6:	ffffca13          	not	s4,t6
   122da:	fffc4993          	not	s3,s8
   122de:	fffec593          	not	a1,t4
   122e2:	fff3c613          	not	a2,t2
   122e6:	fff2c813          	not	a6,t0
   122ea:	f876c693          	xori	a3,a3,-121
   122ee:	fff4ce13          	not	t3,s1
   122f2:	fff7c893          	not	a7,a5
   122f6:	01e6f433          	and	s0,a3,t5
   122fa:	012a7a33          	and	s4,s4,s2
   122fe:	0099f9b3          	and	s3,s3,s1
   12302:	01887833          	and	a6,a6,s8
   12306:	ffff4513          	not	a0,t5
   1230a:	fff74313          	not	t1,a4
   1230e:	8dfd                	and	a1,a1,a5
   12310:	01f67633          	and	a2,a2,t6
   12314:	01de7e33          	and	t3,t3,t4
   12318:	0058f8b3          	and	a7,a7,t0
   1231c:	8e39                	xor	a2,a2,a4
   1231e:	00f846b3          	xor	a3,a6,a5
   12322:	8da5                	xor	a1,a1,s1
   12324:	007a47b3          	xor	a5,s4,t2
   12328:	0059c833          	xor	a6,s3,t0
   1232c:	8d79                	and	a0,a0,a4
   1232e:	00737333          	and	t1,t1,t2
   12332:	01f44733          	xor	a4,s0,t6
   12336:	018e4e33          	xor	t3,t3,s8
   1233a:	01d8c8b3          	xor	a7,a7,t4
   1233e:	8f3d                	xor	a4,a4,a5
   12340:	010e4e33          	xor	t3,t3,a6
   12344:	00b8c8b3          	xor	a7,a7,a1
   12348:	84be                	mv	s1,a5
   1234a:	01254533          	xor	a0,a0,s2
   1234e:	00765993          	srli	s3,a2,0x7
   12352:	0076d913          	srli	s2,a3,0x7
   12356:	01761793          	slli	a5,a2,0x17
   1235a:	01e34333          	xor	t1,t1,t5
   1235e:	01969413          	slli	s0,a3,0x19
   12362:	8f42                	mv	t5,a6
   12364:	01961393          	slli	t2,a2,0x19
   12368:	01769813          	slli	a6,a3,0x17
   1236c:	00965e93          	srli	t4,a2,0x9
   12370:	0096db13          	srli	s6,a3,0x9
   12374:	00a34333          	xor	t1,t1,a0
   12378:	fff5c593          	not	a1,a1
   1237c:	fff54513          	not	a0,a0
   12380:	0118da93          	srli	s5,a7,0x11
   12384:	010eeeb3          	or	t4,t4,a6
   12388:	00fb6b33          	or	s6,s6,a5
   1238c:	01346433          	or	s0,s0,s3
   12390:	0123e3b3          	or	t2,t2,s2
   12394:	01644433          	xor	s0,s0,s6
   12398:	01d3c3b3          	xor	t2,t2,t4
   1239c:	8d56                	mv	s10,s5
   1239e:	00155993          	srli	s3,a0,0x1
   123a2:	01d75e93          	srli	t4,a4,0x1d
   123a6:	01f59a93          	slli	s5,a1,0x1f
   123aa:	003e1b13          	slli	s6,t3,0x3
   123ae:	0065d913          	srli	s2,a1,0x6
   123b2:	016eeb33          	or	s6,t4,s6
   123b6:	013aeab3          	or	s5,s5,s3
   123ba:	00371e93          	slli	t4,a4,0x3
   123be:	0015d993          	srli	s3,a1,0x1
   123c2:	01de5c93          	srli	s9,t3,0x1d
   123c6:	01f51a13          	slli	s4,a0,0x1f
   123ca:	01a51813          	slli	a6,a0,0x1a
   123ce:	c026                	sw	s1,0(sp)
   123d0:	01dcecb3          	or	s9,s9,t4
   123d4:	013a6a33          	or	s4,s4,s3
   123d8:	019e1e93          	slli	t4,t3,0x19
   123dc:	00775c13          	srli	s8,a4,0x7
   123e0:	01286833          	or	a6,a6,s2
   123e4:	01971f93          	slli	t6,a4,0x19
   123e8:	01dc6c33          	or	s8,s8,t4
   123ec:	010a4833          	xor	a6,s4,a6
   123f0:	007e5e93          	srli	t4,t3,0x7
   123f4:	4a02                	lw	s4,0(sp)
   123f6:	00c4c2b3          	xor	t0,s1,a2
   123fa:	c27a                	sw	t5,4(sp)
   123fc:	00df44b3          	xor	s1,t5,a3
   12400:	01a59d93          	slli	s11,a1,0x1a
   12404:	00a35f13          	srli	t5,t1,0xa
   12408:	00655793          	srli	a5,a0,0x6
   1240c:	01feefb3          	or	t6,t4,t6
   12410:	01689e93          	slli	t4,a7,0x16
   12414:	c45a                	sw	s6,8(sp)
   12416:	01eeef33          	or	t5,t4,t5
   1241a:	00a8db13          	srli	s6,a7,0xa
   1241e:	01631e93          	slli	t4,t1,0x16
   12422:	00fde7b3          	or	a5,s11,a5
   12426:	016eeb33          	or	s6,t4,s6
   1242a:	00fac7b3          	xor	a5,s5,a5
   1242e:	00f89e93          	slli	t4,a7,0xf
   12432:	008a4ab3          	xor	s5,s4,s0
   12436:	01135b93          	srli	s7,t1,0x11
   1243a:	4a12                	lw	s4,4(sp)
   1243c:	017eebb3          	or	s7,t4,s7
   12440:	01fccfb3          	xor	t6,s9,t6
   12444:	00f31e93          	slli	t4,t1,0xf
   12448:	4ca2                	lw	s9,8(sp)
   1244a:	00d49d93          	slli	s11,s1,0xd
   1244e:	01aeeeb3          	or	t4,t4,s10
   12452:	0132d993          	srli	s3,t0,0x13
   12456:	00d29d13          	slli	s10,t0,0xd
   1245a:	0134d913          	srli	s2,s1,0x13
   1245e:	013de9b3          	or	s3,s11,s3
   12462:	012d6933          	or	s2,s10,s2
   12466:	017f4f33          	xor	t5,t5,s7
   1246a:	01db4eb3          	xor	t4,s6,t4
   1246e:	01c2db93          	srli	s7,t0,0x1c
   12472:	007a4a33          	xor	s4,s4,t2
   12476:	00449b13          	slli	s6,s1,0x4
   1247a:	0292                	slli	t0,t0,0x4
   1247c:	80f1                	srli	s1,s1,0x1c
   1247e:	00efcfb3          	xor	t6,t6,a4
   12482:	011eceb3          	xor	t4,t4,a7
   12486:	8d3d                	xor	a0,a0,a5
   12488:	017b6b33          	or	s6,s6,s7
   1248c:	0092e2b3          	or	t0,t0,s1
   12490:	0076c6b3          	xor	a3,a3,t2
   12494:	018ccc33          	xor	s8,s9,s8
   12498:	013acab3          	xor	s5,s5,s3
   1249c:	012a4a33          	xor	s4,s4,s2
   124a0:	01cc4c33          	xor	s8,s8,t3
   124a4:	01d6c7b3          	xor	a5,a3,t4
   124a8:	016acab3          	xor	s5,s5,s6
   124ac:	005a4a33          	xor	s4,s4,t0
   124b0:	01f546b3          	xor	a3,a0,t6
   124b4:	00b84833          	xor	a6,a6,a1
   124b8:	006f4f33          	xor	t5,t5,t1
   124bc:	018843b3          	xor	t2,a6,s8
   124c0:	00864733          	xor	a4,a2,s0
   124c4:	ffffc913          	not	s2,t6
   124c8:	0696c413          	xori	s0,a3,105
   124cc:	fffac613          	not	a2,s5
   124d0:	fffa4813          	not	a6,s4
   124d4:	f966c693          	xori	a3,a3,-106
   124d8:	01e74733          	xor	a4,a4,t5
   124dc:	01e6f2b3          	and	t0,a3,t5
   124e0:	00897933          	and	s2,s2,s0
   124e4:	01887833          	and	a6,a6,s8
   124e8:	fffc4493          	not	s1,s8
   124ec:	ffff4513          	not	a0,t5
   124f0:	fffec593          	not	a1,t4
   124f4:	fff3ce13          	not	t3,t2
   124f8:	fff7c893          	not	a7,a5
   124fc:	01f67633          	and	a2,a2,t6
   12500:	8e39                	xor	a2,a2,a4
   12502:	00f846b3          	xor	a3,a6,a5
   12506:	0074f4b3          	and	s1,s1,t2
   1250a:	fff74313          	not	t1,a4
   1250e:	8d79                	and	a0,a0,a4
   12510:	8dfd                	and	a1,a1,a5
   12512:	01f2c733          	xor	a4,t0,t6
   12516:	015947b3          	xor	a5,s2,s5
   1251a:	01de7e33          	and	t3,t3,t4
   1251e:	0148f8b3          	and	a7,a7,s4
   12522:	8f3d                	xor	a4,a4,a5
   12524:	0144cbb3          	xor	s7,s1,s4
   12528:	8d21                	xor	a0,a0,s0
   1252a:	0075c5b3          	xor	a1,a1,t2
   1252e:	843e                	mv	s0,a5
   12530:	00765393          	srli	t2,a2,0x7
   12534:	0076d293          	srli	t0,a3,0x7
   12538:	01769813          	slli	a6,a3,0x17
   1253c:	01761793          	slli	a5,a2,0x17
   12540:	018e4e33          	xor	t3,t3,s8
   12544:	01d8c8b3          	xor	a7,a7,t4
   12548:	01969913          	slli	s2,a3,0x19
   1254c:	01961493          	slli	s1,a2,0x19
   12550:	00965e93          	srli	t4,a2,0x9
   12554:	0096db13          	srli	s6,a3,0x9
   12558:	017e4e33          	xor	t3,t3,s7
   1255c:	010eeeb3          	or	t4,t4,a6
   12560:	00fb6b33          	or	s6,s6,a5
   12564:	00796933          	or	s2,s2,t2
   12568:	0054e4b3          	or	s1,s1,t0
   1256c:	01694933          	xor	s2,s2,s6
   12570:	01d4c4b3          	xor	s1,s1,t4
   12574:	003e1b13          	slli	s6,t3,0x3
   12578:	01d75e93          	srli	t4,a4,0x1d
   1257c:	016eeb33          	or	s6,t4,s6
   12580:	01537333          	and	t1,t1,s5
   12584:	00371e93          	slli	t4,a4,0x3
   12588:	01de5c93          	srli	s9,t3,0x1d
   1258c:	01dcecb3          	or	s9,s9,t4
   12590:	01e34333          	xor	t1,t1,t5
   12594:	019e1e93          	slli	t4,t3,0x19
   12598:	00775c13          	srli	s8,a4,0x7
   1259c:	00a34333          	xor	t1,t1,a0
   125a0:	00b8c8b3          	xor	a7,a7,a1
   125a4:	01971f93          	slli	t6,a4,0x19
   125a8:	01dc6c33          	or	s8,s8,t4
   125ac:	007e5e93          	srli	t4,t3,0x7
   125b0:	fff5c593          	not	a1,a1
   125b4:	fff54513          	not	a0,a0
   125b8:	00a35f13          	srli	t5,t1,0xa
   125bc:	01feefb3          	or	t6,t4,t6
   125c0:	01689e93          	slli	t4,a7,0x16
   125c4:	0015dd13          	srli	s10,a1,0x1
   125c8:	0065d293          	srli	t0,a1,0x6
   125cc:	c25a                	sw	s6,4(sp)
   125ce:	01f51a13          	slli	s4,a0,0x1f
   125d2:	01a51813          	slli	a6,a0,0x1a
   125d6:	01eeef33          	or	t5,t4,t5
   125da:	00a8db13          	srli	s6,a7,0xa
   125de:	01631e93          	slli	t4,t1,0x16
   125e2:	c022                	sw	s0,0(sp)
   125e4:	01135d93          	srli	s11,t1,0x11
   125e8:	016eeb33          	or	s6,t4,s6
   125ec:	01aa6a33          	or	s4,s4,s10
   125f0:	00f89e93          	slli	t4,a7,0xf
   125f4:	00586833          	or	a6,a6,t0
   125f8:	01fccfb3          	xor	t6,s9,t6
   125fc:	4c92                	lw	s9,4(sp)
   125fe:	00155393          	srli	t2,a0,0x1
   12602:	01beeeb3          	or	t4,t4,s11
   12606:	01f59a93          	slli	s5,a1,0x1f
   1260a:	010a4833          	xor	a6,s4,a6
   1260e:	4a02                	lw	s4,0(sp)
   12610:	00dbc9b3          	xor	s3,s7,a3
   12614:	8c31                	xor	s0,s0,a2
   12616:	c476                	sw	t4,8(sp)
   12618:	0118dd93          	srli	s11,a7,0x11
   1261c:	007aeab3          	or	s5,s5,t2
   12620:	00655793          	srli	a5,a0,0x6
   12624:	01a59393          	slli	t2,a1,0x1a
   12628:	00f31e93          	slli	t4,t1,0xf
   1262c:	00d41d13          	slli	s10,s0,0xd
   12630:	01beeeb3          	or	t4,t4,s11
   12634:	00f3e7b3          	or	a5,t2,a5
   12638:	00d99d93          	slli	s11,s3,0xd
   1263c:	01345393          	srli	t2,s0,0x13
   12640:	0139d293          	srli	t0,s3,0x13
   12644:	018ccc33          	xor	s8,s9,s8
   12648:	4ca2                	lw	s9,8(sp)
   1264a:	00fac7b3          	xor	a5,s5,a5
   1264e:	009bcbb3          	xor	s7,s7,s1
   12652:	01c45a93          	srli	s5,s0,0x1c
   12656:	01db4eb3          	xor	t4,s6,t4
   1265a:	007de3b3          	or	t2,s11,t2
   1265e:	012a4b33          	xor	s6,s4,s2
   12662:	005d62b3          	or	t0,s10,t0
   12666:	00499a13          	slli	s4,s3,0x4
   1266a:	0412                	slli	s0,s0,0x4
   1266c:	01c9d993          	srli	s3,s3,0x1c
   12670:	00efcfb3          	xor	t6,t6,a4
   12674:	011eceb3          	xor	t4,t4,a7
   12678:	8d3d                	xor	a0,a0,a5
   1267a:	015a6a33          	or	s4,s4,s5
   1267e:	01346433          	or	s0,s0,s3
   12682:	8ea5                	xor	a3,a3,s1
   12684:	0163c3b3          	xor	t2,t2,s6
   12688:	0172c2b3          	xor	t0,t0,s7
   1268c:	01cc4c33          	xor	s8,s8,t3
   12690:	01d6c7b3          	xor	a5,a3,t4
   12694:	0143c3b3          	xor	t2,t2,s4
   12698:	0082c2b3          	xor	t0,t0,s0
   1269c:	01f546b3          	xor	a3,a0,t6
   126a0:	00b84833          	xor	a6,a6,a1
   126a4:	019f4f33          	xor	t5,t5,s9
   126a8:	006f4f33          	xor	t5,t5,t1
   126ac:	018844b3          	xor	s1,a6,s8
   126b0:	01264733          	xor	a4,a2,s2
   126b4:	ffffca13          	not	s4,t6
   126b8:	05a6c913          	xori	s2,a3,90
   126bc:	fff3c613          	not	a2,t2
   126c0:	fff2c813          	not	a6,t0
   126c4:	fa56c693          	xori	a3,a3,-91
   126c8:	01e74733          	xor	a4,a4,t5
   126cc:	01e6f433          	and	s0,a3,t5
   126d0:	012a7a33          	and	s4,s4,s2
   126d4:	01887833          	and	a6,a6,s8
   126d8:	fffc4993          	not	s3,s8
   126dc:	ffff4513          	not	a0,t5
   126e0:	fffec593          	not	a1,t4
   126e4:	fff4ce13          	not	t3,s1
   126e8:	fff7c893          	not	a7,a5
   126ec:	01f67633          	and	a2,a2,t6
   126f0:	8e39                	xor	a2,a2,a4
   126f2:	00f846b3          	xor	a3,a6,a5
   126f6:	0099f9b3          	and	s3,s3,s1
   126fa:	fff74313          	not	t1,a4
   126fe:	8d79                	and	a0,a0,a4
   12700:	8dfd                	and	a1,a1,a5
   12702:	01f44733          	xor	a4,s0,t6
   12706:	007a47b3          	xor	a5,s4,t2
   1270a:	01de7e33          	and	t3,t3,t4
   1270e:	0058f8b3          	and	a7,a7,t0
   12712:	8f3d                	xor	a4,a4,a5
   12714:	0059cbb3          	xor	s7,s3,t0
   12718:	01254533          	xor	a0,a0,s2
   1271c:	8da5                	xor	a1,a1,s1
   1271e:	843e                	mv	s0,a5
   12720:	0076d293          	srli	t0,a3,0x7
   12724:	01769813          	slli	a6,a3,0x17
   12728:	01761793          	slli	a5,a2,0x17
   1272c:	00737333          	and	t1,t1,t2
   12730:	018e4e33          	xor	t3,t3,s8
   12734:	00765393          	srli	t2,a2,0x7
   12738:	01d8c8b3          	xor	a7,a7,t4
   1273c:	01969913          	slli	s2,a3,0x19
   12740:	01961493          	slli	s1,a2,0x19
   12744:	00965e93          	srli	t4,a2,0x9
   12748:	0096db13          	srli	s6,a3,0x9
   1274c:	017e4e33          	xor	t3,t3,s7
   12750:	010eeeb3          	or	t4,t4,a6
   12754:	00fb6b33          	or	s6,s6,a5
   12758:	00796933          	or	s2,s2,t2
   1275c:	0054e4b3          	or	s1,s1,t0
   12760:	01694933          	xor	s2,s2,s6
   12764:	01d4c4b3          	xor	s1,s1,t4
   12768:	003e1b13          	slli	s6,t3,0x3
   1276c:	01d75e93          	srli	t4,a4,0x1d
   12770:	016eeb33          	or	s6,t4,s6
   12774:	01de5c93          	srli	s9,t3,0x1d
   12778:	00371e93          	slli	t4,a4,0x3
   1277c:	01dcecb3          	or	s9,s9,t4
   12780:	01e34333          	xor	t1,t1,t5
   12784:	019e1e93          	slli	t4,t3,0x19
   12788:	00775c13          	srli	s8,a4,0x7
   1278c:	00a34333          	xor	t1,t1,a0
   12790:	00b8c8b3          	xor	a7,a7,a1
   12794:	01971f93          	slli	t6,a4,0x19
   12798:	01dc6c33          	or	s8,s8,t4
   1279c:	007e5e93          	srli	t4,t3,0x7
   127a0:	c022                	sw	s0,0(sp)
   127a2:	00a35f13          	srli	t5,t1,0xa
   127a6:	01feefb3          	or	t6,t4,t6
   127aa:	01689e93          	slli	t4,a7,0x16
   127ae:	c25a                	sw	s6,4(sp)
   127b0:	fff5c593          	not	a1,a1
   127b4:	fff54513          	not	a0,a0
   127b8:	01eeef33          	or	t5,t4,t5
   127bc:	00a8db13          	srli	s6,a7,0xa
   127c0:	01631e93          	slli	t4,t1,0x16
   127c4:	01135d93          	srli	s11,t1,0x11
   127c8:	0015dd13          	srli	s10,a1,0x1
   127cc:	0065d293          	srli	t0,a1,0x6
   127d0:	016eeb33          	or	s6,t4,s6
   127d4:	01f51a13          	slli	s4,a0,0x1f
   127d8:	01a51813          	slli	a6,a0,0x1a
   127dc:	00f89e93          	slli	t4,a7,0xf
   127e0:	01fccfb3          	xor	t6,s9,t6
   127e4:	4c92                	lw	s9,4(sp)
   127e6:	01beeeb3          	or	t4,t4,s11
   127ea:	01aa6a33          	or	s4,s4,s10
   127ee:	00586833          	or	a6,a6,t0
   127f2:	c476                	sw	t4,8(sp)
   127f4:	00155393          	srli	t2,a0,0x1
   127f8:	01f59a93          	slli	s5,a1,0x1f
   127fc:	010a4833          	xor	a6,s4,a6
   12800:	4a02                	lw	s4,0(sp)
   12802:	00dbc9b3          	xor	s3,s7,a3
   12806:	8c31                	xor	s0,s0,a2
   12808:	0118dd93          	srli	s11,a7,0x11
   1280c:	007aeab3          	or	s5,s5,t2
   12810:	00655793          	srli	a5,a0,0x6
   12814:	01a59393          	slli	t2,a1,0x1a
   12818:	00f31e93          	slli	t4,t1,0xf
   1281c:	018ccc33          	xor	s8,s9,s8
   12820:	4ca2                	lw	s9,8(sp)
   12822:	00d41d13          	slli	s10,s0,0xd
   12826:	01beeeb3          	or	t4,t4,s11
   1282a:	00f3e7b3          	or	a5,t2,a5
   1282e:	00d99d93          	slli	s11,s3,0xd
   12832:	01345393          	srli	t2,s0,0x13
   12836:	0139d293          	srli	t0,s3,0x13
   1283a:	00fac7b3          	xor	a5,s5,a5
   1283e:	009bcbb3          	xor	s7,s7,s1
   12842:	01c45a93          	srli	s5,s0,0x1c
   12846:	01db4eb3          	xor	t4,s6,t4
   1284a:	007de3b3          	or	t2,s11,t2
   1284e:	012a4b33          	xor	s6,s4,s2
   12852:	005d62b3          	or	t0,s10,t0
   12856:	00499a13          	slli	s4,s3,0x4
   1285a:	0412                	slli	s0,s0,0x4
   1285c:	01c9d993          	srli	s3,s3,0x1c
   12860:	00efcfb3          	xor	t6,t6,a4
   12864:	011eceb3          	xor	t4,t4,a7
   12868:	8d3d                	xor	a0,a0,a5
   1286a:	0163c3b3          	xor	t2,t2,s6
   1286e:	0172c2b3          	xor	t0,t0,s7
   12872:	015a6a33          	or	s4,s4,s5
   12876:	01346433          	or	s0,s0,s3
   1287a:	8ea5                	xor	a3,a3,s1
   1287c:	019f4f33          	xor	t5,t5,s9
   12880:	01d6c7b3          	xor	a5,a3,t4
   12884:	01cc4c33          	xor	s8,s8,t3
   12888:	006f4f33          	xor	t5,t5,t1
   1288c:	01f546b3          	xor	a3,a0,t6
   12890:	01264733          	xor	a4,a2,s2
   12894:	00b84833          	xor	a6,a6,a1
   12898:	0082c633          	xor	a2,t0,s0
   1289c:	0143c5b3          	xor	a1,t2,s4
   128a0:	01884833          	xor	a6,a6,s8
   128a4:	01e74733          	xor	a4,a4,t5
   128a8:	04b6c913          	xori	s2,a3,75
   128ac:	ffffc993          	not	s3,t6
   128b0:	fff5c493          	not	s1,a1
   128b4:	fff64393          	not	t2,a2
   128b8:	0129f9b3          	and	s3,s3,s2
   128bc:	fffc4e13          	not	t3,s8
   128c0:	fffec893          	not	a7,t4
   128c4:	fff84293          	not	t0,a6
   128c8:	fff74413          	not	s0,a4
   128cc:	fff7c513          	not	a0,a5
   128d0:	01f4f4b3          	and	s1,s1,t6
   128d4:	0183f3b3          	and	t2,t2,s8
   128d8:	fb46c693          	xori	a3,a3,-76
   128dc:	8cb9                	xor	s1,s1,a4
   128de:	00f3c3b3          	xor	t2,t2,a5
   128e2:	01e6f6b3          	and	a3,a3,t5
   128e6:	8c6d                	and	s0,s0,a1
   128e8:	8d71                	and	a0,a0,a2
   128ea:	010e7e33          	and	t3,t3,a6
   128ee:	00f8f8b3          	and	a7,a7,a5
   128f2:	01d2f2b3          	and	t0,t0,t4
   128f6:	00b9c7b3          	xor	a5,s3,a1
   128fa:	00ce4e33          	xor	t3,t3,a2
   128fe:	0108c8b3          	xor	a7,a7,a6
   12902:	ffff4313          	not	t1,t5
   12906:	01f6c833          	xor	a6,a3,t6
   1290a:	0182c2b3          	xor	t0,t0,s8
   1290e:	01e44fb3          	xor	t6,s0,t5
   12912:	01d54f33          	xor	t5,a0,t4
   12916:	0097ceb3          	xor	t4,a5,s1
   1291a:	01c2c2b3          	xor	t0,t0,t3
   1291e:	00f84833          	xor	a6,a6,a5
   12922:	007e4e33          	xor	t3,t3,t2
   12926:	00e37333          	and	t1,t1,a4
   1292a:	013ed793          	srli	a5,t4,0x13
   1292e:	01234333          	xor	t1,t1,s2
   12932:	873e                	mv	a4,a5
   12934:	00de1913          	slli	s2,t3,0xd
   12938:	00e96933          	or	s2,s2,a4
   1293c:	00de9413          	slli	s0,t4,0xd
   12940:	013e5713          	srli	a4,t3,0x13
   12944:	8c59                	or	s0,s0,a4
   12946:	004e1993          	slli	s3,t3,0x4
   1294a:	01ced713          	srli	a4,t4,0x1c
   1294e:	00e9e9b3          	or	s3,s3,a4
   12952:	01ce5b13          	srli	s6,t3,0x1c
   12956:	004e9713          	slli	a4,t4,0x4
   1295a:	01676b33          	or	s6,a4,s6
   1295e:	01d85a93          	srli	s5,a6,0x1d
   12962:	00329713          	slli	a4,t0,0x3
   12966:	00eaeab3          	or	s5,s5,a4
   1296a:	00381b93          	slli	s7,a6,0x3
   1296e:	01d2d713          	srli	a4,t0,0x1d
   12972:	01776bb3          	or	s7,a4,s7
   12976:	01929d13          	slli	s10,t0,0x19
   1297a:	00785713          	srli	a4,a6,0x7
   1297e:	006fcfb3          	xor	t6,t6,t1
   12982:	011f4f33          	xor	t5,t5,a7
   12986:	fff34313          	not	t1,t1
   1298a:	fff8c893          	not	a7,a7
   1298e:	c05e                	sw	s7,0(sp)
   12990:	01a76d33          	or	s10,a4,s10
   12994:	01981b93          	slli	s7,a6,0x19
   12998:	0072d713          	srli	a4,t0,0x7
   1299c:	01776bb3          	or	s7,a4,s7
   129a0:	00135c93          	srli	s9,t1,0x1
   129a4:	01f89713          	slli	a4,a7,0x1f
   129a8:	01976cb3          	or	s9,a4,s9
   129ac:	0018d593          	srli	a1,a7,0x1
   129b0:	01f31713          	slli	a4,t1,0x1f
   129b4:	8dd9                	or	a1,a1,a4
   129b6:	00635793          	srli	a5,t1,0x6
   129ba:	01a89713          	slli	a4,a7,0x1a
   129be:	8fd9                	or	a5,a5,a4
   129c0:	0068dc13          	srli	s8,a7,0x6
   129c4:	01a31713          	slli	a4,t1,0x1a
   129c8:	c25e                	sw	s7,4(sp)
   129ca:	01876c33          	or	s8,a4,s8
   129ce:	00afdb93          	srli	s7,t6,0xa
   129d2:	016f1713          	slli	a4,t5,0x16
   129d6:	01776bb3          	or	s7,a4,s7
   129da:	00af5613          	srli	a2,t5,0xa
   129de:	016f9713          	slli	a4,t6,0x16
   129e2:	8e59                	or	a2,a2,a4
   129e4:	c432                	sw	a2,8(sp)
   129e6:	00ff1713          	slli	a4,t5,0xf
   129ea:	011fd613          	srli	a2,t6,0x11
   129ee:	0074d693          	srli	a3,s1,0x7
   129f2:	8e59                	or	a2,a2,a4
   129f4:	011f5513          	srli	a0,t5,0x11
   129f8:	00ff9713          	slli	a4,t6,0xf
   129fc:	8a36                	mv	s4,a3
   129fe:	8d59                	or	a0,a0,a4
   12a00:	01939713          	slli	a4,t2,0x19
   12a04:	01476a33          	or	s4,a4,s4
   12a08:	c652                	sw	s4,12(sp)
   12a0a:	01949713          	slli	a4,s1,0x19
   12a0e:	0073da13          	srli	s4,t2,0x7
   12a12:	01476a33          	or	s4,a4,s4
   12a16:	01aacd33          	xor	s10,s5,s10
   12a1a:	0094d713          	srli	a4,s1,0x9
   12a1e:	4aa2                	lw	s5,8(sp)
   12a20:	01739693          	slli	a3,t2,0x17
   12a24:	8ed9                	or	a3,a3,a4
   12a26:	01394933          	xor	s2,s2,s3
   12a2a:	01644433          	xor	s0,s0,s6
   12a2e:	00da4a33          	xor	s4,s4,a3
   12a32:	01d946b3          	xor	a3,s2,t4
   12a36:	4982                	lw	s3,0(sp)
   12a38:	00fcc7b3          	xor	a5,s9,a5
   12a3c:	00aac533          	xor	a0,s5,a0
   12a40:	c036                	sw	a3,0(sp)
   12a42:	4ab2                	lw	s5,12(sp)
   12a44:	01c446b3          	xor	a3,s0,t3
   12a48:	4b12                	lw	s6,4(sp)
   12a4a:	01749d93          	slli	s11,s1,0x17
   12a4e:	0093d713          	srli	a4,t2,0x9
   12a52:	c236                	sw	a3,4(sp)
   12a54:	0067c6b3          	xor	a3,a5,t1
   12a58:	57f2                	lw	a5,60(sp)
   12a5a:	01b76733          	or	a4,a4,s11
   12a5e:	00eac733          	xor	a4,s5,a4
   12a62:	0169c9b3          	xor	s3,s3,s6
   12a66:	00cbc633          	xor	a2,s7,a2
   12a6a:	0185c5b3          	xor	a1,a1,s8
   12a6e:	00974db3          	xor	s11,a4,s1
   12a72:	01878713          	addi	a4,a5,24
   12a76:	0109c433          	xor	s0,s3,a6
   12a7a:	005d4933          	xor	s2,s10,t0
   12a7e:	01f649b3          	xor	s3,a2,t6
   12a82:	dc3a                	sw	a4,56(sp)
   12a84:	0115c5b3          	xor	a1,a1,a7
   12a88:	01e54633          	xor	a2,a0,t5
   12a8c:	007a42b3          	xor	t0,s4,t2
   12a90:	c43e                	sw	a5,8(sp)
   12a92:	8736                	mv	a4,a3
   12a94:	4782                	lw	a5,0(sp)
   12a96:	4512                	lw	a0,4(sp)
   12a98:	005646b3          	xor	a3,a2,t0
   12a9c:	00b945b3          	xor	a1,s2,a1
   12aa0:	8f21                	xor	a4,a4,s0
   12aa2:	fff64813          	not	a6,a2
   12aa6:	00fdce33          	xor	t3,s11,a5
   12aaa:	00a2c333          	xor	t1,t0,a0
   12aae:	0b474e93          	xori	t4,a4,180
   12ab2:	fff94793          	not	a5,s2
   12ab6:	fff44513          	not	a0,s0
   12aba:	00d87833          	and	a6,a6,a3
   12abe:	fff5c293          	not	t0,a1
   12ac2:	f4b74713          	xori	a4,a4,-181
   12ac6:	00b84833          	xor	a6,a6,a1
   12aca:	fff6cf13          	not	t5,a3
   12ace:	01377733          	and	a4,a4,s3
   12ad2:	00c2f2b3          	and	t0,t0,a2
   12ad6:	01d57533          	and	a0,a0,t4
   12ada:	8dfd                	and	a1,a1,a5
   12adc:	01b9cdb3          	xor	s11,s3,s11
   12ae0:	01c54533          	xor	a0,a0,t3
   12ae4:	0065c5b3          	xor	a1,a1,t1
   12ae8:	006f7f33          	and	t5,t5,t1
   12aec:	8f21                	xor	a4,a4,s0
   12aee:	0122c2b3          	xor	t0,t0,s2
   12af2:	8f29                	xor	a4,a4,a0
   12af4:	00b2c2b3          	xor	t0,t0,a1
   12af8:	fffdcf93          	not	t6,s11
   12afc:	010f4f33          	xor	t5,t5,a6
   12b00:	00cf4f33          	xor	t5,t5,a2
   12b04:	fff9c893          	not	a7,s3
   12b08:	fffe4a13          	not	s4,t3
   12b0c:	01cfffb3          	and	t6,t6,t3
   12b10:	00329613          	slli	a2,t0,0x3
   12b14:	01d75e13          	srli	t3,a4,0x1d
   12b18:	00ce6633          	or	a2,t3,a2
   12b1c:	01b8f8b3          	and	a7,a7,s11
   12b20:	008a7a33          	and	s4,s4,s0
   12b24:	c632                	sw	a2,12(sp)
   12b26:	01ba4a33          	xor	s4,s4,s11
   12b2a:	01d8c8b3          	xor	a7,a7,t4
   12b2e:	00371613          	slli	a2,a4,0x3
   12b32:	01d2dd93          	srli	s11,t0,0x1d
   12b36:	00cdedb3          	or	s11,s11,a2
   12b3a:	011fcfb3          	xor	t6,t6,a7
   12b3e:	01929613          	slli	a2,t0,0x19
   12b42:	00775d13          	srli	s10,a4,0x7
   12b46:	013fcfb3          	xor	t6,t6,s3
   12b4a:	01971393          	slli	t2,a4,0x19
   12b4e:	00cd6d33          	or	s10,s10,a2
   12b52:	0072d613          	srli	a2,t0,0x7
   12b56:	016f1c93          	slli	s9,t5,0x16
   12b5a:	007663b3          	or	t2,a2,t2
   12b5e:	00afd613          	srli	a2,t6,0xa
   12b62:	00af5e13          	srli	t3,t5,0xa
   12b66:	00ccecb3          	or	s9,s9,a2
   12b6a:	016f9613          	slli	a2,t6,0x16
   12b6e:	01c66633          	or	a2,a2,t3
   12b72:	c832                	sw	a2,16(sp)
   12b74:	011fde13          	srli	t3,t6,0x11
   12b78:	fff34493          	not	s1,t1
   12b7c:	00ff1613          	slli	a2,t5,0xf
   12b80:	01c66633          	or	a2,a2,t3
   12b84:	0124f4b3          	and	s1,s1,s2
   12b88:	ca32                	sw	a2,20(sp)
   12b8a:	8cb5                	xor	s1,s1,a3
   12b8c:	00ff9613          	slli	a2,t6,0xf
   12b90:	011f5c13          	srli	s8,t5,0x11
   12b94:	007a5e13          	srli	t3,s4,0x7
   12b98:	01866c33          	or	s8,a2,s8
   12b9c:	01949613          	slli	a2,s1,0x19
   12ba0:	0074d693          	srli	a3,s1,0x7
   12ba4:	01c66633          	or	a2,a2,t3
   12ba8:	019a1e13          	slli	t3,s4,0x19
   12bac:	01749b13          	slli	s6,s1,0x17
   12bb0:	00de66b3          	or	a3,t3,a3
   12bb4:	009a5e13          	srli	t3,s4,0x9
   12bb8:	fff8c893          	not	a7,a7
   12bbc:	fff84813          	not	a6,a6
   12bc0:	016e6b33          	or	s6,t3,s6
   12bc4:	017a1b93          	slli	s7,s4,0x17
   12bc8:	0094de13          	srli	t3,s1,0x9
   12bcc:	017e6bb3          	or	s7,t3,s7
   12bd0:	01f81a93          	slli	s5,a6,0x1f
   12bd4:	0018de13          	srli	t3,a7,0x1
   12bd8:	01caeab3          	or	s5,s5,t3
   12bdc:	00185993          	srli	s3,a6,0x1
   12be0:	01f89e13          	slli	t3,a7,0x1f
   12be4:	013e69b3          	or	s3,t3,s3
   12be8:	0068d793          	srli	a5,a7,0x6
   12bec:	01a81e13          	slli	t3,a6,0x1a
   12bf0:	007dc3b3          	xor	t2,s11,t2
   12bf4:	4db2                	lw	s11,12(sp)
   12bf6:	01454533          	xor	a0,a0,s4
   12bfa:	8da5                	xor	a1,a1,s1
   12bfc:	00fe67b3          	or	a5,t3,a5
   12c00:	00685313          	srli	t1,a6,0x6
   12c04:	01a89e13          	slli	t3,a7,0x1a
   12c08:	00d59913          	slli	s2,a1,0xd
   12c0c:	006e6333          	or	t1,t3,t1
   12c10:	01355e13          	srli	t3,a0,0x13
   12c14:	01c96933          	or	s2,s2,t3
   12c18:	00d51413          	slli	s0,a0,0xd
   12c1c:	0135de13          	srli	t3,a1,0x13
   12c20:	01adcd33          	xor	s10,s11,s10
   12c24:	4dd2                	lw	s11,20(sp)
   12c26:	01c46433          	or	s0,s0,t3
   12c2a:	01c55e93          	srli	t4,a0,0x1c
   12c2e:	00459e13          	slli	t3,a1,0x4
   12c32:	cc3e                	sw	a5,24(sp)
   12c34:	01de6eb3          	or	t4,t3,t4
   12c38:	01c5d793          	srli	a5,a1,0x1c
   12c3c:	00451e13          	slli	t3,a0,0x4
   12c40:	00fe6e33          	or	t3,t3,a5
   12c44:	01bcccb3          	xor	s9,s9,s11
   12c48:	47e2                	lw	a5,24(sp)
   12c4a:	4dc2                	lw	s11,16(sp)
   12c4c:	01764633          	xor	a2,a2,s7
   12c50:	0166c6b3          	xor	a3,a3,s6
   12c54:	0069c333          	xor	t1,s3,t1
   12c58:	01d94eb3          	xor	t4,s2,t4
   12c5c:	01c44e33          	xor	t3,s0,t3
   12c60:	005d4d33          	xor	s10,s10,t0
   12c64:	01464633          	xor	a2,a2,s4
   12c68:	8ea5                	xor	a3,a3,s1
   12c6a:	01034333          	xor	t1,t1,a6
   12c6e:	00be4e33          	xor	t3,t3,a1
   12c72:	018dcc33          	xor	s8,s11,s8
   12c76:	00fac7b3          	xor	a5,s5,a5
   12c7a:	00aeceb3          	xor	t4,t4,a0
   12c7e:	00e3c3b3          	xor	t2,t2,a4
   12c82:	01fcccb3          	xor	s9,s9,t6
   12c86:	01ec4c33          	xor	s8,s8,t5
   12c8a:	01a34733          	xor	a4,t1,s10
   12c8e:	00de4fb3          	xor	t6,t3,a3
   12c92:	00ceceb3          	xor	t4,t4,a2
   12c96:	0117c7b3          	xor	a5,a5,a7
   12c9a:	00cccf33          	xor	t5,s9,a2
   12c9e:	00dc4833          	xor	a6,s8,a3
   12ca2:	0077c7b3          	xor	a5,a5,t2
   12ca6:	fffd4293          	not	t0,s10
   12caa:	fffec613          	not	a2,t4
   12cae:	ffffc693          	not	a3,t6
   12cb2:	fff74e13          	not	t3,a4
   12cb6:	0a57c413          	xori	s0,a5,165
   12cba:	00e2f2b3          	and	t0,t0,a4
   12cbe:	fff3c493          	not	s1,t2
   12cc2:	fffcc513          	not	a0,s9
   12cc6:	fffc4593          	not	a1,s8
   12cca:	00767633          	and	a2,a2,t2
   12cce:	01a6f6b3          	and	a3,a3,s10
   12cd2:	018e7e33          	and	t3,t3,s8
   12cd6:	f5a7c793          	xori	a5,a5,-166
   12cda:	0106c6b3          	xor	a3,a3,a6
   12cde:	01e64633          	xor	a2,a2,t5
   12ce2:	0197f7b3          	and	a5,a5,s9
   12ce6:	ffff4313          	not	t1,t5
   12cea:	fff84893          	not	a7,a6
   12cee:	8ce1                	and	s1,s1,s0
   12cf0:	01e57533          	and	a0,a0,t5
   12cf4:	0105f5b3          	and	a1,a1,a6
   12cf8:	01ae4e33          	xor	t3,t3,s10
   12cfc:	01f2c833          	xor	a6,t0,t6
   12d00:	010e4e33          	xor	t3,t3,a6
   12d04:	01d4c4b3          	xor	s1,s1,t4
   12d08:	8d21                	xor	a0,a0,s0
   12d0a:	8db9                	xor	a1,a1,a4
   12d0c:	00765f13          	srli	t5,a2,0x7
   12d10:	0077c733          	xor	a4,a5,t2
   12d14:	01d37333          	and	t1,t1,t4
   12d18:	01761793          	slli	a5,a2,0x17
   12d1c:	0076de93          	srli	t4,a3,0x7
   12d20:	01f8f8b3          	and	a7,a7,t6
   12d24:	01969413          	slli	s0,a3,0x19
   12d28:	8fc2                	mv	t6,a6
   12d2a:	01961913          	slli	s2,a2,0x19
   12d2e:	01769813          	slli	a6,a3,0x17
   12d32:	00965293          	srli	t0,a2,0x9
   12d36:	0096d393          	srli	t2,a3,0x9
   12d3a:	8f25                	xor	a4,a4,s1
   12d3c:	0102e2b3          	or	t0,t0,a6
   12d40:	00f3e3b3          	or	t2,t2,a5
   12d44:	01e46433          	or	s0,s0,t5
   12d48:	01d96933          	or	s2,s2,t4
   12d4c:	00594933          	xor	s2,s2,t0
   12d50:	00744433          	xor	s0,s0,t2
   12d54:	01d75293          	srli	t0,a4,0x1d
   12d58:	003e1393          	slli	t2,t3,0x3
   12d5c:	ca22                	sw	s0,20(sp)
   12d5e:	01934333          	xor	t1,t1,s9
   12d62:	0072e3b3          	or	t2,t0,t2
   12d66:	00371413          	slli	s0,a4,0x3
   12d6a:	01de5293          	srli	t0,t3,0x1d
   12d6e:	00a34333          	xor	t1,t1,a0
   12d72:	0188c8b3          	xor	a7,a7,s8
   12d76:	019e1c93          	slli	s9,t3,0x19
   12d7a:	0082e433          	or	s0,t0,s0
   12d7e:	00775293          	srli	t0,a4,0x7
   12d82:	00b8c8b3          	xor	a7,a7,a1
   12d86:	fff54513          	not	a0,a0
   12d8a:	fff5c593          	not	a1,a1
   12d8e:	00a35a93          	srli	s5,t1,0xa
   12d92:	0192ecb3          	or	s9,t0,s9
   12d96:	01971d13          	slli	s10,a4,0x19
   12d9a:	007e5293          	srli	t0,t3,0x7
   12d9e:	c626                	sw	s1,12(sp)
   12da0:	00dfc9b3          	xor	s3,t6,a3
   12da4:	8cb1                	xor	s1,s1,a2
   12da6:	8dd6                	mv	s11,s5
   12da8:	0015dc13          	srli	s8,a1,0x1
   12dac:	0065de93          	srli	t4,a1,0x6
   12db0:	01a2ed33          	or	s10,t0,s10
   12db4:	01f51a13          	slli	s4,a0,0x1f
   12db8:	01a51813          	slli	a6,a0,0x1a
   12dbc:	01689293          	slli	t0,a7,0x16
   12dc0:	018a6a33          	or	s4,s4,s8
   12dc4:	00a8db13          	srli	s6,a7,0xa
   12dc8:	00d49c13          	slli	s8,s1,0xd
   12dcc:	01b2e2b3          	or	t0,t0,s11
   12dd0:	01d86833          	or	a6,a6,t4
   12dd4:	01631d93          	slli	s11,t1,0x16
   12dd8:	0139de93          	srli	t4,s3,0x13
   12ddc:	016deb33          	or	s6,s11,s6
   12de0:	00f89b93          	slli	s7,a7,0xf
   12de4:	01135d93          	srli	s11,t1,0x11
   12de8:	010a4833          	xor	a6,s4,a6
   12dec:	01dc6eb3          	or	t4,s8,t4
   12df0:	4a32                	lw	s4,12(sp)
   12df2:	4c52                	lw	s8,20(sp)
   12df4:	c87e                	sw	t6,16(sp)
   12df6:	01bbebb3          	or	s7,s7,s11
   12dfa:	0118df93          	srli	t6,a7,0x11
   12dfe:	00f31d93          	slli	s11,t1,0xf
   12e02:	01fdefb3          	or	t6,s11,t6
   12e06:	01fb4fb3          	xor	t6,s6,t6
   12e0a:	018a4b33          	xor	s6,s4,s8
   12e0e:	4a42                	lw	s4,16(sp)
   12e10:	00655f13          	srli	t5,a0,0x6
   12e14:	00155d93          	srli	s11,a0,0x1
   12e18:	01f59a93          	slli	s5,a1,0x1f
   12e1c:	01a59793          	slli	a5,a1,0x1a
   12e20:	01baeab3          	or	s5,s5,s11
   12e24:	01e7e7b3          	or	a5,a5,t5
   12e28:	00d99d93          	slli	s11,s3,0xd
   12e2c:	0134df13          	srli	t5,s1,0x13
   12e30:	0193c3b3          	xor	t2,t2,s9
   12e34:	0172c2b3          	xor	t0,t0,s7
   12e38:	00fac7b3          	xor	a5,s5,a5
   12e3c:	012a4bb3          	xor	s7,s4,s2
   12e40:	01c4da93          	srli	s5,s1,0x1c
   12e44:	01edef33          	or	t5,s11,t5
   12e48:	00499a13          	slli	s4,s3,0x4
   12e4c:	0492                	slli	s1,s1,0x4
   12e4e:	01c9d993          	srli	s3,s3,0x1c
   12e52:	01c3c3b3          	xor	t2,t2,t3
   12e56:	015a6a33          	or	s4,s4,s5
   12e5a:	0134e4b3          	or	s1,s1,s3
   12e5e:	01a44433          	xor	s0,s0,s10
   12e62:	00b84833          	xor	a6,a6,a1
   12e66:	016f4f33          	xor	t5,t5,s6
   12e6a:	017eceb3          	xor	t4,t4,s7
   12e6e:	8c39                	xor	s0,s0,a4
   12e70:	0062c2b3          	xor	t0,t0,t1
   12e74:	011fcfb3          	xor	t6,t6,a7
   12e78:	00784833          	xor	a6,a6,t2
   12e7c:	014f4f33          	xor	t5,t5,s4
   12e80:	009eceb3          	xor	t4,t4,s1
   12e84:	01864633          	xor	a2,a2,s8
   12e88:	0126c6b3          	xor	a3,a3,s2
   12e8c:	8fa9                	xor	a5,a5,a0
   12e8e:	00564933          	xor	s2,a2,t0
   12e92:	01f6c4b3          	xor	s1,a3,t6
   12e96:	8fa1                	xor	a5,a5,s0
   12e98:	fff3c713          	not	a4,t2
   12e9c:	ffff4613          	not	a2,t5
   12ea0:	fffec693          	not	a3,t4
   12ea4:	fff84e13          	not	t3,a6
   12ea8:	0967c993          	xori	s3,a5,150
   12eac:	01077733          	and	a4,a4,a6
   12eb0:	fff44a13          	not	s4,s0
   12eb4:	ffffc593          	not	a1,t6
   12eb8:	fff94313          	not	t1,s2
   12ebc:	fff4c893          	not	a7,s1
   12ec0:	8e61                	and	a2,a2,s0
   12ec2:	0076f6b3          	and	a3,a3,t2
   12ec6:	01fe7e33          	and	t3,t3,t6
   12eca:	f697c793          	xori	a5,a5,-151
   12ece:	8ea5                	xor	a3,a3,s1
   12ed0:	01264633          	xor	a2,a2,s2
   12ed4:	013a7a33          	and	s4,s4,s3
   12ed8:	0057f7b3          	and	a5,a5,t0
   12edc:	fff2c513          	not	a0,t0
   12ee0:	8de5                	and	a1,a1,s1
   12ee2:	01e37333          	and	t1,t1,t5
   12ee6:	01d8f8b3          	and	a7,a7,t4
   12eea:	007e4e33          	xor	t3,t3,t2
   12eee:	01d74eb3          	xor	t4,a4,t4
   12ef2:	01de4e33          	xor	t3,t3,t4
   12ef6:	01ea44b3          	xor	s1,s4,t5
   12efa:	0105c5b3          	xor	a1,a1,a6
   12efe:	0087c733          	xor	a4,a5,s0
   12f02:	00765f13          	srli	t5,a2,0x7
   12f06:	01769813          	slli	a6,a3,0x17
   12f0a:	01761793          	slli	a5,a2,0x17
   12f0e:	01257533          	and	a0,a0,s2
   12f12:	00534333          	xor	t1,t1,t0
   12f16:	01f8c8b3          	xor	a7,a7,t6
   12f1a:	01969413          	slli	s0,a3,0x19
   12f1e:	8ff6                	mv	t6,t4
   12f20:	01961913          	slli	s2,a2,0x19
   12f24:	0076de93          	srli	t4,a3,0x7
   12f28:	00965293          	srli	t0,a2,0x9
   12f2c:	0096d393          	srli	t2,a3,0x9
   12f30:	8f25                	xor	a4,a4,s1
   12f32:	0102e2b3          	or	t0,t0,a6
   12f36:	00f3e3b3          	or	t2,t2,a5
   12f3a:	01e46433          	or	s0,s0,t5
   12f3e:	01d96933          	or	s2,s2,t4
   12f42:	00594933          	xor	s2,s2,t0
   12f46:	00744433          	xor	s0,s0,t2
   12f4a:	01d75293          	srli	t0,a4,0x1d
   12f4e:	003e1393          	slli	t2,t3,0x3
   12f52:	ca22                	sw	s0,20(sp)
   12f54:	01354533          	xor	a0,a0,s3
   12f58:	0072e3b3          	or	t2,t0,t2
   12f5c:	00371413          	slli	s0,a4,0x3
   12f60:	01de5293          	srli	t0,t3,0x1d
   12f64:	00a34333          	xor	t1,t1,a0
   12f68:	019e1c93          	slli	s9,t3,0x19
   12f6c:	0082e433          	or	s0,t0,s0
   12f70:	00775293          	srli	t0,a4,0x7
   12f74:	00b8c8b3          	xor	a7,a7,a1
   12f78:	fff54513          	not	a0,a0
   12f7c:	fff5c593          	not	a1,a1
   12f80:	00a35a93          	srli	s5,t1,0xa
   12f84:	0192ecb3          	or	s9,t0,s9
   12f88:	01971d13          	slli	s10,a4,0x19
   12f8c:	007e5293          	srli	t0,t3,0x7
   12f90:	c626                	sw	s1,12(sp)
   12f92:	00dfc9b3          	xor	s3,t6,a3
   12f96:	8cb1                	xor	s1,s1,a2
   12f98:	8dd6                	mv	s11,s5
   12f9a:	0015dc13          	srli	s8,a1,0x1
   12f9e:	0065de93          	srli	t4,a1,0x6
   12fa2:	01a2ed33          	or	s10,t0,s10
   12fa6:	01f51a13          	slli	s4,a0,0x1f
   12faa:	01a51813          	slli	a6,a0,0x1a
   12fae:	01689293          	slli	t0,a7,0x16
   12fb2:	018a6a33          	or	s4,s4,s8
   12fb6:	00a8db13          	srli	s6,a7,0xa
   12fba:	00d49c13          	slli	s8,s1,0xd
   12fbe:	01b2e2b3          	or	t0,t0,s11
   12fc2:	01d86833          	or	a6,a6,t4
   12fc6:	01631d93          	slli	s11,t1,0x16
   12fca:	0139de93          	srli	t4,s3,0x13
   12fce:	016deb33          	or	s6,s11,s6
   12fd2:	00f89b93          	slli	s7,a7,0xf
   12fd6:	01135d93          	srli	s11,t1,0x11
   12fda:	010a4833          	xor	a6,s4,a6
   12fde:	01dc6eb3          	or	t4,s8,t4
   12fe2:	4a32                	lw	s4,12(sp)
   12fe4:	4c52                	lw	s8,20(sp)
   12fe6:	c87e                	sw	t6,16(sp)
   12fe8:	01bbebb3          	or	s7,s7,s11
   12fec:	0118df93          	srli	t6,a7,0x11
   12ff0:	00f31d93          	slli	s11,t1,0xf
   12ff4:	01fdefb3          	or	t6,s11,t6
   12ff8:	01fb4fb3          	xor	t6,s6,t6
   12ffc:	018a4b33          	xor	s6,s4,s8
   13000:	4a42                	lw	s4,16(sp)
   13002:	00655f13          	srli	t5,a0,0x6
   13006:	00155d93          	srli	s11,a0,0x1
   1300a:	01f59a93          	slli	s5,a1,0x1f
   1300e:	01a59793          	slli	a5,a1,0x1a
   13012:	01baeab3          	or	s5,s5,s11
   13016:	01e7e7b3          	or	a5,a5,t5
   1301a:	00d99d93          	slli	s11,s3,0xd
   1301e:	0134df13          	srli	t5,s1,0x13
   13022:	0193c3b3          	xor	t2,t2,s9
   13026:	0172c2b3          	xor	t0,t0,s7
   1302a:	00fac7b3          	xor	a5,s5,a5
   1302e:	012a4bb3          	xor	s7,s4,s2
   13032:	01c4da93          	srli	s5,s1,0x1c
   13036:	01edef33          	or	t5,s11,t5
   1303a:	00499a13          	slli	s4,s3,0x4
   1303e:	0492                	slli	s1,s1,0x4
   13040:	01c9d993          	srli	s3,s3,0x1c
   13044:	01c3c3b3          	xor	t2,t2,t3
   13048:	015a6a33          	or	s4,s4,s5
   1304c:	0134e4b3          	or	s1,s1,s3
   13050:	01a44433          	xor	s0,s0,s10
   13054:	00b84833          	xor	a6,a6,a1
   13058:	016f4f33          	xor	t5,t5,s6
   1305c:	017eceb3          	xor	t4,t4,s7
   13060:	8c39                	xor	s0,s0,a4
   13062:	0062c2b3          	xor	t0,t0,t1
   13066:	011fcfb3          	xor	t6,t6,a7
   1306a:	00784833          	xor	a6,a6,t2
   1306e:	014f4f33          	xor	t5,t5,s4
   13072:	009eceb3          	xor	t4,t4,s1
   13076:	01864633          	xor	a2,a2,s8
   1307a:	0126c6b3          	xor	a3,a3,s2
   1307e:	8fa9                	xor	a5,a5,a0
   13080:	00564933          	xor	s2,a2,t0
   13084:	01f6c4b3          	xor	s1,a3,t6
   13088:	8fa1                	xor	a5,a5,s0
   1308a:	fff3c713          	not	a4,t2
   1308e:	ffff4613          	not	a2,t5
   13092:	fffec693          	not	a3,t4
   13096:	fff84e13          	not	t3,a6
   1309a:	0877c993          	xori	s3,a5,135
   1309e:	01077733          	and	a4,a4,a6
   130a2:	fff44a13          	not	s4,s0
   130a6:	ffffc593          	not	a1,t6
   130aa:	fff94313          	not	t1,s2
   130ae:	fff4c893          	not	a7,s1
   130b2:	8e61                	and	a2,a2,s0
   130b4:	0076f6b3          	and	a3,a3,t2
   130b8:	01fe7e33          	and	t3,t3,t6
   130bc:	f787c793          	xori	a5,a5,-136
   130c0:	8ea5                	xor	a3,a3,s1
   130c2:	01264633          	xor	a2,a2,s2
   130c6:	013a7a33          	and	s4,s4,s3
   130ca:	0057f7b3          	and	a5,a5,t0
   130ce:	fff2c513          	not	a0,t0
   130d2:	8de5                	and	a1,a1,s1
   130d4:	01e37333          	and	t1,t1,t5
   130d8:	01d8f8b3          	and	a7,a7,t4
   130dc:	007e4e33          	xor	t3,t3,t2
   130e0:	01d74eb3          	xor	t4,a4,t4
   130e4:	01de4e33          	xor	t3,t3,t4
   130e8:	01ea44b3          	xor	s1,s4,t5
   130ec:	0105c5b3          	xor	a1,a1,a6
   130f0:	0087c733          	xor	a4,a5,s0
   130f4:	00765f13          	srli	t5,a2,0x7
   130f8:	01769813          	slli	a6,a3,0x17
   130fc:	01761793          	slli	a5,a2,0x17
   13100:	01257533          	and	a0,a0,s2
   13104:	00534333          	xor	t1,t1,t0
   13108:	01f8c8b3          	xor	a7,a7,t6
   1310c:	01969413          	slli	s0,a3,0x19
   13110:	8ff6                	mv	t6,t4
   13112:	01961913          	slli	s2,a2,0x19
   13116:	0076de93          	srli	t4,a3,0x7
   1311a:	00965293          	srli	t0,a2,0x9
   1311e:	0096d393          	srli	t2,a3,0x9
   13122:	8f25                	xor	a4,a4,s1
   13124:	0102e2b3          	or	t0,t0,a6
   13128:	00f3e3b3          	or	t2,t2,a5
   1312c:	01e46433          	or	s0,s0,t5
   13130:	01d96933          	or	s2,s2,t4
   13134:	00594933          	xor	s2,s2,t0
   13138:	00744433          	xor	s0,s0,t2
   1313c:	01d75293          	srli	t0,a4,0x1d
   13140:	003e1393          	slli	t2,t3,0x3
   13144:	ca22                	sw	s0,20(sp)
   13146:	01354533          	xor	a0,a0,s3
   1314a:	0072e3b3          	or	t2,t0,t2
   1314e:	00371413          	slli	s0,a4,0x3
   13152:	01de5293          	srli	t0,t3,0x1d
   13156:	00a34333          	xor	t1,t1,a0
   1315a:	019e1c93          	slli	s9,t3,0x19
   1315e:	0082e433          	or	s0,t0,s0
   13162:	00775293          	srli	t0,a4,0x7
   13166:	00b8c8b3          	xor	a7,a7,a1
   1316a:	fff54513          	not	a0,a0
   1316e:	fff5c593          	not	a1,a1
   13172:	00a35a93          	srli	s5,t1,0xa
   13176:	0192ecb3          	or	s9,t0,s9
   1317a:	01971d13          	slli	s10,a4,0x19
   1317e:	007e5293          	srli	t0,t3,0x7
   13182:	00dfc9b3          	xor	s3,t6,a3
   13186:	c626                	sw	s1,12(sp)
   13188:	8dd6                	mv	s11,s5
   1318a:	8cb1                	xor	s1,s1,a2
   1318c:	0015dc13          	srli	s8,a1,0x1
   13190:	0065de93          	srli	t4,a1,0x6
   13194:	01a2ed33          	or	s10,t0,s10
   13198:	01f51a13          	slli	s4,a0,0x1f
   1319c:	01a51813          	slli	a6,a0,0x1a
   131a0:	01689293          	slli	t0,a7,0x16
   131a4:	018a6a33          	or	s4,s4,s8
   131a8:	00a8db13          	srli	s6,a7,0xa
   131ac:	00d49c13          	slli	s8,s1,0xd
   131b0:	01b2e2b3          	or	t0,t0,s11
   131b4:	01d86833          	or	a6,a6,t4
   131b8:	01631d93          	slli	s11,t1,0x16
   131bc:	0139de93          	srli	t4,s3,0x13
   131c0:	016deb33          	or	s6,s11,s6
   131c4:	00f89b93          	slli	s7,a7,0xf
   131c8:	01135d93          	srli	s11,t1,0x11
   131cc:	010a4833          	xor	a6,s4,a6
   131d0:	01dc6eb3          	or	t4,s8,t4
   131d4:	4a32                	lw	s4,12(sp)
   131d6:	4c52                	lw	s8,20(sp)
   131d8:	c87e                	sw	t6,16(sp)
   131da:	01bbebb3          	or	s7,s7,s11
   131de:	0118df93          	srli	t6,a7,0x11
   131e2:	00f31d93          	slli	s11,t1,0xf
   131e6:	01fdefb3          	or	t6,s11,t6
   131ea:	01fb4fb3          	xor	t6,s6,t6
   131ee:	018a4b33          	xor	s6,s4,s8
   131f2:	4a42                	lw	s4,16(sp)
   131f4:	00655f13          	srli	t5,a0,0x6
   131f8:	00155d93          	srli	s11,a0,0x1
   131fc:	01f59a93          	slli	s5,a1,0x1f
   13200:	01a59793          	slli	a5,a1,0x1a
   13204:	01baeab3          	or	s5,s5,s11
   13208:	01e7e7b3          	or	a5,a5,t5
   1320c:	00d99d93          	slli	s11,s3,0xd
   13210:	0134df13          	srli	t5,s1,0x13
   13214:	0193c3b3          	xor	t2,t2,s9
   13218:	0172c2b3          	xor	t0,t0,s7
   1321c:	00fac7b3          	xor	a5,s5,a5
   13220:	012a4bb3          	xor	s7,s4,s2
   13224:	01c4da93          	srli	s5,s1,0x1c
   13228:	01edef33          	or	t5,s11,t5
   1322c:	00499a13          	slli	s4,s3,0x4
   13230:	0492                	slli	s1,s1,0x4
   13232:	01c9d993          	srli	s3,s3,0x1c
   13236:	01c3c3b3          	xor	t2,t2,t3
   1323a:	015a6a33          	or	s4,s4,s5
   1323e:	0134e4b3          	or	s1,s1,s3
   13242:	01a44433          	xor	s0,s0,s10
   13246:	00b84833          	xor	a6,a6,a1
   1324a:	016f4f33          	xor	t5,t5,s6
   1324e:	017eceb3          	xor	t4,t4,s7
   13252:	8c39                	xor	s0,s0,a4
   13254:	0062c2b3          	xor	t0,t0,t1
   13258:	011fcfb3          	xor	t6,t6,a7
   1325c:	00784833          	xor	a6,a6,t2
   13260:	014f4f33          	xor	t5,t5,s4
   13264:	009eceb3          	xor	t4,t4,s1
   13268:	01864633          	xor	a2,a2,s8
   1326c:	0126c6b3          	xor	a3,a3,s2
   13270:	8fa9                	xor	a5,a5,a0
   13272:	00564933          	xor	s2,a2,t0
   13276:	01f6c4b3          	xor	s1,a3,t6
   1327a:	8fa1                	xor	a5,a5,s0
   1327c:	fff3c713          	not	a4,t2
   13280:	ffff4613          	not	a2,t5
   13284:	fffec693          	not	a3,t4
   13288:	fff84e13          	not	t3,a6
   1328c:	0787c993          	xori	s3,a5,120
   13290:	01077733          	and	a4,a4,a6
   13294:	fff44a13          	not	s4,s0
   13298:	ffffc593          	not	a1,t6
   1329c:	fff94313          	not	t1,s2
   132a0:	fff4c893          	not	a7,s1
   132a4:	8e61                	and	a2,a2,s0
   132a6:	0076f6b3          	and	a3,a3,t2
   132aa:	01fe7e33          	and	t3,t3,t6
   132ae:	f877c793          	xori	a5,a5,-121
   132b2:	8ea5                	xor	a3,a3,s1
   132b4:	01264633          	xor	a2,a2,s2
   132b8:	013a7a33          	and	s4,s4,s3
   132bc:	0057f7b3          	and	a5,a5,t0
   132c0:	fff2c513          	not	a0,t0
   132c4:	8de5                	and	a1,a1,s1
   132c6:	01e37333          	and	t1,t1,t5
   132ca:	01d8f8b3          	and	a7,a7,t4
   132ce:	007e4e33          	xor	t3,t3,t2
   132d2:	01d74eb3          	xor	t4,a4,t4
   132d6:	01de4e33          	xor	t3,t3,t4
   132da:	01ea44b3          	xor	s1,s4,t5
   132de:	0105c5b3          	xor	a1,a1,a6
   132e2:	0087c733          	xor	a4,a5,s0
   132e6:	00765f13          	srli	t5,a2,0x7
   132ea:	01769813          	slli	a6,a3,0x17
   132ee:	01761793          	slli	a5,a2,0x17
   132f2:	01257533          	and	a0,a0,s2
   132f6:	00534333          	xor	t1,t1,t0
   132fa:	01f8c8b3          	xor	a7,a7,t6
   132fe:	01969413          	slli	s0,a3,0x19
   13302:	8ff6                	mv	t6,t4
   13304:	01961913          	slli	s2,a2,0x19
   13308:	0076de93          	srli	t4,a3,0x7
   1330c:	00965293          	srli	t0,a2,0x9
   13310:	0096d393          	srli	t2,a3,0x9
   13314:	8f25                	xor	a4,a4,s1
   13316:	0102e2b3          	or	t0,t0,a6
   1331a:	00f3e3b3          	or	t2,t2,a5
   1331e:	01e46433          	or	s0,s0,t5
   13322:	01d96933          	or	s2,s2,t4
   13326:	00594933          	xor	s2,s2,t0
   1332a:	00744433          	xor	s0,s0,t2
   1332e:	01d75293          	srli	t0,a4,0x1d
   13332:	003e1393          	slli	t2,t3,0x3
   13336:	01354533          	xor	a0,a0,s3
   1333a:	ca22                	sw	s0,20(sp)
   1333c:	0072e3b3          	or	t2,t0,t2
   13340:	00371413          	slli	s0,a4,0x3
   13344:	01de5293          	srli	t0,t3,0x1d
   13348:	00a34333          	xor	t1,t1,a0
   1334c:	019e1c93          	slli	s9,t3,0x19
   13350:	0082e433          	or	s0,t0,s0
   13354:	00775293          	srli	t0,a4,0x7
   13358:	00b8c8b3          	xor	a7,a7,a1
   1335c:	fff54513          	not	a0,a0
   13360:	fff5c593          	not	a1,a1
   13364:	00a35a93          	srli	s5,t1,0xa
   13368:	0192ecb3          	or	s9,t0,s9
   1336c:	01971d13          	slli	s10,a4,0x19
   13370:	007e5293          	srli	t0,t3,0x7
   13374:	00dfc9b3          	xor	s3,t6,a3
   13378:	c626                	sw	s1,12(sp)
   1337a:	8dd6                	mv	s11,s5
   1337c:	8cb1                	xor	s1,s1,a2
   1337e:	0015dc13          	srli	s8,a1,0x1
   13382:	0065de93          	srli	t4,a1,0x6
   13386:	01a2ed33          	or	s10,t0,s10
   1338a:	01f51a13          	slli	s4,a0,0x1f
   1338e:	01a51813          	slli	a6,a0,0x1a
   13392:	01689293          	slli	t0,a7,0x16
   13396:	018a6a33          	or	s4,s4,s8
   1339a:	00a8db13          	srli	s6,a7,0xa
   1339e:	00d49c13          	slli	s8,s1,0xd
   133a2:	01b2e2b3          	or	t0,t0,s11
   133a6:	01d86833          	or	a6,a6,t4
   133aa:	01631d93          	slli	s11,t1,0x16
   133ae:	0139de93          	srli	t4,s3,0x13
   133b2:	016deb33          	or	s6,s11,s6
   133b6:	c87e                	sw	t6,16(sp)
   133b8:	01135d93          	srli	s11,t1,0x11
   133bc:	00f89b93          	slli	s7,a7,0xf
   133c0:	010a4833          	xor	a6,s4,a6
   133c4:	01dc6eb3          	or	t4,s8,t4
   133c8:	4a32                	lw	s4,12(sp)
   133ca:	4c52                	lw	s8,20(sp)
   133cc:	01bbebb3          	or	s7,s7,s11
   133d0:	0118df93          	srli	t6,a7,0x11
   133d4:	00f31d93          	slli	s11,t1,0xf
   133d8:	01fdefb3          	or	t6,s11,t6
   133dc:	01fb4fb3          	xor	t6,s6,t6
   133e0:	018a4b33          	xor	s6,s4,s8
   133e4:	4a42                	lw	s4,16(sp)
   133e6:	00655f13          	srli	t5,a0,0x6
   133ea:	00155d93          	srli	s11,a0,0x1
   133ee:	01f59a93          	slli	s5,a1,0x1f
   133f2:	01a59793          	slli	a5,a1,0x1a
   133f6:	01baeab3          	or	s5,s5,s11
   133fa:	01e7e7b3          	or	a5,a5,t5
   133fe:	00d99d93          	slli	s11,s3,0xd
   13402:	0134df13          	srli	t5,s1,0x13
   13406:	0193c3b3          	xor	t2,t2,s9
   1340a:	0172c2b3          	xor	t0,t0,s7
   1340e:	00fac7b3          	xor	a5,s5,a5
   13412:	012a4bb3          	xor	s7,s4,s2
   13416:	01c4da93          	srli	s5,s1,0x1c
   1341a:	01edef33          	or	t5,s11,t5
   1341e:	00499a13          	slli	s4,s3,0x4
   13422:	0492                	slli	s1,s1,0x4
   13424:	01c9d993          	srli	s3,s3,0x1c
   13428:	01c3c3b3          	xor	t2,t2,t3
   1342c:	015a6a33          	or	s4,s4,s5
   13430:	0134e4b3          	or	s1,s1,s3
   13434:	01a44433          	xor	s0,s0,s10
   13438:	00b84833          	xor	a6,a6,a1
   1343c:	016f4f33          	xor	t5,t5,s6
   13440:	017eceb3          	xor	t4,t4,s7
   13444:	8c39                	xor	s0,s0,a4
   13446:	0062c2b3          	xor	t0,t0,t1
   1344a:	011fcfb3          	xor	t6,t6,a7
   1344e:	00784833          	xor	a6,a6,t2
   13452:	014f4f33          	xor	t5,t5,s4
   13456:	009eceb3          	xor	t4,t4,s1
   1345a:	01864633          	xor	a2,a2,s8
   1345e:	0126c6b3          	xor	a3,a3,s2
   13462:	8fa9                	xor	a5,a5,a0
   13464:	00564933          	xor	s2,a2,t0
   13468:	01f6c4b3          	xor	s1,a3,t6
   1346c:	8fa1                	xor	a5,a5,s0
   1346e:	fff3c713          	not	a4,t2
   13472:	ffff4613          	not	a2,t5
   13476:	fffec693          	not	a3,t4
   1347a:	fff84e13          	not	t3,a6
   1347e:	0697c993          	xori	s3,a5,105
   13482:	01077733          	and	a4,a4,a6
   13486:	fff44a13          	not	s4,s0
   1348a:	ffffc593          	not	a1,t6
   1348e:	fff94313          	not	t1,s2
   13492:	fff4c893          	not	a7,s1
   13496:	8e61                	and	a2,a2,s0
   13498:	0076f6b3          	and	a3,a3,t2
   1349c:	01fe7e33          	and	t3,t3,t6
   134a0:	f967c793          	xori	a5,a5,-106
   134a4:	8ea5                	xor	a3,a3,s1
   134a6:	01264633          	xor	a2,a2,s2
   134aa:	013a7a33          	and	s4,s4,s3
   134ae:	0057f7b3          	and	a5,a5,t0
   134b2:	fff2c513          	not	a0,t0
   134b6:	8de5                	and	a1,a1,s1
   134b8:	01e37333          	and	t1,t1,t5
   134bc:	01d8f8b3          	and	a7,a7,t4
   134c0:	007e4e33          	xor	t3,t3,t2
   134c4:	01d74eb3          	xor	t4,a4,t4
   134c8:	01de4e33          	xor	t3,t3,t4
   134cc:	01ea44b3          	xor	s1,s4,t5
   134d0:	0105c5b3          	xor	a1,a1,a6
   134d4:	0087c733          	xor	a4,a5,s0
   134d8:	00765f13          	srli	t5,a2,0x7
   134dc:	01769813          	slli	a6,a3,0x17
   134e0:	01761793          	slli	a5,a2,0x17
   134e4:	01257533          	and	a0,a0,s2
   134e8:	00534333          	xor	t1,t1,t0
   134ec:	01f8c8b3          	xor	a7,a7,t6
   134f0:	01969413          	slli	s0,a3,0x19
   134f4:	8ff6                	mv	t6,t4
   134f6:	01961913          	slli	s2,a2,0x19
   134fa:	0076de93          	srli	t4,a3,0x7
   134fe:	00965293          	srli	t0,a2,0x9
   13502:	0096d393          	srli	t2,a3,0x9
   13506:	8f25                	xor	a4,a4,s1
   13508:	0102e2b3          	or	t0,t0,a6
   1350c:	00f3e3b3          	or	t2,t2,a5
   13510:	01e46433          	or	s0,s0,t5
   13514:	01d96933          	or	s2,s2,t4
   13518:	00594933          	xor	s2,s2,t0
   1351c:	00744433          	xor	s0,s0,t2
   13520:	01d75293          	srli	t0,a4,0x1d
   13524:	003e1393          	slli	t2,t3,0x3
   13528:	ca22                	sw	s0,20(sp)
   1352a:	01354533          	xor	a0,a0,s3
   1352e:	0072e3b3          	or	t2,t0,t2
   13532:	00371413          	slli	s0,a4,0x3
   13536:	01de5293          	srli	t0,t3,0x1d
   1353a:	00a34333          	xor	t1,t1,a0
   1353e:	019e1c93          	slli	s9,t3,0x19
   13542:	0082e433          	or	s0,t0,s0
   13546:	00775293          	srli	t0,a4,0x7
   1354a:	00b8c8b3          	xor	a7,a7,a1
   1354e:	fff54513          	not	a0,a0
   13552:	fff5c593          	not	a1,a1
   13556:	00a35a93          	srli	s5,t1,0xa
   1355a:	0192ecb3          	or	s9,t0,s9
   1355e:	01971d13          	slli	s10,a4,0x19
   13562:	007e5293          	srli	t0,t3,0x7
   13566:	c626                	sw	s1,12(sp)
   13568:	00dfc9b3          	xor	s3,t6,a3
   1356c:	8cb1                	xor	s1,s1,a2
   1356e:	8dd6                	mv	s11,s5
   13570:	0015dc13          	srli	s8,a1,0x1
   13574:	0065de93          	srli	t4,a1,0x6
   13578:	01a2ed33          	or	s10,t0,s10
   1357c:	01f51a13          	slli	s4,a0,0x1f
   13580:	01a51813          	slli	a6,a0,0x1a
   13584:	01689293          	slli	t0,a7,0x16
   13588:	018a6a33          	or	s4,s4,s8
   1358c:	00a8db13          	srli	s6,a7,0xa
   13590:	00d49c13          	slli	s8,s1,0xd
   13594:	01b2e2b3          	or	t0,t0,s11
   13598:	01d86833          	or	a6,a6,t4
   1359c:	01631d93          	slli	s11,t1,0x16
   135a0:	0139de93          	srli	t4,s3,0x13
   135a4:	016deb33          	or	s6,s11,s6
   135a8:	00f89b93          	slli	s7,a7,0xf
   135ac:	01135d93          	srli	s11,t1,0x11
   135b0:	010a4833          	xor	a6,s4,a6
   135b4:	01dc6eb3          	or	t4,s8,t4
   135b8:	4a32                	lw	s4,12(sp)
   135ba:	4c52                	lw	s8,20(sp)
   135bc:	c87e                	sw	t6,16(sp)
   135be:	01bbebb3          	or	s7,s7,s11
   135c2:	0118df93          	srli	t6,a7,0x11
   135c6:	00f31d93          	slli	s11,t1,0xf
   135ca:	01fdefb3          	or	t6,s11,t6
   135ce:	01fb4fb3          	xor	t6,s6,t6
   135d2:	018a4b33          	xor	s6,s4,s8
   135d6:	4a42                	lw	s4,16(sp)
   135d8:	00655f13          	srli	t5,a0,0x6
   135dc:	00155d93          	srli	s11,a0,0x1
   135e0:	01f59a93          	slli	s5,a1,0x1f
   135e4:	01a59793          	slli	a5,a1,0x1a
   135e8:	01baeab3          	or	s5,s5,s11
   135ec:	01e7e7b3          	or	a5,a5,t5
   135f0:	00d99d93          	slli	s11,s3,0xd
   135f4:	0134df13          	srli	t5,s1,0x13
   135f8:	0172c2b3          	xor	t0,t0,s7
   135fc:	00fac7b3          	xor	a5,s5,a5
   13600:	012a4bb3          	xor	s7,s4,s2
   13604:	01c4da93          	srli	s5,s1,0x1c
   13608:	01edef33          	or	t5,s11,t5
   1360c:	00499a13          	slli	s4,s3,0x4
   13610:	0492                	slli	s1,s1,0x4
   13612:	01c9d993          	srli	s3,s3,0x1c
   13616:	015a6a33          	or	s4,s4,s5
   1361a:	0134e4b3          	or	s1,s1,s3
   1361e:	01a44433          	xor	s0,s0,s10
   13622:	0193c3b3          	xor	t2,t2,s9
   13626:	016f4f33          	xor	t5,t5,s6
   1362a:	017eceb3          	xor	t4,t4,s7
   1362e:	8c39                	xor	s0,s0,a4
   13630:	01c3c3b3          	xor	t2,t2,t3
   13634:	0062c2b3          	xor	t0,t0,t1
   13638:	011fcfb3          	xor	t6,t6,a7
   1363c:	014f4f33          	xor	t5,t5,s4
   13640:	009eceb3          	xor	t4,t4,s1
   13644:	01864633          	xor	a2,a2,s8
   13648:	0126c6b3          	xor	a3,a3,s2
   1364c:	8fa9                	xor	a5,a5,a0
   1364e:	00b84833          	xor	a6,a6,a1
   13652:	00564933          	xor	s2,a2,t0
   13656:	01f6c4b3          	xor	s1,a3,t6
   1365a:	00784833          	xor	a6,a6,t2
   1365e:	8fa1                	xor	a5,a5,s0
   13660:	ffff4613          	not	a2,t5
   13664:	fffec693          	not	a3,t4
   13668:	05a7c993          	xori	s3,a5,90
   1366c:	fff44a13          	not	s4,s0
   13670:	fff3c713          	not	a4,t2
   13674:	ffffc593          	not	a1,t6
   13678:	fff84e13          	not	t3,a6
   1367c:	fff94313          	not	t1,s2
   13680:	fff4c893          	not	a7,s1
   13684:	8e61                	and	a2,a2,s0
   13686:	0076f6b3          	and	a3,a3,t2
   1368a:	fa57c793          	xori	a5,a5,-91
   1368e:	8ea5                	xor	a3,a3,s1
   13690:	01264633          	xor	a2,a2,s2
   13694:	013a7a33          	and	s4,s4,s3
   13698:	01077733          	and	a4,a4,a6
   1369c:	0057f7b3          	and	a5,a5,t0
   136a0:	fff2c513          	not	a0,t0
   136a4:	8de5                	and	a1,a1,s1
   136a6:	01fe7e33          	and	t3,t3,t6
   136aa:	01e37333          	and	t1,t1,t5
   136ae:	01d8f8b3          	and	a7,a7,t4
   136b2:	01ea44b3          	xor	s1,s4,t5
   136b6:	01d74bb3          	xor	s7,a4,t4
   136ba:	0105c5b3          	xor	a1,a1,a6
   136be:	0087c733          	xor	a4,a5,s0
   136c2:	0076df13          	srli	t5,a3,0x7
   136c6:	01769813          	slli	a6,a3,0x17
   136ca:	01761793          	slli	a5,a2,0x17
   136ce:	01257533          	and	a0,a0,s2
   136d2:	007e4e33          	xor	t3,t3,t2
   136d6:	00534333          	xor	t1,t1,t0
   136da:	01f8c8b3          	xor	a7,a7,t6
   136de:	01969413          	slli	s0,a3,0x19
   136e2:	00765f93          	srli	t6,a2,0x7
   136e6:	01961913          	slli	s2,a2,0x19
   136ea:	00965293          	srli	t0,a2,0x9
   136ee:	0096d393          	srli	t2,a3,0x9
   136f2:	8f25                	xor	a4,a4,s1
   136f4:	017e4e33          	xor	t3,t3,s7
   136f8:	0102e2b3          	or	t0,t0,a6
   136fc:	00f3e3b3          	or	t2,t2,a5
   13700:	01f46433          	or	s0,s0,t6
   13704:	01e96933          	or	s2,s2,t5
   13708:	00594933          	xor	s2,s2,t0
   1370c:	00744433          	xor	s0,s0,t2
   13710:	01d75293          	srli	t0,a4,0x1d
   13714:	003e1393          	slli	t2,t3,0x3
   13718:	c822                	sw	s0,16(sp)
   1371a:	01354533          	xor	a0,a0,s3
   1371e:	0072e3b3          	or	t2,t0,t2
   13722:	00371413          	slli	s0,a4,0x3
   13726:	01de5293          	srli	t0,t3,0x1d
   1372a:	00a34333          	xor	t1,t1,a0
   1372e:	019e1c93          	slli	s9,t3,0x19
   13732:	0082e433          	or	s0,t0,s0
   13736:	00775293          	srli	t0,a4,0x7
   1373a:	00b8c8b3          	xor	a7,a7,a1
   1373e:	00a35e93          	srli	t4,t1,0xa
   13742:	0192ecb3          	or	s9,t0,s9
   13746:	01971d13          	slli	s10,a4,0x19
   1374a:	007e5293          	srli	t0,t3,0x7
   1374e:	8af6                	mv	s5,t4
   13750:	01a2ed33          	or	s10,t0,s10
   13754:	01689293          	slli	t0,a7,0x16
   13758:	00a8de93          	srli	t4,a7,0xa
   1375c:	0152e2b3          	or	t0,t0,s5
   13760:	01631a93          	slli	s5,t1,0x16
   13764:	00f89b13          	slli	s6,a7,0xf
   13768:	01daeeb3          	or	t4,s5,t4
   1376c:	01135a93          	srli	s5,t1,0x11
   13770:	fff54513          	not	a0,a0
   13774:	fff5c593          	not	a1,a1
   13778:	015b6b33          	or	s6,s6,s5
   1377c:	0118dc13          	srli	s8,a7,0x11
   13780:	00f31a93          	slli	s5,t1,0xf
   13784:	00155d93          	srli	s11,a0,0x1
   13788:	018aec33          	or	s8,s5,s8
   1378c:	01f59a93          	slli	s5,a1,0x1f
   13790:	0065df13          	srli	t5,a1,0x6
   13794:	01baeab3          	or	s5,s5,s11
   13798:	01f51a13          	slli	s4,a0,0x1f
   1379c:	0015dd93          	srli	s11,a1,0x1
   137a0:	01a51813          	slli	a6,a0,0x1a
   137a4:	c626                	sw	s1,12(sp)
   137a6:	01ba6a33          	or	s4,s4,s11
   137aa:	01e86833          	or	a6,a6,t5
   137ae:	00655f93          	srli	t6,a0,0x6
   137b2:	01a59793          	slli	a5,a1,0x1a
   137b6:	018eceb3          	xor	t4,t4,s8
   137ba:	010a4833          	xor	a6,s4,a6
   137be:	4c42                	lw	s8,16(sp)
   137c0:	4a32                	lw	s4,12(sp)
   137c2:	00dbc9b3          	xor	s3,s7,a3
   137c6:	8cb1                	xor	s1,s1,a2
   137c8:	01f7e7b3          	or	a5,a5,t6
   137cc:	0139df13          	srli	t5,s3,0x13
   137d0:	00fac7b3          	xor	a5,s5,a5
   137d4:	00d49a93          	slli	s5,s1,0xd
   137d8:	00d99d93          	slli	s11,s3,0xd
   137dc:	012bcbb3          	xor	s7,s7,s2
   137e0:	0134df93          	srli	t6,s1,0x13
   137e4:	0162c2b3          	xor	t0,t0,s6
   137e8:	01eaef33          	or	t5,s5,t5
   137ec:	018a4b33          	xor	s6,s4,s8
   137f0:	01c4da93          	srli	s5,s1,0x1c
   137f4:	00499a13          	slli	s4,s3,0x4
   137f8:	0492                	slli	s1,s1,0x4
   137fa:	01c9d993          	srli	s3,s3,0x1c
   137fe:	017f4f33          	xor	t5,t5,s7
   13802:	0134e4b3          	or	s1,s1,s3
   13806:	009f44b3          	xor	s1,t5,s1
   1380a:	0193c3b3          	xor	t2,t2,s9
   1380e:	01c3c3b3          	xor	t2,t2,t3
   13812:	011eceb3          	xor	t4,t4,a7
   13816:	0126c6b3          	xor	a3,a3,s2
   1381a:	fff4cf13          	not	t5,s1
   1381e:	01d6c6b3          	xor	a3,a3,t4
   13822:	00b84833          	xor	a6,a6,a1
   13826:	007f7f33          	and	t5,t5,t2
   1382a:	fffec593          	not	a1,t4
   1382e:	00df4f33          	xor	t5,t5,a3
   13832:	0062c2b3          	xor	t0,t0,t1
   13836:	007849b3          	xor	s3,a6,t2
   1383a:	01a44433          	xor	s0,s0,s10
   1383e:	fff6c313          	not	t1,a3
   13842:	8df5                	and	a1,a1,a3
   13844:	4692                	lw	a3,4(sp)
   13846:	8c39                	xor	s0,s0,a4
   13848:	fff9c713          	not	a4,s3
   1384c:	01d77733          	and	a4,a4,t4
   13850:	00774733          	xor	a4,a4,t2
   13854:	01fdefb3          	or	t6,s11,t6
   13858:	fff3c813          	not	a6,t2
   1385c:	0186d393          	srli	t2,a3,0x18
   13860:	016fcfb3          	xor	t6,t6,s6
   13864:	015a6a33          	or	s4,s4,s5
   13868:	c61e                	sw	t2,12(sp)
   1386a:	8fa9                	xor	a5,a5,a0
   1386c:	0106d393          	srli	t2,a3,0x10
   13870:	014fc933          	xor	s2,t6,s4
   13874:	8fa1                	xor	a5,a5,s0
   13876:	c81e                	sw	t2,16(sp)
   13878:	0086d393          	srli	t2,a3,0x8
   1387c:	4682                	lw	a3,0(sp)
   1387e:	04b7ca13          	xori	s4,a5,75
   13882:	01864633          	xor	a2,a2,s8
   13886:	fff44893          	not	a7,s0
   1388a:	fff94f93          	not	t6,s2
   1388e:	fb47c793          	xori	a5,a5,-76
   13892:	00564633          	xor	a2,a2,t0
   13896:	0148f8b3          	and	a7,a7,s4
   1389a:	01387833          	and	a6,a6,s3
   1389e:	008fffb3          	and	t6,t6,s0
   138a2:	0057f7b3          	and	a5,a5,t0
   138a6:	00cfcfb3          	xor	t6,t6,a2
   138aa:	0128c8b3          	xor	a7,a7,s2
   138ae:	00984833          	xor	a6,a6,s1
   138b2:	00937333          	and	t1,t1,s1
   138b6:	8fa1                	xor	a5,a5,s0
   138b8:	ca1e                	sw	t2,20(sp)
   138ba:	0186d393          	srli	t2,a3,0x18
   138be:	0117c7b3          	xor	a5,a5,a7
   138c2:	01d34333          	xor	t1,t1,t4
   138c6:	01f8c8b3          	xor	a7,a7,t6
   138ca:	01074eb3          	xor	t4,a4,a6
   138ce:	cc1e                	sw	t2,24(sp)
   138d0:	01e84833          	xor	a6,a6,t5
   138d4:	0106d393          	srli	t2,a3,0x10
   138d8:	ce1e                	sw	t2,28(sp)
   138da:	0138dc13          	srli	s8,a7,0x13
   138de:	0086d393          	srli	t2,a3,0x8
   138e2:	00d81693          	slli	a3,a6,0xd
   138e6:	0135c5b3          	xor	a1,a1,s3
   138ea:	0186ec33          	or	s8,a3,s8
   138ee:	00d89993          	slli	s3,a7,0xd
   138f2:	01385693          	srli	a3,a6,0x13
   138f6:	00d9e9b3          	or	s3,s3,a3
   138fa:	00481a93          	slli	s5,a6,0x4
   138fe:	01c8d693          	srli	a3,a7,0x1c
   13902:	00daeab3          	or	s5,s5,a3
   13906:	01c85c93          	srli	s9,a6,0x1c
   1390a:	00489693          	slli	a3,a7,0x4
   1390e:	d01e                	sw	t2,32(sp)
   13910:	0196ecb3          	or	s9,a3,s9
   13914:	003e9393          	slli	t2,t4,0x3
   13918:	01d7d693          	srli	a3,a5,0x1d
   1391c:	0076e3b3          	or	t2,a3,t2
   13920:	fff2c513          	not	a0,t0
   13924:	00379693          	slli	a3,a5,0x3
   13928:	fff64e13          	not	t3,a2
   1392c:	d41e                	sw	t2,40(sp)
   1392e:	01ded393          	srli	t2,t4,0x1d
   13932:	00d3e3b3          	or	t2,t2,a3
   13936:	8d71                	and	a0,a0,a2
   13938:	012e7e33          	and	t3,t3,s2
   1393c:	01454533          	xor	a0,a0,s4
   13940:	005e4e33          	xor	t3,t3,t0
   13944:	d21e                	sw	t2,36(sp)
   13946:	019e9d13          	slli	s10,t4,0x19
   1394a:	0077d393          	srli	t2,a5,0x7
   1394e:	00ae4e33          	xor	t3,t3,a0
   13952:	00b34333          	xor	t1,t1,a1
   13956:	fff54513          	not	a0,a0
   1395a:	fff5c593          	not	a1,a1
   1395e:	01979b93          	slli	s7,a5,0x19
   13962:	01a3ed33          	or	s10,t2,s10
   13966:	007ed393          	srli	t2,t4,0x7
   1396a:	0173ebb3          	or	s7,t2,s7
   1396e:	00155713          	srli	a4,a0,0x1
   13972:	01f59393          	slli	t2,a1,0x1f
   13976:	0015d293          	srli	t0,a1,0x1
   1397a:	00e3e733          	or	a4,t2,a4
   1397e:	01f51393          	slli	t2,a0,0x1f
   13982:	0053e2b3          	or	t0,t2,t0
   13986:	00655b13          	srli	s6,a0,0x6
   1398a:	01a59393          	slli	t2,a1,0x1a
   1398e:	0065d693          	srli	a3,a1,0x6
   13992:	0163eb33          	or	s6,t2,s6
   13996:	01a51393          	slli	t2,a0,0x1a
   1399a:	00d3e3b3          	or	t2,t2,a3
   1399e:	d61e                	sw	t2,44(sp)
   139a0:	00ae5a13          	srli	s4,t3,0xa
   139a4:	01631393          	slli	t2,t1,0x16
   139a8:	0143ea33          	or	s4,t2,s4
   139ac:	00a35693          	srli	a3,t1,0xa
   139b0:	016e1393          	slli	t2,t3,0x16
   139b4:	00d3e3b3          	or	t2,t2,a3
   139b8:	d81e                	sw	t2,48(sp)
   139ba:	011e5693          	srli	a3,t3,0x11
   139be:	00f31393          	slli	t2,t1,0xf
   139c2:	00d3e3b3          	or	t2,t2,a3
   139c6:	01135413          	srli	s0,t1,0x11
   139ca:	00fe1693          	slli	a3,t3,0xf
   139ce:	8c55                	or	s0,s0,a3
   139d0:	007fd913          	srli	s2,t6,0x7
   139d4:	019f1693          	slli	a3,t5,0x19
   139d8:	0126e933          	or	s2,a3,s2
   139dc:	017f1d93          	slli	s11,t5,0x17
   139e0:	019f9693          	slli	a3,t6,0x19
   139e4:	007f5493          	srli	s1,t5,0x7
   139e8:	009fd613          	srli	a2,t6,0x9
   139ec:	01b66633          	or	a2,a2,s11
   139f0:	8cd5                	or	s1,s1,a3
   139f2:	017f9d93          	slli	s11,t6,0x17
   139f6:	009f5693          	srli	a3,t5,0x9
   139fa:	01b6e6b3          	or	a3,a3,s11
   139fe:	da36                	sw	a3,52(sp)
   13a00:	4da2                	lw	s11,8(sp)
   13a02:	4692                	lw	a3,4(sp)
   13a04:	0199ccb3          	xor	s9,s3,s9
   13a08:	015c4c33          	xor	s8,s8,s5
   13a0c:	00dd81a3          	sb	a3,3(s11)
   13a10:	4682                	lw	a3,0(sp)
   13a12:	007a43b3          	xor	t2,s4,t2
   13a16:	8cb1                	xor	s1,s1,a2
   13a18:	00dd83a3          	sb	a3,7(s11)
   13a1c:	46b2                	lw	a3,12(sp)
   13a1e:	011c4633          	xor	a2,s8,a7
   13a22:	008d8a93          	addi	s5,s11,8
   13a26:	00dd8023          	sb	a3,0(s11)
   13a2a:	46c2                	lw	a3,16(sp)
   13a2c:	5992                	lw	s3,36(sp)
   13a2e:	c032                	sw	a2,0(sp)
   13a30:	00dd80a3          	sb	a3,1(s11)
   13a34:	46d2                	lw	a3,20(sp)
   13a36:	0179cbb3          	xor	s7,s3,s7
   13a3a:	010cc633          	xor	a2,s9,a6
   13a3e:	00dd8123          	sb	a3,2(s11)
   13a42:	46e2                	lw	a3,24(sp)
   13a44:	01674733          	xor	a4,a4,s6
   13a48:	c232                	sw	a2,4(sp)
   13a4a:	00dd8223          	sb	a3,4(s11)
   13a4e:	46f2                	lw	a3,28(sp)
   13a50:	c456                	sw	s5,8(sp)
   13a52:	8f29                	xor	a4,a4,a0
   13a54:	00dd82a3          	sb	a3,5(s11)
   13a58:	5682                	lw	a3,32(sp)
   13a5a:	01c3c9b3          	xor	s3,t2,t3
   13a5e:	00dd8323          	sb	a3,6(s11)
   13a62:	56a2                	lw	a3,40(sp)
   13a64:	01a6cd33          	xor	s10,a3,s10
   13a68:	56b2                	lw	a3,44(sp)
   13a6a:	00d2c2b3          	xor	t0,t0,a3
   13a6e:	56c2                	lw	a3,48(sp)
   13a70:	00b2c5b3          	xor	a1,t0,a1
   13a74:	01e4c2b3          	xor	t0,s1,t5
   13a78:	0086ca33          	xor	s4,a3,s0
   13a7c:	56d2                	lw	a3,52(sp)
   13a7e:	00fbc433          	xor	s0,s7,a5
   13a82:	57e2                	lw	a5,56(sp)
   13a84:	00d946b3          	xor	a3,s2,a3
   13a88:	006a4633          	xor	a2,s4,t1
   13a8c:	01dd4933          	xor	s2,s10,t4
   13a90:	01f6cdb3          	xor	s11,a3,t6
   13a94:	80fa9063          	bne	s5,a5,12a94 <crypto_hash+0x28b4>
   13a98:	4492                	lw	s1,4(sp)
   13a9a:	4802                	lw	a6,0(sp)
   13a9c:	5472                	lw	s0,60(sp)
   13a9e:	0184d513          	srli	a0,s1,0x18
   13aa2:	0104d593          	srli	a1,s1,0x10
   13aa6:	0084d613          	srli	a2,s1,0x8
   13aaa:	01885693          	srli	a3,a6,0x18
   13aae:	01085713          	srli	a4,a6,0x10
   13ab2:	00885793          	srli	a5,a6,0x8
   13ab6:	00a40c23          	sb	a0,24(s0)
   13aba:	00b40ca3          	sb	a1,25(s0)
   13abe:	00c40d23          	sb	a2,26(s0)
   13ac2:	00940da3          	sb	s1,27(s0)
   13ac6:	00d40e23          	sb	a3,28(s0)
   13aca:	00e40ea3          	sb	a4,29(s0)
   13ace:	00f40f23          	sb	a5,30(s0)
   13ad2:	01040fa3          	sb	a6,31(s0)
   13ad6:	5436                	lw	s0,108(sp)
   13ad8:	54a6                	lw	s1,104(sp)
   13ada:	5916                	lw	s2,100(sp)
   13adc:	5986                	lw	s3,96(sp)
   13ade:	4a76                	lw	s4,92(sp)
   13ae0:	4ae6                	lw	s5,88(sp)
   13ae2:	4b56                	lw	s6,84(sp)
   13ae4:	4bc6                	lw	s7,80(sp)
   13ae6:	4c36                	lw	s8,76(sp)
   13ae8:	4ca6                	lw	s9,72(sp)
   13aea:	4d16                	lw	s10,68(sp)
   13aec:	4d86                	lw	s11,64(sp)
   13aee:	4501                	li	a0,0
   13af0:	6165                	addi	sp,sp,112
   13af2:	8082                	ret
   13af4:	44fd                	li	s1,31
   13af6:	8c91                	sub	s1,s1,a2
   13af8:	04000f93          	li	t6,64
   13afc:	009fdfb3          	srl	t6,t6,s1
   13b00:	08000493          	li	s1,128
   13b04:	00c49633          	sll	a2,s1,a2
   13b08:	8abfd06f          	j	113b2 <crypto_hash+0x11d2>
   13b0c:	4381                	li	t2,0
   13b0e:	4281                	li	t0,0
   13b10:	885fd06f          	j	11394 <crypto_hash+0x11b4>
   13b14:	479d                	li	a5,7
   13b16:	00c7f463          	bgeu	a5,a2,13b1e <crypto_hash+0x393e>
   13b1a:	eeefc06f          	j	10208 <crypto_hash+0x28>
   13b1e:	f94e27b7          	lui	a5,0xf94e2
   13b22:	863e                	mv	a2,a5
   13b24:	5388b4b7          	lui	s1,0x5388b
   13b28:	2c160613          	addi	a2,a2,705
   13b2c:	83b1a5b7          	lui	a1,0x83b1a
   13b30:	c432                	sw	a2,8(sp)
   13b32:	06648613          	addi	a2,s1,102 # 5388b066 <__BSS_END__+0x5386b47a>
   13b36:	d3258e37          	lui	t3,0xd3258
   13b3a:	aab8c437          	lui	s0,0xaab8c
   13b3e:	9a0ecc37          	lui	s8,0x9a0ec
   13b42:	29c46d37          	lui	s10,0x29c46
   13b46:	41d8ddb7          	lui	s11,0x41d8d
   13b4a:	a3134337          	lui	t1,0xa3134
   13b4e:	883528b7          	lui	a7,0x88352
   13b52:	93add537          	lui	a0,0x93add
   13b56:	f13e4eb7          	lui	t4,0xf13e4
   13b5a:	2c5206b7          	lui	a3,0x2c520
   13b5e:	0c402737          	lui	a4,0xc402
   13b62:	5ceccab7          	lui	s5,0x5cecc
   13b66:	77caea37          	lui	s4,0x77cae
   13b6a:	dfdba937          	lui	s2,0xdfdba
   13b6e:	a07b49b7          	lui	s3,0xa07b4
   13b72:	c0ae0f37          	lui	t5,0xc0ae0
   13b76:	738ec7b7          	lui	a5,0x738ec
   13b7a:	c032                	sw	a2,0(sp)
   13b7c:	dfe58613          	addi	a2,a1,-514 # 83b19dfe <__BSS_END__+0x83afa212>
   13b80:	54a2                	lw	s1,40(sp)
   13b82:	8e4e0e13          	addi	t3,t3,-1820 # d32578e4 <__BSS_END__+0xd3237cf8>
   13b86:	74c40413          	addi	s0,s0,1868 # aab8c74c <__BSS_END__+0xaab6cb60>
   13b8a:	677c0c13          	addi	s8,s8,1655 # 9a0ec677 <__BSS_END__+0x9a0cca8b>
   13b8e:	833d0d13          	addi	s10,s10,-1997 # 29c45833 <__BSS_END__+0x29c25c47>
   13b92:	effd8d93          	addi	s11,s11,-257 # 41d8ceff <__BSS_END__+0x41d6d313>
   13b96:	c232                	sw	a2,4(sp)
   13b98:	50530313          	addi	t1,t1,1285 # a3134505 <__BSS_END__+0xa3114919>
   13b9c:	81088893          	addi	a7,a7,-2032 # 88351810 <__BSS_END__+0x88331c24>
   13ba0:	fc350513          	addi	a0,a0,-61 # 93adcfc3 <__BSS_END__+0x93abd3d7>
   13ba4:	6c6e8e93          	addi	t4,t4,1734 # f13e46c6 <__BSS_END__+0xf13c4ada>
   13ba8:	06e1                	addi	a3,a3,24 # 2c520018 <__BSS_END__+0x2c50042c>
   13baa:	02170713          	addi	a4,a4,33 # c402021 <__BSS_END__+0xc3e2435>
   13bae:	afaa8a93          	addi	s5,s5,-1286 # 5cecbafa <__BSS_END__+0x5ceabf0e>
   13bb2:	7efa0a13          	addi	s4,s4,2031 # 77cae7ef <__BSS_END__+0x77c8ec03>
   13bb6:	52190913          	addi	s2,s2,1313 # dfdba521 <__BSS_END__+0xdfd9a935>
   13bba:	33698993          	addi	s3,s3,822 # a07b4336 <__BSS_END__+0xa079474a>
   13bbe:	fa7f0f13          	addi	t5,t5,-89 # c0adffa7 <__BSS_END__+0xc0ac03bb>
   13bc2:	38a78793          	addi	a5,a5,906 # 738ec38a <__BSS_END__+0x738cc79e>
   13bc6:	f64fd06f          	j	1132a <crypto_hash+0x114a>

00013bca <__fp_lock>:
   13bca:	4501                	li	a0,0
   13bcc:	8082                	ret

00013bce <stdio_exit_handler>:
   13bce:	0001f637          	lui	a2,0x1f
   13bd2:	65dd                	lui	a1,0x17
   13bd4:	0001f537          	lui	a0,0x1f
   13bd8:	1a060613          	addi	a2,a2,416 # 1f1a0 <__sglue>
   13bdc:	98c58593          	addi	a1,a1,-1652 # 1698c <_fclose_r>
   13be0:	1b050513          	addi	a0,a0,432 # 1f1b0 <_impure_data>
   13be4:	a485                	j	13e44 <_fwalk_sglue>

00013be6 <cleanup_stdio>:
   13be6:	414c                	lw	a1,4(a0)
   13be8:	1141                	addi	sp,sp,-16
   13bea:	c422                	sw	s0,8(sp)
   13bec:	c606                	sw	ra,12(sp)
   13bee:	f5c18793          	addi	a5,gp,-164 # 1f8fc <__sf>
   13bf2:	842a                	mv	s0,a0
   13bf4:	00f58463          	beq	a1,a5,13bfc <cleanup_stdio+0x16>
   13bf8:	595020ef          	jal	1698c <_fclose_r>
   13bfc:	440c                	lw	a1,8(s0)
   13bfe:	fc418793          	addi	a5,gp,-60 # 1f964 <__sf+0x68>
   13c02:	00f58563          	beq	a1,a5,13c0c <cleanup_stdio+0x26>
   13c06:	8522                	mv	a0,s0
   13c08:	585020ef          	jal	1698c <_fclose_r>
   13c0c:	444c                	lw	a1,12(s0)
   13c0e:	02c18793          	addi	a5,gp,44 # 1f9cc <__global_pointer$+0x2c>
   13c12:	00f58863          	beq	a1,a5,13c22 <cleanup_stdio+0x3c>
   13c16:	8522                	mv	a0,s0
   13c18:	4422                	lw	s0,8(sp)
   13c1a:	40b2                	lw	ra,12(sp)
   13c1c:	0141                	addi	sp,sp,16
   13c1e:	56f0206f          	j	1698c <_fclose_r>
   13c22:	40b2                	lw	ra,12(sp)
   13c24:	4422                	lw	s0,8(sp)
   13c26:	0141                	addi	sp,sp,16
   13c28:	8082                	ret

00013c2a <__fp_unlock>:
   13c2a:	4501                	li	a0,0
   13c2c:	8082                	ret

00013c2e <global_stdio_init.part.0>:
   13c2e:	1101                	addi	sp,sp,-32
   13c30:	67d1                	lui	a5,0x14
   13c32:	cc22                	sw	s0,24(sp)
   13c34:	bce78793          	addi	a5,a5,-1074 # 13bce <stdio_exit_handler>
   13c38:	f5c18413          	addi	s0,gp,-164 # 1f8fc <__sf>
   13c3c:	ce06                	sw	ra,28(sp)
   13c3e:	ca26                	sw	s1,20(sp)
   13c40:	c84a                	sw	s2,16(sp)
   13c42:	c64e                	sw	s3,12(sp)
   13c44:	c452                	sw	s4,8(sp)
   13c46:	f2f1a023          	sw	a5,-224(gp) # 1f8c0 <__stdio_exit_handler>
   13c4a:	4621                	li	a2,8
   13c4c:	4791                	li	a5,4
   13c4e:	4581                	li	a1,0
   13c50:	fb818513          	addi	a0,gp,-72 # 1f958 <__sf+0x5c>
   13c54:	c45c                	sw	a5,12(s0)
   13c56:	00042023          	sw	zero,0(s0)
   13c5a:	00042223          	sw	zero,4(s0)
   13c5e:	00042423          	sw	zero,8(s0)
   13c62:	06042223          	sw	zero,100(s0)
   13c66:	00042823          	sw	zero,16(s0)
   13c6a:	00042a23          	sw	zero,20(s0)
   13c6e:	00042c23          	sw	zero,24(s0)
   13c72:	2dbd                	jal	142f0 <memset>
   13c74:	67c1                	lui	a5,0x10
   13c76:	6a51                	lui	s4,0x14
   13c78:	69d1                	lui	s3,0x14
   13c7a:	6951                	lui	s2,0x14
   13c7c:	64d1                	lui	s1,0x14
   13c7e:	040a0a13          	addi	s4,s4,64 # 14040 <__sread>
   13c82:	07a98993          	addi	s3,s3,122 # 1407a <__swrite>
   13c86:	0ca90913          	addi	s2,s2,202 # 140ca <__sseek>
   13c8a:	11248493          	addi	s1,s1,274 # 14112 <__sclose>
   13c8e:	07a5                	addi	a5,a5,9 # 10009 <exit-0x8b>
   13c90:	4621                	li	a2,8
   13c92:	4581                	li	a1,0
   13c94:	02018513          	addi	a0,gp,32 # 1f9c0 <__global_pointer$+0x20>
   13c98:	03442023          	sw	s4,32(s0)
   13c9c:	03342223          	sw	s3,36(s0)
   13ca0:	03242423          	sw	s2,40(s0)
   13ca4:	d444                	sw	s1,44(s0)
   13ca6:	d87c                	sw	a5,116(s0)
   13ca8:	cc40                	sw	s0,28(s0)
   13caa:	06042423          	sw	zero,104(s0)
   13cae:	06042623          	sw	zero,108(s0)
   13cb2:	06042823          	sw	zero,112(s0)
   13cb6:	0c042623          	sw	zero,204(s0)
   13cba:	06042c23          	sw	zero,120(s0)
   13cbe:	06042e23          	sw	zero,124(s0)
   13cc2:	08042023          	sw	zero,128(s0)
   13cc6:	252d                	jal	142f0 <memset>
   13cc8:	000207b7          	lui	a5,0x20
   13ccc:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x426>
   13cce:	fc418713          	addi	a4,gp,-60 # 1f964 <__sf+0x68>
   13cd2:	4621                	li	a2,8
   13cd4:	4581                	li	a1,0
   13cd6:	08818513          	addi	a0,gp,136 # 1fa28 <__global_pointer$+0x88>
   13cda:	09442423          	sw	s4,136(s0)
   13cde:	09342623          	sw	s3,140(s0)
   13ce2:	09242823          	sw	s2,144(s0)
   13ce6:	08942a23          	sw	s1,148(s0)
   13cea:	0cf42e23          	sw	a5,220(s0)
   13cee:	08e42223          	sw	a4,132(s0)
   13cf2:	0c042823          	sw	zero,208(s0)
   13cf6:	0c042a23          	sw	zero,212(s0)
   13cfa:	0c042c23          	sw	zero,216(s0)
   13cfe:	12042a23          	sw	zero,308(s0)
   13d02:	0e042023          	sw	zero,224(s0)
   13d06:	0e042223          	sw	zero,228(s0)
   13d0a:	0e042423          	sw	zero,232(s0)
   13d0e:	23cd                	jal	142f0 <memset>
   13d10:	02c18793          	addi	a5,gp,44 # 1f9cc <__global_pointer$+0x2c>
   13d14:	0f442823          	sw	s4,240(s0)
   13d18:	0f342a23          	sw	s3,244(s0)
   13d1c:	0f242c23          	sw	s2,248(s0)
   13d20:	0e942e23          	sw	s1,252(s0)
   13d24:	40f2                	lw	ra,28(sp)
   13d26:	0ef42623          	sw	a5,236(s0)
   13d2a:	4462                	lw	s0,24(sp)
   13d2c:	44d2                	lw	s1,20(sp)
   13d2e:	4942                	lw	s2,16(sp)
   13d30:	49b2                	lw	s3,12(sp)
   13d32:	4a22                	lw	s4,8(sp)
   13d34:	6105                	addi	sp,sp,32
   13d36:	8082                	ret

00013d38 <__sfp>:
   13d38:	f201a783          	lw	a5,-224(gp) # 1f8c0 <__stdio_exit_handler>
   13d3c:	1101                	addi	sp,sp,-32
   13d3e:	c64e                	sw	s3,12(sp)
   13d40:	ce06                	sw	ra,28(sp)
   13d42:	cc22                	sw	s0,24(sp)
   13d44:	ca26                	sw	s1,20(sp)
   13d46:	c84a                	sw	s2,16(sp)
   13d48:	89aa                	mv	s3,a0
   13d4a:	c7d5                	beqz	a5,13df6 <__sfp+0xbe>
   13d4c:	0001f937          	lui	s2,0x1f
   13d50:	1a090913          	addi	s2,s2,416 # 1f1a0 <__sglue>
   13d54:	54fd                	li	s1,-1
   13d56:	00492783          	lw	a5,4(s2)
   13d5a:	00892403          	lw	s0,8(s2)
   13d5e:	17fd                	addi	a5,a5,-1
   13d60:	0007d763          	bgez	a5,13d6e <__sfp+0x36>
   13d64:	a8b9                	j	13dc2 <__sfp+0x8a>
   13d66:	06840413          	addi	s0,s0,104
   13d6a:	04978c63          	beq	a5,s1,13dc2 <__sfp+0x8a>
   13d6e:	00c41703          	lh	a4,12(s0)
   13d72:	17fd                	addi	a5,a5,-1
   13d74:	fb6d                	bnez	a4,13d66 <__sfp+0x2e>
   13d76:	77c1                	lui	a5,0xffff0
   13d78:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffd0415>
   13d7a:	c45c                	sw	a5,12(s0)
   13d7c:	06042223          	sw	zero,100(s0)
   13d80:	00042023          	sw	zero,0(s0)
   13d84:	00042423          	sw	zero,8(s0)
   13d88:	00042223          	sw	zero,4(s0)
   13d8c:	00042823          	sw	zero,16(s0)
   13d90:	00042a23          	sw	zero,20(s0)
   13d94:	00042c23          	sw	zero,24(s0)
   13d98:	4621                	li	a2,8
   13d9a:	4581                	li	a1,0
   13d9c:	05c40513          	addi	a0,s0,92
   13da0:	2b81                	jal	142f0 <memset>
   13da2:	02042823          	sw	zero,48(s0)
   13da6:	02042a23          	sw	zero,52(s0)
   13daa:	04042223          	sw	zero,68(s0)
   13dae:	04042423          	sw	zero,72(s0)
   13db2:	40f2                	lw	ra,28(sp)
   13db4:	8522                	mv	a0,s0
   13db6:	4462                	lw	s0,24(sp)
   13db8:	44d2                	lw	s1,20(sp)
   13dba:	4942                	lw	s2,16(sp)
   13dbc:	49b2                	lw	s3,12(sp)
   13dbe:	6105                	addi	sp,sp,32
   13dc0:	8082                	ret
   13dc2:	00092403          	lw	s0,0(s2)
   13dc6:	c019                	beqz	s0,13dcc <__sfp+0x94>
   13dc8:	8922                	mv	s2,s0
   13dca:	b771                	j	13d56 <__sfp+0x1e>
   13dcc:	1ac00593          	li	a1,428
   13dd0:	854e                	mv	a0,s3
   13dd2:	197000ef          	jal	14768 <_malloc_r>
   13dd6:	842a                	mv	s0,a0
   13dd8:	c10d                	beqz	a0,13dfa <__sfp+0xc2>
   13dda:	0531                	addi	a0,a0,12
   13ddc:	4791                	li	a5,4
   13dde:	00042023          	sw	zero,0(s0)
   13de2:	c05c                	sw	a5,4(s0)
   13de4:	c408                	sw	a0,8(s0)
   13de6:	1a000613          	li	a2,416
   13dea:	4581                	li	a1,0
   13dec:	2311                	jal	142f0 <memset>
   13dee:	00892023          	sw	s0,0(s2)
   13df2:	8922                	mv	s2,s0
   13df4:	b78d                	j	13d56 <__sfp+0x1e>
   13df6:	3d25                	jal	13c2e <global_stdio_init.part.0>
   13df8:	bf91                	j	13d4c <__sfp+0x14>
   13dfa:	00092023          	sw	zero,0(s2)
   13dfe:	47b1                	li	a5,12
   13e00:	00f9a023          	sw	a5,0(s3)
   13e04:	b77d                	j	13db2 <__sfp+0x7a>

00013e06 <__sinit>:
   13e06:	595c                	lw	a5,52(a0)
   13e08:	c391                	beqz	a5,13e0c <__sinit+0x6>
   13e0a:	8082                	ret
   13e0c:	f201a703          	lw	a4,-224(gp) # 1f8c0 <__stdio_exit_handler>
   13e10:	67d1                	lui	a5,0x14
   13e12:	be678793          	addi	a5,a5,-1050 # 13be6 <cleanup_stdio>
   13e16:	d95c                	sw	a5,52(a0)
   13e18:	fb6d                	bnez	a4,13e0a <__sinit+0x4>
   13e1a:	bd11                	j	13c2e <global_stdio_init.part.0>

00013e1c <__sfp_lock_acquire>:
   13e1c:	8082                	ret

00013e1e <__sfp_lock_release>:
   13e1e:	8082                	ret

00013e20 <__fp_lock_all>:
   13e20:	0001f637          	lui	a2,0x1f
   13e24:	65d1                	lui	a1,0x14
   13e26:	1a060613          	addi	a2,a2,416 # 1f1a0 <__sglue>
   13e2a:	bca58593          	addi	a1,a1,-1078 # 13bca <__fp_lock>
   13e2e:	4501                	li	a0,0
   13e30:	a811                	j	13e44 <_fwalk_sglue>

00013e32 <__fp_unlock_all>:
   13e32:	0001f637          	lui	a2,0x1f
   13e36:	65d1                	lui	a1,0x14
   13e38:	1a060613          	addi	a2,a2,416 # 1f1a0 <__sglue>
   13e3c:	c2a58593          	addi	a1,a1,-982 # 13c2a <__fp_unlock>
   13e40:	4501                	li	a0,0
   13e42:	a009                	j	13e44 <_fwalk_sglue>

00013e44 <_fwalk_sglue>:
   13e44:	7179                	addi	sp,sp,-48
   13e46:	d04a                	sw	s2,32(sp)
   13e48:	ce4e                	sw	s3,28(sp)
   13e4a:	cc52                	sw	s4,24(sp)
   13e4c:	ca56                	sw	s5,20(sp)
   13e4e:	c85a                	sw	s6,16(sp)
   13e50:	c65e                	sw	s7,12(sp)
   13e52:	d606                	sw	ra,44(sp)
   13e54:	d422                	sw	s0,40(sp)
   13e56:	d226                	sw	s1,36(sp)
   13e58:	8b2a                	mv	s6,a0
   13e5a:	8bae                	mv	s7,a1
   13e5c:	8ab2                	mv	s5,a2
   13e5e:	4a01                	li	s4,0
   13e60:	4985                	li	s3,1
   13e62:	597d                	li	s2,-1
   13e64:	004aa483          	lw	s1,4(s5)
   13e68:	008aa403          	lw	s0,8(s5)
   13e6c:	14fd                	addi	s1,s1,-1
   13e6e:	0204c463          	bltz	s1,13e96 <_fwalk_sglue+0x52>
   13e72:	00c45783          	lhu	a5,12(s0)
   13e76:	00f9fb63          	bgeu	s3,a5,13e8c <_fwalk_sglue+0x48>
   13e7a:	00e41783          	lh	a5,14(s0)
   13e7e:	85a2                	mv	a1,s0
   13e80:	855a                	mv	a0,s6
   13e82:	01278563          	beq	a5,s2,13e8c <_fwalk_sglue+0x48>
   13e86:	9b82                	jalr	s7
   13e88:	00aa6a33          	or	s4,s4,a0
   13e8c:	14fd                	addi	s1,s1,-1
   13e8e:	06840413          	addi	s0,s0,104
   13e92:	ff2490e3          	bne	s1,s2,13e72 <_fwalk_sglue+0x2e>
   13e96:	000aaa83          	lw	s5,0(s5)
   13e9a:	fc0a95e3          	bnez	s5,13e64 <_fwalk_sglue+0x20>
   13e9e:	50b2                	lw	ra,44(sp)
   13ea0:	5422                	lw	s0,40(sp)
   13ea2:	5492                	lw	s1,36(sp)
   13ea4:	5902                	lw	s2,32(sp)
   13ea6:	49f2                	lw	s3,28(sp)
   13ea8:	4ad2                	lw	s5,20(sp)
   13eaa:	4b42                	lw	s6,16(sp)
   13eac:	4bb2                	lw	s7,12(sp)
   13eae:	8552                	mv	a0,s4
   13eb0:	4a62                	lw	s4,24(sp)
   13eb2:	6145                	addi	sp,sp,48
   13eb4:	8082                	ret

00013eb6 <_fwrite_r>:
   13eb6:	715d                	addi	sp,sp,-80
   13eb8:	de4e                	sw	s3,60(sp)
   13eba:	02c689b3          	mul	s3,a3,a2
   13ebe:	087c                	addi	a5,sp,28
   13ec0:	d23e                	sw	a5,36(sp)
   13ec2:	4785                	li	a5,1
   13ec4:	c4a2                	sw	s0,72(sp)
   13ec6:	c2a6                	sw	s1,68(sp)
   13ec8:	c0ca                	sw	s2,64(sp)
   13eca:	ce2e                	sw	a1,28(sp)
   13ecc:	c686                	sw	ra,76(sp)
   13ece:	d43e                	sw	a5,40(sp)
   13ed0:	d04e                	sw	s3,32(sp)
   13ed2:	d64e                	sw	s3,44(sp)
   13ed4:	8932                	mv	s2,a2
   13ed6:	84b6                	mv	s1,a3
   13ed8:	842a                	mv	s0,a0
   13eda:	85ba                	mv	a1,a4
   13edc:	c119                	beqz	a0,13ee2 <_fwrite_r+0x2c>
   13ede:	595c                	lw	a5,52(a0)
   13ee0:	cfb9                	beqz	a5,13f3e <_fwrite_r+0x88>
   13ee2:	00c59703          	lh	a4,12(a1)
   13ee6:	51fc                	lw	a5,100(a1)
   13ee8:	01271693          	slli	a3,a4,0x12
   13eec:	0006ca63          	bltz	a3,13f00 <_fwrite_r+0x4a>
   13ef0:	76f9                	lui	a3,0xffffe
   13ef2:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffde413>
   13ef4:	6609                	lui	a2,0x2
   13ef6:	8f51                	or	a4,a4,a2
   13ef8:	8ff5                	and	a5,a5,a3
   13efa:	00e59623          	sh	a4,12(a1)
   13efe:	d1fc                	sw	a5,100(a1)
   13f00:	01279713          	slli	a4,a5,0x12
   13f04:	4501                	li	a0,0
   13f06:	00075963          	bgez	a4,13f18 <_fwrite_r+0x62>
   13f0a:	40b6                	lw	ra,76(sp)
   13f0c:	4426                	lw	s0,72(sp)
   13f0e:	4496                	lw	s1,68(sp)
   13f10:	4906                	lw	s2,64(sp)
   13f12:	59f2                	lw	s3,60(sp)
   13f14:	6161                	addi	sp,sp,80
   13f16:	8082                	ret
   13f18:	1050                	addi	a2,sp,36
   13f1a:	8522                	mv	a0,s0
   13f1c:	53d020ef          	jal	16c58 <__sfvwrite_r>
   13f20:	87aa                	mv	a5,a0
   13f22:	8526                	mv	a0,s1
   13f24:	d3fd                	beqz	a5,13f0a <_fwrite_r+0x54>
   13f26:	57b2                	lw	a5,44(sp)
   13f28:	40b6                	lw	ra,76(sp)
   13f2a:	4426                	lw	s0,72(sp)
   13f2c:	40f989b3          	sub	s3,s3,a5
   13f30:	0329d533          	divu	a0,s3,s2
   13f34:	4496                	lw	s1,68(sp)
   13f36:	4906                	lw	s2,64(sp)
   13f38:	59f2                	lw	s3,60(sp)
   13f3a:	6161                	addi	sp,sp,80
   13f3c:	8082                	ret
   13f3e:	c63a                	sw	a4,12(sp)
   13f40:	35d9                	jal	13e06 <__sinit>
   13f42:	45b2                	lw	a1,12(sp)
   13f44:	bf79                	j	13ee2 <_fwrite_r+0x2c>

00013f46 <fwrite>:
   13f46:	715d                	addi	sp,sp,-80
   13f48:	c0ca                	sw	s2,64(sp)
   13f4a:	02c58933          	mul	s2,a1,a2
   13f4e:	de4e                	sw	s3,60(sp)
   13f50:	f141a983          	lw	s3,-236(gp) # 1f8b4 <_impure_ptr>
   13f54:	087c                	addi	a5,sp,28
   13f56:	d23e                	sw	a5,36(sp)
   13f58:	4785                	li	a5,1
   13f5a:	c4a2                	sw	s0,72(sp)
   13f5c:	c2a6                	sw	s1,68(sp)
   13f5e:	c686                	sw	ra,76(sp)
   13f60:	ce2a                	sw	a0,28(sp)
   13f62:	d43e                	sw	a5,40(sp)
   13f64:	d04a                	sw	s2,32(sp)
   13f66:	d64a                	sw	s2,44(sp)
   13f68:	84ae                	mv	s1,a1
   13f6a:	8432                	mv	s0,a2
   13f6c:	85b6                	mv	a1,a3
   13f6e:	00098563          	beqz	s3,13f78 <fwrite+0x32>
   13f72:	0349a783          	lw	a5,52(s3)
   13f76:	cfb9                	beqz	a5,13fd4 <fwrite+0x8e>
   13f78:	00c59703          	lh	a4,12(a1)
   13f7c:	51fc                	lw	a5,100(a1)
   13f7e:	01271693          	slli	a3,a4,0x12
   13f82:	0006ca63          	bltz	a3,13f96 <fwrite+0x50>
   13f86:	76f9                	lui	a3,0xffffe
   13f88:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffde413>
   13f8a:	6609                	lui	a2,0x2
   13f8c:	8f51                	or	a4,a4,a2
   13f8e:	8ff5                	and	a5,a5,a3
   13f90:	00e59623          	sh	a4,12(a1)
   13f94:	d1fc                	sw	a5,100(a1)
   13f96:	01279713          	slli	a4,a5,0x12
   13f9a:	4501                	li	a0,0
   13f9c:	00075963          	bgez	a4,13fae <fwrite+0x68>
   13fa0:	40b6                	lw	ra,76(sp)
   13fa2:	4426                	lw	s0,72(sp)
   13fa4:	4496                	lw	s1,68(sp)
   13fa6:	4906                	lw	s2,64(sp)
   13fa8:	59f2                	lw	s3,60(sp)
   13faa:	6161                	addi	sp,sp,80
   13fac:	8082                	ret
   13fae:	1050                	addi	a2,sp,36
   13fb0:	854e                	mv	a0,s3
   13fb2:	4a7020ef          	jal	16c58 <__sfvwrite_r>
   13fb6:	87aa                	mv	a5,a0
   13fb8:	8522                	mv	a0,s0
   13fba:	d3fd                	beqz	a5,13fa0 <fwrite+0x5a>
   13fbc:	57b2                	lw	a5,44(sp)
   13fbe:	40b6                	lw	ra,76(sp)
   13fc0:	4426                	lw	s0,72(sp)
   13fc2:	40f90933          	sub	s2,s2,a5
   13fc6:	02995533          	divu	a0,s2,s1
   13fca:	59f2                	lw	s3,60(sp)
   13fcc:	4496                	lw	s1,68(sp)
   13fce:	4906                	lw	s2,64(sp)
   13fd0:	6161                	addi	sp,sp,80
   13fd2:	8082                	ret
   13fd4:	854e                	mv	a0,s3
   13fd6:	c636                	sw	a3,12(sp)
   13fd8:	353d                	jal	13e06 <__sinit>
   13fda:	45b2                	lw	a1,12(sp)
   13fdc:	bf71                	j	13f78 <fwrite+0x32>

00013fde <_printf_r>:
   13fde:	7139                	addi	sp,sp,-64
   13fe0:	d432                	sw	a2,40(sp)
   13fe2:	d636                	sw	a3,44(sp)
   13fe4:	d83a                	sw	a4,48(sp)
   13fe6:	da3e                	sw	a5,52(sp)
   13fe8:	dc42                	sw	a6,56(sp)
   13fea:	de46                	sw	a7,60(sp)
   13fec:	862e                	mv	a2,a1
   13fee:	450c                	lw	a1,8(a0)
   13ff0:	1034                	addi	a3,sp,40
   13ff2:	ce06                	sw	ra,28(sp)
   13ff4:	c636                	sw	a3,12(sp)
   13ff6:	521000ef          	jal	14d16 <_vfprintf_r>
   13ffa:	40f2                	lw	ra,28(sp)
   13ffc:	6121                	addi	sp,sp,64
   13ffe:	8082                	ret

00014000 <printf>:
   14000:	f141a303          	lw	t1,-236(gp) # 1f8b4 <_impure_ptr>
   14004:	7139                	addi	sp,sp,-64
   14006:	d432                	sw	a2,40(sp)
   14008:	d636                	sw	a3,44(sp)
   1400a:	d22e                	sw	a1,36(sp)
   1400c:	d83a                	sw	a4,48(sp)
   1400e:	da3e                	sw	a5,52(sp)
   14010:	dc42                	sw	a6,56(sp)
   14012:	de46                	sw	a7,60(sp)
   14014:	00832583          	lw	a1,8(t1)
   14018:	1054                	addi	a3,sp,36
   1401a:	862a                	mv	a2,a0
   1401c:	851a                	mv	a0,t1
   1401e:	ce06                	sw	ra,28(sp)
   14020:	c636                	sw	a3,12(sp)
   14022:	4f5000ef          	jal	14d16 <_vfprintf_r>
   14026:	40f2                	lw	ra,28(sp)
   14028:	6121                	addi	sp,sp,64
   1402a:	8082                	ret

0001402c <_putchar_r>:
   1402c:	4510                	lw	a2,8(a0)
   1402e:	7730206f          	j	16fa0 <_putc_r>

00014032 <putchar>:
   14032:	f141a783          	lw	a5,-236(gp) # 1f8b4 <_impure_ptr>
   14036:	85aa                	mv	a1,a0
   14038:	4790                	lw	a2,8(a5)
   1403a:	853e                	mv	a0,a5
   1403c:	7650206f          	j	16fa0 <_putc_r>

00014040 <__sread>:
   14040:	1141                	addi	sp,sp,-16
   14042:	c422                	sw	s0,8(sp)
   14044:	842e                	mv	s0,a1
   14046:	00e59583          	lh	a1,14(a1)
   1404a:	c606                	sw	ra,12(sp)
   1404c:	2a6d                	jal	14206 <_read_r>
   1404e:	00054963          	bltz	a0,14060 <__sread+0x20>
   14052:	483c                	lw	a5,80(s0)
   14054:	40b2                	lw	ra,12(sp)
   14056:	97aa                	add	a5,a5,a0
   14058:	c83c                	sw	a5,80(s0)
   1405a:	4422                	lw	s0,8(sp)
   1405c:	0141                	addi	sp,sp,16
   1405e:	8082                	ret
   14060:	00c45783          	lhu	a5,12(s0)
   14064:	777d                	lui	a4,0xfffff
   14066:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffdf413>
   14068:	8ff9                	and	a5,a5,a4
   1406a:	40b2                	lw	ra,12(sp)
   1406c:	00f41623          	sh	a5,12(s0)
   14070:	4422                	lw	s0,8(sp)
   14072:	0141                	addi	sp,sp,16
   14074:	8082                	ret

00014076 <__seofread>:
   14076:	4501                	li	a0,0
   14078:	8082                	ret

0001407a <__swrite>:
   1407a:	00c59783          	lh	a5,12(a1)
   1407e:	1101                	addi	sp,sp,-32
   14080:	cc22                	sw	s0,24(sp)
   14082:	ca26                	sw	s1,20(sp)
   14084:	c84a                	sw	s2,16(sp)
   14086:	c64e                	sw	s3,12(sp)
   14088:	ce06                	sw	ra,28(sp)
   1408a:	1007f713          	andi	a4,a5,256
   1408e:	842e                	mv	s0,a1
   14090:	84aa                	mv	s1,a0
   14092:	8932                	mv	s2,a2
   14094:	89b6                	mv	s3,a3
   14096:	e315                	bnez	a4,140ba <__swrite+0x40>
   14098:	777d                	lui	a4,0xfffff
   1409a:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffdf413>
   1409c:	8ff9                	and	a5,a5,a4
   1409e:	00e41583          	lh	a1,14(s0)
   140a2:	00f41623          	sh	a5,12(s0)
   140a6:	4462                	lw	s0,24(sp)
   140a8:	40f2                	lw	ra,28(sp)
   140aa:	86ce                	mv	a3,s3
   140ac:	864a                	mv	a2,s2
   140ae:	49b2                	lw	s3,12(sp)
   140b0:	4942                	lw	s2,16(sp)
   140b2:	8526                	mv	a0,s1
   140b4:	44d2                	lw	s1,20(sp)
   140b6:	6105                	addi	sp,sp,32
   140b8:	a269                	j	14242 <_write_r>
   140ba:	00e59583          	lh	a1,14(a1)
   140be:	4689                	li	a3,2
   140c0:	4601                	li	a2,0
   140c2:	2221                	jal	141ca <_lseek_r>
   140c4:	00c41783          	lh	a5,12(s0)
   140c8:	bfc1                	j	14098 <__swrite+0x1e>

000140ca <__sseek>:
   140ca:	1141                	addi	sp,sp,-16
   140cc:	c422                	sw	s0,8(sp)
   140ce:	842e                	mv	s0,a1
   140d0:	00e59583          	lh	a1,14(a1)
   140d4:	c606                	sw	ra,12(sp)
   140d6:	28d5                	jal	141ca <_lseek_r>
   140d8:	57fd                	li	a5,-1
   140da:	00f50f63          	beq	a0,a5,140f8 <__sseek+0x2e>
   140de:	00c45783          	lhu	a5,12(s0)
   140e2:	6705                	lui	a4,0x1
   140e4:	40b2                	lw	ra,12(sp)
   140e6:	8fd9                	or	a5,a5,a4
   140e8:	07c2                	slli	a5,a5,0x10
   140ea:	87c1                	srai	a5,a5,0x10
   140ec:	c828                	sw	a0,80(s0)
   140ee:	00f41623          	sh	a5,12(s0)
   140f2:	4422                	lw	s0,8(sp)
   140f4:	0141                	addi	sp,sp,16
   140f6:	8082                	ret
   140f8:	00c45783          	lhu	a5,12(s0)
   140fc:	777d                	lui	a4,0xfffff
   140fe:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffdf413>
   14100:	8ff9                	and	a5,a5,a4
   14102:	07c2                	slli	a5,a5,0x10
   14104:	87c1                	srai	a5,a5,0x10
   14106:	40b2                	lw	ra,12(sp)
   14108:	00f41623          	sh	a5,12(s0)
   1410c:	4422                	lw	s0,8(sp)
   1410e:	0141                	addi	sp,sp,16
   14110:	8082                	ret

00014112 <__sclose>:
   14112:	00e59583          	lh	a1,14(a1)
   14116:	a009                	j	14118 <_close_r>

00014118 <_close_r>:
   14118:	1141                	addi	sp,sp,-16
   1411a:	c422                	sw	s0,8(sp)
   1411c:	c226                	sw	s1,4(sp)
   1411e:	842a                	mv	s0,a0
   14120:	852e                	mv	a0,a1
   14122:	c606                	sw	ra,12(sp)
   14124:	f201a223          	sw	zero,-220(gp) # 1f8c4 <errno>
   14128:	102070ef          	jal	1b22a <_close>
   1412c:	57fd                	li	a5,-1
   1412e:	00f50763          	beq	a0,a5,1413c <_close_r+0x24>
   14132:	40b2                	lw	ra,12(sp)
   14134:	4422                	lw	s0,8(sp)
   14136:	4492                	lw	s1,4(sp)
   14138:	0141                	addi	sp,sp,16
   1413a:	8082                	ret
   1413c:	f241a783          	lw	a5,-220(gp) # 1f8c4 <errno>
   14140:	dbed                	beqz	a5,14132 <_close_r+0x1a>
   14142:	40b2                	lw	ra,12(sp)
   14144:	c01c                	sw	a5,0(s0)
   14146:	4422                	lw	s0,8(sp)
   14148:	4492                	lw	s1,4(sp)
   1414a:	0141                	addi	sp,sp,16
   1414c:	8082                	ret

0001414e <_reclaim_reent>:
   1414e:	f141a783          	lw	a5,-236(gp) # 1f8b4 <_impure_ptr>
   14152:	06a78b63          	beq	a5,a0,141c8 <_reclaim_reent+0x7a>
   14156:	416c                	lw	a1,68(a0)
   14158:	1101                	addi	sp,sp,-32
   1415a:	ca26                	sw	s1,20(sp)
   1415c:	ce06                	sw	ra,28(sp)
   1415e:	cc22                	sw	s0,24(sp)
   14160:	84aa                	mv	s1,a0
   14162:	c59d                	beqz	a1,14190 <_reclaim_reent+0x42>
   14164:	c84a                	sw	s2,16(sp)
   14166:	c64e                	sw	s3,12(sp)
   14168:	4901                	li	s2,0
   1416a:	08000993          	li	s3,128
   1416e:	012587b3          	add	a5,a1,s2
   14172:	4380                	lw	s0,0(a5)
   14174:	c419                	beqz	s0,14182 <_reclaim_reent+0x34>
   14176:	85a2                	mv	a1,s0
   14178:	4000                	lw	s0,0(s0)
   1417a:	8526                	mv	a0,s1
   1417c:	26d1                	jal	14540 <_free_r>
   1417e:	fc65                	bnez	s0,14176 <_reclaim_reent+0x28>
   14180:	40ec                	lw	a1,68(s1)
   14182:	0911                	addi	s2,s2,4
   14184:	ff3915e3          	bne	s2,s3,1416e <_reclaim_reent+0x20>
   14188:	8526                	mv	a0,s1
   1418a:	2e5d                	jal	14540 <_free_r>
   1418c:	4942                	lw	s2,16(sp)
   1418e:	49b2                	lw	s3,12(sp)
   14190:	5c8c                	lw	a1,56(s1)
   14192:	c199                	beqz	a1,14198 <_reclaim_reent+0x4a>
   14194:	8526                	mv	a0,s1
   14196:	266d                	jal	14540 <_free_r>
   14198:	40a0                	lw	s0,64(s1)
   1419a:	c411                	beqz	s0,141a6 <_reclaim_reent+0x58>
   1419c:	85a2                	mv	a1,s0
   1419e:	4000                	lw	s0,0(s0)
   141a0:	8526                	mv	a0,s1
   141a2:	2e79                	jal	14540 <_free_r>
   141a4:	fc65                	bnez	s0,1419c <_reclaim_reent+0x4e>
   141a6:	44ec                	lw	a1,76(s1)
   141a8:	c199                	beqz	a1,141ae <_reclaim_reent+0x60>
   141aa:	8526                	mv	a0,s1
   141ac:	2e51                	jal	14540 <_free_r>
   141ae:	58dc                	lw	a5,52(s1)
   141b0:	c799                	beqz	a5,141be <_reclaim_reent+0x70>
   141b2:	4462                	lw	s0,24(sp)
   141b4:	40f2                	lw	ra,28(sp)
   141b6:	8526                	mv	a0,s1
   141b8:	44d2                	lw	s1,20(sp)
   141ba:	6105                	addi	sp,sp,32
   141bc:	8782                	jr	a5
   141be:	40f2                	lw	ra,28(sp)
   141c0:	4462                	lw	s0,24(sp)
   141c2:	44d2                	lw	s1,20(sp)
   141c4:	6105                	addi	sp,sp,32
   141c6:	8082                	ret
   141c8:	8082                	ret

000141ca <_lseek_r>:
   141ca:	1141                	addi	sp,sp,-16
   141cc:	872e                	mv	a4,a1
   141ce:	c422                	sw	s0,8(sp)
   141d0:	c226                	sw	s1,4(sp)
   141d2:	85b2                	mv	a1,a2
   141d4:	842a                	mv	s0,a0
   141d6:	8636                	mv	a2,a3
   141d8:	853a                	mv	a0,a4
   141da:	c606                	sw	ra,12(sp)
   141dc:	f201a223          	sw	zero,-220(gp) # 1f8c4 <errno>
   141e0:	10e070ef          	jal	1b2ee <_lseek>
   141e4:	57fd                	li	a5,-1
   141e6:	00f50763          	beq	a0,a5,141f4 <_lseek_r+0x2a>
   141ea:	40b2                	lw	ra,12(sp)
   141ec:	4422                	lw	s0,8(sp)
   141ee:	4492                	lw	s1,4(sp)
   141f0:	0141                	addi	sp,sp,16
   141f2:	8082                	ret
   141f4:	f241a783          	lw	a5,-220(gp) # 1f8c4 <errno>
   141f8:	dbed                	beqz	a5,141ea <_lseek_r+0x20>
   141fa:	40b2                	lw	ra,12(sp)
   141fc:	c01c                	sw	a5,0(s0)
   141fe:	4422                	lw	s0,8(sp)
   14200:	4492                	lw	s1,4(sp)
   14202:	0141                	addi	sp,sp,16
   14204:	8082                	ret

00014206 <_read_r>:
   14206:	1141                	addi	sp,sp,-16
   14208:	872e                	mv	a4,a1
   1420a:	c422                	sw	s0,8(sp)
   1420c:	c226                	sw	s1,4(sp)
   1420e:	85b2                	mv	a1,a2
   14210:	842a                	mv	s0,a0
   14212:	8636                	mv	a2,a3
   14214:	853a                	mv	a0,a4
   14216:	c606                	sw	ra,12(sp)
   14218:	f201a223          	sw	zero,-220(gp) # 1f8c4 <errno>
   1421c:	0fe070ef          	jal	1b31a <_read>
   14220:	57fd                	li	a5,-1
   14222:	00f50763          	beq	a0,a5,14230 <_read_r+0x2a>
   14226:	40b2                	lw	ra,12(sp)
   14228:	4422                	lw	s0,8(sp)
   1422a:	4492                	lw	s1,4(sp)
   1422c:	0141                	addi	sp,sp,16
   1422e:	8082                	ret
   14230:	f241a783          	lw	a5,-220(gp) # 1f8c4 <errno>
   14234:	dbed                	beqz	a5,14226 <_read_r+0x20>
   14236:	40b2                	lw	ra,12(sp)
   14238:	c01c                	sw	a5,0(s0)
   1423a:	4422                	lw	s0,8(sp)
   1423c:	4492                	lw	s1,4(sp)
   1423e:	0141                	addi	sp,sp,16
   14240:	8082                	ret

00014242 <_write_r>:
   14242:	1141                	addi	sp,sp,-16
   14244:	872e                	mv	a4,a1
   14246:	c422                	sw	s0,8(sp)
   14248:	c226                	sw	s1,4(sp)
   1424a:	85b2                	mv	a1,a2
   1424c:	842a                	mv	s0,a0
   1424e:	8636                	mv	a2,a3
   14250:	853a                	mv	a0,a4
   14252:	c606                	sw	ra,12(sp)
   14254:	f201a223          	sw	zero,-220(gp) # 1f8c4 <errno>
   14258:	142070ef          	jal	1b39a <_write>
   1425c:	57fd                	li	a5,-1
   1425e:	00f50763          	beq	a0,a5,1426c <_write_r+0x2a>
   14262:	40b2                	lw	ra,12(sp)
   14264:	4422                	lw	s0,8(sp)
   14266:	4492                	lw	s1,4(sp)
   14268:	0141                	addi	sp,sp,16
   1426a:	8082                	ret
   1426c:	f241a783          	lw	a5,-220(gp) # 1f8c4 <errno>
   14270:	dbed                	beqz	a5,14262 <_write_r+0x20>
   14272:	40b2                	lw	ra,12(sp)
   14274:	c01c                	sw	a5,0(s0)
   14276:	4422                	lw	s0,8(sp)
   14278:	4492                	lw	s1,4(sp)
   1427a:	0141                	addi	sp,sp,16
   1427c:	8082                	ret

0001427e <__libc_init_array>:
   1427e:	1141                	addi	sp,sp,-16
   14280:	c422                	sw	s0,8(sp)
   14282:	0001f7b7          	lui	a5,0x1f
   14286:	0001f437          	lui	s0,0x1f
   1428a:	c04a                	sw	s2,0(sp)
   1428c:	19478793          	addi	a5,a5,404 # 1f194 <__init_array_start>
   14290:	19440713          	addi	a4,s0,404 # 1f194 <__init_array_start>
   14294:	c606                	sw	ra,12(sp)
   14296:	c226                	sw	s1,4(sp)
   14298:	40e78933          	sub	s2,a5,a4
   1429c:	00e78d63          	beq	a5,a4,142b6 <__libc_init_array+0x38>
   142a0:	40295913          	srai	s2,s2,0x2
   142a4:	19440413          	addi	s0,s0,404
   142a8:	4481                	li	s1,0
   142aa:	401c                	lw	a5,0(s0)
   142ac:	0485                	addi	s1,s1,1
   142ae:	0411                	addi	s0,s0,4
   142b0:	9782                	jalr	a5
   142b2:	ff24ece3          	bltu	s1,s2,142aa <__libc_init_array+0x2c>
   142b6:	0001f437          	lui	s0,0x1f
   142ba:	0001f7b7          	lui	a5,0x1f
   142be:	19c78793          	addi	a5,a5,412 # 1f19c <__do_global_dtors_aux_fini_array_entry>
   142c2:	19440713          	addi	a4,s0,404 # 1f194 <__init_array_start>
   142c6:	40e78933          	sub	s2,a5,a4
   142ca:	40295913          	srai	s2,s2,0x2
   142ce:	00e78b63          	beq	a5,a4,142e4 <__libc_init_array+0x66>
   142d2:	19440413          	addi	s0,s0,404
   142d6:	4481                	li	s1,0
   142d8:	401c                	lw	a5,0(s0)
   142da:	0485                	addi	s1,s1,1
   142dc:	0411                	addi	s0,s0,4
   142de:	9782                	jalr	a5
   142e0:	ff24ece3          	bltu	s1,s2,142d8 <__libc_init_array+0x5a>
   142e4:	40b2                	lw	ra,12(sp)
   142e6:	4422                	lw	s0,8(sp)
   142e8:	4492                	lw	s1,4(sp)
   142ea:	4902                	lw	s2,0(sp)
   142ec:	0141                	addi	sp,sp,16
   142ee:	8082                	ret

000142f0 <memset>:
   142f0:	433d                	li	t1,15
   142f2:	872a                	mv	a4,a0
   142f4:	02c37363          	bgeu	t1,a2,1431a <memset+0x2a>
   142f8:	00f77793          	andi	a5,a4,15
   142fc:	efbd                	bnez	a5,1437a <memset+0x8a>
   142fe:	e5ad                	bnez	a1,14368 <memset+0x78>
   14300:	ff067693          	andi	a3,a2,-16
   14304:	8a3d                	andi	a2,a2,15
   14306:	96ba                	add	a3,a3,a4
   14308:	c30c                	sw	a1,0(a4)
   1430a:	c34c                	sw	a1,4(a4)
   1430c:	c70c                	sw	a1,8(a4)
   1430e:	c74c                	sw	a1,12(a4)
   14310:	0741                	addi	a4,a4,16
   14312:	fed76be3          	bltu	a4,a3,14308 <memset+0x18>
   14316:	e211                	bnez	a2,1431a <memset+0x2a>
   14318:	8082                	ret
   1431a:	40c306b3          	sub	a3,t1,a2
   1431e:	068a                	slli	a3,a3,0x2
   14320:	00000297          	auipc	t0,0x0
   14324:	9696                	add	a3,a3,t0
   14326:	00a68067          	jr	10(a3)
   1432a:	00b70723          	sb	a1,14(a4)
   1432e:	00b706a3          	sb	a1,13(a4)
   14332:	00b70623          	sb	a1,12(a4)
   14336:	00b705a3          	sb	a1,11(a4)
   1433a:	00b70523          	sb	a1,10(a4)
   1433e:	00b704a3          	sb	a1,9(a4)
   14342:	00b70423          	sb	a1,8(a4)
   14346:	00b703a3          	sb	a1,7(a4)
   1434a:	00b70323          	sb	a1,6(a4)
   1434e:	00b702a3          	sb	a1,5(a4)
   14352:	00b70223          	sb	a1,4(a4)
   14356:	00b701a3          	sb	a1,3(a4)
   1435a:	00b70123          	sb	a1,2(a4)
   1435e:	00b700a3          	sb	a1,1(a4)
   14362:	00b70023          	sb	a1,0(a4)
   14366:	8082                	ret
   14368:	0ff5f593          	zext.b	a1,a1
   1436c:	00859693          	slli	a3,a1,0x8
   14370:	8dd5                	or	a1,a1,a3
   14372:	01059693          	slli	a3,a1,0x10
   14376:	8dd5                	or	a1,a1,a3
   14378:	b761                	j	14300 <memset+0x10>
   1437a:	00279693          	slli	a3,a5,0x2
   1437e:	00000297          	auipc	t0,0x0
   14382:	9696                	add	a3,a3,t0
   14384:	8286                	mv	t0,ra
   14386:	fa8680e7          	jalr	-88(a3)
   1438a:	8096                	mv	ra,t0
   1438c:	17c1                	addi	a5,a5,-16
   1438e:	8f1d                	sub	a4,a4,a5
   14390:	963e                	add	a2,a2,a5
   14392:	f8c374e3          	bgeu	t1,a2,1431a <memset+0x2a>
   14396:	b7a5                	j	142fe <memset+0xe>

00014398 <__call_exitprocs>:
   14398:	7179                	addi	sp,sp,-48
   1439a:	cc52                	sw	s4,24(sp)
   1439c:	d04a                	sw	s2,32(sp)
   1439e:	f281a903          	lw	s2,-216(gp) # 1f8c8 <__atexit>
   143a2:	d606                	sw	ra,44(sp)
   143a4:	06090c63          	beqz	s2,1441c <__call_exitprocs+0x84>
   143a8:	ce4e                	sw	s3,28(sp)
   143aa:	ca56                	sw	s5,20(sp)
   143ac:	c85a                	sw	s6,16(sp)
   143ae:	c65e                	sw	s7,12(sp)
   143b0:	d422                	sw	s0,40(sp)
   143b2:	d226                	sw	s1,36(sp)
   143b4:	c462                	sw	s8,8(sp)
   143b6:	8b2a                	mv	s6,a0
   143b8:	8bae                	mv	s7,a1
   143ba:	59fd                	li	s3,-1
   143bc:	4a85                	li	s5,1
   143be:	00492483          	lw	s1,4(s2)
   143c2:	fff48413          	addi	s0,s1,-1
   143c6:	04044463          	bltz	s0,1440e <__call_exitprocs+0x76>
   143ca:	048a                	slli	s1,s1,0x2
   143cc:	94ca                	add	s1,s1,s2
   143ce:	040b9c63          	bnez	s7,14426 <__call_exitprocs+0x8e>
   143d2:	00492783          	lw	a5,4(s2)
   143d6:	40d4                	lw	a3,4(s1)
   143d8:	17fd                	addi	a5,a5,-1
   143da:	08878063          	beq	a5,s0,1445a <__call_exitprocs+0xc2>
   143de:	0004a223          	sw	zero,4(s1)
   143e2:	c295                	beqz	a3,14406 <__call_exitprocs+0x6e>
   143e4:	18892783          	lw	a5,392(s2)
   143e8:	008a9733          	sll	a4,s5,s0
   143ec:	00492c03          	lw	s8,4(s2)
   143f0:	8ff9                	and	a5,a5,a4
   143f2:	e3b9                	bnez	a5,14438 <__call_exitprocs+0xa0>
   143f4:	9682                	jalr	a3
   143f6:	00492703          	lw	a4,4(s2)
   143fa:	f281a783          	lw	a5,-216(gp) # 1f8c8 <__atexit>
   143fe:	05871b63          	bne	a4,s8,14454 <__call_exitprocs+0xbc>
   14402:	05279963          	bne	a5,s2,14454 <__call_exitprocs+0xbc>
   14406:	147d                	addi	s0,s0,-1
   14408:	14f1                	addi	s1,s1,-4
   1440a:	fd3412e3          	bne	s0,s3,143ce <__call_exitprocs+0x36>
   1440e:	5422                	lw	s0,40(sp)
   14410:	5492                	lw	s1,36(sp)
   14412:	49f2                	lw	s3,28(sp)
   14414:	4ad2                	lw	s5,20(sp)
   14416:	4b42                	lw	s6,16(sp)
   14418:	4bb2                	lw	s7,12(sp)
   1441a:	4c22                	lw	s8,8(sp)
   1441c:	50b2                	lw	ra,44(sp)
   1441e:	5902                	lw	s2,32(sp)
   14420:	4a62                	lw	s4,24(sp)
   14422:	6145                	addi	sp,sp,48
   14424:	8082                	ret
   14426:	1044a783          	lw	a5,260(s1)
   1442a:	fb7784e3          	beq	a5,s7,143d2 <__call_exitprocs+0x3a>
   1442e:	147d                	addi	s0,s0,-1
   14430:	14f1                	addi	s1,s1,-4
   14432:	ff341ae3          	bne	s0,s3,14426 <__call_exitprocs+0x8e>
   14436:	bfe1                	j	1440e <__call_exitprocs+0x76>
   14438:	18c92783          	lw	a5,396(s2)
   1443c:	0844a583          	lw	a1,132(s1)
   14440:	8f7d                	and	a4,a4,a5
   14442:	ef19                	bnez	a4,14460 <__call_exitprocs+0xc8>
   14444:	855a                	mv	a0,s6
   14446:	9682                	jalr	a3
   14448:	00492703          	lw	a4,4(s2)
   1444c:	f281a783          	lw	a5,-216(gp) # 1f8c8 <__atexit>
   14450:	fb8709e3          	beq	a4,s8,14402 <__call_exitprocs+0x6a>
   14454:	dfcd                	beqz	a5,1440e <__call_exitprocs+0x76>
   14456:	893e                	mv	s2,a5
   14458:	b79d                	j	143be <__call_exitprocs+0x26>
   1445a:	00892223          	sw	s0,4(s2)
   1445e:	b751                	j	143e2 <__call_exitprocs+0x4a>
   14460:	852e                	mv	a0,a1
   14462:	9682                	jalr	a3
   14464:	bf49                	j	143f6 <__call_exitprocs+0x5e>

00014466 <atexit>:
   14466:	85aa                	mv	a1,a0
   14468:	4681                	li	a3,0
   1446a:	4601                	li	a2,0
   1446c:	4501                	li	a0,0
   1446e:	2a60306f          	j	17714 <__register_exitproc>

00014472 <_malloc_trim_r>:
   14472:	1101                	addi	sp,sp,-32
   14474:	c64e                	sw	s3,12(sp)
   14476:	0001f9b7          	lui	s3,0x1f
   1447a:	cc22                	sw	s0,24(sp)
   1447c:	ca26                	sw	s1,20(sp)
   1447e:	c84a                	sw	s2,16(sp)
   14480:	c452                	sw	s4,8(sp)
   14482:	ce06                	sw	ra,28(sp)
   14484:	8a2e                	mv	s4,a1
   14486:	892a                	mv	s2,a0
   14488:	2d098993          	addi	s3,s3,720 # 1f2d0 <__malloc_av_>
   1448c:	087000ef          	jal	14d12 <__malloc_lock>
   14490:	0089a703          	lw	a4,8(s3)
   14494:	6785                	lui	a5,0x1
   14496:	17bd                	addi	a5,a5,-17 # fef <exit-0xf0a5>
   14498:	4344                	lw	s1,4(a4)
   1449a:	6705                	lui	a4,0x1
   1449c:	98f1                	andi	s1,s1,-4
   1449e:	00f48433          	add	s0,s1,a5
   144a2:	41440433          	sub	s0,s0,s4
   144a6:	8031                	srli	s0,s0,0xc
   144a8:	147d                	addi	s0,s0,-1
   144aa:	0432                	slli	s0,s0,0xc
   144ac:	00e44b63          	blt	s0,a4,144c2 <_malloc_trim_r+0x50>
   144b0:	4581                	li	a1,0
   144b2:	854a                	mv	a0,s2
   144b4:	68d020ef          	jal	17340 <_sbrk_r>
   144b8:	0089a783          	lw	a5,8(s3)
   144bc:	97a6                	add	a5,a5,s1
   144be:	00f50e63          	beq	a0,a5,144da <_malloc_trim_r+0x68>
   144c2:	854a                	mv	a0,s2
   144c4:	051000ef          	jal	14d14 <__malloc_unlock>
   144c8:	40f2                	lw	ra,28(sp)
   144ca:	4462                	lw	s0,24(sp)
   144cc:	44d2                	lw	s1,20(sp)
   144ce:	4942                	lw	s2,16(sp)
   144d0:	49b2                	lw	s3,12(sp)
   144d2:	4a22                	lw	s4,8(sp)
   144d4:	4501                	li	a0,0
   144d6:	6105                	addi	sp,sp,32
   144d8:	8082                	ret
   144da:	408005b3          	neg	a1,s0
   144de:	854a                	mv	a0,s2
   144e0:	661020ef          	jal	17340 <_sbrk_r>
   144e4:	57fd                	li	a5,-1
   144e6:	02f50963          	beq	a0,a5,14518 <_malloc_trim_r+0xa6>
   144ea:	09418793          	addi	a5,gp,148 # 1fa34 <__malloc_current_mallinfo>
   144ee:	4398                	lw	a4,0(a5)
   144f0:	0089a683          	lw	a3,8(s3)
   144f4:	8c81                	sub	s1,s1,s0
   144f6:	0014e493          	ori	s1,s1,1
   144fa:	8f01                	sub	a4,a4,s0
   144fc:	854a                	mv	a0,s2
   144fe:	c2c4                	sw	s1,4(a3)
   14500:	c398                	sw	a4,0(a5)
   14502:	013000ef          	jal	14d14 <__malloc_unlock>
   14506:	40f2                	lw	ra,28(sp)
   14508:	4462                	lw	s0,24(sp)
   1450a:	44d2                	lw	s1,20(sp)
   1450c:	4942                	lw	s2,16(sp)
   1450e:	49b2                	lw	s3,12(sp)
   14510:	4a22                	lw	s4,8(sp)
   14512:	4505                	li	a0,1
   14514:	6105                	addi	sp,sp,32
   14516:	8082                	ret
   14518:	4581                	li	a1,0
   1451a:	854a                	mv	a0,s2
   1451c:	625020ef          	jal	17340 <_sbrk_r>
   14520:	0089a703          	lw	a4,8(s3)
   14524:	46bd                	li	a3,15
   14526:	40e507b3          	sub	a5,a0,a4
   1452a:	f8f6dce3          	bge	a3,a5,144c2 <_malloc_trim_r+0x50>
   1452e:	f181a683          	lw	a3,-232(gp) # 1f8b8 <__malloc_sbrk_base>
   14532:	0017e793          	ori	a5,a5,1
   14536:	c35c                	sw	a5,4(a4)
   14538:	8d15                	sub	a0,a0,a3
   1453a:	08a1aa23          	sw	a0,148(gp) # 1fa34 <__malloc_current_mallinfo>
   1453e:	b751                	j	144c2 <_malloc_trim_r+0x50>

00014540 <_free_r>:
   14540:	10058c63          	beqz	a1,14658 <_free_r+0x118>
   14544:	1141                	addi	sp,sp,-16
   14546:	c422                	sw	s0,8(sp)
   14548:	c226                	sw	s1,4(sp)
   1454a:	842e                	mv	s0,a1
   1454c:	84aa                	mv	s1,a0
   1454e:	c606                	sw	ra,12(sp)
   14550:	7c2000ef          	jal	14d12 <__malloc_lock>
   14554:	ffc42503          	lw	a0,-4(s0)
   14558:	ff840713          	addi	a4,s0,-8
   1455c:	0001f5b7          	lui	a1,0x1f
   14560:	ffe57793          	andi	a5,a0,-2
   14564:	00f70633          	add	a2,a4,a5
   14568:	2d058593          	addi	a1,a1,720 # 1f2d0 <__malloc_av_>
   1456c:	4254                	lw	a3,4(a2)
   1456e:	0085a803          	lw	a6,8(a1)
   14572:	9af1                	andi	a3,a3,-4
   14574:	12c80563          	beq	a6,a2,1469e <_free_r+0x15e>
   14578:	c254                	sw	a3,4(a2)
   1457a:	8905                	andi	a0,a0,1
   1457c:	00d60833          	add	a6,a2,a3
   14580:	e93d                	bnez	a0,145f6 <_free_r+0xb6>
   14582:	ff842303          	lw	t1,-8(s0)
   14586:	00482803          	lw	a6,4(a6)
   1458a:	0001f537          	lui	a0,0x1f
   1458e:	40670733          	sub	a4,a4,t1
   14592:	00872883          	lw	a7,8(a4) # 1008 <exit-0xf08c>
   14596:	2d850513          	addi	a0,a0,728 # 1f2d8 <__malloc_av_+0x8>
   1459a:	979a                	add	a5,a5,t1
   1459c:	00187813          	andi	a6,a6,1
   145a0:	0ea88263          	beq	a7,a0,14684 <_free_r+0x144>
   145a4:	00c72303          	lw	t1,12(a4)
   145a8:	0068a623          	sw	t1,12(a7)
   145ac:	01132423          	sw	a7,8(t1)
   145b0:	10080f63          	beqz	a6,146ce <_free_r+0x18e>
   145b4:	0017e693          	ori	a3,a5,1
   145b8:	c354                	sw	a3,4(a4)
   145ba:	c21c                	sw	a5,0(a2)
   145bc:	1ff00693          	li	a3,511
   145c0:	04f6e863          	bltu	a3,a5,14610 <_free_r+0xd0>
   145c4:	ff87f693          	andi	a3,a5,-8
   145c8:	06a1                	addi	a3,a3,8
   145ca:	41c8                	lw	a0,4(a1)
   145cc:	96ae                	add	a3,a3,a1
   145ce:	4290                	lw	a2,0(a3)
   145d0:	0057d813          	srli	a6,a5,0x5
   145d4:	4785                	li	a5,1
   145d6:	010797b3          	sll	a5,a5,a6
   145da:	8fc9                	or	a5,a5,a0
   145dc:	ff868513          	addi	a0,a3,-8
   145e0:	c748                	sw	a0,12(a4)
   145e2:	c710                	sw	a2,8(a4)
   145e4:	c1dc                	sw	a5,4(a1)
   145e6:	c298                	sw	a4,0(a3)
   145e8:	c658                	sw	a4,12(a2)
   145ea:	4422                	lw	s0,8(sp)
   145ec:	40b2                	lw	ra,12(sp)
   145ee:	8526                	mv	a0,s1
   145f0:	4492                	lw	s1,4(sp)
   145f2:	0141                	addi	sp,sp,16
   145f4:	a705                	j	14d14 <__malloc_unlock>
   145f6:	00482503          	lw	a0,4(a6)
   145fa:	8905                	andi	a0,a0,1
   145fc:	cd39                	beqz	a0,1465a <_free_r+0x11a>
   145fe:	0017e693          	ori	a3,a5,1
   14602:	fed42e23          	sw	a3,-4(s0)
   14606:	c21c                	sw	a5,0(a2)
   14608:	1ff00693          	li	a3,511
   1460c:	faf6fce3          	bgeu	a3,a5,145c4 <_free_r+0x84>
   14610:	0097d693          	srli	a3,a5,0x9
   14614:	4611                	li	a2,4
   14616:	0ad66e63          	bltu	a2,a3,146d2 <_free_r+0x192>
   1461a:	0067d693          	srli	a3,a5,0x6
   1461e:	03968513          	addi	a0,a3,57
   14622:	03868613          	addi	a2,a3,56
   14626:	050e                	slli	a0,a0,0x3
   14628:	952e                	add	a0,a0,a1
   1462a:	4114                	lw	a3,0(a0)
   1462c:	1561                	addi	a0,a0,-8
   1462e:	00d51663          	bne	a0,a3,1463a <_free_r+0xfa>
   14632:	a8f9                	j	14710 <_free_r+0x1d0>
   14634:	4694                	lw	a3,8(a3)
   14636:	00d50663          	beq	a0,a3,14642 <_free_r+0x102>
   1463a:	42d0                	lw	a2,4(a3)
   1463c:	9a71                	andi	a2,a2,-4
   1463e:	fec7ebe3          	bltu	a5,a2,14634 <_free_r+0xf4>
   14642:	46c8                	lw	a0,12(a3)
   14644:	c748                	sw	a0,12(a4)
   14646:	c714                	sw	a3,8(a4)
   14648:	4422                	lw	s0,8(sp)
   1464a:	c518                	sw	a4,8(a0)
   1464c:	40b2                	lw	ra,12(sp)
   1464e:	8526                	mv	a0,s1
   14650:	4492                	lw	s1,4(sp)
   14652:	c6d8                	sw	a4,12(a3)
   14654:	0141                	addi	sp,sp,16
   14656:	ad7d                	j	14d14 <__malloc_unlock>
   14658:	8082                	ret
   1465a:	0001f537          	lui	a0,0x1f
   1465e:	97b6                	add	a5,a5,a3
   14660:	2d850513          	addi	a0,a0,728 # 1f2d8 <__malloc_av_+0x8>
   14664:	4614                	lw	a3,8(a2)
   14666:	08a68b63          	beq	a3,a0,146fc <_free_r+0x1bc>
   1466a:	00c62803          	lw	a6,12(a2) # 200c <exit-0xe088>
   1466e:	0017e513          	ori	a0,a5,1
   14672:	00f70633          	add	a2,a4,a5
   14676:	0106a623          	sw	a6,12(a3)
   1467a:	00d82423          	sw	a3,8(a6)
   1467e:	c348                	sw	a0,4(a4)
   14680:	c21c                	sw	a5,0(a2)
   14682:	bf2d                	j	145bc <_free_r+0x7c>
   14684:	0c081d63          	bnez	a6,1475e <_free_r+0x21e>
   14688:	460c                	lw	a1,8(a2)
   1468a:	4650                	lw	a2,12(a2)
   1468c:	96be                	add	a3,a3,a5
   1468e:	0016e793          	ori	a5,a3,1
   14692:	c5d0                	sw	a2,12(a1)
   14694:	c60c                	sw	a1,8(a2)
   14696:	c35c                	sw	a5,4(a4)
   14698:	9736                	add	a4,a4,a3
   1469a:	c314                	sw	a3,0(a4)
   1469c:	b7b9                	j	145ea <_free_r+0xaa>
   1469e:	8905                	andi	a0,a0,1
   146a0:	96be                	add	a3,a3,a5
   146a2:	e909                	bnez	a0,146b4 <_free_r+0x174>
   146a4:	ff842503          	lw	a0,-8(s0)
   146a8:	8f09                	sub	a4,a4,a0
   146aa:	475c                	lw	a5,12(a4)
   146ac:	4710                	lw	a2,8(a4)
   146ae:	96aa                	add	a3,a3,a0
   146b0:	c65c                	sw	a5,12(a2)
   146b2:	c790                	sw	a2,8(a5)
   146b4:	0016e613          	ori	a2,a3,1
   146b8:	f1c1a783          	lw	a5,-228(gp) # 1f8bc <__malloc_trim_threshold>
   146bc:	c350                	sw	a2,4(a4)
   146be:	c598                	sw	a4,8(a1)
   146c0:	f2f6e5e3          	bltu	a3,a5,145ea <_free_r+0xaa>
   146c4:	f341a583          	lw	a1,-204(gp) # 1f8d4 <__malloc_top_pad>
   146c8:	8526                	mv	a0,s1
   146ca:	3365                	jal	14472 <_malloc_trim_r>
   146cc:	bf39                	j	145ea <_free_r+0xaa>
   146ce:	97b6                	add	a5,a5,a3
   146d0:	bf51                	j	14664 <_free_r+0x124>
   146d2:	4651                	li	a2,20
   146d4:	00d67e63          	bgeu	a2,a3,146f0 <_free_r+0x1b0>
   146d8:	05400613          	li	a2,84
   146dc:	04d66463          	bltu	a2,a3,14724 <_free_r+0x1e4>
   146e0:	00c7d693          	srli	a3,a5,0xc
   146e4:	06f68513          	addi	a0,a3,111
   146e8:	06e68613          	addi	a2,a3,110
   146ec:	050e                	slli	a0,a0,0x3
   146ee:	bf2d                	j	14628 <_free_r+0xe8>
   146f0:	05c68513          	addi	a0,a3,92
   146f4:	05b68613          	addi	a2,a3,91
   146f8:	050e                	slli	a0,a0,0x3
   146fa:	b73d                	j	14628 <_free_r+0xe8>
   146fc:	c9d8                	sw	a4,20(a1)
   146fe:	c998                	sw	a4,16(a1)
   14700:	0017e693          	ori	a3,a5,1
   14704:	c748                	sw	a0,12(a4)
   14706:	c708                	sw	a0,8(a4)
   14708:	c354                	sw	a3,4(a4)
   1470a:	973e                	add	a4,a4,a5
   1470c:	c31c                	sw	a5,0(a4)
   1470e:	bdf1                	j	145ea <_free_r+0xaa>
   14710:	0045a803          	lw	a6,4(a1)
   14714:	8609                	srai	a2,a2,0x2
   14716:	4785                	li	a5,1
   14718:	00c797b3          	sll	a5,a5,a2
   1471c:	0107e7b3          	or	a5,a5,a6
   14720:	c1dc                	sw	a5,4(a1)
   14722:	b70d                	j	14644 <_free_r+0x104>
   14724:	15400613          	li	a2,340
   14728:	00d66a63          	bltu	a2,a3,1473c <_free_r+0x1fc>
   1472c:	00f7d693          	srli	a3,a5,0xf
   14730:	07868513          	addi	a0,a3,120
   14734:	07768613          	addi	a2,a3,119
   14738:	050e                	slli	a0,a0,0x3
   1473a:	b5fd                	j	14628 <_free_r+0xe8>
   1473c:	55400613          	li	a2,1364
   14740:	00d66a63          	bltu	a2,a3,14754 <_free_r+0x214>
   14744:	0127d693          	srli	a3,a5,0x12
   14748:	07d68513          	addi	a0,a3,125
   1474c:	07c68613          	addi	a2,a3,124
   14750:	050e                	slli	a0,a0,0x3
   14752:	bdd9                	j	14628 <_free_r+0xe8>
   14754:	3f800513          	li	a0,1016
   14758:	07e00613          	li	a2,126
   1475c:	b5f1                	j	14628 <_free_r+0xe8>
   1475e:	0017e693          	ori	a3,a5,1
   14762:	c354                	sw	a3,4(a4)
   14764:	c21c                	sw	a5,0(a2)
   14766:	b551                	j	145ea <_free_r+0xaa>

00014768 <_malloc_r>:
   14768:	7179                	addi	sp,sp,-48
   1476a:	ce4e                	sw	s3,28(sp)
   1476c:	d606                	sw	ra,44(sp)
   1476e:	d422                	sw	s0,40(sp)
   14770:	d226                	sw	s1,36(sp)
   14772:	d04a                	sw	s2,32(sp)
   14774:	00b58793          	addi	a5,a1,11
   14778:	4759                	li	a4,22
   1477a:	89aa                	mv	s3,a0
   1477c:	04f76963          	bltu	a4,a5,147ce <_malloc_r+0x66>
   14780:	47c1                	li	a5,16
   14782:	16b7eb63          	bltu	a5,a1,148f8 <_malloc_r+0x190>
   14786:	2371                	jal	14d12 <__malloc_lock>
   14788:	47e1                	li	a5,24
   1478a:	4589                	li	a1,2
   1478c:	44c1                	li	s1,16
   1478e:	0001f937          	lui	s2,0x1f
   14792:	2d090913          	addi	s2,s2,720 # 1f2d0 <__malloc_av_>
   14796:	97ca                	add	a5,a5,s2
   14798:	43c0                	lw	s0,4(a5)
   1479a:	ff878713          	addi	a4,a5,-8
   1479e:	24e40f63          	beq	s0,a4,149fc <_malloc_r+0x294>
   147a2:	405c                	lw	a5,4(s0)
   147a4:	4454                	lw	a3,12(s0)
   147a6:	4410                	lw	a2,8(s0)
   147a8:	9bf1                	andi	a5,a5,-4
   147aa:	97a2                	add	a5,a5,s0
   147ac:	43d8                	lw	a4,4(a5)
   147ae:	c654                	sw	a3,12(a2)
   147b0:	c690                	sw	a2,8(a3)
   147b2:	00176713          	ori	a4,a4,1
   147b6:	854e                	mv	a0,s3
   147b8:	c3d8                	sw	a4,4(a5)
   147ba:	2ba9                	jal	14d14 <__malloc_unlock>
   147bc:	00840513          	addi	a0,s0,8
   147c0:	50b2                	lw	ra,44(sp)
   147c2:	5422                	lw	s0,40(sp)
   147c4:	5492                	lw	s1,36(sp)
   147c6:	5902                	lw	s2,32(sp)
   147c8:	49f2                	lw	s3,28(sp)
   147ca:	6145                	addi	sp,sp,48
   147cc:	8082                	ret
   147ce:	ff87f493          	andi	s1,a5,-8
   147d2:	1207c363          	bltz	a5,148f8 <_malloc_r+0x190>
   147d6:	12b4e163          	bltu	s1,a1,148f8 <_malloc_r+0x190>
   147da:	2b25                	jal	14d12 <__malloc_lock>
   147dc:	1f700793          	li	a5,503
   147e0:	2c97fd63          	bgeu	a5,s1,14aba <_malloc_r+0x352>
   147e4:	0094d793          	srli	a5,s1,0x9
   147e8:	10078d63          	beqz	a5,14902 <_malloc_r+0x19a>
   147ec:	4711                	li	a4,4
   147ee:	24f76c63          	bltu	a4,a5,14a46 <_malloc_r+0x2de>
   147f2:	0064d793          	srli	a5,s1,0x6
   147f6:	03978593          	addi	a1,a5,57
   147fa:	03878813          	addi	a6,a5,56
   147fe:	00359613          	slli	a2,a1,0x3
   14802:	0001f937          	lui	s2,0x1f
   14806:	2d090913          	addi	s2,s2,720 # 1f2d0 <__malloc_av_>
   1480a:	964a                	add	a2,a2,s2
   1480c:	4240                	lw	s0,4(a2)
   1480e:	1661                	addi	a2,a2,-8
   14810:	02860163          	beq	a2,s0,14832 <_malloc_r+0xca>
   14814:	453d                	li	a0,15
   14816:	a039                	j	14824 <_malloc_r+0xbc>
   14818:	4454                	lw	a3,12(s0)
   1481a:	1c075f63          	bgez	a4,149f8 <_malloc_r+0x290>
   1481e:	00d60a63          	beq	a2,a3,14832 <_malloc_r+0xca>
   14822:	8436                	mv	s0,a3
   14824:	405c                	lw	a5,4(s0)
   14826:	9bf1                	andi	a5,a5,-4
   14828:	40978733          	sub	a4,a5,s1
   1482c:	fee556e3          	bge	a0,a4,14818 <_malloc_r+0xb0>
   14830:	85c2                	mv	a1,a6
   14832:	01092403          	lw	s0,16(s2)
   14836:	0001f837          	lui	a6,0x1f
   1483a:	2d880813          	addi	a6,a6,728 # 1f2d8 <__malloc_av_+0x8>
   1483e:	1b040a63          	beq	s0,a6,149f2 <_malloc_r+0x28a>
   14842:	405c                	lw	a5,4(s0)
   14844:	46bd                	li	a3,15
   14846:	9bf1                	andi	a5,a5,-4
   14848:	40978733          	sub	a4,a5,s1
   1484c:	26e6cc63          	blt	a3,a4,14ac4 <_malloc_r+0x35c>
   14850:	01092a23          	sw	a6,20(s2)
   14854:	01092823          	sw	a6,16(s2)
   14858:	24075763          	bgez	a4,14aa6 <_malloc_r+0x33e>
   1485c:	1ff00713          	li	a4,511
   14860:	00492503          	lw	a0,4(s2)
   14864:	1af76163          	bltu	a4,a5,14a06 <_malloc_r+0x29e>
   14868:	ff87f713          	andi	a4,a5,-8
   1486c:	0721                	addi	a4,a4,8
   1486e:	974a                	add	a4,a4,s2
   14870:	4314                	lw	a3,0(a4)
   14872:	0057d613          	srli	a2,a5,0x5
   14876:	4785                	li	a5,1
   14878:	00c797b3          	sll	a5,a5,a2
   1487c:	8d5d                	or	a0,a0,a5
   1487e:	ff870793          	addi	a5,a4,-8
   14882:	c45c                	sw	a5,12(s0)
   14884:	c414                	sw	a3,8(s0)
   14886:	00a92223          	sw	a0,4(s2)
   1488a:	c300                	sw	s0,0(a4)
   1488c:	c6c0                	sw	s0,12(a3)
   1488e:	4025d793          	srai	a5,a1,0x2
   14892:	4605                	li	a2,1
   14894:	00f61633          	sll	a2,a2,a5
   14898:	06c56c63          	bltu	a0,a2,14910 <_malloc_r+0x1a8>
   1489c:	00a677b3          	and	a5,a2,a0
   148a0:	ef81                	bnez	a5,148b8 <_malloc_r+0x150>
   148a2:	0606                	slli	a2,a2,0x1
   148a4:	99f1                	andi	a1,a1,-4
   148a6:	00a677b3          	and	a5,a2,a0
   148aa:	0591                	addi	a1,a1,4
   148ac:	e791                	bnez	a5,148b8 <_malloc_r+0x150>
   148ae:	0606                	slli	a2,a2,0x1
   148b0:	00a677b3          	and	a5,a2,a0
   148b4:	0591                	addi	a1,a1,4
   148b6:	dfe5                	beqz	a5,148ae <_malloc_r+0x146>
   148b8:	48bd                	li	a7,15
   148ba:	00359313          	slli	t1,a1,0x3
   148be:	934a                	add	t1,t1,s2
   148c0:	851a                	mv	a0,t1
   148c2:	455c                	lw	a5,12(a0)
   148c4:	8e2e                	mv	t3,a1
   148c6:	1af50063          	beq	a0,a5,14a66 <_malloc_r+0x2fe>
   148ca:	43d8                	lw	a4,4(a5)
   148cc:	843e                	mv	s0,a5
   148ce:	47dc                	lw	a5,12(a5)
   148d0:	9b71                	andi	a4,a4,-4
   148d2:	409706b3          	sub	a3,a4,s1
   148d6:	18d8cf63          	blt	a7,a3,14a74 <_malloc_r+0x30c>
   148da:	fe06c6e3          	bltz	a3,148c6 <_malloc_r+0x15e>
   148de:	9722                	add	a4,a4,s0
   148e0:	4354                	lw	a3,4(a4)
   148e2:	4410                	lw	a2,8(s0)
   148e4:	854e                	mv	a0,s3
   148e6:	0016e693          	ori	a3,a3,1
   148ea:	c354                	sw	a3,4(a4)
   148ec:	c65c                	sw	a5,12(a2)
   148ee:	c790                	sw	a2,8(a5)
   148f0:	2115                	jal	14d14 <__malloc_unlock>
   148f2:	00840513          	addi	a0,s0,8
   148f6:	b5e9                	j	147c0 <_malloc_r+0x58>
   148f8:	47b1                	li	a5,12
   148fa:	00f9a023          	sw	a5,0(s3)
   148fe:	4501                	li	a0,0
   14900:	b5c1                	j	147c0 <_malloc_r+0x58>
   14902:	20000613          	li	a2,512
   14906:	04000593          	li	a1,64
   1490a:	03f00813          	li	a6,63
   1490e:	bdd5                	j	14802 <_malloc_r+0x9a>
   14910:	00892403          	lw	s0,8(s2)
   14914:	c85a                	sw	s6,16(sp)
   14916:	405c                	lw	a5,4(s0)
   14918:	ffc7fb13          	andi	s6,a5,-4
   1491c:	009b6763          	bltu	s6,s1,1492a <_malloc_r+0x1c2>
   14920:	409b0733          	sub	a4,s6,s1
   14924:	47bd                	li	a5,15
   14926:	0ae7c163          	blt	a5,a4,149c8 <_malloc_r+0x260>
   1492a:	c266                	sw	s9,4(sp)
   1492c:	ca56                	sw	s5,20(sp)
   1492e:	f181a703          	lw	a4,-232(gp) # 1f8b8 <__malloc_sbrk_base>
   14932:	f341aa83          	lw	s5,-204(gp) # 1f8d4 <__malloc_top_pad>
   14936:	cc52                	sw	s4,24(sp)
   14938:	c65e                	sw	s7,12(sp)
   1493a:	57fd                	li	a5,-1
   1493c:	01640a33          	add	s4,s0,s6
   14940:	9aa6                	add	s5,s5,s1
   14942:	2cf70763          	beq	a4,a5,14c10 <_malloc_r+0x4a8>
   14946:	6785                	lui	a5,0x1
   14948:	07bd                	addi	a5,a5,15 # 100f <exit-0xf085>
   1494a:	9abe                	add	s5,s5,a5
   1494c:	77fd                	lui	a5,0xfffff
   1494e:	00fafab3          	and	s5,s5,a5
   14952:	85d6                	mv	a1,s5
   14954:	854e                	mv	a0,s3
   14956:	1eb020ef          	jal	17340 <_sbrk_r>
   1495a:	57fd                	li	a5,-1
   1495c:	8baa                	mv	s7,a0
   1495e:	32f50963          	beq	a0,a5,14c90 <_malloc_r+0x528>
   14962:	c462                	sw	s8,8(sp)
   14964:	19456e63          	bltu	a0,s4,14b00 <_malloc_r+0x398>
   14968:	09418c13          	addi	s8,gp,148 # 1fa34 <__malloc_current_mallinfo>
   1496c:	000c2583          	lw	a1,0(s8)
   14970:	95d6                	add	a1,a1,s5
   14972:	00bc2023          	sw	a1,0(s8)
   14976:	872e                	mv	a4,a1
   14978:	1eaa1863          	bne	s4,a0,14b68 <_malloc_r+0x400>
   1497c:	01451793          	slli	a5,a0,0x14
   14980:	1e079463          	bnez	a5,14b68 <_malloc_r+0x400>
   14984:	00892b83          	lw	s7,8(s2)
   14988:	015b07b3          	add	a5,s6,s5
   1498c:	0017e793          	ori	a5,a5,1
   14990:	00fba223          	sw	a5,4(s7)
   14994:	f301a683          	lw	a3,-208(gp) # 1f8d0 <__malloc_max_sbrked_mem>
   14998:	00b6f463          	bgeu	a3,a1,149a0 <_malloc_r+0x238>
   1499c:	f2b1a823          	sw	a1,-208(gp) # 1f8d0 <__malloc_max_sbrked_mem>
   149a0:	f2c1a683          	lw	a3,-212(gp) # 1f8cc <__malloc_max_total_mem>
   149a4:	00b6f463          	bgeu	a3,a1,149ac <_malloc_r+0x244>
   149a8:	f2b1a623          	sw	a1,-212(gp) # 1f8cc <__malloc_max_total_mem>
   149ac:	4c22                	lw	s8,8(sp)
   149ae:	845e                	mv	s0,s7
   149b0:	9bf1                	andi	a5,a5,-4
   149b2:	40978733          	sub	a4,a5,s1
   149b6:	2897eb63          	bltu	a5,s1,14c4c <_malloc_r+0x4e4>
   149ba:	47bd                	li	a5,15
   149bc:	28e7d863          	bge	a5,a4,14c4c <_malloc_r+0x4e4>
   149c0:	4a62                	lw	s4,24(sp)
   149c2:	4ad2                	lw	s5,20(sp)
   149c4:	4bb2                	lw	s7,12(sp)
   149c6:	4c92                	lw	s9,4(sp)
   149c8:	0014e793          	ori	a5,s1,1
   149cc:	c05c                	sw	a5,4(s0)
   149ce:	94a2                	add	s1,s1,s0
   149d0:	00992423          	sw	s1,8(s2)
   149d4:	00176713          	ori	a4,a4,1
   149d8:	854e                	mv	a0,s3
   149da:	c0d8                	sw	a4,4(s1)
   149dc:	2e25                	jal	14d14 <__malloc_unlock>
   149de:	50b2                	lw	ra,44(sp)
   149e0:	00840513          	addi	a0,s0,8
   149e4:	5422                	lw	s0,40(sp)
   149e6:	4b42                	lw	s6,16(sp)
   149e8:	5492                	lw	s1,36(sp)
   149ea:	5902                	lw	s2,32(sp)
   149ec:	49f2                	lw	s3,28(sp)
   149ee:	6145                	addi	sp,sp,48
   149f0:	8082                	ret
   149f2:	00492503          	lw	a0,4(s2)
   149f6:	bd61                	j	1488e <_malloc_r+0x126>
   149f8:	4410                	lw	a2,8(s0)
   149fa:	bb45                	j	147aa <_malloc_r+0x42>
   149fc:	47c0                	lw	s0,12(a5)
   149fe:	0589                	addi	a1,a1,2
   14a00:	e28789e3          	beq	a5,s0,14832 <_malloc_r+0xca>
   14a04:	bb79                	j	147a2 <_malloc_r+0x3a>
   14a06:	0097d713          	srli	a4,a5,0x9
   14a0a:	4691                	li	a3,4
   14a0c:	0ee6f263          	bgeu	a3,a4,14af0 <_malloc_r+0x388>
   14a10:	46d1                	li	a3,20
   14a12:	24e6e663          	bltu	a3,a4,14c5e <_malloc_r+0x4f6>
   14a16:	05c70613          	addi	a2,a4,92
   14a1a:	05b70693          	addi	a3,a4,91
   14a1e:	060e                	slli	a2,a2,0x3
   14a20:	964a                	add	a2,a2,s2
   14a22:	4218                	lw	a4,0(a2)
   14a24:	1661                	addi	a2,a2,-8
   14a26:	00e61663          	bne	a2,a4,14a32 <_malloc_r+0x2ca>
   14a2a:	a2ed                	j	14c14 <_malloc_r+0x4ac>
   14a2c:	4718                	lw	a4,8(a4)
   14a2e:	00e60663          	beq	a2,a4,14a3a <_malloc_r+0x2d2>
   14a32:	4354                	lw	a3,4(a4)
   14a34:	9af1                	andi	a3,a3,-4
   14a36:	fed7ebe3          	bltu	a5,a3,14a2c <_malloc_r+0x2c4>
   14a3a:	4750                	lw	a2,12(a4)
   14a3c:	c450                	sw	a2,12(s0)
   14a3e:	c418                	sw	a4,8(s0)
   14a40:	c600                	sw	s0,8(a2)
   14a42:	c740                	sw	s0,12(a4)
   14a44:	b5a9                	j	1488e <_malloc_r+0x126>
   14a46:	4751                	li	a4,20
   14a48:	0cf77363          	bgeu	a4,a5,14b0e <_malloc_r+0x3a6>
   14a4c:	05400713          	li	a4,84
   14a50:	22f76363          	bltu	a4,a5,14c76 <_malloc_r+0x50e>
   14a54:	00c4d793          	srli	a5,s1,0xc
   14a58:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffdf483>
   14a5c:	06e78813          	addi	a6,a5,110
   14a60:	00359613          	slli	a2,a1,0x3
   14a64:	bb79                	j	14802 <_malloc_r+0x9a>
   14a66:	0e05                	addi	t3,t3,1
   14a68:	003e7793          	andi	a5,t3,3
   14a6c:	0521                	addi	a0,a0,8
   14a6e:	cfc5                	beqz	a5,14b26 <_malloc_r+0x3be>
   14a70:	455c                	lw	a5,12(a0)
   14a72:	bd91                	j	148c6 <_malloc_r+0x15e>
   14a74:	4410                	lw	a2,8(s0)
   14a76:	0014e593          	ori	a1,s1,1
   14a7a:	c04c                	sw	a1,4(s0)
   14a7c:	c65c                	sw	a5,12(a2)
   14a7e:	c790                	sw	a2,8(a5)
   14a80:	94a2                	add	s1,s1,s0
   14a82:	00992a23          	sw	s1,20(s2)
   14a86:	00992823          	sw	s1,16(s2)
   14a8a:	0016e793          	ori	a5,a3,1
   14a8e:	0104a623          	sw	a6,12(s1)
   14a92:	0104a423          	sw	a6,8(s1)
   14a96:	c0dc                	sw	a5,4(s1)
   14a98:	9722                	add	a4,a4,s0
   14a9a:	854e                	mv	a0,s3
   14a9c:	c314                	sw	a3,0(a4)
   14a9e:	2c9d                	jal	14d14 <__malloc_unlock>
   14aa0:	00840513          	addi	a0,s0,8
   14aa4:	bb31                	j	147c0 <_malloc_r+0x58>
   14aa6:	97a2                	add	a5,a5,s0
   14aa8:	43d8                	lw	a4,4(a5)
   14aaa:	854e                	mv	a0,s3
   14aac:	00176713          	ori	a4,a4,1
   14ab0:	c3d8                	sw	a4,4(a5)
   14ab2:	248d                	jal	14d14 <__malloc_unlock>
   14ab4:	00840513          	addi	a0,s0,8
   14ab8:	b321                	j	147c0 <_malloc_r+0x58>
   14aba:	0034d593          	srli	a1,s1,0x3
   14abe:	00848793          	addi	a5,s1,8
   14ac2:	b1f1                	j	1478e <_malloc_r+0x26>
   14ac4:	0014e693          	ori	a3,s1,1
   14ac8:	c054                	sw	a3,4(s0)
   14aca:	94a2                	add	s1,s1,s0
   14acc:	00992a23          	sw	s1,20(s2)
   14ad0:	00992823          	sw	s1,16(s2)
   14ad4:	00176693          	ori	a3,a4,1
   14ad8:	0104a623          	sw	a6,12(s1)
   14adc:	0104a423          	sw	a6,8(s1)
   14ae0:	c0d4                	sw	a3,4(s1)
   14ae2:	97a2                	add	a5,a5,s0
   14ae4:	854e                	mv	a0,s3
   14ae6:	c398                	sw	a4,0(a5)
   14ae8:	2435                	jal	14d14 <__malloc_unlock>
   14aea:	00840513          	addi	a0,s0,8
   14aee:	b9c9                	j	147c0 <_malloc_r+0x58>
   14af0:	0067d713          	srli	a4,a5,0x6
   14af4:	03970613          	addi	a2,a4,57
   14af8:	03870693          	addi	a3,a4,56
   14afc:	060e                	slli	a2,a2,0x3
   14afe:	b70d                	j	14a20 <_malloc_r+0x2b8>
   14b00:	05240d63          	beq	s0,s2,14b5a <_malloc_r+0x3f2>
   14b04:	00892403          	lw	s0,8(s2)
   14b08:	4c22                	lw	s8,8(sp)
   14b0a:	405c                	lw	a5,4(s0)
   14b0c:	b555                	j	149b0 <_malloc_r+0x248>
   14b0e:	05c78593          	addi	a1,a5,92
   14b12:	05b78813          	addi	a6,a5,91
   14b16:	00359613          	slli	a2,a1,0x3
   14b1a:	b1e5                	j	14802 <_malloc_r+0x9a>
   14b1c:	00832783          	lw	a5,8(t1)
   14b20:	15fd                	addi	a1,a1,-1
   14b22:	1e679563          	bne	a5,t1,14d0c <_malloc_r+0x5a4>
   14b26:	0035f793          	andi	a5,a1,3
   14b2a:	1361                	addi	t1,t1,-8
   14b2c:	fbe5                	bnez	a5,14b1c <_malloc_r+0x3b4>
   14b2e:	00492703          	lw	a4,4(s2)
   14b32:	fff64793          	not	a5,a2
   14b36:	8ff9                	and	a5,a5,a4
   14b38:	00f92223          	sw	a5,4(s2)
   14b3c:	0606                	slli	a2,a2,0x1
   14b3e:	dcc7e9e3          	bltu	a5,a2,14910 <_malloc_r+0x1a8>
   14b42:	dc0607e3          	beqz	a2,14910 <_malloc_r+0x1a8>
   14b46:	00f67733          	and	a4,a2,a5
   14b4a:	e711                	bnez	a4,14b56 <_malloc_r+0x3ee>
   14b4c:	0606                	slli	a2,a2,0x1
   14b4e:	00f67733          	and	a4,a2,a5
   14b52:	0e11                	addi	t3,t3,4
   14b54:	df65                	beqz	a4,14b4c <_malloc_r+0x3e4>
   14b56:	85f2                	mv	a1,t3
   14b58:	b38d                	j	148ba <_malloc_r+0x152>
   14b5a:	09418c13          	addi	s8,gp,148 # 1fa34 <__malloc_current_mallinfo>
   14b5e:	000c2703          	lw	a4,0(s8)
   14b62:	9756                	add	a4,a4,s5
   14b64:	00ec2023          	sw	a4,0(s8)
   14b68:	f181a683          	lw	a3,-232(gp) # 1f8b8 <__malloc_sbrk_base>
   14b6c:	57fd                	li	a5,-1
   14b6e:	12f68563          	beq	a3,a5,14c98 <_malloc_r+0x530>
   14b72:	414b87b3          	sub	a5,s7,s4
   14b76:	97ba                	add	a5,a5,a4
   14b78:	00fc2023          	sw	a5,0(s8)
   14b7c:	007bfc93          	andi	s9,s7,7
   14b80:	0a0c8263          	beqz	s9,14c24 <_malloc_r+0x4bc>
   14b84:	419b8bb3          	sub	s7,s7,s9
   14b88:	6785                	lui	a5,0x1
   14b8a:	07a1                	addi	a5,a5,8 # 1008 <exit-0xf08c>
   14b8c:	0ba1                	addi	s7,s7,8
   14b8e:	419785b3          	sub	a1,a5,s9
   14b92:	9ade                	add	s5,s5,s7
   14b94:	415585b3          	sub	a1,a1,s5
   14b98:	05d2                	slli	a1,a1,0x14
   14b9a:	0145da13          	srli	s4,a1,0x14
   14b9e:	85d2                	mv	a1,s4
   14ba0:	854e                	mv	a0,s3
   14ba2:	79e020ef          	jal	17340 <_sbrk_r>
   14ba6:	57fd                	li	a5,-1
   14ba8:	12f50463          	beq	a0,a5,14cd0 <_malloc_r+0x568>
   14bac:	41750533          	sub	a0,a0,s7
   14bb0:	01450ab3          	add	s5,a0,s4
   14bb4:	000c2703          	lw	a4,0(s8)
   14bb8:	01792423          	sw	s7,8(s2)
   14bbc:	001ae793          	ori	a5,s5,1
   14bc0:	00ea05b3          	add	a1,s4,a4
   14bc4:	00bc2023          	sw	a1,0(s8)
   14bc8:	00fba223          	sw	a5,4(s7)
   14bcc:	dd2404e3          	beq	s0,s2,14994 <_malloc_r+0x22c>
   14bd0:	46bd                	li	a3,15
   14bd2:	0766f963          	bgeu	a3,s6,14c44 <_malloc_r+0x4dc>
   14bd6:	4058                	lw	a4,4(s0)
   14bd8:	ff4b0793          	addi	a5,s6,-12
   14bdc:	9be1                	andi	a5,a5,-8
   14bde:	8b05                	andi	a4,a4,1
   14be0:	8f5d                	or	a4,a4,a5
   14be2:	c058                	sw	a4,4(s0)
   14be4:	4615                	li	a2,5
   14be6:	00f40733          	add	a4,s0,a5
   14bea:	c350                	sw	a2,4(a4)
   14bec:	c710                	sw	a2,8(a4)
   14bee:	00f6e563          	bltu	a3,a5,14bf8 <_malloc_r+0x490>
   14bf2:	004ba783          	lw	a5,4(s7)
   14bf6:	bb79                	j	14994 <_malloc_r+0x22c>
   14bf8:	00840593          	addi	a1,s0,8
   14bfc:	854e                	mv	a0,s3
   14bfe:	943ff0ef          	jal	14540 <_free_r>
   14c02:	00892b83          	lw	s7,8(s2)
   14c06:	000c2583          	lw	a1,0(s8)
   14c0a:	004ba783          	lw	a5,4(s7)
   14c0e:	b359                	j	14994 <_malloc_r+0x22c>
   14c10:	0ac1                	addi	s5,s5,16
   14c12:	b381                	j	14952 <_malloc_r+0x1ea>
   14c14:	8689                	srai	a3,a3,0x2
   14c16:	4785                	li	a5,1
   14c18:	00d797b3          	sll	a5,a5,a3
   14c1c:	8d5d                	or	a0,a0,a5
   14c1e:	00a92223          	sw	a0,4(s2)
   14c22:	bd29                	j	14a3c <_malloc_r+0x2d4>
   14c24:	015b85b3          	add	a1,s7,s5
   14c28:	40b005b3          	neg	a1,a1
   14c2c:	05d2                	slli	a1,a1,0x14
   14c2e:	0145da13          	srli	s4,a1,0x14
   14c32:	85d2                	mv	a1,s4
   14c34:	854e                	mv	a0,s3
   14c36:	70a020ef          	jal	17340 <_sbrk_r>
   14c3a:	57fd                	li	a5,-1
   14c3c:	f6f518e3          	bne	a0,a5,14bac <_malloc_r+0x444>
   14c40:	4a01                	li	s4,0
   14c42:	bf8d                	j	14bb4 <_malloc_r+0x44c>
   14c44:	4c22                	lw	s8,8(sp)
   14c46:	4785                	li	a5,1
   14c48:	00fba223          	sw	a5,4(s7)
   14c4c:	854e                	mv	a0,s3
   14c4e:	20d9                	jal	14d14 <__malloc_unlock>
   14c50:	4501                	li	a0,0
   14c52:	4a62                	lw	s4,24(sp)
   14c54:	4ad2                	lw	s5,20(sp)
   14c56:	4b42                	lw	s6,16(sp)
   14c58:	4bb2                	lw	s7,12(sp)
   14c5a:	4c92                	lw	s9,4(sp)
   14c5c:	b695                	j	147c0 <_malloc_r+0x58>
   14c5e:	05400693          	li	a3,84
   14c62:	02e6ee63          	bltu	a3,a4,14c9e <_malloc_r+0x536>
   14c66:	00c7d713          	srli	a4,a5,0xc
   14c6a:	06f70613          	addi	a2,a4,111
   14c6e:	06e70693          	addi	a3,a4,110
   14c72:	060e                	slli	a2,a2,0x3
   14c74:	b375                	j	14a20 <_malloc_r+0x2b8>
   14c76:	15400713          	li	a4,340
   14c7a:	02f76e63          	bltu	a4,a5,14cb6 <_malloc_r+0x54e>
   14c7e:	00f4d793          	srli	a5,s1,0xf
   14c82:	07878593          	addi	a1,a5,120
   14c86:	07778813          	addi	a6,a5,119
   14c8a:	00359613          	slli	a2,a1,0x3
   14c8e:	be95                	j	14802 <_malloc_r+0x9a>
   14c90:	00892403          	lw	s0,8(s2)
   14c94:	405c                	lw	a5,4(s0)
   14c96:	bb29                	j	149b0 <_malloc_r+0x248>
   14c98:	f171ac23          	sw	s7,-232(gp) # 1f8b8 <__malloc_sbrk_base>
   14c9c:	b5c5                	j	14b7c <_malloc_r+0x414>
   14c9e:	15400693          	li	a3,340
   14ca2:	02e6ed63          	bltu	a3,a4,14cdc <_malloc_r+0x574>
   14ca6:	00f7d713          	srli	a4,a5,0xf
   14caa:	07870613          	addi	a2,a4,120
   14cae:	07770693          	addi	a3,a4,119
   14cb2:	060e                	slli	a2,a2,0x3
   14cb4:	b3b5                	j	14a20 <_malloc_r+0x2b8>
   14cb6:	55400713          	li	a4,1364
   14cba:	02f76d63          	bltu	a4,a5,14cf4 <_malloc_r+0x58c>
   14cbe:	0124d793          	srli	a5,s1,0x12
   14cc2:	07d78593          	addi	a1,a5,125
   14cc6:	07c78813          	addi	a6,a5,124
   14cca:	00359613          	slli	a2,a1,0x3
   14cce:	be15                	j	14802 <_malloc_r+0x9a>
   14cd0:	1ce1                	addi	s9,s9,-8
   14cd2:	9ae6                	add	s5,s5,s9
   14cd4:	417a8ab3          	sub	s5,s5,s7
   14cd8:	4a01                	li	s4,0
   14cda:	bde9                	j	14bb4 <_malloc_r+0x44c>
   14cdc:	55400693          	li	a3,1364
   14ce0:	02e6e163          	bltu	a3,a4,14d02 <_malloc_r+0x59a>
   14ce4:	0127d713          	srli	a4,a5,0x12
   14ce8:	07d70613          	addi	a2,a4,125
   14cec:	07c70693          	addi	a3,a4,124
   14cf0:	060e                	slli	a2,a2,0x3
   14cf2:	b33d                	j	14a20 <_malloc_r+0x2b8>
   14cf4:	3f800613          	li	a2,1016
   14cf8:	07f00593          	li	a1,127
   14cfc:	07e00813          	li	a6,126
   14d00:	b609                	j	14802 <_malloc_r+0x9a>
   14d02:	3f800613          	li	a2,1016
   14d06:	07e00693          	li	a3,126
   14d0a:	bb19                	j	14a20 <_malloc_r+0x2b8>
   14d0c:	00492783          	lw	a5,4(s2)
   14d10:	b535                	j	14b3c <_malloc_r+0x3d4>

00014d12 <__malloc_lock>:
   14d12:	8082                	ret

00014d14 <__malloc_unlock>:
   14d14:	8082                	ret

00014d16 <_vfprintf_r>:
   14d16:	7145                	addi	sp,sp,-464
   14d18:	1c112623          	sw	ra,460(sp)
   14d1c:	1c812423          	sw	s0,456(sp)
   14d20:	1c912223          	sw	s1,452(sp)
   14d24:	1b612823          	sw	s6,432(sp)
   14d28:	84ae                	mv	s1,a1
   14d2a:	8b32                	mv	s6,a2
   14d2c:	ca36                	sw	a3,20(sp)
   14d2e:	842a                	mv	s0,a0
   14d30:	c42a                	sw	a0,8(sp)
   14d32:	602020ef          	jal	17334 <_localeconv_r>
   14d36:	411c                	lw	a5,0(a0)
   14d38:	853e                	mv	a0,a5
   14d3a:	d83e                	sw	a5,48(sp)
   14d3c:	085020ef          	jal	175c0 <strlen>
   14d40:	d62a                	sw	a0,44(sp)
   14d42:	c982                	sw	zero,208(sp)
   14d44:	cb82                	sw	zero,212(sp)
   14d46:	cd82                	sw	zero,216(sp)
   14d48:	cf82                	sw	zero,220(sp)
   14d4a:	c409                	beqz	s0,14d54 <_vfprintf_r+0x3e>
   14d4c:	5858                	lw	a4,52(s0)
   14d4e:	e319                	bnez	a4,14d54 <_vfprintf_r+0x3e>
   14d50:	1960106f          	j	15ee6 <_vfprintf_r+0x11d0>
   14d54:	00c49683          	lh	a3,12(s1)
   14d58:	50f8                	lw	a4,100(s1)
   14d5a:	01269613          	slli	a2,a3,0x12
   14d5e:	00064a63          	bltz	a2,14d72 <_vfprintf_r+0x5c>
   14d62:	7679                	lui	a2,0xffffe
   14d64:	167d                	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffde413>
   14d66:	6589                	lui	a1,0x2
   14d68:	8ecd                	or	a3,a3,a1
   14d6a:	8f71                	and	a4,a4,a2
   14d6c:	00d49623          	sh	a3,12(s1)
   14d70:	d0f8                	sw	a4,100(s1)
   14d72:	01271693          	slli	a3,a4,0x12
   14d76:	0006d463          	bgez	a3,14d7e <_vfprintf_r+0x68>
   14d7a:	07b0106f          	j	165f4 <_vfprintf_r+0x18de>
   14d7e:	00c49703          	lh	a4,12(s1)
   14d82:	00877693          	andi	a3,a4,8
   14d86:	22068a63          	beqz	a3,14fba <_vfprintf_r+0x2a4>
   14d8a:	4894                	lw	a3,16(s1)
   14d8c:	22068763          	beqz	a3,14fba <_vfprintf_r+0x2a4>
   14d90:	8b69                	andi	a4,a4,26
   14d92:	46a9                	li	a3,10
   14d94:	24d70063          	beq	a4,a3,14fd4 <_vfprintf_r+0x2be>
   14d98:	1b312e23          	sw	s3,444(sp)
   14d9c:	1b412c23          	sw	s4,440(sp)
   14da0:	1ba12023          	sw	s10,416(sp)
   14da4:	6779                	lui	a4,0x1e
   14da6:	1d212023          	sw	s2,448(sp)
   14daa:	1b512a23          	sw	s5,436(sp)
   14dae:	1b712623          	sw	s7,428(sp)
   14db2:	1b812423          	sw	s8,424(sp)
   14db6:	1b912223          	sw	s9,420(sp)
   14dba:	19b12e23          	sw	s11,412(sp)
   14dbe:	8d5a                	mv	s10,s6
   14dc0:	aa470793          	addi	a5,a4,-1372 # 1daa4 <__clzsi2+0x1ec>
   14dc4:	000d4703          	lbu	a4,0(s10)
   14dc8:	0ec10993          	addi	s3,sp,236
   14dcc:	6a79                	lui	s4,0x1e
   14dce:	c3ce                	sw	s3,196(sp)
   14dd0:	c782                	sw	zero,204(sp)
   14dd2:	c582                	sw	zero,200(sp)
   14dd4:	d002                	sw	zero,32(sp)
   14dd6:	da02                	sw	zero,52(sp)
   14dd8:	c082                	sw	zero,64(sp)
   14dda:	de02                	sw	zero,60(sp)
   14ddc:	c482                	sw	zero,72(sp)
   14dde:	c282                	sw	zero,68(sp)
   14de0:	c602                	sw	zero,12(sp)
   14de2:	cc3e                	sw	a5,24(sp)
   14de4:	844e                	mv	s0,s3
   14de6:	ca8a0a13          	addi	s4,s4,-856 # 1dca8 <zeroes.0>
   14dea:	18070063          	beqz	a4,14f6a <_vfprintf_r+0x254>
   14dee:	896a                	mv	s2,s10
   14df0:	02500693          	li	a3,37
   14df4:	2ed70a63          	beq	a4,a3,150e8 <_vfprintf_r+0x3d2>
   14df8:	00194703          	lbu	a4,1(s2)
   14dfc:	0905                	addi	s2,s2,1
   14dfe:	fb7d                	bnez	a4,14df4 <_vfprintf_r+0xde>
   14e00:	41a90ab3          	sub	s5,s2,s10
   14e04:	17a90363          	beq	s2,s10,14f6a <_vfprintf_r+0x254>
   14e08:	46be                	lw	a3,204(sp)
   14e0a:	472e                	lw	a4,200(sp)
   14e0c:	01a42023          	sw	s10,0(s0)
   14e10:	96d6                	add	a3,a3,s5
   14e12:	0705                	addi	a4,a4,1
   14e14:	01542223          	sw	s5,4(s0)
   14e18:	c7b6                	sw	a3,204(sp)
   14e1a:	c5ba                	sw	a4,200(sp)
   14e1c:	469d                	li	a3,7
   14e1e:	0421                	addi	s0,s0,8
   14e20:	2ce6cb63          	blt	a3,a4,150f6 <_vfprintf_r+0x3e0>
   14e24:	47b2                	lw	a5,12(sp)
   14e26:	00094703          	lbu	a4,0(s2)
   14e2a:	97d6                	add	a5,a5,s5
   14e2c:	c63e                	sw	a5,12(sp)
   14e2e:	12070e63          	beqz	a4,14f6a <_vfprintf_r+0x254>
   14e32:	00194883          	lbu	a7,1(s2)
   14e36:	0a0103a3          	sb	zero,167(sp)
   14e3a:	0905                	addi	s2,s2,1
   14e3c:	5afd                	li	s5,-1
   14e3e:	4b81                	li	s7,0
   14e40:	4c81                	li	s9,0
   14e42:	05a00b13          	li	s6,90
   14e46:	0905                	addi	s2,s2,1
   14e48:	fe088793          	addi	a5,a7,-32
   14e4c:	02fb6b63          	bltu	s6,a5,14e82 <_vfprintf_r+0x16c>
   14e50:	4762                	lw	a4,24(sp)
   14e52:	078a                	slli	a5,a5,0x2
   14e54:	97ba                	add	a5,a5,a4
   14e56:	439c                	lw	a5,0(a5)
   14e58:	8782                	jr	a5
   14e5a:	4b81                	li	s7,0
   14e5c:	fd088793          	addi	a5,a7,-48
   14e60:	46a5                	li	a3,9
   14e62:	00094883          	lbu	a7,0(s2)
   14e66:	002b9713          	slli	a4,s7,0x2
   14e6a:	9bba                	add	s7,s7,a4
   14e6c:	0b86                	slli	s7,s7,0x1
   14e6e:	9bbe                	add	s7,s7,a5
   14e70:	fd088793          	addi	a5,a7,-48
   14e74:	0905                	addi	s2,s2,1
   14e76:	fef6f6e3          	bgeu	a3,a5,14e62 <_vfprintf_r+0x14c>
   14e7a:	fe088793          	addi	a5,a7,-32
   14e7e:	fcfb79e3          	bgeu	s6,a5,14e50 <_vfprintf_r+0x13a>
   14e82:	0e088463          	beqz	a7,14f6a <_vfprintf_r+0x254>
   14e86:	13110623          	sb	a7,300(sp)
   14e8a:	0a0103a3          	sb	zero,167(sp)
   14e8e:	4d85                	li	s11,1
   14e90:	4b05                	li	s6,1
   14e92:	12c10d13          	addi	s10,sp,300
   14e96:	c802                	sw	zero,16(sp)
   14e98:	4a81                	li	s5,0
   14e9a:	d402                	sw	zero,40(sp)
   14e9c:	d202                	sw	zero,36(sp)
   14e9e:	ce02                	sw	zero,28(sp)
   14ea0:	002cf293          	andi	t0,s9,2
   14ea4:	00028363          	beqz	t0,14eaa <_vfprintf_r+0x194>
   14ea8:	0d89                	addi	s11,s11,2
   14eaa:	084cff93          	andi	t6,s9,132
   14eae:	463e                	lw	a2,204(sp)
   14eb0:	000f9663          	bnez	t6,14ebc <_vfprintf_r+0x1a6>
   14eb4:	41bb8733          	sub	a4,s7,s11
   14eb8:	0ce047e3          	bgtz	a4,15786 <_vfprintf_r+0xa70>
   14ebc:	0a714703          	lbu	a4,167(sp)
   14ec0:	cf19                	beqz	a4,14ede <_vfprintf_r+0x1c8>
   14ec2:	472e                	lw	a4,200(sp)
   14ec4:	0a710593          	addi	a1,sp,167
   14ec8:	c00c                	sw	a1,0(s0)
   14eca:	0605                	addi	a2,a2,1
   14ecc:	4585                	li	a1,1
   14ece:	0705                	addi	a4,a4,1
   14ed0:	c04c                	sw	a1,4(s0)
   14ed2:	c7b2                	sw	a2,204(sp)
   14ed4:	c5ba                	sw	a4,200(sp)
   14ed6:	459d                	li	a1,7
   14ed8:	0421                	addi	s0,s0,8
   14eda:	2ee5c763          	blt	a1,a4,151c8 <_vfprintf_r+0x4b2>
   14ede:	00028f63          	beqz	t0,14efc <_vfprintf_r+0x1e6>
   14ee2:	472e                	lw	a4,200(sp)
   14ee4:	4589                	li	a1,2
   14ee6:	0609                	addi	a2,a2,2
   14ee8:	0705                	addi	a4,a4,1
   14eea:	113c                	addi	a5,sp,168
   14eec:	c04c                	sw	a1,4(s0)
   14eee:	c01c                	sw	a5,0(s0)
   14ef0:	c7b2                	sw	a2,204(sp)
   14ef2:	c5ba                	sw	a4,200(sp)
   14ef4:	459d                	li	a1,7
   14ef6:	0421                	addi	s0,s0,8
   14ef8:	12e5cae3          	blt	a1,a4,1582c <_vfprintf_r+0xb16>
   14efc:	08000713          	li	a4,128
   14f00:	72ef8e63          	beq	t6,a4,1563c <_vfprintf_r+0x926>
   14f04:	416a8ab3          	sub	s5,s5,s6
   14f08:	7d504a63          	bgtz	s5,156dc <_vfprintf_r+0x9c6>
   14f0c:	100cf713          	andi	a4,s9,256
   14f10:	60071e63          	bnez	a4,1552c <_vfprintf_r+0x816>
   14f14:	47ae                	lw	a5,200(sp)
   14f16:	965a                	add	a2,a2,s6
   14f18:	01a42023          	sw	s10,0(s0)
   14f1c:	0785                	addi	a5,a5,1
   14f1e:	01642223          	sw	s6,4(s0)
   14f22:	c7b2                	sw	a2,204(sp)
   14f24:	c5be                	sw	a5,200(sp)
   14f26:	471d                	li	a4,7
   14f28:	36f74563          	blt	a4,a5,15292 <_vfprintf_r+0x57c>
   14f2c:	0421                	addi	s0,s0,8
   14f2e:	004cfe13          	andi	t3,s9,4
   14f32:	000e0663          	beqz	t3,14f3e <_vfprintf_r+0x228>
   14f36:	41bb8ab3          	sub	s5,s7,s11
   14f3a:	115047e3          	bgtz	s5,15848 <_vfprintf_r+0xb32>
   14f3e:	835e                	mv	t1,s7
   14f40:	01bbd363          	bge	s7,s11,14f46 <_vfprintf_r+0x230>
   14f44:	836e                	mv	t1,s11
   14f46:	47b2                	lw	a5,12(sp)
   14f48:	979a                	add	a5,a5,t1
   14f4a:	c63e                	sw	a5,12(sp)
   14f4c:	00061ce3          	bnez	a2,15764 <_vfprintf_r+0xa4e>
   14f50:	47c2                	lw	a5,16(sp)
   14f52:	c582                	sw	zero,200(sp)
   14f54:	c789                	beqz	a5,14f5e <_vfprintf_r+0x248>
   14f56:	45c2                	lw	a1,16(sp)
   14f58:	4522                	lw	a0,8(sp)
   14f5a:	de6ff0ef          	jal	14540 <_free_r>
   14f5e:	844e                	mv	s0,s3
   14f60:	8d4a                	mv	s10,s2
   14f62:	000d4703          	lbu	a4,0(s10)
   14f66:	e80714e3          	bnez	a4,14dee <_vfprintf_r+0xd8>
   14f6a:	47be                	lw	a5,204(sp)
   14f6c:	c399                	beqz	a5,14f72 <_vfprintf_r+0x25c>
   14f6e:	31a0106f          	j	16288 <_vfprintf_r+0x1572>
   14f72:	00c4d783          	lhu	a5,12(s1)
   14f76:	1c012903          	lw	s2,448(sp)
   14f7a:	1bc12983          	lw	s3,444(sp)
   14f7e:	0407f793          	andi	a5,a5,64
   14f82:	1b812a03          	lw	s4,440(sp)
   14f86:	1b412a83          	lw	s5,436(sp)
   14f8a:	1ac12b83          	lw	s7,428(sp)
   14f8e:	1a812c03          	lw	s8,424(sp)
   14f92:	1a412c83          	lw	s9,420(sp)
   14f96:	1a012d03          	lw	s10,416(sp)
   14f9a:	19c12d83          	lw	s11,412(sp)
   14f9e:	c399                	beqz	a5,14fa4 <_vfprintf_r+0x28e>
   14fa0:	6540106f          	j	165f4 <_vfprintf_r+0x18de>
   14fa4:	1cc12083          	lw	ra,460(sp)
   14fa8:	1c812403          	lw	s0,456(sp)
   14fac:	4532                	lw	a0,12(sp)
   14fae:	1c412483          	lw	s1,452(sp)
   14fb2:	1b012b03          	lw	s6,432(sp)
   14fb6:	6179                	addi	sp,sp,464
   14fb8:	8082                	ret
   14fba:	4522                	lw	a0,8(sp)
   14fbc:	85a6                	mv	a1,s1
   14fbe:	18e020ef          	jal	1714c <__swsetup_r>
   14fc2:	c119                	beqz	a0,14fc8 <_vfprintf_r+0x2b2>
   14fc4:	6300106f          	j	165f4 <_vfprintf_r+0x18de>
   14fc8:	00c49703          	lh	a4,12(s1)
   14fcc:	46a9                	li	a3,10
   14fce:	8b69                	andi	a4,a4,26
   14fd0:	dcd714e3          	bne	a4,a3,14d98 <_vfprintf_r+0x82>
   14fd4:	00e49703          	lh	a4,14(s1)
   14fd8:	dc0740e3          	bltz	a4,14d98 <_vfprintf_r+0x82>
   14fdc:	46d2                	lw	a3,20(sp)
   14fde:	4522                	lw	a0,8(sp)
   14fe0:	865a                	mv	a2,s6
   14fe2:	85a6                	mv	a1,s1
   14fe4:	0e9010ef          	jal	168cc <__sbprintf>
   14fe8:	c62a                	sw	a0,12(sp)
   14fea:	bf6d                	j	14fa4 <_vfprintf_r+0x28e>
   14fec:	4c22                	lw	s8,8(sp)
   14fee:	8562                	mv	a0,s8
   14ff0:	344020ef          	jal	17334 <_localeconv_r>
   14ff4:	415c                	lw	a5,4(a0)
   14ff6:	853e                	mv	a0,a5
   14ff8:	c2be                	sw	a5,68(sp)
   14ffa:	5c6020ef          	jal	175c0 <strlen>
   14ffe:	87aa                	mv	a5,a0
   15000:	8562                	mv	a0,s8
   15002:	c4be                	sw	a5,72(sp)
   15004:	8c3e                	mv	s8,a5
   15006:	32e020ef          	jal	17334 <_localeconv_r>
   1500a:	451c                	lw	a5,8(a0)
   1500c:	de3e                	sw	a5,60(sp)
   1500e:	280c16e3          	bnez	s8,15a9a <_vfprintf_r+0xd84>
   15012:	00094883          	lbu	a7,0(s2)
   15016:	bd05                	j	14e46 <_vfprintf_r+0x130>
   15018:	00094883          	lbu	a7,0(s2)
   1501c:	020cec93          	ori	s9,s9,32
   15020:	b51d                	j	14e46 <_vfprintf_r+0x130>
   15022:	010cec93          	ori	s9,s9,16
   15026:	020cf793          	andi	a5,s9,32
   1502a:	26078e63          	beqz	a5,152a6 <_vfprintf_r+0x590>
   1502e:	47d2                	lw	a5,20(sp)
   15030:	00778c13          	addi	s8,a5,7
   15034:	ff8c7c13          	andi	s8,s8,-8
   15038:	004c2783          	lw	a5,4(s8)
   1503c:	000c2b03          	lw	s6,0(s8)
   15040:	008c0713          	addi	a4,s8,8
   15044:	ca3a                	sw	a4,20(sp)
   15046:	8dbe                	mv	s11,a5
   15048:	2807c463          	bltz	a5,152d0 <_vfprintf_r+0x5ba>
   1504c:	8ee6                	mv	t4,s9
   1504e:	380ac563          	bltz	s5,153d8 <_vfprintf_r+0x6c2>
   15052:	01bb67b3          	or	a5,s6,s11
   15056:	f7fcfe93          	andi	t4,s9,-129
   1505a:	36079f63          	bnez	a5,153d8 <_vfprintf_r+0x6c2>
   1505e:	380a9263          	bnez	s5,153e2 <_vfprintf_r+0x6cc>
   15062:	4b01                	li	s6,0
   15064:	8cf6                	mv	s9,t4
   15066:	19010d13          	addi	s10,sp,400
   1506a:	0a714703          	lbu	a4,167(sp)
   1506e:	8dd6                	mv	s11,s5
   15070:	016ad363          	bge	s5,s6,15076 <_vfprintf_r+0x360>
   15074:	8dda                	mv	s11,s6
   15076:	c802                	sw	zero,16(sp)
   15078:	d402                	sw	zero,40(sp)
   1507a:	d202                	sw	zero,36(sp)
   1507c:	ce02                	sw	zero,28(sp)
   1507e:	e20701e3          	beqz	a4,14ea0 <_vfprintf_r+0x18a>
   15082:	0d85                	addi	s11,s11,1
   15084:	bd31                	j	14ea0 <_vfprintf_r+0x18a>
   15086:	010cec93          	ori	s9,s9,16
   1508a:	020cf793          	andi	a5,s9,32
   1508e:	2a078d63          	beqz	a5,15348 <_vfprintf_r+0x632>
   15092:	47d2                	lw	a5,20(sp)
   15094:	00778c13          	addi	s8,a5,7
   15098:	ff8c7c13          	andi	s8,s8,-8
   1509c:	000c2b03          	lw	s6,0(s8)
   150a0:	004c2d83          	lw	s11,4(s8)
   150a4:	008c0793          	addi	a5,s8,8
   150a8:	ca3e                	sw	a5,20(sp)
   150aa:	bffcfe93          	andi	t4,s9,-1025
   150ae:	4781                	li	a5,0
   150b0:	4701                	li	a4,0
   150b2:	0ae103a3          	sb	a4,167(sp)
   150b6:	220acd63          	bltz	s5,152f0 <_vfprintf_r+0x5da>
   150ba:	01bb6733          	or	a4,s6,s11
   150be:	f7fefc93          	andi	s9,t4,-129
   150c2:	6c071063          	bnez	a4,15782 <_vfprintf_r+0xa6c>
   150c6:	520a9763          	bnez	s5,155f4 <_vfprintf_r+0x8de>
   150ca:	180790e3          	bnez	a5,15a4a <_vfprintf_r+0xd34>
   150ce:	001efb13          	andi	s6,t4,1
   150d2:	19010d13          	addi	s10,sp,400
   150d6:	f80b0ae3          	beqz	s6,1506a <_vfprintf_r+0x354>
   150da:	03000793          	li	a5,48
   150de:	18f107a3          	sb	a5,399(sp)
   150e2:	18f10d13          	addi	s10,sp,399
   150e6:	b751                	j	1506a <_vfprintf_r+0x354>
   150e8:	41a90ab3          	sub	s5,s2,s10
   150ec:	d1a91ee3          	bne	s2,s10,14e08 <_vfprintf_r+0xf2>
   150f0:	00094703          	lbu	a4,0(s2)
   150f4:	bb2d                	j	14e2e <_vfprintf_r+0x118>
   150f6:	4522                	lw	a0,8(sp)
   150f8:	01d0                	addi	a2,sp,196
   150fa:	85a6                	mv	a1,s1
   150fc:	065010ef          	jal	16960 <__sprint_r>
   15100:	e60519e3          	bnez	a0,14f72 <_vfprintf_r+0x25c>
   15104:	844e                	mv	s0,s3
   15106:	bb39                	j	14e24 <_vfprintf_r+0x10e>
   15108:	008cf713          	andi	a4,s9,8
   1510c:	1c0716e3          	bnez	a4,15ad8 <_vfprintf_r+0xdc2>
   15110:	47d2                	lw	a5,20(sp)
   15112:	0908                	addi	a0,sp,144
   15114:	c846                	sw	a7,16(sp)
   15116:	00778c13          	addi	s8,a5,7
   1511a:	ff8c7c13          	andi	s8,s8,-8
   1511e:	000c2583          	lw	a1,0(s8)
   15122:	004c2603          	lw	a2,4(s8)
   15126:	008c0793          	addi	a5,s8,8
   1512a:	ca3e                	sw	a5,20(sp)
   1512c:	600080ef          	jal	1d72c <__extenddftf2>
   15130:	45ca                	lw	a1,144(sp)
   15132:	465a                	lw	a2,148(sp)
   15134:	46ea                	lw	a3,152(sp)
   15136:	477a                	lw	a4,156(sp)
   15138:	48c2                	lw	a7,16(sp)
   1513a:	0988                	addi	a0,sp,208
   1513c:	c846                	sw	a7,16(sp)
   1513e:	cfba                	sw	a4,220(sp)
   15140:	c9ae                	sw	a1,208(sp)
   15142:	cbb2                	sw	a2,212(sp)
   15144:	cdb6                	sw	a3,216(sp)
   15146:	7da020ef          	jal	17920 <_ldcheck>
   1514a:	d72a                	sw	a0,172(sp)
   1514c:	4709                	li	a4,2
   1514e:	48c2                	lw	a7,16(sp)
   15150:	5ce50be3          	beq	a0,a4,15f26 <_vfprintf_r+0x1210>
   15154:	4705                	li	a4,1
   15156:	6ae505e3          	beq	a0,a4,16000 <_vfprintf_r+0x12ea>
   1515a:	06100713          	li	a4,97
   1515e:	2ae88ce3          	beq	a7,a4,15c16 <_vfprintf_r+0xf00>
   15162:	04100713          	li	a4,65
   15166:	05800793          	li	a5,88
   1516a:	2ae888e3          	beq	a7,a4,15c1a <_vfprintf_r+0xf04>
   1516e:	577d                	li	a4,-1
   15170:	00ea9463          	bne	s5,a4,15178 <_vfprintf_r+0x462>
   15174:	6260106f          	j	1679a <_vfprintf_r+0x1a84>
   15178:	fdf8f713          	andi	a4,a7,-33
   1517c:	04700693          	li	a3,71
   15180:	c802                	sw	zero,16(sp)
   15182:	00d71563          	bne	a4,a3,1518c <_vfprintf_r+0x476>
   15186:	000a9363          	bnez	s5,1518c <_vfprintf_r+0x476>
   1518a:	4a85                	li	s5,1
   1518c:	4c7e                	lw	s8,220(sp)
   1518e:	100ce793          	ori	a5,s9,256
   15192:	c6be                	sw	a5,76(sp)
   15194:	dc02                	sw	zero,56(sp)
   15196:	4fce                	lw	t6,208(sp)
   15198:	4f5e                	lw	t5,212(sp)
   1519a:	4eee                	lw	t4,216(sp)
   1519c:	000c5963          	bgez	s8,151ae <_vfprintf_r+0x498>
   151a0:	80000737          	lui	a4,0x80000
   151a4:	02d00793          	li	a5,45
   151a8:	01874c33          	xor	s8,a4,s8
   151ac:	dc3e                	sw	a5,56(sp)
   151ae:	fbf88713          	addi	a4,a7,-65
   151b2:	02500693          	li	a3,37
   151b6:	28e6eee3          	bltu	a3,a4,15c52 <_vfprintf_r+0xf3c>
   151ba:	66f9                	lui	a3,0x1e
   151bc:	070a                	slli	a4,a4,0x2
   151be:	c1068693          	addi	a3,a3,-1008 # 1dc10 <__clzsi2+0x358>
   151c2:	9736                	add	a4,a4,a3
   151c4:	4318                	lw	a4,0(a4)
   151c6:	8702                	jr	a4
   151c8:	4522                	lw	a0,8(sp)
   151ca:	01d0                	addi	a2,sp,196
   151cc:	85a6                	mv	a1,s1
   151ce:	c8c6                	sw	a7,80(sp)
   151d0:	c6fe                	sw	t6,76(sp)
   151d2:	dc16                	sw	t0,56(sp)
   151d4:	78c010ef          	jal	16960 <__sprint_r>
   151d8:	58051d63          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   151dc:	463e                	lw	a2,204(sp)
   151de:	48c6                	lw	a7,80(sp)
   151e0:	4fb6                	lw	t6,76(sp)
   151e2:	52e2                	lw	t0,56(sp)
   151e4:	844e                	mv	s0,s3
   151e6:	b9e5                	j	14ede <_vfprintf_r+0x1c8>
   151e8:	4aae                	lw	s5,200(sp)
   151ea:	5782                	lw	a5,32(sp)
   151ec:	4705                	li	a4,1
   151ee:	01a42023          	sw	s10,0(s0)
   151f2:	00160c13          	addi	s8,a2,1
   151f6:	0a85                	addi	s5,s5,1
   151f8:	00840b13          	addi	s6,s0,8
   151fc:	7af75763          	bge	a4,a5,159aa <_vfprintf_r+0xc94>
   15200:	4705                	li	a4,1
   15202:	c058                	sw	a4,4(s0)
   15204:	c7e2                	sw	s8,204(sp)
   15206:	c5d6                	sw	s5,200(sp)
   15208:	471d                	li	a4,7
   1520a:	395741e3          	blt	a4,s5,15d8c <_vfprintf_r+0x1076>
   1520e:	57b2                	lw	a5,44(sp)
   15210:	5742                	lw	a4,48(sp)
   15212:	0a85                	addi	s5,s5,1
   15214:	9c3e                	add	s8,s8,a5
   15216:	00eb2023          	sw	a4,0(s6)
   1521a:	00fb2223          	sw	a5,4(s6)
   1521e:	c7e2                	sw	s8,204(sp)
   15220:	c5d6                	sw	s5,200(sp)
   15222:	471d                	li	a4,7
   15224:	0b21                	addi	s6,s6,8
   15226:	37574fe3          	blt	a4,s5,15da4 <_vfprintf_r+0x108e>
   1522a:	474e                	lw	a4,208(sp)
   1522c:	5782                	lw	a5,32(sp)
   1522e:	010c                	addi	a1,sp,128
   15230:	c93a                	sw	a4,144(sp)
   15232:	475e                	lw	a4,212(sp)
   15234:	0908                	addi	a0,sp,144
   15236:	c102                	sw	zero,128(sp)
   15238:	cb3a                	sw	a4,148(sp)
   1523a:	476e                	lw	a4,216(sp)
   1523c:	c302                	sw	zero,132(sp)
   1523e:	c502                	sw	zero,136(sp)
   15240:	cd3a                	sw	a4,152(sp)
   15242:	477e                	lw	a4,220(sp)
   15244:	c702                	sw	zero,140(sp)
   15246:	fff78413          	addi	s0,a5,-1
   1524a:	cf3a                	sw	a4,156(sp)
   1524c:	1fc060ef          	jal	1b448 <__eqtf2>
   15250:	78050263          	beqz	a0,159d4 <_vfprintf_r+0xcbe>
   15254:	001d0793          	addi	a5,s10,1
   15258:	0a85                	addi	s5,s5,1
   1525a:	9c22                	add	s8,s8,s0
   1525c:	00fb2023          	sw	a5,0(s6)
   15260:	008b2223          	sw	s0,4(s6)
   15264:	c7e2                	sw	s8,204(sp)
   15266:	c5d6                	sw	s5,200(sp)
   15268:	479d                	li	a5,7
   1526a:	0b21                	addi	s6,s6,8
   1526c:	7557c963          	blt	a5,s5,159be <_vfprintf_r+0xca8>
   15270:	4686                	lw	a3,64(sp)
   15272:	1958                	addi	a4,sp,180
   15274:	001a8793          	addi	a5,s5,1
   15278:	01868633          	add	a2,a3,s8
   1527c:	00eb2023          	sw	a4,0(s6)
   15280:	00db2223          	sw	a3,4(s6)
   15284:	c7b2                	sw	a2,204(sp)
   15286:	c5be                	sw	a5,200(sp)
   15288:	471d                	li	a4,7
   1528a:	008b0413          	addi	s0,s6,8
   1528e:	caf750e3          	bge	a4,a5,14f2e <_vfprintf_r+0x218>
   15292:	4522                	lw	a0,8(sp)
   15294:	01d0                	addi	a2,sp,196
   15296:	85a6                	mv	a1,s1
   15298:	6c8010ef          	jal	16960 <__sprint_r>
   1529c:	4c051b63          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   152a0:	463e                	lw	a2,204(sp)
   152a2:	844e                	mv	s0,s3
   152a4:	b169                	j	14f2e <_vfprintf_r+0x218>
   152a6:	4752                	lw	a4,20(sp)
   152a8:	010cf793          	andi	a5,s9,16
   152ac:	00072b03          	lw	s6,0(a4) # 80000000 <__BSS_END__+0x7ffe0414>
   152b0:	0711                	addi	a4,a4,4
   152b2:	ca3a                	sw	a4,20(sp)
   152b4:	7c079e63          	bnez	a5,15a90 <_vfprintf_r+0xd7a>
   152b8:	040cf793          	andi	a5,s9,64
   152bc:	7c078663          	beqz	a5,15a88 <_vfprintf_r+0xd72>
   152c0:	0b42                	slli	s6,s6,0x10
   152c2:	410b5b13          	srai	s6,s6,0x10
   152c6:	41fb5d93          	srai	s11,s6,0x1f
   152ca:	87ee                	mv	a5,s11
   152cc:	d807d0e3          	bgez	a5,1504c <_vfprintf_r+0x336>
   152d0:	02d00713          	li	a4,45
   152d4:	016037b3          	snez	a5,s6
   152d8:	41b00db3          	neg	s11,s11
   152dc:	0ae103a3          	sb	a4,167(sp)
   152e0:	40fd8db3          	sub	s11,s11,a5
   152e4:	41600b33          	neg	s6,s6
   152e8:	8ee6                	mv	t4,s9
   152ea:	4785                	li	a5,1
   152ec:	dc0ad7e3          	bgez	s5,150ba <_vfprintf_r+0x3a4>
   152f0:	4705                	li	a4,1
   152f2:	0ee78363          	beq	a5,a4,153d8 <_vfprintf_r+0x6c2>
   152f6:	4709                	li	a4,2
   152f8:	30e78763          	beq	a5,a4,15606 <_vfprintf_r+0x8f0>
   152fc:	19010d13          	addi	s10,sp,400
   15300:	01dd9793          	slli	a5,s11,0x1d
   15304:	007b7713          	andi	a4,s6,7
   15308:	003b5b13          	srli	s6,s6,0x3
   1530c:	03070713          	addi	a4,a4,48
   15310:	0167eb33          	or	s6,a5,s6
   15314:	003ddd93          	srli	s11,s11,0x3
   15318:	feed0fa3          	sb	a4,-1(s10)
   1531c:	01bb67b3          	or	a5,s6,s11
   15320:	866a                	mv	a2,s10
   15322:	1d7d                	addi	s10,s10,-1
   15324:	fff1                	bnez	a5,15300 <_vfprintf_r+0x5ea>
   15326:	001ef693          	andi	a3,t4,1
   1532a:	30068463          	beqz	a3,15632 <_vfprintf_r+0x91c>
   1532e:	03000693          	li	a3,48
   15332:	30d70063          	beq	a4,a3,15632 <_vfprintf_r+0x91c>
   15336:	1679                	addi	a2,a2,-2
   15338:	0b1c                	addi	a5,sp,400
   1533a:	fedd0fa3          	sb	a3,-1(s10)
   1533e:	40c78b33          	sub	s6,a5,a2
   15342:	8cf6                	mv	s9,t4
   15344:	8d32                	mv	s10,a2
   15346:	b315                	j	1506a <_vfprintf_r+0x354>
   15348:	4752                	lw	a4,20(sp)
   1534a:	010cf793          	andi	a5,s9,16
   1534e:	00072b03          	lw	s6,0(a4)
   15352:	0711                	addi	a4,a4,4
   15354:	ca3a                	sw	a4,20(sp)
   15356:	72079663          	bnez	a5,15a82 <_vfprintf_r+0xd6c>
   1535a:	040cf793          	andi	a5,s9,64
   1535e:	70078e63          	beqz	a5,15a7a <_vfprintf_r+0xd64>
   15362:	0b42                	slli	s6,s6,0x10
   15364:	010b5b13          	srli	s6,s6,0x10
   15368:	4d81                	li	s11,0
   1536a:	b381                	j	150aa <_vfprintf_r+0x394>
   1536c:	4752                	lw	a4,20(sp)
   1536e:	0a0103a3          	sb	zero,167(sp)
   15372:	4d85                	li	s11,1
   15374:	431c                	lw	a5,0(a4)
   15376:	0711                	addi	a4,a4,4
   15378:	ca3a                	sw	a4,20(sp)
   1537a:	12f10623          	sb	a5,300(sp)
   1537e:	4b05                	li	s6,1
   15380:	12c10d13          	addi	s10,sp,300
   15384:	be09                	j	14e96 <_vfprintf_r+0x180>
   15386:	47d2                	lw	a5,20(sp)
   15388:	0a0103a3          	sb	zero,167(sp)
   1538c:	0007ad03          	lw	s10,0(a5)
   15390:	00478c13          	addi	s8,a5,4
   15394:	7e0d0a63          	beqz	s10,15b88 <_vfprintf_r+0xe72>
   15398:	420ac4e3          	bltz	s5,15fc0 <_vfprintf_r+0x12aa>
   1539c:	8656                	mv	a2,s5
   1539e:	4581                	li	a1,0
   153a0:	856a                	mv	a0,s10
   153a2:	ca46                	sw	a7,20(sp)
   153a4:	683010ef          	jal	17226 <memchr>
   153a8:	c82a                	sw	a0,16(sp)
   153aa:	48d2                	lw	a7,20(sp)
   153ac:	e119                	bnez	a0,153b2 <_vfprintf_r+0x69c>
   153ae:	25c0106f          	j	1660a <_vfprintf_r+0x18f4>
   153b2:	47c2                	lw	a5,16(sp)
   153b4:	0a714703          	lbu	a4,167(sp)
   153b8:	ca62                	sw	s8,20(sp)
   153ba:	41a78b33          	sub	s6,a5,s10
   153be:	fffb4693          	not	a3,s6
   153c2:	86fd                	srai	a3,a3,0x1f
   153c4:	c802                	sw	zero,16(sp)
   153c6:	d402                	sw	zero,40(sp)
   153c8:	d202                	sw	zero,36(sp)
   153ca:	ce02                	sw	zero,28(sp)
   153cc:	00db7db3          	and	s11,s6,a3
   153d0:	4a81                	li	s5,0
   153d2:	ca0718e3          	bnez	a4,15082 <_vfprintf_r+0x36c>
   153d6:	b4e9                	j	14ea0 <_vfprintf_r+0x18a>
   153d8:	1e0d98e3          	bnez	s11,15dc8 <_vfprintf_r+0x10b2>
   153dc:	47a5                	li	a5,9
   153de:	1f67e5e3          	bltu	a5,s6,15dc8 <_vfprintf_r+0x10b2>
   153e2:	030b0b13          	addi	s6,s6,48
   153e6:	196107a3          	sb	s6,399(sp)
   153ea:	8cf6                	mv	s9,t4
   153ec:	4b05                	li	s6,1
   153ee:	18f10d13          	addi	s10,sp,399
   153f2:	b9a5                	j	1506a <_vfprintf_r+0x354>
   153f4:	47d2                	lw	a5,20(sp)
   153f6:	0007ab83          	lw	s7,0(a5)
   153fa:	0791                	addi	a5,a5,4
   153fc:	660bd163          	bgez	s7,15a5e <_vfprintf_r+0xd48>
   15400:	41700bb3          	neg	s7,s7
   15404:	ca3e                	sw	a5,20(sp)
   15406:	00094883          	lbu	a7,0(s2)
   1540a:	004cec93          	ori	s9,s9,4
   1540e:	bc25                	j	14e46 <_vfprintf_r+0x130>
   15410:	02b00793          	li	a5,43
   15414:	00094883          	lbu	a7,0(s2)
   15418:	0af103a3          	sb	a5,167(sp)
   1541c:	b42d                	j	14e46 <_vfprintf_r+0x130>
   1541e:	00094883          	lbu	a7,0(s2)
   15422:	080cec93          	ori	s9,s9,128
   15426:	b405                	j	14e46 <_vfprintf_r+0x130>
   15428:	00094883          	lbu	a7,0(s2)
   1542c:	02a00793          	li	a5,42
   15430:	00190693          	addi	a3,s2,1
   15434:	00f89463          	bne	a7,a5,1543c <_vfprintf_r+0x726>
   15438:	44c0106f          	j	16884 <_vfprintf_r+0x1b6e>
   1543c:	fd088793          	addi	a5,a7,-48
   15440:	4725                	li	a4,9
   15442:	4a81                	li	s5,0
   15444:	4625                	li	a2,9
   15446:	02f76063          	bltu	a4,a5,15466 <_vfprintf_r+0x750>
   1544a:	0006c883          	lbu	a7,0(a3)
   1544e:	002a9713          	slli	a4,s5,0x2
   15452:	9aba                	add	s5,s5,a4
   15454:	0a86                	slli	s5,s5,0x1
   15456:	9abe                	add	s5,s5,a5
   15458:	fd088793          	addi	a5,a7,-48
   1545c:	0685                	addi	a3,a3,1
   1545e:	fef676e3          	bgeu	a2,a5,1544a <_vfprintf_r+0x734>
   15462:	680ac963          	bltz	s5,15af4 <_vfprintf_r+0xdde>
   15466:	8936                	mv	s2,a3
   15468:	b2c5                	j	14e48 <_vfprintf_r+0x132>
   1546a:	00094883          	lbu	a7,0(s2)
   1546e:	001cec93          	ori	s9,s9,1
   15472:	bad1                	j	14e46 <_vfprintf_r+0x130>
   15474:	0a714783          	lbu	a5,167(sp)
   15478:	00094883          	lbu	a7,0(s2)
   1547c:	9c0795e3          	bnez	a5,14e46 <_vfprintf_r+0x130>
   15480:	02000793          	li	a5,32
   15484:	0af103a3          	sb	a5,167(sp)
   15488:	ba7d                	j	14e46 <_vfprintf_r+0x130>
   1548a:	010cee93          	ori	t4,s9,16
   1548e:	020ef793          	andi	a5,t4,32
   15492:	58078a63          	beqz	a5,15a26 <_vfprintf_r+0xd10>
   15496:	47d2                	lw	a5,20(sp)
   15498:	00778c13          	addi	s8,a5,7
   1549c:	ff8c7c13          	andi	s8,s8,-8
   154a0:	008c0793          	addi	a5,s8,8
   154a4:	ca3e                	sw	a5,20(sp)
   154a6:	000c2b03          	lw	s6,0(s8)
   154aa:	004c2d83          	lw	s11,4(s8)
   154ae:	4785                	li	a5,1
   154b0:	b101                	j	150b0 <_vfprintf_r+0x39a>
   154b2:	00094883          	lbu	a7,0(s2)
   154b6:	008cec93          	ori	s9,s9,8
   154ba:	b271                	j	14e46 <_vfprintf_r+0x130>
   154bc:	4752                	lw	a4,20(sp)
   154be:	67a1                	lui	a5,0x8
   154c0:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8864>
   154c4:	0af11423          	sh	a5,168(sp)
   154c8:	00470793          	addi	a5,a4,4
   154cc:	ca3e                	sw	a5,20(sp)
   154ce:	67f9                	lui	a5,0x1e
   154d0:	94c78793          	addi	a5,a5,-1716 # 1d94c <__clzsi2+0x94>
   154d4:	da3e                	sw	a5,52(sp)
   154d6:	00072b03          	lw	s6,0(a4)
   154da:	4d81                	li	s11,0
   154dc:	002cee93          	ori	t4,s9,2
   154e0:	4789                	li	a5,2
   154e2:	07800893          	li	a7,120
   154e6:	b6e9                	j	150b0 <_vfprintf_r+0x39a>
   154e8:	020cf793          	andi	a5,s9,32
   154ec:	5c078463          	beqz	a5,15ab4 <_vfprintf_r+0xd9e>
   154f0:	47d2                	lw	a5,20(sp)
   154f2:	46b2                	lw	a3,12(sp)
   154f4:	439c                	lw	a5,0(a5)
   154f6:	41f6d713          	srai	a4,a3,0x1f
   154fa:	c394                	sw	a3,0(a5)
   154fc:	c3d8                	sw	a4,4(a5)
   154fe:	47d2                	lw	a5,20(sp)
   15500:	8d4a                	mv	s10,s2
   15502:	0791                	addi	a5,a5,4
   15504:	ca3e                	sw	a5,20(sp)
   15506:	bcb1                	j	14f62 <_vfprintf_r+0x24c>
   15508:	00094883          	lbu	a7,0(s2)
   1550c:	06c00793          	li	a5,108
   15510:	64f88b63          	beq	a7,a5,15b66 <_vfprintf_r+0xe50>
   15514:	010cec93          	ori	s9,s9,16
   15518:	b23d                	j	14e46 <_vfprintf_r+0x130>
   1551a:	00094883          	lbu	a7,0(s2)
   1551e:	06800793          	li	a5,104
   15522:	62f88b63          	beq	a7,a5,15b58 <_vfprintf_r+0xe42>
   15526:	040cec93          	ori	s9,s9,64
   1552a:	ba31                	j	14e46 <_vfprintf_r+0x130>
   1552c:	06500713          	li	a4,101
   15530:	cb175ce3          	bge	a4,a7,151e8 <_vfprintf_r+0x4d2>
   15534:	474e                	lw	a4,208(sp)
   15536:	010c                	addi	a1,sp,128
   15538:	0908                	addi	a0,sp,144
   1553a:	c93a                	sw	a4,144(sp)
   1553c:	475e                	lw	a4,212(sp)
   1553e:	dc32                	sw	a2,56(sp)
   15540:	c102                	sw	zero,128(sp)
   15542:	cb3a                	sw	a4,148(sp)
   15544:	476e                	lw	a4,216(sp)
   15546:	c302                	sw	zero,132(sp)
   15548:	c502                	sw	zero,136(sp)
   1554a:	cd3a                	sw	a4,152(sp)
   1554c:	477e                	lw	a4,220(sp)
   1554e:	c702                	sw	zero,140(sp)
   15550:	cf3a                	sw	a4,156(sp)
   15552:	6f7050ef          	jal	1b448 <__eqtf2>
   15556:	5662                	lw	a2,56(sp)
   15558:	36051363          	bnez	a0,158be <_vfprintf_r+0xba8>
   1555c:	47ae                	lw	a5,200(sp)
   1555e:	6779                	lui	a4,0x1e
   15560:	97c70713          	addi	a4,a4,-1668 # 1d97c <__clzsi2+0xc4>
   15564:	c018                	sw	a4,0(s0)
   15566:	0605                	addi	a2,a2,1
   15568:	4705                	li	a4,1
   1556a:	0785                	addi	a5,a5,1
   1556c:	c058                	sw	a4,4(s0)
   1556e:	c7b2                	sw	a2,204(sp)
   15570:	c5be                	sw	a5,200(sp)
   15572:	471d                	li	a4,7
   15574:	0421                	addi	s0,s0,8
   15576:	16f74de3          	blt	a4,a5,15ef0 <_vfprintf_r+0x11da>
   1557a:	57ba                	lw	a5,172(sp)
   1557c:	5702                	lw	a4,32(sp)
   1557e:	4ce7db63          	bge	a5,a4,15a54 <_vfprintf_r+0xd3e>
   15582:	57c2                	lw	a5,48(sp)
   15584:	5732                	lw	a4,44(sp)
   15586:	0421                	addi	s0,s0,8
   15588:	fef42c23          	sw	a5,-8(s0)
   1558c:	47ae                	lw	a5,200(sp)
   1558e:	963a                	add	a2,a2,a4
   15590:	fee42e23          	sw	a4,-4(s0)
   15594:	0785                	addi	a5,a5,1
   15596:	c7b2                	sw	a2,204(sp)
   15598:	c5be                	sw	a5,200(sp)
   1559a:	471d                	li	a4,7
   1559c:	5cf74c63          	blt	a4,a5,15b74 <_vfprintf_r+0xe5e>
   155a0:	5782                	lw	a5,32(sp)
   155a2:	fff78a93          	addi	s5,a5,-1
   155a6:	995054e3          	blez	s5,14f2e <_vfprintf_r+0x218>
   155aa:	6879                	lui	a6,0x1e
   155ac:	ca880813          	addi	a6,a6,-856 # 1dca8 <zeroes.0>
   155b0:	4741                	li	a4,16
   155b2:	47ae                	lw	a5,200(sp)
   155b4:	4b41                	li	s6,16
   155b6:	4c1d                	li	s8,7
   155b8:	8d42                	mv	s10,a6
   155ba:	01574763          	blt	a4,s5,155c8 <_vfprintf_r+0x8b2>
   155be:	14b0006f          	j	15f08 <_vfprintf_r+0x11f2>
   155c2:	1ac1                	addi	s5,s5,-16
   155c4:	155b51e3          	bge	s6,s5,15f06 <_vfprintf_r+0x11f0>
   155c8:	0641                	addi	a2,a2,16
   155ca:	0785                	addi	a5,a5,1
   155cc:	01a42023          	sw	s10,0(s0)
   155d0:	01642223          	sw	s6,4(s0)
   155d4:	c7b2                	sw	a2,204(sp)
   155d6:	c5be                	sw	a5,200(sp)
   155d8:	0421                	addi	s0,s0,8
   155da:	fefc54e3          	bge	s8,a5,155c2 <_vfprintf_r+0x8ac>
   155de:	4522                	lw	a0,8(sp)
   155e0:	01d0                	addi	a2,sp,196
   155e2:	85a6                	mv	a1,s1
   155e4:	37c010ef          	jal	16960 <__sprint_r>
   155e8:	18051563          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   155ec:	463e                	lw	a2,204(sp)
   155ee:	47ae                	lw	a5,200(sp)
   155f0:	844e                	mv	s0,s3
   155f2:	bfc1                	j	155c2 <_vfprintf_r+0x8ac>
   155f4:	4705                	li	a4,1
   155f6:	00e79463          	bne	a5,a4,155fe <_vfprintf_r+0x8e8>
   155fa:	0f20106f          	j	166ec <_vfprintf_r+0x19d6>
   155fe:	4709                	li	a4,2
   15600:	8ee6                	mv	t4,s9
   15602:	cee79de3          	bne	a5,a4,152fc <_vfprintf_r+0x5e6>
   15606:	56d2                	lw	a3,52(sp)
   15608:	19010d13          	addi	s10,sp,400
   1560c:	00fb7793          	andi	a5,s6,15
   15610:	97b6                	add	a5,a5,a3
   15612:	0007c703          	lbu	a4,0(a5)
   15616:	004b5b13          	srli	s6,s6,0x4
   1561a:	01cd9793          	slli	a5,s11,0x1c
   1561e:	0167eb33          	or	s6,a5,s6
   15622:	004ddd93          	srli	s11,s11,0x4
   15626:	feed0fa3          	sb	a4,-1(s10)
   1562a:	01bb67b3          	or	a5,s6,s11
   1562e:	1d7d                	addi	s10,s10,-1
   15630:	fff1                	bnez	a5,1560c <_vfprintf_r+0x8f6>
   15632:	0b1c                	addi	a5,sp,400
   15634:	41a78b33          	sub	s6,a5,s10
   15638:	8cf6                	mv	s9,t4
   1563a:	bc05                	j	1506a <_vfprintf_r+0x354>
   1563c:	41bb8c33          	sub	s8,s7,s11
   15640:	8d8052e3          	blez	s8,14f04 <_vfprintf_r+0x1ee>
   15644:	6879                	lui	a6,0x1e
   15646:	4541                	li	a0,16
   15648:	45ae                	lw	a1,200(sp)
   1564a:	ca880813          	addi	a6,a6,-856 # 1dca8 <zeroes.0>
   1564e:	05855f63          	bge	a0,s8,156ac <_vfprintf_r+0x996>
   15652:	dc4a                	sw	s2,56(sp)
   15654:	87a2                	mv	a5,s0
   15656:	4ec1                	li	t4,16
   15658:	8462                	mv	s0,s8
   1565a:	4f9d                	li	t6,7
   1565c:	8c5a                	mv	s8,s6
   1565e:	8942                	mv	s2,a6
   15660:	8b56                	mv	s6,s5
   15662:	8ac6                	mv	s5,a7
   15664:	a021                	j	1566c <_vfprintf_r+0x956>
   15666:	1441                	addi	s0,s0,-16
   15668:	028edb63          	bge	t4,s0,1569e <_vfprintf_r+0x988>
   1566c:	0641                	addi	a2,a2,16
   1566e:	0585                	addi	a1,a1,1 # 2001 <exit-0xe093>
   15670:	0127a023          	sw	s2,0(a5)
   15674:	01d7a223          	sw	t4,4(a5)
   15678:	c7b2                	sw	a2,204(sp)
   1567a:	c5ae                	sw	a1,200(sp)
   1567c:	07a1                	addi	a5,a5,8
   1567e:	febfd4e3          	bge	t6,a1,15666 <_vfprintf_r+0x950>
   15682:	4522                	lw	a0,8(sp)
   15684:	01d0                	addi	a2,sp,196
   15686:	85a6                	mv	a1,s1
   15688:	2d8010ef          	jal	16960 <__sprint_r>
   1568c:	e17d                	bnez	a0,15772 <_vfprintf_r+0xa5c>
   1568e:	4ec1                	li	t4,16
   15690:	1441                	addi	s0,s0,-16
   15692:	463e                	lw	a2,204(sp)
   15694:	45ae                	lw	a1,200(sp)
   15696:	87ce                	mv	a5,s3
   15698:	4f9d                	li	t6,7
   1569a:	fc8ec9e3          	blt	t4,s0,1566c <_vfprintf_r+0x956>
   1569e:	884a                	mv	a6,s2
   156a0:	5962                	lw	s2,56(sp)
   156a2:	88d6                	mv	a7,s5
   156a4:	8ada                	mv	s5,s6
   156a6:	8b62                	mv	s6,s8
   156a8:	8c22                	mv	s8,s0
   156aa:	843e                	mv	s0,a5
   156ac:	9662                	add	a2,a2,s8
   156ae:	0585                	addi	a1,a1,1
   156b0:	01042023          	sw	a6,0(s0)
   156b4:	01842223          	sw	s8,4(s0)
   156b8:	c7b2                	sw	a2,204(sp)
   156ba:	c5ae                	sw	a1,200(sp)
   156bc:	471d                	li	a4,7
   156be:	0421                	addi	s0,s0,8
   156c0:	84b752e3          	bge	a4,a1,14f04 <_vfprintf_r+0x1ee>
   156c4:	4522                	lw	a0,8(sp)
   156c6:	01d0                	addi	a2,sp,196
   156c8:	85a6                	mv	a1,s1
   156ca:	dc46                	sw	a7,56(sp)
   156cc:	294010ef          	jal	16960 <__sprint_r>
   156d0:	e14d                	bnez	a0,15772 <_vfprintf_r+0xa5c>
   156d2:	463e                	lw	a2,204(sp)
   156d4:	58e2                	lw	a7,56(sp)
   156d6:	844e                	mv	s0,s3
   156d8:	82dff06f          	j	14f04 <_vfprintf_r+0x1ee>
   156dc:	6879                	lui	a6,0x1e
   156de:	4741                	li	a4,16
   156e0:	45ae                	lw	a1,200(sp)
   156e2:	ca880813          	addi	a6,a6,-856 # 1dca8 <zeroes.0>
   156e6:	05575763          	bge	a4,s5,15734 <_vfprintf_r+0xa1e>
   156ea:	87a2                	mv	a5,s0
   156ec:	4741                	li	a4,16
   156ee:	8456                	mv	s0,s5
   156f0:	4c1d                	li	s8,7
   156f2:	dc46                	sw	a7,56(sp)
   156f4:	8ad2                	mv	s5,s4
   156f6:	a021                	j	156fe <_vfprintf_r+0x9e8>
   156f8:	1441                	addi	s0,s0,-16
   156fa:	02875963          	bge	a4,s0,1572c <_vfprintf_r+0xa16>
   156fe:	0641                	addi	a2,a2,16
   15700:	0585                	addi	a1,a1,1
   15702:	0147a023          	sw	s4,0(a5)
   15706:	c3d8                	sw	a4,4(a5)
   15708:	c7b2                	sw	a2,204(sp)
   1570a:	c5ae                	sw	a1,200(sp)
   1570c:	07a1                	addi	a5,a5,8
   1570e:	febc55e3          	bge	s8,a1,156f8 <_vfprintf_r+0x9e2>
   15712:	4522                	lw	a0,8(sp)
   15714:	01d0                	addi	a2,sp,196
   15716:	85a6                	mv	a1,s1
   15718:	248010ef          	jal	16960 <__sprint_r>
   1571c:	e939                	bnez	a0,15772 <_vfprintf_r+0xa5c>
   1571e:	4741                	li	a4,16
   15720:	1441                	addi	s0,s0,-16
   15722:	463e                	lw	a2,204(sp)
   15724:	45ae                	lw	a1,200(sp)
   15726:	87ce                	mv	a5,s3
   15728:	fc874be3          	blt	a4,s0,156fe <_vfprintf_r+0x9e8>
   1572c:	58e2                	lw	a7,56(sp)
   1572e:	8856                	mv	a6,s5
   15730:	8aa2                	mv	s5,s0
   15732:	843e                	mv	s0,a5
   15734:	9656                	add	a2,a2,s5
   15736:	0585                	addi	a1,a1,1
   15738:	01042023          	sw	a6,0(s0)
   1573c:	01542223          	sw	s5,4(s0)
   15740:	c7b2                	sw	a2,204(sp)
   15742:	c5ae                	sw	a1,200(sp)
   15744:	471d                	li	a4,7
   15746:	0421                	addi	s0,s0,8
   15748:	fcb75263          	bge	a4,a1,14f0c <_vfprintf_r+0x1f6>
   1574c:	4522                	lw	a0,8(sp)
   1574e:	01d0                	addi	a2,sp,196
   15750:	85a6                	mv	a1,s1
   15752:	dc46                	sw	a7,56(sp)
   15754:	20c010ef          	jal	16960 <__sprint_r>
   15758:	ed09                	bnez	a0,15772 <_vfprintf_r+0xa5c>
   1575a:	463e                	lw	a2,204(sp)
   1575c:	58e2                	lw	a7,56(sp)
   1575e:	844e                	mv	s0,s3
   15760:	facff06f          	j	14f0c <_vfprintf_r+0x1f6>
   15764:	4522                	lw	a0,8(sp)
   15766:	01d0                	addi	a2,sp,196
   15768:	85a6                	mv	a1,s1
   1576a:	1f6010ef          	jal	16960 <__sprint_r>
   1576e:	fe050163          	beqz	a0,14f50 <_vfprintf_r+0x23a>
   15772:	45c2                	lw	a1,16(sp)
   15774:	fe058f63          	beqz	a1,14f72 <_vfprintf_r+0x25c>
   15778:	4522                	lw	a0,8(sp)
   1577a:	dc7fe0ef          	jal	14540 <_free_r>
   1577e:	ff4ff06f          	j	14f72 <_vfprintf_r+0x25c>
   15782:	8ee6                	mv	t4,s9
   15784:	b6b5                	j	152f0 <_vfprintf_r+0x5da>
   15786:	6879                	lui	a6,0x1e
   15788:	4541                	li	a0,16
   1578a:	45ae                	lw	a1,200(sp)
   1578c:	cb880c13          	addi	s8,a6,-840 # 1dcb8 <blanks.1>
   15790:	06e55363          	bge	a0,a4,157f6 <_vfprintf_r+0xae0>
   15794:	c8ca                	sw	s2,80(sp)
   15796:	87a2                	mv	a5,s0
   15798:	8962                	mv	s2,s8
   1579a:	4ec1                	li	t4,16
   1579c:	8c5a                	mv	s8,s6
   1579e:	439d                	li	t2,7
   157a0:	8b56                	mv	s6,s5
   157a2:	dc16                	sw	t0,56(sp)
   157a4:	c6fe                	sw	t6,76(sp)
   157a6:	843a                	mv	s0,a4
   157a8:	8ac6                	mv	s5,a7
   157aa:	a021                	j	157b2 <_vfprintf_r+0xa9c>
   157ac:	1441                	addi	s0,s0,-16
   157ae:	028edb63          	bge	t4,s0,157e4 <_vfprintf_r+0xace>
   157b2:	0641                	addi	a2,a2,16
   157b4:	0585                	addi	a1,a1,1
   157b6:	0127a023          	sw	s2,0(a5)
   157ba:	01d7a223          	sw	t4,4(a5)
   157be:	c7b2                	sw	a2,204(sp)
   157c0:	c5ae                	sw	a1,200(sp)
   157c2:	07a1                	addi	a5,a5,8
   157c4:	feb3d4e3          	bge	t2,a1,157ac <_vfprintf_r+0xa96>
   157c8:	4522                	lw	a0,8(sp)
   157ca:	01d0                	addi	a2,sp,196
   157cc:	85a6                	mv	a1,s1
   157ce:	192010ef          	jal	16960 <__sprint_r>
   157d2:	f145                	bnez	a0,15772 <_vfprintf_r+0xa5c>
   157d4:	4ec1                	li	t4,16
   157d6:	1441                	addi	s0,s0,-16
   157d8:	463e                	lw	a2,204(sp)
   157da:	45ae                	lw	a1,200(sp)
   157dc:	87ce                	mv	a5,s3
   157de:	439d                	li	t2,7
   157e0:	fc8ec9e3          	blt	t4,s0,157b2 <_vfprintf_r+0xa9c>
   157e4:	88d6                	mv	a7,s5
   157e6:	52e2                	lw	t0,56(sp)
   157e8:	8ada                	mv	s5,s6
   157ea:	4fb6                	lw	t6,76(sp)
   157ec:	8b62                	mv	s6,s8
   157ee:	8c4a                	mv	s8,s2
   157f0:	4946                	lw	s2,80(sp)
   157f2:	8722                	mv	a4,s0
   157f4:	843e                	mv	s0,a5
   157f6:	963a                	add	a2,a2,a4
   157f8:	0585                	addi	a1,a1,1
   157fa:	c058                	sw	a4,4(s0)
   157fc:	01842023          	sw	s8,0(s0)
   15800:	c7b2                	sw	a2,204(sp)
   15802:	c5ae                	sw	a1,200(sp)
   15804:	471d                	li	a4,7
   15806:	0421                	addi	s0,s0,8
   15808:	eab75a63          	bge	a4,a1,14ebc <_vfprintf_r+0x1a6>
   1580c:	4522                	lw	a0,8(sp)
   1580e:	01d0                	addi	a2,sp,196
   15810:	85a6                	mv	a1,s1
   15812:	c8c6                	sw	a7,80(sp)
   15814:	c6fe                	sw	t6,76(sp)
   15816:	dc16                	sw	t0,56(sp)
   15818:	148010ef          	jal	16960 <__sprint_r>
   1581c:	f939                	bnez	a0,15772 <_vfprintf_r+0xa5c>
   1581e:	463e                	lw	a2,204(sp)
   15820:	48c6                	lw	a7,80(sp)
   15822:	4fb6                	lw	t6,76(sp)
   15824:	52e2                	lw	t0,56(sp)
   15826:	844e                	mv	s0,s3
   15828:	e94ff06f          	j	14ebc <_vfprintf_r+0x1a6>
   1582c:	4522                	lw	a0,8(sp)
   1582e:	01d0                	addi	a2,sp,196
   15830:	85a6                	mv	a1,s1
   15832:	c6c6                	sw	a7,76(sp)
   15834:	dc7e                	sw	t6,56(sp)
   15836:	12a010ef          	jal	16960 <__sprint_r>
   1583a:	fd05                	bnez	a0,15772 <_vfprintf_r+0xa5c>
   1583c:	463e                	lw	a2,204(sp)
   1583e:	48b6                	lw	a7,76(sp)
   15840:	5fe2                	lw	t6,56(sp)
   15842:	844e                	mv	s0,s3
   15844:	eb8ff06f          	j	14efc <_vfprintf_r+0x1e6>
   15848:	6879                	lui	a6,0x1e
   1584a:	4741                	li	a4,16
   1584c:	47ae                	lw	a5,200(sp)
   1584e:	cb880c13          	addi	s8,a6,-840 # 1dcb8 <blanks.1>
   15852:	05575163          	bge	a4,s5,15894 <_vfprintf_r+0xb7e>
   15856:	4d22                	lw	s10,8(sp)
   15858:	4b41                	li	s6,16
   1585a:	4c9d                	li	s9,7
   1585c:	a021                	j	15864 <_vfprintf_r+0xb4e>
   1585e:	1ac1                	addi	s5,s5,-16
   15860:	035b5a63          	bge	s6,s5,15894 <_vfprintf_r+0xb7e>
   15864:	0641                	addi	a2,a2,16
   15866:	0785                	addi	a5,a5,1
   15868:	01842023          	sw	s8,0(s0)
   1586c:	01642223          	sw	s6,4(s0)
   15870:	c7b2                	sw	a2,204(sp)
   15872:	c5be                	sw	a5,200(sp)
   15874:	0421                	addi	s0,s0,8
   15876:	fefcd4e3          	bge	s9,a5,1585e <_vfprintf_r+0xb48>
   1587a:	01d0                	addi	a2,sp,196
   1587c:	85a6                	mv	a1,s1
   1587e:	856a                	mv	a0,s10
   15880:	0e0010ef          	jal	16960 <__sprint_r>
   15884:	ee0517e3          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   15888:	1ac1                	addi	s5,s5,-16
   1588a:	463e                	lw	a2,204(sp)
   1588c:	47ae                	lw	a5,200(sp)
   1588e:	844e                	mv	s0,s3
   15890:	fd5b4ae3          	blt	s6,s5,15864 <_vfprintf_r+0xb4e>
   15894:	9656                	add	a2,a2,s5
   15896:	0785                	addi	a5,a5,1
   15898:	01842023          	sw	s8,0(s0)
   1589c:	01542223          	sw	s5,4(s0)
   158a0:	c7b2                	sw	a2,204(sp)
   158a2:	c5be                	sw	a5,200(sp)
   158a4:	471d                	li	a4,7
   158a6:	e8f75c63          	bge	a4,a5,14f3e <_vfprintf_r+0x228>
   158aa:	4522                	lw	a0,8(sp)
   158ac:	01d0                	addi	a2,sp,196
   158ae:	85a6                	mv	a1,s1
   158b0:	0b0010ef          	jal	16960 <__sprint_r>
   158b4:	ea051fe3          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   158b8:	463e                	lw	a2,204(sp)
   158ba:	e84ff06f          	j	14f3e <_vfprintf_r+0x228>
   158be:	553a                	lw	a0,172(sp)
   158c0:	5ca05e63          	blez	a0,15e9c <_vfprintf_r+0x1186>
   158c4:	47f2                	lw	a5,28(sp)
   158c6:	5702                	lw	a4,32(sp)
   158c8:	8abe                	mv	s5,a5
   158ca:	22f74163          	blt	a4,a5,15aec <_vfprintf_r+0xdd6>
   158ce:	01505f63          	blez	s5,158ec <_vfprintf_r+0xbd6>
   158d2:	472e                	lw	a4,200(sp)
   158d4:	9656                	add	a2,a2,s5
   158d6:	01a42023          	sw	s10,0(s0)
   158da:	0705                	addi	a4,a4,1
   158dc:	01542223          	sw	s5,4(s0)
   158e0:	c7b2                	sw	a2,204(sp)
   158e2:	c5ba                	sw	a4,200(sp)
   158e4:	459d                	li	a1,7
   158e6:	0421                	addi	s0,s0,8
   158e8:	14e5c5e3          	blt	a1,a4,16232 <_vfprintf_r+0x151c>
   158ec:	fffac713          	not	a4,s5
   158f0:	47f2                	lw	a5,28(sp)
   158f2:	877d                	srai	a4,a4,0x1f
   158f4:	00eafab3          	and	s5,s5,a4
   158f8:	41578ab3          	sub	s5,a5,s5
   158fc:	2b504163          	bgtz	s5,15b9e <_vfprintf_r+0xe88>
   15900:	47f2                	lw	a5,28(sp)
   15902:	400cf713          	andi	a4,s9,1024
   15906:	00fd0c33          	add	s8,s10,a5
   1590a:	7a071e63          	bnez	a4,160c6 <_vfprintf_r+0x13b0>
   1590e:	5aba                	lw	s5,172(sp)
   15910:	5782                	lw	a5,32(sp)
   15912:	2cfaca63          	blt	s5,a5,15be6 <_vfprintf_r+0xed0>
   15916:	001cf713          	andi	a4,s9,1
   1591a:	2c071663          	bnez	a4,15be6 <_vfprintf_r+0xed0>
   1591e:	5702                	lw	a4,32(sp)
   15920:	00ed07b3          	add	a5,s10,a4
   15924:	41570ab3          	sub	s5,a4,s5
   15928:	41878b33          	sub	s6,a5,s8
   1592c:	016ad363          	bge	s5,s6,15932 <_vfprintf_r+0xc1c>
   15930:	8b56                	mv	s6,s5
   15932:	01605f63          	blez	s6,15950 <_vfprintf_r+0xc3a>
   15936:	47ae                	lw	a5,200(sp)
   15938:	965a                	add	a2,a2,s6
   1593a:	01842023          	sw	s8,0(s0)
   1593e:	0785                	addi	a5,a5,1
   15940:	01642223          	sw	s6,4(s0)
   15944:	c7b2                	sw	a2,204(sp)
   15946:	c5be                	sw	a5,200(sp)
   15948:	471d                	li	a4,7
   1594a:	0421                	addi	s0,s0,8
   1594c:	4cf74de3          	blt	a4,a5,16626 <_vfprintf_r+0x1910>
   15950:	fffb4793          	not	a5,s6
   15954:	87fd                	srai	a5,a5,0x1f
   15956:	00fb7b33          	and	s6,s6,a5
   1595a:	416a8ab3          	sub	s5,s5,s6
   1595e:	dd505863          	blez	s5,14f2e <_vfprintf_r+0x218>
   15962:	6879                	lui	a6,0x1e
   15964:	ca880813          	addi	a6,a6,-856 # 1dca8 <zeroes.0>
   15968:	4741                	li	a4,16
   1596a:	47ae                	lw	a5,200(sp)
   1596c:	4b41                	li	s6,16
   1596e:	4c1d                	li	s8,7
   15970:	8d42                	mv	s10,a6
   15972:	01574663          	blt	a4,s5,1597e <_vfprintf_r+0xc68>
   15976:	ab49                	j	15f08 <_vfprintf_r+0x11f2>
   15978:	1ac1                	addi	s5,s5,-16
   1597a:	595b5663          	bge	s6,s5,15f06 <_vfprintf_r+0x11f0>
   1597e:	0641                	addi	a2,a2,16
   15980:	0785                	addi	a5,a5,1
   15982:	01a42023          	sw	s10,0(s0)
   15986:	01642223          	sw	s6,4(s0)
   1598a:	c7b2                	sw	a2,204(sp)
   1598c:	c5be                	sw	a5,200(sp)
   1598e:	0421                	addi	s0,s0,8
   15990:	fefc54e3          	bge	s8,a5,15978 <_vfprintf_r+0xc62>
   15994:	4522                	lw	a0,8(sp)
   15996:	01d0                	addi	a2,sp,196
   15998:	85a6                	mv	a1,s1
   1599a:	7c7000ef          	jal	16960 <__sprint_r>
   1599e:	dc051ae3          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   159a2:	463e                	lw	a2,204(sp)
   159a4:	47ae                	lw	a5,200(sp)
   159a6:	844e                	mv	s0,s3
   159a8:	bfc1                	j	15978 <_vfprintf_r+0xc62>
   159aa:	001cf593          	andi	a1,s9,1
   159ae:	840599e3          	bnez	a1,15200 <_vfprintf_r+0x4ea>
   159b2:	c058                	sw	a4,4(s0)
   159b4:	c7e2                	sw	s8,204(sp)
   159b6:	c5d6                	sw	s5,200(sp)
   159b8:	479d                	li	a5,7
   159ba:	8b57dbe3          	bge	a5,s5,15270 <_vfprintf_r+0x55a>
   159be:	4522                	lw	a0,8(sp)
   159c0:	01d0                	addi	a2,sp,196
   159c2:	85a6                	mv	a1,s1
   159c4:	79d000ef          	jal	16960 <__sprint_r>
   159c8:	da0515e3          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   159cc:	4c3e                	lw	s8,204(sp)
   159ce:	4aae                	lw	s5,200(sp)
   159d0:	8b4e                	mv	s6,s3
   159d2:	b879                	j	15270 <_vfprintf_r+0x55a>
   159d4:	5702                	lw	a4,32(sp)
   159d6:	4785                	li	a5,1
   159d8:	88e7dce3          	bge	a5,a4,15270 <_vfprintf_r+0x55a>
   159dc:	6879                	lui	a6,0x1e
   159de:	47c5                	li	a5,17
   159e0:	ca880813          	addi	a6,a6,-856 # 1dca8 <zeroes.0>
   159e4:	60e7d863          	bge	a5,a4,15ff4 <_vfprintf_r+0x12de>
   159e8:	ce4a                	sw	s2,28(sp)
   159ea:	47c1                	li	a5,16
   159ec:	4d1d                	li	s10,7
   159ee:	8942                	mv	s2,a6
   159f0:	a021                	j	159f8 <_vfprintf_r+0xce2>
   159f2:	1441                	addi	s0,s0,-16
   159f4:	5e87de63          	bge	a5,s0,15ff0 <_vfprintf_r+0x12da>
   159f8:	0c41                	addi	s8,s8,16
   159fa:	0a85                	addi	s5,s5,1
   159fc:	012b2023          	sw	s2,0(s6)
   15a00:	00fb2223          	sw	a5,4(s6)
   15a04:	c7e2                	sw	s8,204(sp)
   15a06:	c5d6                	sw	s5,200(sp)
   15a08:	0b21                	addi	s6,s6,8
   15a0a:	ff5d54e3          	bge	s10,s5,159f2 <_vfprintf_r+0xcdc>
   15a0e:	4522                	lw	a0,8(sp)
   15a10:	01d0                	addi	a2,sp,196
   15a12:	85a6                	mv	a1,s1
   15a14:	74d000ef          	jal	16960 <__sprint_r>
   15a18:	d4051de3          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   15a1c:	4c3e                	lw	s8,204(sp)
   15a1e:	4aae                	lw	s5,200(sp)
   15a20:	8b4e                	mv	s6,s3
   15a22:	47c1                	li	a5,16
   15a24:	b7f9                	j	159f2 <_vfprintf_r+0xcdc>
   15a26:	4752                	lw	a4,20(sp)
   15a28:	010ef793          	andi	a5,t4,16
   15a2c:	00072b03          	lw	s6,0(a4)
   15a30:	0711                	addi	a4,a4,4
   15a32:	ca3a                	sw	a4,20(sp)
   15a34:	ef9d                	bnez	a5,15a72 <_vfprintf_r+0xd5c>
   15a36:	040ef793          	andi	a5,t4,64
   15a3a:	c79d                	beqz	a5,15a68 <_vfprintf_r+0xd52>
   15a3c:	0b42                	slli	s6,s6,0x10
   15a3e:	010b5b13          	srli	s6,s6,0x10
   15a42:	4d81                	li	s11,0
   15a44:	4785                	li	a5,1
   15a46:	e6aff06f          	j	150b0 <_vfprintf_r+0x39a>
   15a4a:	4b01                	li	s6,0
   15a4c:	19010d13          	addi	s10,sp,400
   15a50:	e1aff06f          	j	1506a <_vfprintf_r+0x354>
   15a54:	001cf793          	andi	a5,s9,1
   15a58:	cc078b63          	beqz	a5,14f2e <_vfprintf_r+0x218>
   15a5c:	b61d                	j	15582 <_vfprintf_r+0x86c>
   15a5e:	00094883          	lbu	a7,0(s2)
   15a62:	ca3e                	sw	a5,20(sp)
   15a64:	be2ff06f          	j	14e46 <_vfprintf_r+0x130>
   15a68:	200ef793          	andi	a5,t4,512
   15a6c:	c399                	beqz	a5,15a72 <_vfprintf_r+0xd5c>
   15a6e:	0ffb7b13          	zext.b	s6,s6
   15a72:	4d81                	li	s11,0
   15a74:	4785                	li	a5,1
   15a76:	e3aff06f          	j	150b0 <_vfprintf_r+0x39a>
   15a7a:	200cf793          	andi	a5,s9,512
   15a7e:	7e079563          	bnez	a5,16268 <_vfprintf_r+0x1552>
   15a82:	4d81                	li	s11,0
   15a84:	e26ff06f          	j	150aa <_vfprintf_r+0x394>
   15a88:	200cf793          	andi	a5,s9,512
   15a8c:	7c079663          	bnez	a5,16258 <_vfprintf_r+0x1542>
   15a90:	41fb5d93          	srai	s11,s6,0x1f
   15a94:	87ee                	mv	a5,s11
   15a96:	db2ff06f          	j	15048 <_vfprintf_r+0x332>
   15a9a:	57f2                	lw	a5,60(sp)
   15a9c:	00094883          	lbu	a7,0(s2)
   15aa0:	ba078363          	beqz	a5,14e46 <_vfprintf_r+0x130>
   15aa4:	0007c783          	lbu	a5,0(a5)
   15aa8:	b8078f63          	beqz	a5,14e46 <_vfprintf_r+0x130>
   15aac:	400cec93          	ori	s9,s9,1024
   15ab0:	b96ff06f          	j	14e46 <_vfprintf_r+0x130>
   15ab4:	010cf793          	andi	a5,s9,16
   15ab8:	4c079063          	bnez	a5,15f78 <_vfprintf_r+0x1262>
   15abc:	040cf793          	andi	a5,s9,64
   15ac0:	78079563          	bnez	a5,1624a <_vfprintf_r+0x1534>
   15ac4:	200cfe13          	andi	t3,s9,512
   15ac8:	4a0e0863          	beqz	t3,15f78 <_vfprintf_r+0x1262>
   15acc:	47d2                	lw	a5,20(sp)
   15ace:	4732                	lw	a4,12(sp)
   15ad0:	439c                	lw	a5,0(a5)
   15ad2:	00e78023          	sb	a4,0(a5)
   15ad6:	b425                	j	154fe <_vfprintf_r+0x7e8>
   15ad8:	47d2                	lw	a5,20(sp)
   15ada:	4398                	lw	a4,0(a5)
   15adc:	0791                	addi	a5,a5,4
   15ade:	ca3e                	sw	a5,20(sp)
   15ae0:	430c                	lw	a1,0(a4)
   15ae2:	4350                	lw	a2,4(a4)
   15ae4:	4714                	lw	a3,8(a4)
   15ae6:	4758                	lw	a4,12(a4)
   15ae8:	e52ff06f          	j	1513a <_vfprintf_r+0x424>
   15aec:	8aba                	mv	s5,a4
   15aee:	df5042e3          	bgtz	s5,158d2 <_vfprintf_r+0xbbc>
   15af2:	bbed                	j	158ec <_vfprintf_r+0xbd6>
   15af4:	5afd                	li	s5,-1
   15af6:	8936                	mv	s2,a3
   15af8:	b50ff06f          	j	14e48 <_vfprintf_r+0x132>
   15afc:	67f9                	lui	a5,0x1e
   15afe:	96078793          	addi	a5,a5,-1696 # 1d960 <__clzsi2+0xa8>
   15b02:	da3e                	sw	a5,52(sp)
   15b04:	020cf793          	andi	a5,s9,32
   15b08:	26078263          	beqz	a5,15d6c <_vfprintf_r+0x1056>
   15b0c:	47d2                	lw	a5,20(sp)
   15b0e:	00778c13          	addi	s8,a5,7
   15b12:	ff8c7c13          	andi	s8,s8,-8
   15b16:	000c2b03          	lw	s6,0(s8)
   15b1a:	004c2d83          	lw	s11,4(s8)
   15b1e:	008c0793          	addi	a5,s8,8
   15b22:	ca3e                	sw	a5,20(sp)
   15b24:	001cf793          	andi	a5,s9,1
   15b28:	cf81                	beqz	a5,15b40 <_vfprintf_r+0xe2a>
   15b2a:	01bb67b3          	or	a5,s6,s11
   15b2e:	cb89                	beqz	a5,15b40 <_vfprintf_r+0xe2a>
   15b30:	03000793          	li	a5,48
   15b34:	0af10423          	sb	a5,168(sp)
   15b38:	0b1104a3          	sb	a7,169(sp)
   15b3c:	002cec93          	ori	s9,s9,2
   15b40:	bffcfe93          	andi	t4,s9,-1025
   15b44:	4789                	li	a5,2
   15b46:	d6aff06f          	j	150b0 <_vfprintf_r+0x39a>
   15b4a:	8ee6                	mv	t4,s9
   15b4c:	b289                	j	1548e <_vfprintf_r+0x778>
   15b4e:	67f9                	lui	a5,0x1e
   15b50:	94c78793          	addi	a5,a5,-1716 # 1d94c <__clzsi2+0x94>
   15b54:	da3e                	sw	a5,52(sp)
   15b56:	b77d                	j	15b04 <_vfprintf_r+0xdee>
   15b58:	00194883          	lbu	a7,1(s2)
   15b5c:	200cec93          	ori	s9,s9,512
   15b60:	0905                	addi	s2,s2,1
   15b62:	ae4ff06f          	j	14e46 <_vfprintf_r+0x130>
   15b66:	00194883          	lbu	a7,1(s2)
   15b6a:	020cec93          	ori	s9,s9,32
   15b6e:	0905                	addi	s2,s2,1
   15b70:	ad6ff06f          	j	14e46 <_vfprintf_r+0x130>
   15b74:	4522                	lw	a0,8(sp)
   15b76:	01d0                	addi	a2,sp,196
   15b78:	85a6                	mv	a1,s1
   15b7a:	5e7000ef          	jal	16960 <__sprint_r>
   15b7e:	be051ae3          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   15b82:	463e                	lw	a2,204(sp)
   15b84:	844e                	mv	s0,s3
   15b86:	bc29                	j	155a0 <_vfprintf_r+0x88a>
   15b88:	4799                	li	a5,6
   15b8a:	8b56                	mv	s6,s5
   15b8c:	6b57ed63          	bltu	a5,s5,16246 <_vfprintf_r+0x1530>
   15b90:	67f9                	lui	a5,0x1e
   15b92:	8dda                	mv	s11,s6
   15b94:	ca62                	sw	s8,20(sp)
   15b96:	97478d13          	addi	s10,a5,-1676 # 1d974 <__clzsi2+0xbc>
   15b9a:	afcff06f          	j	14e96 <_vfprintf_r+0x180>
   15b9e:	6879                	lui	a6,0x1e
   15ba0:	45c1                	li	a1,16
   15ba2:	472e                	lw	a4,200(sp)
   15ba4:	ca880813          	addi	a6,a6,-856 # 1dca8 <zeroes.0>
   15ba8:	4755db63          	bge	a1,s5,1601e <_vfprintf_r+0x1308>
   15bac:	87a2                	mv	a5,s0
   15bae:	4c41                	li	s8,16
   15bb0:	4b1d                	li	s6,7
   15bb2:	8442                	mv	s0,a6
   15bb4:	a021                	j	15bbc <_vfprintf_r+0xea6>
   15bb6:	1ac1                	addi	s5,s5,-16
   15bb8:	475c5163          	bge	s8,s5,1601a <_vfprintf_r+0x1304>
   15bbc:	0641                	addi	a2,a2,16
   15bbe:	0705                	addi	a4,a4,1
   15bc0:	c380                	sw	s0,0(a5)
   15bc2:	0187a223          	sw	s8,4(a5)
   15bc6:	c7b2                	sw	a2,204(sp)
   15bc8:	c5ba                	sw	a4,200(sp)
   15bca:	07a1                	addi	a5,a5,8
   15bcc:	feeb55e3          	bge	s6,a4,15bb6 <_vfprintf_r+0xea0>
   15bd0:	4522                	lw	a0,8(sp)
   15bd2:	01d0                	addi	a2,sp,196
   15bd4:	85a6                	mv	a1,s1
   15bd6:	58b000ef          	jal	16960 <__sprint_r>
   15bda:	b8051ce3          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   15bde:	463e                	lw	a2,204(sp)
   15be0:	472e                	lw	a4,200(sp)
   15be2:	87ce                	mv	a5,s3
   15be4:	bfc9                	j	15bb6 <_vfprintf_r+0xea0>
   15be6:	5742                	lw	a4,48(sp)
   15be8:	57b2                	lw	a5,44(sp)
   15bea:	459d                	li	a1,7
   15bec:	c018                	sw	a4,0(s0)
   15bee:	472e                	lw	a4,200(sp)
   15bf0:	963e                	add	a2,a2,a5
   15bf2:	c05c                	sw	a5,4(s0)
   15bf4:	0705                	addi	a4,a4,1
   15bf6:	c7b2                	sw	a2,204(sp)
   15bf8:	c5ba                	sw	a4,200(sp)
   15bfa:	0421                	addi	s0,s0,8
   15bfc:	d2e5d1e3          	bge	a1,a4,1591e <_vfprintf_r+0xc08>
   15c00:	4522                	lw	a0,8(sp)
   15c02:	01d0                	addi	a2,sp,196
   15c04:	85a6                	mv	a1,s1
   15c06:	55b000ef          	jal	16960 <__sprint_r>
   15c0a:	b60514e3          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   15c0e:	5aba                	lw	s5,172(sp)
   15c10:	463e                	lw	a2,204(sp)
   15c12:	844e                	mv	s0,s3
   15c14:	b329                	j	1591e <_vfprintf_r+0xc08>
   15c16:	07800793          	li	a5,120
   15c1a:	03000713          	li	a4,48
   15c1e:	0ae10423          	sb	a4,168(sp)
   15c22:	0af104a3          	sb	a5,169(sp)
   15c26:	06300713          	li	a4,99
   15c2a:	c802                	sw	zero,16(sp)
   15c2c:	002cec93          	ori	s9,s9,2
   15c30:	12c10d13          	addi	s10,sp,300
   15c34:	d5575c63          	bge	a4,s5,1518c <_vfprintf_r+0x476>
   15c38:	4522                	lw	a0,8(sp)
   15c3a:	001a8593          	addi	a1,s5,1
   15c3e:	c846                	sw	a7,16(sp)
   15c40:	b29fe0ef          	jal	14768 <_malloc_r>
   15c44:	48c2                	lw	a7,16(sp)
   15c46:	8d2a                	mv	s10,a0
   15c48:	460502e3          	beqz	a0,168ac <_vfprintf_r+0x1b96>
   15c4c:	c82a                	sw	a0,16(sp)
   15c4e:	d3eff06f          	j	1518c <_vfprintf_r+0x476>
   15c52:	4522                	lw	a0,8(sp)
   15c54:	09010b13          	addi	s6,sp,144
   15c58:	1178                	addi	a4,sp,172
   15c5a:	0bc10813          	addi	a6,sp,188
   15c5e:	191c                	addi	a5,sp,176
   15c60:	86d6                	mv	a3,s5
   15c62:	4609                	li	a2,2
   15c64:	85da                	mv	a1,s6
   15c66:	d446                	sw	a7,40(sp)
   15c68:	c97e                	sw	t6,144(sp)
   15c6a:	d27e                	sw	t6,36(sp)
   15c6c:	cb7a                	sw	t5,148(sp)
   15c6e:	d07a                	sw	t5,32(sp)
   15c70:	cd76                	sw	t4,152(sp)
   15c72:	ce76                	sw	t4,28(sp)
   15c74:	cf62                	sw	s8,156(sp)
   15c76:	30b010ef          	jal	17780 <_ldtoa_r>
   15c7a:	001cf713          	andi	a4,s9,1
   15c7e:	4ef2                	lw	t4,28(sp)
   15c80:	5f02                	lw	t5,32(sp)
   15c82:	5f92                	lw	t6,36(sp)
   15c84:	58a2                	lw	a7,40(sp)
   15c86:	8d2a                	mv	s10,a0
   15c88:	62071163          	bnez	a4,162aa <_vfprintf_r+0x1594>
   15c8c:	57ba                	lw	a5,172(sp)
   15c8e:	ce3e                	sw	a5,28(sp)
   15c90:	57fa                	lw	a5,188(sp)
   15c92:	8f89                	sub	a5,a5,a0
   15c94:	d03e                	sw	a5,32(sp)
   15c96:	47f2                	lw	a5,28(sp)
   15c98:	5775                	li	a4,-3
   15c9a:	00e7c463          	blt	a5,a4,15ca2 <_vfprintf_r+0xf8c>
   15c9e:	0efadbe3          	bge	s5,a5,16594 <_vfprintf_r+0x187e>
   15ca2:	47f2                	lw	a5,28(sp)
   15ca4:	18f9                	addi	a7,a7,-2
   15ca6:	fff78713          	addi	a4,a5,-1
   15caa:	d73a                	sw	a4,172(sp)
   15cac:	0ff8f693          	zext.b	a3,a7
   15cb0:	4601                	li	a2,0
   15cb2:	0ad10a23          	sb	a3,180(sp)
   15cb6:	02b00693          	li	a3,43
   15cba:	00075763          	bgez	a4,15cc8 <_vfprintf_r+0xfb2>
   15cbe:	47f2                	lw	a5,28(sp)
   15cc0:	4705                	li	a4,1
   15cc2:	02d00693          	li	a3,45
   15cc6:	8f1d                	sub	a4,a4,a5
   15cc8:	0ad10aa3          	sb	a3,181(sp)
   15ccc:	46a5                	li	a3,9
   15cce:	2ae6d1e3          	bge	a3,a4,16770 <_vfprintf_r+0x1a5a>
   15cd2:	0c310813          	addi	a6,sp,195
   15cd6:	85c2                	mv	a1,a6
   15cd8:	4529                	li	a0,10
   15cda:	06300f13          	li	t5,99
   15cde:	02a767b3          	rem	a5,a4,a0
   15ce2:	862e                	mv	a2,a1
   15ce4:	86ba                	mv	a3,a4
   15ce6:	15fd                	addi	a1,a1,-1
   15ce8:	03078793          	addi	a5,a5,48
   15cec:	fef60fa3          	sb	a5,-1(a2)
   15cf0:	02a74733          	div	a4,a4,a0
   15cf4:	fedf45e3          	blt	t5,a3,15cde <_vfprintf_r+0xfc8>
   15cf8:	03070713          	addi	a4,a4,48
   15cfc:	ffe60693          	addi	a3,a2,-2
   15d00:	fee58fa3          	sb	a4,-1(a1)
   15d04:	3706fce3          	bgeu	a3,a6,1687c <_vfprintf_r+0x1b66>
   15d08:	0b610713          	addi	a4,sp,182
   15d0c:	0006c783          	lbu	a5,0(a3)
   15d10:	0685                	addi	a3,a3,1
   15d12:	0705                	addi	a4,a4,1
   15d14:	fef70fa3          	sb	a5,-1(a4)
   15d18:	ff069ae3          	bne	a3,a6,15d0c <_vfprintf_r+0xff6>
   15d1c:	0b1c                	addi	a5,sp,400
   15d1e:	40c78733          	sub	a4,a5,a2
   15d22:	f3770793          	addi	a5,a4,-201
   15d26:	c0be                	sw	a5,64(sp)
   15d28:	5782                	lw	a5,32(sp)
   15d2a:	4686                	lw	a3,64(sp)
   15d2c:	4705                	li	a4,1
   15d2e:	00d78b33          	add	s6,a5,a3
   15d32:	26f758e3          	bge	a4,a5,167a2 <_vfprintf_r+0x1a8c>
   15d36:	57b2                	lw	a5,44(sp)
   15d38:	9b3e                	add	s6,s6,a5
   15d3a:	fffb4693          	not	a3,s6
   15d3e:	bffcfe13          	andi	t3,s9,-1025
   15d42:	86fd                	srai	a3,a3,0x1f
   15d44:	100e6793          	ori	a5,t3,256
   15d48:	c6be                	sw	a5,76(sp)
   15d4a:	00db7db3          	and	s11,s6,a3
   15d4e:	d402                	sw	zero,40(sp)
   15d50:	d202                	sw	zero,36(sp)
   15d52:	ce02                	sw	zero,28(sp)
   15d54:	57e2                	lw	a5,56(sp)
   15d56:	020786e3          	beqz	a5,16582 <_vfprintf_r+0x186c>
   15d5a:	02d00713          	li	a4,45
   15d5e:	4cb6                	lw	s9,76(sp)
   15d60:	0ae103a3          	sb	a4,167(sp)
   15d64:	4a81                	li	s5,0
   15d66:	0d85                	addi	s11,s11,1
   15d68:	938ff06f          	j	14ea0 <_vfprintf_r+0x18a>
   15d6c:	4752                	lw	a4,20(sp)
   15d6e:	010cf793          	andi	a5,s9,16
   15d72:	00072b03          	lw	s6,0(a4)
   15d76:	0711                	addi	a4,a4,4
   15d78:	ca3a                	sw	a4,20(sp)
   15d7a:	e7a9                	bnez	a5,15dc4 <_vfprintf_r+0x10ae>
   15d7c:	040cf793          	andi	a5,s9,64
   15d80:	cf95                	beqz	a5,15dbc <_vfprintf_r+0x10a6>
   15d82:	0b42                	slli	s6,s6,0x10
   15d84:	010b5b13          	srli	s6,s6,0x10
   15d88:	4d81                	li	s11,0
   15d8a:	bb69                	j	15b24 <_vfprintf_r+0xe0e>
   15d8c:	4522                	lw	a0,8(sp)
   15d8e:	01d0                	addi	a2,sp,196
   15d90:	85a6                	mv	a1,s1
   15d92:	3cf000ef          	jal	16960 <__sprint_r>
   15d96:	9c051ee3          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   15d9a:	4c3e                	lw	s8,204(sp)
   15d9c:	4aae                	lw	s5,200(sp)
   15d9e:	8b4e                	mv	s6,s3
   15da0:	c6eff06f          	j	1520e <_vfprintf_r+0x4f8>
   15da4:	4522                	lw	a0,8(sp)
   15da6:	01d0                	addi	a2,sp,196
   15da8:	85a6                	mv	a1,s1
   15daa:	3b7000ef          	jal	16960 <__sprint_r>
   15dae:	9c0512e3          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   15db2:	4c3e                	lw	s8,204(sp)
   15db4:	4aae                	lw	s5,200(sp)
   15db6:	8b4e                	mv	s6,s3
   15db8:	c72ff06f          	j	1522a <_vfprintf_r+0x514>
   15dbc:	200cf793          	andi	a5,s9,512
   15dc0:	4a079963          	bnez	a5,16272 <_vfprintf_r+0x155c>
   15dc4:	4d81                	li	s11,0
   15dc6:	bbb9                	j	15b24 <_vfprintf_r+0xe0e>
   15dc8:	ccccd837          	lui	a6,0xccccd
   15dcc:	ccccdcb7          	lui	s9,0xccccd
   15dd0:	5772                	lw	a4,60(sp)
   15dd2:	400eff13          	andi	t5,t4,1024
   15dd6:	4601                	li	a2,0
   15dd8:	0b0c                	addi	a1,sp,400
   15dda:	4e15                	li	t3,5
   15ddc:	ccd80813          	addi	a6,a6,-819 # cccccccd <__BSS_END__+0xcccad0e1>
   15de0:	cccc8c93          	addi	s9,s9,-820 # cccccccc <__BSS_END__+0xcccad0e0>
   15de4:	0ff00c13          	li	s8,255
   15de8:	a081                	j	15e28 <_vfprintf_r+0x1112>
   15dea:	016d37b3          	sltu	a5,s10,s6
   15dee:	97ea                	add	a5,a5,s10
   15df0:	03c7f7b3          	remu	a5,a5,t3
   15df4:	40fb07b3          	sub	a5,s6,a5
   15df8:	00fb35b3          	sltu	a1,s6,a5
   15dfc:	40bd85b3          	sub	a1,s11,a1
   15e00:	03978333          	mul	t1,a5,s9
   15e04:	030585b3          	mul	a1,a1,a6
   15e08:	0307b533          	mulhu	a0,a5,a6
   15e0c:	959a                	add	a1,a1,t1
   15e0e:	030787b3          	mul	a5,a5,a6
   15e12:	95aa                	add	a1,a1,a0
   15e14:	01f59513          	slli	a0,a1,0x1f
   15e18:	8185                	srli	a1,a1,0x1
   15e1a:	8385                	srli	a5,a5,0x1
   15e1c:	8fc9                	or	a5,a5,a0
   15e1e:	7c0d8763          	beqz	s11,165ec <_vfprintf_r+0x18d6>
   15e22:	8dae                	mv	s11,a1
   15e24:	8b3e                	mv	s6,a5
   15e26:	85b6                	mv	a1,a3
   15e28:	01bb0d33          	add	s10,s6,s11
   15e2c:	016d37b3          	sltu	a5,s10,s6
   15e30:	97ea                	add	a5,a5,s10
   15e32:	03c7f7b3          	remu	a5,a5,t3
   15e36:	fff58693          	addi	a3,a1,-1
   15e3a:	0605                	addi	a2,a2,1
   15e3c:	40fb07b3          	sub	a5,s6,a5
   15e40:	00fb3533          	sltu	a0,s6,a5
   15e44:	40ad8533          	sub	a0,s11,a0
   15e48:	0307b333          	mulhu	t1,a5,a6
   15e4c:	03050533          	mul	a0,a0,a6
   15e50:	030787b3          	mul	a5,a5,a6
   15e54:	951a                	add	a0,a0,t1
   15e56:	057e                	slli	a0,a0,0x1f
   15e58:	8385                	srli	a5,a5,0x1
   15e5a:	8fc9                	or	a5,a5,a0
   15e5c:	00279513          	slli	a0,a5,0x2
   15e60:	97aa                	add	a5,a5,a0
   15e62:	0786                	slli	a5,a5,0x1
   15e64:	40fb07b3          	sub	a5,s6,a5
   15e68:	03078793          	addi	a5,a5,48
   15e6c:	fef58fa3          	sb	a5,-1(a1)
   15e70:	f60f0de3          	beqz	t5,15dea <_vfprintf_r+0x10d4>
   15e74:	00074783          	lbu	a5,0(a4)
   15e78:	f6f619e3          	bne	a2,a5,15dea <_vfprintf_r+0x10d4>
   15e7c:	f78607e3          	beq	a2,s8,15dea <_vfprintf_r+0x10d4>
   15e80:	1c0d9563          	bnez	s11,1604a <_vfprintf_r+0x1334>
   15e84:	47a5                	li	a5,9
   15e86:	1d67e263          	bltu	a5,s6,1604a <_vfprintf_r+0x1334>
   15e8a:	8d36                	mv	s10,a3
   15e8c:	0b1c                	addi	a5,sp,400
   15e8e:	d032                	sw	a2,32(sp)
   15e90:	de3a                	sw	a4,60(sp)
   15e92:	41a78b33          	sub	s6,a5,s10
   15e96:	8cf6                	mv	s9,t4
   15e98:	9d2ff06f          	j	1506a <_vfprintf_r+0x354>
   15e9c:	472e                	lw	a4,200(sp)
   15e9e:	65f9                	lui	a1,0x1e
   15ea0:	97c58593          	addi	a1,a1,-1668 # 1d97c <__clzsi2+0xc4>
   15ea4:	c00c                	sw	a1,0(s0)
   15ea6:	0605                	addi	a2,a2,1
   15ea8:	4585                	li	a1,1
   15eaa:	0705                	addi	a4,a4,1
   15eac:	c04c                	sw	a1,4(s0)
   15eae:	c7b2                	sw	a2,204(sp)
   15eb0:	c5ba                	sw	a4,200(sp)
   15eb2:	459d                	li	a1,7
   15eb4:	0421                	addi	s0,s0,8
   15eb6:	36e5c063          	blt	a1,a4,16216 <_vfprintf_r+0x1500>
   15eba:	e569                	bnez	a0,15f84 <_vfprintf_r+0x126e>
   15ebc:	5782                	lw	a5,32(sp)
   15ebe:	001cf713          	andi	a4,s9,1
   15ec2:	8f5d                	or	a4,a4,a5
   15ec4:	e319                	bnez	a4,15eca <_vfprintf_r+0x11b4>
   15ec6:	868ff06f          	j	14f2e <_vfprintf_r+0x218>
   15eca:	5742                	lw	a4,48(sp)
   15ecc:	57b2                	lw	a5,44(sp)
   15ece:	459d                	li	a1,7
   15ed0:	c018                	sw	a4,0(s0)
   15ed2:	472e                	lw	a4,200(sp)
   15ed4:	963e                	add	a2,a2,a5
   15ed6:	c05c                	sw	a5,4(s0)
   15ed8:	0705                	addi	a4,a4,1
   15eda:	c7b2                	sw	a2,204(sp)
   15edc:	c5ba                	sw	a4,200(sp)
   15ede:	3ae5cb63          	blt	a1,a4,16294 <_vfprintf_r+0x157e>
   15ee2:	0421                	addi	s0,s0,8
   15ee4:	a87d                	j	15fa2 <_vfprintf_r+0x128c>
   15ee6:	4522                	lw	a0,8(sp)
   15ee8:	f1ffd0ef          	jal	13e06 <__sinit>
   15eec:	e69fe06f          	j	14d54 <_vfprintf_r+0x3e>
   15ef0:	4522                	lw	a0,8(sp)
   15ef2:	01d0                	addi	a2,sp,196
   15ef4:	85a6                	mv	a1,s1
   15ef6:	26b000ef          	jal	16960 <__sprint_r>
   15efa:	86051ce3          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   15efe:	463e                	lw	a2,204(sp)
   15f00:	844e                	mv	s0,s3
   15f02:	e78ff06f          	j	1557a <_vfprintf_r+0x864>
   15f06:	886a                	mv	a6,s10
   15f08:	01042023          	sw	a6,0(s0)
   15f0c:	01542223          	sw	s5,4(s0)
   15f10:	9656                	add	a2,a2,s5
   15f12:	0785                	addi	a5,a5,1
   15f14:	c7b2                	sw	a2,204(sp)
   15f16:	c5be                	sw	a5,200(sp)
   15f18:	471d                	li	a4,7
   15f1a:	00f74463          	blt	a4,a5,15f22 <_vfprintf_r+0x120c>
   15f1e:	80eff06f          	j	14f2c <_vfprintf_r+0x216>
   15f22:	b70ff06f          	j	15292 <_vfprintf_r+0x57c>
   15f26:	47ce                	lw	a5,208(sp)
   15f28:	010c                	addi	a1,sp,128
   15f2a:	0908                	addi	a0,sp,144
   15f2c:	c93e                	sw	a5,144(sp)
   15f2e:	47de                	lw	a5,212(sp)
   15f30:	c102                	sw	zero,128(sp)
   15f32:	c302                	sw	zero,132(sp)
   15f34:	cb3e                	sw	a5,148(sp)
   15f36:	47ee                	lw	a5,216(sp)
   15f38:	c502                	sw	zero,136(sp)
   15f3a:	c702                	sw	zero,140(sp)
   15f3c:	cd3e                	sw	a5,152(sp)
   15f3e:	47fe                	lw	a5,220(sp)
   15f40:	cf3e                	sw	a5,156(sp)
   15f42:	6de050ef          	jal	1b620 <__letf2>
   15f46:	48c2                	lw	a7,16(sp)
   15f48:	6a054a63          	bltz	a0,165fc <_vfprintf_r+0x18e6>
   15f4c:	0a714703          	lbu	a4,167(sp)
   15f50:	04700793          	li	a5,71
   15f54:	2d17db63          	bge	a5,a7,1622a <_vfprintf_r+0x1514>
   15f58:	67f9                	lui	a5,0x1e
   15f5a:	94078d13          	addi	s10,a5,-1728 # 1d940 <__clzsi2+0x88>
   15f5e:	c802                	sw	zero,16(sp)
   15f60:	d402                	sw	zero,40(sp)
   15f62:	d202                	sw	zero,36(sp)
   15f64:	ce02                	sw	zero,28(sp)
   15f66:	f7fcfc93          	andi	s9,s9,-129
   15f6a:	4d8d                	li	s11,3
   15f6c:	4b0d                	li	s6,3
   15f6e:	4a81                	li	s5,0
   15f70:	90071963          	bnez	a4,15082 <_vfprintf_r+0x36c>
   15f74:	f2dfe06f          	j	14ea0 <_vfprintf_r+0x18a>
   15f78:	47d2                	lw	a5,20(sp)
   15f7a:	4732                	lw	a4,12(sp)
   15f7c:	439c                	lw	a5,0(a5)
   15f7e:	c398                	sw	a4,0(a5)
   15f80:	d7eff06f          	j	154fe <_vfprintf_r+0x7e8>
   15f84:	5742                	lw	a4,48(sp)
   15f86:	57b2                	lw	a5,44(sp)
   15f88:	459d                	li	a1,7
   15f8a:	c018                	sw	a4,0(s0)
   15f8c:	472e                	lw	a4,200(sp)
   15f8e:	963e                	add	a2,a2,a5
   15f90:	c05c                	sw	a5,4(s0)
   15f92:	0705                	addi	a4,a4,1
   15f94:	c7b2                	sw	a2,204(sp)
   15f96:	c5ba                	sw	a4,200(sp)
   15f98:	0421                	addi	s0,s0,8
   15f9a:	2ee5cd63          	blt	a1,a4,16294 <_vfprintf_r+0x157e>
   15f9e:	74054a63          	bltz	a0,166f2 <_vfprintf_r+0x19dc>
   15fa2:	5782                	lw	a5,32(sp)
   15fa4:	0705                	addi	a4,a4,1
   15fa6:	01a42023          	sw	s10,0(s0)
   15faa:	963e                	add	a2,a2,a5
   15fac:	c05c                	sw	a5,4(s0)
   15fae:	c7b2                	sw	a2,204(sp)
   15fb0:	c5ba                	sw	a4,200(sp)
   15fb2:	479d                	li	a5,7
   15fb4:	00e7c463          	blt	a5,a4,15fbc <_vfprintf_r+0x12a6>
   15fb8:	f75fe06f          	j	14f2c <_vfprintf_r+0x216>
   15fbc:	ad6ff06f          	j	15292 <_vfprintf_r+0x57c>
   15fc0:	856a                	mv	a0,s10
   15fc2:	dc46                	sw	a7,56(sp)
   15fc4:	5fc010ef          	jal	175c0 <strlen>
   15fc8:	0a714703          	lbu	a4,167(sp)
   15fcc:	fff54693          	not	a3,a0
   15fd0:	86fd                	srai	a3,a3,0x1f
   15fd2:	ca62                	sw	s8,20(sp)
   15fd4:	c802                	sw	zero,16(sp)
   15fd6:	d402                	sw	zero,40(sp)
   15fd8:	d202                	sw	zero,36(sp)
   15fda:	ce02                	sw	zero,28(sp)
   15fdc:	58e2                	lw	a7,56(sp)
   15fde:	8b2a                	mv	s6,a0
   15fe0:	00d57db3          	and	s11,a0,a3
   15fe4:	4a81                	li	s5,0
   15fe6:	c319                	beqz	a4,15fec <_vfprintf_r+0x12d6>
   15fe8:	89aff06f          	j	15082 <_vfprintf_r+0x36c>
   15fec:	eb5fe06f          	j	14ea0 <_vfprintf_r+0x18a>
   15ff0:	884a                	mv	a6,s2
   15ff2:	4972                	lw	s2,28(sp)
   15ff4:	9c22                	add	s8,s8,s0
   15ff6:	0a85                	addi	s5,s5,1
   15ff8:	010b2023          	sw	a6,0(s6)
   15ffc:	a64ff06f          	j	15260 <_vfprintf_r+0x54a>
   16000:	47fe                	lw	a5,220(sp)
   16002:	2607cc63          	bltz	a5,1627a <_vfprintf_r+0x1564>
   16006:	0a714703          	lbu	a4,167(sp)
   1600a:	04700793          	li	a5,71
   1600e:	6317ca63          	blt	a5,a7,16642 <_vfprintf_r+0x192c>
   16012:	67f9                	lui	a5,0x1e
   16014:	94478d13          	addi	s10,a5,-1724 # 1d944 <__clzsi2+0x8c>
   16018:	b799                	j	15f5e <_vfprintf_r+0x1248>
   1601a:	8822                	mv	a6,s0
   1601c:	843e                	mv	s0,a5
   1601e:	9656                	add	a2,a2,s5
   16020:	0705                	addi	a4,a4,1
   16022:	01042023          	sw	a6,0(s0)
   16026:	01542223          	sw	s5,4(s0)
   1602a:	c7b2                	sw	a2,204(sp)
   1602c:	c5ba                	sw	a4,200(sp)
   1602e:	459d                	li	a1,7
   16030:	0421                	addi	s0,s0,8
   16032:	8ce5d7e3          	bge	a1,a4,15900 <_vfprintf_r+0xbea>
   16036:	4522                	lw	a0,8(sp)
   16038:	01d0                	addi	a2,sp,196
   1603a:	85a6                	mv	a1,s1
   1603c:	125000ef          	jal	16960 <__sprint_r>
   16040:	f2051963          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   16044:	463e                	lw	a2,204(sp)
   16046:	844e                	mv	s0,s3
   16048:	b865                	j	15900 <_vfprintf_r+0xbea>
   1604a:	47a6                	lw	a5,72(sp)
   1604c:	4596                	lw	a1,68(sp)
   1604e:	dc42                	sw	a6,56(sp)
   16050:	8e9d                	sub	a3,a3,a5
   16052:	863e                	mv	a2,a5
   16054:	8536                	mv	a0,a3
   16056:	d47a                	sw	t5,40(sp)
   16058:	d276                	sw	t4,36(sp)
   1605a:	d046                	sw	a7,32(sp)
   1605c:	ce3a                	sw	a4,28(sp)
   1605e:	c836                	sw	a3,16(sp)
   16060:	254010ef          	jal	172b4 <strncpy>
   16064:	016d37b3          	sltu	a5,s10,s6
   16068:	4615                	li	a2,5
   1606a:	97ea                	add	a5,a5,s10
   1606c:	02c7f7b3          	remu	a5,a5,a2
   16070:	4772                	lw	a4,28(sp)
   16072:	ccccd337          	lui	t1,0xccccd
   16076:	ccccd537          	lui	a0,0xccccd
   1607a:	00174583          	lbu	a1,1(a4)
   1607e:	ccd30313          	addi	t1,t1,-819 # cccccccd <__BSS_END__+0xcccad0e1>
   16082:	ccc50513          	addi	a0,a0,-820 # cccccccc <__BSS_END__+0xcccad0e0>
   16086:	00b035b3          	snez	a1,a1
   1608a:	972e                	add	a4,a4,a1
   1608c:	46c2                	lw	a3,16(sp)
   1608e:	5882                	lw	a7,32(sp)
   16090:	5e92                	lw	t4,36(sp)
   16092:	5f22                	lw	t5,40(sp)
   16094:	5862                	lw	a6,56(sp)
   16096:	4601                	li	a2,0
   16098:	4e15                	li	t3,5
   1609a:	40fb07b3          	sub	a5,s6,a5
   1609e:	00fb35b3          	sltu	a1,s6,a5
   160a2:	40bd85b3          	sub	a1,s11,a1
   160a6:	02a78533          	mul	a0,a5,a0
   160aa:	026585b3          	mul	a1,a1,t1
   160ae:	0267bfb3          	mulhu	t6,a5,t1
   160b2:	95aa                	add	a1,a1,a0
   160b4:	02678533          	mul	a0,a5,t1
   160b8:	95fe                	add	a1,a1,t6
   160ba:	01f59793          	slli	a5,a1,0x1f
   160be:	8185                	srli	a1,a1,0x1
   160c0:	8105                	srli	a0,a0,0x1
   160c2:	8fc9                	or	a5,a5,a0
   160c4:	bbb9                	j	15e22 <_vfprintf_r+0x110c>
   160c6:	5782                	lw	a5,32(sp)
   160c8:	5b12                	lw	s6,36(sp)
   160ca:	68f9                	lui	a7,0x1e
   160cc:	97ea                	add	a5,a5,s10
   160ce:	dc4a                	sw	s2,56(sp)
   160d0:	c6e6                	sw	s9,76(sp)
   160d2:	c8de                	sw	s7,80(sp)
   160d4:	d26e                	sw	s11,36(sp)
   160d6:	5da2                	lw	s11,40(sp)
   160d8:	d46a                	sw	s10,40(sp)
   160da:	5cf2                	lw	s9,60(sp)
   160dc:	8d62                	mv	s10,s8
   160de:	4922                	lw	s2,8(sp)
   160e0:	4c26                	lw	s8,72(sp)
   160e2:	481d                	li	a6,7
   160e4:	4741                	li	a4,16
   160e6:	ca888a93          	addi	s5,a7,-856 # 1dca8 <zeroes.0>
   160ea:	85a2                	mv	a1,s0
   160ec:	8bbe                	mv	s7,a5
   160ee:	07605363          	blez	s6,16154 <_vfprintf_r+0x143e>
   160f2:	0fb05663          	blez	s11,161de <_vfprintf_r+0x14c8>
   160f6:	1dfd                	addi	s11,s11,-1
   160f8:	4796                	lw	a5,68(sp)
   160fa:	9662                	add	a2,a2,s8
   160fc:	0185a223          	sw	s8,4(a1)
   16100:	c19c                	sw	a5,0(a1)
   16102:	47ae                	lw	a5,200(sp)
   16104:	c7b2                	sw	a2,204(sp)
   16106:	05a1                	addi	a1,a1,8
   16108:	0785                	addi	a5,a5,1
   1610a:	c5be                	sw	a5,200(sp)
   1610c:	0cf84c63          	blt	a6,a5,161e4 <_vfprintf_r+0x14ce>
   16110:	000cc683          	lbu	a3,0(s9)
   16114:	41ab8433          	sub	s0,s7,s10
   16118:	0086d363          	bge	a3,s0,1611e <_vfprintf_r+0x1408>
   1611c:	8436                	mv	s0,a3
   1611e:	00805f63          	blez	s0,1613c <_vfprintf_r+0x1426>
   16122:	46ae                	lw	a3,200(sp)
   16124:	9622                	add	a2,a2,s0
   16126:	01a5a023          	sw	s10,0(a1)
   1612a:	0685                	addi	a3,a3,1
   1612c:	c1c0                	sw	s0,4(a1)
   1612e:	c7b2                	sw	a2,204(sp)
   16130:	c5b6                	sw	a3,200(sp)
   16132:	0cd84563          	blt	a6,a3,161fc <_vfprintf_r+0x14e6>
   16136:	000cc683          	lbu	a3,0(s9)
   1613a:	05a1                	addi	a1,a1,8
   1613c:	fff44513          	not	a0,s0
   16140:	857d                	srai	a0,a0,0x1f
   16142:	00a477b3          	and	a5,s0,a0
   16146:	40f68433          	sub	s0,a3,a5
   1614a:	02804763          	bgtz	s0,16178 <_vfprintf_r+0x1462>
   1614e:	9d36                	add	s10,s10,a3
   16150:	fb6041e3          	bgtz	s6,160f2 <_vfprintf_r+0x13dc>
   16154:	fbb041e3          	bgtz	s11,160f6 <_vfprintf_r+0x13e0>
   16158:	5782                	lw	a5,32(sp)
   1615a:	8c6a                	mv	s8,s10
   1615c:	5d22                	lw	s10,40(sp)
   1615e:	de66                	sw	s9,60(sp)
   16160:	5962                	lw	s2,56(sp)
   16162:	00fd0733          	add	a4,s10,a5
   16166:	4cb6                	lw	s9,76(sp)
   16168:	4bc6                	lw	s7,80(sp)
   1616a:	5d92                	lw	s11,36(sp)
   1616c:	842e                	mv	s0,a1
   1616e:	fb877063          	bgeu	a4,s8,1590e <_vfprintf_r+0xbf8>
   16172:	8c3a                	mv	s8,a4
   16174:	f9aff06f          	j	1590e <_vfprintf_r+0xbf8>
   16178:	6f79                	lui	t5,0x1e
   1617a:	46ae                	lw	a3,200(sp)
   1617c:	ca8f0f13          	addi	t5,t5,-856 # 1dca8 <zeroes.0>
   16180:	04875163          	bge	a4,s0,161c2 <_vfprintf_r+0x14ac>
   16184:	ce56                	sw	s5,28(sp)
   16186:	a021                	j	1618e <_vfprintf_r+0x1478>
   16188:	1441                	addi	s0,s0,-16
   1618a:	02875b63          	bge	a4,s0,161c0 <_vfprintf_r+0x14aa>
   1618e:	0641                	addi	a2,a2,16
   16190:	0685                	addi	a3,a3,1
   16192:	0155a023          	sw	s5,0(a1)
   16196:	c1d8                	sw	a4,4(a1)
   16198:	c7b2                	sw	a2,204(sp)
   1619a:	c5b6                	sw	a3,200(sp)
   1619c:	05a1                	addi	a1,a1,8
   1619e:	fed855e3          	bge	a6,a3,16188 <_vfprintf_r+0x1472>
   161a2:	01d0                	addi	a2,sp,196
   161a4:	85a6                	mv	a1,s1
   161a6:	854a                	mv	a0,s2
   161a8:	7b8000ef          	jal	16960 <__sprint_r>
   161ac:	dc051363          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   161b0:	4741                	li	a4,16
   161b2:	1441                	addi	s0,s0,-16
   161b4:	463e                	lw	a2,204(sp)
   161b6:	46ae                	lw	a3,200(sp)
   161b8:	85ce                	mv	a1,s3
   161ba:	481d                	li	a6,7
   161bc:	fc8749e3          	blt	a4,s0,1618e <_vfprintf_r+0x1478>
   161c0:	4f72                	lw	t5,28(sp)
   161c2:	9622                	add	a2,a2,s0
   161c4:	0685                	addi	a3,a3,1
   161c6:	01e5a023          	sw	t5,0(a1)
   161ca:	c1c0                	sw	s0,4(a1)
   161cc:	c7b2                	sw	a2,204(sp)
   161ce:	c5b6                	sw	a3,200(sp)
   161d0:	40d84063          	blt	a6,a3,165d0 <_vfprintf_r+0x18ba>
   161d4:	000cc683          	lbu	a3,0(s9)
   161d8:	05a1                	addi	a1,a1,8
   161da:	9d36                	add	s10,s10,a3
   161dc:	bf95                	j	16150 <_vfprintf_r+0x143a>
   161de:	1cfd                	addi	s9,s9,-1
   161e0:	1b7d                	addi	s6,s6,-1
   161e2:	bf19                	j	160f8 <_vfprintf_r+0x13e2>
   161e4:	01d0                	addi	a2,sp,196
   161e6:	85a6                	mv	a1,s1
   161e8:	854a                	mv	a0,s2
   161ea:	776000ef          	jal	16960 <__sprint_r>
   161ee:	d8051263          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   161f2:	463e                	lw	a2,204(sp)
   161f4:	85ce                	mv	a1,s3
   161f6:	4741                	li	a4,16
   161f8:	481d                	li	a6,7
   161fa:	bf19                	j	16110 <_vfprintf_r+0x13fa>
   161fc:	01d0                	addi	a2,sp,196
   161fe:	85a6                	mv	a1,s1
   16200:	854a                	mv	a0,s2
   16202:	2fb9                	jal	16960 <__sprint_r>
   16204:	d6051763          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   16208:	000cc683          	lbu	a3,0(s9)
   1620c:	463e                	lw	a2,204(sp)
   1620e:	85ce                	mv	a1,s3
   16210:	4741                	li	a4,16
   16212:	481d                	li	a6,7
   16214:	b725                	j	1613c <_vfprintf_r+0x1426>
   16216:	4522                	lw	a0,8(sp)
   16218:	01d0                	addi	a2,sp,196
   1621a:	85a6                	mv	a1,s1
   1621c:	2791                	jal	16960 <__sprint_r>
   1621e:	d4051a63          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   16222:	553a                	lw	a0,172(sp)
   16224:	463e                	lw	a2,204(sp)
   16226:	844e                	mv	s0,s3
   16228:	b949                	j	15eba <_vfprintf_r+0x11a4>
   1622a:	67f9                	lui	a5,0x1e
   1622c:	93c78d13          	addi	s10,a5,-1732 # 1d93c <__clzsi2+0x84>
   16230:	b33d                	j	15f5e <_vfprintf_r+0x1248>
   16232:	4522                	lw	a0,8(sp)
   16234:	01d0                	addi	a2,sp,196
   16236:	85a6                	mv	a1,s1
   16238:	2725                	jal	16960 <__sprint_r>
   1623a:	d2051c63          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   1623e:	463e                	lw	a2,204(sp)
   16240:	844e                	mv	s0,s3
   16242:	eaaff06f          	j	158ec <_vfprintf_r+0xbd6>
   16246:	4b19                	li	s6,6
   16248:	b2a1                	j	15b90 <_vfprintf_r+0xe7a>
   1624a:	47d2                	lw	a5,20(sp)
   1624c:	4732                	lw	a4,12(sp)
   1624e:	439c                	lw	a5,0(a5)
   16250:	00e79023          	sh	a4,0(a5)
   16254:	aaaff06f          	j	154fe <_vfprintf_r+0x7e8>
   16258:	0b62                	slli	s6,s6,0x18
   1625a:	418b5b13          	srai	s6,s6,0x18
   1625e:	41fb5d93          	srai	s11,s6,0x1f
   16262:	87ee                	mv	a5,s11
   16264:	de5fe06f          	j	15048 <_vfprintf_r+0x332>
   16268:	0ffb7b13          	zext.b	s6,s6
   1626c:	4d81                	li	s11,0
   1626e:	e3dfe06f          	j	150aa <_vfprintf_r+0x394>
   16272:	0ffb7b13          	zext.b	s6,s6
   16276:	4d81                	li	s11,0
   16278:	b075                	j	15b24 <_vfprintf_r+0xe0e>
   1627a:	02d00793          	li	a5,45
   1627e:	0af103a3          	sb	a5,167(sp)
   16282:	02d00713          	li	a4,45
   16286:	b351                	j	1600a <_vfprintf_r+0x12f4>
   16288:	4522                	lw	a0,8(sp)
   1628a:	01d0                	addi	a2,sp,196
   1628c:	85a6                	mv	a1,s1
   1628e:	2dc9                	jal	16960 <__sprint_r>
   16290:	ce3fe06f          	j	14f72 <_vfprintf_r+0x25c>
   16294:	4522                	lw	a0,8(sp)
   16296:	01d0                	addi	a2,sp,196
   16298:	85a6                	mv	a1,s1
   1629a:	25d9                	jal	16960 <__sprint_r>
   1629c:	cc051b63          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   162a0:	553a                	lw	a0,172(sp)
   162a2:	463e                	lw	a2,204(sp)
   162a4:	472e                	lw	a4,200(sp)
   162a6:	844e                	mv	s0,s3
   162a8:	b9dd                	j	15f9e <_vfprintf_r+0x1288>
   162aa:	01550733          	add	a4,a0,s5
   162ae:	04700613          	li	a2,71
   162b2:	010c                	addi	a1,sp,128
   162b4:	855a                	mv	a0,s6
   162b6:	d23a                	sw	a4,36(sp)
   162b8:	d032                	sw	a2,32(sp)
   162ba:	ce46                	sw	a7,28(sp)
   162bc:	c97e                	sw	t6,144(sp)
   162be:	cb7a                	sw	t5,148(sp)
   162c0:	cd76                	sw	t4,152(sp)
   162c2:	cf62                	sw	s8,156(sp)
   162c4:	c102                	sw	zero,128(sp)
   162c6:	c302                	sw	zero,132(sp)
   162c8:	c502                	sw	zero,136(sp)
   162ca:	c702                	sw	zero,140(sp)
   162cc:	17c050ef          	jal	1b448 <__eqtf2>
   162d0:	48f2                	lw	a7,28(sp)
   162d2:	5602                	lw	a2,32(sp)
   162d4:	5712                	lw	a4,36(sp)
   162d6:	36050a63          	beqz	a0,1664a <_vfprintf_r+0x1934>
   162da:	57fa                	lw	a5,188(sp)
   162dc:	00e7fc63          	bgeu	a5,a4,162f4 <_vfprintf_r+0x15de>
   162e0:	03000593          	li	a1,48
   162e4:	00178693          	addi	a3,a5,1
   162e8:	df36                	sw	a3,188(sp)
   162ea:	00b78023          	sb	a1,0(a5)
   162ee:	57fa                	lw	a5,188(sp)
   162f0:	fee7eae3          	bltu	a5,a4,162e4 <_vfprintf_r+0x15ce>
   162f4:	573a                	lw	a4,172(sp)
   162f6:	ce3a                	sw	a4,28(sp)
   162f8:	41a787b3          	sub	a5,a5,s10
   162fc:	04700713          	li	a4,71
   16300:	d03e                	sw	a5,32(sp)
   16302:	98e60ae3          	beq	a2,a4,15c96 <_vfprintf_r+0xf80>
   16306:	04600713          	li	a4,70
   1630a:	38e60863          	beq	a2,a4,1669a <_vfprintf_r+0x1984>
   1630e:	47f2                	lw	a5,28(sp)
   16310:	fff78713          	addi	a4,a5,-1
   16314:	ba59                	j	15caa <_vfprintf_r+0xf94>
   16316:	001a8693          	addi	a3,s5,1
   1631a:	4609                	li	a2,2
   1631c:	4522                	lw	a0,8(sp)
   1631e:	09010b13          	addi	s6,sp,144
   16322:	1178                	addi	a4,sp,172
   16324:	85da                	mv	a1,s6
   16326:	0bc10813          	addi	a6,sp,188
   1632a:	191c                	addi	a5,sp,176
   1632c:	c8c6                	sw	a7,80(sp)
   1632e:	d436                	sw	a3,40(sp)
   16330:	c97e                	sw	t6,144(sp)
   16332:	d27e                	sw	t6,36(sp)
   16334:	cb7a                	sw	t5,148(sp)
   16336:	d07a                	sw	t5,32(sp)
   16338:	cd76                	sw	t4,152(sp)
   1633a:	ce76                	sw	t4,28(sp)
   1633c:	cf62                	sw	s8,156(sp)
   1633e:	442010ef          	jal	17780 <_ldtoa_r>
   16342:	48c6                	lw	a7,80(sp)
   16344:	56a2                	lw	a3,40(sp)
   16346:	04600593          	li	a1,70
   1634a:	fdf8f613          	andi	a2,a7,-33
   1634e:	4ef2                	lw	t4,28(sp)
   16350:	5f02                	lw	t5,32(sp)
   16352:	5f92                	lw	t6,36(sp)
   16354:	8d2a                	mv	s10,a0
   16356:	00d50733          	add	a4,a0,a3
   1635a:	54b61563          	bne	a2,a1,168a4 <_vfprintf_r+0x1b8e>
   1635e:	000d4503          	lbu	a0,0(s10)
   16362:	03000593          	li	a1,48
   16366:	2eb50663          	beq	a0,a1,16652 <_vfprintf_r+0x193c>
   1636a:	56ba                	lw	a3,172(sp)
   1636c:	010c                	addi	a1,sp,128
   1636e:	9736                	add	a4,a4,a3
   16370:	b791                	j	162b4 <_vfprintf_r+0x159e>
   16372:	09010b13          	addi	s6,sp,144
   16376:	010c                	addi	a1,sp,128
   16378:	1170                	addi	a2,sp,172
   1637a:	855a                	mv	a0,s6
   1637c:	c0c6                	sw	a7,64(sp)
   1637e:	c17e                	sw	t6,128(sp)
   16380:	c37a                	sw	t5,132(sp)
   16382:	c576                	sw	t4,136(sp)
   16384:	ce2e                	sw	a1,28(sp)
   16386:	c762                	sw	s8,140(sp)
   16388:	29c010ef          	jal	17624 <frexpl>
   1638c:	474a                	lw	a4,144(sp)
   1638e:	45f2                	lw	a1,28(sp)
   16390:	1890                	addi	a2,sp,112
   16392:	c13a                	sw	a4,128(sp)
   16394:	475a                	lw	a4,148(sp)
   16396:	855a                	mv	a0,s6
   16398:	d882                	sw	zero,112(sp)
   1639a:	c33a                	sw	a4,132(sp)
   1639c:	476a                	lw	a4,152(sp)
   1639e:	da82                	sw	zero,116(sp)
   163a0:	dc82                	sw	zero,120(sp)
   163a2:	c53a                	sw	a4,136(sp)
   163a4:	477a                	lw	a4,156(sp)
   163a6:	c73a                	sw	a4,140(sp)
   163a8:	3ffc0737          	lui	a4,0x3ffc0
   163ac:	deba                	sw	a4,124(sp)
   163ae:	35e050ef          	jal	1b70c <__multf3>
   163b2:	45f2                	lw	a1,28(sp)
   163b4:	4f4a                	lw	t5,144(sp)
   163b6:	4eda                	lw	t4,148(sp)
   163b8:	486a                	lw	a6,152(sp)
   163ba:	855a                	mv	a0,s6
   163bc:	d42e                	sw	a1,40(sp)
   163be:	d27a                	sw	t5,36(sp)
   163c0:	d076                	sw	t4,32(sp)
   163c2:	ce42                	sw	a6,28(sp)
   163c4:	c102                	sw	zero,128(sp)
   163c6:	c302                	sw	zero,132(sp)
   163c8:	c502                	sw	zero,136(sp)
   163ca:	c702                	sw	zero,140(sp)
   163cc:	07c050ef          	jal	1b448 <__eqtf2>
   163d0:	4dfa                	lw	s11,156(sp)
   163d2:	4872                	lw	a6,28(sp)
   163d4:	5e82                	lw	t4,32(sp)
   163d6:	5f12                	lw	t5,36(sp)
   163d8:	55a2                	lw	a1,40(sp)
   163da:	4886                	lw	a7,64(sp)
   163dc:	e119                	bnez	a0,163e2 <_vfprintf_r+0x16cc>
   163de:	4705                	li	a4,1
   163e0:	d73a                	sw	a4,172(sp)
   163e2:	06100713          	li	a4,97
   163e6:	44e88d63          	beq	a7,a4,16840 <_vfprintf_r+0x1b2a>
   163ea:	6779                	lui	a4,0x1e
   163ec:	96070793          	addi	a5,a4,-1696 # 1d960 <__clzsi2+0xa8>
   163f0:	ce3e                	sw	a5,28(sp)
   163f2:	d04a                	sw	s2,32(sp)
   163f4:	d466                	sw	s9,40(sp)
   163f6:	c0de                	sw	s7,64(sp)
   163f8:	c6a2                	sw	s0,76(sp)
   163fa:	896a                	mv	s2,s10
   163fc:	c8a6                	sw	s1,80(sp)
   163fe:	caea                	sw	s10,84(sp)
   16400:	44f2                	lw	s1,28(sp)
   16402:	1afd                	addi	s5,s5,-1
   16404:	d246                	sw	a7,36(sp)
   16406:	8bfa                	mv	s7,t5
   16408:	8c76                	mv	s8,t4
   1640a:	8cc2                	mv	s9,a6
   1640c:	8d6e                	mv	s10,s11
   1640e:	842e                	mv	s0,a1
   16410:	a015                	j	16434 <_vfprintf_r+0x171e>
   16412:	85a2                	mv	a1,s0
   16414:	855a                	mv	a0,s6
   16416:	c95e                	sw	s7,144(sp)
   16418:	cb62                	sw	s8,148(sp)
   1641a:	cd66                	sw	s9,152(sp)
   1641c:	cf6a                	sw	s10,156(sp)
   1641e:	c102                	sw	zero,128(sp)
   16420:	c302                	sw	zero,132(sp)
   16422:	c502                	sw	zero,136(sp)
   16424:	c702                	sw	zero,140(sp)
   16426:	fffa8d93          	addi	s11,s5,-1
   1642a:	01e050ef          	jal	1b448 <__eqtf2>
   1642e:	3c050c63          	beqz	a0,16806 <_vfprintf_r+0x1af0>
   16432:	8aee                	mv	s5,s11
   16434:	400307b7          	lui	a5,0x40030
   16438:	1890                	addi	a2,sp,112
   1643a:	85a2                	mv	a1,s0
   1643c:	855a                	mv	a0,s6
   1643e:	debe                	sw	a5,124(sp)
   16440:	c15e                	sw	s7,128(sp)
   16442:	c362                	sw	s8,132(sp)
   16444:	c566                	sw	s9,136(sp)
   16446:	c76a                	sw	s10,140(sp)
   16448:	d882                	sw	zero,112(sp)
   1644a:	da82                	sw	zero,116(sp)
   1644c:	dc82                	sw	zero,120(sp)
   1644e:	2be050ef          	jal	1b70c <__multf3>
   16452:	855a                	mv	a0,s6
   16454:	0e2070ef          	jal	1d536 <__fixtfsi>
   16458:	85aa                	mv	a1,a0
   1645a:	8daa                	mv	s11,a0
   1645c:	855a                	mv	a0,s6
   1645e:	4d4a                	lw	s10,144(sp)
   16460:	4cda                	lw	s9,148(sp)
   16462:	4c6a                	lw	s8,152(sp)
   16464:	4bfa                	lw	s7,156(sp)
   16466:	1f4070ef          	jal	1d65a <__floatsitf>
   1646a:	46ca                	lw	a3,144(sp)
   1646c:	1090                	addi	a2,sp,96
   1646e:	188c                	addi	a1,sp,112
   16470:	d0b6                	sw	a3,96(sp)
   16472:	46da                	lw	a3,148(sp)
   16474:	8522                	mv	a0,s0
   16476:	d8ea                	sw	s10,112(sp)
   16478:	d2b6                	sw	a3,100(sp)
   1647a:	46ea                	lw	a3,152(sp)
   1647c:	dae6                	sw	s9,116(sp)
   1647e:	dce2                	sw	s8,120(sp)
   16480:	d4b6                	sw	a3,104(sp)
   16482:	46fa                	lw	a3,156(sp)
   16484:	dede                	sw	s7,124(sp)
   16486:	d6b6                	sw	a3,108(sp)
   16488:	721050ef          	jal	1c3a8 <__subtf3>
   1648c:	01b486b3          	add	a3,s1,s11
   16490:	0006c603          	lbu	a2,0(a3)
   16494:	8fca                	mv	t6,s2
   16496:	0905                	addi	s2,s2,1
   16498:	4b8a                	lw	s7,128(sp)
   1649a:	4c1a                	lw	s8,132(sp)
   1649c:	4caa                	lw	s9,136(sp)
   1649e:	4d3a                	lw	s10,140(sp)
   164a0:	57fd                	li	a5,-1
   164a2:	fec90fa3          	sb	a2,-1(s2)
   164a6:	f6fa96e3          	bne	s5,a5,16412 <_vfprintf_r+0x16fc>
   164aa:	5892                	lw	a7,36(sp)
   164ac:	8f5e                	mv	t5,s7
   164ae:	8ee2                	mv	t4,s8
   164b0:	8866                	mv	a6,s9
   164b2:	85a2                	mv	a1,s0
   164b4:	ccee                	sw	s11,88(sp)
   164b6:	3ffe0ab7          	lui	s5,0x3ffe0
   164ba:	8dea                	mv	s11,s10
   164bc:	855a                	mv	a0,s6
   164be:	cec6                	sw	a7,92(sp)
   164c0:	d27e                	sw	t6,36(sp)
   164c2:	44c6                	lw	s1,80(sp)
   164c4:	4b86                	lw	s7,64(sp)
   164c6:	5ca2                	lw	s9,40(sp)
   164c8:	4436                	lw	s0,76(sp)
   164ca:	c97a                	sw	t5,144(sp)
   164cc:	c8fa                	sw	t5,80(sp)
   164ce:	cb76                	sw	t4,148(sp)
   164d0:	c6f6                	sw	t4,76(sp)
   164d2:	cd42                	sw	a6,152(sp)
   164d4:	c0c2                	sw	a6,64(sp)
   164d6:	cf6e                	sw	s11,156(sp)
   164d8:	c102                	sw	zero,128(sp)
   164da:	c302                	sw	zero,132(sp)
   164dc:	c502                	sw	zero,136(sp)
   164de:	c756                	sw	s5,140(sp)
   164e0:	d42e                	sw	a1,40(sp)
   164e2:	052050ef          	jal	1b534 <__getf2>
   164e6:	8c4a                	mv	s8,s2
   164e8:	4d56                	lw	s10,84(sp)
   164ea:	5902                	lw	s2,32(sp)
   164ec:	5f92                	lw	t6,36(sp)
   164ee:	48f6                	lw	a7,92(sp)
   164f0:	00a04e63          	bgtz	a0,1650c <_vfprintf_r+0x17f6>
   164f4:	55a2                	lw	a1,40(sp)
   164f6:	855a                	mv	a0,s6
   164f8:	d046                	sw	a7,32(sp)
   164fa:	74f040ef          	jal	1b448 <__eqtf2>
   164fe:	5882                	lw	a7,32(sp)
   16500:	e529                	bnez	a0,1654a <_vfprintf_r+0x1834>
   16502:	47e6                	lw	a5,88(sp)
   16504:	5f92                	lw	t6,36(sp)
   16506:	0017f693          	andi	a3,a5,1
   1650a:	c2a1                	beqz	a3,1654a <_vfprintf_r+0x1834>
   1650c:	47f2                	lw	a5,28(sp)
   1650e:	df7e                	sw	t6,188(sp)
   16510:	fffc4603          	lbu	a2,-1(s8)
   16514:	00f7c583          	lbu	a1,15(a5) # 4003000f <__BSS_END__+0x40010423>
   16518:	86e2                	mv	a3,s8
   1651a:	00b61e63          	bne	a2,a1,16536 <_vfprintf_r+0x1820>
   1651e:	03000513          	li	a0,48
   16522:	fea68fa3          	sb	a0,-1(a3)
   16526:	56fa                	lw	a3,188(sp)
   16528:	fff68793          	addi	a5,a3,-1
   1652c:	df3e                	sw	a5,188(sp)
   1652e:	fff6c603          	lbu	a2,-1(a3)
   16532:	fec588e3          	beq	a1,a2,16522 <_vfprintf_r+0x180c>
   16536:	00160593          	addi	a1,a2,1
   1653a:	03900513          	li	a0,57
   1653e:	0ff5f593          	zext.b	a1,a1
   16542:	02a60c63          	beq	a2,a0,1657a <_vfprintf_r+0x1864>
   16546:	feb68fa3          	sb	a1,-1(a3)
   1654a:	57ba                	lw	a5,172(sp)
   1654c:	41ac0733          	sub	a4,s8,s10
   16550:	d03a                	sw	a4,32(sp)
   16552:	fff78713          	addi	a4,a5,-1
   16556:	ce3e                	sw	a5,28(sp)
   16558:	06100613          	li	a2,97
   1655c:	d73a                	sw	a4,172(sp)
   1655e:	07000693          	li	a3,112
   16562:	00c88663          	beq	a7,a2,1656e <_vfprintf_r+0x1858>
   16566:	05000693          	li	a3,80
   1656a:	04100893          	li	a7,65
   1656e:	4605                	li	a2,1
   16570:	f42ff06f          	j	15cb2 <_vfprintf_r+0xf9c>
   16574:	86d6                	mv	a3,s5
   16576:	460d                	li	a2,3
   16578:	b355                	j	1631c <_vfprintf_r+0x1606>
   1657a:	47f2                	lw	a5,28(sp)
   1657c:	00a7c583          	lbu	a1,10(a5)
   16580:	b7d9                	j	16546 <_vfprintf_r+0x1830>
   16582:	0a714703          	lbu	a4,167(sp)
   16586:	4cb6                	lw	s9,76(sp)
   16588:	4a81                	li	s5,0
   1658a:	c319                	beqz	a4,16590 <_vfprintf_r+0x187a>
   1658c:	af7fe06f          	j	15082 <_vfprintf_r+0x36c>
   16590:	911fe06f          	j	14ea0 <_vfprintf_r+0x18a>
   16594:	5782                	lw	a5,32(sp)
   16596:	4772                	lw	a4,28(sp)
   16598:	12f74763          	blt	a4,a5,166c6 <_vfprintf_r+0x19b0>
   1659c:	47f2                	lw	a5,28(sp)
   1659e:	001cf713          	andi	a4,s9,1
   165a2:	8b3e                	mv	s6,a5
   165a4:	c701                	beqz	a4,165ac <_vfprintf_r+0x1896>
   165a6:	5732                	lw	a4,44(sp)
   165a8:	00e78b33          	add	s6,a5,a4
   165ac:	400cfe13          	andi	t3,s9,1024
   165b0:	000e0563          	beqz	t3,165ba <_vfprintf_r+0x18a4>
   165b4:	47f2                	lw	a5,28(sp)
   165b6:	1ef04c63          	bgtz	a5,167ae <_vfprintf_r+0x1a98>
   165ba:	fffb4693          	not	a3,s6
   165be:	86fd                	srai	a3,a3,0x1f
   165c0:	00db7db3          	and	s11,s6,a3
   165c4:	06700893          	li	a7,103
   165c8:	d402                	sw	zero,40(sp)
   165ca:	d202                	sw	zero,36(sp)
   165cc:	f88ff06f          	j	15d54 <_vfprintf_r+0x103e>
   165d0:	01d0                	addi	a2,sp,196
   165d2:	85a6                	mv	a1,s1
   165d4:	854a                	mv	a0,s2
   165d6:	2669                	jal	16960 <__sprint_r>
   165d8:	98051d63          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   165dc:	000cc683          	lbu	a3,0(s9)
   165e0:	463e                	lw	a2,204(sp)
   165e2:	85ce                	mv	a1,s3
   165e4:	4741                	li	a4,16
   165e6:	481d                	li	a6,7
   165e8:	9d36                	add	s10,s10,a3
   165ea:	b69d                	j	16150 <_vfprintf_r+0x143a>
   165ec:	4525                	li	a0,9
   165ee:	83656ae3          	bltu	a0,s6,15e22 <_vfprintf_r+0x110c>
   165f2:	b861                	j	15e8a <_vfprintf_r+0x1174>
   165f4:	57fd                	li	a5,-1
   165f6:	c63e                	sw	a5,12(sp)
   165f8:	9adfe06f          	j	14fa4 <_vfprintf_r+0x28e>
   165fc:	02d00793          	li	a5,45
   16600:	0af103a3          	sb	a5,167(sp)
   16604:	02d00713          	li	a4,45
   16608:	b2a1                	j	15f50 <_vfprintf_r+0x123a>
   1660a:	0a714703          	lbu	a4,167(sp)
   1660e:	ca62                	sw	s8,20(sp)
   16610:	d402                	sw	zero,40(sp)
   16612:	d202                	sw	zero,36(sp)
   16614:	ce02                	sw	zero,28(sp)
   16616:	8dd6                	mv	s11,s5
   16618:	8b56                	mv	s6,s5
   1661a:	4a81                	li	s5,0
   1661c:	c319                	beqz	a4,16622 <_vfprintf_r+0x190c>
   1661e:	a65fe06f          	j	15082 <_vfprintf_r+0x36c>
   16622:	87ffe06f          	j	14ea0 <_vfprintf_r+0x18a>
   16626:	4522                	lw	a0,8(sp)
   16628:	01d0                	addi	a2,sp,196
   1662a:	85a6                	mv	a1,s1
   1662c:	2e15                	jal	16960 <__sprint_r>
   1662e:	94051263          	bnez	a0,15772 <_vfprintf_r+0xa5c>
   16632:	5aba                	lw	s5,172(sp)
   16634:	5782                	lw	a5,32(sp)
   16636:	463e                	lw	a2,204(sp)
   16638:	844e                	mv	s0,s3
   1663a:	41578ab3          	sub	s5,a5,s5
   1663e:	b12ff06f          	j	15950 <_vfprintf_r+0xc3a>
   16642:	67f9                	lui	a5,0x1e
   16644:	94878d13          	addi	s10,a5,-1720 # 1d948 <__clzsi2+0x90>
   16648:	ba19                	j	15f5e <_vfprintf_r+0x1248>
   1664a:	57ba                	lw	a5,172(sp)
   1664c:	ce3e                	sw	a5,28(sp)
   1664e:	87ba                	mv	a5,a4
   16650:	b165                	j	162f8 <_vfprintf_r+0x15e2>
   16652:	010c                	addi	a1,sp,128
   16654:	855a                	mv	a0,s6
   16656:	ceba                	sw	a4,92(sp)
   16658:	ccb2                	sw	a2,88(sp)
   1665a:	cac6                	sw	a7,84(sp)
   1665c:	c8b6                	sw	a3,80(sp)
   1665e:	c97e                	sw	t6,144(sp)
   16660:	d47e                	sw	t6,40(sp)
   16662:	cb7a                	sw	t5,148(sp)
   16664:	d27a                	sw	t5,36(sp)
   16666:	cd76                	sw	t4,152(sp)
   16668:	d076                	sw	t4,32(sp)
   1666a:	ce2e                	sw	a1,28(sp)
   1666c:	cf62                	sw	s8,156(sp)
   1666e:	c102                	sw	zero,128(sp)
   16670:	c302                	sw	zero,132(sp)
   16672:	c502                	sw	zero,136(sp)
   16674:	c702                	sw	zero,140(sp)
   16676:	5d3040ef          	jal	1b448 <__eqtf2>
   1667a:	45f2                	lw	a1,28(sp)
   1667c:	5e82                	lw	t4,32(sp)
   1667e:	5f12                	lw	t5,36(sp)
   16680:	5fa2                	lw	t6,40(sp)
   16682:	46c6                	lw	a3,80(sp)
   16684:	48d6                	lw	a7,84(sp)
   16686:	4666                	lw	a2,88(sp)
   16688:	4776                	lw	a4,92(sp)
   1668a:	1c051063          	bnez	a0,1684a <_vfprintf_r+0x1b34>
   1668e:	57ba                	lw	a5,172(sp)
   16690:	973e                	add	a4,a4,a5
   16692:	ce3e                	sw	a5,28(sp)
   16694:	41a707b3          	sub	a5,a4,s10
   16698:	d03e                	sw	a5,32(sp)
   1669a:	47f2                	lw	a5,28(sp)
   1669c:	001cf713          	andi	a4,s9,1
   166a0:	01576733          	or	a4,a4,s5
   166a4:	1af05963          	blez	a5,16856 <_vfprintf_r+0x1b40>
   166a8:	18071463          	bnez	a4,16830 <_vfprintf_r+0x1b1a>
   166ac:	4b72                	lw	s6,28(sp)
   166ae:	06600893          	li	a7,102
   166b2:	400cfe13          	andi	t3,s9,1024
   166b6:	0e0e1e63          	bnez	t3,167b2 <_vfprintf_r+0x1a9c>
   166ba:	fffb4693          	not	a3,s6
   166be:	86fd                	srai	a3,a3,0x1f
   166c0:	00db7db3          	and	s11,s6,a3
   166c4:	b711                	j	165c8 <_vfprintf_r+0x18b2>
   166c6:	5782                	lw	a5,32(sp)
   166c8:	5732                	lw	a4,44(sp)
   166ca:	06700893          	li	a7,103
   166ce:	00e78b33          	add	s6,a5,a4
   166d2:	47f2                	lw	a5,28(sp)
   166d4:	fcf04fe3          	bgtz	a5,166b2 <_vfprintf_r+0x199c>
   166d8:	40fb0f33          	sub	t5,s6,a5
   166dc:	001f0b13          	addi	s6,t5,1
   166e0:	fffb4693          	not	a3,s6
   166e4:	86fd                	srai	a3,a3,0x1f
   166e6:	00db7db3          	and	s11,s6,a3
   166ea:	bdf9                	j	165c8 <_vfprintf_r+0x18b2>
   166ec:	8ee6                	mv	t4,s9
   166ee:	cf5fe06f          	j	153e2 <_vfprintf_r+0x6cc>
   166f2:	6879                	lui	a6,0x1e
   166f4:	55c1                	li	a1,-16
   166f6:	40a00ab3          	neg	s5,a0
   166fa:	ca880813          	addi	a6,a6,-856 # 1dca8 <zeroes.0>
   166fe:	04b55263          	bge	a0,a1,16742 <_vfprintf_r+0x1a2c>
   16702:	ce4a                	sw	s2,28(sp)
   16704:	4b41                	li	s6,16
   16706:	4c1d                	li	s8,7
   16708:	8942                	mv	s2,a6
   1670a:	a021                	j	16712 <_vfprintf_r+0x19fc>
   1670c:	1ac1                	addi	s5,s5,-16 # 3ffdfff0 <__BSS_END__+0x3ffc0404>
   1670e:	035b5863          	bge	s6,s5,1673e <_vfprintf_r+0x1a28>
   16712:	0641                	addi	a2,a2,16
   16714:	0705                	addi	a4,a4,1
   16716:	01242023          	sw	s2,0(s0)
   1671a:	01642223          	sw	s6,4(s0)
   1671e:	c7b2                	sw	a2,204(sp)
   16720:	c5ba                	sw	a4,200(sp)
   16722:	0421                	addi	s0,s0,8
   16724:	feec54e3          	bge	s8,a4,1670c <_vfprintf_r+0x19f6>
   16728:	4522                	lw	a0,8(sp)
   1672a:	01d0                	addi	a2,sp,196
   1672c:	85a6                	mv	a1,s1
   1672e:	2c0d                	jal	16960 <__sprint_r>
   16730:	c119                	beqz	a0,16736 <_vfprintf_r+0x1a20>
   16732:	840ff06f          	j	15772 <_vfprintf_r+0xa5c>
   16736:	463e                	lw	a2,204(sp)
   16738:	472e                	lw	a4,200(sp)
   1673a:	844e                	mv	s0,s3
   1673c:	bfc1                	j	1670c <_vfprintf_r+0x19f6>
   1673e:	884a                	mv	a6,s2
   16740:	4972                	lw	s2,28(sp)
   16742:	9656                	add	a2,a2,s5
   16744:	0705                	addi	a4,a4,1
   16746:	01042023          	sw	a6,0(s0)
   1674a:	01542223          	sw	s5,4(s0)
   1674e:	c7b2                	sw	a2,204(sp)
   16750:	c5ba                	sw	a4,200(sp)
   16752:	459d                	li	a1,7
   16754:	f8e5d763          	bge	a1,a4,15ee2 <_vfprintf_r+0x11cc>
   16758:	4522                	lw	a0,8(sp)
   1675a:	01d0                	addi	a2,sp,196
   1675c:	85a6                	mv	a1,s1
   1675e:	2409                	jal	16960 <__sprint_r>
   16760:	c119                	beqz	a0,16766 <_vfprintf_r+0x1a50>
   16762:	810ff06f          	j	15772 <_vfprintf_r+0xa5c>
   16766:	463e                	lw	a2,204(sp)
   16768:	472e                	lw	a4,200(sp)
   1676a:	844e                	mv	s0,s3
   1676c:	837ff06f          	j	15fa2 <_vfprintf_r+0x128c>
   16770:	0b610693          	addi	a3,sp,182
   16774:	e619                	bnez	a2,16782 <_vfprintf_r+0x1a6c>
   16776:	03000693          	li	a3,48
   1677a:	0ad10b23          	sb	a3,182(sp)
   1677e:	0b710693          	addi	a3,sp,183
   16782:	0b1c                	addi	a5,sp,400
   16784:	40f68633          	sub	a2,a3,a5
   16788:	03070713          	addi	a4,a4,48
   1678c:	0dd60793          	addi	a5,a2,221
   16790:	00e68023          	sb	a4,0(a3)
   16794:	c0be                	sw	a5,64(sp)
   16796:	d92ff06f          	j	15d28 <_vfprintf_r+0x1012>
   1679a:	c802                	sw	zero,16(sp)
   1679c:	4a99                	li	s5,6
   1679e:	9effe06f          	j	1518c <_vfprintf_r+0x476>
   167a2:	001cf713          	andi	a4,s9,1
   167a6:	d8070a63          	beqz	a4,15d3a <_vfprintf_r+0x1024>
   167aa:	d8cff06f          	j	15d36 <_vfprintf_r+0x1020>
   167ae:	06700893          	li	a7,103
   167b2:	5672                	lw	a2,60(sp)
   167b4:	0ff00693          	li	a3,255
   167b8:	00064703          	lbu	a4,0(a2)
   167bc:	0ed70163          	beq	a4,a3,1689e <_vfprintf_r+0x1b88>
   167c0:	47f2                	lw	a5,28(sp)
   167c2:	4501                	li	a0,0
   167c4:	4581                	li	a1,0
   167c6:	00f75a63          	bge	a4,a5,167da <_vfprintf_r+0x1ac4>
   167ca:	8f99                	sub	a5,a5,a4
   167cc:	00164703          	lbu	a4,1(a2)
   167d0:	c71d                	beqz	a4,167fe <_vfprintf_r+0x1ae8>
   167d2:	0585                	addi	a1,a1,1
   167d4:	0605                	addi	a2,a2,1
   167d6:	fed718e3          	bne	a4,a3,167c6 <_vfprintf_r+0x1ab0>
   167da:	de32                	sw	a2,60(sp)
   167dc:	d22e                	sw	a1,36(sp)
   167de:	d42a                	sw	a0,40(sp)
   167e0:	ce3e                	sw	a5,28(sp)
   167e2:	57a2                	lw	a5,40(sp)
   167e4:	5712                	lw	a4,36(sp)
   167e6:	973e                	add	a4,a4,a5
   167e8:	47a6                	lw	a5,72(sp)
   167ea:	02f70733          	mul	a4,a4,a5
   167ee:	9b3a                	add	s6,s6,a4
   167f0:	fffb4693          	not	a3,s6
   167f4:	86fd                	srai	a3,a3,0x1f
   167f6:	00db7db3          	and	s11,s6,a3
   167fa:	d5aff06f          	j	15d54 <_vfprintf_r+0x103e>
   167fe:	00064703          	lbu	a4,0(a2)
   16802:	0505                	addi	a0,a0,1
   16804:	bfc9                	j	167d6 <_vfprintf_r+0x1ac0>
   16806:	8c4a                	mv	s8,s2
   16808:	001a8693          	addi	a3,s5,1
   1680c:	5892                	lw	a7,36(sp)
   1680e:	5ca2                	lw	s9,40(sp)
   16810:	4b86                	lw	s7,64(sp)
   16812:	4436                	lw	s0,76(sp)
   16814:	5902                	lw	s2,32(sp)
   16816:	44c6                	lw	s1,80(sp)
   16818:	4d56                	lw	s10,84(sp)
   1681a:	96e2                	add	a3,a3,s8
   1681c:	03000613          	li	a2,48
   16820:	d20ac5e3          	bltz	s5,1654a <_vfprintf_r+0x1834>
   16824:	0c05                	addi	s8,s8,1
   16826:	fecc0fa3          	sb	a2,-1(s8)
   1682a:	fedc1de3          	bne	s8,a3,16824 <_vfprintf_r+0x1b0e>
   1682e:	bb31                	j	1654a <_vfprintf_r+0x1834>
   16830:	5732                	lw	a4,44(sp)
   16832:	06600893          	li	a7,102
   16836:	00ea8f33          	add	t5,s5,a4
   1683a:	00ff0b33          	add	s6,t5,a5
   1683e:	bd95                	j	166b2 <_vfprintf_r+0x199c>
   16840:	6779                	lui	a4,0x1e
   16842:	94c70793          	addi	a5,a4,-1716 # 1d94c <__clzsi2+0x94>
   16846:	ce3e                	sw	a5,28(sp)
   16848:	b66d                	j	163f2 <_vfprintf_r+0x16dc>
   1684a:	4505                	li	a0,1
   1684c:	40d506b3          	sub	a3,a0,a3
   16850:	d736                	sw	a3,172(sp)
   16852:	9736                	add	a4,a4,a3
   16854:	b485                	j	162b4 <_vfprintf_r+0x159e>
   16856:	e711                	bnez	a4,16862 <_vfprintf_r+0x1b4c>
   16858:	4d85                	li	s11,1
   1685a:	06600893          	li	a7,102
   1685e:	4b05                	li	s6,1
   16860:	b3a5                	j	165c8 <_vfprintf_r+0x18b2>
   16862:	57b2                	lw	a5,44(sp)
   16864:	06600893          	li	a7,102
   16868:	00178f13          	addi	t5,a5,1
   1686c:	015f0b33          	add	s6,t5,s5
   16870:	fffb4693          	not	a3,s6
   16874:	86fd                	srai	a3,a3,0x1f
   16876:	00db7db3          	and	s11,s6,a3
   1687a:	b3b9                	j	165c8 <_vfprintf_r+0x18b2>
   1687c:	4789                	li	a5,2
   1687e:	c0be                	sw	a5,64(sp)
   16880:	ca8ff06f          	j	15d28 <_vfprintf_r+0x1012>
   16884:	47d2                	lw	a5,20(sp)
   16886:	0007aa83          	lw	s5,0(a5)
   1688a:	0791                	addi	a5,a5,4
   1688c:	000ad363          	bgez	s5,16892 <_vfprintf_r+0x1b7c>
   16890:	5afd                	li	s5,-1
   16892:	00194883          	lbu	a7,1(s2)
   16896:	ca3e                	sw	a5,20(sp)
   16898:	8936                	mv	s2,a3
   1689a:	dacfe06f          	j	14e46 <_vfprintf_r+0x130>
   1689e:	d402                	sw	zero,40(sp)
   168a0:	d202                	sw	zero,36(sp)
   168a2:	b781                	j	167e2 <_vfprintf_r+0x1acc>
   168a4:	04500613          	li	a2,69
   168a8:	010c                	addi	a1,sp,128
   168aa:	b429                	j	162b4 <_vfprintf_r+0x159e>
   168ac:	00c4d783          	lhu	a5,12(s1)
   168b0:	0407e793          	ori	a5,a5,64
   168b4:	00f49623          	sh	a5,12(s1)
   168b8:	ebafe06f          	j	14f72 <_vfprintf_r+0x25c>

000168bc <vfprintf>:
   168bc:	87aa                	mv	a5,a0
   168be:	f141a503          	lw	a0,-236(gp) # 1f8b4 <_impure_ptr>
   168c2:	86b2                	mv	a3,a2
   168c4:	862e                	mv	a2,a1
   168c6:	85be                	mv	a1,a5
   168c8:	c4efe06f          	j	14d16 <_vfprintf_r>

000168cc <__sbprintf>:
   168cc:	b8010113          	addi	sp,sp,-1152
   168d0:	00c59783          	lh	a5,12(a1)
   168d4:	00e5d703          	lhu	a4,14(a1)
   168d8:	46812c23          	sw	s0,1144(sp)
   168dc:	842e                	mv	s0,a1
   168de:	65c1                	lui	a1,0x10
   168e0:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   168e2:	06442e03          	lw	t3,100(s0)
   168e6:	01c42303          	lw	t1,28(s0)
   168ea:	02442883          	lw	a7,36(s0)
   168ee:	0742                	slli	a4,a4,0x10
   168f0:	8fed                	and	a5,a5,a1
   168f2:	8fd9                	or	a5,a5,a4
   168f4:	40000813          	li	a6,1024
   168f8:	ca3e                	sw	a5,20(sp)
   168fa:	002c                	addi	a1,sp,8
   168fc:	189c                	addi	a5,sp,112
   168fe:	46912a23          	sw	s1,1140(sp)
   16902:	47212823          	sw	s2,1136(sp)
   16906:	46112e23          	sw	ra,1148(sp)
   1690a:	892a                	mv	s2,a0
   1690c:	d6f2                	sw	t3,108(sp)
   1690e:	d21a                	sw	t1,36(sp)
   16910:	d646                	sw	a7,44(sp)
   16912:	c43e                	sw	a5,8(sp)
   16914:	cc3e                	sw	a5,24(sp)
   16916:	c842                	sw	a6,16(sp)
   16918:	ce42                	sw	a6,28(sp)
   1691a:	d002                	sw	zero,32(sp)
   1691c:	bfafe0ef          	jal	14d16 <_vfprintf_r>
   16920:	84aa                	mv	s1,a0
   16922:	02055963          	bgez	a0,16954 <__sbprintf+0x88>
   16926:	01415783          	lhu	a5,20(sp)
   1692a:	0407f793          	andi	a5,a5,64
   1692e:	c799                	beqz	a5,1693c <__sbprintf+0x70>
   16930:	00c45783          	lhu	a5,12(s0)
   16934:	0407e793          	ori	a5,a5,64
   16938:	00f41623          	sh	a5,12(s0)
   1693c:	47c12083          	lw	ra,1148(sp)
   16940:	47812403          	lw	s0,1144(sp)
   16944:	47012903          	lw	s2,1136(sp)
   16948:	8526                	mv	a0,s1
   1694a:	47412483          	lw	s1,1140(sp)
   1694e:	48010113          	addi	sp,sp,1152
   16952:	8082                	ret
   16954:	002c                	addi	a1,sp,8
   16956:	854a                	mv	a0,s2
   16958:	2c9d                	jal	16bce <_fflush_r>
   1695a:	d571                	beqz	a0,16926 <__sbprintf+0x5a>
   1695c:	54fd                	li	s1,-1
   1695e:	b7e1                	j	16926 <__sbprintf+0x5a>

00016960 <__sprint_r>:
   16960:	461c                	lw	a5,8(a2)
   16962:	1141                	addi	sp,sp,-16
   16964:	c422                	sw	s0,8(sp)
   16966:	c606                	sw	ra,12(sp)
   16968:	8432                	mv	s0,a2
   1696a:	eb81                	bnez	a5,1697a <__sprint_r+0x1a>
   1696c:	40b2                	lw	ra,12(sp)
   1696e:	00042223          	sw	zero,4(s0)
   16972:	4422                	lw	s0,8(sp)
   16974:	4501                	li	a0,0
   16976:	0141                	addi	sp,sp,16
   16978:	8082                	ret
   1697a:	2cf9                	jal	16c58 <__sfvwrite_r>
   1697c:	40b2                	lw	ra,12(sp)
   1697e:	00042423          	sw	zero,8(s0)
   16982:	00042223          	sw	zero,4(s0)
   16986:	4422                	lw	s0,8(sp)
   16988:	0141                	addi	sp,sp,16
   1698a:	8082                	ret

0001698c <_fclose_r>:
   1698c:	1141                	addi	sp,sp,-16
   1698e:	c606                	sw	ra,12(sp)
   16990:	c04a                	sw	s2,0(sp)
   16992:	cd89                	beqz	a1,169ac <_fclose_r+0x20>
   16994:	c422                	sw	s0,8(sp)
   16996:	c226                	sw	s1,4(sp)
   16998:	842e                	mv	s0,a1
   1699a:	84aa                	mv	s1,a0
   1699c:	c119                	beqz	a0,169a2 <_fclose_r+0x16>
   1699e:	595c                	lw	a5,52(a0)
   169a0:	c7d1                	beqz	a5,16a2c <_fclose_r+0xa0>
   169a2:	00c41783          	lh	a5,12(s0)
   169a6:	eb89                	bnez	a5,169b8 <_fclose_r+0x2c>
   169a8:	4422                	lw	s0,8(sp)
   169aa:	4492                	lw	s1,4(sp)
   169ac:	40b2                	lw	ra,12(sp)
   169ae:	4901                	li	s2,0
   169b0:	854a                	mv	a0,s2
   169b2:	4902                	lw	s2,0(sp)
   169b4:	0141                	addi	sp,sp,16
   169b6:	8082                	ret
   169b8:	85a2                	mv	a1,s0
   169ba:	8526                	mv	a0,s1
   169bc:	28bd                	jal	16a3a <__sflush_r>
   169be:	545c                	lw	a5,44(s0)
   169c0:	892a                	mv	s2,a0
   169c2:	c791                	beqz	a5,169ce <_fclose_r+0x42>
   169c4:	4c4c                	lw	a1,28(s0)
   169c6:	8526                	mv	a0,s1
   169c8:	9782                	jalr	a5
   169ca:	04054663          	bltz	a0,16a16 <_fclose_r+0x8a>
   169ce:	00c45783          	lhu	a5,12(s0)
   169d2:	0807f793          	andi	a5,a5,128
   169d6:	e7b1                	bnez	a5,16a22 <_fclose_r+0x96>
   169d8:	580c                	lw	a1,48(s0)
   169da:	c991                	beqz	a1,169ee <_fclose_r+0x62>
   169dc:	04040793          	addi	a5,s0,64
   169e0:	00f58563          	beq	a1,a5,169ea <_fclose_r+0x5e>
   169e4:	8526                	mv	a0,s1
   169e6:	b5bfd0ef          	jal	14540 <_free_r>
   169ea:	02042823          	sw	zero,48(s0)
   169ee:	406c                	lw	a1,68(s0)
   169f0:	c591                	beqz	a1,169fc <_fclose_r+0x70>
   169f2:	8526                	mv	a0,s1
   169f4:	b4dfd0ef          	jal	14540 <_free_r>
   169f8:	04042223          	sw	zero,68(s0)
   169fc:	c20fd0ef          	jal	13e1c <__sfp_lock_acquire>
   16a00:	00041623          	sh	zero,12(s0)
   16a04:	c1afd0ef          	jal	13e1e <__sfp_lock_release>
   16a08:	40b2                	lw	ra,12(sp)
   16a0a:	4422                	lw	s0,8(sp)
   16a0c:	4492                	lw	s1,4(sp)
   16a0e:	854a                	mv	a0,s2
   16a10:	4902                	lw	s2,0(sp)
   16a12:	0141                	addi	sp,sp,16
   16a14:	8082                	ret
   16a16:	00c45783          	lhu	a5,12(s0)
   16a1a:	597d                	li	s2,-1
   16a1c:	0807f793          	andi	a5,a5,128
   16a20:	dfc5                	beqz	a5,169d8 <_fclose_r+0x4c>
   16a22:	480c                	lw	a1,16(s0)
   16a24:	8526                	mv	a0,s1
   16a26:	b1bfd0ef          	jal	14540 <_free_r>
   16a2a:	b77d                	j	169d8 <_fclose_r+0x4c>
   16a2c:	bdafd0ef          	jal	13e06 <__sinit>
   16a30:	bf8d                	j	169a2 <_fclose_r+0x16>

00016a32 <fclose>:
   16a32:	85aa                	mv	a1,a0
   16a34:	f141a503          	lw	a0,-236(gp) # 1f8b4 <_impure_ptr>
   16a38:	bf91                	j	1698c <_fclose_r>

00016a3a <__sflush_r>:
   16a3a:	00c59703          	lh	a4,12(a1)
   16a3e:	1101                	addi	sp,sp,-32
   16a40:	cc22                	sw	s0,24(sp)
   16a42:	c64e                	sw	s3,12(sp)
   16a44:	ce06                	sw	ra,28(sp)
   16a46:	00877793          	andi	a5,a4,8
   16a4a:	842e                	mv	s0,a1
   16a4c:	89aa                	mv	s3,a0
   16a4e:	e7e1                	bnez	a5,16b16 <__sflush_r+0xdc>
   16a50:	6785                	lui	a5,0x1
   16a52:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf894>
   16a56:	41d4                	lw	a3,4(a1)
   16a58:	8fd9                	or	a5,a5,a4
   16a5a:	00f59623          	sh	a5,12(a1)
   16a5e:	10d05563          	blez	a3,16b68 <__sflush_r+0x12e>
   16a62:	02842803          	lw	a6,40(s0)
   16a66:	0a080263          	beqz	a6,16b0a <__sflush_r+0xd0>
   16a6a:	ca26                	sw	s1,20(sp)
   16a6c:	01371693          	slli	a3,a4,0x13
   16a70:	0009a483          	lw	s1,0(s3)
   16a74:	0009a023          	sw	zero,0(s3)
   16a78:	4c4c                	lw	a1,28(s0)
   16a7a:	0e06ce63          	bltz	a3,16b76 <__sflush_r+0x13c>
   16a7e:	4601                	li	a2,0
   16a80:	4685                	li	a3,1
   16a82:	854e                	mv	a0,s3
   16a84:	9802                	jalr	a6
   16a86:	57fd                	li	a5,-1
   16a88:	862a                	mv	a2,a0
   16a8a:	10f50f63          	beq	a0,a5,16ba8 <__sflush_r+0x16e>
   16a8e:	00c41783          	lh	a5,12(s0)
   16a92:	02842803          	lw	a6,40(s0)
   16a96:	4c4c                	lw	a1,28(s0)
   16a98:	8b91                	andi	a5,a5,4
   16a9a:	c799                	beqz	a5,16aa8 <__sflush_r+0x6e>
   16a9c:	4058                	lw	a4,4(s0)
   16a9e:	581c                	lw	a5,48(s0)
   16aa0:	8e19                	sub	a2,a2,a4
   16aa2:	c399                	beqz	a5,16aa8 <__sflush_r+0x6e>
   16aa4:	5c5c                	lw	a5,60(s0)
   16aa6:	8e1d                	sub	a2,a2,a5
   16aa8:	4681                	li	a3,0
   16aaa:	854e                	mv	a0,s3
   16aac:	9802                	jalr	a6
   16aae:	57fd                	li	a5,-1
   16ab0:	0cf51563          	bne	a0,a5,16b7a <__sflush_r+0x140>
   16ab4:	0009a683          	lw	a3,0(s3)
   16ab8:	47f5                	li	a5,29
   16aba:	00c41703          	lh	a4,12(s0)
   16abe:	10d7e163          	bltu	a5,a3,16bc0 <__sflush_r+0x186>
   16ac2:	204007b7          	lui	a5,0x20400
   16ac6:	0785                	addi	a5,a5,1 # 20400001 <__BSS_END__+0x203e0415>
   16ac8:	00d7d7b3          	srl	a5,a5,a3
   16acc:	8b85                	andi	a5,a5,1
   16ace:	cbed                	beqz	a5,16bc0 <__sflush_r+0x186>
   16ad0:	4810                	lw	a2,16(s0)
   16ad2:	77fd                	lui	a5,0xfffff
   16ad4:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffdfc13>
   16ad8:	8ff9                	and	a5,a5,a4
   16ada:	00f41623          	sh	a5,12(s0)
   16ade:	00042223          	sw	zero,4(s0)
   16ae2:	c010                	sw	a2,0(s0)
   16ae4:	01371793          	slli	a5,a4,0x13
   16ae8:	0007d363          	bgez	a5,16aee <__sflush_r+0xb4>
   16aec:	c6dd                	beqz	a3,16b9a <__sflush_r+0x160>
   16aee:	580c                	lw	a1,48(s0)
   16af0:	0099a023          	sw	s1,0(s3)
   16af4:	c9c5                	beqz	a1,16ba4 <__sflush_r+0x16a>
   16af6:	04040793          	addi	a5,s0,64
   16afa:	00f58563          	beq	a1,a5,16b04 <__sflush_r+0xca>
   16afe:	854e                	mv	a0,s3
   16b00:	a41fd0ef          	jal	14540 <_free_r>
   16b04:	44d2                	lw	s1,20(sp)
   16b06:	02042823          	sw	zero,48(s0)
   16b0a:	4501                	li	a0,0
   16b0c:	40f2                	lw	ra,28(sp)
   16b0e:	4462                	lw	s0,24(sp)
   16b10:	49b2                	lw	s3,12(sp)
   16b12:	6105                	addi	sp,sp,32
   16b14:	8082                	ret
   16b16:	c84a                	sw	s2,16(sp)
   16b18:	0105a903          	lw	s2,16(a1)
   16b1c:	04090b63          	beqz	s2,16b72 <__sflush_r+0x138>
   16b20:	ca26                	sw	s1,20(sp)
   16b22:	4184                	lw	s1,0(a1)
   16b24:	8b0d                	andi	a4,a4,3
   16b26:	0125a023          	sw	s2,0(a1)
   16b2a:	412484b3          	sub	s1,s1,s2
   16b2e:	4781                	li	a5,0
   16b30:	e311                	bnez	a4,16b34 <__sflush_r+0xfa>
   16b32:	49dc                	lw	a5,20(a1)
   16b34:	c41c                	sw	a5,8(s0)
   16b36:	00904663          	bgtz	s1,16b42 <__sflush_r+0x108>
   16b3a:	a81d                	j	16b70 <__sflush_r+0x136>
   16b3c:	992a                	add	s2,s2,a0
   16b3e:	02905963          	blez	s1,16b70 <__sflush_r+0x136>
   16b42:	505c                	lw	a5,36(s0)
   16b44:	4c4c                	lw	a1,28(s0)
   16b46:	86a6                	mv	a3,s1
   16b48:	864a                	mv	a2,s2
   16b4a:	854e                	mv	a0,s3
   16b4c:	9782                	jalr	a5
   16b4e:	8c89                	sub	s1,s1,a0
   16b50:	fea046e3          	bgtz	a0,16b3c <__sflush_r+0x102>
   16b54:	00c41703          	lh	a4,12(s0)
   16b58:	4942                	lw	s2,16(sp)
   16b5a:	04076713          	ori	a4,a4,64
   16b5e:	44d2                	lw	s1,20(sp)
   16b60:	00e41623          	sh	a4,12(s0)
   16b64:	557d                	li	a0,-1
   16b66:	b75d                	j	16b0c <__sflush_r+0xd2>
   16b68:	5dd4                	lw	a3,60(a1)
   16b6a:	eed04ce3          	bgtz	a3,16a62 <__sflush_r+0x28>
   16b6e:	bf71                	j	16b0a <__sflush_r+0xd0>
   16b70:	44d2                	lw	s1,20(sp)
   16b72:	4942                	lw	s2,16(sp)
   16b74:	bf59                	j	16b0a <__sflush_r+0xd0>
   16b76:	4830                	lw	a2,80(s0)
   16b78:	b705                	j	16a98 <__sflush_r+0x5e>
   16b7a:	00c41703          	lh	a4,12(s0)
   16b7e:	4814                	lw	a3,16(s0)
   16b80:	77fd                	lui	a5,0xfffff
   16b82:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffdfc13>
   16b86:	8ff9                	and	a5,a5,a4
   16b88:	00f41623          	sh	a5,12(s0)
   16b8c:	00042223          	sw	zero,4(s0)
   16b90:	c014                	sw	a3,0(s0)
   16b92:	01371793          	slli	a5,a4,0x13
   16b96:	f407dce3          	bgez	a5,16aee <__sflush_r+0xb4>
   16b9a:	580c                	lw	a1,48(s0)
   16b9c:	c828                	sw	a0,80(s0)
   16b9e:	0099a023          	sw	s1,0(s3)
   16ba2:	f9b1                	bnez	a1,16af6 <__sflush_r+0xbc>
   16ba4:	44d2                	lw	s1,20(sp)
   16ba6:	b795                	j	16b0a <__sflush_r+0xd0>
   16ba8:	0009a783          	lw	a5,0(s3)
   16bac:	ee0781e3          	beqz	a5,16a8e <__sflush_r+0x54>
   16bb0:	4775                	li	a4,29
   16bb2:	00e78a63          	beq	a5,a4,16bc6 <__sflush_r+0x18c>
   16bb6:	4759                	li	a4,22
   16bb8:	00e78763          	beq	a5,a4,16bc6 <__sflush_r+0x18c>
   16bbc:	00c41703          	lh	a4,12(s0)
   16bc0:	04076713          	ori	a4,a4,64
   16bc4:	bf69                	j	16b5e <__sflush_r+0x124>
   16bc6:	0099a023          	sw	s1,0(s3)
   16bca:	44d2                	lw	s1,20(sp)
   16bcc:	bf3d                	j	16b0a <__sflush_r+0xd0>

00016bce <_fflush_r>:
   16bce:	1101                	addi	sp,sp,-32
   16bd0:	cc22                	sw	s0,24(sp)
   16bd2:	ce06                	sw	ra,28(sp)
   16bd4:	842a                	mv	s0,a0
   16bd6:	c119                	beqz	a0,16bdc <_fflush_r+0xe>
   16bd8:	595c                	lw	a5,52(a0)
   16bda:	cf91                	beqz	a5,16bf6 <_fflush_r+0x28>
   16bdc:	00c59783          	lh	a5,12(a1)
   16be0:	e791                	bnez	a5,16bec <_fflush_r+0x1e>
   16be2:	40f2                	lw	ra,28(sp)
   16be4:	4462                	lw	s0,24(sp)
   16be6:	4501                	li	a0,0
   16be8:	6105                	addi	sp,sp,32
   16bea:	8082                	ret
   16bec:	8522                	mv	a0,s0
   16bee:	4462                	lw	s0,24(sp)
   16bf0:	40f2                	lw	ra,28(sp)
   16bf2:	6105                	addi	sp,sp,32
   16bf4:	b599                	j	16a3a <__sflush_r>
   16bf6:	c62e                	sw	a1,12(sp)
   16bf8:	a0efd0ef          	jal	13e06 <__sinit>
   16bfc:	45b2                	lw	a1,12(sp)
   16bfe:	bff9                	j	16bdc <_fflush_r+0xe>

00016c00 <fflush>:
   16c00:	cd05                	beqz	a0,16c38 <fflush+0x38>
   16c02:	85aa                	mv	a1,a0
   16c04:	f141a503          	lw	a0,-236(gp) # 1f8b4 <_impure_ptr>
   16c08:	c119                	beqz	a0,16c0e <fflush+0xe>
   16c0a:	595c                	lw	a5,52(a0)
   16c0c:	c799                	beqz	a5,16c1a <fflush+0x1a>
   16c0e:	00c59783          	lh	a5,12(a1)
   16c12:	e399                	bnez	a5,16c18 <fflush+0x18>
   16c14:	4501                	li	a0,0
   16c16:	8082                	ret
   16c18:	b50d                	j	16a3a <__sflush_r>
   16c1a:	1101                	addi	sp,sp,-32
   16c1c:	c62e                	sw	a1,12(sp)
   16c1e:	c42a                	sw	a0,8(sp)
   16c20:	ce06                	sw	ra,28(sp)
   16c22:	9e4fd0ef          	jal	13e06 <__sinit>
   16c26:	45b2                	lw	a1,12(sp)
   16c28:	4522                	lw	a0,8(sp)
   16c2a:	00c59783          	lh	a5,12(a1)
   16c2e:	e395                	bnez	a5,16c52 <fflush+0x52>
   16c30:	40f2                	lw	ra,28(sp)
   16c32:	4501                	li	a0,0
   16c34:	6105                	addi	sp,sp,32
   16c36:	8082                	ret
   16c38:	0001f637          	lui	a2,0x1f
   16c3c:	65dd                	lui	a1,0x17
   16c3e:	0001f537          	lui	a0,0x1f
   16c42:	1a060613          	addi	a2,a2,416 # 1f1a0 <__sglue>
   16c46:	bce58593          	addi	a1,a1,-1074 # 16bce <_fflush_r>
   16c4a:	1b050513          	addi	a0,a0,432 # 1f1b0 <_impure_data>
   16c4e:	9f6fd06f          	j	13e44 <_fwalk_sglue>
   16c52:	40f2                	lw	ra,28(sp)
   16c54:	6105                	addi	sp,sp,32
   16c56:	b3d5                	j	16a3a <__sflush_r>

00016c58 <__sfvwrite_r>:
   16c58:	461c                	lw	a5,8(a2)
   16c5a:	1c078c63          	beqz	a5,16e32 <__sfvwrite_r+0x1da>
   16c5e:	00c59683          	lh	a3,12(a1)
   16c62:	7179                	addi	sp,sp,-48
   16c64:	d422                	sw	s0,40(sp)
   16c66:	cc52                	sw	s4,24(sp)
   16c68:	c85a                	sw	s6,16(sp)
   16c6a:	d606                	sw	ra,44(sp)
   16c6c:	0086f793          	andi	a5,a3,8
   16c70:	8b32                	mv	s6,a2
   16c72:	8a2a                	mv	s4,a0
   16c74:	842e                	mv	s0,a1
   16c76:	c7ad                	beqz	a5,16ce0 <__sfvwrite_r+0x88>
   16c78:	499c                	lw	a5,16(a1)
   16c7a:	c3bd                	beqz	a5,16ce0 <__sfvwrite_r+0x88>
   16c7c:	d226                	sw	s1,36(sp)
   16c7e:	d04a                	sw	s2,32(sp)
   16c80:	ce4e                	sw	s3,28(sp)
   16c82:	ca56                	sw	s5,20(sp)
   16c84:	0026f793          	andi	a5,a3,2
   16c88:	000b2483          	lw	s1,0(s6)
   16c8c:	cbb5                	beqz	a5,16d00 <__sfvwrite_r+0xa8>
   16c8e:	505c                	lw	a5,36(s0)
   16c90:	4c4c                	lw	a1,28(s0)
   16c92:	80000ab7          	lui	s5,0x80000
   16c96:	4981                	li	s3,0
   16c98:	4901                	li	s2,0
   16c9a:	c00a8a93          	addi	s5,s5,-1024 # 7ffffc00 <__BSS_END__+0x7ffe0014>
   16c9e:	864e                	mv	a2,s3
   16ca0:	8552                	mv	a0,s4
   16ca2:	02090963          	beqz	s2,16cd4 <__sfvwrite_r+0x7c>
   16ca6:	86ca                	mv	a3,s2
   16ca8:	012af363          	bgeu	s5,s2,16cae <__sfvwrite_r+0x56>
   16cac:	86d6                	mv	a3,s5
   16cae:	9782                	jalr	a5
   16cb0:	2ca05c63          	blez	a0,16f88 <__sfvwrite_r+0x330>
   16cb4:	008b2783          	lw	a5,8(s6)
   16cb8:	99aa                	add	s3,s3,a0
   16cba:	40a90933          	sub	s2,s2,a0
   16cbe:	8f89                	sub	a5,a5,a0
   16cc0:	00fb2423          	sw	a5,8(s6)
   16cc4:	12078563          	beqz	a5,16dee <__sfvwrite_r+0x196>
   16cc8:	505c                	lw	a5,36(s0)
   16cca:	4c4c                	lw	a1,28(s0)
   16ccc:	864e                	mv	a2,s3
   16cce:	8552                	mv	a0,s4
   16cd0:	fc091be3          	bnez	s2,16ca6 <__sfvwrite_r+0x4e>
   16cd4:	0004a983          	lw	s3,0(s1)
   16cd8:	0044a903          	lw	s2,4(s1)
   16cdc:	04a1                	addi	s1,s1,8
   16cde:	b7c1                	j	16c9e <__sfvwrite_r+0x46>
   16ce0:	85a2                	mv	a1,s0
   16ce2:	8552                	mv	a0,s4
   16ce4:	21a5                	jal	1714c <__swsetup_r>
   16ce6:	12051f63          	bnez	a0,16e24 <__sfvwrite_r+0x1cc>
   16cea:	00c41683          	lh	a3,12(s0)
   16cee:	d226                	sw	s1,36(sp)
   16cf0:	d04a                	sw	s2,32(sp)
   16cf2:	ce4e                	sw	s3,28(sp)
   16cf4:	ca56                	sw	s5,20(sp)
   16cf6:	0026f793          	andi	a5,a3,2
   16cfa:	000b2483          	lw	s1,0(s6)
   16cfe:	fbc1                	bnez	a5,16c8e <__sfvwrite_r+0x36>
   16d00:	c65e                	sw	s7,12(sp)
   16d02:	c462                	sw	s8,8(sp)
   16d04:	0016f793          	andi	a5,a3,1
   16d08:	12079763          	bnez	a5,16e36 <__sfvwrite_r+0x1de>
   16d0c:	401c                	lw	a5,0(s0)
   16d0e:	4418                	lw	a4,8(s0)
   16d10:	80000ab7          	lui	s5,0x80000
   16d14:	c266                	sw	s9,4(sp)
   16d16:	4b81                	li	s7,0
   16d18:	4981                	li	s3,0
   16d1a:	1afd                	addi	s5,s5,-1 # 7fffffff <__BSS_END__+0x7ffe0413>
   16d1c:	853e                	mv	a0,a5
   16d1e:	8c3a                	mv	s8,a4
   16d20:	0a098e63          	beqz	s3,16ddc <__sfvwrite_r+0x184>
   16d24:	2006f613          	andi	a2,a3,512
   16d28:	1a060563          	beqz	a2,16ed2 <__sfvwrite_r+0x27a>
   16d2c:	8cba                	mv	s9,a4
   16d2e:	20e9e563          	bltu	s3,a4,16f38 <__sfvwrite_r+0x2e0>
   16d32:	4806f713          	andi	a4,a3,1152
   16d36:	c73d                	beqz	a4,16da4 <__sfvwrite_r+0x14c>
   16d38:	4850                	lw	a2,20(s0)
   16d3a:	480c                	lw	a1,16(s0)
   16d3c:	00161713          	slli	a4,a2,0x1
   16d40:	9732                	add	a4,a4,a2
   16d42:	40b78933          	sub	s2,a5,a1
   16d46:	01f75c13          	srli	s8,a4,0x1f
   16d4a:	9c3a                	add	s8,s8,a4
   16d4c:	00190793          	addi	a5,s2,1
   16d50:	401c5c13          	srai	s8,s8,0x1
   16d54:	97ce                	add	a5,a5,s3
   16d56:	8662                	mv	a2,s8
   16d58:	00fc7463          	bgeu	s8,a5,16d60 <__sfvwrite_r+0x108>
   16d5c:	8c3e                	mv	s8,a5
   16d5e:	863e                	mv	a2,a5
   16d60:	4006f693          	andi	a3,a3,1024
   16d64:	1e068963          	beqz	a3,16f56 <__sfvwrite_r+0x2fe>
   16d68:	85b2                	mv	a1,a2
   16d6a:	8552                	mv	a0,s4
   16d6c:	9fdfd0ef          	jal	14768 <_malloc_r>
   16d70:	8caa                	mv	s9,a0
   16d72:	20050e63          	beqz	a0,16f8e <__sfvwrite_r+0x336>
   16d76:	480c                	lw	a1,16(s0)
   16d78:	864a                	mv	a2,s2
   16d7a:	2701                	jal	1747a <memcpy>
   16d7c:	00c45783          	lhu	a5,12(s0)
   16d80:	b7f7f793          	andi	a5,a5,-1153
   16d84:	0807e793          	ori	a5,a5,128
   16d88:	00f41623          	sh	a5,12(s0)
   16d8c:	012c8533          	add	a0,s9,s2
   16d90:	412c07b3          	sub	a5,s8,s2
   16d94:	01942823          	sw	s9,16(s0)
   16d98:	01842a23          	sw	s8,20(s0)
   16d9c:	c008                	sw	a0,0(s0)
   16d9e:	8c4e                	mv	s8,s3
   16da0:	c41c                	sw	a5,8(s0)
   16da2:	8cce                	mv	s9,s3
   16da4:	8666                	mv	a2,s9
   16da6:	85de                	mv	a1,s7
   16da8:	2519                	jal	173ae <memmove>
   16daa:	4418                	lw	a4,8(s0)
   16dac:	401c                	lw	a5,0(s0)
   16dae:	894e                	mv	s2,s3
   16db0:	41870733          	sub	a4,a4,s8
   16db4:	97e6                	add	a5,a5,s9
   16db6:	c418                	sw	a4,8(s0)
   16db8:	c01c                	sw	a5,0(s0)
   16dba:	4981                	li	s3,0
   16dbc:	008b2783          	lw	a5,8(s6)
   16dc0:	9bca                	add	s7,s7,s2
   16dc2:	412787b3          	sub	a5,a5,s2
   16dc6:	00fb2423          	sw	a5,8(s6)
   16dca:	cf99                	beqz	a5,16de8 <__sfvwrite_r+0x190>
   16dcc:	401c                	lw	a5,0(s0)
   16dce:	4418                	lw	a4,8(s0)
   16dd0:	00c41683          	lh	a3,12(s0)
   16dd4:	853e                	mv	a0,a5
   16dd6:	8c3a                	mv	s8,a4
   16dd8:	f40996e3          	bnez	s3,16d24 <__sfvwrite_r+0xcc>
   16ddc:	0004ab83          	lw	s7,0(s1)
   16de0:	0044a983          	lw	s3,4(s1)
   16de4:	04a1                	addi	s1,s1,8
   16de6:	bf1d                	j	16d1c <__sfvwrite_r+0xc4>
   16de8:	4bb2                	lw	s7,12(sp)
   16dea:	4c22                	lw	s8,8(sp)
   16dec:	4c92                	lw	s9,4(sp)
   16dee:	50b2                	lw	ra,44(sp)
   16df0:	5422                	lw	s0,40(sp)
   16df2:	5492                	lw	s1,36(sp)
   16df4:	5902                	lw	s2,32(sp)
   16df6:	49f2                	lw	s3,28(sp)
   16df8:	4ad2                	lw	s5,20(sp)
   16dfa:	4a62                	lw	s4,24(sp)
   16dfc:	4b42                	lw	s6,16(sp)
   16dfe:	4501                	li	a0,0
   16e00:	6145                	addi	sp,sp,48
   16e02:	8082                	ret
   16e04:	85a2                	mv	a1,s0
   16e06:	8552                	mv	a0,s4
   16e08:	33d9                	jal	16bce <_fflush_r>
   16e0a:	c93d                	beqz	a0,16e80 <__sfvwrite_r+0x228>
   16e0c:	00c41783          	lh	a5,12(s0)
   16e10:	4bb2                	lw	s7,12(sp)
   16e12:	4c22                	lw	s8,8(sp)
   16e14:	5492                	lw	s1,36(sp)
   16e16:	5902                	lw	s2,32(sp)
   16e18:	49f2                	lw	s3,28(sp)
   16e1a:	4ad2                	lw	s5,20(sp)
   16e1c:	0407e793          	ori	a5,a5,64
   16e20:	00f41623          	sh	a5,12(s0)
   16e24:	50b2                	lw	ra,44(sp)
   16e26:	5422                	lw	s0,40(sp)
   16e28:	4a62                	lw	s4,24(sp)
   16e2a:	4b42                	lw	s6,16(sp)
   16e2c:	557d                	li	a0,-1
   16e2e:	6145                	addi	sp,sp,48
   16e30:	8082                	ret
   16e32:	4501                	li	a0,0
   16e34:	8082                	ret
   16e36:	4a81                	li	s5,0
   16e38:	4501                	li	a0,0
   16e3a:	4c01                	li	s8,0
   16e3c:	4981                	li	s3,0
   16e3e:	04098e63          	beqz	s3,16e9a <__sfvwrite_r+0x242>
   16e42:	c525                	beqz	a0,16eaa <__sfvwrite_r+0x252>
   16e44:	87d6                	mv	a5,s5
   16e46:	8bce                	mv	s7,s3
   16e48:	0137f363          	bgeu	a5,s3,16e4e <__sfvwrite_r+0x1f6>
   16e4c:	8bbe                	mv	s7,a5
   16e4e:	4008                	lw	a0,0(s0)
   16e50:	481c                	lw	a5,16(s0)
   16e52:	00842903          	lw	s2,8(s0)
   16e56:	4854                	lw	a3,20(s0)
   16e58:	00a7f563          	bgeu	a5,a0,16e62 <__sfvwrite_r+0x20a>
   16e5c:	9936                	add	s2,s2,a3
   16e5e:	05794f63          	blt	s2,s7,16ebc <__sfvwrite_r+0x264>
   16e62:	0cdbce63          	blt	s7,a3,16f3e <__sfvwrite_r+0x2e6>
   16e66:	505c                	lw	a5,36(s0)
   16e68:	4c4c                	lw	a1,28(s0)
   16e6a:	8662                	mv	a2,s8
   16e6c:	8552                	mv	a0,s4
   16e6e:	9782                	jalr	a5
   16e70:	892a                	mv	s2,a0
   16e72:	f8a05de3          	blez	a0,16e0c <__sfvwrite_r+0x1b4>
   16e76:	412a8ab3          	sub	s5,s5,s2
   16e7a:	4505                	li	a0,1
   16e7c:	f80a84e3          	beqz	s5,16e04 <__sfvwrite_r+0x1ac>
   16e80:	008b2783          	lw	a5,8(s6)
   16e84:	9c4a                	add	s8,s8,s2
   16e86:	412989b3          	sub	s3,s3,s2
   16e8a:	412787b3          	sub	a5,a5,s2
   16e8e:	00fb2423          	sw	a5,8(s6)
   16e92:	f7d5                	bnez	a5,16e3e <__sfvwrite_r+0x1e6>
   16e94:	4bb2                	lw	s7,12(sp)
   16e96:	4c22                	lw	s8,8(sp)
   16e98:	bf99                	j	16dee <__sfvwrite_r+0x196>
   16e9a:	0044a983          	lw	s3,4(s1)
   16e9e:	87a6                	mv	a5,s1
   16ea0:	04a1                	addi	s1,s1,8
   16ea2:	fe098ce3          	beqz	s3,16e9a <__sfvwrite_r+0x242>
   16ea6:	0007ac03          	lw	s8,0(a5)
   16eaa:	864e                	mv	a2,s3
   16eac:	45a9                	li	a1,10
   16eae:	8562                	mv	a0,s8
   16eb0:	2e9d                	jal	17226 <memchr>
   16eb2:	c579                	beqz	a0,16f80 <__sfvwrite_r+0x328>
   16eb4:	0505                	addi	a0,a0,1
   16eb6:	41850ab3          	sub	s5,a0,s8
   16eba:	b769                	j	16e44 <__sfvwrite_r+0x1ec>
   16ebc:	85e2                	mv	a1,s8
   16ebe:	864a                	mv	a2,s2
   16ec0:	21fd                	jal	173ae <memmove>
   16ec2:	401c                	lw	a5,0(s0)
   16ec4:	85a2                	mv	a1,s0
   16ec6:	8552                	mv	a0,s4
   16ec8:	97ca                	add	a5,a5,s2
   16eca:	c01c                	sw	a5,0(s0)
   16ecc:	3309                	jal	16bce <_fflush_r>
   16ece:	d545                	beqz	a0,16e76 <__sfvwrite_r+0x21e>
   16ed0:	bf35                	j	16e0c <__sfvwrite_r+0x1b4>
   16ed2:	4814                	lw	a3,16(s0)
   16ed4:	02f6e863          	bltu	a3,a5,16f04 <__sfvwrite_r+0x2ac>
   16ed8:	4850                	lw	a2,20(s0)
   16eda:	02c9e563          	bltu	s3,a2,16f04 <__sfvwrite_r+0x2ac>
   16ede:	87ce                	mv	a5,s3
   16ee0:	013af363          	bgeu	s5,s3,16ee6 <__sfvwrite_r+0x28e>
   16ee4:	87d6                	mv	a5,s5
   16ee6:	02c7e6b3          	rem	a3,a5,a2
   16eea:	5058                	lw	a4,36(s0)
   16eec:	4c4c                	lw	a1,28(s0)
   16eee:	865e                	mv	a2,s7
   16ef0:	8552                	mv	a0,s4
   16ef2:	40d786b3          	sub	a3,a5,a3
   16ef6:	9702                	jalr	a4
   16ef8:	892a                	mv	s2,a0
   16efa:	02a05963          	blez	a0,16f2c <__sfvwrite_r+0x2d4>
   16efe:	412989b3          	sub	s3,s3,s2
   16f02:	bd6d                	j	16dbc <__sfvwrite_r+0x164>
   16f04:	893a                	mv	s2,a4
   16f06:	00e9f363          	bgeu	s3,a4,16f0c <__sfvwrite_r+0x2b4>
   16f0a:	894e                	mv	s2,s3
   16f0c:	853e                	mv	a0,a5
   16f0e:	864a                	mv	a2,s2
   16f10:	85de                	mv	a1,s7
   16f12:	2971                	jal	173ae <memmove>
   16f14:	4418                	lw	a4,8(s0)
   16f16:	401c                	lw	a5,0(s0)
   16f18:	41270733          	sub	a4,a4,s2
   16f1c:	97ca                	add	a5,a5,s2
   16f1e:	c418                	sw	a4,8(s0)
   16f20:	c01c                	sw	a5,0(s0)
   16f22:	ff71                	bnez	a4,16efe <__sfvwrite_r+0x2a6>
   16f24:	85a2                	mv	a1,s0
   16f26:	8552                	mv	a0,s4
   16f28:	315d                	jal	16bce <_fflush_r>
   16f2a:	d971                	beqz	a0,16efe <__sfvwrite_r+0x2a6>
   16f2c:	00c41783          	lh	a5,12(s0)
   16f30:	4bb2                	lw	s7,12(sp)
   16f32:	4c22                	lw	s8,8(sp)
   16f34:	4c92                	lw	s9,4(sp)
   16f36:	bdf9                	j	16e14 <__sfvwrite_r+0x1bc>
   16f38:	8c4e                	mv	s8,s3
   16f3a:	8cce                	mv	s9,s3
   16f3c:	b5a5                	j	16da4 <__sfvwrite_r+0x14c>
   16f3e:	865e                	mv	a2,s7
   16f40:	85e2                	mv	a1,s8
   16f42:	21b5                	jal	173ae <memmove>
   16f44:	4418                	lw	a4,8(s0)
   16f46:	401c                	lw	a5,0(s0)
   16f48:	895e                	mv	s2,s7
   16f4a:	41770733          	sub	a4,a4,s7
   16f4e:	97de                	add	a5,a5,s7
   16f50:	c418                	sw	a4,8(s0)
   16f52:	c01c                	sw	a5,0(s0)
   16f54:	b70d                	j	16e76 <__sfvwrite_r+0x21e>
   16f56:	8552                	mv	a0,s4
   16f58:	113020ef          	jal	1986a <_realloc_r>
   16f5c:	8caa                	mv	s9,a0
   16f5e:	e20517e3          	bnez	a0,16d8c <__sfvwrite_r+0x134>
   16f62:	480c                	lw	a1,16(s0)
   16f64:	8552                	mv	a0,s4
   16f66:	ddafd0ef          	jal	14540 <_free_r>
   16f6a:	00c41783          	lh	a5,12(s0)
   16f6e:	4731                	li	a4,12
   16f70:	4bb2                	lw	s7,12(sp)
   16f72:	4c22                	lw	s8,8(sp)
   16f74:	4c92                	lw	s9,4(sp)
   16f76:	00ea2023          	sw	a4,0(s4)
   16f7a:	f7f7f793          	andi	a5,a5,-129
   16f7e:	bd59                	j	16e14 <__sfvwrite_r+0x1bc>
   16f80:	00198793          	addi	a5,s3,1
   16f84:	8abe                	mv	s5,a5
   16f86:	b5c1                	j	16e46 <__sfvwrite_r+0x1ee>
   16f88:	00c41783          	lh	a5,12(s0)
   16f8c:	b561                	j	16e14 <__sfvwrite_r+0x1bc>
   16f8e:	4731                	li	a4,12
   16f90:	00c41783          	lh	a5,12(s0)
   16f94:	4bb2                	lw	s7,12(sp)
   16f96:	4c22                	lw	s8,8(sp)
   16f98:	4c92                	lw	s9,4(sp)
   16f9a:	00ea2023          	sw	a4,0(s4)
   16f9e:	bd9d                	j	16e14 <__sfvwrite_r+0x1bc>

00016fa0 <_putc_r>:
   16fa0:	1101                	addi	sp,sp,-32
   16fa2:	cc22                	sw	s0,24(sp)
   16fa4:	ce06                	sw	ra,28(sp)
   16fa6:	842a                	mv	s0,a0
   16fa8:	c119                	beqz	a0,16fae <_putc_r+0xe>
   16faa:	595c                	lw	a5,52(a0)
   16fac:	cf9d                	beqz	a5,16fea <_putc_r+0x4a>
   16fae:	461c                	lw	a5,8(a2)
   16fb0:	17fd                	addi	a5,a5,-1
   16fb2:	c61c                	sw	a5,8(a2)
   16fb4:	0007da63          	bgez	a5,16fc8 <_putc_r+0x28>
   16fb8:	4e18                	lw	a4,24(a2)
   16fba:	02e7c363          	blt	a5,a4,16fe0 <_putc_r+0x40>
   16fbe:	0ff5f793          	zext.b	a5,a1
   16fc2:	4729                	li	a4,10
   16fc4:	00e78e63          	beq	a5,a4,16fe0 <_putc_r+0x40>
   16fc8:	421c                	lw	a5,0(a2)
   16fca:	0ff5f513          	zext.b	a0,a1
   16fce:	00178713          	addi	a4,a5,1
   16fd2:	c218                	sw	a4,0(a2)
   16fd4:	00b78023          	sb	a1,0(a5)
   16fd8:	40f2                	lw	ra,28(sp)
   16fda:	4462                	lw	s0,24(sp)
   16fdc:	6105                	addi	sp,sp,32
   16fde:	8082                	ret
   16fe0:	8522                	mv	a0,s0
   16fe2:	4462                	lw	s0,24(sp)
   16fe4:	40f2                	lw	ra,28(sp)
   16fe6:	6105                	addi	sp,sp,32
   16fe8:	a8a5                	j	17060 <__swbuf_r>
   16fea:	c632                	sw	a2,12(sp)
   16fec:	c42e                	sw	a1,8(sp)
   16fee:	e19fc0ef          	jal	13e06 <__sinit>
   16ff2:	4632                	lw	a2,12(sp)
   16ff4:	45a2                	lw	a1,8(sp)
   16ff6:	bf65                	j	16fae <_putc_r+0xe>

00016ff8 <putc>:
   16ff8:	1101                	addi	sp,sp,-32
   16ffa:	ca4a                	sw	s2,20(sp)
   16ffc:	f141a903          	lw	s2,-236(gp) # 1f8b4 <_impure_ptr>
   17000:	cc26                	sw	s1,24(sp)
   17002:	ce06                	sw	ra,28(sp)
   17004:	84aa                	mv	s1,a0
   17006:	00090563          	beqz	s2,17010 <putc+0x18>
   1700a:	03492783          	lw	a5,52(s2)
   1700e:	c3b9                	beqz	a5,17054 <putc+0x5c>
   17010:	459c                	lw	a5,8(a1)
   17012:	17fd                	addi	a5,a5,-1
   17014:	c59c                	sw	a5,8(a1)
   17016:	0007da63          	bgez	a5,1702a <putc+0x32>
   1701a:	4d98                	lw	a4,24(a1)
   1701c:	02e7c463          	blt	a5,a4,17044 <putc+0x4c>
   17020:	0ff4f793          	zext.b	a5,s1
   17024:	4729                	li	a4,10
   17026:	00e78f63          	beq	a5,a4,17044 <putc+0x4c>
   1702a:	419c                	lw	a5,0(a1)
   1702c:	0ff4f513          	zext.b	a0,s1
   17030:	00178713          	addi	a4,a5,1
   17034:	c198                	sw	a4,0(a1)
   17036:	00978023          	sb	s1,0(a5)
   1703a:	40f2                	lw	ra,28(sp)
   1703c:	44e2                	lw	s1,24(sp)
   1703e:	4952                	lw	s2,20(sp)
   17040:	6105                	addi	sp,sp,32
   17042:	8082                	ret
   17044:	40f2                	lw	ra,28(sp)
   17046:	862e                	mv	a2,a1
   17048:	854a                	mv	a0,s2
   1704a:	85a6                	mv	a1,s1
   1704c:	4952                	lw	s2,20(sp)
   1704e:	44e2                	lw	s1,24(sp)
   17050:	6105                	addi	sp,sp,32
   17052:	a039                	j	17060 <__swbuf_r>
   17054:	854a                	mv	a0,s2
   17056:	c62e                	sw	a1,12(sp)
   17058:	daffc0ef          	jal	13e06 <__sinit>
   1705c:	45b2                	lw	a1,12(sp)
   1705e:	bf4d                	j	17010 <putc+0x18>

00017060 <__swbuf_r>:
   17060:	1101                	addi	sp,sp,-32
   17062:	cc22                	sw	s0,24(sp)
   17064:	ca26                	sw	s1,20(sp)
   17066:	c84a                	sw	s2,16(sp)
   17068:	ce06                	sw	ra,28(sp)
   1706a:	892a                	mv	s2,a0
   1706c:	84ae                	mv	s1,a1
   1706e:	8432                	mv	s0,a2
   17070:	c119                	beqz	a0,17076 <__swbuf_r+0x16>
   17072:	595c                	lw	a5,52(a0)
   17074:	c3f9                	beqz	a5,1713a <__swbuf_r+0xda>
   17076:	4c18                	lw	a4,24(s0)
   17078:	00c41783          	lh	a5,12(s0)
   1707c:	c418                	sw	a4,8(s0)
   1707e:	0087f713          	andi	a4,a5,8
   17082:	c325                	beqz	a4,170e2 <__swbuf_r+0x82>
   17084:	4818                	lw	a4,16(s0)
   17086:	cf31                	beqz	a4,170e2 <__swbuf_r+0x82>
   17088:	c64e                	sw	s3,12(sp)
   1708a:	01279693          	slli	a3,a5,0x12
   1708e:	0ff4f993          	zext.b	s3,s1
   17092:	5078                	lw	a4,100(s0)
   17094:	0ff4f493          	zext.b	s1,s1
   17098:	0606d563          	bgez	a3,17102 <__swbuf_r+0xa2>
   1709c:	01271793          	slli	a5,a4,0x12
   170a0:	0807c263          	bltz	a5,17124 <__swbuf_r+0xc4>
   170a4:	4018                	lw	a4,0(s0)
   170a6:	481c                	lw	a5,16(s0)
   170a8:	4854                	lw	a3,20(s0)
   170aa:	40f707b3          	sub	a5,a4,a5
   170ae:	06d7de63          	bge	a5,a3,1712a <__swbuf_r+0xca>
   170b2:	0785                	addi	a5,a5,1
   170b4:	4414                	lw	a3,8(s0)
   170b6:	00170613          	addi	a2,a4,1
   170ba:	c010                	sw	a2,0(s0)
   170bc:	16fd                	addi	a3,a3,-1
   170be:	c414                	sw	a3,8(s0)
   170c0:	01370023          	sb	s3,0(a4)
   170c4:	4858                	lw	a4,20(s0)
   170c6:	04f70a63          	beq	a4,a5,1711a <__swbuf_r+0xba>
   170ca:	00c45783          	lhu	a5,12(s0)
   170ce:	8b85                	andi	a5,a5,1
   170d0:	e3b1                	bnez	a5,17114 <__swbuf_r+0xb4>
   170d2:	49b2                	lw	s3,12(sp)
   170d4:	40f2                	lw	ra,28(sp)
   170d6:	4462                	lw	s0,24(sp)
   170d8:	4942                	lw	s2,16(sp)
   170da:	8526                	mv	a0,s1
   170dc:	44d2                	lw	s1,20(sp)
   170de:	6105                	addi	sp,sp,32
   170e0:	8082                	ret
   170e2:	85a2                	mv	a1,s0
   170e4:	854a                	mv	a0,s2
   170e6:	209d                	jal	1714c <__swsetup_r>
   170e8:	ed1d                	bnez	a0,17126 <__swbuf_r+0xc6>
   170ea:	00c41783          	lh	a5,12(s0)
   170ee:	c64e                	sw	s3,12(sp)
   170f0:	5078                	lw	a4,100(s0)
   170f2:	01279693          	slli	a3,a5,0x12
   170f6:	0ff4f993          	zext.b	s3,s1
   170fa:	0ff4f493          	zext.b	s1,s1
   170fe:	f806cfe3          	bltz	a3,1709c <__swbuf_r+0x3c>
   17102:	76f9                	lui	a3,0xffffe
   17104:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffde413>
   17106:	6609                	lui	a2,0x2
   17108:	8fd1                	or	a5,a5,a2
   1710a:	8f75                	and	a4,a4,a3
   1710c:	00f41623          	sh	a5,12(s0)
   17110:	d078                	sw	a4,100(s0)
   17112:	b769                	j	1709c <__swbuf_r+0x3c>
   17114:	47a9                	li	a5,10
   17116:	faf49ee3          	bne	s1,a5,170d2 <__swbuf_r+0x72>
   1711a:	85a2                	mv	a1,s0
   1711c:	854a                	mv	a0,s2
   1711e:	ab1ff0ef          	jal	16bce <_fflush_r>
   17122:	d945                	beqz	a0,170d2 <__swbuf_r+0x72>
   17124:	49b2                	lw	s3,12(sp)
   17126:	54fd                	li	s1,-1
   17128:	b775                	j	170d4 <__swbuf_r+0x74>
   1712a:	85a2                	mv	a1,s0
   1712c:	854a                	mv	a0,s2
   1712e:	aa1ff0ef          	jal	16bce <_fflush_r>
   17132:	f96d                	bnez	a0,17124 <__swbuf_r+0xc4>
   17134:	4018                	lw	a4,0(s0)
   17136:	4785                	li	a5,1
   17138:	bfb5                	j	170b4 <__swbuf_r+0x54>
   1713a:	ccdfc0ef          	jal	13e06 <__sinit>
   1713e:	bf25                	j	17076 <__swbuf_r+0x16>

00017140 <__swbuf>:
   17140:	87aa                	mv	a5,a0
   17142:	f141a503          	lw	a0,-236(gp) # 1f8b4 <_impure_ptr>
   17146:	862e                	mv	a2,a1
   17148:	85be                	mv	a1,a5
   1714a:	bf19                	j	17060 <__swbuf_r>

0001714c <__swsetup_r>:
   1714c:	f141a783          	lw	a5,-236(gp) # 1f8b4 <_impure_ptr>
   17150:	1141                	addi	sp,sp,-16
   17152:	c422                	sw	s0,8(sp)
   17154:	c226                	sw	s1,4(sp)
   17156:	c606                	sw	ra,12(sp)
   17158:	84aa                	mv	s1,a0
   1715a:	842e                	mv	s0,a1
   1715c:	c399                	beqz	a5,17162 <__swsetup_r+0x16>
   1715e:	5bd8                	lw	a4,52(a5)
   17160:	c75d                	beqz	a4,1720e <__swsetup_r+0xc2>
   17162:	00c41783          	lh	a5,12(s0)
   17166:	0087f713          	andi	a4,a5,8
   1716a:	c721                	beqz	a4,171b2 <__swsetup_r+0x66>
   1716c:	4818                	lw	a4,16(s0)
   1716e:	cf31                	beqz	a4,171ca <__swsetup_r+0x7e>
   17170:	0017f693          	andi	a3,a5,1
   17174:	ce91                	beqz	a3,17190 <__swsetup_r+0x44>
   17176:	4854                	lw	a3,20(s0)
   17178:	00042423          	sw	zero,8(s0)
   1717c:	4501                	li	a0,0
   1717e:	40d006b3          	neg	a3,a3
   17182:	cc14                	sw	a3,24(s0)
   17184:	cf11                	beqz	a4,171a0 <__swsetup_r+0x54>
   17186:	40b2                	lw	ra,12(sp)
   17188:	4422                	lw	s0,8(sp)
   1718a:	4492                	lw	s1,4(sp)
   1718c:	0141                	addi	sp,sp,16
   1718e:	8082                	ret
   17190:	0027f693          	andi	a3,a5,2
   17194:	4601                	li	a2,0
   17196:	e291                	bnez	a3,1719a <__swsetup_r+0x4e>
   17198:	4850                	lw	a2,20(s0)
   1719a:	c410                	sw	a2,8(s0)
   1719c:	4501                	li	a0,0
   1719e:	f765                	bnez	a4,17186 <__swsetup_r+0x3a>
   171a0:	0807f713          	andi	a4,a5,128
   171a4:	d36d                	beqz	a4,17186 <__swsetup_r+0x3a>
   171a6:	0407e793          	ori	a5,a5,64
   171aa:	00f41623          	sh	a5,12(s0)
   171ae:	557d                	li	a0,-1
   171b0:	bfd9                	j	17186 <__swsetup_r+0x3a>
   171b2:	0107f713          	andi	a4,a5,16
   171b6:	c325                	beqz	a4,17216 <__swsetup_r+0xca>
   171b8:	0047f713          	andi	a4,a5,4
   171bc:	e70d                	bnez	a4,171e6 <__swsetup_r+0x9a>
   171be:	4818                	lw	a4,16(s0)
   171c0:	0087e793          	ori	a5,a5,8
   171c4:	00f41623          	sh	a5,12(s0)
   171c8:	f745                	bnez	a4,17170 <__swsetup_r+0x24>
   171ca:	2807f693          	andi	a3,a5,640
   171ce:	20000613          	li	a2,512
   171d2:	f8c68fe3          	beq	a3,a2,17170 <__swsetup_r+0x24>
   171d6:	85a2                	mv	a1,s0
   171d8:	8526                	mv	a0,s1
   171da:	26d020ef          	jal	19c46 <__smakebuf_r>
   171de:	00c41783          	lh	a5,12(s0)
   171e2:	4818                	lw	a4,16(s0)
   171e4:	b771                	j	17170 <__swsetup_r+0x24>
   171e6:	580c                	lw	a1,48(s0)
   171e8:	cd81                	beqz	a1,17200 <__swsetup_r+0xb4>
   171ea:	04040713          	addi	a4,s0,64
   171ee:	00e58763          	beq	a1,a4,171fc <__swsetup_r+0xb0>
   171f2:	8526                	mv	a0,s1
   171f4:	b4cfd0ef          	jal	14540 <_free_r>
   171f8:	00c41783          	lh	a5,12(s0)
   171fc:	02042823          	sw	zero,48(s0)
   17200:	4818                	lw	a4,16(s0)
   17202:	fdb7f793          	andi	a5,a5,-37
   17206:	00042223          	sw	zero,4(s0)
   1720a:	c018                	sw	a4,0(s0)
   1720c:	bf55                	j	171c0 <__swsetup_r+0x74>
   1720e:	853e                	mv	a0,a5
   17210:	bf7fc0ef          	jal	13e06 <__sinit>
   17214:	b7b9                	j	17162 <__swsetup_r+0x16>
   17216:	4725                	li	a4,9
   17218:	c098                	sw	a4,0(s1)
   1721a:	0407e793          	ori	a5,a5,64
   1721e:	00f41623          	sh	a5,12(s0)
   17222:	557d                	li	a0,-1
   17224:	b78d                	j	17186 <__swsetup_r+0x3a>

00017226 <memchr>:
   17226:	00357793          	andi	a5,a0,3
   1722a:	0ff5f693          	zext.b	a3,a1
   1722e:	c395                	beqz	a5,17252 <memchr+0x2c>
   17230:	fff60793          	addi	a5,a2,-1 # 1fff <exit-0xe095>
   17234:	c605                	beqz	a2,1725c <memchr+0x36>
   17236:	567d                	li	a2,-1
   17238:	a801                	j	17248 <memchr+0x22>
   1723a:	0505                	addi	a0,a0,1
   1723c:	00357713          	andi	a4,a0,3
   17240:	cb11                	beqz	a4,17254 <memchr+0x2e>
   17242:	17fd                	addi	a5,a5,-1
   17244:	00c78c63          	beq	a5,a2,1725c <memchr+0x36>
   17248:	00054703          	lbu	a4,0(a0)
   1724c:	fed717e3          	bne	a4,a3,1723a <memchr+0x14>
   17250:	8082                	ret
   17252:	87b2                	mv	a5,a2
   17254:	470d                	li	a4,3
   17256:	00f76563          	bltu	a4,a5,17260 <memchr+0x3a>
   1725a:	e3b9                	bnez	a5,172a0 <memchr+0x7a>
   1725c:	4501                	li	a0,0
   1725e:	8082                	ret
   17260:	0ff5f593          	zext.b	a1,a1
   17264:	00859713          	slli	a4,a1,0x8
   17268:	95ba                	add	a1,a1,a4
   1726a:	01059713          	slli	a4,a1,0x10
   1726e:	feff08b7          	lui	a7,0xfeff0
   17272:	80808837          	lui	a6,0x80808
   17276:	95ba                	add	a1,a1,a4
   17278:	eff88893          	addi	a7,a7,-257 # fefefeff <__BSS_END__+0xfefd0313>
   1727c:	08080813          	addi	a6,a6,128 # 80808080 <__BSS_END__+0x807e8494>
   17280:	430d                	li	t1,3
   17282:	a029                	j	1728c <memchr+0x66>
   17284:	17f1                	addi	a5,a5,-4
   17286:	0511                	addi	a0,a0,4
   17288:	fcf379e3          	bgeu	t1,a5,1725a <memchr+0x34>
   1728c:	4118                	lw	a4,0(a0)
   1728e:	8f2d                	xor	a4,a4,a1
   17290:	01170633          	add	a2,a4,a7
   17294:	fff74713          	not	a4,a4
   17298:	8f71                	and	a4,a4,a2
   1729a:	01077733          	and	a4,a4,a6
   1729e:	d37d                	beqz	a4,17284 <memchr+0x5e>
   172a0:	97aa                	add	a5,a5,a0
   172a2:	a021                	j	172aa <memchr+0x84>
   172a4:	0505                	addi	a0,a0,1
   172a6:	faa78be3          	beq	a5,a0,1725c <memchr+0x36>
   172aa:	00054703          	lbu	a4,0(a0)
   172ae:	fed71be3          	bne	a4,a3,172a4 <memchr+0x7e>
   172b2:	8082                	ret

000172b4 <strncpy>:
   172b4:	00a5e7b3          	or	a5,a1,a0
   172b8:	8b8d                	andi	a5,a5,3
   172ba:	e781                	bnez	a5,172c2 <strncpy+0xe>
   172bc:	478d                	li	a5,3
   172be:	02c7eb63          	bltu	a5,a2,172f4 <strncpy+0x40>
   172c2:	872a                	mv	a4,a0
   172c4:	a811                	j	172d8 <strncpy+0x24>
   172c6:	fff5c683          	lbu	a3,-1(a1)
   172ca:	fff60813          	addi	a6,a2,-1
   172ce:	fed78fa3          	sb	a3,-1(a5)
   172d2:	ca81                	beqz	a3,172e2 <strncpy+0x2e>
   172d4:	873e                	mv	a4,a5
   172d6:	8642                	mv	a2,a6
   172d8:	0585                	addi	a1,a1,1
   172da:	00170793          	addi	a5,a4,1
   172de:	f665                	bnez	a2,172c6 <strncpy+0x12>
   172e0:	8082                	ret
   172e2:	9732                	add	a4,a4,a2
   172e4:	04080463          	beqz	a6,1732c <strncpy+0x78>
   172e8:	0785                	addi	a5,a5,1
   172ea:	fe078fa3          	sb	zero,-1(a5)
   172ee:	fee79de3          	bne	a5,a4,172e8 <strncpy+0x34>
   172f2:	8082                	ret
   172f4:	feff0337          	lui	t1,0xfeff0
   172f8:	808088b7          	lui	a7,0x80808
   172fc:	872a                	mv	a4,a0
   172fe:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd0313>
   17302:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807e8494>
   17306:	4e0d                	li	t3,3
   17308:	a039                	j	17316 <strncpy+0x62>
   1730a:	c314                	sw	a3,0(a4)
   1730c:	1671                	addi	a2,a2,-4
   1730e:	0711                	addi	a4,a4,4
   17310:	0591                	addi	a1,a1,4
   17312:	fcce73e3          	bgeu	t3,a2,172d8 <strncpy+0x24>
   17316:	4194                	lw	a3,0(a1)
   17318:	006687b3          	add	a5,a3,t1
   1731c:	fff6c813          	not	a6,a3
   17320:	0107f7b3          	and	a5,a5,a6
   17324:	0117f7b3          	and	a5,a5,a7
   17328:	d3ed                	beqz	a5,1730a <strncpy+0x56>
   1732a:	b77d                	j	172d8 <strncpy+0x24>
   1732c:	8082                	ret

0001732e <__localeconv_l>:
   1732e:	0f050513          	addi	a0,a0,240
   17332:	8082                	ret

00017334 <_localeconv_r>:
   17334:	e2818513          	addi	a0,gp,-472 # 1f7c8 <__global_locale+0xf0>
   17338:	8082                	ret

0001733a <localeconv>:
   1733a:	e2818513          	addi	a0,gp,-472 # 1f7c8 <__global_locale+0xf0>
   1733e:	8082                	ret

00017340 <_sbrk_r>:
   17340:	1141                	addi	sp,sp,-16
   17342:	c422                	sw	s0,8(sp)
   17344:	c226                	sw	s1,4(sp)
   17346:	842a                	mv	s0,a0
   17348:	852e                	mv	a0,a1
   1734a:	c606                	sw	ra,12(sp)
   1734c:	f201a223          	sw	zero,-220(gp) # 1f8c4 <errno>
   17350:	7f7030ef          	jal	1b346 <_sbrk>
   17354:	57fd                	li	a5,-1
   17356:	00f50763          	beq	a0,a5,17364 <_sbrk_r+0x24>
   1735a:	40b2                	lw	ra,12(sp)
   1735c:	4422                	lw	s0,8(sp)
   1735e:	4492                	lw	s1,4(sp)
   17360:	0141                	addi	sp,sp,16
   17362:	8082                	ret
   17364:	f241a783          	lw	a5,-220(gp) # 1f8c4 <errno>
   17368:	dbed                	beqz	a5,1735a <_sbrk_r+0x1a>
   1736a:	40b2                	lw	ra,12(sp)
   1736c:	c01c                	sw	a5,0(s0)
   1736e:	4422                	lw	s0,8(sp)
   17370:	4492                	lw	s1,4(sp)
   17372:	0141                	addi	sp,sp,16
   17374:	8082                	ret

00017376 <__libc_fini_array>:
   17376:	1141                	addi	sp,sp,-16
   17378:	c422                	sw	s0,8(sp)
   1737a:	0001f7b7          	lui	a5,0x1f
   1737e:	0001f437          	lui	s0,0x1f
   17382:	19c78793          	addi	a5,a5,412 # 1f19c <__do_global_dtors_aux_fini_array_entry>
   17386:	1a040413          	addi	s0,s0,416 # 1f1a0 <__sglue>
   1738a:	8c1d                	sub	s0,s0,a5
   1738c:	c226                	sw	s1,4(sp)
   1738e:	c606                	sw	ra,12(sp)
   17390:	40245493          	srai	s1,s0,0x2
   17394:	c881                	beqz	s1,173a4 <__libc_fini_array+0x2e>
   17396:	1471                	addi	s0,s0,-4
   17398:	943e                	add	s0,s0,a5
   1739a:	401c                	lw	a5,0(s0)
   1739c:	14fd                	addi	s1,s1,-1
   1739e:	1471                	addi	s0,s0,-4
   173a0:	9782                	jalr	a5
   173a2:	fce5                	bnez	s1,1739a <__libc_fini_array+0x24>
   173a4:	40b2                	lw	ra,12(sp)
   173a6:	4422                	lw	s0,8(sp)
   173a8:	4492                	lw	s1,4(sp)
   173aa:	0141                	addi	sp,sp,16
   173ac:	8082                	ret

000173ae <memmove>:
   173ae:	02a5f263          	bgeu	a1,a0,173d2 <memmove+0x24>
   173b2:	00c58733          	add	a4,a1,a2
   173b6:	00e57e63          	bgeu	a0,a4,173d2 <memmove+0x24>
   173ba:	00c507b3          	add	a5,a0,a2
   173be:	ca1d                	beqz	a2,173f4 <memmove+0x46>
   173c0:	fff74683          	lbu	a3,-1(a4)
   173c4:	17fd                	addi	a5,a5,-1
   173c6:	177d                	addi	a4,a4,-1
   173c8:	00d78023          	sb	a3,0(a5)
   173cc:	fef51ae3          	bne	a0,a5,173c0 <memmove+0x12>
   173d0:	8082                	ret
   173d2:	47bd                	li	a5,15
   173d4:	02c7e163          	bltu	a5,a2,173f6 <memmove+0x48>
   173d8:	87aa                	mv	a5,a0
   173da:	fff60693          	addi	a3,a2,-1
   173de:	ca59                	beqz	a2,17474 <memmove+0xc6>
   173e0:	0685                	addi	a3,a3,1
   173e2:	96be                	add	a3,a3,a5
   173e4:	0005c703          	lbu	a4,0(a1)
   173e8:	0785                	addi	a5,a5,1
   173ea:	0585                	addi	a1,a1,1
   173ec:	fee78fa3          	sb	a4,-1(a5)
   173f0:	fed79ae3          	bne	a5,a3,173e4 <memmove+0x36>
   173f4:	8082                	ret
   173f6:	00b567b3          	or	a5,a0,a1
   173fa:	8b8d                	andi	a5,a5,3
   173fc:	eba5                	bnez	a5,1746c <memmove+0xbe>
   173fe:	ff060893          	addi	a7,a2,-16
   17402:	ff08f893          	andi	a7,a7,-16
   17406:	08c1                	addi	a7,a7,16
   17408:	011506b3          	add	a3,a0,a7
   1740c:	872e                	mv	a4,a1
   1740e:	87aa                	mv	a5,a0
   17410:	00072803          	lw	a6,0(a4)
   17414:	0741                	addi	a4,a4,16
   17416:	07c1                	addi	a5,a5,16
   17418:	ff07a823          	sw	a6,-16(a5)
   1741c:	ff472803          	lw	a6,-12(a4)
   17420:	ff07aa23          	sw	a6,-12(a5)
   17424:	ff872803          	lw	a6,-8(a4)
   17428:	ff07ac23          	sw	a6,-8(a5)
   1742c:	ffc72803          	lw	a6,-4(a4)
   17430:	ff07ae23          	sw	a6,-4(a5)
   17434:	fcd79ee3          	bne	a5,a3,17410 <memmove+0x62>
   17438:	00c67813          	andi	a6,a2,12
   1743c:	95c6                	add	a1,a1,a7
   1743e:	00f67713          	andi	a4,a2,15
   17442:	02080a63          	beqz	a6,17476 <memmove+0xc8>
   17446:	ffc70813          	addi	a6,a4,-4
   1744a:	ffc87813          	andi	a6,a6,-4
   1744e:	0811                	addi	a6,a6,4
   17450:	010687b3          	add	a5,a3,a6
   17454:	872e                	mv	a4,a1
   17456:	00072883          	lw	a7,0(a4)
   1745a:	0691                	addi	a3,a3,4
   1745c:	0711                	addi	a4,a4,4
   1745e:	ff16ae23          	sw	a7,-4(a3)
   17462:	fef69ae3          	bne	a3,a5,17456 <memmove+0xa8>
   17466:	8a0d                	andi	a2,a2,3
   17468:	95c2                	add	a1,a1,a6
   1746a:	bf85                	j	173da <memmove+0x2c>
   1746c:	fff60693          	addi	a3,a2,-1
   17470:	87aa                	mv	a5,a0
   17472:	b7bd                	j	173e0 <memmove+0x32>
   17474:	8082                	ret
   17476:	863a                	mv	a2,a4
   17478:	b78d                	j	173da <memmove+0x2c>

0001747a <memcpy>:
   1747a:	00a5c7b3          	xor	a5,a1,a0
   1747e:	8b8d                	andi	a5,a5,3
   17480:	00c508b3          	add	a7,a0,a2
   17484:	e7b1                	bnez	a5,174d0 <memcpy+0x56>
   17486:	478d                	li	a5,3
   17488:	04c7f463          	bgeu	a5,a2,174d0 <memcpy+0x56>
   1748c:	00357793          	andi	a5,a0,3
   17490:	872a                	mv	a4,a0
   17492:	ebb9                	bnez	a5,174e8 <memcpy+0x6e>
   17494:	ffc8f613          	andi	a2,a7,-4
   17498:	40e606b3          	sub	a3,a2,a4
   1749c:	02000793          	li	a5,32
   174a0:	06d7c863          	blt	a5,a3,17510 <memcpy+0x96>
   174a4:	86ae                	mv	a3,a1
   174a6:	87ba                	mv	a5,a4
   174a8:	02c77163          	bgeu	a4,a2,174ca <memcpy+0x50>
   174ac:	0006a803          	lw	a6,0(a3)
   174b0:	0791                	addi	a5,a5,4
   174b2:	0691                	addi	a3,a3,4
   174b4:	ff07ae23          	sw	a6,-4(a5)
   174b8:	fec7eae3          	bltu	a5,a2,174ac <memcpy+0x32>
   174bc:	fff60793          	addi	a5,a2,-1
   174c0:	8f99                	sub	a5,a5,a4
   174c2:	9bf1                	andi	a5,a5,-4
   174c4:	0791                	addi	a5,a5,4
   174c6:	973e                	add	a4,a4,a5
   174c8:	95be                	add	a1,a1,a5
   174ca:	01176663          	bltu	a4,a7,174d6 <memcpy+0x5c>
   174ce:	8082                	ret
   174d0:	872a                	mv	a4,a0
   174d2:	03157e63          	bgeu	a0,a7,1750e <memcpy+0x94>
   174d6:	0005c783          	lbu	a5,0(a1)
   174da:	0705                	addi	a4,a4,1
   174dc:	0585                	addi	a1,a1,1
   174de:	fef70fa3          	sb	a5,-1(a4)
   174e2:	fee89ae3          	bne	a7,a4,174d6 <memcpy+0x5c>
   174e6:	8082                	ret
   174e8:	0005c683          	lbu	a3,0(a1)
   174ec:	0705                	addi	a4,a4,1
   174ee:	00377793          	andi	a5,a4,3
   174f2:	fed70fa3          	sb	a3,-1(a4)
   174f6:	0585                	addi	a1,a1,1
   174f8:	dfd1                	beqz	a5,17494 <memcpy+0x1a>
   174fa:	0005c683          	lbu	a3,0(a1)
   174fe:	0705                	addi	a4,a4,1
   17500:	00377793          	andi	a5,a4,3
   17504:	fed70fa3          	sb	a3,-1(a4)
   17508:	0585                	addi	a1,a1,1
   1750a:	fff9                	bnez	a5,174e8 <memcpy+0x6e>
   1750c:	b761                	j	17494 <memcpy+0x1a>
   1750e:	8082                	ret
   17510:	1141                	addi	sp,sp,-16
   17512:	c622                	sw	s0,12(sp)
   17514:	02000413          	li	s0,32
   17518:	0005a383          	lw	t2,0(a1)
   1751c:	0045a283          	lw	t0,4(a1)
   17520:	0085af83          	lw	t6,8(a1)
   17524:	00c5af03          	lw	t5,12(a1)
   17528:	0105ae83          	lw	t4,16(a1)
   1752c:	0145ae03          	lw	t3,20(a1)
   17530:	0185a303          	lw	t1,24(a1)
   17534:	01c5a803          	lw	a6,28(a1)
   17538:	5194                	lw	a3,32(a1)
   1753a:	02470713          	addi	a4,a4,36
   1753e:	40e607b3          	sub	a5,a2,a4
   17542:	fc772e23          	sw	t2,-36(a4)
   17546:	fe572023          	sw	t0,-32(a4)
   1754a:	fff72223          	sw	t6,-28(a4)
   1754e:	ffe72423          	sw	t5,-24(a4)
   17552:	ffd72623          	sw	t4,-20(a4)
   17556:	ffc72823          	sw	t3,-16(a4)
   1755a:	fe672a23          	sw	t1,-12(a4)
   1755e:	ff072c23          	sw	a6,-8(a4)
   17562:	fed72e23          	sw	a3,-4(a4)
   17566:	02458593          	addi	a1,a1,36
   1756a:	faf447e3          	blt	s0,a5,17518 <memcpy+0x9e>
   1756e:	86ae                	mv	a3,a1
   17570:	87ba                	mv	a5,a4
   17572:	02c77163          	bgeu	a4,a2,17594 <memcpy+0x11a>
   17576:	0006a803          	lw	a6,0(a3)
   1757a:	0791                	addi	a5,a5,4
   1757c:	0691                	addi	a3,a3,4
   1757e:	ff07ae23          	sw	a6,-4(a5)
   17582:	fec7eae3          	bltu	a5,a2,17576 <memcpy+0xfc>
   17586:	fff60793          	addi	a5,a2,-1
   1758a:	8f99                	sub	a5,a5,a4
   1758c:	9bf1                	andi	a5,a5,-4
   1758e:	0791                	addi	a5,a5,4
   17590:	973e                	add	a4,a4,a5
   17592:	95be                	add	a1,a1,a5
   17594:	01176563          	bltu	a4,a7,1759e <memcpy+0x124>
   17598:	4432                	lw	s0,12(sp)
   1759a:	0141                	addi	sp,sp,16
   1759c:	8082                	ret
   1759e:	0005c783          	lbu	a5,0(a1)
   175a2:	0705                	addi	a4,a4,1
   175a4:	0585                	addi	a1,a1,1
   175a6:	fef70fa3          	sb	a5,-1(a4)
   175aa:	fee887e3          	beq	a7,a4,17598 <memcpy+0x11e>
   175ae:	0005c783          	lbu	a5,0(a1)
   175b2:	0705                	addi	a4,a4,1
   175b4:	0585                	addi	a1,a1,1
   175b6:	fef70fa3          	sb	a5,-1(a4)
   175ba:	fee892e3          	bne	a7,a4,1759e <memcpy+0x124>
   175be:	bfe9                	j	17598 <memcpy+0x11e>

000175c0 <strlen>:
   175c0:	00357793          	andi	a5,a0,3
   175c4:	872a                	mv	a4,a0
   175c6:	ef9d                	bnez	a5,17604 <strlen+0x44>
   175c8:	7f7f86b7          	lui	a3,0x7f7f8
   175cc:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7d8393>
   175d0:	55fd                	li	a1,-1
   175d2:	4310                	lw	a2,0(a4)
   175d4:	0711                	addi	a4,a4,4
   175d6:	00d677b3          	and	a5,a2,a3
   175da:	97b6                	add	a5,a5,a3
   175dc:	8fd1                	or	a5,a5,a2
   175de:	8fd5                	or	a5,a5,a3
   175e0:	feb789e3          	beq	a5,a1,175d2 <strlen+0x12>
   175e4:	ffc74683          	lbu	a3,-4(a4)
   175e8:	40a707b3          	sub	a5,a4,a0
   175ec:	ca8d                	beqz	a3,1761e <strlen+0x5e>
   175ee:	ffd74683          	lbu	a3,-3(a4)
   175f2:	c29d                	beqz	a3,17618 <strlen+0x58>
   175f4:	ffe74503          	lbu	a0,-2(a4)
   175f8:	00a03533          	snez	a0,a0
   175fc:	953e                	add	a0,a0,a5
   175fe:	1579                	addi	a0,a0,-2
   17600:	8082                	ret
   17602:	d2f9                	beqz	a3,175c8 <strlen+0x8>
   17604:	00074783          	lbu	a5,0(a4)
   17608:	0705                	addi	a4,a4,1
   1760a:	00377693          	andi	a3,a4,3
   1760e:	fbf5                	bnez	a5,17602 <strlen+0x42>
   17610:	8f09                	sub	a4,a4,a0
   17612:	fff70513          	addi	a0,a4,-1
   17616:	8082                	ret
   17618:	ffd78513          	addi	a0,a5,-3
   1761c:	8082                	ret
   1761e:	ffc78513          	addi	a0,a5,-4
   17622:	8082                	ret

00017624 <frexpl>:
   17624:	7159                	addi	sp,sp,-112
   17626:	d0ca                	sw	s2,96(sp)
   17628:	00c5a903          	lw	s2,12(a1)
   1762c:	ccd2                	sw	s4,88(sp)
   1762e:	cad6                	sw	s5,84(sp)
   17630:	c8da                	sw	s6,80(sp)
   17632:	0045aa83          	lw	s5,4(a1)
   17636:	0005ab03          	lw	s6,0(a1)
   1763a:	0085aa03          	lw	s4,8(a1)
   1763e:	cece                	sw	s3,92(sp)
   17640:	69a1                	lui	s3,0x8
   17642:	d4a2                	sw	s0,104(sp)
   17644:	d2a6                	sw	s1,100(sp)
   17646:	d686                	sw	ra,108(sp)
   17648:	01095493          	srli	s1,s2,0x10
   1764c:	19fd                	addi	s3,s3,-1 # 7fff <exit-0x8095>
   1764e:	d85a                	sw	s6,48(sp)
   17650:	da56                	sw	s5,52(sp)
   17652:	dc52                	sw	s4,56(sp)
   17654:	de4a                	sw	s2,60(sp)
   17656:	0134f4b3          	and	s1,s1,s3
   1765a:	00062023          	sw	zero,0(a2)
   1765e:	842a                	mv	s0,a0
   17660:	05348763          	beq	s1,s3,176ae <frexpl+0x8a>
   17664:	080c                	addi	a1,sp,16
   17666:	1008                	addi	a0,sp,32
   17668:	c6de                	sw	s7,76(sp)
   1766a:	d05a                	sw	s6,32(sp)
   1766c:	8bb2                	mv	s7,a2
   1766e:	d256                	sw	s5,36(sp)
   17670:	d452                	sw	s4,40(sp)
   17672:	d64a                	sw	s2,44(sp)
   17674:	c802                	sw	zero,16(sp)
   17676:	ca02                	sw	zero,20(sp)
   17678:	cc02                	sw	zero,24(sp)
   1767a:	ce02                	sw	zero,28(sp)
   1767c:	5cd030ef          	jal	1b448 <__eqtf2>
   17680:	c941                	beqz	a0,17710 <frexpl+0xec>
   17682:	4681                	li	a3,0
   17684:	c8a1                	beqz	s1,176d4 <frexpl+0xb0>
   17686:	7771                	lui	a4,0xffffc
   17688:	0709                	addi	a4,a4,2 # ffffc002 <__BSS_END__+0xfffdc416>
   1768a:	5972                	lw	s2,60(sp)
   1768c:	94ba                	add	s1,s1,a4
   1768e:	800107b7          	lui	a5,0x80010
   17692:	94b6                	add	s1,s1,a3
   17694:	17fd                	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7fff0413>
   17696:	009ba023          	sw	s1,0(s7)
   1769a:	5b42                	lw	s6,48(sp)
   1769c:	5ad2                	lw	s5,52(sp)
   1769e:	5a62                	lw	s4,56(sp)
   176a0:	4bb6                	lw	s7,76(sp)
   176a2:	00f97933          	and	s2,s2,a5
   176a6:	3ffe07b7          	lui	a5,0x3ffe0
   176aa:	00f96933          	or	s2,s2,a5
   176ae:	01642023          	sw	s6,0(s0)
   176b2:	01542223          	sw	s5,4(s0)
   176b6:	01442423          	sw	s4,8(s0)
   176ba:	01242623          	sw	s2,12(s0)
   176be:	50b6                	lw	ra,108(sp)
   176c0:	8522                	mv	a0,s0
   176c2:	5426                	lw	s0,104(sp)
   176c4:	5496                	lw	s1,100(sp)
   176c6:	5906                	lw	s2,96(sp)
   176c8:	49f6                	lw	s3,92(sp)
   176ca:	4a66                	lw	s4,88(sp)
   176cc:	4ad6                	lw	s5,84(sp)
   176ce:	4b46                	lw	s6,80(sp)
   176d0:	6165                	addi	sp,sp,112
   176d2:	8082                	ret
   176d4:	407107b7          	lui	a5,0x40710
   176d8:	860a                	mv	a2,sp
   176da:	080c                	addi	a1,sp,16
   176dc:	1008                	addi	a0,sp,32
   176de:	c63e                	sw	a5,12(sp)
   176e0:	c85a                	sw	s6,16(sp)
   176e2:	ca56                	sw	s5,20(sp)
   176e4:	cc52                	sw	s4,24(sp)
   176e6:	ce4a                	sw	s2,28(sp)
   176e8:	c002                	sw	zero,0(sp)
   176ea:	c202                	sw	zero,4(sp)
   176ec:	c402                	sw	zero,8(sp)
   176ee:	01e040ef          	jal	1b70c <__multf3>
   176f2:	5702                	lw	a4,32(sp)
   176f4:	57b2                	lw	a5,44(sp)
   176f6:	f8e00693          	li	a3,-114
   176fa:	d83a                	sw	a4,48(sp)
   176fc:	5712                	lw	a4,36(sp)
   176fe:	0107d493          	srli	s1,a5,0x10
   17702:	de3e                	sw	a5,60(sp)
   17704:	da3a                	sw	a4,52(sp)
   17706:	5722                	lw	a4,40(sp)
   17708:	0134f4b3          	and	s1,s1,s3
   1770c:	dc3a                	sw	a4,56(sp)
   1770e:	bfa5                	j	17686 <frexpl+0x62>
   17710:	4bb6                	lw	s7,76(sp)
   17712:	bf71                	j	176ae <frexpl+0x8a>

00017714 <__register_exitproc>:
   17714:	f281a783          	lw	a5,-216(gp) # 1f8c8 <__atexit>
   17718:	c3a1                	beqz	a5,17758 <__register_exitproc+0x44>
   1771a:	43d8                	lw	a4,4(a5)
   1771c:	487d                	li	a6,31
   1771e:	04e84f63          	blt	a6,a4,1777c <__register_exitproc+0x68>
   17722:	00271813          	slli	a6,a4,0x2
   17726:	c11d                	beqz	a0,1774c <__register_exitproc+0x38>
   17728:	01078333          	add	t1,a5,a6
   1772c:	08c32423          	sw	a2,136(t1)
   17730:	1887a883          	lw	a7,392(a5) # 40710188 <__BSS_END__+0x406f059c>
   17734:	4605                	li	a2,1
   17736:	00e61633          	sll	a2,a2,a4
   1773a:	00c8e8b3          	or	a7,a7,a2
   1773e:	1917a423          	sw	a7,392(a5)
   17742:	10d32423          	sw	a3,264(t1)
   17746:	4689                	li	a3,2
   17748:	00d50f63          	beq	a0,a3,17766 <__register_exitproc+0x52>
   1774c:	0705                	addi	a4,a4,1
   1774e:	c3d8                	sw	a4,4(a5)
   17750:	97c2                	add	a5,a5,a6
   17752:	c78c                	sw	a1,8(a5)
   17754:	4501                	li	a0,0
   17756:	8082                	ret
   17758:	0bc18813          	addi	a6,gp,188 # 1fa5c <__atexit0>
   1775c:	f301a423          	sw	a6,-216(gp) # 1f8c8 <__atexit>
   17760:	0bc18793          	addi	a5,gp,188 # 1fa5c <__atexit0>
   17764:	bf5d                	j	1771a <__register_exitproc+0x6>
   17766:	18c7a683          	lw	a3,396(a5)
   1776a:	0705                	addi	a4,a4,1
   1776c:	c3d8                	sw	a4,4(a5)
   1776e:	8ed1                	or	a3,a3,a2
   17770:	18d7a623          	sw	a3,396(a5)
   17774:	97c2                	add	a5,a5,a6
   17776:	c78c                	sw	a1,8(a5)
   17778:	4501                	li	a0,0
   1777a:	8082                	ret
   1777c:	557d                	li	a0,-1
   1777e:	8082                	ret

00017780 <_ldtoa_r>:
   17780:	68f9                	lui	a7,0x1e
   17782:	cc888893          	addi	a7,a7,-824 # 1dcc8 <blanks.1+0x10>
   17786:	0008af83          	lw	t6,0(a7)
   1778a:	0048af03          	lw	t5,4(a7)
   1778e:	0088ae83          	lw	t4,8(a7)
   17792:	00c8ae03          	lw	t3,12(a7)
   17796:	0108a303          	lw	t1,16(a7)
   1779a:	03852883          	lw	a7,56(a0)
   1779e:	7171                	addi	sp,sp,-176
   177a0:	d14a                	sw	s2,160(sp)
   177a2:	cf4e                	sw	s3,156(sp)
   177a4:	cd52                	sw	s4,152(sp)
   177a6:	c95a                	sw	s6,144(sp)
   177a8:	c75e                	sw	s7,140(sp)
   177aa:	c562                	sw	s8,136(sp)
   177ac:	c366                	sw	s9,132(sp)
   177ae:	c16a                	sw	s10,128(sp)
   177b0:	d706                	sw	ra,172(sp)
   177b2:	d522                	sw	s0,168(sp)
   177b4:	d326                	sw	s1,164(sp)
   177b6:	cb56                	sw	s5,148(sp)
   177b8:	deee                	sw	s11,124(sp)
   177ba:	cefe                	sw	t6,92(sp)
   177bc:	d0fa                	sw	t5,96(sp)
   177be:	d2f6                	sw	t4,100(sp)
   177c0:	d4f2                	sw	t3,104(sp)
   177c2:	d69a                	sw	t1,108(sp)
   177c4:	cc32                	sw	a2,24(sp)
   177c6:	ce36                	sw	a3,28(sp)
   177c8:	0005aa03          	lw	s4,0(a1)
   177cc:	0045a983          	lw	s3,4(a1)
   177d0:	0085a903          	lw	s2,8(a1)
   177d4:	00c5ac03          	lw	s8,12(a1)
   177d8:	8b2a                	mv	s6,a0
   177da:	8bba                	mv	s7,a4
   177dc:	8cbe                	mv	s9,a5
   177de:	8d42                	mv	s10,a6
   177e0:	00088763          	beqz	a7,177ee <_ldtoa_r+0x6e>
   177e4:	85c6                	mv	a1,a7
   177e6:	246010ef          	jal	18a2c <__freedtoa>
   177ea:	020b2c23          	sw	zero,56(s6)
   177ee:	5626                	lw	a2,104(sp)
   177f0:	01fc5693          	srli	a3,s8,0x1f
   177f4:	001c1a93          	slli	s5,s8,0x1
   177f8:	40165713          	srai	a4,a2,0x1
   177fc:	74f1                	lui	s1,0xffffc
   177fe:	001c1413          	slli	s0,s8,0x1
   17802:	8f75                	and	a4,a4,a3
   17804:	011ada93          	srli	s5,s5,0x11
   17808:	f9148493          	addi	s1,s1,-111 # ffffbf91 <__BSS_END__+0xfffdc3a5>
   1780c:	010c1d93          	slli	s11,s8,0x10
   17810:	00dca023          	sw	a3,0(s9)
   17814:	8005                	srli	s0,s0,0x1
   17816:	8f31                	xor	a4,a4,a2
   17818:	010ddd93          	srli	s11,s11,0x10
   1781c:	009a87b3          	add	a5,s5,s1
   17820:	100c                	addi	a1,sp,32
   17822:	1808                	addi	a0,sp,48
   17824:	d852                	sw	s4,48(sp)
   17826:	da4e                	sw	s3,52(sp)
   17828:	dc4a                	sw	s2,56(sp)
   1782a:	de22                	sw	s0,60(sp)
   1782c:	d052                	sw	s4,32(sp)
   1782e:	d24e                	sw	s3,36(sp)
   17830:	d44a                	sw	s2,40(sp)
   17832:	d622                	sw	s0,44(sp)
   17834:	d4ba                	sw	a4,104(sp)
   17836:	ca3e                	sw	a5,20(sp)
   17838:	c6d2                	sw	s4,76(sp)
   1783a:	c8ce                	sw	s3,80(sp)
   1783c:	caca                	sw	s2,84(sp)
   1783e:	ccee                	sw	s11,88(sp)
   17840:	44b050ef          	jal	1d48a <__unordtf2>
   17844:	e979                	bnez	a0,1791a <_ldtoa_r+0x19a>
   17846:	7fff0cb7          	lui	s9,0x7fff0
   1784a:	54fd                	li	s1,-1
   1784c:	1cfd                	addi	s9,s9,-1 # 7ffeffff <__BSS_END__+0x7ffd0413>
   1784e:	100c                	addi	a1,sp,32
   17850:	1808                	addi	a0,sp,48
   17852:	d852                	sw	s4,48(sp)
   17854:	da4e                	sw	s3,52(sp)
   17856:	dc4a                	sw	s2,56(sp)
   17858:	de22                	sw	s0,60(sp)
   1785a:	d026                	sw	s1,32(sp)
   1785c:	d226                	sw	s1,36(sp)
   1785e:	d426                	sw	s1,40(sp)
   17860:	d666                	sw	s9,44(sp)
   17862:	429050ef          	jal	1d48a <__unordtf2>
   17866:	ed21                	bnez	a0,178be <_ldtoa_r+0x13e>
   17868:	100c                	addi	a1,sp,32
   1786a:	1808                	addi	a0,sp,48
   1786c:	5b5030ef          	jal	1b620 <__letf2>
   17870:	04a05763          	blez	a0,178be <_ldtoa_r+0x13e>
   17874:	478d                	li	a5,3
   17876:	c4be                	sw	a5,72(sp)
   17878:	47e2                	lw	a5,24(sp)
   1787a:	4872                	lw	a6,28(sp)
   1787c:	4652                	lw	a2,20(sp)
   1787e:	00b8                	addi	a4,sp,72
   17880:	c06a                	sw	s10,0(sp)
   17882:	88de                	mv	a7,s7
   17884:	00f4                	addi	a3,sp,76
   17886:	08ec                	addi	a1,sp,92
   17888:	855a                	mv	a0,s6
   1788a:	2235                	jal	179b6 <__gdtoa>
   1788c:	000ba703          	lw	a4,0(s7)
   17890:	77e1                	lui	a5,0xffff8
   17892:	00f71763          	bne	a4,a5,178a0 <_ldtoa_r+0x120>
   17896:	800007b7          	lui	a5,0x80000
   1789a:	17fd                	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe0413>
   1789c:	00fba023          	sw	a5,0(s7)
   178a0:	50ba                	lw	ra,172(sp)
   178a2:	542a                	lw	s0,168(sp)
   178a4:	549a                	lw	s1,164(sp)
   178a6:	590a                	lw	s2,160(sp)
   178a8:	49fa                	lw	s3,156(sp)
   178aa:	4a6a                	lw	s4,152(sp)
   178ac:	4ada                	lw	s5,148(sp)
   178ae:	4b4a                	lw	s6,144(sp)
   178b0:	4bba                	lw	s7,140(sp)
   178b2:	4c2a                	lw	s8,136(sp)
   178b4:	4c9a                	lw	s9,132(sp)
   178b6:	4d0a                	lw	s10,128(sp)
   178b8:	5df6                	lw	s11,124(sp)
   178ba:	614d                	addi	sp,sp,176
   178bc:	8082                	ret
   178be:	67c1                	lui	a5,0x10
   178c0:	100c                	addi	a1,sp,32
   178c2:	1808                	addi	a0,sp,48
   178c4:	d852                	sw	s4,48(sp)
   178c6:	da4e                	sw	s3,52(sp)
   178c8:	dc4a                	sw	s2,56(sp)
   178ca:	de22                	sw	s0,60(sp)
   178cc:	d002                	sw	zero,32(sp)
   178ce:	d202                	sw	zero,36(sp)
   178d0:	d402                	sw	zero,40(sp)
   178d2:	d63e                	sw	a5,44(sp)
   178d4:	461030ef          	jal	1b534 <__getf2>
   178d8:	00054963          	bltz	a0,178ea <_ldtoa_r+0x16a>
   178dc:	67c1                	lui	a5,0x10
   178de:	00fdedb3          	or	s11,s11,a5
   178e2:	4785                	li	a5,1
   178e4:	c4be                	sw	a5,72(sp)
   178e6:	ccee                	sw	s11,88(sp)
   178e8:	bf41                	j	17878 <_ldtoa_r+0xf8>
   178ea:	100c                	addi	a1,sp,32
   178ec:	1808                	addi	a0,sp,48
   178ee:	d852                	sw	s4,48(sp)
   178f0:	da4e                	sw	s3,52(sp)
   178f2:	dc4a                	sw	s2,56(sp)
   178f4:	de62                	sw	s8,60(sp)
   178f6:	d002                	sw	zero,32(sp)
   178f8:	d202                	sw	zero,36(sp)
   178fa:	d402                	sw	zero,40(sp)
   178fc:	d602                	sw	zero,44(sp)
   178fe:	34b030ef          	jal	1b448 <__eqtf2>
   17902:	e119                	bnez	a0,17908 <_ldtoa_r+0x188>
   17904:	c482                	sw	zero,72(sp)
   17906:	bf8d                	j	17878 <_ldtoa_r+0xf8>
   17908:	74f1                	lui	s1,0xffffc
   1790a:	4789                	li	a5,2
   1790c:	f9248493          	addi	s1,s1,-110 # ffffbf92 <__BSS_END__+0xfffdc3a6>
   17910:	c4be                	sw	a5,72(sp)
   17912:	009a87b3          	add	a5,s5,s1
   17916:	ca3e                	sw	a5,20(sp)
   17918:	b785                	j	17878 <_ldtoa_r+0xf8>
   1791a:	4791                	li	a5,4
   1791c:	c4be                	sw	a5,72(sp)
   1791e:	bfa9                	j	17878 <_ldtoa_r+0xf8>

00017920 <_ldcheck>:
   17920:	7139                	addi	sp,sp,-64
   17922:	da26                	sw	s1,52(sp)
   17924:	4544                	lw	s1,12(a0)
   17926:	d64e                	sw	s3,44(sp)
   17928:	d452                	sw	s4,40(sp)
   1792a:	00852983          	lw	s3,8(a0)
   1792e:	00452a03          	lw	s4,4(a0)
   17932:	d256                	sw	s5,36(sp)
   17934:	00052a83          	lw	s5,0(a0)
   17938:	0486                	slli	s1,s1,0x1
   1793a:	8085                	srli	s1,s1,0x1
   1793c:	858a                	mv	a1,sp
   1793e:	0808                	addi	a0,sp,16
   17940:	de06                	sw	ra,60(sp)
   17942:	c856                	sw	s5,16(sp)
   17944:	ca52                	sw	s4,20(sp)
   17946:	cc4e                	sw	s3,24(sp)
   17948:	ce26                	sw	s1,28(sp)
   1794a:	c056                	sw	s5,0(sp)
   1794c:	c252                	sw	s4,4(sp)
   1794e:	c44e                	sw	s3,8(sp)
   17950:	c626                	sw	s1,12(sp)
   17952:	339050ef          	jal	1d48a <__unordtf2>
   17956:	e921                	bnez	a0,179a6 <_ldcheck+0x86>
   17958:	d05a                	sw	s6,32(sp)
   1795a:	7fff0b37          	lui	s6,0x7fff0
   1795e:	d84a                	sw	s2,48(sp)
   17960:	1b7d                	addi	s6,s6,-1 # 7ffeffff <__BSS_END__+0x7ffd0413>
   17962:	597d                	li	s2,-1
   17964:	858a                	mv	a1,sp
   17966:	0808                	addi	a0,sp,16
   17968:	dc22                	sw	s0,56(sp)
   1796a:	c04a                	sw	s2,0(sp)
   1796c:	c24a                	sw	s2,4(sp)
   1796e:	c44a                	sw	s2,8(sp)
   17970:	c65a                	sw	s6,12(sp)
   17972:	4405                	li	s0,1
   17974:	317050ef          	jal	1d48a <__unordtf2>
   17978:	c105                	beqz	a0,17998 <_ldcheck+0x78>
   1797a:	50f2                	lw	ra,60(sp)
   1797c:	00144513          	xori	a0,s0,1
   17980:	5462                	lw	s0,56(sp)
   17982:	0ff57513          	zext.b	a0,a0
   17986:	5942                	lw	s2,48(sp)
   17988:	5b02                	lw	s6,32(sp)
   1798a:	54d2                	lw	s1,52(sp)
   1798c:	59b2                	lw	s3,44(sp)
   1798e:	5a22                	lw	s4,40(sp)
   17990:	5a92                	lw	s5,36(sp)
   17992:	0506                	slli	a0,a0,0x1
   17994:	6121                	addi	sp,sp,64
   17996:	8082                	ret
   17998:	858a                	mv	a1,sp
   1799a:	0808                	addi	a0,sp,16
   1799c:	485030ef          	jal	1b620 <__letf2>
   179a0:	00152413          	slti	s0,a0,1
   179a4:	bfd9                	j	1797a <_ldcheck+0x5a>
   179a6:	50f2                	lw	ra,60(sp)
   179a8:	54d2                	lw	s1,52(sp)
   179aa:	59b2                	lw	s3,44(sp)
   179ac:	5a22                	lw	s4,40(sp)
   179ae:	5a92                	lw	s5,36(sp)
   179b0:	4505                	li	a0,1
   179b2:	6121                	addi	sp,sp,64
   179b4:	8082                	ret

000179b6 <__gdtoa>:
   179b6:	7171                	addi	sp,sp,-176
   179b8:	cb56                	sw	s5,148(sp)
   179ba:	00072a83          	lw	s5,0(a4)
   179be:	d326                	sw	s1,164(sp)
   179c0:	c75e                	sw	s7,140(sp)
   179c2:	fcfafe13          	andi	t3,s5,-49
   179c6:	d706                	sw	ra,172(sp)
   179c8:	01c72023          	sw	t3,0(a4)
   179cc:	8bba                	mv	s7,a4
   179ce:	574a                	lw	a4,176(sp)
   179d0:	00fafe13          	andi	t3,s5,15
   179d4:	4e8d                	li	t4,3
   179d6:	c63a                	sw	a4,12(sp)
   179d8:	c832                	sw	a2,16(sp)
   179da:	d442                	sw	a6,40(sp)
   179dc:	84c6                	mv	s1,a7
   179de:	4fde0263          	beq	t3,t4,17ec2 <__gdtoa+0x50c>
   179e2:	c95a                	sw	s6,144(sp)
   179e4:	00cafb13          	andi	s6,s5,12
   179e8:	460b1b63          	bnez	s6,17e5e <__gdtoa+0x4a8>
   179ec:	d522                	sw	s0,168(sp)
   179ee:	842a                	mv	s0,a0
   179f0:	4a0e0563          	beqz	t3,17e9a <__gdtoa+0x4e4>
   179f4:	c16a                	sw	s10,128(sp)
   179f6:	0005ad03          	lw	s10,0(a1)
   179fa:	d14a                	sw	s2,160(sp)
   179fc:	cf4e                	sw	s3,156(sp)
   179fe:	cd52                	sw	s4,152(sp)
   17a00:	c366                	sw	s9,132(sp)
   17a02:	02000613          	li	a2,32
   17a06:	8a2e                	mv	s4,a1
   17a08:	893e                	mv	s2,a5
   17a0a:	89b6                	mv	s3,a3
   17a0c:	4581                	li	a1,0
   17a0e:	02000793          	li	a5,32
   17a12:	01a65663          	bge	a2,s10,17a1e <__gdtoa+0x68>
   17a16:	0786                	slli	a5,a5,0x1
   17a18:	0585                	addi	a1,a1,1
   17a1a:	ffa7cee3          	blt	a5,s10,17a16 <__gdtoa+0x60>
   17a1e:	8522                	mv	a0,s0
   17a20:	24e010ef          	jal	18c6e <_Balloc>
   17a24:	8caa                	mv	s9,a0
   17a26:	68050163          	beqz	a0,180a8 <__gdtoa+0x6f2>
   17a2a:	fffd0893          	addi	a7,s10,-1
   17a2e:	4058d893          	srai	a7,a7,0x5
   17a32:	00289513          	slli	a0,a7,0x2
   17a36:	c562                	sw	s8,136(sp)
   17a38:	deee                	sw	s11,124(sp)
   17a3a:	954e                	add	a0,a0,s3
   17a3c:	014c8613          	addi	a2,s9,20
   17a40:	87ce                	mv	a5,s3
   17a42:	4398                	lw	a4,0(a5)
   17a44:	0791                	addi	a5,a5,4 # 10004 <exit-0x90>
   17a46:	0611                	addi	a2,a2,4
   17a48:	fee62e23          	sw	a4,-4(a2)
   17a4c:	fef57be3          	bgeu	a0,a5,17a42 <__gdtoa+0x8c>
   17a50:	0505                	addi	a0,a0,1
   17a52:	00198793          	addi	a5,s3,1
   17a56:	4611                	li	a2,4
   17a58:	00f56563          	bltu	a0,a5,17a62 <__gdtoa+0xac>
   17a5c:	088a                	slli	a7,a7,0x2
   17a5e:	00488613          	addi	a2,a7,4
   17a62:	40265d93          	srai	s11,a2,0x2
   17a66:	9666                	add	a2,a2,s9
   17a68:	a021                	j	17a70 <__gdtoa+0xba>
   17a6a:	1671                	addi	a2,a2,-4
   17a6c:	480d8f63          	beqz	s11,17f0a <__gdtoa+0x554>
   17a70:	4a1c                	lw	a5,16(a2)
   17a72:	8c6e                	mv	s8,s11
   17a74:	1dfd                	addi	s11,s11,-1
   17a76:	dbf5                	beqz	a5,17a6a <__gdtoa+0xb4>
   17a78:	004d8793          	addi	a5,s11,4
   17a7c:	078a                	slli	a5,a5,0x2
   17a7e:	97e6                	add	a5,a5,s9
   17a80:	43c8                	lw	a0,4(a5)
   17a82:	018ca823          	sw	s8,16(s9)
   17a86:	0c16                	slli	s8,s8,0x5
   17a88:	408010ef          	jal	18e90 <__hi0bits>
   17a8c:	40ac0db3          	sub	s11,s8,a0
   17a90:	8566                	mv	a0,s9
   17a92:	1a2010ef          	jal	18c34 <__trailz_D2A>
   17a96:	d6aa                	sw	a0,108(sp)
   17a98:	4c42                	lw	s8,16(sp)
   17a9a:	48051c63          	bnez	a0,17f32 <__gdtoa+0x57c>
   17a9e:	010ca603          	lw	a2,16(s9)
   17aa2:	3e060163          	beqz	a2,17e84 <__gdtoa+0x4ce>
   17aa6:	10ec                	addi	a1,sp,108
   17aa8:	8566                	mv	a0,s9
   17aaa:	2d9010ef          	jal	19582 <__b2d>
   17aae:	00c59613          	slli	a2,a1,0xc
   17ab2:	8231                	srli	a2,a2,0xc
   17ab4:	3ff005b7          	lui	a1,0x3ff00
   17ab8:	8f2a                	mv	t5,a0
   17aba:	8e4d                	or	a2,a2,a1
   17abc:	cc7a                	sw	t5,24(sp)
   17abe:	ce32                	sw	a2,28(sp)
   17ac0:	ea81b707          	fld	fa4,-344(gp) # 1f848 <__SDATA_BEGIN__>
   17ac4:	27e2                	fld	fa5,24(sp)
   17ac6:	eb01b687          	fld	fa3,-336(gp) # 1f850 <__SDATA_BEGIN__+0x8>
   17aca:	0ae7f753          	fsub.d	fa4,fa5,fa4
   17ace:	eb81b787          	fld	fa5,-328(gp) # 1f858 <__SDATA_BEGIN__+0x10>
   17ad2:	01bc08b3          	add	a7,s8,s11
   17ad6:	fff88593          	addi	a1,a7,-1
   17ada:	852e                	mv	a0,a1
   17adc:	7ad77743          	fmadd.d	fa4,fa4,fa3,fa5
   17ae0:	d20587d3          	fcvt.d.w	fa5,a1
   17ae4:	ec01b687          	fld	fa3,-320(gp) # 1f860 <__SDATA_BEGIN__+0x18>
   17ae8:	72d7f7c3          	fmadd.d	fa5,fa5,fa3,fa4
   17aec:	0005d563          	bgez	a1,17af6 <__gdtoa+0x140>
   17af0:	4505                	li	a0,1
   17af2:	41150533          	sub	a0,a0,a7
   17af6:	bcb50513          	addi	a0,a0,-1077
   17afa:	00a05863          	blez	a0,17b0a <__gdtoa+0x154>
   17afe:	d20506d3          	fcvt.d.w	fa3,a0
   17b02:	ec81b707          	fld	fa4,-312(gp) # 1f868 <__SDATA_BEGIN__+0x20>
   17b06:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   17b0a:	d2000753          	fcvt.d.w	fa4,zero
   17b0e:	c2079853          	fcvt.w.d	a6,fa5,rtz
   17b12:	a2e79553          	flt.d	a0,fa5,fa4
   17b16:	c909                	beqz	a0,17b28 <__gdtoa+0x172>
   17b18:	d2080753          	fcvt.d.w	fa4,a6
   17b1c:	a2f72553          	feq.d	a0,fa4,fa5
   17b20:	00153513          	seqz	a0,a0
   17b24:	40a80833          	sub	a6,a6,a0
   17b28:	01459e93          	slli	t4,a1,0x14
   17b2c:	40bd8533          	sub	a0,s11,a1
   17b30:	45d9                	li	a1,22
   17b32:	00ce8fb3          	add	t6,t4,a2
   17b36:	fff50e93          	addi	t4,a0,-1
   17b3a:	3d05eb63          	bltu	a1,a6,17f10 <__gdtoa+0x55a>
   17b3e:	65f9                	lui	a1,0x1e
   17b40:	00381613          	slli	a2,a6,0x3
   17b44:	d3858593          	addi	a1,a1,-712 # 1dd38 <__mprec_tens>
   17b48:	962e                	add	a2,a2,a1
   17b4a:	cc7a                	sw	t5,24(sp)
   17b4c:	ce7e                	sw	t6,28(sp)
   17b4e:	221c                	fld	fa5,0(a2)
   17b50:	2762                	fld	fa4,24(sp)
   17b52:	a2f71653          	flt.d	a2,fa4,fa5
   17b56:	58061163          	bnez	a2,180d8 <__gdtoa+0x722>
   17b5a:	ca82                	sw	zero,84(sp)
   17b5c:	cc02                	sw	zero,24(sp)
   17b5e:	00a04763          	bgtz	a0,17b6c <__gdtoa+0x1b6>
   17b62:	4605                	li	a2,1
   17b64:	40a607b3          	sub	a5,a2,a0
   17b68:	cc3e                	sw	a5,24(sp)
   17b6a:	4e81                	li	t4,0
   17b6c:	9ec2                	add	t4,t4,a6
   17b6e:	da42                	sw	a6,52(sp)
   17b70:	d802                	sw	zero,48(sp)
   17b72:	4625                	li	a2,9
   17b74:	3d266a63          	bltu	a2,s2,17f48 <__gdtoa+0x592>
   17b78:	4615                	li	a2,5
   17b7a:	57264263          	blt	a2,s2,180de <__gdtoa+0x728>
   17b7e:	3fd88893          	addi	a7,a7,1021
   17b82:	7f88b793          	sltiu	a5,a7,2040
   17b86:	4591                	li	a1,4
   17b88:	ccbe                	sw	a5,88(sp)
   17b8a:	18b909e3          	beq	s2,a1,1851c <__gdtoa+0xb66>
   17b8e:	18c903e3          	beq	s2,a2,18514 <__gdtoa+0xb5e>
   17b92:	4609                	li	a2,2
   17b94:	18c907e3          	beq	s2,a2,18522 <__gdtoa+0xb6c>
   17b98:	460d                	li	a2,3
   17b9a:	c882                	sw	zero,80(sp)
   17b9c:	3ac91c63          	bne	s2,a2,17f54 <__gdtoa+0x59e>
   17ba0:	57d2                	lw	a5,52(sp)
   17ba2:	5722                	lw	a4,40(sp)
   17ba4:	97ba                	add	a5,a5,a4
   17ba6:	cebe                	sw	a5,92(sp)
   17ba8:	0785                	addi	a5,a5,1
   17baa:	d63e                	sw	a5,44(sp)
   17bac:	00f05ce3          	blez	a5,183c4 <__gdtoa+0xa0e>
   17bb0:	863e                	mv	a2,a5
   17bb2:	85be                	mv	a1,a5
   17bb4:	8522                	mv	a0,s0
   17bb6:	c4fa                	sw	t5,72(sp)
   17bb8:	c6fe                	sw	t6,76(sp)
   17bba:	c0f6                	sw	t4,64(sp)
   17bbc:	dc42                	sw	a6,56(sp)
   17bbe:	d6b2                	sw	a2,108(sp)
   17bc0:	5bd000ef          	jal	1897c <__rv_alloc_D2A>
   17bc4:	88aa                	mv	a7,a0
   17bc6:	32050863          	beqz	a0,17ef6 <__gdtoa+0x540>
   17bca:	00ca2783          	lw	a5,12(s4)
   17bce:	5862                	lw	a6,56(sp)
   17bd0:	4e86                	lw	t4,64(sp)
   17bd2:	17fd                	addi	a5,a5,-1
   17bd4:	d03e                	sw	a5,32(sp)
   17bd6:	4f26                	lw	t5,72(sp)
   17bd8:	4fb6                	lw	t6,76(sp)
   17bda:	3a078363          	beqz	a5,17f80 <__gdtoa+0x5ca>
   17bde:	4e07ca63          	bltz	a5,180d2 <__gdtoa+0x71c>
   17be2:	100af313          	andi	t1,s5,256
   17be6:	38031863          	bnez	t1,17f76 <__gdtoa+0x5c0>
   17bea:	000c4663          	bltz	s8,17bf6 <__gdtoa+0x240>
   17bee:	57d2                	lw	a5,52(sp)
   17bf0:	4639                	li	a2,14
   17bf2:	50f65363          	bge	a2,a5,180f8 <__gdtoa+0x742>
   17bf6:	47c6                	lw	a5,80(sp)
   17bf8:	4c078863          	beqz	a5,180c8 <__gdtoa+0x712>
   17bfc:	41bd06b3          	sub	a3,s10,s11
   17c00:	004a2603          	lw	a2,4(s4)
   17c04:	00168593          	addi	a1,a3,1
   17c08:	d6ae                	sw	a1,108(sp)
   17c0a:	40dc06b3          	sub	a3,s8,a3
   17c0e:	7ec6dd63          	bge	a3,a2,18408 <__gdtoa+0xa52>
   17c12:	ffd90693          	addi	a3,s2,-3
   17c16:	9af5                	andi	a3,a3,-3
   17c18:	72068863          	beqz	a3,18348 <__gdtoa+0x992>
   17c1c:	40cc06b3          	sub	a3,s8,a2
   17c20:	0685                	addi	a3,a3,1
   17c22:	d6b6                	sw	a3,108(sp)
   17c24:	4605                	li	a2,1
   17c26:	01265863          	bge	a2,s2,17c36 <__gdtoa+0x280>
   17c2a:	57b2                	lw	a5,44(sp)
   17c2c:	00f05563          	blez	a5,17c36 <__gdtoa+0x280>
   17c30:	57b2                	lw	a5,44(sp)
   17c32:	40d7c1e3          	blt	a5,a3,18834 <__gdtoa+0xe7e>
   17c36:	47e2                	lw	a5,24(sp)
   17c38:	5d42                	lw	s10,48(sp)
   17c3a:	9eb6                	add	t4,t4,a3
   17c3c:	dc3e                	sw	a5,56(sp)
   17c3e:	97b6                	add	a5,a5,a3
   17c40:	cc3e                	sw	a5,24(sp)
   17c42:	4585                	li	a1,1
   17c44:	8522                	mv	a0,s0
   17c46:	ccc6                	sw	a7,88(sp)
   17c48:	c4f6                	sw	t4,72(sp)
   17c4a:	c0c2                	sw	a6,64(sp)
   17c4c:	322010ef          	jal	18f6e <__i2b>
   17c50:	4806                	lw	a6,64(sp)
   17c52:	4ea6                	lw	t4,72(sp)
   17c54:	48e6                	lw	a7,88(sp)
   17c56:	8c2a                	mv	s8,a0
   17c58:	28050f63          	beqz	a0,17ef6 <__gdtoa+0x540>
   17c5c:	57e2                	lw	a5,56(sp)
   17c5e:	c385                	beqz	a5,17c7e <__gdtoa+0x2c8>
   17c60:	01d05f63          	blez	t4,17c7e <__gdtoa+0x2c8>
   17c64:	86be                	mv	a3,a5
   17c66:	00fed363          	bge	t4,a5,17c6c <__gdtoa+0x2b6>
   17c6a:	86f6                	mv	a3,t4
   17c6c:	47e2                	lw	a5,24(sp)
   17c6e:	d6b6                	sw	a3,108(sp)
   17c70:	40de8eb3          	sub	t4,t4,a3
   17c74:	8f95                	sub	a5,a5,a3
   17c76:	cc3e                	sw	a5,24(sp)
   17c78:	57e2                	lw	a5,56(sp)
   17c7a:	8f95                	sub	a5,a5,a3
   17c7c:	dc3e                	sw	a5,56(sp)
   17c7e:	57c2                	lw	a5,48(sp)
   17c80:	c39d                	beqz	a5,17ca6 <__gdtoa+0x2f0>
   17c82:	47c6                	lw	a5,80(sp)
   17c84:	c399                	beqz	a5,17c8a <__gdtoa+0x2d4>
   17c86:	7e0d1863          	bnez	s10,18476 <__gdtoa+0xac0>
   17c8a:	5642                	lw	a2,48(sp)
   17c8c:	85e6                	mv	a1,s9
   17c8e:	8522                	mv	a0,s0
   17c90:	ccc6                	sw	a7,88(sp)
   17c92:	c4f6                	sw	t4,72(sp)
   17c94:	c0c2                	sw	a6,64(sp)
   17c96:	4d6010ef          	jal	1916c <__pow5mult>
   17c9a:	4806                	lw	a6,64(sp)
   17c9c:	4ea6                	lw	t4,72(sp)
   17c9e:	48e6                	lw	a7,88(sp)
   17ca0:	8caa                	mv	s9,a0
   17ca2:	24050a63          	beqz	a0,17ef6 <__gdtoa+0x540>
   17ca6:	4585                	li	a1,1
   17ca8:	8522                	mv	a0,s0
   17caa:	c4c6                	sw	a7,72(sp)
   17cac:	c0f6                	sw	t4,64(sp)
   17cae:	d842                	sw	a6,48(sp)
   17cb0:	2be010ef          	jal	18f6e <__i2b>
   17cb4:	8d2a                	mv	s10,a0
   17cb6:	24050063          	beqz	a0,17ef6 <__gdtoa+0x540>
   17cba:	5842                	lw	a6,48(sp)
   17cbc:	4e86                	lw	t4,64(sp)
   17cbe:	48a6                	lw	a7,72(sp)
   17cc0:	70081663          	bnez	a6,183cc <__gdtoa+0xa16>
   17cc4:	4685                	li	a3,1
   17cc6:	5126d263          	bge	a3,s2,181ca <__gdtoa+0x814>
   17cca:	4a7d                	li	s4,31
   17ccc:	47e2                	lw	a5,24(sp)
   17cce:	41da0a33          	sub	s4,s4,t4
   17cd2:	1a71                	addi	s4,s4,-4
   17cd4:	01fa7a13          	andi	s4,s4,31
   17cd8:	00fa0633          	add	a2,s4,a5
   17cdc:	d6d2                	sw	s4,108(sp)
   17cde:	87d2                	mv	a5,s4
   17ce0:	58c04d63          	bgtz	a2,1827a <__gdtoa+0x8c4>
   17ce4:	00fe8633          	add	a2,t4,a5
   17ce8:	1ec04c63          	bgtz	a2,17ee0 <__gdtoa+0x52a>
   17cec:	47d6                	lw	a5,84(sp)
   17cee:	5a079563          	bnez	a5,18298 <__gdtoa+0x8e2>
   17cf2:	57b2                	lw	a5,44(sp)
   17cf4:	66f05a63          	blez	a5,18368 <__gdtoa+0x9b2>
   17cf8:	47c6                	lw	a5,80(sp)
   17cfa:	5c078d63          	beqz	a5,182d4 <__gdtoa+0x91e>
   17cfe:	57e2                	lw	a5,56(sp)
   17d00:	00fa0633          	add	a2,s4,a5
   17d04:	7ec04763          	bgtz	a2,184f2 <__gdtoa+0xb3c>
   17d08:	8a62                	mv	s4,s8
   17d0a:	02081ce3          	bnez	a6,18542 <__gdtoa+0xb8c>
   17d0e:	5b32                	lw	s6,44(sp)
   17d10:	8dc6                	mv	s11,a7
   17d12:	4685                	li	a3,1
   17d14:	d446                	sw	a7,40(sp)
   17d16:	cc5e                	sw	s7,24(sp)
   17d18:	d626                	sw	s1,44(sp)
   17d1a:	a885                	j	17d8a <__gdtoa+0x3d4>
   17d1c:	8522                	mv	a0,s0
   17d1e:	7bd000ef          	jal	18cda <_Bfree>
   17d22:	100ac3e3          	bltz	s5,18628 <__gdtoa+0xc72>
   17d26:	01596ab3          	or	s5,s2,s5
   17d2a:	000a9763          	bnez	s5,17d38 <__gdtoa+0x382>
   17d2e:	0009a783          	lw	a5,0(s3)
   17d32:	8b85                	andi	a5,a5,1
   17d34:	0e078ae3          	beqz	a5,18628 <__gdtoa+0xc72>
   17d38:	5782                	lw	a5,32(sp)
   17d3a:	4709                	li	a4,2
   17d3c:	26e798e3          	bne	a5,a4,187ac <__gdtoa+0xdf6>
   17d40:	017d8023          	sb	s7,0(s11)
   17d44:	57b6                	lw	a5,108(sp)
   17d46:	0d85                	addi	s11,s11,1
   17d48:	1efb0fe3          	beq	s6,a5,18746 <__gdtoa+0xd90>
   17d4c:	85e6                	mv	a1,s9
   17d4e:	4681                	li	a3,0
   17d50:	4629                	li	a2,10
   17d52:	8522                	mv	a0,s0
   17d54:	799000ef          	jal	18cec <__multadd>
   17d58:	8caa                	mv	s9,a0
   17d5a:	18050e63          	beqz	a0,17ef6 <__gdtoa+0x540>
   17d5e:	4681                	li	a3,0
   17d60:	4629                	li	a2,10
   17d62:	85e2                	mv	a1,s8
   17d64:	8522                	mv	a0,s0
   17d66:	494c0c63          	beq	s8,s4,181fe <__gdtoa+0x848>
   17d6a:	783000ef          	jal	18cec <__multadd>
   17d6e:	8c2a                	mv	s8,a0
   17d70:	18050363          	beqz	a0,17ef6 <__gdtoa+0x540>
   17d74:	85d2                	mv	a1,s4
   17d76:	4681                	li	a3,0
   17d78:	4629                	li	a2,10
   17d7a:	8522                	mv	a0,s0
   17d7c:	771000ef          	jal	18cec <__multadd>
   17d80:	8a2a                	mv	s4,a0
   17d82:	16050a63          	beqz	a0,17ef6 <__gdtoa+0x540>
   17d86:	56b6                	lw	a3,108(sp)
   17d88:	0685                	addi	a3,a3,1
   17d8a:	85ea                	mv	a1,s10
   17d8c:	8566                	mv	a0,s9
   17d8e:	d6b6                	sw	a3,108(sp)
   17d90:	4ab000ef          	jal	18a3a <__quorem_D2A>
   17d94:	84aa                	mv	s1,a0
   17d96:	85e2                	mv	a1,s8
   17d98:	8566                	mv	a0,s9
   17d9a:	5b4010ef          	jal	1934e <__mcmp>
   17d9e:	85ea                	mv	a1,s10
   17da0:	8aaa                	mv	s5,a0
   17da2:	8652                	mv	a2,s4
   17da4:	8522                	mv	a0,s0
   17da6:	5e4010ef          	jal	1938a <__mdiff>
   17daa:	03048b93          	addi	s7,s1,48
   17dae:	85aa                	mv	a1,a0
   17db0:	14050363          	beqz	a0,17ef6 <__gdtoa+0x540>
   17db4:	455c                	lw	a5,12(a0)
   17db6:	f3bd                	bnez	a5,17d1c <__gdtoa+0x366>
   17db8:	c82a                	sw	a0,16(sp)
   17dba:	8566                	mv	a0,s9
   17dbc:	592010ef          	jal	1934e <__mcmp>
   17dc0:	45c2                	lw	a1,16(sp)
   17dc2:	86aa                	mv	a3,a0
   17dc4:	8522                	mv	a0,s0
   17dc6:	c836                	sw	a3,16(sp)
   17dc8:	713000ef          	jal	18cda <_Bfree>
   17dcc:	46c2                	lw	a3,16(sp)
   17dce:	00d96733          	or	a4,s2,a3
   17dd2:	340711e3          	bnez	a4,18914 <__gdtoa+0xf5e>
   17dd6:	0009a783          	lw	a5,0(s3)
   17dda:	8b85                	andi	a5,a5,1
   17ddc:	42079863          	bnez	a5,1820c <__gdtoa+0x856>
   17de0:	5782                	lw	a5,32(sp)
   17de2:	280787e3          	beqz	a5,18870 <__gdtoa+0xeba>
   17de6:	f5504de3          	bgtz	s5,17d40 <__gdtoa+0x38a>
   17dea:	010ca603          	lw	a2,16(s9)
   17dee:	4685                	li	a3,1
   17df0:	835e                	mv	t1,s7
   17df2:	58a2                	lw	a7,40(sp)
   17df4:	4be2                	lw	s7,24(sp)
   17df6:	54b2                	lw	s1,44(sp)
   17df8:	8b3a                	mv	s6,a4
   17dfa:	2ec6dae3          	bge	a3,a2,188ee <__gdtoa+0xf38>
   17dfe:	5782                	lw	a5,32(sp)
   17e00:	4689                	li	a3,2
   17e02:	8a9a                	mv	s5,t1
   17e04:	8b46                	mv	s6,a7
   17e06:	02d79063          	bne	a5,a3,17e26 <__gdtoa+0x470>
   17e0a:	2cb0006f          	j	188d4 <__gdtoa+0xf1e>
   17e0e:	6df000ef          	jal	18cec <__multadd>
   17e12:	85ea                	mv	a1,s10
   17e14:	8caa                	mv	s9,a0
   17e16:	0e050063          	beqz	a0,17ef6 <__gdtoa+0x540>
   17e1a:	421000ef          	jal	18a3a <__quorem_D2A>
   17e1e:	03050a93          	addi	s5,a0,48
   17e22:	8dca                	mv	s11,s2
   17e24:	8a4e                	mv	s4,s3
   17e26:	85d2                	mv	a1,s4
   17e28:	856a                	mv	a0,s10
   17e2a:	524010ef          	jal	1934e <__mcmp>
   17e2e:	87aa                	mv	a5,a0
   17e30:	4681                	li	a3,0
   17e32:	4629                	li	a2,10
   17e34:	85d2                	mv	a1,s4
   17e36:	8522                	mv	a0,s0
   17e38:	001d8913          	addi	s2,s11,1
   17e3c:	28f052e3          	blez	a5,188c0 <__gdtoa+0xf0a>
   17e40:	ff590fa3          	sb	s5,-1(s2)
   17e44:	6a9000ef          	jal	18cec <__multadd>
   17e48:	89aa                	mv	s3,a0
   17e4a:	4681                	li	a3,0
   17e4c:	4629                	li	a2,10
   17e4e:	85e6                	mv	a1,s9
   17e50:	8522                	mv	a0,s0
   17e52:	0a098263          	beqz	s3,17ef6 <__gdtoa+0x540>
   17e56:	fb4c1ce3          	bne	s8,s4,17e0e <__gdtoa+0x458>
   17e5a:	8c4e                	mv	s8,s3
   17e5c:	bf4d                	j	17e0e <__gdtoa+0x458>
   17e5e:	4791                	li	a5,4
   17e60:	0afe1363          	bne	t3,a5,17f06 <__gdtoa+0x550>
   17e64:	4632                	lw	a2,12(sp)
   17e66:	4b4a                	lw	s6,144(sp)
   17e68:	50ba                	lw	ra,172(sp)
   17e6a:	549a                	lw	s1,164(sp)
   17e6c:	4ada                	lw	s5,148(sp)
   17e6e:	4bba                	lw	s7,140(sp)
   17e70:	77e1                	lui	a5,0xffff8
   17e72:	00f8a023          	sw	a5,0(a7)
   17e76:	65f9                	lui	a1,0x1e
   17e78:	468d                	li	a3,3
   17e7a:	98c58593          	addi	a1,a1,-1652 # 1d98c <__clzsi2+0xd4>
   17e7e:	614d                	addi	sp,sp,176
   17e80:	33b0006f          	j	189ba <__nrv_alloc_D2A>
   17e84:	85e6                	mv	a1,s9
   17e86:	8522                	mv	a0,s0
   17e88:	653000ef          	jal	18cda <_Bfree>
   17e8c:	590a                	lw	s2,160(sp)
   17e8e:	49fa                	lw	s3,156(sp)
   17e90:	4a6a                	lw	s4,152(sp)
   17e92:	4c2a                	lw	s8,136(sp)
   17e94:	4c9a                	lw	s9,132(sp)
   17e96:	4d0a                	lw	s10,128(sp)
   17e98:	5df6                	lw	s11,124(sp)
   17e9a:	4632                	lw	a2,12(sp)
   17e9c:	4785                	li	a5,1
   17e9e:	65f9                	lui	a1,0x1e
   17ea0:	8522                	mv	a0,s0
   17ea2:	c09c                	sw	a5,0(s1)
   17ea4:	4685                	li	a3,1
   17ea6:	97c58593          	addi	a1,a1,-1668 # 1d97c <__clzsi2+0xc4>
   17eaa:	311000ef          	jal	189ba <__nrv_alloc_D2A>
   17eae:	542a                	lw	s0,168(sp)
   17eb0:	88aa                	mv	a7,a0
   17eb2:	50ba                	lw	ra,172(sp)
   17eb4:	4b4a                	lw	s6,144(sp)
   17eb6:	549a                	lw	s1,164(sp)
   17eb8:	4ada                	lw	s5,148(sp)
   17eba:	4bba                	lw	s7,140(sp)
   17ebc:	8546                	mv	a0,a7
   17ebe:	614d                	addi	sp,sp,176
   17ec0:	8082                	ret
   17ec2:	4632                	lw	a2,12(sp)
   17ec4:	50ba                	lw	ra,172(sp)
   17ec6:	549a                	lw	s1,164(sp)
   17ec8:	4ada                	lw	s5,148(sp)
   17eca:	4bba                	lw	s7,140(sp)
   17ecc:	77e1                	lui	a5,0xffff8
   17ece:	00f8a023          	sw	a5,0(a7)
   17ed2:	65f9                	lui	a1,0x1e
   17ed4:	46a1                	li	a3,8
   17ed6:	98058593          	addi	a1,a1,-1664 # 1d980 <__clzsi2+0xc8>
   17eda:	614d                	addi	sp,sp,176
   17edc:	2df0006f          	j	189ba <__nrv_alloc_D2A>
   17ee0:	85ea                	mv	a1,s10
   17ee2:	8522                	mv	a0,s0
   17ee4:	cc46                	sw	a7,24(sp)
   17ee6:	c842                	sw	a6,16(sp)
   17ee8:	358010ef          	jal	19240 <__lshift>
   17eec:	4842                	lw	a6,16(sp)
   17eee:	48e2                	lw	a7,24(sp)
   17ef0:	8d2a                	mv	s10,a0
   17ef2:	de051de3          	bnez	a0,17cec <__gdtoa+0x336>
   17ef6:	542a                	lw	s0,168(sp)
   17ef8:	590a                	lw	s2,160(sp)
   17efa:	49fa                	lw	s3,156(sp)
   17efc:	4a6a                	lw	s4,152(sp)
   17efe:	4c2a                	lw	s8,136(sp)
   17f00:	4c9a                	lw	s9,132(sp)
   17f02:	4d0a                	lw	s10,128(sp)
   17f04:	5df6                	lw	s11,124(sp)
   17f06:	4881                	li	a7,0
   17f08:	b76d                	j	17eb2 <__gdtoa+0x4fc>
   17f0a:	000ca823          	sw	zero,16(s9)
   17f0e:	b649                	j	17a90 <__gdtoa+0xda>
   17f10:	4785                	li	a5,1
   17f12:	cabe                	sw	a5,84(sp)
   17f14:	cc02                	sw	zero,24(sp)
   17f16:	1a0ec163          	bltz	t4,180b8 <__gdtoa+0x702>
   17f1a:	c40859e3          	bgez	a6,17b6c <__gdtoa+0x1b6>
   17f1e:	47e2                	lw	a5,24(sp)
   17f20:	da42                	sw	a6,52(sp)
   17f22:	410787b3          	sub	a5,a5,a6
   17f26:	cc3e                	sw	a5,24(sp)
   17f28:	410007b3          	neg	a5,a6
   17f2c:	d83e                	sw	a5,48(sp)
   17f2e:	4801                	li	a6,0
   17f30:	b189                	j	17b72 <__gdtoa+0x1bc>
   17f32:	85aa                	mv	a1,a0
   17f34:	8566                	mv	a0,s9
   17f36:	45b000ef          	jal	18b90 <__rshift_D2A>
   17f3a:	5636                	lw	a2,108(sp)
   17f3c:	47c2                	lw	a5,16(sp)
   17f3e:	40cd8db3          	sub	s11,s11,a2
   17f42:	00f60c33          	add	s8,a2,a5
   17f46:	bea1                	j	17a9e <__gdtoa+0xe8>
   17f48:	3fd88893          	addi	a7,a7,1021
   17f4c:	7f88b793          	sltiu	a5,a7,2040
   17f50:	ccbe                	sw	a5,88(sp)
   17f52:	4901                	li	s2,0
   17f54:	ed01b707          	fld	fa4,-304(gp) # 1f870 <__SDATA_BEGIN__+0x28>
   17f58:	d20d07d3          	fcvt.d.w	fa5,s10
   17f5c:	4785                	li	a5,1
   17f5e:	c8be                	sw	a5,80(sp)
   17f60:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   17f64:	57fd                	li	a5,-1
   17f66:	d402                	sw	zero,40(sp)
   17f68:	cebe                	sw	a5,92(sp)
   17f6a:	d63e                	sw	a5,44(sp)
   17f6c:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   17f70:	058d                	addi	a1,a1,3
   17f72:	862e                	mv	a2,a1
   17f74:	b181                	j	17bb4 <__gdtoa+0x1fe>
   17f76:	5782                	lw	a5,32(sp)
   17f78:	460d                	li	a2,3
   17f7a:	40f607b3          	sub	a5,a2,a5
   17f7e:	d03e                	sw	a5,32(sp)
   17f80:	57b2                	lw	a5,44(sp)
   17f82:	4639                	li	a2,14
   17f84:	c6f663e3          	bltu	a2,a5,17bea <__gdtoa+0x234>
   17f88:	4766                	lw	a4,88(sp)
   17f8a:	c60700e3          	beqz	a4,17bea <__gdtoa+0x234>
   17f8e:	5752                	lw	a4,52(sp)
   17f90:	5682                	lw	a3,32(sp)
   17f92:	00d76633          	or	a2,a4,a3
   17f96:	c4061ae3          	bnez	a2,17bea <__gdtoa+0x234>
   17f9a:	4756                	lw	a4,84(sp)
   17f9c:	d682                	sw	zero,108(sp)
   17f9e:	d07a                	sw	t5,32(sp)
   17fa0:	d27e                	sw	t6,36(sp)
   17fa2:	cb11                	beqz	a4,17fb6 <__gdtoa+0x600>
   17fa4:	dc7a                	sw	t5,56(sp)
   17fa6:	de7e                	sw	t6,60(sp)
   17fa8:	ed81b787          	fld	fa5,-296(gp) # 1f878 <__SDATA_BEGIN__+0x30>
   17fac:	3762                	fld	fa4,56(sp)
   17fae:	a2f71653          	flt.d	a2,fa4,fa5
   17fb2:	7a061163          	bnez	a2,18754 <__gdtoa+0xd9e>
   17fb6:	ef81b707          	fld	fa4,-264(gp) # 1f898 <__SDATA_BEGIN__+0x50>
   17fba:	ef01b787          	fld	fa5,-272(gp) # 1f890 <__SDATA_BEGIN__+0x48>
   17fbe:	3682                	fld	fa3,32(sp)
   17fc0:	57b2                	lw	a5,44(sp)
   17fc2:	fcc00637          	lui	a2,0xfcc00
   17fc6:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   17fca:	bc3e                	fsd	fa5,56(sp)
   17fcc:	5562                	lw	a0,56(sp)
   17fce:	55f2                	lw	a1,60(sp)
   17fd0:	832a                	mv	t1,a0
   17fd2:	962e                	add	a2,a2,a1
   17fd4:	5c078063          	beqz	a5,18594 <__gdtoa+0xbde>
   17fd8:	3782                	fld	fa5,32(sp)
   17fda:	5532                	lw	a0,44(sp)
   17fdc:	4381                	li	t2,0
   17fde:	bc3e                	fsd	fa5,56(sp)
   17fe0:	65f9                	lui	a1,0x1e
   17fe2:	fff50793          	addi	a5,a0,-1
   17fe6:	078e                	slli	a5,a5,0x3
   17fe8:	d3858293          	addi	t0,a1,-712 # 1dd38 <__mprec_tens>
   17fec:	005786b3          	add	a3,a5,t0
   17ff0:	229c                	fld	fa5,0(a3)
   17ff2:	46c6                	lw	a3,80(sp)
   17ff4:	871a                	mv	a4,t1
   17ff6:	87b2                	mv	a5,a2
   17ff8:	6c068163          	beqz	a3,186ba <__gdtoa+0xd04>
   17ffc:	3762                	fld	fa4,56(sp)
   17ffe:	36e2                	fld	fa3,56(sp)
   18000:	c2071353          	fcvt.w.d	t1,fa4,rtz
   18004:	f081b707          	fld	fa4,-248(gp) # 1f8a8 <__SDATA_BEGIN__+0x60>
   18008:	dc3a                	sw	a4,56(sp)
   1800a:	de3e                	sw	a5,60(sp)
   1800c:	1af77753          	fdiv.d	fa4,fa4,fa5
   18010:	d20307d3          	fcvt.d.w	fa5,t1
   18014:	03030313          	addi	t1,t1,48
   18018:	00688023          	sb	t1,0(a7)
   1801c:	0af6f7d3          	fsub.d	fa5,fa3,fa5
   18020:	36e2                	fld	fa3,56(sp)
   18022:	00188613          	addi	a2,a7,1
   18026:	0ad77753          	fsub.d	fa4,fa4,fa3
   1802a:	a2e79353          	flt.d	t1,fa5,fa4
   1802e:	7c031e63          	bnez	t1,1880a <__gdtoa+0xe54>
   18032:	ed81b587          	fld	fa1,-296(gp) # 1f878 <__SDATA_BEGIN__+0x30>
   18036:	ee01b607          	fld	fa2,-288(gp) # 1f880 <__SDATA_BEGIN__+0x38>
   1803a:	a80d                	j	1806c <__gdtoa+0x6b6>
   1803c:	57b6                	lw	a5,108(sp)
   1803e:	0605                	addi	a2,a2,1 # fcc00001 <__BSS_END__+0xfcbe0415>
   18040:	0785                	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffd8415>
   18042:	d6be                	sw	a5,108(sp)
   18044:	7ea7d163          	bge	a5,a0,18826 <__gdtoa+0xe70>
   18048:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   1804c:	12c77753          	fmul.d	fa4,fa4,fa2
   18050:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   18054:	d20786d3          	fcvt.d.w	fa3,a5
   18058:	03078793          	addi	a5,a5,48
   1805c:	fef60fa3          	sb	a5,-1(a2)
   18060:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   18064:	a2e797d3          	flt.d	a5,fa5,fa4
   18068:	7a079163          	bnez	a5,1880a <__gdtoa+0xe54>
   1806c:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   18070:	a2e697d3          	flt.d	a5,fa3,fa4
   18074:	d7e1                	beqz	a5,1803c <__gdtoa+0x686>
   18076:	fff64683          	lbu	a3,-1(a2)
   1807a:	00138513          	addi	a0,t2,1
   1807e:	03900593          	li	a1,57
   18082:	a031                	j	1808e <__gdtoa+0x6d8>
   18084:	62f88763          	beq	a7,a5,186b2 <__gdtoa+0xcfc>
   18088:	fff7c683          	lbu	a3,-1(a5)
   1808c:	863e                	mv	a2,a5
   1808e:	fff60793          	addi	a5,a2,-1
   18092:	feb689e3          	beq	a3,a1,18084 <__gdtoa+0x6ce>
   18096:	0685                	addi	a3,a3,1
   18098:	0ff6f693          	zext.b	a3,a3
   1809c:	00d78023          	sb	a3,0(a5)
   180a0:	892a                	mv	s2,a0
   180a2:	02000b13          	li	s6,32
   180a6:	a0e5                	j	1818e <__gdtoa+0x7d8>
   180a8:	542a                	lw	s0,168(sp)
   180aa:	590a                	lw	s2,160(sp)
   180ac:	49fa                	lw	s3,156(sp)
   180ae:	4a6a                	lw	s4,152(sp)
   180b0:	4c9a                	lw	s9,132(sp)
   180b2:	4d0a                	lw	s10,128(sp)
   180b4:	4881                	li	a7,0
   180b6:	bbf5                	j	17eb2 <__gdtoa+0x4fc>
   180b8:	4605                	li	a2,1
   180ba:	40a607b3          	sub	a5,a2,a0
   180be:	cc3e                	sw	a5,24(sp)
   180c0:	4e81                	li	t4,0
   180c2:	e4084ee3          	bltz	a6,17f1e <__gdtoa+0x568>
   180c6:	b45d                	j	17b6c <__gdtoa+0x1b6>
   180c8:	47e2                	lw	a5,24(sp)
   180ca:	5d42                	lw	s10,48(sp)
   180cc:	4c01                	li	s8,0
   180ce:	dc3e                	sw	a5,56(sp)
   180d0:	b671                	j	17c5c <__gdtoa+0x2a6>
   180d2:	4789                	li	a5,2
   180d4:	d03e                	sw	a5,32(sp)
   180d6:	b631                	j	17be2 <__gdtoa+0x22c>
   180d8:	187d                	addi	a6,a6,-1
   180da:	ca82                	sw	zero,84(sp)
   180dc:	bd25                	j	17f14 <__gdtoa+0x55e>
   180de:	1971                	addi	s2,s2,-4
   180e0:	4591                	li	a1,4
   180e2:	10b90263          	beq	s2,a1,181e6 <__gdtoa+0x830>
   180e6:	42c90263          	beq	s2,a2,1850a <__gdtoa+0xb54>
   180ea:	4609                	li	a2,2
   180ec:	cc82                	sw	zero,88(sp)
   180ee:	c882                	sw	zero,80(sp)
   180f0:	0ec90e63          	beq	s2,a2,181ec <__gdtoa+0x836>
   180f4:	490d                	li	s2,3
   180f6:	b46d                	j	17ba0 <__gdtoa+0x1ea>
   180f8:	66f9                	lui	a3,0x1e
   180fa:	078e                	slli	a5,a5,0x3
   180fc:	d3868693          	addi	a3,a3,-712 # 1dd38 <__mprec_tens>
   18100:	97b6                	add	a5,a5,a3
   18102:	2398                	fld	fa4,0(a5)
   18104:	57a2                	lw	a5,40(sp)
   18106:	3207c263          	bltz	a5,1842a <__gdtoa+0xa74>
   1810a:	c87a                	sw	t5,16(sp)
   1810c:	ca7e                	sw	t6,20(sp)
   1810e:	27c2                	fld	fa5,16(sp)
   18110:	4785                	li	a5,1
   18112:	d6be                	sw	a5,108(sp)
   18114:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   18118:	57d2                	lw	a5,52(sp)
   1811a:	26c2                	fld	fa3,16(sp)
   1811c:	00188613          	addi	a2,a7,1
   18120:	00178513          	addi	a0,a5,1
   18124:	892a                	mv	s2,a0
   18126:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   1812a:	d20787d3          	fcvt.d.w	fa5,a5
   1812e:	03078693          	addi	a3,a5,48
   18132:	00d88023          	sb	a3,0(a7)
   18136:	6af777cb          	fnmsub.d	fa5,fa4,fa5,fa3
   1813a:	d20006d3          	fcvt.d.w	fa3,zero
   1813e:	a2d7a6d3          	feq.d	a3,fa5,fa3
   18142:	e6b1                	bnez	a3,1818e <__gdtoa+0x7d8>
   18144:	ee01b587          	fld	fa1,-288(gp) # 1f880 <__SDATA_BEGIN__+0x38>
   18148:	22d68653          	fmv.d	fa2,fa3
   1814c:	55b2                	lw	a1,44(sp)
   1814e:	a025                	j	18176 <__gdtoa+0x7c0>
   18150:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   18154:	d6b6                	sw	a3,108(sp)
   18156:	0605                	addi	a2,a2,1
   18158:	1ae7f6d3          	fdiv.d	fa3,fa5,fa4
   1815c:	c20697d3          	fcvt.w.d	a5,fa3,rtz
   18160:	d20786d3          	fcvt.d.w	fa3,a5
   18164:	03078713          	addi	a4,a5,48
   18168:	fee60fa3          	sb	a4,-1(a2)
   1816c:	7ae6f7cb          	fnmsub.d	fa5,fa3,fa4,fa5
   18170:	a2c7a753          	feq.d	a4,fa5,fa2
   18174:	ef09                	bnez	a4,1818e <__gdtoa+0x7d8>
   18176:	5736                	lw	a4,108(sp)
   18178:	00170693          	addi	a3,a4,1
   1817c:	fcb71ae3          	bne	a4,a1,18150 <__gdtoa+0x79a>
   18180:	5702                	lw	a4,32(sp)
   18182:	4e070e63          	beqz	a4,1867e <__gdtoa+0xcc8>
   18186:	4785                	li	a5,1
   18188:	4b41                	li	s6,16
   1818a:	60f70263          	beq	a4,a5,1878e <__gdtoa+0xdd8>
   1818e:	85e6                	mv	a1,s9
   18190:	8522                	mv	a0,s0
   18192:	d446                	sw	a7,40(sp)
   18194:	c832                	sw	a2,16(sp)
   18196:	345000ef          	jal	18cda <_Bfree>
   1819a:	4642                	lw	a2,16(sp)
   1819c:	47b2                	lw	a5,12(sp)
   1819e:	58a2                	lw	a7,40(sp)
   181a0:	00060023          	sb	zero,0(a2)
   181a4:	0124a023          	sw	s2,0(s1)
   181a8:	c391                	beqz	a5,181ac <__gdtoa+0x7f6>
   181aa:	c390                	sw	a2,0(a5)
   181ac:	000ba783          	lw	a5,0(s7)
   181b0:	542a                	lw	s0,168(sp)
   181b2:	590a                	lw	s2,160(sp)
   181b4:	0167e7b3          	or	a5,a5,s6
   181b8:	49fa                	lw	s3,156(sp)
   181ba:	4a6a                	lw	s4,152(sp)
   181bc:	4c2a                	lw	s8,136(sp)
   181be:	4c9a                	lw	s9,132(sp)
   181c0:	4d0a                	lw	s10,128(sp)
   181c2:	5df6                	lw	s11,124(sp)
   181c4:	00fba023          	sw	a5,0(s7)
   181c8:	b1ed                	j	17eb2 <__gdtoa+0x4fc>
   181ca:	b0dd90e3          	bne	s11,a3,17cca <__gdtoa+0x314>
   181ce:	004a2783          	lw	a5,4(s4)
   181d2:	4742                	lw	a4,16(sp)
   181d4:	0785                	addi	a5,a5,1
   181d6:	aee7dae3          	bge	a5,a4,17cca <__gdtoa+0x314>
   181da:	47e2                	lw	a5,24(sp)
   181dc:	0e85                	addi	t4,t4,1
   181de:	4805                	li	a6,1
   181e0:	0785                	addi	a5,a5,1
   181e2:	cc3e                	sw	a5,24(sp)
   181e4:	b4dd                	j	17cca <__gdtoa+0x314>
   181e6:	4785                	li	a5,1
   181e8:	cc82                	sw	zero,88(sp)
   181ea:	c8be                	sw	a5,80(sp)
   181ec:	55a2                	lw	a1,40(sp)
   181ee:	00b04363          	bgtz	a1,181f4 <__gdtoa+0x83e>
   181f2:	4585                	li	a1,1
   181f4:	862e                	mv	a2,a1
   181f6:	ceae                	sw	a1,92(sp)
   181f8:	d62e                	sw	a1,44(sp)
   181fa:	d42e                	sw	a1,40(sp)
   181fc:	ba65                	j	17bb4 <__gdtoa+0x1fe>
   181fe:	2ef000ef          	jal	18cec <__multadd>
   18202:	8c2a                	mv	s8,a0
   18204:	ce0509e3          	beqz	a0,17ef6 <__gdtoa+0x540>
   18208:	8a2a                	mv	s4,a0
   1820a:	beb5                	j	17d86 <__gdtoa+0x3d0>
   1820c:	b20adae3          	bgez	s5,17d40 <__gdtoa+0x38a>
   18210:	5782                	lw	a5,32(sp)
   18212:	835e                	mv	t1,s7
   18214:	58a2                	lw	a7,40(sp)
   18216:	4be2                	lw	s7,24(sp)
   18218:	54b2                	lw	s1,44(sp)
   1821a:	8b3a                	mv	s6,a4
   1821c:	6c079463          	bnez	a5,188e4 <__gdtoa+0xf2e>
   18220:	010ca603          	lw	a2,16(s9)
   18224:	4685                	li	a3,1
   18226:	4b41                	li	s6,16
   18228:	001d8913          	addi	s2,s11,1
   1822c:	68c6d463          	bge	a3,a2,188b4 <__gdtoa+0xefe>
   18230:	89e2                	mv	s3,s8
   18232:	864a                	mv	a2,s2
   18234:	006d8023          	sb	t1,0(s11)
   18238:	8c52                	mv	s8,s4
   1823a:	85ea                	mv	a1,s10
   1823c:	8522                	mv	a0,s0
   1823e:	d446                	sw	a7,40(sp)
   18240:	c832                	sw	a2,16(sp)
   18242:	299000ef          	jal	18cda <_Bfree>
   18246:	57d2                	lw	a5,52(sp)
   18248:	4642                	lw	a2,16(sp)
   1824a:	58a2                	lw	a7,40(sp)
   1824c:	00178913          	addi	s2,a5,1
   18250:	f20c0fe3          	beqz	s8,1818e <__gdtoa+0x7d8>
   18254:	00098a63          	beqz	s3,18268 <__gdtoa+0x8b2>
   18258:	01898863          	beq	s3,s8,18268 <__gdtoa+0x8b2>
   1825c:	85ce                	mv	a1,s3
   1825e:	8522                	mv	a0,s0
   18260:	27b000ef          	jal	18cda <_Bfree>
   18264:	58a2                	lw	a7,40(sp)
   18266:	4642                	lw	a2,16(sp)
   18268:	85e2                	mv	a1,s8
   1826a:	8522                	mv	a0,s0
   1826c:	d446                	sw	a7,40(sp)
   1826e:	c832                	sw	a2,16(sp)
   18270:	26b000ef          	jal	18cda <_Bfree>
   18274:	58a2                	lw	a7,40(sp)
   18276:	4642                	lw	a2,16(sp)
   18278:	bf19                	j	1818e <__gdtoa+0x7d8>
   1827a:	85e6                	mv	a1,s9
   1827c:	8522                	mv	a0,s0
   1827e:	d846                	sw	a7,48(sp)
   18280:	cc76                	sw	t4,24(sp)
   18282:	c842                	sw	a6,16(sp)
   18284:	7bd000ef          	jal	19240 <__lshift>
   18288:	8caa                	mv	s9,a0
   1828a:	c60506e3          	beqz	a0,17ef6 <__gdtoa+0x540>
   1828e:	57b6                	lw	a5,108(sp)
   18290:	58c2                	lw	a7,48(sp)
   18292:	4ee2                	lw	t4,24(sp)
   18294:	4842                	lw	a6,16(sp)
   18296:	b4b9                	j	17ce4 <__gdtoa+0x32e>
   18298:	85ea                	mv	a1,s10
   1829a:	8566                	mv	a0,s9
   1829c:	cc46                	sw	a7,24(sp)
   1829e:	c842                	sw	a6,16(sp)
   182a0:	0ae010ef          	jal	1934e <__mcmp>
   182a4:	4842                	lw	a6,16(sp)
   182a6:	48e2                	lw	a7,24(sp)
   182a8:	a40555e3          	bgez	a0,17cf2 <__gdtoa+0x33c>
   182ac:	57d2                	lw	a5,52(sp)
   182ae:	85e6                	mv	a1,s9
   182b0:	4681                	li	a3,0
   182b2:	17fd                	addi	a5,a5,-1
   182b4:	4629                	li	a2,10
   182b6:	8522                	mv	a0,s0
   182b8:	da3e                	sw	a5,52(sp)
   182ba:	233000ef          	jal	18cec <__multadd>
   182be:	8caa                	mv	s9,a0
   182c0:	c2050be3          	beqz	a0,17ef6 <__gdtoa+0x540>
   182c4:	47c6                	lw	a5,80(sp)
   182c6:	48e2                	lw	a7,24(sp)
   182c8:	50079a63          	bnez	a5,187dc <__gdtoa+0xe26>
   182cc:	47f6                	lw	a5,92(sp)
   182ce:	14f05863          	blez	a5,1841e <__gdtoa+0xa68>
   182d2:	d63e                	sw	a5,44(sp)
   182d4:	5932                	lw	s2,44(sp)
   182d6:	8dc6                	mv	s11,a7
   182d8:	4685                	li	a3,1
   182da:	89c6                	mv	s3,a7
   182dc:	a801                	j	182ec <__gdtoa+0x936>
   182de:	20f000ef          	jal	18cec <__multadd>
   182e2:	8caa                	mv	s9,a0
   182e4:	c00509e3          	beqz	a0,17ef6 <__gdtoa+0x540>
   182e8:	56b6                	lw	a3,108(sp)
   182ea:	0685                	addi	a3,a3,1
   182ec:	85ea                	mv	a1,s10
   182ee:	8566                	mv	a0,s9
   182f0:	d6b6                	sw	a3,108(sp)
   182f2:	27a1                	jal	18a3a <__quorem_D2A>
   182f4:	03050313          	addi	t1,a0,48
   182f8:	006d8023          	sb	t1,0(s11)
   182fc:	57b6                	lw	a5,108(sp)
   182fe:	4681                	li	a3,0
   18300:	4629                	li	a2,10
   18302:	85e6                	mv	a1,s9
   18304:	8522                	mv	a0,s0
   18306:	0d85                	addi	s11,s11,1
   18308:	fd27cbe3          	blt	a5,s2,182de <__gdtoa+0x928>
   1830c:	88ce                	mv	a7,s3
   1830e:	4981                	li	s3,0
   18310:	5782                	lw	a5,32(sp)
   18312:	2c078263          	beqz	a5,185d6 <__gdtoa+0xc20>
   18316:	4689                	li	a3,2
   18318:	010ca603          	lw	a2,16(s9)
   1831c:	2ed78363          	beq	a5,a3,18602 <__gdtoa+0xc4c>
   18320:	4685                	li	a3,1
   18322:	1ac6c763          	blt	a3,a2,184d0 <__gdtoa+0xb1a>
   18326:	014ca683          	lw	a3,20(s9)
   1832a:	1a069363          	bnez	a3,184d0 <__gdtoa+0xb1a>
   1832e:	00d036b3          	snez	a3,a3
   18332:	00469b13          	slli	s6,a3,0x4
   18336:	03000593          	li	a1,48
   1833a:	fffdc783          	lbu	a5,-1(s11)
   1833e:	866e                	mv	a2,s11
   18340:	1dfd                	addi	s11,s11,-1
   18342:	feb78ce3          	beq	a5,a1,1833a <__gdtoa+0x984>
   18346:	bdd5                	j	1823a <__gdtoa+0x884>
   18348:	57b2                	lw	a5,44(sp)
   1834a:	5742                	lw	a4,48(sp)
   1834c:	fff78693          	addi	a3,a5,-1
   18350:	10d74463          	blt	a4,a3,18458 <__gdtoa+0xaa2>
   18354:	40d70d33          	sub	s10,a4,a3
   18358:	4407d263          	bgez	a5,1879c <__gdtoa+0xde6>
   1835c:	47e2                	lw	a5,24(sp)
   1835e:	5732                	lw	a4,44(sp)
   18360:	d682                	sw	zero,108(sp)
   18362:	8f99                	sub	a5,a5,a4
   18364:	dc3e                	sw	a5,56(sp)
   18366:	b8f1                	j	17c42 <__gdtoa+0x28c>
   18368:	4789                	li	a5,2
   1836a:	9927d7e3          	bge	a5,s2,17cf8 <__gdtoa+0x342>
   1836e:	85ea                	mv	a1,s10
   18370:	4681                	li	a3,0
   18372:	4615                	li	a2,5
   18374:	8522                	mv	a0,s0
   18376:	c846                	sw	a7,16(sp)
   18378:	175000ef          	jal	18cec <__multadd>
   1837c:	85aa                	mv	a1,a0
   1837e:	b6050ce3          	beqz	a0,17ef6 <__gdtoa+0x540>
   18382:	57b2                	lw	a5,44(sp)
   18384:	48c2                	lw	a7,16(sp)
   18386:	e3f9                	bnez	a5,1844c <__gdtoa+0xa96>
   18388:	c82a                	sw	a0,16(sp)
   1838a:	8566                	mv	a0,s9
   1838c:	cc46                	sw	a7,24(sp)
   1838e:	7c1000ef          	jal	1934e <__mcmp>
   18392:	45c2                	lw	a1,16(sp)
   18394:	48e2                	lw	a7,24(sp)
   18396:	0aa05b63          	blez	a0,1844c <__gdtoa+0xa96>
   1839a:	57d2                	lw	a5,52(sp)
   1839c:	00278913          	addi	s2,a5,2
   183a0:	03100793          	li	a5,49
   183a4:	00188613          	addi	a2,a7,1
   183a8:	00f88023          	sb	a5,0(a7)
   183ac:	02000b13          	li	s6,32
   183b0:	8522                	mv	a0,s0
   183b2:	d446                	sw	a7,40(sp)
   183b4:	c832                	sw	a2,16(sp)
   183b6:	125000ef          	jal	18cda <_Bfree>
   183ba:	4642                	lw	a2,16(sp)
   183bc:	58a2                	lw	a7,40(sp)
   183be:	dc0c08e3          	beqz	s8,1818e <__gdtoa+0x7d8>
   183c2:	b55d                	j	18268 <__gdtoa+0x8b2>
   183c4:	4605                	li	a2,1
   183c6:	4585                	li	a1,1
   183c8:	fecff06f          	j	17bb4 <__gdtoa+0x1fe>
   183cc:	85aa                	mv	a1,a0
   183ce:	8642                	mv	a2,a6
   183d0:	8522                	mv	a0,s0
   183d2:	c0c6                	sw	a7,64(sp)
   183d4:	d876                	sw	t4,48(sp)
   183d6:	597000ef          	jal	1916c <__pow5mult>
   183da:	8d2a                	mv	s10,a0
   183dc:	b0050de3          	beqz	a0,17ef6 <__gdtoa+0x540>
   183e0:	4685                	li	a3,1
   183e2:	5ec2                	lw	t4,48(sp)
   183e4:	4886                	lw	a7,64(sp)
   183e6:	1526d063          	bge	a3,s2,18526 <__gdtoa+0xb70>
   183ea:	010d2783          	lw	a5,16(s10)
   183ee:	d846                	sw	a7,48(sp)
   183f0:	c876                	sw	t4,16(sp)
   183f2:	078d                	addi	a5,a5,3
   183f4:	078a                	slli	a5,a5,0x2
   183f6:	97ea                	add	a5,a5,s10
   183f8:	43c8                	lw	a0,4(a5)
   183fa:	297000ef          	jal	18e90 <__hi0bits>
   183fe:	58c2                	lw	a7,48(sp)
   18400:	4ec2                	lw	t4,16(sp)
   18402:	8a2a                	mv	s4,a0
   18404:	885a                	mv	a6,s6
   18406:	b0d9                	j	17ccc <__gdtoa+0x316>
   18408:	4685                	li	a3,1
   1840a:	f326cfe3          	blt	a3,s2,18348 <__gdtoa+0x992>
   1840e:	47e2                	lw	a5,24(sp)
   18410:	5d42                	lw	s10,48(sp)
   18412:	9eae                	add	t4,t4,a1
   18414:	dc3e                	sw	a5,56(sp)
   18416:	97ae                	add	a5,a5,a1
   18418:	cc3e                	sw	a5,24(sp)
   1841a:	829ff06f          	j	17c42 <__gdtoa+0x28c>
   1841e:	4789                	li	a5,2
   18420:	4727ce63          	blt	a5,s2,1889c <__gdtoa+0xee6>
   18424:	47f6                	lw	a5,92(sp)
   18426:	d63e                	sw	a5,44(sp)
   18428:	b575                	j	182d4 <__gdtoa+0x91e>
   1842a:	57b2                	lw	a5,44(sp)
   1842c:	ccf04fe3          	bgtz	a5,1810a <__gdtoa+0x754>
   18430:	ef81                	bnez	a5,18448 <__gdtoa+0xa92>
   18432:	f001b787          	fld	fa5,-256(gp) # 1f8a0 <__SDATA_BEGIN__+0x58>
   18436:	c87a                	sw	t5,16(sp)
   18438:	ca7e                	sw	t6,20(sp)
   1843a:	12f77753          	fmul.d	fa4,fa4,fa5
   1843e:	27c2                	fld	fa5,16(sp)
   18440:	a2e787d3          	fle.d	a5,fa5,fa4
   18444:	38078663          	beqz	a5,187d0 <__gdtoa+0xe1a>
   18448:	4581                	li	a1,0
   1844a:	4c01                	li	s8,0
   1844c:	57a2                	lw	a5,40(sp)
   1844e:	8646                	mv	a2,a7
   18450:	4b41                	li	s6,16
   18452:	40f00933          	neg	s2,a5
   18456:	bfa9                	j	183b0 <__gdtoa+0x9fa>
   18458:	57c2                	lw	a5,48(sp)
   1845a:	4762                	lw	a4,24(sp)
   1845c:	4d01                	li	s10,0
   1845e:	40f68633          	sub	a2,a3,a5
   18462:	57b2                	lw	a5,44(sp)
   18464:	dc3a                	sw	a4,56(sp)
   18466:	9832                	add	a6,a6,a2
   18468:	d6be                	sw	a5,108(sp)
   1846a:	9ebe                	add	t4,t4,a5
   1846c:	97ba                	add	a5,a5,a4
   1846e:	cc3e                	sw	a5,24(sp)
   18470:	d836                	sw	a3,48(sp)
   18472:	fd0ff06f          	j	17c42 <__gdtoa+0x28c>
   18476:	85e2                	mv	a1,s8
   18478:	866a                	mv	a2,s10
   1847a:	8522                	mv	a0,s0
   1847c:	ccc6                	sw	a7,88(sp)
   1847e:	c4f6                	sw	t4,72(sp)
   18480:	c0c2                	sw	a6,64(sp)
   18482:	4eb000ef          	jal	1916c <__pow5mult>
   18486:	8c2a                	mv	s8,a0
   18488:	a60507e3          	beqz	a0,17ef6 <__gdtoa+0x540>
   1848c:	85aa                	mv	a1,a0
   1848e:	8666                	mv	a2,s9
   18490:	8522                	mv	a0,s0
   18492:	345000ef          	jal	18fd6 <__multiply>
   18496:	8aaa                	mv	s5,a0
   18498:	a4050fe3          	beqz	a0,17ef6 <__gdtoa+0x540>
   1849c:	85e6                	mv	a1,s9
   1849e:	8522                	mv	a0,s0
   184a0:	03b000ef          	jal	18cda <_Bfree>
   184a4:	57c2                	lw	a5,48(sp)
   184a6:	4806                	lw	a6,64(sp)
   184a8:	4ea6                	lw	t4,72(sp)
   184aa:	41a787b3          	sub	a5,a5,s10
   184ae:	d83e                	sw	a5,48(sp)
   184b0:	48e6                	lw	a7,88(sp)
   184b2:	8cd6                	mv	s9,s5
   184b4:	fe078963          	beqz	a5,17ca6 <__gdtoa+0x2f0>
   184b8:	fd2ff06f          	j	17c8a <__gdtoa+0x2d4>
   184bc:	89e2                	mv	s3,s8
   184be:	86ee                	mv	a3,s11
   184c0:	001d8913          	addi	s2,s11,1
   184c4:	8c52                	mv	s8,s4
   184c6:	03900613          	li	a2,57
   184ca:	8dca                	mv	s11,s2
   184cc:	00c68023          	sb	a2,0(a3)
   184d0:	03900593          	li	a1,57
   184d4:	a019                	j	184da <__gdtoa+0xb24>
   184d6:	13b88f63          	beq	a7,s11,18614 <__gdtoa+0xc5e>
   184da:	fffdc683          	lbu	a3,-1(s11)
   184de:	866e                	mv	a2,s11
   184e0:	1dfd                	addi	s11,s11,-1
   184e2:	feb68ae3          	beq	a3,a1,184d6 <__gdtoa+0xb20>
   184e6:	0685                	addi	a3,a3,1
   184e8:	00dd8023          	sb	a3,0(s11)
   184ec:	02000b13          	li	s6,32
   184f0:	b3a9                	j	1823a <__gdtoa+0x884>
   184f2:	85e2                	mv	a1,s8
   184f4:	8522                	mv	a0,s0
   184f6:	d446                	sw	a7,40(sp)
   184f8:	c842                	sw	a6,16(sp)
   184fa:	547000ef          	jal	19240 <__lshift>
   184fe:	4842                	lw	a6,16(sp)
   18500:	58a2                	lw	a7,40(sp)
   18502:	8c2a                	mv	s8,a0
   18504:	800512e3          	bnez	a0,17d08 <__gdtoa+0x352>
   18508:	b2fd                	j	17ef6 <__gdtoa+0x540>
   1850a:	4785                	li	a5,1
   1850c:	cc82                	sw	zero,88(sp)
   1850e:	c8be                	sw	a5,80(sp)
   18510:	e90ff06f          	j	17ba0 <__gdtoa+0x1ea>
   18514:	4785                	li	a5,1
   18516:	c8be                	sw	a5,80(sp)
   18518:	e88ff06f          	j	17ba0 <__gdtoa+0x1ea>
   1851c:	4785                	li	a5,1
   1851e:	c8be                	sw	a5,80(sp)
   18520:	b1f1                	j	181ec <__gdtoa+0x836>
   18522:	c882                	sw	zero,80(sp)
   18524:	b1e1                	j	181ec <__gdtoa+0x836>
   18526:	ecdd92e3          	bne	s11,a3,183ea <__gdtoa+0xa34>
   1852a:	004a2783          	lw	a5,4(s4)
   1852e:	4742                	lw	a4,16(sp)
   18530:	0785                	addi	a5,a5,1
   18532:	eae7dce3          	bge	a5,a4,183ea <__gdtoa+0xa34>
   18536:	47e2                	lw	a5,24(sp)
   18538:	0e85                	addi	t4,t4,1
   1853a:	4b05                	li	s6,1
   1853c:	0785                	addi	a5,a5,1
   1853e:	cc3e                	sw	a5,24(sp)
   18540:	b56d                	j	183ea <__gdtoa+0xa34>
   18542:	004c2583          	lw	a1,4(s8)
   18546:	8522                	mv	a0,s0
   18548:	c846                	sw	a7,16(sp)
   1854a:	2715                	jal	18c6e <_Balloc>
   1854c:	8a2a                	mv	s4,a0
   1854e:	9a0504e3          	beqz	a0,17ef6 <__gdtoa+0x540>
   18552:	010c2603          	lw	a2,16(s8)
   18556:	00cc0593          	addi	a1,s8,12
   1855a:	0531                	addi	a0,a0,12
   1855c:	0609                	addi	a2,a2,2
   1855e:	060a                	slli	a2,a2,0x2
   18560:	f1bfe0ef          	jal	1747a <memcpy>
   18564:	85d2                	mv	a1,s4
   18566:	4605                	li	a2,1
   18568:	8522                	mv	a0,s0
   1856a:	4d7000ef          	jal	19240 <__lshift>
   1856e:	48c2                	lw	a7,16(sp)
   18570:	8a2a                	mv	s4,a0
   18572:	f8051e63          	bnez	a0,17d0e <__gdtoa+0x358>
   18576:	b241                	j	17ef6 <__gdtoa+0x540>
   18578:	ef81b707          	fld	fa4,-264(gp) # 1f898 <__SDATA_BEGIN__+0x50>
   1857c:	ef01b787          	fld	fa5,-272(gp) # 1f890 <__SDATA_BEGIN__+0x48>
   18580:	3682                	fld	fa3,32(sp)
   18582:	fcc00637          	lui	a2,0xfcc00
   18586:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   1858a:	bc3e                	fsd	fa5,56(sp)
   1858c:	5562                	lw	a0,56(sp)
   1858e:	55f2                	lw	a1,60(sp)
   18590:	832a                	mv	t1,a0
   18592:	962e                	add	a2,a2,a1
   18594:	de32                	sw	a2,60(sp)
   18596:	f001b707          	fld	fa4,-256(gp) # 1f8a0 <__SDATA_BEGIN__+0x58>
   1859a:	3782                	fld	fa5,32(sp)
   1859c:	dc1a                	sw	t1,56(sp)
   1859e:	0ae7f753          	fsub.d	fa4,fa5,fa4
   185a2:	37e2                	fld	fa5,56(sp)
   185a4:	a2e79653          	flt.d	a2,fa5,fa4
   185a8:	1e061663          	bnez	a2,18794 <__gdtoa+0xdde>
   185ac:	22f797d3          	fneg.d	fa5,fa5
   185b0:	a2f71653          	flt.d	a2,fa4,fa5
   185b4:	e8061ae3          	bnez	a2,18448 <__gdtoa+0xa92>
   185b8:	5f02                	lw	t5,32(sp)
   185ba:	5f92                	lw	t6,36(sp)
   185bc:	65f9                	lui	a1,0x1e
   185be:	280c4b63          	bltz	s8,18854 <__gdtoa+0xe9e>
   185c2:	57a2                	lw	a5,40(sp)
   185c4:	d002                	sw	zero,32(sp)
   185c6:	d385b707          	fld	fa4,-712(a1) # 1dd38 <__mprec_tens>
   185ca:	b407d0e3          	bgez	a5,1810a <__gdtoa+0x754>
   185ce:	57b2                	lw	a5,44(sp)
   185d0:	b2079de3          	bnez	a5,1810a <__gdtoa+0x754>
   185d4:	bdb9                	j	18432 <__gdtoa+0xa7c>
   185d6:	85e6                	mv	a1,s9
   185d8:	4605                	li	a2,1
   185da:	8522                	mv	a0,s0
   185dc:	c846                	sw	a7,16(sp)
   185de:	d41a                	sw	t1,40(sp)
   185e0:	461000ef          	jal	19240 <__lshift>
   185e4:	8caa                	mv	s9,a0
   185e6:	900508e3          	beqz	a0,17ef6 <__gdtoa+0x540>
   185ea:	85ea                	mv	a1,s10
   185ec:	563000ef          	jal	1934e <__mcmp>
   185f0:	48c2                	lw	a7,16(sp)
   185f2:	eca04fe3          	bgtz	a0,184d0 <__gdtoa+0xb1a>
   185f6:	e511                	bnez	a0,18602 <__gdtoa+0xc4c>
   185f8:	5322                	lw	t1,40(sp)
   185fa:	00137313          	andi	t1,t1,1
   185fe:	ec0319e3          	bnez	t1,184d0 <__gdtoa+0xb1a>
   18602:	010ca603          	lw	a2,16(s9)
   18606:	4685                	li	a3,1
   18608:	4b41                	li	s6,16
   1860a:	d2c6c6e3          	blt	a3,a2,18336 <__gdtoa+0x980>
   1860e:	014ca683          	lw	a3,20(s9)
   18612:	bb31                	j	1832e <__gdtoa+0x978>
   18614:	57d2                	lw	a5,52(sp)
   18616:	02000b13          	li	s6,32
   1861a:	0785                	addi	a5,a5,1
   1861c:	da3e                	sw	a5,52(sp)
   1861e:	03100793          	li	a5,49
   18622:	00f88023          	sb	a5,0(a7)
   18626:	b911                	j	1823a <__gdtoa+0x884>
   18628:	5782                	lw	a5,32(sp)
   1862a:	8926                	mv	s2,s1
   1862c:	835e                	mv	t1,s7
   1862e:	58a2                	lw	a7,40(sp)
   18630:	4be2                	lw	s7,24(sp)
   18632:	54b2                	lw	s1,44(sp)
   18634:	cb91                	beqz	a5,18648 <__gdtoa+0xc92>
   18636:	010ca603          	lw	a2,16(s9)
   1863a:	4685                	li	a3,1
   1863c:	fcc6c163          	blt	a3,a2,17dfe <__gdtoa+0x448>
   18640:	014ca683          	lw	a3,20(s9)
   18644:	fa069d63          	bnez	a3,17dfe <__gdtoa+0x448>
   18648:	85e6                	mv	a1,s9
   1864a:	4605                	li	a2,1
   1864c:	8522                	mv	a0,s0
   1864e:	d446                	sw	a7,40(sp)
   18650:	c81a                	sw	t1,16(sp)
   18652:	3ef000ef          	jal	19240 <__lshift>
   18656:	8caa                	mv	s9,a0
   18658:	88050fe3          	beqz	a0,17ef6 <__gdtoa+0x540>
   1865c:	85ea                	mv	a1,s10
   1865e:	4f1000ef          	jal	1934e <__mcmp>
   18662:	4342                	lw	t1,16(sp)
   18664:	58a2                	lw	a7,40(sp)
   18666:	22a05e63          	blez	a0,188a2 <__gdtoa+0xeec>
   1866a:	03900693          	li	a3,57
   1866e:	e4d307e3          	beq	t1,a3,184bc <__gdtoa+0xb06>
   18672:	02000793          	li	a5,32
   18676:	03190313          	addi	t1,s2,49
   1867a:	d03e                	sw	a5,32(sp)
   1867c:	b655                	j	18220 <__gdtoa+0x86a>
   1867e:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   18682:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe0413>
   18686:	a2f715d3          	flt.d	a1,fa4,fa5
   1868a:	9e059ae3          	bnez	a1,1807e <__gdtoa+0x6c8>
   1868e:	a2e7a5d3          	feq.d	a1,fa5,fa4
   18692:	c581                	beqz	a1,1869a <__gdtoa+0xce4>
   18694:	8b85                	andi	a5,a5,1
   18696:	9e0794e3          	bnez	a5,1807e <__gdtoa+0x6c8>
   1869a:	87b2                	mv	a5,a2
   1869c:	4b41                	li	s6,16
   1869e:	03000593          	li	a1,48
   186a2:	fff7c703          	lbu	a4,-1(a5)
   186a6:	863e                	mv	a2,a5
   186a8:	17fd                	addi	a5,a5,-1
   186aa:	feb70ce3          	beq	a4,a1,186a2 <__gdtoa+0xcec>
   186ae:	892a                	mv	s2,a0
   186b0:	bcf9                	j	1818e <__gdtoa+0x7d8>
   186b2:	03100693          	li	a3,49
   186b6:	0505                	addi	a0,a0,1
   186b8:	b2d5                	j	1809c <__gdtoa+0x6e6>
   186ba:	de32                	sw	a2,60(sp)
   186bc:	dc1a                	sw	t1,56(sp)
   186be:	3762                	fld	fa4,56(sp)
   186c0:	de7e                	sw	t6,60(sp)
   186c2:	dc7a                	sw	t5,56(sp)
   186c4:	35e2                	fld	fa1,56(sp)
   186c6:	12e7f653          	fmul.d	fa2,fa5,fa4
   186ca:	ee01b707          	fld	fa4,-288(gp) # 1f880 <__SDATA_BEGIN__+0x38>
   186ce:	4685                	li	a3,1
   186d0:	22b587d3          	fmv.d	fa5,fa1
   186d4:	d6b6                	sw	a3,108(sp)
   186d6:	8646                	mv	a2,a7
   186d8:	4f81                	li	t6,0
   186da:	a029                	j	186e4 <__gdtoa+0xd2e>
   186dc:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   186e0:	d6ba                	sw	a4,108(sp)
   186e2:	4f85                	li	t6,1
   186e4:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   186e8:	0605                	addi	a2,a2,1
   186ea:	03078693          	addi	a3,a5,48
   186ee:	0ff6f693          	zext.b	a3,a3
   186f2:	c791                	beqz	a5,186fe <__gdtoa+0xd48>
   186f4:	d20786d3          	fcvt.d.w	fa3,a5
   186f8:	4f85                	li	t6,1
   186fa:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   186fe:	fed60fa3          	sb	a3,-1(a2)
   18702:	57b6                	lw	a5,108(sp)
   18704:	00178713          	addi	a4,a5,1
   18708:	fca79ae3          	bne	a5,a0,186dc <__gdtoa+0xd26>
   1870c:	000f8463          	beqz	t6,18714 <__gdtoa+0xd5e>
   18710:	22f785d3          	fmv.d	fa1,fa5
   18714:	f081b787          	fld	fa5,-248(gp) # 1f8a8 <__SDATA_BEGIN__+0x60>
   18718:	02f67753          	fadd.d	fa4,fa2,fa5
   1871c:	a2b71553          	flt.d	a0,fa4,fa1
   18720:	0e051f63          	bnez	a0,1881e <__gdtoa+0xe68>
   18724:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
   18728:	a2f596d3          	flt.d	a3,fa1,fa5
   1872c:	12069763          	bnez	a3,1885a <__gdtoa+0xea4>
   18730:	5f02                	lw	t5,32(sp)
   18732:	5f92                	lw	t6,36(sp)
   18734:	e80c57e3          	bgez	s8,185c2 <__gdtoa+0xc0c>
   18738:	47e2                	lw	a5,24(sp)
   1873a:	5d42                	lw	s10,48(sp)
   1873c:	d002                	sw	zero,32(sp)
   1873e:	dc3e                	sw	a5,56(sp)
   18740:	4c01                	li	s8,0
   18742:	d1aff06f          	j	17c5c <__gdtoa+0x2a6>
   18746:	835e                	mv	t1,s7
   18748:	89e2                	mv	s3,s8
   1874a:	58a2                	lw	a7,40(sp)
   1874c:	4be2                	lw	s7,24(sp)
   1874e:	54b2                	lw	s1,44(sp)
   18750:	8c52                	mv	s8,s4
   18752:	be7d                	j	18310 <__gdtoa+0x95a>
   18754:	e20782e3          	beqz	a5,18578 <__gdtoa+0xbc2>
   18758:	4576                	lw	a0,92(sp)
   1875a:	e4a05fe3          	blez	a0,185b8 <__gdtoa+0xc02>
   1875e:	ee01b787          	fld	fa5,-288(gp) # 1f880 <__SDATA_BEGIN__+0x38>
   18762:	53fd                	li	t2,-1
   18764:	12f777d3          	fmul.d	fa5,fa4,fa5
   18768:	ee81b707          	fld	fa4,-280(gp) # 1f888 <__SDATA_BEGIN__+0x40>
   1876c:	bc3e                	fsd	fa5,56(sp)
   1876e:	36e2                	fld	fa3,56(sp)
   18770:	ef01b787          	fld	fa5,-272(gp) # 1f890 <__SDATA_BEGIN__+0x48>
   18774:	fcc00637          	lui	a2,0xfcc00
   18778:	5f62                	lw	t5,56(sp)
   1877a:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   1877e:	5ff2                	lw	t6,60(sp)
   18780:	a0be                	fsd	fa5,64(sp)
   18782:	4706                	lw	a4,64(sp)
   18784:	4796                	lw	a5,68(sp)
   18786:	833a                	mv	t1,a4
   18788:	963e                	add	a2,a2,a5
   1878a:	857ff06f          	j	17fe0 <__gdtoa+0x62a>
   1878e:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe0413>
   18792:	b0f5                	j	1807e <__gdtoa+0x6c8>
   18794:	4909                	li	s2,2
   18796:	4581                	li	a1,0
   18798:	4c01                	li	s8,0
   1879a:	b119                	j	183a0 <__gdtoa+0x9ea>
   1879c:	4762                	lw	a4,24(sp)
   1879e:	d6be                	sw	a5,108(sp)
   187a0:	9ebe                	add	t4,t4,a5
   187a2:	97ba                	add	a5,a5,a4
   187a4:	dc3a                	sw	a4,56(sp)
   187a6:	cc3e                	sw	a5,24(sp)
   187a8:	c9aff06f          	j	17c42 <__gdtoa+0x28c>
   187ac:	835e                	mv	t1,s7
   187ae:	03900693          	li	a3,57
   187b2:	58a2                	lw	a7,40(sp)
   187b4:	4be2                	lw	s7,24(sp)
   187b6:	54b2                	lw	s1,44(sp)
   187b8:	d0d302e3          	beq	t1,a3,184bc <__gdtoa+0xb06>
   187bc:	0305                	addi	t1,t1,1
   187be:	89e2                	mv	s3,s8
   187c0:	001d8613          	addi	a2,s11,1
   187c4:	006d8023          	sb	t1,0(s11)
   187c8:	8c52                	mv	s8,s4
   187ca:	02000b13          	li	s6,32
   187ce:	b4b5                	j	1823a <__gdtoa+0x884>
   187d0:	57d2                	lw	a5,52(sp)
   187d2:	4581                	li	a1,0
   187d4:	4c01                	li	s8,0
   187d6:	00278913          	addi	s2,a5,2
   187da:	b6d9                	j	183a0 <__gdtoa+0x9ea>
   187dc:	85e2                	mv	a1,s8
   187de:	4681                	li	a3,0
   187e0:	4629                	li	a2,10
   187e2:	8522                	mv	a0,s0
   187e4:	2321                	jal	18cec <__multadd>
   187e6:	8c2a                	mv	s8,a0
   187e8:	f0050763          	beqz	a0,17ef6 <__gdtoa+0x540>
   187ec:	47f6                	lw	a5,92(sp)
   187ee:	4842                	lw	a6,16(sp)
   187f0:	48e2                	lw	a7,24(sp)
   187f2:	00f05563          	blez	a5,187fc <__gdtoa+0xe46>
   187f6:	d63e                	sw	a5,44(sp)
   187f8:	d06ff06f          	j	17cfe <__gdtoa+0x348>
   187fc:	4789                	li	a5,2
   187fe:	0927cf63          	blt	a5,s2,1889c <__gdtoa+0xee6>
   18802:	47f6                	lw	a5,92(sp)
   18804:	d63e                	sw	a5,44(sp)
   18806:	cf8ff06f          	j	17cfe <__gdtoa+0x348>
   1880a:	d2000753          	fcvt.d.w	fa4,zero
   1880e:	00138913          	addi	s2,t2,1
   18812:	a2e7ab53          	feq.d	s6,fa5,fa4
   18816:	001b3b13          	seqz	s6,s6
   1881a:	0b12                	slli	s6,s6,0x4
   1881c:	ba8d                	j	1818e <__gdtoa+0x7d8>
   1881e:	00138513          	addi	a0,t2,1
   18822:	85dff06f          	j	1807e <__gdtoa+0x6c8>
   18826:	5f02                	lw	t5,32(sp)
   18828:	5f92                	lw	t6,36(sp)
   1882a:	d80c5ce3          	bgez	s8,185c2 <__gdtoa+0xc0c>
   1882e:	d002                	sw	zero,32(sp)
   18830:	bccff06f          	j	17bfc <__gdtoa+0x246>
   18834:	57b2                	lw	a5,44(sp)
   18836:	5742                	lw	a4,48(sp)
   18838:	fff78693          	addi	a3,a5,-1
   1883c:	c0d74ee3          	blt	a4,a3,18458 <__gdtoa+0xaa2>
   18840:	4662                	lw	a2,24(sp)
   18842:	9ebe                	add	t4,t4,a5
   18844:	d6be                	sw	a5,108(sp)
   18846:	97b2                	add	a5,a5,a2
   18848:	dc32                	sw	a2,56(sp)
   1884a:	40d70d33          	sub	s10,a4,a3
   1884e:	cc3e                	sw	a5,24(sp)
   18850:	bf2ff06f          	j	17c42 <__gdtoa+0x28c>
   18854:	d002                	sw	zero,32(sp)
   18856:	ba0ff06f          	j	17bf6 <__gdtoa+0x240>
   1885a:	d20007d3          	fcvt.d.w	fa5,zero
   1885e:	87b2                	mv	a5,a2
   18860:	00138513          	addi	a0,t2,1
   18864:	a2f5ab53          	feq.d	s6,fa1,fa5
   18868:	001b3b13          	seqz	s6,s6
   1886c:	0b12                	slli	s6,s6,0x4
   1886e:	bd05                	j	1869e <__gdtoa+0xce8>
   18870:	835e                	mv	t1,s7
   18872:	03900693          	li	a3,57
   18876:	8926                	mv	s2,s1
   18878:	58a2                	lw	a7,40(sp)
   1887a:	4be2                	lw	s7,24(sp)
   1887c:	54b2                	lw	s1,44(sp)
   1887e:	c2d30fe3          	beq	t1,a3,184bc <__gdtoa+0xb06>
   18882:	07505d63          	blez	s5,188fc <__gdtoa+0xf46>
   18886:	03190313          	addi	t1,s2,49
   1888a:	02000b13          	li	s6,32
   1888e:	89e2                	mv	s3,s8
   18890:	001d8613          	addi	a2,s11,1
   18894:	006d8023          	sb	t1,0(s11)
   18898:	8c52                	mv	s8,s4
   1889a:	b245                	j	1823a <__gdtoa+0x884>
   1889c:	47f6                	lw	a5,92(sp)
   1889e:	d63e                	sw	a5,44(sp)
   188a0:	b4f9                	j	1836e <__gdtoa+0x9b8>
   188a2:	e509                	bnez	a0,188ac <__gdtoa+0xef6>
   188a4:	00137693          	andi	a3,t1,1
   188a8:	dc0691e3          	bnez	a3,1866a <__gdtoa+0xcb4>
   188ac:	02000793          	li	a5,32
   188b0:	d03e                	sw	a5,32(sp)
   188b2:	b2bd                	j	18220 <__gdtoa+0x86a>
   188b4:	014ca683          	lw	a3,20(s9)
   188b8:	96069ce3          	bnez	a3,18230 <__gdtoa+0x87a>
   188bc:	5b02                	lw	s6,32(sp)
   188be:	ba8d                	j	18230 <__gdtoa+0x87a>
   188c0:	03900693          	li	a3,57
   188c4:	88da                	mv	a7,s6
   188c6:	00da8b63          	beq	s5,a3,188dc <__gdtoa+0xf26>
   188ca:	001a8313          	addi	t1,s5,1
   188ce:	02000b13          	li	s6,32
   188d2:	bab9                	j	18230 <__gdtoa+0x87a>
   188d4:	4b41                	li	s6,16
   188d6:	001d8913          	addi	s2,s11,1
   188da:	ba99                	j	18230 <__gdtoa+0x87a>
   188dc:	89e2                	mv	s3,s8
   188de:	86ee                	mv	a3,s11
   188e0:	8c52                	mv	s8,s4
   188e2:	b6d5                	j	184c6 <__gdtoa+0xb10>
   188e4:	010ca603          	lw	a2,16(s9)
   188e8:	4685                	li	a3,1
   188ea:	d0c6ca63          	blt	a3,a2,17dfe <__gdtoa+0x448>
   188ee:	014ca683          	lw	a3,20(s9)
   188f2:	d0069663          	bnez	a3,17dfe <__gdtoa+0x448>
   188f6:	001d8913          	addi	s2,s11,1
   188fa:	ba1d                	j	18230 <__gdtoa+0x87a>
   188fc:	010ca603          	lw	a2,16(s9)
   18900:	4685                	li	a3,1
   18902:	4b41                	li	s6,16
   18904:	f8c6c5e3          	blt	a3,a2,1888e <__gdtoa+0xed8>
   18908:	014cab03          	lw	s6,20(s9)
   1890c:	01603b33          	snez	s6,s6
   18910:	0b12                	slli	s6,s6,0x4
   18912:	bfb5                	j	1888e <__gdtoa+0xed8>
   18914:	000ace63          	bltz	s5,18930 <__gdtoa+0xf7a>
   18918:	01596ab3          	or	s5,s2,s5
   1891c:	000a9663          	bnez	s5,18928 <__gdtoa+0xf72>
   18920:	0009a783          	lw	a5,0(s3)
   18924:	8b85                	andi	a5,a5,1
   18926:	c789                	beqz	a5,18930 <__gdtoa+0xf7a>
   18928:	c0d05c63          	blez	a3,17d40 <__gdtoa+0x38a>
   1892c:	c0cff06f          	j	17d38 <__gdtoa+0x382>
   18930:	5782                	lw	a5,32(sp)
   18932:	8926                	mv	s2,s1
   18934:	835e                	mv	t1,s7
   18936:	58a2                	lw	a7,40(sp)
   18938:	4be2                	lw	s7,24(sp)
   1893a:	54b2                	lw	s1,44(sp)
   1893c:	c385                	beqz	a5,1895c <__gdtoa+0xfa6>
   1893e:	010ca583          	lw	a1,16(s9)
   18942:	4605                	li	a2,1
   18944:	cab64d63          	blt	a2,a1,17dfe <__gdtoa+0x448>
   18948:	014ca603          	lw	a2,20(s9)
   1894c:	ca061963          	bnez	a2,17dfe <__gdtoa+0x448>
   18950:	ced04ce3          	bgtz	a3,18648 <__gdtoa+0xc92>
   18954:	4b01                	li	s6,0
   18956:	001d8913          	addi	s2,s11,1
   1895a:	b8d9                	j	18230 <__gdtoa+0x87a>
   1895c:	8cd052e3          	blez	a3,18220 <__gdtoa+0x86a>
   18960:	b1e5                	j	18648 <__gdtoa+0xc92>

00018962 <__rv_alloc_D2A.part.0>:
   18962:	66f9                	lui	a3,0x1e
   18964:	6579                	lui	a0,0x1e
   18966:	1141                	addi	sp,sp,-16
   18968:	99068693          	addi	a3,a3,-1648 # 1d990 <__clzsi2+0xd8>
   1896c:	4601                	li	a2,0
   1896e:	03900593          	li	a1,57
   18972:	9a450513          	addi	a0,a0,-1628 # 1d9a4 <__clzsi2+0xec>
   18976:	c606                	sw	ra,12(sp)
   18978:	684010ef          	jal	19ffc <__assert_func>

0001897c <__rv_alloc_D2A>:
   1897c:	1141                	addi	sp,sp,-16
   1897e:	c422                	sw	s0,8(sp)
   18980:	c606                	sw	ra,12(sp)
   18982:	46dd                	li	a3,23
   18984:	842a                	mv	s0,a0
   18986:	4705                	li	a4,1
   18988:	4791                	li	a5,4
   1898a:	02b6f363          	bgeu	a3,a1,189b0 <__rv_alloc_D2A+0x34>
   1898e:	0786                	slli	a5,a5,0x1
   18990:	01478693          	addi	a3,a5,20
   18994:	863a                	mv	a2,a4
   18996:	0705                	addi	a4,a4,1
   18998:	fed5fbe3          	bgeu	a1,a3,1898e <__rv_alloc_D2A+0x12>
   1899c:	85b2                	mv	a1,a2
   1899e:	dc50                	sw	a2,60(s0)
   189a0:	8522                	mv	a0,s0
   189a2:	24f1                	jal	18c6e <_Balloc>
   189a4:	c911                	beqz	a0,189b8 <__rv_alloc_D2A+0x3c>
   189a6:	40b2                	lw	ra,12(sp)
   189a8:	dc08                	sw	a0,56(s0)
   189aa:	4422                	lw	s0,8(sp)
   189ac:	0141                	addi	sp,sp,16
   189ae:	8082                	ret
   189b0:	02052e23          	sw	zero,60(a0)
   189b4:	4581                	li	a1,0
   189b6:	b7ed                	j	189a0 <__rv_alloc_D2A+0x24>
   189b8:	376d                	jal	18962 <__rv_alloc_D2A.part.0>

000189ba <__nrv_alloc_D2A>:
   189ba:	1141                	addi	sp,sp,-16
   189bc:	c422                	sw	s0,8(sp)
   189be:	c226                	sw	s1,4(sp)
   189c0:	c04a                	sw	s2,0(sp)
   189c2:	c606                	sw	ra,12(sp)
   189c4:	485d                	li	a6,23
   189c6:	84aa                	mv	s1,a0
   189c8:	842e                	mv	s0,a1
   189ca:	8932                	mv	s2,a2
   189cc:	4705                	li	a4,1
   189ce:	4791                	li	a5,4
   189d0:	04d87763          	bgeu	a6,a3,18a1e <__nrv_alloc_D2A+0x64>
   189d4:	0786                	slli	a5,a5,0x1
   189d6:	01478813          	addi	a6,a5,20
   189da:	85ba                	mv	a1,a4
   189dc:	0705                	addi	a4,a4,1
   189de:	ff06fbe3          	bgeu	a3,a6,189d4 <__nrv_alloc_D2A+0x1a>
   189e2:	dccc                	sw	a1,60(s1)
   189e4:	8526                	mv	a0,s1
   189e6:	2461                	jal	18c6e <_Balloc>
   189e8:	c129                	beqz	a0,18a2a <__nrv_alloc_D2A+0x70>
   189ea:	dc88                	sw	a0,56(s1)
   189ec:	00044783          	lbu	a5,0(s0)
   189f0:	00140593          	addi	a1,s0,1
   189f4:	00f50023          	sb	a5,0(a0)
   189f8:	c79d                	beqz	a5,18a26 <__nrv_alloc_D2A+0x6c>
   189fa:	87aa                	mv	a5,a0
   189fc:	0005c703          	lbu	a4,0(a1)
   18a00:	0785                	addi	a5,a5,1
   18a02:	0585                	addi	a1,a1,1
   18a04:	00e78023          	sb	a4,0(a5)
   18a08:	fb75                	bnez	a4,189fc <__nrv_alloc_D2A+0x42>
   18a0a:	00090463          	beqz	s2,18a12 <__nrv_alloc_D2A+0x58>
   18a0e:	00f92023          	sw	a5,0(s2)
   18a12:	40b2                	lw	ra,12(sp)
   18a14:	4422                	lw	s0,8(sp)
   18a16:	4492                	lw	s1,4(sp)
   18a18:	4902                	lw	s2,0(sp)
   18a1a:	0141                	addi	sp,sp,16
   18a1c:	8082                	ret
   18a1e:	02052e23          	sw	zero,60(a0)
   18a22:	4581                	li	a1,0
   18a24:	b7c1                	j	189e4 <__nrv_alloc_D2A+0x2a>
   18a26:	87aa                	mv	a5,a0
   18a28:	b7cd                	j	18a0a <__nrv_alloc_D2A+0x50>
   18a2a:	3f25                	jal	18962 <__rv_alloc_D2A.part.0>

00018a2c <__freedtoa>:
   18a2c:	5d54                	lw	a3,60(a0)
   18a2e:	4705                	li	a4,1
   18a30:	00d71733          	sll	a4,a4,a3
   18a34:	c1d4                	sw	a3,4(a1)
   18a36:	c598                	sw	a4,8(a1)
   18a38:	a44d                	j	18cda <_Bfree>

00018a3a <__quorem_D2A>:
   18a3a:	1101                	addi	sp,sp,-32
   18a3c:	ca26                	sw	s1,20(sp)
   18a3e:	491c                	lw	a5,16(a0)
   18a40:	4984                	lw	s1,16(a1)
   18a42:	ce06                	sw	ra,28(sp)
   18a44:	1497c163          	blt	a5,s1,18b86 <__quorem_D2A+0x14c>
   18a48:	14fd                	addi	s1,s1,-1
   18a4a:	00249313          	slli	t1,s1,0x2
   18a4e:	cc22                	sw	s0,24(sp)
   18a50:	01458413          	addi	s0,a1,20
   18a54:	c64e                	sw	s3,12(sp)
   18a56:	c452                	sw	s4,8(sp)
   18a58:	006409b3          	add	s3,s0,t1
   18a5c:	01450a13          	addi	s4,a0,20
   18a60:	0009a783          	lw	a5,0(s3)
   18a64:	9352                	add	t1,t1,s4
   18a66:	00032703          	lw	a4,0(t1)
   18a6a:	c84a                	sw	s2,16(sp)
   18a6c:	c256                	sw	s5,4(sp)
   18a6e:	0785                	addi	a5,a5,1
   18a70:	02f75933          	divu	s2,a4,a5
   18a74:	8aaa                	mv	s5,a0
   18a76:	08f76663          	bltu	a4,a5,18b02 <__quorem_D2A+0xc8>
   18a7a:	6541                	lui	a0,0x10
   18a7c:	88a2                	mv	a7,s0
   18a7e:	8852                	mv	a6,s4
   18a80:	4f01                	li	t5,0
   18a82:	4e81                	li	t4,0
   18a84:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   18a86:	0008a783          	lw	a5,0(a7)
   18a8a:	00082603          	lw	a2,0(a6)
   18a8e:	0811                	addi	a6,a6,4
   18a90:	00a7f6b3          	and	a3,a5,a0
   18a94:	83c1                	srli	a5,a5,0x10
   18a96:	00a67733          	and	a4,a2,a0
   18a9a:	01065e13          	srli	t3,a2,0x10
   18a9e:	0891                	addi	a7,a7,4
   18aa0:	032686b3          	mul	a3,a3,s2
   18aa4:	032787b3          	mul	a5,a5,s2
   18aa8:	96fa                	add	a3,a3,t5
   18aaa:	00a6f633          	and	a2,a3,a0
   18aae:	8f11                	sub	a4,a4,a2
   18ab0:	41d70733          	sub	a4,a4,t4
   18ab4:	82c1                	srli	a3,a3,0x10
   18ab6:	01075613          	srli	a2,a4,0x10
   18aba:	8a05                	andi	a2,a2,1
   18abc:	8f69                	and	a4,a4,a0
   18abe:	97b6                	add	a5,a5,a3
   18ac0:	00a7f6b3          	and	a3,a5,a0
   18ac4:	9636                	add	a2,a2,a3
   18ac6:	40ce06b3          	sub	a3,t3,a2
   18aca:	01069613          	slli	a2,a3,0x10
   18ace:	8f51                	or	a4,a4,a2
   18ad0:	82c1                	srli	a3,a3,0x10
   18ad2:	fee82e23          	sw	a4,-4(a6)
   18ad6:	0107df13          	srli	t5,a5,0x10
   18ada:	0016fe93          	andi	t4,a3,1
   18ade:	fb19f4e3          	bgeu	s3,a7,18a86 <__quorem_D2A+0x4c>
   18ae2:	00032783          	lw	a5,0(t1)
   18ae6:	ef91                	bnez	a5,18b02 <__quorem_D2A+0xc8>
   18ae8:	1371                	addi	t1,t1,-4
   18aea:	006a6663          	bltu	s4,t1,18af6 <__quorem_D2A+0xbc>
   18aee:	a801                	j	18afe <__quorem_D2A+0xc4>
   18af0:	14fd                	addi	s1,s1,-1
   18af2:	006a7663          	bgeu	s4,t1,18afe <__quorem_D2A+0xc4>
   18af6:	00032783          	lw	a5,0(t1)
   18afa:	1371                	addi	t1,t1,-4
   18afc:	dbf5                	beqz	a5,18af0 <__quorem_D2A+0xb6>
   18afe:	009aa823          	sw	s1,16(s5)
   18b02:	8556                	mv	a0,s5
   18b04:	04b000ef          	jal	1934e <__mcmp>
   18b08:	06054563          	bltz	a0,18b72 <__quorem_D2A+0x138>
   18b0c:	6541                	lui	a0,0x10
   18b0e:	85d2                	mv	a1,s4
   18b10:	4681                	li	a3,0
   18b12:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   18b14:	419c                	lw	a5,0(a1)
   18b16:	4010                	lw	a2,0(s0)
   18b18:	0591                	addi	a1,a1,4
   18b1a:	00a7f733          	and	a4,a5,a0
   18b1e:	00a67833          	and	a6,a2,a0
   18b22:	41070733          	sub	a4,a4,a6
   18b26:	8f15                	sub	a4,a4,a3
   18b28:	01075693          	srli	a3,a4,0x10
   18b2c:	8a85                	andi	a3,a3,1
   18b2e:	8241                	srli	a2,a2,0x10
   18b30:	96b2                	add	a3,a3,a2
   18b32:	83c1                	srli	a5,a5,0x10
   18b34:	8f95                	sub	a5,a5,a3
   18b36:	01079693          	slli	a3,a5,0x10
   18b3a:	8f69                	and	a4,a4,a0
   18b3c:	8f55                	or	a4,a4,a3
   18b3e:	83c1                	srli	a5,a5,0x10
   18b40:	0411                	addi	s0,s0,4
   18b42:	fee5ae23          	sw	a4,-4(a1)
   18b46:	0017f693          	andi	a3,a5,1
   18b4a:	fc89f5e3          	bgeu	s3,s0,18b14 <__quorem_D2A+0xda>
   18b4e:	00249793          	slli	a5,s1,0x2
   18b52:	97d2                	add	a5,a5,s4
   18b54:	4398                	lw	a4,0(a5)
   18b56:	ef09                	bnez	a4,18b70 <__quorem_D2A+0x136>
   18b58:	17f1                	addi	a5,a5,-4
   18b5a:	00fa6663          	bltu	s4,a5,18b66 <__quorem_D2A+0x12c>
   18b5e:	a039                	j	18b6c <__quorem_D2A+0x132>
   18b60:	14fd                	addi	s1,s1,-1
   18b62:	00fa7563          	bgeu	s4,a5,18b6c <__quorem_D2A+0x132>
   18b66:	4398                	lw	a4,0(a5)
   18b68:	17f1                	addi	a5,a5,-4
   18b6a:	db7d                	beqz	a4,18b60 <__quorem_D2A+0x126>
   18b6c:	009aa823          	sw	s1,16(s5)
   18b70:	0905                	addi	s2,s2,1
   18b72:	4462                	lw	s0,24(sp)
   18b74:	40f2                	lw	ra,28(sp)
   18b76:	49b2                	lw	s3,12(sp)
   18b78:	4a22                	lw	s4,8(sp)
   18b7a:	4a92                	lw	s5,4(sp)
   18b7c:	44d2                	lw	s1,20(sp)
   18b7e:	854a                	mv	a0,s2
   18b80:	4942                	lw	s2,16(sp)
   18b82:	6105                	addi	sp,sp,32
   18b84:	8082                	ret
   18b86:	40f2                	lw	ra,28(sp)
   18b88:	44d2                	lw	s1,20(sp)
   18b8a:	4501                	li	a0,0
   18b8c:	6105                	addi	sp,sp,32
   18b8e:	8082                	ret

00018b90 <__rshift_D2A>:
   18b90:	01052803          	lw	a6,16(a0)
   18b94:	4055de13          	srai	t3,a1,0x5
   18b98:	010e4763          	blt	t3,a6,18ba6 <__rshift_D2A+0x16>
   18b9c:	00052823          	sw	zero,16(a0)
   18ba0:	00052a23          	sw	zero,20(a0)
   18ba4:	8082                	ret
   18ba6:	01450313          	addi	t1,a0,20
   18baa:	00281613          	slli	a2,a6,0x2
   18bae:	002e1793          	slli	a5,t3,0x2
   18bb2:	89fd                	andi	a1,a1,31
   18bb4:	961a                	add	a2,a2,t1
   18bb6:	979a                	add	a5,a5,t1
   18bb8:	c5a1                	beqz	a1,18c00 <__rshift_D2A+0x70>
   18bba:	4394                	lw	a3,0(a5)
   18bbc:	02000e93          	li	t4,32
   18bc0:	0791                	addi	a5,a5,4
   18bc2:	40be8eb3          	sub	t4,t4,a1
   18bc6:	00b6d6b3          	srl	a3,a3,a1
   18bca:	06c7f063          	bgeu	a5,a2,18c2a <__rshift_D2A+0x9a>
   18bce:	889a                	mv	a7,t1
   18bd0:	4398                	lw	a4,0(a5)
   18bd2:	0891                	addi	a7,a7,4
   18bd4:	0791                	addi	a5,a5,4
   18bd6:	01d71733          	sll	a4,a4,t4
   18bda:	8f55                	or	a4,a4,a3
   18bdc:	fee8ae23          	sw	a4,-4(a7)
   18be0:	ffc7a683          	lw	a3,-4(a5)
   18be4:	00b6d6b3          	srl	a3,a3,a1
   18be8:	fec7e4e3          	bltu	a5,a2,18bd0 <__rshift_D2A+0x40>
   18bec:	41c80833          	sub	a6,a6,t3
   18bf0:	080a                	slli	a6,a6,0x2
   18bf2:	1871                	addi	a6,a6,-4
   18bf4:	981a                	add	a6,a6,t1
   18bf6:	00d82023          	sw	a3,0(a6)
   18bfa:	c28d                	beqz	a3,18c1c <__rshift_D2A+0x8c>
   18bfc:	0811                	addi	a6,a6,4
   18bfe:	a839                	j	18c1c <__rshift_D2A+0x8c>
   18c00:	871a                	mv	a4,t1
   18c02:	f8c7fde3          	bgeu	a5,a2,18b9c <__rshift_D2A+0xc>
   18c06:	4394                	lw	a3,0(a5)
   18c08:	0791                	addi	a5,a5,4
   18c0a:	0711                	addi	a4,a4,4
   18c0c:	fed72e23          	sw	a3,-4(a4)
   18c10:	fec7ebe3          	bltu	a5,a2,18c06 <__rshift_D2A+0x76>
   18c14:	41c80833          	sub	a6,a6,t3
   18c18:	080a                	slli	a6,a6,0x2
   18c1a:	981a                	add	a6,a6,t1
   18c1c:	406807b3          	sub	a5,a6,t1
   18c20:	8789                	srai	a5,a5,0x2
   18c22:	c91c                	sw	a5,16(a0)
   18c24:	f6680ee3          	beq	a6,t1,18ba0 <__rshift_D2A+0x10>
   18c28:	8082                	ret
   18c2a:	c954                	sw	a3,20(a0)
   18c2c:	daa5                	beqz	a3,18b9c <__rshift_D2A+0xc>
   18c2e:	881a                	mv	a6,t1
   18c30:	0811                	addi	a6,a6,4
   18c32:	b7ed                	j	18c1c <__rshift_D2A+0x8c>

00018c34 <__trailz_D2A>:
   18c34:	4918                	lw	a4,16(a0)
   18c36:	1101                	addi	sp,sp,-32
   18c38:	0551                	addi	a0,a0,20
   18c3a:	070a                	slli	a4,a4,0x2
   18c3c:	cc22                	sw	s0,24(sp)
   18c3e:	ce06                	sw	ra,28(sp)
   18c40:	972a                	add	a4,a4,a0
   18c42:	4401                	li	s0,0
   18c44:	00e56863          	bltu	a0,a4,18c54 <__trailz_D2A+0x20>
   18c48:	a831                	j	18c64 <__trailz_D2A+0x30>
   18c4a:	0511                	addi	a0,a0,4
   18c4c:	02040413          	addi	s0,s0,32
   18c50:	00e57a63          	bgeu	a0,a4,18c64 <__trailz_D2A+0x30>
   18c54:	411c                	lw	a5,0(a0)
   18c56:	dbf5                	beqz	a5,18c4a <__trailz_D2A+0x16>
   18c58:	00e57663          	bgeu	a0,a4,18c64 <__trailz_D2A+0x30>
   18c5c:	0068                	addi	a0,sp,12
   18c5e:	c63e                	sw	a5,12(sp)
   18c60:	2451                	jal	18ee4 <__lo0bits>
   18c62:	942a                	add	s0,s0,a0
   18c64:	40f2                	lw	ra,28(sp)
   18c66:	8522                	mv	a0,s0
   18c68:	4462                	lw	s0,24(sp)
   18c6a:	6105                	addi	sp,sp,32
   18c6c:	8082                	ret

00018c6e <_Balloc>:
   18c6e:	417c                	lw	a5,68(a0)
   18c70:	1141                	addi	sp,sp,-16
   18c72:	c422                	sw	s0,8(sp)
   18c74:	c226                	sw	s1,4(sp)
   18c76:	c606                	sw	ra,12(sp)
   18c78:	842a                	mv	s0,a0
   18c7a:	84ae                	mv	s1,a1
   18c7c:	c38d                	beqz	a5,18c9e <_Balloc+0x30>
   18c7e:	00249713          	slli	a4,s1,0x2
   18c82:	97ba                	add	a5,a5,a4
   18c84:	4388                	lw	a0,0(a5)
   18c86:	c515                	beqz	a0,18cb2 <_Balloc+0x44>
   18c88:	4118                	lw	a4,0(a0)
   18c8a:	c398                	sw	a4,0(a5)
   18c8c:	00052823          	sw	zero,16(a0)
   18c90:	00052623          	sw	zero,12(a0)
   18c94:	40b2                	lw	ra,12(sp)
   18c96:	4422                	lw	s0,8(sp)
   18c98:	4492                	lw	s1,4(sp)
   18c9a:	0141                	addi	sp,sp,16
   18c9c:	8082                	ret
   18c9e:	02100613          	li	a2,33
   18ca2:	4591                	li	a1,4
   18ca4:	39c010ef          	jal	1a040 <_calloc_r>
   18ca8:	c068                	sw	a0,68(s0)
   18caa:	87aa                	mv	a5,a0
   18cac:	f969                	bnez	a0,18c7e <_Balloc+0x10>
   18cae:	4501                	li	a0,0
   18cb0:	b7d5                	j	18c94 <_Balloc+0x26>
   18cb2:	c04a                	sw	s2,0(sp)
   18cb4:	4905                	li	s2,1
   18cb6:	00991933          	sll	s2,s2,s1
   18cba:	00590613          	addi	a2,s2,5
   18cbe:	060a                	slli	a2,a2,0x2
   18cc0:	4585                	li	a1,1
   18cc2:	8522                	mv	a0,s0
   18cc4:	37c010ef          	jal	1a040 <_calloc_r>
   18cc8:	c511                	beqz	a0,18cd4 <_Balloc+0x66>
   18cca:	01252423          	sw	s2,8(a0)
   18cce:	c144                	sw	s1,4(a0)
   18cd0:	4902                	lw	s2,0(sp)
   18cd2:	bf6d                	j	18c8c <_Balloc+0x1e>
   18cd4:	4902                	lw	s2,0(sp)
   18cd6:	4501                	li	a0,0
   18cd8:	bf75                	j	18c94 <_Balloc+0x26>

00018cda <_Bfree>:
   18cda:	c981                	beqz	a1,18cea <_Bfree+0x10>
   18cdc:	41d8                	lw	a4,4(a1)
   18cde:	417c                	lw	a5,68(a0)
   18ce0:	070a                	slli	a4,a4,0x2
   18ce2:	97ba                	add	a5,a5,a4
   18ce4:	4398                	lw	a4,0(a5)
   18ce6:	c198                	sw	a4,0(a1)
   18ce8:	c38c                	sw	a1,0(a5)
   18cea:	8082                	ret

00018cec <__multadd>:
   18cec:	1101                	addi	sp,sp,-32
   18cee:	ca26                	sw	s1,20(sp)
   18cf0:	4984                	lw	s1,16(a1)
   18cf2:	6341                	lui	t1,0x10
   18cf4:	cc22                	sw	s0,24(sp)
   18cf6:	c84a                	sw	s2,16(sp)
   18cf8:	c64e                	sw	s3,12(sp)
   18cfa:	ce06                	sw	ra,28(sp)
   18cfc:	892e                	mv	s2,a1
   18cfe:	89aa                	mv	s3,a0
   18d00:	8436                	mv	s0,a3
   18d02:	01458813          	addi	a6,a1,20
   18d06:	4881                	li	a7,0
   18d08:	137d                	addi	t1,t1,-1 # ffff <exit-0x95>
   18d0a:	00082783          	lw	a5,0(a6)
   18d0e:	0811                	addi	a6,a6,4
   18d10:	0885                	addi	a7,a7,1
   18d12:	0067f733          	and	a4,a5,t1
   18d16:	02c70733          	mul	a4,a4,a2
   18d1a:	0107d693          	srli	a3,a5,0x10
   18d1e:	02c686b3          	mul	a3,a3,a2
   18d22:	008707b3          	add	a5,a4,s0
   18d26:	0107d713          	srli	a4,a5,0x10
   18d2a:	0067f7b3          	and	a5,a5,t1
   18d2e:	96ba                	add	a3,a3,a4
   18d30:	01069713          	slli	a4,a3,0x10
   18d34:	97ba                	add	a5,a5,a4
   18d36:	fef82e23          	sw	a5,-4(a6)
   18d3a:	0106d413          	srli	s0,a3,0x10
   18d3e:	fc98c6e3          	blt	a7,s1,18d0a <__multadd+0x1e>
   18d42:	cc09                	beqz	s0,18d5c <__multadd+0x70>
   18d44:	00892783          	lw	a5,8(s2)
   18d48:	02f4d263          	bge	s1,a5,18d6c <__multadd+0x80>
   18d4c:	00448793          	addi	a5,s1,4
   18d50:	078a                	slli	a5,a5,0x2
   18d52:	97ca                	add	a5,a5,s2
   18d54:	c3c0                	sw	s0,4(a5)
   18d56:	0485                	addi	s1,s1,1
   18d58:	00992823          	sw	s1,16(s2)
   18d5c:	40f2                	lw	ra,28(sp)
   18d5e:	4462                	lw	s0,24(sp)
   18d60:	44d2                	lw	s1,20(sp)
   18d62:	49b2                	lw	s3,12(sp)
   18d64:	854a                	mv	a0,s2
   18d66:	4942                	lw	s2,16(sp)
   18d68:	6105                	addi	sp,sp,32
   18d6a:	8082                	ret
   18d6c:	00492583          	lw	a1,4(s2)
   18d70:	854e                	mv	a0,s3
   18d72:	c452                	sw	s4,8(sp)
   18d74:	0585                	addi	a1,a1,1
   18d76:	3de5                	jal	18c6e <_Balloc>
   18d78:	8a2a                	mv	s4,a0
   18d7a:	c121                	beqz	a0,18dba <__multadd+0xce>
   18d7c:	01092603          	lw	a2,16(s2)
   18d80:	00c90593          	addi	a1,s2,12
   18d84:	0531                	addi	a0,a0,12
   18d86:	0609                	addi	a2,a2,2
   18d88:	060a                	slli	a2,a2,0x2
   18d8a:	ef0fe0ef          	jal	1747a <memcpy>
   18d8e:	00492703          	lw	a4,4(s2)
   18d92:	0449a783          	lw	a5,68(s3)
   18d96:	070a                	slli	a4,a4,0x2
   18d98:	97ba                	add	a5,a5,a4
   18d9a:	4398                	lw	a4,0(a5)
   18d9c:	00e92023          	sw	a4,0(s2)
   18da0:	0127a023          	sw	s2,0(a5)
   18da4:	00448793          	addi	a5,s1,4
   18da8:	8952                	mv	s2,s4
   18daa:	078a                	slli	a5,a5,0x2
   18dac:	97ca                	add	a5,a5,s2
   18dae:	4a22                	lw	s4,8(sp)
   18db0:	0485                	addi	s1,s1,1
   18db2:	c3c0                	sw	s0,4(a5)
   18db4:	00992823          	sw	s1,16(s2)
   18db8:	b755                	j	18d5c <__multadd+0x70>
   18dba:	66f9                	lui	a3,0x1e
   18dbc:	6579                	lui	a0,0x1e
   18dbe:	99068693          	addi	a3,a3,-1648 # 1d990 <__clzsi2+0xd8>
   18dc2:	4601                	li	a2,0
   18dc4:	0ba00593          	li	a1,186
   18dc8:	a0050513          	addi	a0,a0,-1536 # 1da00 <__clzsi2+0x148>
   18dcc:	230010ef          	jal	19ffc <__assert_func>

00018dd0 <__s2b>:
   18dd0:	1101                	addi	sp,sp,-32
   18dd2:	cc22                	sw	s0,24(sp)
   18dd4:	ca26                	sw	s1,20(sp)
   18dd6:	c84a                	sw	s2,16(sp)
   18dd8:	c64e                	sw	s3,12(sp)
   18dda:	c452                	sw	s4,8(sp)
   18ddc:	89b6                	mv	s3,a3
   18dde:	47a5                	li	a5,9
   18de0:	06a1                	addi	a3,a3,8
   18de2:	ce06                	sw	ra,28(sp)
   18de4:	02f6c6b3          	div	a3,a3,a5
   18de8:	892a                	mv	s2,a0
   18dea:	842e                	mv	s0,a1
   18dec:	8a32                	mv	s4,a2
   18dee:	84ba                	mv	s1,a4
   18df0:	0937d263          	bge	a5,s3,18e74 <__s2b+0xa4>
   18df4:	4785                	li	a5,1
   18df6:	4581                	li	a1,0
   18df8:	0786                	slli	a5,a5,0x1
   18dfa:	0585                	addi	a1,a1,1
   18dfc:	fed7cee3          	blt	a5,a3,18df8 <__s2b+0x28>
   18e00:	854a                	mv	a0,s2
   18e02:	35b5                	jal	18c6e <_Balloc>
   18e04:	85aa                	mv	a1,a0
   18e06:	c92d                	beqz	a0,18e78 <__s2b+0xa8>
   18e08:	4785                	li	a5,1
   18e0a:	c91c                	sw	a5,16(a0)
   18e0c:	c944                	sw	s1,20(a0)
   18e0e:	47a5                	li	a5,9
   18e10:	0547df63          	bge	a5,s4,18e6e <__s2b+0x9e>
   18e14:	c256                	sw	s5,4(sp)
   18e16:	00940a93          	addi	s5,s0,9
   18e1a:	84d6                	mv	s1,s5
   18e1c:	9452                	add	s0,s0,s4
   18e1e:	0004c683          	lbu	a3,0(s1)
   18e22:	4629                	li	a2,10
   18e24:	854a                	mv	a0,s2
   18e26:	fd068693          	addi	a3,a3,-48
   18e2a:	35c9                	jal	18cec <__multadd>
   18e2c:	0485                	addi	s1,s1,1
   18e2e:	85aa                	mv	a1,a0
   18e30:	fe8497e3          	bne	s1,s0,18e1e <__s2b+0x4e>
   18e34:	ff8a0413          	addi	s0,s4,-8
   18e38:	9456                	add	s0,s0,s5
   18e3a:	4a92                	lw	s5,4(sp)
   18e3c:	033a5063          	bge	s4,s3,18e5c <__s2b+0x8c>
   18e40:	414989b3          	sub	s3,s3,s4
   18e44:	99a2                	add	s3,s3,s0
   18e46:	00044683          	lbu	a3,0(s0)
   18e4a:	4629                	li	a2,10
   18e4c:	854a                	mv	a0,s2
   18e4e:	fd068693          	addi	a3,a3,-48
   18e52:	3d69                	jal	18cec <__multadd>
   18e54:	0405                	addi	s0,s0,1
   18e56:	85aa                	mv	a1,a0
   18e58:	ff3417e3          	bne	s0,s3,18e46 <__s2b+0x76>
   18e5c:	40f2                	lw	ra,28(sp)
   18e5e:	4462                	lw	s0,24(sp)
   18e60:	44d2                	lw	s1,20(sp)
   18e62:	4942                	lw	s2,16(sp)
   18e64:	49b2                	lw	s3,12(sp)
   18e66:	4a22                	lw	s4,8(sp)
   18e68:	852e                	mv	a0,a1
   18e6a:	6105                	addi	sp,sp,32
   18e6c:	8082                	ret
   18e6e:	0429                	addi	s0,s0,10
   18e70:	4a25                	li	s4,9
   18e72:	b7e9                	j	18e3c <__s2b+0x6c>
   18e74:	4581                	li	a1,0
   18e76:	b769                	j	18e00 <__s2b+0x30>
   18e78:	66f9                	lui	a3,0x1e
   18e7a:	6579                	lui	a0,0x1e
   18e7c:	99068693          	addi	a3,a3,-1648 # 1d990 <__clzsi2+0xd8>
   18e80:	4601                	li	a2,0
   18e82:	0d300593          	li	a1,211
   18e86:	a0050513          	addi	a0,a0,-1536 # 1da00 <__clzsi2+0x148>
   18e8a:	c256                	sw	s5,4(sp)
   18e8c:	170010ef          	jal	19ffc <__assert_func>

00018e90 <__hi0bits>:
   18e90:	87aa                	mv	a5,a0
   18e92:	6741                	lui	a4,0x10
   18e94:	4501                	li	a0,0
   18e96:	00e7f463          	bgeu	a5,a4,18e9e <__hi0bits+0xe>
   18e9a:	07c2                	slli	a5,a5,0x10
   18e9c:	4541                	li	a0,16
   18e9e:	01000737          	lui	a4,0x1000
   18ea2:	00e7f463          	bgeu	a5,a4,18eaa <__hi0bits+0x1a>
   18ea6:	0521                	addi	a0,a0,8
   18ea8:	07a2                	slli	a5,a5,0x8
   18eaa:	10000737          	lui	a4,0x10000
   18eae:	00e7f463          	bgeu	a5,a4,18eb6 <__hi0bits+0x26>
   18eb2:	0511                	addi	a0,a0,4
   18eb4:	0792                	slli	a5,a5,0x4
   18eb6:	40000737          	lui	a4,0x40000
   18eba:	00e7e763          	bltu	a5,a4,18ec8 <__hi0bits+0x38>
   18ebe:	fff7c793          	not	a5,a5
   18ec2:	83fd                	srli	a5,a5,0x1f
   18ec4:	953e                	add	a0,a0,a5
   18ec6:	8082                	ret
   18ec8:	078a                	slli	a5,a5,0x2
   18eca:	0007c963          	bltz	a5,18edc <__hi0bits+0x4c>
   18ece:	00179713          	slli	a4,a5,0x1
   18ed2:	00074763          	bltz	a4,18ee0 <__hi0bits+0x50>
   18ed6:	02000513          	li	a0,32
   18eda:	8082                	ret
   18edc:	0509                	addi	a0,a0,2
   18ede:	8082                	ret
   18ee0:	050d                	addi	a0,a0,3
   18ee2:	8082                	ret

00018ee4 <__lo0bits>:
   18ee4:	411c                	lw	a5,0(a0)
   18ee6:	872a                	mv	a4,a0
   18ee8:	0077f693          	andi	a3,a5,7
   18eec:	ce81                	beqz	a3,18f04 <__lo0bits+0x20>
   18eee:	0017f693          	andi	a3,a5,1
   18ef2:	4501                	li	a0,0
   18ef4:	ee95                	bnez	a3,18f30 <__lo0bits+0x4c>
   18ef6:	0027f693          	andi	a3,a5,2
   18efa:	c6b5                	beqz	a3,18f66 <__lo0bits+0x82>
   18efc:	8385                	srli	a5,a5,0x1
   18efe:	c31c                	sw	a5,0(a4)
   18f00:	4505                	li	a0,1
   18f02:	8082                	ret
   18f04:	01079693          	slli	a3,a5,0x10
   18f08:	82c1                	srli	a3,a3,0x10
   18f0a:	4501                	li	a0,0
   18f0c:	c6b9                	beqz	a3,18f5a <__lo0bits+0x76>
   18f0e:	0ff7f693          	zext.b	a3,a5
   18f12:	ce95                	beqz	a3,18f4e <__lo0bits+0x6a>
   18f14:	00f7f693          	andi	a3,a5,15
   18f18:	c68d                	beqz	a3,18f42 <__lo0bits+0x5e>
   18f1a:	0037f693          	andi	a3,a5,3
   18f1e:	ce81                	beqz	a3,18f36 <__lo0bits+0x52>
   18f20:	0017f693          	andi	a3,a5,1
   18f24:	e699                	bnez	a3,18f32 <__lo0bits+0x4e>
   18f26:	8385                	srli	a5,a5,0x1
   18f28:	0505                	addi	a0,a0,1
   18f2a:	e781                	bnez	a5,18f32 <__lo0bits+0x4e>
   18f2c:	02000513          	li	a0,32
   18f30:	8082                	ret
   18f32:	c31c                	sw	a5,0(a4)
   18f34:	8082                	ret
   18f36:	8389                	srli	a5,a5,0x2
   18f38:	0017f693          	andi	a3,a5,1
   18f3c:	0509                	addi	a0,a0,2
   18f3e:	faf5                	bnez	a3,18f32 <__lo0bits+0x4e>
   18f40:	b7dd                	j	18f26 <__lo0bits+0x42>
   18f42:	8391                	srli	a5,a5,0x4
   18f44:	0037f693          	andi	a3,a5,3
   18f48:	0511                	addi	a0,a0,4
   18f4a:	faf9                	bnez	a3,18f20 <__lo0bits+0x3c>
   18f4c:	b7ed                	j	18f36 <__lo0bits+0x52>
   18f4e:	83a1                	srli	a5,a5,0x8
   18f50:	00f7f693          	andi	a3,a5,15
   18f54:	0521                	addi	a0,a0,8
   18f56:	f2f1                	bnez	a3,18f1a <__lo0bits+0x36>
   18f58:	b7ed                	j	18f42 <__lo0bits+0x5e>
   18f5a:	83c1                	srli	a5,a5,0x10
   18f5c:	0ff7f693          	zext.b	a3,a5
   18f60:	4541                	li	a0,16
   18f62:	facd                	bnez	a3,18f14 <__lo0bits+0x30>
   18f64:	b7ed                	j	18f4e <__lo0bits+0x6a>
   18f66:	8389                	srli	a5,a5,0x2
   18f68:	c31c                	sw	a5,0(a4)
   18f6a:	4509                	li	a0,2
   18f6c:	8082                	ret

00018f6e <__i2b>:
   18f6e:	417c                	lw	a5,68(a0)
   18f70:	1141                	addi	sp,sp,-16
   18f72:	c422                	sw	s0,8(sp)
   18f74:	c226                	sw	s1,4(sp)
   18f76:	c606                	sw	ra,12(sp)
   18f78:	842a                	mv	s0,a0
   18f7a:	84ae                	mv	s1,a1
   18f7c:	cf99                	beqz	a5,18f9a <__i2b+0x2c>
   18f7e:	43c8                	lw	a0,4(a5)
   18f80:	c121                	beqz	a0,18fc0 <__i2b+0x52>
   18f82:	4118                	lw	a4,0(a0)
   18f84:	c3d8                	sw	a4,4(a5)
   18f86:	40b2                	lw	ra,12(sp)
   18f88:	4422                	lw	s0,8(sp)
   18f8a:	4785                	li	a5,1
   18f8c:	c944                	sw	s1,20(a0)
   18f8e:	00052623          	sw	zero,12(a0)
   18f92:	c91c                	sw	a5,16(a0)
   18f94:	4492                	lw	s1,4(sp)
   18f96:	0141                	addi	sp,sp,16
   18f98:	8082                	ret
   18f9a:	02100613          	li	a2,33
   18f9e:	4591                	li	a1,4
   18fa0:	0a0010ef          	jal	1a040 <_calloc_r>
   18fa4:	c068                	sw	a0,68(s0)
   18fa6:	87aa                	mv	a5,a0
   18fa8:	f979                	bnez	a0,18f7e <__i2b+0x10>
   18faa:	66f9                	lui	a3,0x1e
   18fac:	6579                	lui	a0,0x1e
   18fae:	99068693          	addi	a3,a3,-1648 # 1d990 <__clzsi2+0xd8>
   18fb2:	4601                	li	a2,0
   18fb4:	14500593          	li	a1,325
   18fb8:	a0050513          	addi	a0,a0,-1536 # 1da00 <__clzsi2+0x148>
   18fbc:	040010ef          	jal	19ffc <__assert_func>
   18fc0:	4671                	li	a2,28
   18fc2:	4585                	li	a1,1
   18fc4:	8522                	mv	a0,s0
   18fc6:	07a010ef          	jal	1a040 <_calloc_r>
   18fca:	d165                	beqz	a0,18faa <__i2b+0x3c>
   18fcc:	4785                	li	a5,1
   18fce:	c15c                	sw	a5,4(a0)
   18fd0:	4789                	li	a5,2
   18fd2:	c51c                	sw	a5,8(a0)
   18fd4:	bf4d                	j	18f86 <__i2b+0x18>

00018fd6 <__multiply>:
   18fd6:	1101                	addi	sp,sp,-32
   18fd8:	c84a                	sw	s2,16(sp)
   18fda:	c64e                	sw	s3,12(sp)
   18fdc:	0105a903          	lw	s2,16(a1)
   18fe0:	01062983          	lw	s3,16(a2)
   18fe4:	ca26                	sw	s1,20(sp)
   18fe6:	c452                	sw	s4,8(sp)
   18fe8:	ce06                	sw	ra,28(sp)
   18fea:	cc22                	sw	s0,24(sp)
   18fec:	8a2e                	mv	s4,a1
   18fee:	84b2                	mv	s1,a2
   18ff0:	01394763          	blt	s2,s3,18ffe <__multiply+0x28>
   18ff4:	874e                	mv	a4,s3
   18ff6:	84ae                	mv	s1,a1
   18ff8:	89ca                	mv	s3,s2
   18ffa:	8a32                	mv	s4,a2
   18ffc:	893a                	mv	s2,a4
   18ffe:	449c                	lw	a5,8(s1)
   19000:	40cc                	lw	a1,4(s1)
   19002:	01298433          	add	s0,s3,s2
   19006:	0087a7b3          	slt	a5,a5,s0
   1900a:	95be                	add	a1,a1,a5
   1900c:	c63ff0ef          	jal	18c6e <_Balloc>
   19010:	14050363          	beqz	a0,19156 <__multiply+0x180>
   19014:	01450313          	addi	t1,a0,20
   19018:	00241893          	slli	a7,s0,0x2
   1901c:	989a                	add	a7,a7,t1
   1901e:	879a                	mv	a5,t1
   19020:	01137763          	bgeu	t1,a7,1902e <__multiply+0x58>
   19024:	0007a023          	sw	zero,0(a5)
   19028:	0791                	addi	a5,a5,4
   1902a:	ff17ede3          	bltu	a5,a7,19024 <__multiply+0x4e>
   1902e:	014a0813          	addi	a6,s4,20
   19032:	00291e13          	slli	t3,s2,0x2
   19036:	01448e93          	addi	t4,s1,20
   1903a:	00299593          	slli	a1,s3,0x2
   1903e:	9e42                	add	t3,t3,a6
   19040:	95f6                	add	a1,a1,t4
   19042:	0fc87163          	bgeu	a6,t3,19124 <__multiply+0x14e>
   19046:	01548793          	addi	a5,s1,21
   1904a:	4f11                	li	t5,4
   1904c:	0ef5fe63          	bgeu	a1,a5,19148 <__multiply+0x172>
   19050:	66c1                	lui	a3,0x10
   19052:	16fd                	addi	a3,a3,-1 # ffff <exit-0x95>
   19054:	a809                	j	19066 <__multiply+0x90>
   19056:	010fdf93          	srli	t6,t6,0x10
   1905a:	060f9863          	bnez	t6,190ca <__multiply+0xf4>
   1905e:	0811                	addi	a6,a6,4
   19060:	0311                	addi	t1,t1,4
   19062:	0dc87163          	bgeu	a6,t3,19124 <__multiply+0x14e>
   19066:	00082f83          	lw	t6,0(a6)
   1906a:	00dff3b3          	and	t2,t6,a3
   1906e:	fe0384e3          	beqz	t2,19056 <__multiply+0x80>
   19072:	829a                	mv	t0,t1
   19074:	8ff6                	mv	t6,t4
   19076:	4481                	li	s1,0
   19078:	000fa783          	lw	a5,0(t6)
   1907c:	0002a603          	lw	a2,0(t0) # 1437e <memset+0x8e>
   19080:	0291                	addi	t0,t0,4
   19082:	00d7f733          	and	a4,a5,a3
   19086:	02770733          	mul	a4,a4,t2
   1908a:	83c1                	srli	a5,a5,0x10
   1908c:	00d67933          	and	s2,a2,a3
   19090:	8241                	srli	a2,a2,0x10
   19092:	0f91                	addi	t6,t6,4
   19094:	027787b3          	mul	a5,a5,t2
   19098:	974a                	add	a4,a4,s2
   1909a:	9726                	add	a4,a4,s1
   1909c:	01075493          	srli	s1,a4,0x10
   190a0:	8f75                	and	a4,a4,a3
   190a2:	97b2                	add	a5,a5,a2
   190a4:	97a6                	add	a5,a5,s1
   190a6:	01079613          	slli	a2,a5,0x10
   190aa:	8f51                	or	a4,a4,a2
   190ac:	fee2ae23          	sw	a4,-4(t0)
   190b0:	0107d493          	srli	s1,a5,0x10
   190b4:	fcbfe2e3          	bltu	t6,a1,19078 <__multiply+0xa2>
   190b8:	01e307b3          	add	a5,t1,t5
   190bc:	c384                	sw	s1,0(a5)
   190be:	00082f83          	lw	t6,0(a6)
   190c2:	010fdf93          	srli	t6,t6,0x10
   190c6:	f80f8ce3          	beqz	t6,1905e <__multiply+0x88>
   190ca:	00032703          	lw	a4,0(t1)
   190ce:	829a                	mv	t0,t1
   190d0:	8676                	mv	a2,t4
   190d2:	84ba                	mv	s1,a4
   190d4:	4381                	li	t2,0
   190d6:	421c                	lw	a5,0(a2)
   190d8:	0104d993          	srli	s3,s1,0x10
   190dc:	8f75                	and	a4,a4,a3
   190de:	8ff5                	and	a5,a5,a3
   190e0:	03f787b3          	mul	a5,a5,t6
   190e4:	0042a483          	lw	s1,4(t0)
   190e8:	0291                	addi	t0,t0,4
   190ea:	0611                	addi	a2,a2,4
   190ec:	00d4f933          	and	s2,s1,a3
   190f0:	979e                	add	a5,a5,t2
   190f2:	97ce                	add	a5,a5,s3
   190f4:	01079393          	slli	t2,a5,0x10
   190f8:	00e3e733          	or	a4,t2,a4
   190fc:	fee2ae23          	sw	a4,-4(t0)
   19100:	ffe65703          	lhu	a4,-2(a2)
   19104:	83c1                	srli	a5,a5,0x10
   19106:	03f70733          	mul	a4,a4,t6
   1910a:	974a                	add	a4,a4,s2
   1910c:	973e                	add	a4,a4,a5
   1910e:	01075393          	srli	t2,a4,0x10
   19112:	fcb662e3          	bltu	a2,a1,190d6 <__multiply+0x100>
   19116:	01e307b3          	add	a5,t1,t5
   1911a:	c398                	sw	a4,0(a5)
   1911c:	0811                	addi	a6,a6,4
   1911e:	0311                	addi	t1,t1,4
   19120:	f5c863e3          	bltu	a6,t3,19066 <__multiply+0x90>
   19124:	00804563          	bgtz	s0,1912e <__multiply+0x158>
   19128:	a039                	j	19136 <__multiply+0x160>
   1912a:	147d                	addi	s0,s0,-1
   1912c:	c409                	beqz	s0,19136 <__multiply+0x160>
   1912e:	ffc8a783          	lw	a5,-4(a7)
   19132:	18f1                	addi	a7,a7,-4
   19134:	dbfd                	beqz	a5,1912a <__multiply+0x154>
   19136:	40f2                	lw	ra,28(sp)
   19138:	c900                	sw	s0,16(a0)
   1913a:	4462                	lw	s0,24(sp)
   1913c:	44d2                	lw	s1,20(sp)
   1913e:	4942                	lw	s2,16(sp)
   19140:	49b2                	lw	s3,12(sp)
   19142:	4a22                	lw	s4,8(sp)
   19144:	6105                	addi	sp,sp,32
   19146:	8082                	ret
   19148:	409587b3          	sub	a5,a1,s1
   1914c:	17ad                	addi	a5,a5,-21
   1914e:	9bf1                	andi	a5,a5,-4
   19150:	00478f13          	addi	t5,a5,4
   19154:	bdf5                	j	19050 <__multiply+0x7a>
   19156:	66f9                	lui	a3,0x1e
   19158:	6579                	lui	a0,0x1e
   1915a:	99068693          	addi	a3,a3,-1648 # 1d990 <__clzsi2+0xd8>
   1915e:	4601                	li	a2,0
   19160:	16200593          	li	a1,354
   19164:	a0050513          	addi	a0,a0,-1536 # 1da00 <__clzsi2+0x148>
   19168:	695000ef          	jal	19ffc <__assert_func>

0001916c <__pow5mult>:
   1916c:	1101                	addi	sp,sp,-32
   1916e:	cc22                	sw	s0,24(sp)
   19170:	c84a                	sw	s2,16(sp)
   19172:	c64e                	sw	s3,12(sp)
   19174:	ce06                	sw	ra,28(sp)
   19176:	00367793          	andi	a5,a2,3
   1917a:	8432                	mv	s0,a2
   1917c:	89aa                	mv	s3,a0
   1917e:	892e                	mv	s2,a1
   19180:	ebad                	bnez	a5,191f2 <__pow5mult+0x86>
   19182:	8409                	srai	s0,s0,0x2
   19184:	c431                	beqz	s0,191d0 <__pow5mult+0x64>
   19186:	ca26                	sw	s1,20(sp)
   19188:	0409a483          	lw	s1,64(s3)
   1918c:	ccbd                	beqz	s1,1920a <__pow5mult+0x9e>
   1918e:	00147793          	andi	a5,s0,1
   19192:	eb89                	bnez	a5,191a4 <__pow5mult+0x38>
   19194:	8405                	srai	s0,s0,0x1
   19196:	cc05                	beqz	s0,191ce <__pow5mult+0x62>
   19198:	4088                	lw	a0,0(s1)
   1919a:	c131                	beqz	a0,191de <__pow5mult+0x72>
   1919c:	84aa                	mv	s1,a0
   1919e:	00147793          	andi	a5,s0,1
   191a2:	dbed                	beqz	a5,19194 <__pow5mult+0x28>
   191a4:	8626                	mv	a2,s1
   191a6:	85ca                	mv	a1,s2
   191a8:	854e                	mv	a0,s3
   191aa:	e2dff0ef          	jal	18fd6 <__multiply>
   191ae:	00090d63          	beqz	s2,191c8 <__pow5mult+0x5c>
   191b2:	00492703          	lw	a4,4(s2)
   191b6:	0449a783          	lw	a5,68(s3)
   191ba:	070a                	slli	a4,a4,0x2
   191bc:	97ba                	add	a5,a5,a4
   191be:	4398                	lw	a4,0(a5)
   191c0:	00e92023          	sw	a4,0(s2)
   191c4:	0127a023          	sw	s2,0(a5)
   191c8:	8405                	srai	s0,s0,0x1
   191ca:	892a                	mv	s2,a0
   191cc:	f471                	bnez	s0,19198 <__pow5mult+0x2c>
   191ce:	44d2                	lw	s1,20(sp)
   191d0:	40f2                	lw	ra,28(sp)
   191d2:	4462                	lw	s0,24(sp)
   191d4:	49b2                	lw	s3,12(sp)
   191d6:	854a                	mv	a0,s2
   191d8:	4942                	lw	s2,16(sp)
   191da:	6105                	addi	sp,sp,32
   191dc:	8082                	ret
   191de:	8626                	mv	a2,s1
   191e0:	85a6                	mv	a1,s1
   191e2:	854e                	mv	a0,s3
   191e4:	df3ff0ef          	jal	18fd6 <__multiply>
   191e8:	c088                	sw	a0,0(s1)
   191ea:	00052023          	sw	zero,0(a0)
   191ee:	84aa                	mv	s1,a0
   191f0:	b77d                	j	1919e <__pow5mult+0x32>
   191f2:	17fd                	addi	a5,a5,-1
   191f4:	6779                	lui	a4,0x1e
   191f6:	cdc70713          	addi	a4,a4,-804 # 1dcdc <p05.0>
   191fa:	078a                	slli	a5,a5,0x2
   191fc:	97ba                	add	a5,a5,a4
   191fe:	4390                	lw	a2,0(a5)
   19200:	4681                	li	a3,0
   19202:	aebff0ef          	jal	18cec <__multadd>
   19206:	892a                	mv	s2,a0
   19208:	bfad                	j	19182 <__pow5mult+0x16>
   1920a:	4585                	li	a1,1
   1920c:	854e                	mv	a0,s3
   1920e:	a61ff0ef          	jal	18c6e <_Balloc>
   19212:	84aa                	mv	s1,a0
   19214:	c919                	beqz	a0,1922a <__pow5mult+0xbe>
   19216:	27100793          	li	a5,625
   1921a:	c95c                	sw	a5,20(a0)
   1921c:	4785                	li	a5,1
   1921e:	c91c                	sw	a5,16(a0)
   19220:	04a9a023          	sw	a0,64(s3)
   19224:	00052023          	sw	zero,0(a0)
   19228:	b79d                	j	1918e <__pow5mult+0x22>
   1922a:	66f9                	lui	a3,0x1e
   1922c:	6579                	lui	a0,0x1e
   1922e:	99068693          	addi	a3,a3,-1648 # 1d990 <__clzsi2+0xd8>
   19232:	4601                	li	a2,0
   19234:	14500593          	li	a1,325
   19238:	a0050513          	addi	a0,a0,-1536 # 1da00 <__clzsi2+0x148>
   1923c:	5c1000ef          	jal	19ffc <__assert_func>

00019240 <__lshift>:
   19240:	1101                	addi	sp,sp,-32
   19242:	c256                	sw	s5,4(sp)
   19244:	0105aa83          	lw	s5,16(a1)
   19248:	459c                	lw	a5,8(a1)
   1924a:	c64e                	sw	s3,12(sp)
   1924c:	40565993          	srai	s3,a2,0x5
   19250:	9ace                	add	s5,s5,s3
   19252:	cc22                	sw	s0,24(sp)
   19254:	ca26                	sw	s1,20(sp)
   19256:	c84a                	sw	s2,16(sp)
   19258:	c452                	sw	s4,8(sp)
   1925a:	ce06                	sw	ra,28(sp)
   1925c:	001a8913          	addi	s2,s5,1
   19260:	84ae                	mv	s1,a1
   19262:	8432                	mv	s0,a2
   19264:	41cc                	lw	a1,4(a1)
   19266:	8a2a                	mv	s4,a0
   19268:	0127d663          	bge	a5,s2,19274 <__lshift+0x34>
   1926c:	0786                	slli	a5,a5,0x1
   1926e:	0585                	addi	a1,a1,1
   19270:	ff27cee3          	blt	a5,s2,1926c <__lshift+0x2c>
   19274:	8552                	mv	a0,s4
   19276:	9f9ff0ef          	jal	18c6e <_Balloc>
   1927a:	cd5d                	beqz	a0,19338 <__lshift+0xf8>
   1927c:	01450813          	addi	a6,a0,20
   19280:	01305e63          	blez	s3,1929c <__lshift+0x5c>
   19284:	0995                	addi	s3,s3,5
   19286:	098a                	slli	s3,s3,0x2
   19288:	01350733          	add	a4,a0,s3
   1928c:	87c2                	mv	a5,a6
   1928e:	0791                	addi	a5,a5,4
   19290:	fe07ae23          	sw	zero,-4(a5)
   19294:	fee79de3          	bne	a5,a4,1928e <__lshift+0x4e>
   19298:	19b1                	addi	s3,s3,-20
   1929a:	984e                	add	a6,a6,s3
   1929c:	0104a883          	lw	a7,16(s1)
   192a0:	01448793          	addi	a5,s1,20
   192a4:	01f47613          	andi	a2,s0,31
   192a8:	088a                	slli	a7,a7,0x2
   192aa:	98be                	add	a7,a7,a5
   192ac:	c63d                	beqz	a2,1931a <__lshift+0xda>
   192ae:	02000593          	li	a1,32
   192b2:	8d91                	sub	a1,a1,a2
   192b4:	8342                	mv	t1,a6
   192b6:	4681                	li	a3,0
   192b8:	4398                	lw	a4,0(a5)
   192ba:	0311                	addi	t1,t1,4
   192bc:	0791                	addi	a5,a5,4
   192be:	00c71733          	sll	a4,a4,a2
   192c2:	8f55                	or	a4,a4,a3
   192c4:	fee32e23          	sw	a4,-4(t1)
   192c8:	ffc7a683          	lw	a3,-4(a5)
   192cc:	00b6d6b3          	srl	a3,a3,a1
   192d0:	ff17e4e3          	bltu	a5,a7,192b8 <__lshift+0x78>
   192d4:	01548793          	addi	a5,s1,21
   192d8:	4711                	li	a4,4
   192da:	00f8e863          	bltu	a7,a5,192ea <__lshift+0xaa>
   192de:	409887b3          	sub	a5,a7,s1
   192e2:	17ad                	addi	a5,a5,-21
   192e4:	9bf1                	andi	a5,a5,-4
   192e6:	00478713          	addi	a4,a5,4
   192ea:	983a                	add	a6,a6,a4
   192ec:	00d82023          	sw	a3,0(a6)
   192f0:	e291                	bnez	a3,192f4 <__lshift+0xb4>
   192f2:	8956                	mv	s2,s5
   192f4:	40d8                	lw	a4,4(s1)
   192f6:	044a2783          	lw	a5,68(s4)
   192fa:	40f2                	lw	ra,28(sp)
   192fc:	070a                	slli	a4,a4,0x2
   192fe:	97ba                	add	a5,a5,a4
   19300:	4398                	lw	a4,0(a5)
   19302:	01252823          	sw	s2,16(a0)
   19306:	4462                	lw	s0,24(sp)
   19308:	c098                	sw	a4,0(s1)
   1930a:	c384                	sw	s1,0(a5)
   1930c:	4942                	lw	s2,16(sp)
   1930e:	44d2                	lw	s1,20(sp)
   19310:	49b2                	lw	s3,12(sp)
   19312:	4a22                	lw	s4,8(sp)
   19314:	4a92                	lw	s5,4(sp)
   19316:	6105                	addi	sp,sp,32
   19318:	8082                	ret
   1931a:	4398                	lw	a4,0(a5)
   1931c:	0791                	addi	a5,a5,4
   1931e:	0811                	addi	a6,a6,4
   19320:	fee82e23          	sw	a4,-4(a6)
   19324:	fd17f7e3          	bgeu	a5,a7,192f2 <__lshift+0xb2>
   19328:	4398                	lw	a4,0(a5)
   1932a:	0791                	addi	a5,a5,4
   1932c:	0811                	addi	a6,a6,4
   1932e:	fee82e23          	sw	a4,-4(a6)
   19332:	ff17e4e3          	bltu	a5,a7,1931a <__lshift+0xda>
   19336:	bf75                	j	192f2 <__lshift+0xb2>
   19338:	66f9                	lui	a3,0x1e
   1933a:	6579                	lui	a0,0x1e
   1933c:	99068693          	addi	a3,a3,-1648 # 1d990 <__clzsi2+0xd8>
   19340:	4601                	li	a2,0
   19342:	1de00593          	li	a1,478
   19346:	a0050513          	addi	a0,a0,-1536 # 1da00 <__clzsi2+0x148>
   1934a:	4b3000ef          	jal	19ffc <__assert_func>

0001934e <__mcmp>:
   1934e:	4918                	lw	a4,16(a0)
   19350:	499c                	lw	a5,16(a1)
   19352:	882a                	mv	a6,a0
   19354:	40f70533          	sub	a0,a4,a5
   19358:	02f71863          	bne	a4,a5,19388 <__mcmp+0x3a>
   1935c:	078a                	slli	a5,a5,0x2
   1935e:	0851                	addi	a6,a6,20
   19360:	05d1                	addi	a1,a1,20
   19362:	00f80733          	add	a4,a6,a5
   19366:	97ae                	add	a5,a5,a1
   19368:	a019                	j	1936e <__mcmp+0x20>
   1936a:	00e87f63          	bgeu	a6,a4,19388 <__mcmp+0x3a>
   1936e:	ffc72603          	lw	a2,-4(a4)
   19372:	ffc7a683          	lw	a3,-4(a5)
   19376:	1771                	addi	a4,a4,-4
   19378:	17f1                	addi	a5,a5,-4
   1937a:	fed608e3          	beq	a2,a3,1936a <__mcmp+0x1c>
   1937e:	4505                	li	a0,1
   19380:	00d67463          	bgeu	a2,a3,19388 <__mcmp+0x3a>
   19384:	557d                	li	a0,-1
   19386:	8082                	ret
   19388:	8082                	ret

0001938a <__mdiff>:
   1938a:	4998                	lw	a4,16(a1)
   1938c:	4a1c                	lw	a5,16(a2)
   1938e:	1141                	addi	sp,sp,-16
   19390:	c422                	sw	s0,8(sp)
   19392:	c226                	sw	s1,4(sp)
   19394:	c606                	sw	ra,12(sp)
   19396:	c04a                	sw	s2,0(sp)
   19398:	842e                	mv	s0,a1
   1939a:	84b2                	mv	s1,a2
   1939c:	40f706b3          	sub	a3,a4,a5
   193a0:	12f71863          	bne	a4,a5,194d0 <__mdiff+0x146>
   193a4:	00279693          	slli	a3,a5,0x2
   193a8:	01458613          	addi	a2,a1,20
   193ac:	01448713          	addi	a4,s1,20
   193b0:	00d607b3          	add	a5,a2,a3
   193b4:	9736                	add	a4,a4,a3
   193b6:	a019                	j	193bc <__mdiff+0x32>
   193b8:	12f67463          	bgeu	a2,a5,194e0 <__mdiff+0x156>
   193bc:	ffc7a583          	lw	a1,-4(a5)
   193c0:	ffc72683          	lw	a3,-4(a4)
   193c4:	17f1                	addi	a5,a5,-4
   193c6:	1771                	addi	a4,a4,-4
   193c8:	fed588e3          	beq	a1,a3,193b8 <__mdiff+0x2e>
   193cc:	4905                	li	s2,1
   193ce:	00d5e663          	bltu	a1,a3,193da <__mdiff+0x50>
   193d2:	87a6                	mv	a5,s1
   193d4:	4901                	li	s2,0
   193d6:	84a2                	mv	s1,s0
   193d8:	843e                	mv	s0,a5
   193da:	40cc                	lw	a1,4(s1)
   193dc:	893ff0ef          	jal	18c6e <_Balloc>
   193e0:	12050763          	beqz	a0,1950e <__mdiff+0x184>
   193e4:	0104a883          	lw	a7,16(s1)
   193e8:	01042283          	lw	t0,16(s0)
   193ec:	01448f93          	addi	t6,s1,20
   193f0:	00289313          	slli	t1,a7,0x2
   193f4:	01440813          	addi	a6,s0,20
   193f8:	028a                	slli	t0,t0,0x2
   193fa:	01450593          	addi	a1,a0,20
   193fe:	6e41                	lui	t3,0x10
   19400:	01252623          	sw	s2,12(a0)
   19404:	937e                	add	t1,t1,t6
   19406:	92c2                	add	t0,t0,a6
   19408:	8f2e                	mv	t5,a1
   1940a:	8efe                	mv	t4,t6
   1940c:	4681                	li	a3,0
   1940e:	1e7d                	addi	t3,t3,-1 # ffff <exit-0x95>
   19410:	000ea703          	lw	a4,0(t4)
   19414:	00082603          	lw	a2,0(a6)
   19418:	0f11                	addi	t5,t5,4
   1941a:	01c777b3          	and	a5,a4,t3
   1941e:	01c673b3          	and	t2,a2,t3
   19422:	407787b3          	sub	a5,a5,t2
   19426:	97b6                	add	a5,a5,a3
   19428:	8341                	srli	a4,a4,0x10
   1942a:	8241                	srli	a2,a2,0x10
   1942c:	4107d693          	srai	a3,a5,0x10
   19430:	8f11                	sub	a4,a4,a2
   19432:	9736                	add	a4,a4,a3
   19434:	01071693          	slli	a3,a4,0x10
   19438:	01c7f7b3          	and	a5,a5,t3
   1943c:	8fd5                	or	a5,a5,a3
   1943e:	0811                	addi	a6,a6,4
   19440:	feff2e23          	sw	a5,-4(t5)
   19444:	0e91                	addi	t4,t4,4
   19446:	41075693          	srai	a3,a4,0x10
   1944a:	fc5863e3          	bltu	a6,t0,19410 <__mdiff+0x86>
   1944e:	01540713          	addi	a4,s0,21
   19452:	40828433          	sub	s0,t0,s0
   19456:	142d                	addi	s0,s0,-21
   19458:	00e2b2b3          	sltu	t0,t0,a4
   1945c:	0012cf13          	xori	t5,t0,1
   19460:	8009                	srli	s0,s0,0x2
   19462:	4711                	li	a4,4
   19464:	06028a63          	beqz	t0,194d8 <__mdiff+0x14e>
   19468:	9fba                	add	t6,t6,a4
   1946a:	00e58833          	add	a6,a1,a4
   1946e:	6ec1                	lui	t4,0x10
   19470:	8e42                	mv	t3,a6
   19472:	867e                	mv	a2,t6
   19474:	1efd                	addi	t4,t4,-1 # ffff <exit-0x95>
   19476:	086ff363          	bgeu	t6,t1,194fc <__mdiff+0x172>
   1947a:	421c                	lw	a5,0(a2)
   1947c:	0e11                	addi	t3,t3,4
   1947e:	0611                	addi	a2,a2,4
   19480:	01d7f733          	and	a4,a5,t4
   19484:	9736                	add	a4,a4,a3
   19486:	0107d593          	srli	a1,a5,0x10
   1948a:	8741                	srai	a4,a4,0x10
   1948c:	972e                	add	a4,a4,a1
   1948e:	97b6                	add	a5,a5,a3
   19490:	01d7f7b3          	and	a5,a5,t4
   19494:	01071693          	slli	a3,a4,0x10
   19498:	8fd5                	or	a5,a5,a3
   1949a:	fefe2e23          	sw	a5,-4(t3)
   1949e:	41075693          	srai	a3,a4,0x10
   194a2:	fc666ce3          	bltu	a2,t1,1947a <__mdiff+0xf0>
   194a6:	137d                	addi	t1,t1,-1
   194a8:	41f30333          	sub	t1,t1,t6
   194ac:	ffc37313          	andi	t1,t1,-4
   194b0:	00680733          	add	a4,a6,t1
   194b4:	e791                	bnez	a5,194c0 <__mdiff+0x136>
   194b6:	ffc72783          	lw	a5,-4(a4)
   194ba:	18fd                	addi	a7,a7,-1
   194bc:	1771                	addi	a4,a4,-4
   194be:	dfe5                	beqz	a5,194b6 <__mdiff+0x12c>
   194c0:	40b2                	lw	ra,12(sp)
   194c2:	4422                	lw	s0,8(sp)
   194c4:	01152823          	sw	a7,16(a0)
   194c8:	4492                	lw	s1,4(sp)
   194ca:	4902                	lw	s2,0(sp)
   194cc:	0141                	addi	sp,sp,16
   194ce:	8082                	ret
   194d0:	4905                	li	s2,1
   194d2:	f006d0e3          	bgez	a3,193d2 <__mdiff+0x48>
   194d6:	b711                	j	193da <__mdiff+0x50>
   194d8:	00140713          	addi	a4,s0,1
   194dc:	070a                	slli	a4,a4,0x2
   194de:	b769                	j	19468 <__mdiff+0xde>
   194e0:	4581                	li	a1,0
   194e2:	f8cff0ef          	jal	18c6e <_Balloc>
   194e6:	cd1d                	beqz	a0,19524 <__mdiff+0x19a>
   194e8:	40b2                	lw	ra,12(sp)
   194ea:	4422                	lw	s0,8(sp)
   194ec:	4785                	li	a5,1
   194ee:	c91c                	sw	a5,16(a0)
   194f0:	00052a23          	sw	zero,20(a0)
   194f4:	4492                	lw	s1,4(sp)
   194f6:	4902                	lw	s2,0(sp)
   194f8:	0141                	addi	sp,sp,16
   194fa:	8082                	ret
   194fc:	4701                	li	a4,0
   194fe:	000f1463          	bnez	t5,19506 <__mdiff+0x17c>
   19502:	972e                	add	a4,a4,a1
   19504:	bf45                	j	194b4 <__mdiff+0x12a>
   19506:	00241713          	slli	a4,s0,0x2
   1950a:	972e                	add	a4,a4,a1
   1950c:	b765                	j	194b4 <__mdiff+0x12a>
   1950e:	66f9                	lui	a3,0x1e
   19510:	6579                	lui	a0,0x1e
   19512:	99068693          	addi	a3,a3,-1648 # 1d990 <__clzsi2+0xd8>
   19516:	4601                	li	a2,0
   19518:	24500593          	li	a1,581
   1951c:	a0050513          	addi	a0,a0,-1536 # 1da00 <__clzsi2+0x148>
   19520:	2dd000ef          	jal	19ffc <__assert_func>
   19524:	66f9                	lui	a3,0x1e
   19526:	6579                	lui	a0,0x1e
   19528:	99068693          	addi	a3,a3,-1648 # 1d990 <__clzsi2+0xd8>
   1952c:	4601                	li	a2,0
   1952e:	23700593          	li	a1,567
   19532:	a0050513          	addi	a0,a0,-1536 # 1da00 <__clzsi2+0x148>
   19536:	2c7000ef          	jal	19ffc <__assert_func>

0001953a <__ulp>:
   1953a:	7ff007b7          	lui	a5,0x7ff00
   1953e:	8dfd                	and	a1,a1,a5
   19540:	fcc007b7          	lui	a5,0xfcc00
   19544:	95be                	add	a1,a1,a5
   19546:	4781                	li	a5,0
   19548:	00b05463          	blez	a1,19550 <__ulp+0x16>
   1954c:	853e                	mv	a0,a5
   1954e:	8082                	ret
   19550:	40b005b3          	neg	a1,a1
   19554:	85d1                	srai	a1,a1,0x14
   19556:	47cd                	li	a5,19
   19558:	00b7c963          	blt	a5,a1,1956a <__ulp+0x30>
   1955c:	000807b7          	lui	a5,0x80
   19560:	40b7d5b3          	sra	a1,a5,a1
   19564:	4781                	li	a5,0
   19566:	853e                	mv	a0,a5
   19568:	8082                	ret
   1956a:	15b1                	addi	a1,a1,-20
   1956c:	4779                	li	a4,30
   1956e:	4785                	li	a5,1
   19570:	00b74663          	blt	a4,a1,1957c <__ulp+0x42>
   19574:	800007b7          	lui	a5,0x80000
   19578:	00b7d7b3          	srl	a5,a5,a1
   1957c:	4581                	li	a1,0
   1957e:	853e                	mv	a0,a5
   19580:	8082                	ret

00019582 <__b2d>:
   19582:	1101                	addi	sp,sp,-32
   19584:	ca26                	sw	s1,20(sp)
   19586:	4904                	lw	s1,16(a0)
   19588:	cc22                	sw	s0,24(sp)
   1958a:	01450413          	addi	s0,a0,20
   1958e:	048a                	slli	s1,s1,0x2
   19590:	94a2                	add	s1,s1,s0
   19592:	c84a                	sw	s2,16(sp)
   19594:	ffc4a903          	lw	s2,-4(s1)
   19598:	c64e                	sw	s3,12(sp)
   1959a:	c452                	sw	s4,8(sp)
   1959c:	854a                	mv	a0,s2
   1959e:	89ae                	mv	s3,a1
   195a0:	ce06                	sw	ra,28(sp)
   195a2:	8efff0ef          	jal	18e90 <__hi0bits>
   195a6:	02000713          	li	a4,32
   195aa:	40a707b3          	sub	a5,a4,a0
   195ae:	00f9a023          	sw	a5,0(s3)
   195b2:	47a9                	li	a5,10
   195b4:	ffc48a13          	addi	s4,s1,-4
   195b8:	06a7db63          	bge	a5,a0,1962e <__b2d+0xac>
   195bc:	ff550613          	addi	a2,a0,-11
   195c0:	03447d63          	bgeu	s0,s4,195fa <__b2d+0x78>
   195c4:	ff84a783          	lw	a5,-8(s1)
   195c8:	c629                	beqz	a2,19612 <__b2d+0x90>
   195ca:	40c706b3          	sub	a3,a4,a2
   195ce:	00d7d733          	srl	a4,a5,a3
   195d2:	00c91933          	sll	s2,s2,a2
   195d6:	00e96933          	or	s2,s2,a4
   195da:	ff848593          	addi	a1,s1,-8
   195de:	3ff00737          	lui	a4,0x3ff00
   195e2:	00e96733          	or	a4,s2,a4
   195e6:	00c797b3          	sll	a5,a5,a2
   195ea:	02b47863          	bgeu	s0,a1,1961a <__b2d+0x98>
   195ee:	ff44a603          	lw	a2,-12(s1)
   195f2:	00d656b3          	srl	a3,a2,a3
   195f6:	8fd5                	or	a5,a5,a3
   195f8:	a00d                	j	1961a <__b2d+0x98>
   195fa:	47ad                	li	a5,11
   195fc:	00f50a63          	beq	a0,a5,19610 <__b2d+0x8e>
   19600:	00c91933          	sll	s2,s2,a2
   19604:	3ff00737          	lui	a4,0x3ff00
   19608:	00e96733          	or	a4,s2,a4
   1960c:	4781                	li	a5,0
   1960e:	a031                	j	1961a <__b2d+0x98>
   19610:	4781                	li	a5,0
   19612:	3ff00737          	lui	a4,0x3ff00
   19616:	00e96733          	or	a4,s2,a4
   1961a:	40f2                	lw	ra,28(sp)
   1961c:	4462                	lw	s0,24(sp)
   1961e:	44d2                	lw	s1,20(sp)
   19620:	4942                	lw	s2,16(sp)
   19622:	49b2                	lw	s3,12(sp)
   19624:	4a22                	lw	s4,8(sp)
   19626:	853e                	mv	a0,a5
   19628:	85ba                	mv	a1,a4
   1962a:	6105                	addi	sp,sp,32
   1962c:	8082                	ret
   1962e:	46ad                	li	a3,11
   19630:	8e89                	sub	a3,a3,a0
   19632:	3ff007b7          	lui	a5,0x3ff00
   19636:	00d95733          	srl	a4,s2,a3
   1963a:	8f5d                	or	a4,a4,a5
   1963c:	4781                	li	a5,0
   1963e:	01447663          	bgeu	s0,s4,1964a <__b2d+0xc8>
   19642:	ff84a783          	lw	a5,-8(s1)
   19646:	00d7d7b3          	srl	a5,a5,a3
   1964a:	0555                	addi	a0,a0,21
   1964c:	00a91933          	sll	s2,s2,a0
   19650:	00f967b3          	or	a5,s2,a5
   19654:	b7d9                	j	1961a <__b2d+0x98>

00019656 <__d2b>:
   19656:	7179                	addi	sp,sp,-48
   19658:	ca56                	sw	s5,20(sp)
   1965a:	8aae                	mv	s5,a1
   1965c:	4585                	li	a1,1
   1965e:	d226                	sw	s1,36(sp)
   19660:	ce4e                	sw	s3,28(sp)
   19662:	cc52                	sw	s4,24(sp)
   19664:	d606                	sw	ra,44(sp)
   19666:	d422                	sw	s0,40(sp)
   19668:	d04a                	sw	s2,32(sp)
   1966a:	84b2                	mv	s1,a2
   1966c:	8a36                	mv	s4,a3
   1966e:	89ba                	mv	s3,a4
   19670:	dfeff0ef          	jal	18c6e <_Balloc>
   19674:	c955                	beqz	a0,19728 <__d2b+0xd2>
   19676:	00100737          	lui	a4,0x100
   1967a:	0144d913          	srli	s2,s1,0x14
   1967e:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xe0413>
   19682:	7ff97913          	andi	s2,s2,2047
   19686:	842a                	mv	s0,a0
   19688:	8fe5                	and	a5,a5,s1
   1968a:	00090363          	beqz	s2,19690 <__d2b+0x3a>
   1968e:	8fd9                	or	a5,a5,a4
   19690:	c63e                	sw	a5,12(sp)
   19692:	040a9263          	bnez	s5,196d6 <__d2b+0x80>
   19696:	0068                	addi	a0,sp,12
   19698:	84dff0ef          	jal	18ee4 <__lo0bits>
   1969c:	4732                	lw	a4,12(sp)
   1969e:	4485                	li	s1,1
   196a0:	c804                	sw	s1,16(s0)
   196a2:	c858                	sw	a4,20(s0)
   196a4:	02050793          	addi	a5,a0,32
   196a8:	06090063          	beqz	s2,19708 <__d2b+0xb2>
   196ac:	bcd90913          	addi	s2,s2,-1075
   196b0:	993e                	add	s2,s2,a5
   196b2:	03500493          	li	s1,53
   196b6:	012a2023          	sw	s2,0(s4)
   196ba:	40f48533          	sub	a0,s1,a5
   196be:	00a9a023          	sw	a0,0(s3)
   196c2:	50b2                	lw	ra,44(sp)
   196c4:	8522                	mv	a0,s0
   196c6:	5422                	lw	s0,40(sp)
   196c8:	5492                	lw	s1,36(sp)
   196ca:	5902                	lw	s2,32(sp)
   196cc:	49f2                	lw	s3,28(sp)
   196ce:	4a62                	lw	s4,24(sp)
   196d0:	4ad2                	lw	s5,20(sp)
   196d2:	6145                	addi	sp,sp,48
   196d4:	8082                	ret
   196d6:	0028                	addi	a0,sp,8
   196d8:	c456                	sw	s5,8(sp)
   196da:	80bff0ef          	jal	18ee4 <__lo0bits>
   196de:	4732                	lw	a4,12(sp)
   196e0:	87aa                	mv	a5,a0
   196e2:	c129                	beqz	a0,19724 <__d2b+0xce>
   196e4:	4622                	lw	a2,8(sp)
   196e6:	02000693          	li	a3,32
   196ea:	8e89                	sub	a3,a3,a0
   196ec:	00d716b3          	sll	a3,a4,a3
   196f0:	00a75733          	srl	a4,a4,a0
   196f4:	8ed1                	or	a3,a3,a2
   196f6:	c63a                	sw	a4,12(sp)
   196f8:	00e034b3          	snez	s1,a4
   196fc:	0485                	addi	s1,s1,1
   196fe:	c854                	sw	a3,20(s0)
   19700:	cc18                	sw	a4,24(s0)
   19702:	c804                	sw	s1,16(s0)
   19704:	fa0914e3          	bnez	s2,196ac <__d2b+0x56>
   19708:	00249713          	slli	a4,s1,0x2
   1970c:	9722                	add	a4,a4,s0
   1970e:	4b08                	lw	a0,16(a4)
   19710:	bce78793          	addi	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fedffe2>
   19714:	00fa2023          	sw	a5,0(s4)
   19718:	f78ff0ef          	jal	18e90 <__hi0bits>
   1971c:	0496                	slli	s1,s1,0x5
   1971e:	40a48533          	sub	a0,s1,a0
   19722:	bf71                	j	196be <__d2b+0x68>
   19724:	46a2                	lw	a3,8(sp)
   19726:	bfc9                	j	196f8 <__d2b+0xa2>
   19728:	66f9                	lui	a3,0x1e
   1972a:	6579                	lui	a0,0x1e
   1972c:	99068693          	addi	a3,a3,-1648 # 1d990 <__clzsi2+0xd8>
   19730:	4601                	li	a2,0
   19732:	30f00593          	li	a1,783
   19736:	a0050513          	addi	a0,a0,-1536 # 1da00 <__clzsi2+0x148>
   1973a:	0c3000ef          	jal	19ffc <__assert_func>

0001973e <__ratio>:
   1973e:	7179                	addi	sp,sp,-48
   19740:	d422                	sw	s0,40(sp)
   19742:	842e                	mv	s0,a1
   19744:	082c                	addi	a1,sp,24
   19746:	d606                	sw	ra,44(sp)
   19748:	d226                	sw	s1,36(sp)
   1974a:	84aa                	mv	s1,a0
   1974c:	e37ff0ef          	jal	19582 <__b2d>
   19750:	c02a                	sw	a0,0(sp)
   19752:	c22e                	sw	a1,4(sp)
   19754:	2782                	fld	fa5,0(sp)
   19756:	086c                	addi	a1,sp,28
   19758:	8522                	mv	a0,s0
   1975a:	a43e                	fsd	fa5,8(sp)
   1975c:	e27ff0ef          	jal	19582 <__b2d>
   19760:	4818                	lw	a4,16(s0)
   19762:	489c                	lw	a5,16(s1)
   19764:	46f2                	lw	a3,28(sp)
   19766:	c02a                	sw	a0,0(sp)
   19768:	8f99                	sub	a5,a5,a4
   1976a:	4762                	lw	a4,24(sp)
   1976c:	0796                	slli	a5,a5,0x5
   1976e:	c22e                	sw	a1,4(sp)
   19770:	8f15                	sub	a4,a4,a3
   19772:	97ba                	add	a5,a5,a4
   19774:	02f05263          	blez	a5,19798 <__ratio+0x5a>
   19778:	46b2                	lw	a3,12(sp)
   1977a:	07d2                	slli	a5,a5,0x14
   1977c:	97b6                	add	a5,a5,a3
   1977e:	c63e                	sw	a5,12(sp)
   19780:	2702                	fld	fa4,0(sp)
   19782:	27a2                	fld	fa5,8(sp)
   19784:	50b2                	lw	ra,44(sp)
   19786:	5422                	lw	s0,40(sp)
   19788:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   1978c:	5492                	lw	s1,36(sp)
   1978e:	a03e                	fsd	fa5,0(sp)
   19790:	4502                	lw	a0,0(sp)
   19792:	4592                	lw	a1,4(sp)
   19794:	6145                	addi	sp,sp,48
   19796:	8082                	ret
   19798:	4692                	lw	a3,4(sp)
   1979a:	07d2                	slli	a5,a5,0x14
   1979c:	40f687b3          	sub	a5,a3,a5
   197a0:	c23e                	sw	a5,4(sp)
   197a2:	bff9                	j	19780 <__ratio+0x42>

000197a4 <_mprec_log10>:
   197a4:	47dd                	li	a5,23
   197a6:	1141                	addi	sp,sp,-16
   197a8:	00a7df63          	bge	a5,a0,197c6 <_mprec_log10+0x22>
   197ac:	ed81b787          	fld	fa5,-296(gp) # 1f878 <__SDATA_BEGIN__+0x30>
   197b0:	ee01b707          	fld	fa4,-288(gp) # 1f880 <__SDATA_BEGIN__+0x38>
   197b4:	157d                	addi	a0,a0,-1
   197b6:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   197ba:	fd6d                	bnez	a0,197b4 <_mprec_log10+0x10>
   197bc:	a43e                	fsd	fa5,8(sp)
   197be:	4522                	lw	a0,8(sp)
   197c0:	45b2                	lw	a1,12(sp)
   197c2:	0141                	addi	sp,sp,16
   197c4:	8082                	ret
   197c6:	67f9                	lui	a5,0x1e
   197c8:	050e                	slli	a0,a0,0x3
   197ca:	d3878793          	addi	a5,a5,-712 # 1dd38 <__mprec_tens>
   197ce:	97aa                	add	a5,a5,a0
   197d0:	239c                	fld	fa5,0(a5)
   197d2:	a43e                	fsd	fa5,8(sp)
   197d4:	4522                	lw	a0,8(sp)
   197d6:	45b2                	lw	a1,12(sp)
   197d8:	0141                	addi	sp,sp,16
   197da:	8082                	ret

000197dc <__copybits>:
   197dc:	4a14                	lw	a3,16(a2)
   197de:	15fd                	addi	a1,a1,-1
   197e0:	8595                	srai	a1,a1,0x5
   197e2:	0585                	addi	a1,a1,1
   197e4:	01460793          	addi	a5,a2,20
   197e8:	068a                	slli	a3,a3,0x2
   197ea:	058a                	slli	a1,a1,0x2
   197ec:	96be                	add	a3,a3,a5
   197ee:	95aa                	add	a1,a1,a0
   197f0:	02d7f163          	bgeu	a5,a3,19812 <__copybits+0x36>
   197f4:	872a                	mv	a4,a0
   197f6:	0007a803          	lw	a6,0(a5)
   197fa:	0791                	addi	a5,a5,4
   197fc:	0711                	addi	a4,a4,4
   197fe:	ff072e23          	sw	a6,-4(a4)
   19802:	fed7eae3          	bltu	a5,a3,197f6 <__copybits+0x1a>
   19806:	40c687b3          	sub	a5,a3,a2
   1980a:	17ad                	addi	a5,a5,-21
   1980c:	9bf1                	andi	a5,a5,-4
   1980e:	0791                	addi	a5,a5,4
   19810:	953e                	add	a0,a0,a5
   19812:	00b57763          	bgeu	a0,a1,19820 <__copybits+0x44>
   19816:	0511                	addi	a0,a0,4
   19818:	fe052e23          	sw	zero,-4(a0)
   1981c:	feb56de3          	bltu	a0,a1,19816 <__copybits+0x3a>
   19820:	8082                	ret

00019822 <__any_on>:
   19822:	4918                	lw	a4,16(a0)
   19824:	4055d613          	srai	a2,a1,0x5
   19828:	01450693          	addi	a3,a0,20
   1982c:	00c75d63          	bge	a4,a2,19846 <__any_on+0x24>
   19830:	070a                	slli	a4,a4,0x2
   19832:	00e687b3          	add	a5,a3,a4
   19836:	02f6f863          	bgeu	a3,a5,19866 <__any_on+0x44>
   1983a:	ffc7a703          	lw	a4,-4(a5)
   1983e:	17f1                	addi	a5,a5,-4
   19840:	db7d                	beqz	a4,19836 <__any_on+0x14>
   19842:	4505                	li	a0,1
   19844:	8082                	ret
   19846:	00261793          	slli	a5,a2,0x2
   1984a:	97b6                	add	a5,a5,a3
   1984c:	fee655e3          	bge	a2,a4,19836 <__any_on+0x14>
   19850:	89fd                	andi	a1,a1,31
   19852:	d1f5                	beqz	a1,19836 <__any_on+0x14>
   19854:	4390                	lw	a2,0(a5)
   19856:	4505                	li	a0,1
   19858:	00b65733          	srl	a4,a2,a1
   1985c:	00b71733          	sll	a4,a4,a1
   19860:	fce60be3          	beq	a2,a4,19836 <__any_on+0x14>
   19864:	8082                	ret
   19866:	4501                	li	a0,0
   19868:	8082                	ret

0001986a <_realloc_r>:
   1986a:	7179                	addi	sp,sp,-48
   1986c:	d226                	sw	s1,36(sp)
   1986e:	d606                	sw	ra,44(sp)
   19870:	84b2                	mv	s1,a2
   19872:	14058e63          	beqz	a1,199ce <_realloc_r+0x164>
   19876:	d422                	sw	s0,40(sp)
   19878:	d04a                	sw	s2,32(sp)
   1987a:	842e                	mv	s0,a1
   1987c:	ce4e                	sw	s3,28(sp)
   1987e:	ca56                	sw	s5,20(sp)
   19880:	cc52                	sw	s4,24(sp)
   19882:	892a                	mv	s2,a0
   19884:	c8efb0ef          	jal	14d12 <__malloc_lock>
   19888:	ffc42703          	lw	a4,-4(s0)
   1988c:	00b48793          	addi	a5,s1,11
   19890:	46d9                	li	a3,22
   19892:	ff840a93          	addi	s5,s0,-8
   19896:	ffc77993          	andi	s3,a4,-4
   1989a:	0cf6f063          	bgeu	a3,a5,1995a <_realloc_r+0xf0>
   1989e:	ff87fa13          	andi	s4,a5,-8
   198a2:	0a07cf63          	bltz	a5,19960 <_realloc_r+0xf6>
   198a6:	0a9a6d63          	bltu	s4,s1,19960 <_realloc_r+0xf6>
   198aa:	0d49d663          	bge	s3,s4,19976 <_realloc_r+0x10c>
   198ae:	0001f7b7          	lui	a5,0x1f
   198b2:	c462                	sw	s8,8(sp)
   198b4:	2d078c13          	addi	s8,a5,720 # 1f2d0 <__malloc_av_>
   198b8:	008c2603          	lw	a2,8(s8)
   198bc:	013a86b3          	add	a3,s5,s3
   198c0:	42dc                	lw	a5,4(a3)
   198c2:	12d60e63          	beq	a2,a3,199fe <_realloc_r+0x194>
   198c6:	ffe7f613          	andi	a2,a5,-2
   198ca:	9636                	add	a2,a2,a3
   198cc:	4250                	lw	a2,4(a2)
   198ce:	8a05                	andi	a2,a2,1
   198d0:	e27d                	bnez	a2,199b6 <_realloc_r+0x14c>
   198d2:	9bf1                	andi	a5,a5,-4
   198d4:	00f98633          	add	a2,s3,a5
   198d8:	09465963          	bge	a2,s4,1996a <_realloc_r+0x100>
   198dc:	8b05                	andi	a4,a4,1
   198de:	e70d                	bnez	a4,19908 <_realloc_r+0x9e>
   198e0:	c65e                	sw	s7,12(sp)
   198e2:	ff842b83          	lw	s7,-8(s0)
   198e6:	c85a                	sw	s6,16(sp)
   198e8:	417a8bb3          	sub	s7,s5,s7
   198ec:	004ba703          	lw	a4,4(s7)
   198f0:	9b71                	andi	a4,a4,-4
   198f2:	97ba                	add	a5,a5,a4
   198f4:	01378b33          	add	s6,a5,s3
   198f8:	234b5f63          	bge	s6,s4,19b36 <_realloc_r+0x2cc>
   198fc:	00e98b33          	add	s6,s3,a4
   19900:	1d4b5463          	bge	s6,s4,19ac8 <_realloc_r+0x25e>
   19904:	4b42                	lw	s6,16(sp)
   19906:	4bb2                	lw	s7,12(sp)
   19908:	85a6                	mv	a1,s1
   1990a:	854a                	mv	a0,s2
   1990c:	e5dfa0ef          	jal	14768 <_malloc_r>
   19910:	84aa                	mv	s1,a0
   19912:	2e050063          	beqz	a0,19bf2 <_realloc_r+0x388>
   19916:	ffc42783          	lw	a5,-4(s0)
   1991a:	ff850713          	addi	a4,a0,-8
   1991e:	9bf9                	andi	a5,a5,-2
   19920:	97d6                	add	a5,a5,s5
   19922:	18e78d63          	beq	a5,a4,19abc <_realloc_r+0x252>
   19926:	ffc98613          	addi	a2,s3,-4
   1992a:	02400793          	li	a5,36
   1992e:	20c7e063          	bltu	a5,a2,19b2e <_realloc_r+0x2c4>
   19932:	474d                	li	a4,19
   19934:	16c76863          	bltu	a4,a2,19aa4 <_realloc_r+0x23a>
   19938:	87aa                	mv	a5,a0
   1993a:	8722                	mv	a4,s0
   1993c:	4314                	lw	a3,0(a4)
   1993e:	c394                	sw	a3,0(a5)
   19940:	4354                	lw	a3,4(a4)
   19942:	c3d4                	sw	a3,4(a5)
   19944:	4718                	lw	a4,8(a4)
   19946:	c798                	sw	a4,8(a5)
   19948:	85a2                	mv	a1,s0
   1994a:	854a                	mv	a0,s2
   1994c:	bf5fa0ef          	jal	14540 <_free_r>
   19950:	854a                	mv	a0,s2
   19952:	bc2fb0ef          	jal	14d14 <__malloc_unlock>
   19956:	4c22                	lw	s8,8(sp)
   19958:	a0a9                	j	199a2 <_realloc_r+0x138>
   1995a:	4a41                	li	s4,16
   1995c:	f49a77e3          	bgeu	s4,s1,198aa <_realloc_r+0x40>
   19960:	47b1                	li	a5,12
   19962:	00f92023          	sw	a5,0(s2)
   19966:	4481                	li	s1,0
   19968:	a82d                	j	199a2 <_realloc_r+0x138>
   1996a:	46dc                	lw	a5,12(a3)
   1996c:	4698                	lw	a4,8(a3)
   1996e:	4c22                	lw	s8,8(sp)
   19970:	89b2                	mv	s3,a2
   19972:	c75c                	sw	a5,12(a4)
   19974:	c798                	sw	a4,8(a5)
   19976:	004aa783          	lw	a5,4(s5)
   1997a:	414986b3          	sub	a3,s3,s4
   1997e:	463d                	li	a2,15
   19980:	8b85                	andi	a5,a5,1
   19982:	013a8733          	add	a4,s5,s3
   19986:	04d66a63          	bltu	a2,a3,199da <_realloc_r+0x170>
   1998a:	0137e7b3          	or	a5,a5,s3
   1998e:	00faa223          	sw	a5,4(s5)
   19992:	435c                	lw	a5,4(a4)
   19994:	0017e793          	ori	a5,a5,1
   19998:	c35c                	sw	a5,4(a4)
   1999a:	854a                	mv	a0,s2
   1999c:	b78fb0ef          	jal	14d14 <__malloc_unlock>
   199a0:	84a2                	mv	s1,s0
   199a2:	5422                	lw	s0,40(sp)
   199a4:	50b2                	lw	ra,44(sp)
   199a6:	5902                	lw	s2,32(sp)
   199a8:	49f2                	lw	s3,28(sp)
   199aa:	4a62                	lw	s4,24(sp)
   199ac:	4ad2                	lw	s5,20(sp)
   199ae:	8526                	mv	a0,s1
   199b0:	5492                	lw	s1,36(sp)
   199b2:	6145                	addi	sp,sp,48
   199b4:	8082                	ret
   199b6:	8b05                	andi	a4,a4,1
   199b8:	fb21                	bnez	a4,19908 <_realloc_r+0x9e>
   199ba:	c65e                	sw	s7,12(sp)
   199bc:	ff842b83          	lw	s7,-8(s0)
   199c0:	c85a                	sw	s6,16(sp)
   199c2:	417a8bb3          	sub	s7,s5,s7
   199c6:	004ba703          	lw	a4,4(s7)
   199ca:	9b71                	andi	a4,a4,-4
   199cc:	bf05                	j	198fc <_realloc_r+0x92>
   199ce:	50b2                	lw	ra,44(sp)
   199d0:	5492                	lw	s1,36(sp)
   199d2:	85b2                	mv	a1,a2
   199d4:	6145                	addi	sp,sp,48
   199d6:	d93fa06f          	j	14768 <_malloc_r>
   199da:	0147e7b3          	or	a5,a5,s4
   199de:	00faa223          	sw	a5,4(s5)
   199e2:	014a85b3          	add	a1,s5,s4
   199e6:	0016e693          	ori	a3,a3,1
   199ea:	c1d4                	sw	a3,4(a1)
   199ec:	435c                	lw	a5,4(a4)
   199ee:	05a1                	addi	a1,a1,8
   199f0:	854a                	mv	a0,s2
   199f2:	0017e793          	ori	a5,a5,1
   199f6:	c35c                	sw	a5,4(a4)
   199f8:	b49fa0ef          	jal	14540 <_free_r>
   199fc:	bf79                	j	1999a <_realloc_r+0x130>
   199fe:	9bf1                	andi	a5,a5,-4
   19a00:	013786b3          	add	a3,a5,s3
   19a04:	010a0613          	addi	a2,s4,16
   19a08:	1ac6db63          	bge	a3,a2,19bbe <_realloc_r+0x354>
   19a0c:	8b05                	andi	a4,a4,1
   19a0e:	ee071de3          	bnez	a4,19908 <_realloc_r+0x9e>
   19a12:	c65e                	sw	s7,12(sp)
   19a14:	ff842b83          	lw	s7,-8(s0)
   19a18:	c85a                	sw	s6,16(sp)
   19a1a:	417a8bb3          	sub	s7,s5,s7
   19a1e:	004ba703          	lw	a4,4(s7)
   19a22:	9b71                	andi	a4,a4,-4
   19a24:	97ba                	add	a5,a5,a4
   19a26:	01378b33          	add	s6,a5,s3
   19a2a:	eccb49e3          	blt	s6,a2,198fc <_realloc_r+0x92>
   19a2e:	00cba783          	lw	a5,12(s7)
   19a32:	008ba703          	lw	a4,8(s7)
   19a36:	ffc98613          	addi	a2,s3,-4
   19a3a:	02400693          	li	a3,36
   19a3e:	c75c                	sw	a5,12(a4)
   19a40:	c798                	sw	a4,8(a5)
   19a42:	008b8493          	addi	s1,s7,8
   19a46:	1cc6e563          	bltu	a3,a2,19c10 <_realloc_r+0x3a6>
   19a4a:	474d                	li	a4,19
   19a4c:	87a6                	mv	a5,s1
   19a4e:	00c77e63          	bgeu	a4,a2,19a6a <_realloc_r+0x200>
   19a52:	4018                	lw	a4,0(s0)
   19a54:	47ed                	li	a5,27
   19a56:	00eba423          	sw	a4,8(s7)
   19a5a:	4058                	lw	a4,4(s0)
   19a5c:	00eba623          	sw	a4,12(s7)
   19a60:	1ac7ed63          	bltu	a5,a2,19c1a <_realloc_r+0x3b0>
   19a64:	0421                	addi	s0,s0,8
   19a66:	010b8793          	addi	a5,s7,16
   19a6a:	4018                	lw	a4,0(s0)
   19a6c:	c398                	sw	a4,0(a5)
   19a6e:	4058                	lw	a4,4(s0)
   19a70:	c3d8                	sw	a4,4(a5)
   19a72:	4418                	lw	a4,8(s0)
   19a74:	c798                	sw	a4,8(a5)
   19a76:	014b8733          	add	a4,s7,s4
   19a7a:	414b0b33          	sub	s6,s6,s4
   19a7e:	00ec2423          	sw	a4,8(s8)
   19a82:	001b6793          	ori	a5,s6,1
   19a86:	c35c                	sw	a5,4(a4)
   19a88:	004ba783          	lw	a5,4(s7)
   19a8c:	854a                	mv	a0,s2
   19a8e:	8b85                	andi	a5,a5,1
   19a90:	0147e7b3          	or	a5,a5,s4
   19a94:	00fba223          	sw	a5,4(s7)
   19a98:	a7cfb0ef          	jal	14d14 <__malloc_unlock>
   19a9c:	4b42                	lw	s6,16(sp)
   19a9e:	4bb2                	lw	s7,12(sp)
   19aa0:	4c22                	lw	s8,8(sp)
   19aa2:	b701                	j	199a2 <_realloc_r+0x138>
   19aa4:	4014                	lw	a3,0(s0)
   19aa6:	476d                	li	a4,27
   19aa8:	c114                	sw	a3,0(a0)
   19aaa:	4054                	lw	a3,4(s0)
   19aac:	c154                	sw	a3,4(a0)
   19aae:	0ec76d63          	bltu	a4,a2,19ba8 <_realloc_r+0x33e>
   19ab2:	00840713          	addi	a4,s0,8
   19ab6:	00850793          	addi	a5,a0,8
   19aba:	b549                	j	1993c <_realloc_r+0xd2>
   19abc:	ffc52783          	lw	a5,-4(a0)
   19ac0:	4c22                	lw	s8,8(sp)
   19ac2:	9bf1                	andi	a5,a5,-4
   19ac4:	99be                	add	s3,s3,a5
   19ac6:	bd45                	j	19976 <_realloc_r+0x10c>
   19ac8:	00cba783          	lw	a5,12(s7)
   19acc:	008ba703          	lw	a4,8(s7)
   19ad0:	ffc98613          	addi	a2,s3,-4
   19ad4:	02400693          	li	a3,36
   19ad8:	c75c                	sw	a5,12(a4)
   19ada:	c798                	sw	a4,8(a5)
   19adc:	008b8493          	addi	s1,s7,8
   19ae0:	0ac6ef63          	bltu	a3,a2,19b9e <_realloc_r+0x334>
   19ae4:	474d                	li	a4,19
   19ae6:	87a6                	mv	a5,s1
   19ae8:	02c77663          	bgeu	a4,a2,19b14 <_realloc_r+0x2aa>
   19aec:	4018                	lw	a4,0(s0)
   19aee:	47ed                	li	a5,27
   19af0:	00eba423          	sw	a4,8(s7)
   19af4:	4058                	lw	a4,4(s0)
   19af6:	00eba623          	sw	a4,12(s7)
   19afa:	0ec7f863          	bgeu	a5,a2,19bea <_realloc_r+0x380>
   19afe:	441c                	lw	a5,8(s0)
   19b00:	00fba823          	sw	a5,16(s7)
   19b04:	445c                	lw	a5,12(s0)
   19b06:	00fbaa23          	sw	a5,20(s7)
   19b0a:	06d60f63          	beq	a2,a3,19b88 <_realloc_r+0x31e>
   19b0e:	0441                	addi	s0,s0,16
   19b10:	018b8793          	addi	a5,s7,24
   19b14:	4018                	lw	a4,0(s0)
   19b16:	c398                	sw	a4,0(a5)
   19b18:	4058                	lw	a4,4(s0)
   19b1a:	c3d8                	sw	a4,4(a5)
   19b1c:	4418                	lw	a4,8(s0)
   19b1e:	c798                	sw	a4,8(a5)
   19b20:	89da                	mv	s3,s6
   19b22:	8ade                	mv	s5,s7
   19b24:	4b42                	lw	s6,16(sp)
   19b26:	4bb2                	lw	s7,12(sp)
   19b28:	4c22                	lw	s8,8(sp)
   19b2a:	8426                	mv	s0,s1
   19b2c:	b5a9                	j	19976 <_realloc_r+0x10c>
   19b2e:	85a2                	mv	a1,s0
   19b30:	87ffd0ef          	jal	173ae <memmove>
   19b34:	bd11                	j	19948 <_realloc_r+0xde>
   19b36:	46dc                	lw	a5,12(a3)
   19b38:	4698                	lw	a4,8(a3)
   19b3a:	ffc98613          	addi	a2,s3,-4
   19b3e:	02400693          	li	a3,36
   19b42:	c75c                	sw	a5,12(a4)
   19b44:	c798                	sw	a4,8(a5)
   19b46:	008ba703          	lw	a4,8(s7)
   19b4a:	00cba783          	lw	a5,12(s7)
   19b4e:	008b8493          	addi	s1,s7,8
   19b52:	c75c                	sw	a5,12(a4)
   19b54:	c798                	sw	a4,8(a5)
   19b56:	04c6e463          	bltu	a3,a2,19b9e <_realloc_r+0x334>
   19b5a:	474d                	li	a4,19
   19b5c:	87a6                	mv	a5,s1
   19b5e:	fac77be3          	bgeu	a4,a2,19b14 <_realloc_r+0x2aa>
   19b62:	4018                	lw	a4,0(s0)
   19b64:	47ed                	li	a5,27
   19b66:	00eba423          	sw	a4,8(s7)
   19b6a:	4058                	lw	a4,4(s0)
   19b6c:	00eba623          	sw	a4,12(s7)
   19b70:	06c7fd63          	bgeu	a5,a2,19bea <_realloc_r+0x380>
   19b74:	4418                	lw	a4,8(s0)
   19b76:	02400793          	li	a5,36
   19b7a:	00eba823          	sw	a4,16(s7)
   19b7e:	4458                	lw	a4,12(s0)
   19b80:	00ebaa23          	sw	a4,20(s7)
   19b84:	f8f615e3          	bne	a2,a5,19b0e <_realloc_r+0x2a4>
   19b88:	4818                	lw	a4,16(s0)
   19b8a:	020b8793          	addi	a5,s7,32
   19b8e:	0461                	addi	s0,s0,24
   19b90:	00ebac23          	sw	a4,24(s7)
   19b94:	ffc42703          	lw	a4,-4(s0)
   19b98:	00ebae23          	sw	a4,28(s7)
   19b9c:	bfa5                	j	19b14 <_realloc_r+0x2aa>
   19b9e:	85a2                	mv	a1,s0
   19ba0:	8526                	mv	a0,s1
   19ba2:	80dfd0ef          	jal	173ae <memmove>
   19ba6:	bfad                	j	19b20 <_realloc_r+0x2b6>
   19ba8:	4418                	lw	a4,8(s0)
   19baa:	c518                	sw	a4,8(a0)
   19bac:	4458                	lw	a4,12(s0)
   19bae:	c558                	sw	a4,12(a0)
   19bb0:	04f60763          	beq	a2,a5,19bfe <_realloc_r+0x394>
   19bb4:	01040713          	addi	a4,s0,16
   19bb8:	01050793          	addi	a5,a0,16
   19bbc:	b341                	j	1993c <_realloc_r+0xd2>
   19bbe:	9ad2                	add	s5,s5,s4
   19bc0:	414686b3          	sub	a3,a3,s4
   19bc4:	015c2423          	sw	s5,8(s8)
   19bc8:	0016e793          	ori	a5,a3,1
   19bcc:	00faa223          	sw	a5,4(s5)
   19bd0:	ffc42783          	lw	a5,-4(s0)
   19bd4:	854a                	mv	a0,s2
   19bd6:	84a2                	mv	s1,s0
   19bd8:	8b85                	andi	a5,a5,1
   19bda:	0147e7b3          	or	a5,a5,s4
   19bde:	fef42e23          	sw	a5,-4(s0)
   19be2:	932fb0ef          	jal	14d14 <__malloc_unlock>
   19be6:	4c22                	lw	s8,8(sp)
   19be8:	bb6d                	j	199a2 <_realloc_r+0x138>
   19bea:	0421                	addi	s0,s0,8
   19bec:	010b8793          	addi	a5,s7,16
   19bf0:	b715                	j	19b14 <_realloc_r+0x2aa>
   19bf2:	854a                	mv	a0,s2
   19bf4:	920fb0ef          	jal	14d14 <__malloc_unlock>
   19bf8:	4481                	li	s1,0
   19bfa:	4c22                	lw	s8,8(sp)
   19bfc:	b35d                	j	199a2 <_realloc_r+0x138>
   19bfe:	4814                	lw	a3,16(s0)
   19c00:	01840713          	addi	a4,s0,24
   19c04:	01850793          	addi	a5,a0,24
   19c08:	c914                	sw	a3,16(a0)
   19c0a:	4854                	lw	a3,20(s0)
   19c0c:	c954                	sw	a3,20(a0)
   19c0e:	b33d                	j	1993c <_realloc_r+0xd2>
   19c10:	85a2                	mv	a1,s0
   19c12:	8526                	mv	a0,s1
   19c14:	f9afd0ef          	jal	173ae <memmove>
   19c18:	bdb9                	j	19a76 <_realloc_r+0x20c>
   19c1a:	441c                	lw	a5,8(s0)
   19c1c:	00fba823          	sw	a5,16(s7)
   19c20:	445c                	lw	a5,12(s0)
   19c22:	00fbaa23          	sw	a5,20(s7)
   19c26:	00d60663          	beq	a2,a3,19c32 <_realloc_r+0x3c8>
   19c2a:	0441                	addi	s0,s0,16
   19c2c:	018b8793          	addi	a5,s7,24
   19c30:	bd2d                	j	19a6a <_realloc_r+0x200>
   19c32:	4818                	lw	a4,16(s0)
   19c34:	020b8793          	addi	a5,s7,32
   19c38:	00ebac23          	sw	a4,24(s7)
   19c3c:	4858                	lw	a4,20(s0)
   19c3e:	0461                	addi	s0,s0,24
   19c40:	00ebae23          	sw	a4,28(s7)
   19c44:	b51d                	j	19a6a <_realloc_r+0x200>

00019c46 <__smakebuf_r>:
   19c46:	00c59783          	lh	a5,12(a1)
   19c4a:	7119                	addi	sp,sp,-128
   19c4c:	dca2                	sw	s0,120(sp)
   19c4e:	de86                	sw	ra,124(sp)
   19c50:	0027f713          	andi	a4,a5,2
   19c54:	842e                	mv	s0,a1
   19c56:	cb19                	beqz	a4,19c6c <__smakebuf_r+0x26>
   19c58:	04358793          	addi	a5,a1,67
   19c5c:	c19c                	sw	a5,0(a1)
   19c5e:	c99c                	sw	a5,16(a1)
   19c60:	4785                	li	a5,1
   19c62:	c9dc                	sw	a5,20(a1)
   19c64:	50f6                	lw	ra,124(sp)
   19c66:	5466                	lw	s0,120(sp)
   19c68:	6109                	addi	sp,sp,128
   19c6a:	8082                	ret
   19c6c:	00e59583          	lh	a1,14(a1)
   19c70:	daa6                	sw	s1,116(sp)
   19c72:	d8ca                	sw	s2,112(sp)
   19c74:	d6ce                	sw	s3,108(sp)
   19c76:	d4d2                	sw	s4,104(sp)
   19c78:	84aa                	mv	s1,a0
   19c7a:	0605c263          	bltz	a1,19cde <__smakebuf_r+0x98>
   19c7e:	0030                	addi	a2,sp,8
   19c80:	22fd                	jal	19e6e <_fstat_r>
   19c82:	04054c63          	bltz	a0,19cda <__smakebuf_r+0x94>
   19c86:	47b2                	lw	a5,12(sp)
   19c88:	693d                	lui	s2,0xf
   19c8a:	6985                	lui	s3,0x1
   19c8c:	00f97933          	and	s2,s2,a5
   19c90:	77f9                	lui	a5,0xffffe
   19c92:	993e                	add	s2,s2,a5
   19c94:	00193913          	seqz	s2,s2
   19c98:	40000a13          	li	s4,1024
   19c9c:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf894>
   19ca0:	85d2                	mv	a1,s4
   19ca2:	8526                	mv	a0,s1
   19ca4:	ac5fa0ef          	jal	14768 <_malloc_r>
   19ca8:	00c41783          	lh	a5,12(s0)
   19cac:	c539                	beqz	a0,19cfa <__smakebuf_r+0xb4>
   19cae:	0807e793          	ori	a5,a5,128
   19cb2:	c008                	sw	a0,0(s0)
   19cb4:	c808                	sw	a0,16(s0)
   19cb6:	00f41623          	sh	a5,12(s0)
   19cba:	01442a23          	sw	s4,20(s0)
   19cbe:	06091563          	bnez	s2,19d28 <__smakebuf_r+0xe2>
   19cc2:	0137e7b3          	or	a5,a5,s3
   19cc6:	50f6                	lw	ra,124(sp)
   19cc8:	00f41623          	sh	a5,12(s0)
   19ccc:	5466                	lw	s0,120(sp)
   19cce:	54d6                	lw	s1,116(sp)
   19cd0:	5946                	lw	s2,112(sp)
   19cd2:	59b6                	lw	s3,108(sp)
   19cd4:	5a26                	lw	s4,104(sp)
   19cd6:	6109                	addi	sp,sp,128
   19cd8:	8082                	ret
   19cda:	00c41783          	lh	a5,12(s0)
   19cde:	0807f793          	andi	a5,a5,128
   19ce2:	4901                	li	s2,0
   19ce4:	cf95                	beqz	a5,19d20 <__smakebuf_r+0xda>
   19ce6:	04000a13          	li	s4,64
   19cea:	85d2                	mv	a1,s4
   19cec:	8526                	mv	a0,s1
   19cee:	a7bfa0ef          	jal	14768 <_malloc_r>
   19cf2:	00c41783          	lh	a5,12(s0)
   19cf6:	4981                	li	s3,0
   19cf8:	f95d                	bnez	a0,19cae <__smakebuf_r+0x68>
   19cfa:	2007f713          	andi	a4,a5,512
   19cfe:	ef0d                	bnez	a4,19d38 <__smakebuf_r+0xf2>
   19d00:	9bf1                	andi	a5,a5,-4
   19d02:	0027e793          	ori	a5,a5,2
   19d06:	04340713          	addi	a4,s0,67
   19d0a:	00f41623          	sh	a5,12(s0)
   19d0e:	4785                	li	a5,1
   19d10:	54d6                	lw	s1,116(sp)
   19d12:	5946                	lw	s2,112(sp)
   19d14:	59b6                	lw	s3,108(sp)
   19d16:	5a26                	lw	s4,104(sp)
   19d18:	c018                	sw	a4,0(s0)
   19d1a:	c818                	sw	a4,16(s0)
   19d1c:	c85c                	sw	a5,20(s0)
   19d1e:	b799                	j	19c64 <__smakebuf_r+0x1e>
   19d20:	40000a13          	li	s4,1024
   19d24:	4981                	li	s3,0
   19d26:	bfad                	j	19ca0 <__smakebuf_r+0x5a>
   19d28:	00e41583          	lh	a1,14(s0)
   19d2c:	8526                	mv	a0,s1
   19d2e:	2aad                	jal	19ea8 <_isatty_r>
   19d30:	e909                	bnez	a0,19d42 <__smakebuf_r+0xfc>
   19d32:	00c41783          	lh	a5,12(s0)
   19d36:	b771                	j	19cc2 <__smakebuf_r+0x7c>
   19d38:	54d6                	lw	s1,116(sp)
   19d3a:	5946                	lw	s2,112(sp)
   19d3c:	59b6                	lw	s3,108(sp)
   19d3e:	5a26                	lw	s4,104(sp)
   19d40:	b715                	j	19c64 <__smakebuf_r+0x1e>
   19d42:	00c45783          	lhu	a5,12(s0)
   19d46:	9bf1                	andi	a5,a5,-4
   19d48:	0017e793          	ori	a5,a5,1
   19d4c:	07c2                	slli	a5,a5,0x10
   19d4e:	87c1                	srai	a5,a5,0x10
   19d50:	bf8d                	j	19cc2 <__smakebuf_r+0x7c>

00019d52 <__swhatbuf_r>:
   19d52:	7159                	addi	sp,sp,-112
   19d54:	d4a2                	sw	s0,104(sp)
   19d56:	842e                	mv	s0,a1
   19d58:	00e59583          	lh	a1,14(a1)
   19d5c:	d2a6                	sw	s1,100(sp)
   19d5e:	d0ca                	sw	s2,96(sp)
   19d60:	d686                	sw	ra,108(sp)
   19d62:	84b2                	mv	s1,a2
   19d64:	8936                	mv	s2,a3
   19d66:	0205cb63          	bltz	a1,19d9c <__swhatbuf_r+0x4a>
   19d6a:	0030                	addi	a2,sp,8
   19d6c:	2209                	jal	19e6e <_fstat_r>
   19d6e:	02054763          	bltz	a0,19d9c <__swhatbuf_r+0x4a>
   19d72:	4732                	lw	a4,12(sp)
   19d74:	67bd                	lui	a5,0xf
   19d76:	50b6                	lw	ra,108(sp)
   19d78:	8ff9                	and	a5,a5,a4
   19d7a:	7779                	lui	a4,0xffffe
   19d7c:	97ba                	add	a5,a5,a4
   19d7e:	5426                	lw	s0,104(sp)
   19d80:	0017b793          	seqz	a5,a5
   19d84:	00f92023          	sw	a5,0(s2) # f000 <exit-0x1094>
   19d88:	40000713          	li	a4,1024
   19d8c:	c098                	sw	a4,0(s1)
   19d8e:	6505                	lui	a0,0x1
   19d90:	5496                	lw	s1,100(sp)
   19d92:	5906                	lw	s2,96(sp)
   19d94:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf894>
   19d98:	6165                	addi	sp,sp,112
   19d9a:	8082                	ret
   19d9c:	00c45783          	lhu	a5,12(s0)
   19da0:	0807f793          	andi	a5,a5,128
   19da4:	cf91                	beqz	a5,19dc0 <__swhatbuf_r+0x6e>
   19da6:	50b6                	lw	ra,108(sp)
   19da8:	5426                	lw	s0,104(sp)
   19daa:	4781                	li	a5,0
   19dac:	00f92023          	sw	a5,0(s2)
   19db0:	04000713          	li	a4,64
   19db4:	c098                	sw	a4,0(s1)
   19db6:	5906                	lw	s2,96(sp)
   19db8:	5496                	lw	s1,100(sp)
   19dba:	4501                	li	a0,0
   19dbc:	6165                	addi	sp,sp,112
   19dbe:	8082                	ret
   19dc0:	50b6                	lw	ra,108(sp)
   19dc2:	5426                	lw	s0,104(sp)
   19dc4:	00f92023          	sw	a5,0(s2)
   19dc8:	40000713          	li	a4,1024
   19dcc:	c098                	sw	a4,0(s1)
   19dce:	5906                	lw	s2,96(sp)
   19dd0:	5496                	lw	s1,100(sp)
   19dd2:	4501                	li	a0,0
   19dd4:	6165                	addi	sp,sp,112
   19dd6:	8082                	ret

00019dd8 <_setlocale_r>:
   19dd8:	1141                	addi	sp,sp,-16
   19dda:	c606                	sw	ra,12(sp)
   19ddc:	c226                	sw	s1,4(sp)
   19dde:	c20d                	beqz	a2,19e00 <_setlocale_r+0x28>
   19de0:	65f9                	lui	a1,0x1e
   19de2:	a5858593          	addi	a1,a1,-1448 # 1da58 <__clzsi2+0x1a0>
   19de6:	8532                	mv	a0,a2
   19de8:	c422                	sw	s0,8(sp)
   19dea:	8432                	mv	s0,a2
   19dec:	28cd                	jal	19ede <strcmp>
   19dee:	64f9                	lui	s1,0x1e
   19df0:	e911                	bnez	a0,19e04 <_setlocale_r+0x2c>
   19df2:	4422                	lw	s0,8(sp)
   19df4:	a5448513          	addi	a0,s1,-1452 # 1da54 <__clzsi2+0x19c>
   19df8:	40b2                	lw	ra,12(sp)
   19dfa:	4492                	lw	s1,4(sp)
   19dfc:	0141                	addi	sp,sp,16
   19dfe:	8082                	ret
   19e00:	64f9                	lui	s1,0x1e
   19e02:	bfcd                	j	19df4 <_setlocale_r+0x1c>
   19e04:	a5448593          	addi	a1,s1,-1452 # 1da54 <__clzsi2+0x19c>
   19e08:	8522                	mv	a0,s0
   19e0a:	28d1                	jal	19ede <strcmp>
   19e0c:	d17d                	beqz	a0,19df2 <_setlocale_r+0x1a>
   19e0e:	65f9                	lui	a1,0x1e
   19e10:	a7058593          	addi	a1,a1,-1424 # 1da70 <__clzsi2+0x1b8>
   19e14:	8522                	mv	a0,s0
   19e16:	20e1                	jal	19ede <strcmp>
   19e18:	dd69                	beqz	a0,19df2 <_setlocale_r+0x1a>
   19e1a:	4422                	lw	s0,8(sp)
   19e1c:	4501                	li	a0,0
   19e1e:	bfe9                	j	19df8 <_setlocale_r+0x20>

00019e20 <__locale_mb_cur_max>:
   19e20:	e601c503          	lbu	a0,-416(gp) # 1f800 <__global_locale+0x128>
   19e24:	8082                	ret

00019e26 <setlocale>:
   19e26:	1141                	addi	sp,sp,-16
   19e28:	c606                	sw	ra,12(sp)
   19e2a:	c226                	sw	s1,4(sp)
   19e2c:	c18d                	beqz	a1,19e4e <setlocale+0x28>
   19e2e:	c422                	sw	s0,8(sp)
   19e30:	842e                	mv	s0,a1
   19e32:	65f9                	lui	a1,0x1e
   19e34:	a5858593          	addi	a1,a1,-1448 # 1da58 <__clzsi2+0x1a0>
   19e38:	8522                	mv	a0,s0
   19e3a:	2055                	jal	19ede <strcmp>
   19e3c:	64f9                	lui	s1,0x1e
   19e3e:	e911                	bnez	a0,19e52 <setlocale+0x2c>
   19e40:	4422                	lw	s0,8(sp)
   19e42:	a5448513          	addi	a0,s1,-1452 # 1da54 <__clzsi2+0x19c>
   19e46:	40b2                	lw	ra,12(sp)
   19e48:	4492                	lw	s1,4(sp)
   19e4a:	0141                	addi	sp,sp,16
   19e4c:	8082                	ret
   19e4e:	64f9                	lui	s1,0x1e
   19e50:	bfcd                	j	19e42 <setlocale+0x1c>
   19e52:	a5448593          	addi	a1,s1,-1452 # 1da54 <__clzsi2+0x19c>
   19e56:	8522                	mv	a0,s0
   19e58:	2059                	jal	19ede <strcmp>
   19e5a:	d17d                	beqz	a0,19e40 <setlocale+0x1a>
   19e5c:	65f9                	lui	a1,0x1e
   19e5e:	a7058593          	addi	a1,a1,-1424 # 1da70 <__clzsi2+0x1b8>
   19e62:	8522                	mv	a0,s0
   19e64:	28ad                	jal	19ede <strcmp>
   19e66:	dd69                	beqz	a0,19e40 <setlocale+0x1a>
   19e68:	4422                	lw	s0,8(sp)
   19e6a:	4501                	li	a0,0
   19e6c:	bfe9                	j	19e46 <setlocale+0x20>

00019e6e <_fstat_r>:
   19e6e:	1141                	addi	sp,sp,-16
   19e70:	872e                	mv	a4,a1
   19e72:	c422                	sw	s0,8(sp)
   19e74:	c226                	sw	s1,4(sp)
   19e76:	842a                	mv	s0,a0
   19e78:	85b2                	mv	a1,a2
   19e7a:	853a                	mv	a0,a4
   19e7c:	c606                	sw	ra,12(sp)
   19e7e:	f201a223          	sw	zero,-220(gp) # 1f8c4 <errno>
   19e82:	3f6010ef          	jal	1b278 <_fstat>
   19e86:	57fd                	li	a5,-1
   19e88:	00f50763          	beq	a0,a5,19e96 <_fstat_r+0x28>
   19e8c:	40b2                	lw	ra,12(sp)
   19e8e:	4422                	lw	s0,8(sp)
   19e90:	4492                	lw	s1,4(sp)
   19e92:	0141                	addi	sp,sp,16
   19e94:	8082                	ret
   19e96:	f241a783          	lw	a5,-220(gp) # 1f8c4 <errno>
   19e9a:	dbed                	beqz	a5,19e8c <_fstat_r+0x1e>
   19e9c:	40b2                	lw	ra,12(sp)
   19e9e:	c01c                	sw	a5,0(s0)
   19ea0:	4422                	lw	s0,8(sp)
   19ea2:	4492                	lw	s1,4(sp)
   19ea4:	0141                	addi	sp,sp,16
   19ea6:	8082                	ret

00019ea8 <_isatty_r>:
   19ea8:	1141                	addi	sp,sp,-16
   19eaa:	c422                	sw	s0,8(sp)
   19eac:	c226                	sw	s1,4(sp)
   19eae:	842a                	mv	s0,a0
   19eb0:	852e                	mv	a0,a1
   19eb2:	c606                	sw	ra,12(sp)
   19eb4:	f201a223          	sw	zero,-220(gp) # 1f8c4 <errno>
   19eb8:	3fe010ef          	jal	1b2b6 <_isatty>
   19ebc:	57fd                	li	a5,-1
   19ebe:	00f50763          	beq	a0,a5,19ecc <_isatty_r+0x24>
   19ec2:	40b2                	lw	ra,12(sp)
   19ec4:	4422                	lw	s0,8(sp)
   19ec6:	4492                	lw	s1,4(sp)
   19ec8:	0141                	addi	sp,sp,16
   19eca:	8082                	ret
   19ecc:	f241a783          	lw	a5,-220(gp) # 1f8c4 <errno>
   19ed0:	dbed                	beqz	a5,19ec2 <_isatty_r+0x1a>
   19ed2:	40b2                	lw	ra,12(sp)
   19ed4:	c01c                	sw	a5,0(s0)
   19ed6:	4422                	lw	s0,8(sp)
   19ed8:	4492                	lw	s1,4(sp)
   19eda:	0141                	addi	sp,sp,16
   19edc:	8082                	ret

00019ede <strcmp>:
   19ede:	00b56733          	or	a4,a0,a1
   19ee2:	53fd                	li	t2,-1
   19ee4:	8b0d                	andi	a4,a4,3
   19ee6:	e779                	bnez	a4,19fb4 <strcmp+0xd6>
   19ee8:	7f7f87b7          	lui	a5,0x7f7f8
   19eec:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7d8393>
   19ef0:	4110                	lw	a2,0(a0)
   19ef2:	4194                	lw	a3,0(a1)
   19ef4:	00f672b3          	and	t0,a2,a5
   19ef8:	00f66333          	or	t1,a2,a5
   19efc:	92be                	add	t0,t0,a5
   19efe:	0062e2b3          	or	t0,t0,t1
   19f02:	0c729763          	bne	t0,t2,19fd0 <strcmp+0xf2>
   19f06:	06d61863          	bne	a2,a3,19f76 <strcmp+0x98>
   19f0a:	4150                	lw	a2,4(a0)
   19f0c:	41d4                	lw	a3,4(a1)
   19f0e:	00f672b3          	and	t0,a2,a5
   19f12:	00f66333          	or	t1,a2,a5
   19f16:	92be                	add	t0,t0,a5
   19f18:	0062e2b3          	or	t0,t0,t1
   19f1c:	0a729863          	bne	t0,t2,19fcc <strcmp+0xee>
   19f20:	04d61b63          	bne	a2,a3,19f76 <strcmp+0x98>
   19f24:	4510                	lw	a2,8(a0)
   19f26:	4594                	lw	a3,8(a1)
   19f28:	00f672b3          	and	t0,a2,a5
   19f2c:	00f66333          	or	t1,a2,a5
   19f30:	92be                	add	t0,t0,a5
   19f32:	0062e2b3          	or	t0,t0,t1
   19f36:	0a729163          	bne	t0,t2,19fd8 <strcmp+0xfa>
   19f3a:	02d61e63          	bne	a2,a3,19f76 <strcmp+0x98>
   19f3e:	4550                	lw	a2,12(a0)
   19f40:	45d4                	lw	a3,12(a1)
   19f42:	00f672b3          	and	t0,a2,a5
   19f46:	00f66333          	or	t1,a2,a5
   19f4a:	92be                	add	t0,t0,a5
   19f4c:	0062e2b3          	or	t0,t0,t1
   19f50:	08729a63          	bne	t0,t2,19fe4 <strcmp+0x106>
   19f54:	02d61163          	bne	a2,a3,19f76 <strcmp+0x98>
   19f58:	4910                	lw	a2,16(a0)
   19f5a:	4994                	lw	a3,16(a1)
   19f5c:	00f672b3          	and	t0,a2,a5
   19f60:	00f66333          	or	t1,a2,a5
   19f64:	92be                	add	t0,t0,a5
   19f66:	0062e2b3          	or	t0,t0,t1
   19f6a:	08729363          	bne	t0,t2,19ff0 <strcmp+0x112>
   19f6e:	0551                	addi	a0,a0,20
   19f70:	05d1                	addi	a1,a1,20
   19f72:	f6d60fe3          	beq	a2,a3,19ef0 <strcmp+0x12>
   19f76:	01061713          	slli	a4,a2,0x10
   19f7a:	01069793          	slli	a5,a3,0x10
   19f7e:	00f71c63          	bne	a4,a5,19f96 <strcmp+0xb8>
   19f82:	01065713          	srli	a4,a2,0x10
   19f86:	0106d793          	srli	a5,a3,0x10
   19f8a:	40f70533          	sub	a0,a4,a5
   19f8e:	0ff57593          	zext.b	a1,a0
   19f92:	e991                	bnez	a1,19fa6 <strcmp+0xc8>
   19f94:	8082                	ret
   19f96:	8341                	srli	a4,a4,0x10
   19f98:	83c1                	srli	a5,a5,0x10
   19f9a:	40f70533          	sub	a0,a4,a5
   19f9e:	0ff57593          	zext.b	a1,a0
   19fa2:	e191                	bnez	a1,19fa6 <strcmp+0xc8>
   19fa4:	8082                	ret
   19fa6:	0ff77713          	zext.b	a4,a4
   19faa:	0ff7f793          	zext.b	a5,a5
   19fae:	40f70533          	sub	a0,a4,a5
   19fb2:	8082                	ret
   19fb4:	00054603          	lbu	a2,0(a0)
   19fb8:	0005c683          	lbu	a3,0(a1)
   19fbc:	0505                	addi	a0,a0,1
   19fbe:	0585                	addi	a1,a1,1
   19fc0:	00d61363          	bne	a2,a3,19fc6 <strcmp+0xe8>
   19fc4:	fa65                	bnez	a2,19fb4 <strcmp+0xd6>
   19fc6:	40d60533          	sub	a0,a2,a3
   19fca:	8082                	ret
   19fcc:	0511                	addi	a0,a0,4
   19fce:	0591                	addi	a1,a1,4
   19fd0:	fed612e3          	bne	a2,a3,19fb4 <strcmp+0xd6>
   19fd4:	4501                	li	a0,0
   19fd6:	8082                	ret
   19fd8:	0521                	addi	a0,a0,8
   19fda:	05a1                	addi	a1,a1,8
   19fdc:	fcd61ce3          	bne	a2,a3,19fb4 <strcmp+0xd6>
   19fe0:	4501                	li	a0,0
   19fe2:	8082                	ret
   19fe4:	0531                	addi	a0,a0,12
   19fe6:	05b1                	addi	a1,a1,12
   19fe8:	fcd616e3          	bne	a2,a3,19fb4 <strcmp+0xd6>
   19fec:	4501                	li	a0,0
   19fee:	8082                	ret
   19ff0:	0541                	addi	a0,a0,16
   19ff2:	05c1                	addi	a1,a1,16
   19ff4:	fcd610e3          	bne	a2,a3,19fb4 <strcmp+0xd6>
   19ff8:	4501                	li	a0,0
   19ffa:	8082                	ret

00019ffc <__assert_func>:
   19ffc:	f141a703          	lw	a4,-236(gp) # 1f8b4 <_impure_ptr>
   1a000:	1141                	addi	sp,sp,-16
   1a002:	87b6                	mv	a5,a3
   1a004:	8832                	mv	a6,a2
   1a006:	c606                	sw	ra,12(sp)
   1a008:	00c72883          	lw	a7,12(a4) # ffffe00c <__BSS_END__+0xfffde420>
   1a00c:	86aa                	mv	a3,a0
   1a00e:	872e                	mv	a4,a1
   1a010:	863e                	mv	a2,a5
   1a012:	00080c63          	beqz	a6,1a02a <__assert_func+0x2e>
   1a016:	67f9                	lui	a5,0x1e
   1a018:	a6478793          	addi	a5,a5,-1436 # 1da64 <__clzsi2+0x1ac>
   1a01c:	65f9                	lui	a1,0x1e
   1a01e:	a7458593          	addi	a1,a1,-1420 # 1da74 <__clzsi2+0x1bc>
   1a022:	8546                	mv	a0,a7
   1a024:	22b9                	jal	1a172 <fiprintf>
   1a026:	68f000ef          	jal	1aeb4 <abort>
   1a02a:	6879                	lui	a6,0x1e
   1a02c:	a7080793          	addi	a5,a6,-1424 # 1da70 <__clzsi2+0x1b8>
   1a030:	a7080813          	addi	a6,a6,-1424
   1a034:	b7e5                	j	1a01c <__assert_func+0x20>

0001a036 <__assert>:
   1a036:	1141                	addi	sp,sp,-16
   1a038:	86b2                	mv	a3,a2
   1a03a:	4601                	li	a2,0
   1a03c:	c606                	sw	ra,12(sp)
   1a03e:	3f7d                	jal	19ffc <__assert_func>

0001a040 <_calloc_r>:
   1a040:	02c5b7b3          	mulhu	a5,a1,a2
   1a044:	1141                	addi	sp,sp,-16
   1a046:	c606                	sw	ra,12(sp)
   1a048:	c422                	sw	s0,8(sp)
   1a04a:	02c585b3          	mul	a1,a1,a2
   1a04e:	efa5                	bnez	a5,1a0c6 <_calloc_r+0x86>
   1a050:	f18fa0ef          	jal	14768 <_malloc_r>
   1a054:	842a                	mv	s0,a0
   1a056:	cd25                	beqz	a0,1a0ce <_calloc_r+0x8e>
   1a058:	ffc52603          	lw	a2,-4(a0)
   1a05c:	02400713          	li	a4,36
   1a060:	9a71                	andi	a2,a2,-4
   1a062:	1671                	addi	a2,a2,-4
   1a064:	04c76063          	bltu	a4,a2,1a0a4 <_calloc_r+0x64>
   1a068:	46cd                	li	a3,19
   1a06a:	87aa                	mv	a5,a0
   1a06c:	02c6f163          	bgeu	a3,a2,1a08e <_calloc_r+0x4e>
   1a070:	00052023          	sw	zero,0(a0)
   1a074:	00052223          	sw	zero,4(a0)
   1a078:	47ed                	li	a5,27
   1a07a:	02c7fd63          	bgeu	a5,a2,1a0b4 <_calloc_r+0x74>
   1a07e:	00052423          	sw	zero,8(a0)
   1a082:	00052623          	sw	zero,12(a0)
   1a086:	01050793          	addi	a5,a0,16
   1a08a:	04e60863          	beq	a2,a4,1a0da <_calloc_r+0x9a>
   1a08e:	0007a023          	sw	zero,0(a5)
   1a092:	0007a223          	sw	zero,4(a5)
   1a096:	0007a423          	sw	zero,8(a5)
   1a09a:	40b2                	lw	ra,12(sp)
   1a09c:	8522                	mv	a0,s0
   1a09e:	4422                	lw	s0,8(sp)
   1a0a0:	0141                	addi	sp,sp,16
   1a0a2:	8082                	ret
   1a0a4:	4581                	li	a1,0
   1a0a6:	a4afa0ef          	jal	142f0 <memset>
   1a0aa:	40b2                	lw	ra,12(sp)
   1a0ac:	8522                	mv	a0,s0
   1a0ae:	4422                	lw	s0,8(sp)
   1a0b0:	0141                	addi	sp,sp,16
   1a0b2:	8082                	ret
   1a0b4:	00850793          	addi	a5,a0,8
   1a0b8:	0007a023          	sw	zero,0(a5)
   1a0bc:	0007a223          	sw	zero,4(a5)
   1a0c0:	0007a423          	sw	zero,8(a5)
   1a0c4:	bfd9                	j	1a09a <_calloc_r+0x5a>
   1a0c6:	5e9000ef          	jal	1aeae <__errno>
   1a0ca:	47b1                	li	a5,12
   1a0cc:	c11c                	sw	a5,0(a0)
   1a0ce:	4401                	li	s0,0
   1a0d0:	40b2                	lw	ra,12(sp)
   1a0d2:	8522                	mv	a0,s0
   1a0d4:	4422                	lw	s0,8(sp)
   1a0d6:	0141                	addi	sp,sp,16
   1a0d8:	8082                	ret
   1a0da:	00052823          	sw	zero,16(a0)
   1a0de:	01850793          	addi	a5,a0,24
   1a0e2:	00052a23          	sw	zero,20(a0)
   1a0e6:	b765                	j	1a08e <_calloc_r+0x4e>

0001a0e8 <_mbtowc_r>:
   1a0e8:	e1c1a783          	lw	a5,-484(gp) # 1f7bc <__global_locale+0xe4>
   1a0ec:	8782                	jr	a5

0001a0ee <__ascii_mbtowc>:
   1a0ee:	c999                	beqz	a1,1a104 <__ascii_mbtowc+0x16>
   1a0f0:	c61d                	beqz	a2,1a11e <__ascii_mbtowc+0x30>
   1a0f2:	ca95                	beqz	a3,1a126 <__ascii_mbtowc+0x38>
   1a0f4:	00064783          	lbu	a5,0(a2)
   1a0f8:	c19c                	sw	a5,0(a1)
   1a0fa:	00064503          	lbu	a0,0(a2)
   1a0fe:	00a03533          	snez	a0,a0
   1a102:	8082                	ret
   1a104:	1141                	addi	sp,sp,-16
   1a106:	006c                	addi	a1,sp,12
   1a108:	ce09                	beqz	a2,1a122 <__ascii_mbtowc+0x34>
   1a10a:	c285                	beqz	a3,1a12a <__ascii_mbtowc+0x3c>
   1a10c:	00064783          	lbu	a5,0(a2)
   1a110:	c19c                	sw	a5,0(a1)
   1a112:	00064503          	lbu	a0,0(a2)
   1a116:	00a03533          	snez	a0,a0
   1a11a:	0141                	addi	sp,sp,16
   1a11c:	8082                	ret
   1a11e:	4501                	li	a0,0
   1a120:	8082                	ret
   1a122:	4501                	li	a0,0
   1a124:	bfdd                	j	1a11a <__ascii_mbtowc+0x2c>
   1a126:	5579                	li	a0,-2
   1a128:	8082                	ret
   1a12a:	5579                	li	a0,-2
   1a12c:	b7fd                	j	1a11a <__ascii_mbtowc+0x2c>

0001a12e <_wctomb_r>:
   1a12e:	e181a783          	lw	a5,-488(gp) # 1f7b8 <__global_locale+0xe0>
   1a132:	8782                	jr	a5

0001a134 <__ascii_wctomb>:
   1a134:	cd91                	beqz	a1,1a150 <__ascii_wctomb+0x1c>
   1a136:	0ff00793          	li	a5,255
   1a13a:	00c7e663          	bltu	a5,a2,1a146 <__ascii_wctomb+0x12>
   1a13e:	00c58023          	sb	a2,0(a1)
   1a142:	4505                	li	a0,1
   1a144:	8082                	ret
   1a146:	08a00793          	li	a5,138
   1a14a:	c11c                	sw	a5,0(a0)
   1a14c:	557d                	li	a0,-1
   1a14e:	8082                	ret
   1a150:	4501                	li	a0,0
   1a152:	8082                	ret

0001a154 <_fiprintf_r>:
   1a154:	7139                	addi	sp,sp,-64
   1a156:	02c10313          	addi	t1,sp,44
   1a15a:	d636                	sw	a3,44(sp)
   1a15c:	869a                	mv	a3,t1
   1a15e:	ce06                	sw	ra,28(sp)
   1a160:	d83a                	sw	a4,48(sp)
   1a162:	da3e                	sw	a5,52(sp)
   1a164:	dc42                	sw	a6,56(sp)
   1a166:	de46                	sw	a7,60(sp)
   1a168:	c61a                	sw	t1,12(sp)
   1a16a:	280d                	jal	1a19c <_vfiprintf_r>
   1a16c:	40f2                	lw	ra,28(sp)
   1a16e:	6121                	addi	sp,sp,64
   1a170:	8082                	ret

0001a172 <fiprintf>:
   1a172:	8e2a                	mv	t3,a0
   1a174:	7139                	addi	sp,sp,-64
   1a176:	f141a503          	lw	a0,-236(gp) # 1f8b4 <_impure_ptr>
   1a17a:	02810313          	addi	t1,sp,40
   1a17e:	d432                	sw	a2,40(sp)
   1a180:	d636                	sw	a3,44(sp)
   1a182:	862e                	mv	a2,a1
   1a184:	869a                	mv	a3,t1
   1a186:	85f2                	mv	a1,t3
   1a188:	ce06                	sw	ra,28(sp)
   1a18a:	d83a                	sw	a4,48(sp)
   1a18c:	da3e                	sw	a5,52(sp)
   1a18e:	dc42                	sw	a6,56(sp)
   1a190:	de46                	sw	a7,60(sp)
   1a192:	c61a                	sw	t1,12(sp)
   1a194:	2021                	jal	1a19c <_vfiprintf_r>
   1a196:	40f2                	lw	ra,28(sp)
   1a198:	6121                	addi	sp,sp,64
   1a19a:	8082                	ret

0001a19c <_vfiprintf_r>:
   1a19c:	7169                	addi	sp,sp,-304
   1a19e:	11312e23          	sw	s3,284(sp)
   1a1a2:	11512a23          	sw	s5,276(sp)
   1a1a6:	11612823          	sw	s6,272(sp)
   1a1aa:	11712623          	sw	s7,268(sp)
   1a1ae:	12112623          	sw	ra,300(sp)
   1a1b2:	11a12023          	sw	s10,256(sp)
   1a1b6:	8baa                	mv	s7,a0
   1a1b8:	8aae                	mv	s5,a1
   1a1ba:	89b2                	mv	s3,a2
   1a1bc:	8b36                	mv	s6,a3
   1a1be:	c501                	beqz	a0,1a1c6 <_vfiprintf_r+0x2a>
   1a1c0:	595c                	lw	a5,52(a0)
   1a1c2:	300783e3          	beqz	a5,1acc8 <_vfiprintf_r+0xb2c>
   1a1c6:	00ca9703          	lh	a4,12(s5)
   1a1ca:	064aa783          	lw	a5,100(s5)
   1a1ce:	01271693          	slli	a3,a4,0x12
   1a1d2:	0006cb63          	bltz	a3,1a1e8 <_vfiprintf_r+0x4c>
   1a1d6:	76f9                	lui	a3,0xffffe
   1a1d8:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffde413>
   1a1da:	6609                	lui	a2,0x2
   1a1dc:	8f51                	or	a4,a4,a2
   1a1de:	8ff5                	and	a5,a5,a3
   1a1e0:	00ea9623          	sh	a4,12(s5)
   1a1e4:	06faa223          	sw	a5,100(s5)
   1a1e8:	01279713          	slli	a4,a5,0x12
   1a1ec:	400740e3          	bltz	a4,1adec <_vfiprintf_r+0xc50>
   1a1f0:	00ca9783          	lh	a5,12(s5)
   1a1f4:	0087f713          	andi	a4,a5,8
   1a1f8:	22070363          	beqz	a4,1a41e <_vfiprintf_r+0x282>
   1a1fc:	010aa703          	lw	a4,16(s5)
   1a200:	20070f63          	beqz	a4,1a41e <_vfiprintf_r+0x282>
   1a204:	8be9                	andi	a5,a5,26
   1a206:	4729                	li	a4,10
   1a208:	22e78763          	beq	a5,a4,1a436 <_vfiprintf_r+0x29a>
   1a20c:	67f9                	lui	a5,0x1e
   1a20e:	4d01                	li	s10,0
   1a210:	11812423          	sw	s8,264(sp)
   1a214:	11912223          	sw	s9,260(sp)
   1a218:	04c10c13          	addi	s8,sp,76
   1a21c:	f0478793          	addi	a5,a5,-252 # 1df04 <_ctype_+0x104>
   1a220:	6cf9                	lui	s9,0x1e
   1a222:	12812423          	sw	s0,296(sp)
   1a226:	13212023          	sw	s2,288(sp)
   1a22a:	11412c23          	sw	s4,280(sp)
   1a22e:	896a                	mv	s2,s10
   1a230:	12912223          	sw	s1,292(sp)
   1a234:	dfee                	sw	s11,252(sp)
   1a236:	c0e2                	sw	s8,64(sp)
   1a238:	c482                	sw	zero,72(sp)
   1a23a:	c282                	sw	zero,68(sp)
   1a23c:	8462                	mv	s0,s8
   1a23e:	c202                	sw	zero,4(sp)
   1a240:	ca02                	sw	zero,20(sp)
   1a242:	cc02                	sw	zero,24(sp)
   1a244:	ce02                	sw	zero,28(sp)
   1a246:	c03e                	sw	a5,0(sp)
   1a248:	4a41                	li	s4,16
   1a24a:	070c8c93          	addi	s9,s9,112 # 1e070 <zeroes.0>
   1a24e:	8d5a                	mv	s10,s6
   1a250:	0009c783          	lbu	a5,0(s3)
   1a254:	14078563          	beqz	a5,1a39e <_vfiprintf_r+0x202>
   1a258:	84ce                	mv	s1,s3
   1a25a:	02500713          	li	a4,37
   1a25e:	20e78363          	beq	a5,a4,1a464 <_vfiprintf_r+0x2c8>
   1a262:	0014c783          	lbu	a5,1(s1)
   1a266:	0485                	addi	s1,s1,1
   1a268:	fbfd                	bnez	a5,1a25e <_vfiprintf_r+0xc2>
   1a26a:	41348b33          	sub	s6,s1,s3
   1a26e:	13348863          	beq	s1,s3,1a39e <_vfiprintf_r+0x202>
   1a272:	4726                	lw	a4,72(sp)
   1a274:	4796                	lw	a5,68(sp)
   1a276:	01342023          	sw	s3,0(s0)
   1a27a:	975a                	add	a4,a4,s6
   1a27c:	0785                	addi	a5,a5,1
   1a27e:	01642223          	sw	s6,4(s0)
   1a282:	c4ba                	sw	a4,72(sp)
   1a284:	c2be                	sw	a5,68(sp)
   1a286:	471d                	li	a4,7
   1a288:	0421                	addi	s0,s0,8
   1a28a:	1ef74463          	blt	a4,a5,1a472 <_vfiprintf_r+0x2d6>
   1a28e:	0004c783          	lbu	a5,0(s1)
   1a292:	995a                	add	s2,s2,s6
   1a294:	10078563          	beqz	a5,1a39e <_vfiprintf_r+0x202>
   1a298:	0014c783          	lbu	a5,1(s1)
   1a29c:	00148993          	addi	s3,s1,1
   1a2a0:	02010da3          	sb	zero,59(sp)
   1a2a4:	5dfd                	li	s11,-1
   1a2a6:	4b01                	li	s6,0
   1a2a8:	4801                	li	a6,0
   1a2aa:	05a00493          	li	s1,90
   1a2ae:	0985                	addi	s3,s3,1
   1a2b0:	863e                	mv	a2,a5
   1a2b2:	fe060713          	addi	a4,a2,-32 # 1fe0 <exit-0xe0b4>
   1a2b6:	02e4eb63          	bltu	s1,a4,1a2ec <_vfiprintf_r+0x150>
   1a2ba:	4782                	lw	a5,0(sp)
   1a2bc:	070a                	slli	a4,a4,0x2
   1a2be:	973e                	add	a4,a4,a5
   1a2c0:	431c                	lw	a5,0(a4)
   1a2c2:	8782                	jr	a5
   1a2c4:	4b01                	li	s6,0
   1a2c6:	fd060793          	addi	a5,a2,-48
   1a2ca:	46a5                	li	a3,9
   1a2cc:	0009c603          	lbu	a2,0(s3)
   1a2d0:	002b1713          	slli	a4,s6,0x2
   1a2d4:	9b3a                	add	s6,s6,a4
   1a2d6:	0b06                	slli	s6,s6,0x1
   1a2d8:	9b3e                	add	s6,s6,a5
   1a2da:	fd060793          	addi	a5,a2,-48
   1a2de:	0985                	addi	s3,s3,1
   1a2e0:	fef6f6e3          	bgeu	a3,a5,1a2cc <_vfiprintf_r+0x130>
   1a2e4:	fe060713          	addi	a4,a2,-32
   1a2e8:	fce4f9e3          	bgeu	s1,a4,1a2ba <_vfiprintf_r+0x11e>
   1a2ec:	ca4d                	beqz	a2,1a39e <_vfiprintf_r+0x202>
   1a2ee:	08c10623          	sb	a2,140(sp)
   1a2f2:	02010da3          	sb	zero,59(sp)
   1a2f6:	4885                	li	a7,1
   1a2f8:	4e05                	li	t3,1
   1a2fa:	0164                	addi	s1,sp,140
   1a2fc:	4d81                	li	s11,0
   1a2fe:	4281                	li	t0,0
   1a300:	08487f93          	andi	t6,a6,132
   1a304:	4726                	lw	a4,72(sp)
   1a306:	4796                	lw	a5,68(sp)
   1a308:	000f9663          	bnez	t6,1a314 <_vfiprintf_r+0x178>
   1a30c:	411b0eb3          	sub	t4,s6,a7
   1a310:	71d04b63          	bgtz	t4,1aa26 <_vfiprintf_r+0x88a>
   1a314:	03b14603          	lbu	a2,59(sp)
   1a318:	ce11                	beqz	a2,1a334 <_vfiprintf_r+0x198>
   1a31a:	03b10613          	addi	a2,sp,59
   1a31e:	c010                	sw	a2,0(s0)
   1a320:	0785                	addi	a5,a5,1
   1a322:	4605                	li	a2,1
   1a324:	0705                	addi	a4,a4,1
   1a326:	c050                	sw	a2,4(s0)
   1a328:	c4ba                	sw	a4,72(sp)
   1a32a:	c2be                	sw	a5,68(sp)
   1a32c:	461d                	li	a2,7
   1a32e:	0421                	addi	s0,s0,8
   1a330:	1af64363          	blt	a2,a5,1a4d6 <_vfiprintf_r+0x33a>
   1a334:	00028e63          	beqz	t0,1a350 <_vfiprintf_r+0x1b4>
   1a338:	1870                	addi	a2,sp,60
   1a33a:	c010                	sw	a2,0(s0)
   1a33c:	0785                	addi	a5,a5,1
   1a33e:	4609                	li	a2,2
   1a340:	0709                	addi	a4,a4,2
   1a342:	c050                	sw	a2,4(s0)
   1a344:	c4ba                	sw	a4,72(sp)
   1a346:	c2be                	sw	a5,68(sp)
   1a348:	461d                	li	a2,7
   1a34a:	0421                	addi	s0,s0,8
   1a34c:	78f64663          	blt	a2,a5,1aad8 <_vfiprintf_r+0x93c>
   1a350:	08000613          	li	a2,128
   1a354:	52cf8a63          	beq	t6,a2,1a888 <_vfiprintf_r+0x6ec>
   1a358:	41cd8db3          	sub	s11,s11,t3
   1a35c:	5db04d63          	bgtz	s11,1a936 <_vfiprintf_r+0x79a>
   1a360:	9772                	add	a4,a4,t3
   1a362:	0785                	addi	a5,a5,1
   1a364:	c004                	sw	s1,0(s0)
   1a366:	01c42223          	sw	t3,4(s0)
   1a36a:	c4ba                	sw	a4,72(sp)
   1a36c:	c2be                	sw	a5,68(sp)
   1a36e:	461d                	li	a2,7
   1a370:	0421                	addi	s0,s0,8
   1a372:	64f64e63          	blt	a2,a5,1a9ce <_vfiprintf_r+0x832>
   1a376:	00487813          	andi	a6,a6,4
   1a37a:	00080663          	beqz	a6,1a386 <_vfiprintf_r+0x1ea>
   1a37e:	411b04b3          	sub	s1,s6,a7
   1a382:	16904e63          	bgtz	s1,1a4fe <_vfiprintf_r+0x362>
   1a386:	011b5363          	bge	s6,a7,1a38c <_vfiprintf_r+0x1f0>
   1a38a:	8b46                	mv	s6,a7
   1a38c:	995a                	add	s2,s2,s6
   1a38e:	0e071a63          	bnez	a4,1a482 <_vfiprintf_r+0x2e6>
   1a392:	0009c783          	lbu	a5,0(s3)
   1a396:	c282                	sw	zero,68(sp)
   1a398:	8462                	mv	s0,s8
   1a39a:	ea079fe3          	bnez	a5,1a258 <_vfiprintf_r+0xbc>
   1a39e:	47a6                	lw	a5,72(sp)
   1a3a0:	8d4a                	mv	s10,s2
   1a3a2:	0e078863          	beqz	a5,1a492 <_vfiprintf_r+0x2f6>
   1a3a6:	0090                	addi	a2,sp,64
   1a3a8:	85d6                	mv	a1,s5
   1a3aa:	855e                	mv	a0,s7
   1a3ac:	db4fc0ef          	jal	16960 <__sprint_r>
   1a3b0:	a0cd                	j	1a492 <_vfiprintf_r+0x2f6>
   1a3b2:	000d2b03          	lw	s6,0(s10)
   1a3b6:	0d11                	addi	s10,s10,4
   1a3b8:	280b4c63          	bltz	s6,1a650 <_vfiprintf_r+0x4b4>
   1a3bc:	0009c783          	lbu	a5,0(s3)
   1a3c0:	b5fd                	j	1a2ae <_vfiprintf_r+0x112>
   1a3c2:	0009c783          	lbu	a5,0(s3)
   1a3c6:	02086813          	ori	a6,a6,32
   1a3ca:	b5d5                	j	1a2ae <_vfiprintf_r+0x112>
   1a3cc:	01086813          	ori	a6,a6,16
   1a3d0:	02087793          	andi	a5,a6,32
   1a3d4:	1a078363          	beqz	a5,1a57a <_vfiprintf_r+0x3de>
   1a3d8:	0d1d                	addi	s10,s10,7
   1a3da:	ff8d7d13          	andi	s10,s10,-8
   1a3de:	004d2703          	lw	a4,4(s10)
   1a3e2:	000d2783          	lw	a5,0(s10)
   1a3e6:	0d21                	addi	s10,s10,8
   1a3e8:	88ba                	mv	a7,a4
   1a3ea:	1a074863          	bltz	a4,1a59a <_vfiprintf_r+0x3fe>
   1a3ee:	1c0dc663          	bltz	s11,1a5ba <_vfiprintf_r+0x41e>
   1a3f2:	0117e733          	or	a4,a5,a7
   1a3f6:	f7f87813          	andi	a6,a6,-129
   1a3fa:	1c071063          	bnez	a4,1a5ba <_vfiprintf_r+0x41e>
   1a3fe:	1e0d93e3          	bnez	s11,1ade4 <_vfiprintf_r+0xc48>
   1a402:	03b14783          	lbu	a5,59(sp)
   1a406:	4881                	li	a7,0
   1a408:	4e01                	li	t3,0
   1a40a:	1984                	addi	s1,sp,240
   1a40c:	c391                	beqz	a5,1a410 <_vfiprintf_r+0x274>
   1a40e:	0885                	addi	a7,a7,1
   1a410:	00287293          	andi	t0,a6,2
   1a414:	ee0286e3          	beqz	t0,1a300 <_vfiprintf_r+0x164>
   1a418:	0889                	addi	a7,a7,2
   1a41a:	4289                	li	t0,2
   1a41c:	b5d5                	j	1a300 <_vfiprintf_r+0x164>
   1a41e:	85d6                	mv	a1,s5
   1a420:	855e                	mv	a0,s7
   1a422:	d2bfc0ef          	jal	1714c <__swsetup_r>
   1a426:	1c0513e3          	bnez	a0,1adec <_vfiprintf_r+0xc50>
   1a42a:	00ca9783          	lh	a5,12(s5)
   1a42e:	4729                	li	a4,10
   1a430:	8be9                	andi	a5,a5,26
   1a432:	dce79de3          	bne	a5,a4,1a20c <_vfiprintf_r+0x70>
   1a436:	00ea9783          	lh	a5,14(s5)
   1a43a:	dc07c9e3          	bltz	a5,1a20c <_vfiprintf_r+0x70>
   1a43e:	12c12083          	lw	ra,300(sp)
   1a442:	10012d03          	lw	s10,256(sp)
   1a446:	86da                	mv	a3,s6
   1a448:	864e                	mv	a2,s3
   1a44a:	11012b03          	lw	s6,272(sp)
   1a44e:	11c12983          	lw	s3,284(sp)
   1a452:	85d6                	mv	a1,s5
   1a454:	855e                	mv	a0,s7
   1a456:	11412a83          	lw	s5,276(sp)
   1a45a:	10c12b83          	lw	s7,268(sp)
   1a45e:	6155                	addi	sp,sp,304
   1a460:	1b90006f          	j	1ae18 <__sbprintf>
   1a464:	41348b33          	sub	s6,s1,s3
   1a468:	e13495e3          	bne	s1,s3,1a272 <_vfiprintf_r+0xd6>
   1a46c:	0004c783          	lbu	a5,0(s1)
   1a470:	b515                	j	1a294 <_vfiprintf_r+0xf8>
   1a472:	0090                	addi	a2,sp,64
   1a474:	85d6                	mv	a1,s5
   1a476:	855e                	mv	a0,s7
   1a478:	ce8fc0ef          	jal	16960 <__sprint_r>
   1a47c:	e911                	bnez	a0,1a490 <_vfiprintf_r+0x2f4>
   1a47e:	8462                	mv	s0,s8
   1a480:	b539                	j	1a28e <_vfiprintf_r+0xf2>
   1a482:	0090                	addi	a2,sp,64
   1a484:	85d6                	mv	a1,s5
   1a486:	855e                	mv	a0,s7
   1a488:	cd8fc0ef          	jal	16960 <__sprint_r>
   1a48c:	f00503e3          	beqz	a0,1a392 <_vfiprintf_r+0x1f6>
   1a490:	8d4a                	mv	s10,s2
   1a492:	00cad783          	lhu	a5,12(s5)
   1a496:	12812403          	lw	s0,296(sp)
   1a49a:	12412483          	lw	s1,292(sp)
   1a49e:	0407f793          	andi	a5,a5,64
   1a4a2:	12012903          	lw	s2,288(sp)
   1a4a6:	11812a03          	lw	s4,280(sp)
   1a4aa:	10812c03          	lw	s8,264(sp)
   1a4ae:	10412c83          	lw	s9,260(sp)
   1a4b2:	5dfe                	lw	s11,252(sp)
   1a4b4:	12079ce3          	bnez	a5,1adec <_vfiprintf_r+0xc50>
   1a4b8:	12c12083          	lw	ra,300(sp)
   1a4bc:	11c12983          	lw	s3,284(sp)
   1a4c0:	11412a83          	lw	s5,276(sp)
   1a4c4:	11012b03          	lw	s6,272(sp)
   1a4c8:	10c12b83          	lw	s7,268(sp)
   1a4cc:	856a                	mv	a0,s10
   1a4ce:	10012d03          	lw	s10,256(sp)
   1a4d2:	6155                	addi	sp,sp,304
   1a4d4:	8082                	ret
   1a4d6:	0090                	addi	a2,sp,64
   1a4d8:	85d6                	mv	a1,s5
   1a4da:	855e                	mv	a0,s7
   1a4dc:	d246                	sw	a7,36(sp)
   1a4de:	d072                	sw	t3,32(sp)
   1a4e0:	c842                	sw	a6,16(sp)
   1a4e2:	c67e                	sw	t6,12(sp)
   1a4e4:	c416                	sw	t0,8(sp)
   1a4e6:	c7afc0ef          	jal	16960 <__sprint_r>
   1a4ea:	f15d                	bnez	a0,1a490 <_vfiprintf_r+0x2f4>
   1a4ec:	4726                	lw	a4,72(sp)
   1a4ee:	4796                	lw	a5,68(sp)
   1a4f0:	5892                	lw	a7,36(sp)
   1a4f2:	5e02                	lw	t3,32(sp)
   1a4f4:	4842                	lw	a6,16(sp)
   1a4f6:	4fb2                	lw	t6,12(sp)
   1a4f8:	42a2                	lw	t0,8(sp)
   1a4fa:	8462                	mv	s0,s8
   1a4fc:	bd25                	j	1a334 <_vfiprintf_r+0x198>
   1a4fe:	6379                	lui	t1,0x1e
   1a500:	4641                	li	a2,16
   1a502:	4796                	lw	a5,68(sp)
   1a504:	08030313          	addi	t1,t1,128 # 1e080 <blanks.1>
   1a508:	04965563          	bge	a2,s1,1a552 <_vfiprintf_r+0x3b6>
   1a50c:	86a2                	mv	a3,s0
   1a50e:	4dc1                	li	s11,16
   1a510:	481d                	li	a6,7
   1a512:	c446                	sw	a7,8(sp)
   1a514:	841a                	mv	s0,t1
   1a516:	a021                	j	1a51e <_vfiprintf_r+0x382>
   1a518:	14c1                	addi	s1,s1,-16
   1a51a:	029dd963          	bge	s11,s1,1a54c <_vfiprintf_r+0x3b0>
   1a51e:	0741                	addi	a4,a4,16
   1a520:	0785                	addi	a5,a5,1
   1a522:	c280                	sw	s0,0(a3)
   1a524:	01b6a223          	sw	s11,4(a3)
   1a528:	c4ba                	sw	a4,72(sp)
   1a52a:	c2be                	sw	a5,68(sp)
   1a52c:	06a1                	addi	a3,a3,8
   1a52e:	fef855e3          	bge	a6,a5,1a518 <_vfiprintf_r+0x37c>
   1a532:	0090                	addi	a2,sp,64
   1a534:	85d6                	mv	a1,s5
   1a536:	855e                	mv	a0,s7
   1a538:	c28fc0ef          	jal	16960 <__sprint_r>
   1a53c:	f931                	bnez	a0,1a490 <_vfiprintf_r+0x2f4>
   1a53e:	14c1                	addi	s1,s1,-16
   1a540:	4726                	lw	a4,72(sp)
   1a542:	4796                	lw	a5,68(sp)
   1a544:	86e2                	mv	a3,s8
   1a546:	481d                	li	a6,7
   1a548:	fc9dcbe3          	blt	s11,s1,1a51e <_vfiprintf_r+0x382>
   1a54c:	48a2                	lw	a7,8(sp)
   1a54e:	8322                	mv	t1,s0
   1a550:	8436                	mv	s0,a3
   1a552:	9726                	add	a4,a4,s1
   1a554:	0785                	addi	a5,a5,1
   1a556:	00642023          	sw	t1,0(s0)
   1a55a:	c044                	sw	s1,4(s0)
   1a55c:	c4ba                	sw	a4,72(sp)
   1a55e:	c2be                	sw	a5,68(sp)
   1a560:	461d                	li	a2,7
   1a562:	e2f652e3          	bge	a2,a5,1a386 <_vfiprintf_r+0x1ea>
   1a566:	0090                	addi	a2,sp,64
   1a568:	85d6                	mv	a1,s5
   1a56a:	855e                	mv	a0,s7
   1a56c:	c446                	sw	a7,8(sp)
   1a56e:	bf2fc0ef          	jal	16960 <__sprint_r>
   1a572:	fd19                	bnez	a0,1a490 <_vfiprintf_r+0x2f4>
   1a574:	4726                	lw	a4,72(sp)
   1a576:	48a2                	lw	a7,8(sp)
   1a578:	b539                	j	1a386 <_vfiprintf_r+0x1ea>
   1a57a:	01087713          	andi	a4,a6,16
   1a57e:	000d2783          	lw	a5,0(s10)
   1a582:	0d11                	addi	s10,s10,4
   1a584:	e371                	bnez	a4,1a648 <_vfiprintf_r+0x4ac>
   1a586:	04087713          	andi	a4,a6,64
   1a58a:	cb5d                	beqz	a4,1a640 <_vfiprintf_r+0x4a4>
   1a58c:	07c2                	slli	a5,a5,0x10
   1a58e:	87c1                	srai	a5,a5,0x10
   1a590:	41f7d893          	srai	a7,a5,0x1f
   1a594:	8746                	mv	a4,a7
   1a596:	e4075ce3          	bgez	a4,1a3ee <_vfiprintf_r+0x252>
   1a59a:	02d00613          	li	a2,45
   1a59e:	00f03733          	snez	a4,a5
   1a5a2:	411008b3          	neg	a7,a7
   1a5a6:	02c10da3          	sb	a2,59(sp)
   1a5aa:	40e888b3          	sub	a7,a7,a4
   1a5ae:	40f007b3          	neg	a5,a5
   1a5b2:	000dc463          	bltz	s11,1a5ba <_vfiprintf_r+0x41e>
   1a5b6:	f7f87813          	andi	a6,a6,-129
   1a5ba:	62089c63          	bnez	a7,1abf2 <_vfiprintf_r+0xa56>
   1a5be:	4725                	li	a4,9
   1a5c0:	62f76963          	bltu	a4,a5,1abf2 <_vfiprintf_r+0xa56>
   1a5c4:	03078793          	addi	a5,a5,48
   1a5c8:	0ff7f793          	zext.b	a5,a5
   1a5cc:	0ef107a3          	sb	a5,239(sp)
   1a5d0:	88ee                	mv	a7,s11
   1a5d2:	01b04363          	bgtz	s11,1a5d8 <_vfiprintf_r+0x43c>
   1a5d6:	4885                	li	a7,1
   1a5d8:	4e05                	li	t3,1
   1a5da:	0ef10493          	addi	s1,sp,239
   1a5de:	03b14783          	lbu	a5,59(sp)
   1a5e2:	e20796e3          	bnez	a5,1a40e <_vfiprintf_r+0x272>
   1a5e6:	b52d                	j	1a410 <_vfiprintf_r+0x274>
   1a5e8:	000d2483          	lw	s1,0(s10)
   1a5ec:	02010da3          	sb	zero,59(sp)
   1a5f0:	0d11                	addi	s10,s10,4
   1a5f2:	70048463          	beqz	s1,1acfa <_vfiprintf_r+0xb5e>
   1a5f6:	c442                	sw	a6,8(sp)
   1a5f8:	5e0dc163          	bltz	s11,1abda <_vfiprintf_r+0xa3e>
   1a5fc:	866e                	mv	a2,s11
   1a5fe:	4581                	li	a1,0
   1a600:	8526                	mv	a0,s1
   1a602:	c25fc0ef          	jal	17226 <memchr>
   1a606:	4822                	lw	a6,8(sp)
   1a608:	8e6e                	mv	t3,s11
   1a60a:	c119                	beqz	a0,1a610 <_vfiprintf_r+0x474>
   1a60c:	40950e33          	sub	t3,a0,s1
   1a610:	03b14783          	lbu	a5,59(sp)
   1a614:	fffe4893          	not	a7,t3
   1a618:	41f8d893          	srai	a7,a7,0x1f
   1a61c:	011e78b3          	and	a7,t3,a7
   1a620:	4d81                	li	s11,0
   1a622:	4281                	li	t0,0
   1a624:	de0795e3          	bnez	a5,1a40e <_vfiprintf_r+0x272>
   1a628:	b9e1                	j	1a300 <_vfiprintf_r+0x164>
   1a62a:	000d2783          	lw	a5,0(s10)
   1a62e:	02010da3          	sb	zero,59(sp)
   1a632:	0d11                	addi	s10,s10,4
   1a634:	08f10623          	sb	a5,140(sp)
   1a638:	4885                	li	a7,1
   1a63a:	4e05                	li	t3,1
   1a63c:	0164                	addi	s1,sp,140
   1a63e:	b97d                	j	1a2fc <_vfiprintf_r+0x160>
   1a640:	20087713          	andi	a4,a6,512
   1a644:	76071e63          	bnez	a4,1adc0 <_vfiprintf_r+0xc24>
   1a648:	41f7d893          	srai	a7,a5,0x1f
   1a64c:	8746                	mv	a4,a7
   1a64e:	bb71                	j	1a3ea <_vfiprintf_r+0x24e>
   1a650:	41600b33          	neg	s6,s6
   1a654:	0009c783          	lbu	a5,0(s3)
   1a658:	00486813          	ori	a6,a6,4
   1a65c:	b989                	j	1a2ae <_vfiprintf_r+0x112>
   1a65e:	02b00713          	li	a4,43
   1a662:	0009c783          	lbu	a5,0(s3)
   1a666:	02e10da3          	sb	a4,59(sp)
   1a66a:	b191                	j	1a2ae <_vfiprintf_r+0x112>
   1a66c:	0009c783          	lbu	a5,0(s3)
   1a670:	08086813          	ori	a6,a6,128
   1a674:	b92d                	j	1a2ae <_vfiprintf_r+0x112>
   1a676:	0009c603          	lbu	a2,0(s3)
   1a67a:	02a00793          	li	a5,42
   1a67e:	00198693          	addi	a3,s3,1
   1a682:	76f60863          	beq	a2,a5,1adf2 <_vfiprintf_r+0xc56>
   1a686:	fd060793          	addi	a5,a2,-48
   1a68a:	4725                	li	a4,9
   1a68c:	4d81                	li	s11,0
   1a68e:	45a5                	li	a1,9
   1a690:	02f76063          	bltu	a4,a5,1a6b0 <_vfiprintf_r+0x514>
   1a694:	0006c603          	lbu	a2,0(a3)
   1a698:	002d9713          	slli	a4,s11,0x2
   1a69c:	9dba                	add	s11,s11,a4
   1a69e:	0d86                	slli	s11,s11,0x1
   1a6a0:	9dbe                	add	s11,s11,a5
   1a6a2:	fd060793          	addi	a5,a2,-48
   1a6a6:	0685                	addi	a3,a3,1
   1a6a8:	fef5f6e3          	bgeu	a1,a5,1a694 <_vfiprintf_r+0x4f8>
   1a6ac:	4a0dcb63          	bltz	s11,1ab62 <_vfiprintf_r+0x9c6>
   1a6b0:	89b6                	mv	s3,a3
   1a6b2:	b101                	j	1a2b2 <_vfiprintf_r+0x116>
   1a6b4:	855e                	mv	a0,s7
   1a6b6:	c442                	sw	a6,8(sp)
   1a6b8:	c7dfc0ef          	jal	17334 <_localeconv_r>
   1a6bc:	415c                	lw	a5,4(a0)
   1a6be:	853e                	mv	a0,a5
   1a6c0:	ce3e                	sw	a5,28(sp)
   1a6c2:	efffc0ef          	jal	175c0 <strlen>
   1a6c6:	87aa                	mv	a5,a0
   1a6c8:	855e                	mv	a0,s7
   1a6ca:	cc3e                	sw	a5,24(sp)
   1a6cc:	c69fc0ef          	jal	17334 <_localeconv_r>
   1a6d0:	4518                	lw	a4,8(a0)
   1a6d2:	47e2                	lw	a5,24(sp)
   1a6d4:	4822                	lw	a6,8(sp)
   1a6d6:	ca3a                	sw	a4,20(sp)
   1a6d8:	ce0782e3          	beqz	a5,1a3bc <_vfiprintf_r+0x220>
   1a6dc:	4752                	lw	a4,20(sp)
   1a6de:	0009c783          	lbu	a5,0(s3)
   1a6e2:	bc0706e3          	beqz	a4,1a2ae <_vfiprintf_r+0x112>
   1a6e6:	00074703          	lbu	a4,0(a4)
   1a6ea:	bc0702e3          	beqz	a4,1a2ae <_vfiprintf_r+0x112>
   1a6ee:	40086813          	ori	a6,a6,1024
   1a6f2:	be75                	j	1a2ae <_vfiprintf_r+0x112>
   1a6f4:	0009c783          	lbu	a5,0(s3)
   1a6f8:	00186813          	ori	a6,a6,1
   1a6fc:	be4d                	j	1a2ae <_vfiprintf_r+0x112>
   1a6fe:	03b14703          	lbu	a4,59(sp)
   1a702:	0009c783          	lbu	a5,0(s3)
   1a706:	ba0714e3          	bnez	a4,1a2ae <_vfiprintf_r+0x112>
   1a70a:	02000713          	li	a4,32
   1a70e:	02e10da3          	sb	a4,59(sp)
   1a712:	be71                	j	1a2ae <_vfiprintf_r+0x112>
   1a714:	01086713          	ori	a4,a6,16
   1a718:	02077793          	andi	a5,a4,32
   1a71c:	40078063          	beqz	a5,1ab1c <_vfiprintf_r+0x980>
   1a720:	0d1d                	addi	s10,s10,7
   1a722:	ff8d7d13          	andi	s10,s10,-8
   1a726:	000d2783          	lw	a5,0(s10)
   1a72a:	004d2583          	lw	a1,4(s10)
   1a72e:	0d21                	addi	s10,s10,8
   1a730:	02010da3          	sb	zero,59(sp)
   1a734:	bff77813          	andi	a6,a4,-1025
   1a738:	0a0dc163          	bltz	s11,1a7da <_vfiprintf_r+0x63e>
   1a73c:	00b7e633          	or	a2,a5,a1
   1a740:	b7f77713          	andi	a4,a4,-1153
   1a744:	56061d63          	bnez	a2,1acbe <_vfiprintf_r+0xb22>
   1a748:	8e42                	mv	t3,a6
   1a74a:	4781                	li	a5,0
   1a74c:	883a                	mv	a6,a4
   1a74e:	060d9e63          	bnez	s11,1a7ca <_vfiprintf_r+0x62e>
   1a752:	ca0798e3          	bnez	a5,1a402 <_vfiprintf_r+0x266>
   1a756:	001e7e13          	andi	t3,t3,1
   1a75a:	3e0e0463          	beqz	t3,1ab42 <_vfiprintf_r+0x9a6>
   1a75e:	03000793          	li	a5,48
   1a762:	0ef107a3          	sb	a5,239(sp)
   1a766:	88f2                	mv	a7,t3
   1a768:	0ef10493          	addi	s1,sp,239
   1a76c:	bd8d                	j	1a5de <_vfiprintf_r+0x442>
   1a76e:	0009c783          	lbu	a5,0(s3)
   1a772:	06c00713          	li	a4,108
   1a776:	56e78463          	beq	a5,a4,1acde <_vfiprintf_r+0xb42>
   1a77a:	01086813          	ori	a6,a6,16
   1a77e:	be05                	j	1a2ae <_vfiprintf_r+0x112>
   1a780:	0009c783          	lbu	a5,0(s3)
   1a784:	06800713          	li	a4,104
   1a788:	54e78463          	beq	a5,a4,1acd0 <_vfiprintf_r+0xb34>
   1a78c:	04086813          	ori	a6,a6,64
   1a790:	be39                	j	1a2ae <_vfiprintf_r+0x112>
   1a792:	01086e13          	ori	t3,a6,16
   1a796:	020e7793          	andi	a5,t3,32
   1a79a:	36078363          	beqz	a5,1ab00 <_vfiprintf_r+0x964>
   1a79e:	0d1d                	addi	s10,s10,7
   1a7a0:	ff8d7d13          	andi	s10,s10,-8
   1a7a4:	000d2783          	lw	a5,0(s10)
   1a7a8:	004d2883          	lw	a7,4(s10)
   1a7ac:	0d21                	addi	s10,s10,8
   1a7ae:	02010da3          	sb	zero,59(sp)
   1a7b2:	8872                	mv	a6,t3
   1a7b4:	e00dc3e3          	bltz	s11,1a5ba <_vfiprintf_r+0x41e>
   1a7b8:	0117e733          	or	a4,a5,a7
   1a7bc:	f7fe7813          	andi	a6,t3,-129
   1a7c0:	de071de3          	bnez	a4,1a5ba <_vfiprintf_r+0x41e>
   1a7c4:	4785                	li	a5,1
   1a7c6:	f80d86e3          	beqz	s11,1a752 <_vfiprintf_r+0x5b6>
   1a7ca:	4705                	li	a4,1
   1a7cc:	60e78c63          	beq	a5,a4,1ade4 <_vfiprintf_r+0xc48>
   1a7d0:	4709                	li	a4,2
   1a7d2:	54e78663          	beq	a5,a4,1ad1e <_vfiprintf_r+0xb82>
   1a7d6:	4781                	li	a5,0
   1a7d8:	4581                	li	a1,0
   1a7da:	1984                	addi	s1,sp,240
   1a7dc:	01d59693          	slli	a3,a1,0x1d
   1a7e0:	0077f713          	andi	a4,a5,7
   1a7e4:	838d                	srli	a5,a5,0x3
   1a7e6:	03070713          	addi	a4,a4,48
   1a7ea:	8fd5                	or	a5,a5,a3
   1a7ec:	818d                	srli	a1,a1,0x3
   1a7ee:	fee48fa3          	sb	a4,-1(s1)
   1a7f2:	00b7e6b3          	or	a3,a5,a1
   1a7f6:	8526                	mv	a0,s1
   1a7f8:	14fd                	addi	s1,s1,-1
   1a7fa:	f2ed                	bnez	a3,1a7dc <_vfiprintf_r+0x640>
   1a7fc:	00187793          	andi	a5,a6,1
   1a800:	20078b63          	beqz	a5,1aa16 <_vfiprintf_r+0x87a>
   1a804:	03000793          	li	a5,48
   1a808:	20f70763          	beq	a4,a5,1aa16 <_vfiprintf_r+0x87a>
   1a80c:	1579                	addi	a0,a0,-2
   1a80e:	fef48fa3          	sb	a5,-1(s1)
   1a812:	199c                	addi	a5,sp,240
   1a814:	40a78e33          	sub	t3,a5,a0
   1a818:	88ee                	mv	a7,s11
   1a81a:	35cdc163          	blt	s11,t3,1ab5c <_vfiprintf_r+0x9c0>
   1a81e:	84aa                	mv	s1,a0
   1a820:	bb7d                	j	1a5de <_vfiprintf_r+0x442>
   1a822:	6721                	lui	a4,0x8
   1a824:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8864>
   1a828:	02e11e23          	sh	a4,60(sp)
   1a82c:	6779                	lui	a4,0x1e
   1a82e:	94c70713          	addi	a4,a4,-1716 # 1d94c <__clzsi2+0x94>
   1a832:	000d2783          	lw	a5,0(s10)
   1a836:	4581                	li	a1,0
   1a838:	00286813          	ori	a6,a6,2
   1a83c:	0d11                	addi	s10,s10,4
   1a83e:	c23a                	sw	a4,4(sp)
   1a840:	02010da3          	sb	zero,59(sp)
   1a844:	1a0dc763          	bltz	s11,1a9f2 <_vfiprintf_r+0x856>
   1a848:	00b7e733          	or	a4,a5,a1
   1a84c:	f7f87613          	andi	a2,a6,-129
   1a850:	18071d63          	bnez	a4,1a9ea <_vfiprintf_r+0x84e>
   1a854:	8e42                	mv	t3,a6
   1a856:	4789                	li	a5,2
   1a858:	8832                	mv	a6,a2
   1a85a:	bdd5                	j	1a74e <_vfiprintf_r+0x5b2>
   1a85c:	02087793          	andi	a5,a6,32
   1a860:	2e079463          	bnez	a5,1ab48 <_vfiprintf_r+0x9ac>
   1a864:	01087793          	andi	a5,a6,16
   1a868:	48079263          	bnez	a5,1acec <_vfiprintf_r+0xb50>
   1a86c:	04087793          	andi	a5,a6,64
   1a870:	54079f63          	bnez	a5,1adce <_vfiprintf_r+0xc32>
   1a874:	20087813          	andi	a6,a6,512
   1a878:	46080a63          	beqz	a6,1acec <_vfiprintf_r+0xb50>
   1a87c:	000d2783          	lw	a5,0(s10)
   1a880:	0d11                	addi	s10,s10,4
   1a882:	01278023          	sb	s2,0(a5)
   1a886:	b2e9                	j	1a250 <_vfiprintf_r+0xb4>
   1a888:	411b0333          	sub	t1,s6,a7
   1a88c:	ac6056e3          	blez	t1,1a358 <_vfiprintf_r+0x1bc>
   1a890:	6f79                	lui	t5,0x1e
   1a892:	4641                	li	a2,16
   1a894:	070f0f13          	addi	t5,t5,112 # 1e070 <zeroes.0>
   1a898:	04665f63          	bge	a2,t1,1a8f6 <_vfiprintf_r+0x75a>
   1a89c:	c426                	sw	s1,8(sp)
   1a89e:	86a2                	mv	a3,s0
   1a8a0:	4ec1                	li	t4,16
   1a8a2:	4f9d                	li	t6,7
   1a8a4:	c642                	sw	a6,12(sp)
   1a8a6:	c872                	sw	t3,16(sp)
   1a8a8:	841a                	mv	s0,t1
   1a8aa:	d046                	sw	a7,32(sp)
   1a8ac:	84fa                	mv	s1,t5
   1a8ae:	a021                	j	1a8b6 <_vfiprintf_r+0x71a>
   1a8b0:	1441                	addi	s0,s0,-16
   1a8b2:	028edb63          	bge	t4,s0,1a8e8 <_vfiprintf_r+0x74c>
   1a8b6:	0741                	addi	a4,a4,16
   1a8b8:	0785                	addi	a5,a5,1
   1a8ba:	c284                	sw	s1,0(a3)
   1a8bc:	01d6a223          	sw	t4,4(a3)
   1a8c0:	c4ba                	sw	a4,72(sp)
   1a8c2:	c2be                	sw	a5,68(sp)
   1a8c4:	06a1                	addi	a3,a3,8
   1a8c6:	feffd5e3          	bge	t6,a5,1a8b0 <_vfiprintf_r+0x714>
   1a8ca:	0090                	addi	a2,sp,64
   1a8cc:	85d6                	mv	a1,s5
   1a8ce:	855e                	mv	a0,s7
   1a8d0:	890fc0ef          	jal	16960 <__sprint_r>
   1a8d4:	ba051ee3          	bnez	a0,1a490 <_vfiprintf_r+0x2f4>
   1a8d8:	4ec1                	li	t4,16
   1a8da:	1441                	addi	s0,s0,-16
   1a8dc:	4726                	lw	a4,72(sp)
   1a8de:	4796                	lw	a5,68(sp)
   1a8e0:	86e2                	mv	a3,s8
   1a8e2:	4f9d                	li	t6,7
   1a8e4:	fc8ec9e3          	blt	t4,s0,1a8b6 <_vfiprintf_r+0x71a>
   1a8e8:	8f26                	mv	t5,s1
   1a8ea:	4832                	lw	a6,12(sp)
   1a8ec:	4e42                	lw	t3,16(sp)
   1a8ee:	5882                	lw	a7,32(sp)
   1a8f0:	44a2                	lw	s1,8(sp)
   1a8f2:	8322                	mv	t1,s0
   1a8f4:	8436                	mv	s0,a3
   1a8f6:	971a                	add	a4,a4,t1
   1a8f8:	0785                	addi	a5,a5,1
   1a8fa:	01e42023          	sw	t5,0(s0)
   1a8fe:	00642223          	sw	t1,4(s0)
   1a902:	c4ba                	sw	a4,72(sp)
   1a904:	c2be                	sw	a5,68(sp)
   1a906:	461d                	li	a2,7
   1a908:	0421                	addi	s0,s0,8
   1a90a:	a4f657e3          	bge	a2,a5,1a358 <_vfiprintf_r+0x1bc>
   1a90e:	0090                	addi	a2,sp,64
   1a910:	85d6                	mv	a1,s5
   1a912:	855e                	mv	a0,s7
   1a914:	c846                	sw	a7,16(sp)
   1a916:	c672                	sw	t3,12(sp)
   1a918:	c442                	sw	a6,8(sp)
   1a91a:	846fc0ef          	jal	16960 <__sprint_r>
   1a91e:	b60519e3          	bnez	a0,1a490 <_vfiprintf_r+0x2f4>
   1a922:	4e32                	lw	t3,12(sp)
   1a924:	4726                	lw	a4,72(sp)
   1a926:	4796                	lw	a5,68(sp)
   1a928:	41cd8db3          	sub	s11,s11,t3
   1a92c:	48c2                	lw	a7,16(sp)
   1a92e:	4822                	lw	a6,8(sp)
   1a930:	8462                	mv	s0,s8
   1a932:	a3b057e3          	blez	s11,1a360 <_vfiprintf_r+0x1c4>
   1a936:	6f79                	lui	t5,0x1e
   1a938:	070f0f13          	addi	t5,t5,112 # 1e070 <zeroes.0>
   1a93c:	05ba5c63          	bge	s4,s11,1a994 <_vfiprintf_r+0x7f8>
   1a940:	86a2                	mv	a3,s0
   1a942:	431d                	li	t1,7
   1a944:	846e                	mv	s0,s11
   1a946:	c442                	sw	a6,8(sp)
   1a948:	c672                	sw	t3,12(sp)
   1a94a:	c846                	sw	a7,16(sp)
   1a94c:	8de6                	mv	s11,s9
   1a94e:	a021                	j	1a956 <_vfiprintf_r+0x7ba>
   1a950:	1441                	addi	s0,s0,-16
   1a952:	028a5b63          	bge	s4,s0,1a988 <_vfiprintf_r+0x7ec>
   1a956:	0741                	addi	a4,a4,16
   1a958:	0785                	addi	a5,a5,1
   1a95a:	0196a023          	sw	s9,0(a3)
   1a95e:	0146a223          	sw	s4,4(a3)
   1a962:	c4ba                	sw	a4,72(sp)
   1a964:	c2be                	sw	a5,68(sp)
   1a966:	06a1                	addi	a3,a3,8
   1a968:	fef354e3          	bge	t1,a5,1a950 <_vfiprintf_r+0x7b4>
   1a96c:	0090                	addi	a2,sp,64
   1a96e:	85d6                	mv	a1,s5
   1a970:	855e                	mv	a0,s7
   1a972:	feffb0ef          	jal	16960 <__sprint_r>
   1a976:	b0051de3          	bnez	a0,1a490 <_vfiprintf_r+0x2f4>
   1a97a:	1441                	addi	s0,s0,-16
   1a97c:	4726                	lw	a4,72(sp)
   1a97e:	4796                	lw	a5,68(sp)
   1a980:	86e2                	mv	a3,s8
   1a982:	431d                	li	t1,7
   1a984:	fc8a49e3          	blt	s4,s0,1a956 <_vfiprintf_r+0x7ba>
   1a988:	4822                	lw	a6,8(sp)
   1a98a:	4e32                	lw	t3,12(sp)
   1a98c:	48c2                	lw	a7,16(sp)
   1a98e:	8f6e                	mv	t5,s11
   1a990:	8da2                	mv	s11,s0
   1a992:	8436                	mv	s0,a3
   1a994:	976e                	add	a4,a4,s11
   1a996:	0785                	addi	a5,a5,1
   1a998:	01e42023          	sw	t5,0(s0)
   1a99c:	01b42223          	sw	s11,4(s0)
   1a9a0:	c4ba                	sw	a4,72(sp)
   1a9a2:	c2be                	sw	a5,68(sp)
   1a9a4:	461d                	li	a2,7
   1a9a6:	0421                	addi	s0,s0,8
   1a9a8:	9af65ce3          	bge	a2,a5,1a360 <_vfiprintf_r+0x1c4>
   1a9ac:	0090                	addi	a2,sp,64
   1a9ae:	85d6                	mv	a1,s5
   1a9b0:	855e                	mv	a0,s7
   1a9b2:	c846                	sw	a7,16(sp)
   1a9b4:	c672                	sw	t3,12(sp)
   1a9b6:	c442                	sw	a6,8(sp)
   1a9b8:	fa9fb0ef          	jal	16960 <__sprint_r>
   1a9bc:	ac051ae3          	bnez	a0,1a490 <_vfiprintf_r+0x2f4>
   1a9c0:	4726                	lw	a4,72(sp)
   1a9c2:	4796                	lw	a5,68(sp)
   1a9c4:	48c2                	lw	a7,16(sp)
   1a9c6:	4e32                	lw	t3,12(sp)
   1a9c8:	4822                	lw	a6,8(sp)
   1a9ca:	8462                	mv	s0,s8
   1a9cc:	ba51                	j	1a360 <_vfiprintf_r+0x1c4>
   1a9ce:	0090                	addi	a2,sp,64
   1a9d0:	85d6                	mv	a1,s5
   1a9d2:	855e                	mv	a0,s7
   1a9d4:	c646                	sw	a7,12(sp)
   1a9d6:	c442                	sw	a6,8(sp)
   1a9d8:	f89fb0ef          	jal	16960 <__sprint_r>
   1a9dc:	aa051ae3          	bnez	a0,1a490 <_vfiprintf_r+0x2f4>
   1a9e0:	4726                	lw	a4,72(sp)
   1a9e2:	48b2                	lw	a7,12(sp)
   1a9e4:	4822                	lw	a6,8(sp)
   1a9e6:	8462                	mv	s0,s8
   1a9e8:	b279                	j	1a376 <_vfiprintf_r+0x1da>
   1a9ea:	4709                	li	a4,2
   1a9ec:	8832                	mv	a6,a2
   1a9ee:	de0706e3          	beqz	a4,1a7da <_vfiprintf_r+0x63e>
   1a9f2:	4612                	lw	a2,4(sp)
   1a9f4:	1984                	addi	s1,sp,240
   1a9f6:	00f7f713          	andi	a4,a5,15
   1a9fa:	9732                	add	a4,a4,a2
   1a9fc:	00074683          	lbu	a3,0(a4)
   1aa00:	8391                	srli	a5,a5,0x4
   1aa02:	01c59713          	slli	a4,a1,0x1c
   1aa06:	8fd9                	or	a5,a5,a4
   1aa08:	8191                	srli	a1,a1,0x4
   1aa0a:	fed48fa3          	sb	a3,-1(s1)
   1aa0e:	00b7e733          	or	a4,a5,a1
   1aa12:	14fd                	addi	s1,s1,-1
   1aa14:	f36d                	bnez	a4,1a9f6 <_vfiprintf_r+0x85a>
   1aa16:	199c                	addi	a5,sp,240
   1aa18:	40978e33          	sub	t3,a5,s1
   1aa1c:	88ee                	mv	a7,s11
   1aa1e:	bdcdd0e3          	bge	s11,t3,1a5de <_vfiprintf_r+0x442>
   1aa22:	88f2                	mv	a7,t3
   1aa24:	be6d                	j	1a5de <_vfiprintf_r+0x442>
   1aa26:	6379                	lui	t1,0x1e
   1aa28:	4641                	li	a2,16
   1aa2a:	08030313          	addi	t1,t1,128 # 1e080 <blanks.1>
   1aa2e:	07d65363          	bge	a2,t4,1aa94 <_vfiprintf_r+0x8f8>
   1aa32:	c826                	sw	s1,16(sp)
   1aa34:	86a2                	mv	a3,s0
   1aa36:	4f41                	li	t5,16
   1aa38:	439d                	li	t2,7
   1aa3a:	c416                	sw	t0,8(sp)
   1aa3c:	c67e                	sw	t6,12(sp)
   1aa3e:	d042                	sw	a6,32(sp)
   1aa40:	d272                	sw	t3,36(sp)
   1aa42:	8476                	mv	s0,t4
   1aa44:	d446                	sw	a7,40(sp)
   1aa46:	849a                	mv	s1,t1
   1aa48:	a021                	j	1aa50 <_vfiprintf_r+0x8b4>
   1aa4a:	1441                	addi	s0,s0,-16
   1aa4c:	028f5b63          	bge	t5,s0,1aa82 <_vfiprintf_r+0x8e6>
   1aa50:	0741                	addi	a4,a4,16
   1aa52:	0785                	addi	a5,a5,1
   1aa54:	c284                	sw	s1,0(a3)
   1aa56:	01e6a223          	sw	t5,4(a3)
   1aa5a:	c4ba                	sw	a4,72(sp)
   1aa5c:	c2be                	sw	a5,68(sp)
   1aa5e:	06a1                	addi	a3,a3,8
   1aa60:	fef3d5e3          	bge	t2,a5,1aa4a <_vfiprintf_r+0x8ae>
   1aa64:	0090                	addi	a2,sp,64
   1aa66:	85d6                	mv	a1,s5
   1aa68:	855e                	mv	a0,s7
   1aa6a:	ef7fb0ef          	jal	16960 <__sprint_r>
   1aa6e:	a20511e3          	bnez	a0,1a490 <_vfiprintf_r+0x2f4>
   1aa72:	4f41                	li	t5,16
   1aa74:	1441                	addi	s0,s0,-16
   1aa76:	4726                	lw	a4,72(sp)
   1aa78:	4796                	lw	a5,68(sp)
   1aa7a:	86e2                	mv	a3,s8
   1aa7c:	439d                	li	t2,7
   1aa7e:	fc8f49e3          	blt	t5,s0,1aa50 <_vfiprintf_r+0x8b4>
   1aa82:	8326                	mv	t1,s1
   1aa84:	42a2                	lw	t0,8(sp)
   1aa86:	4fb2                	lw	t6,12(sp)
   1aa88:	5802                	lw	a6,32(sp)
   1aa8a:	5e12                	lw	t3,36(sp)
   1aa8c:	58a2                	lw	a7,40(sp)
   1aa8e:	44c2                	lw	s1,16(sp)
   1aa90:	8ea2                	mv	t4,s0
   1aa92:	8436                	mv	s0,a3
   1aa94:	9776                	add	a4,a4,t4
   1aa96:	0785                	addi	a5,a5,1
   1aa98:	00642023          	sw	t1,0(s0)
   1aa9c:	01d42223          	sw	t4,4(s0)
   1aaa0:	c4ba                	sw	a4,72(sp)
   1aaa2:	c2be                	sw	a5,68(sp)
   1aaa4:	461d                	li	a2,7
   1aaa6:	0421                	addi	s0,s0,8
   1aaa8:	86f656e3          	bge	a2,a5,1a314 <_vfiprintf_r+0x178>
   1aaac:	0090                	addi	a2,sp,64
   1aaae:	85d6                	mv	a1,s5
   1aab0:	855e                	mv	a0,s7
   1aab2:	d246                	sw	a7,36(sp)
   1aab4:	d072                	sw	t3,32(sp)
   1aab6:	c842                	sw	a6,16(sp)
   1aab8:	c67e                	sw	t6,12(sp)
   1aaba:	c416                	sw	t0,8(sp)
   1aabc:	ea5fb0ef          	jal	16960 <__sprint_r>
   1aac0:	9c0518e3          	bnez	a0,1a490 <_vfiprintf_r+0x2f4>
   1aac4:	4726                	lw	a4,72(sp)
   1aac6:	4796                	lw	a5,68(sp)
   1aac8:	5892                	lw	a7,36(sp)
   1aaca:	5e02                	lw	t3,32(sp)
   1aacc:	4842                	lw	a6,16(sp)
   1aace:	4fb2                	lw	t6,12(sp)
   1aad0:	42a2                	lw	t0,8(sp)
   1aad2:	8462                	mv	s0,s8
   1aad4:	841ff06f          	j	1a314 <_vfiprintf_r+0x178>
   1aad8:	0090                	addi	a2,sp,64
   1aada:	85d6                	mv	a1,s5
   1aadc:	855e                	mv	a0,s7
   1aade:	d046                	sw	a7,32(sp)
   1aae0:	c872                	sw	t3,16(sp)
   1aae2:	c642                	sw	a6,12(sp)
   1aae4:	c47e                	sw	t6,8(sp)
   1aae6:	e7bfb0ef          	jal	16960 <__sprint_r>
   1aaea:	9a0513e3          	bnez	a0,1a490 <_vfiprintf_r+0x2f4>
   1aaee:	4726                	lw	a4,72(sp)
   1aaf0:	4796                	lw	a5,68(sp)
   1aaf2:	5882                	lw	a7,32(sp)
   1aaf4:	4e42                	lw	t3,16(sp)
   1aaf6:	4832                	lw	a6,12(sp)
   1aaf8:	4fa2                	lw	t6,8(sp)
   1aafa:	8462                	mv	s0,s8
   1aafc:	855ff06f          	j	1a350 <_vfiprintf_r+0x1b4>
   1ab00:	010e7713          	andi	a4,t3,16
   1ab04:	000d2783          	lw	a5,0(s10)
   1ab08:	0d11                	addi	s10,s10,4
   1ab0a:	e719                	bnez	a4,1ab18 <_vfiprintf_r+0x97c>
   1ab0c:	040e7713          	andi	a4,t3,64
   1ab10:	1e070f63          	beqz	a4,1ad0e <_vfiprintf_r+0xb72>
   1ab14:	07c2                	slli	a5,a5,0x10
   1ab16:	83c1                	srli	a5,a5,0x10
   1ab18:	4881                	li	a7,0
   1ab1a:	b951                	j	1a7ae <_vfiprintf_r+0x612>
   1ab1c:	01077613          	andi	a2,a4,16
   1ab20:	000d2783          	lw	a5,0(s10)
   1ab24:	0d11                	addi	s10,s10,4
   1ab26:	ee01                	bnez	a2,1ab3e <_vfiprintf_r+0x9a2>
   1ab28:	04077613          	andi	a2,a4,64
   1ab2c:	c609                	beqz	a2,1ab36 <_vfiprintf_r+0x99a>
   1ab2e:	07c2                	slli	a5,a5,0x10
   1ab30:	83c1                	srli	a5,a5,0x10
   1ab32:	4581                	li	a1,0
   1ab34:	bef5                	j	1a730 <_vfiprintf_r+0x594>
   1ab36:	20077613          	andi	a2,a4,512
   1ab3a:	2a061163          	bnez	a2,1addc <_vfiprintf_r+0xc40>
   1ab3e:	4581                	li	a1,0
   1ab40:	bec5                	j	1a730 <_vfiprintf_r+0x594>
   1ab42:	4881                	li	a7,0
   1ab44:	1984                	addi	s1,sp,240
   1ab46:	bc61                	j	1a5de <_vfiprintf_r+0x442>
   1ab48:	000d2783          	lw	a5,0(s10)
   1ab4c:	41f95713          	srai	a4,s2,0x1f
   1ab50:	0d11                	addi	s10,s10,4
   1ab52:	0127a023          	sw	s2,0(a5)
   1ab56:	c3d8                	sw	a4,4(a5)
   1ab58:	ef8ff06f          	j	1a250 <_vfiprintf_r+0xb4>
   1ab5c:	88f2                	mv	a7,t3
   1ab5e:	84aa                	mv	s1,a0
   1ab60:	bcbd                	j	1a5de <_vfiprintf_r+0x442>
   1ab62:	5dfd                	li	s11,-1
   1ab64:	89b6                	mv	s3,a3
   1ab66:	f4cff06f          	j	1a2b2 <_vfiprintf_r+0x116>
   1ab6a:	8e42                	mv	t3,a6
   1ab6c:	b12d                	j	1a796 <_vfiprintf_r+0x5fa>
   1ab6e:	8742                	mv	a4,a6
   1ab70:	b665                	j	1a718 <_vfiprintf_r+0x57c>
   1ab72:	67f9                	lui	a5,0x1e
   1ab74:	96078793          	addi	a5,a5,-1696 # 1d960 <__clzsi2+0xa8>
   1ab78:	c23e                	sw	a5,4(sp)
   1ab7a:	02087793          	andi	a5,a6,32
   1ab7e:	c3a9                	beqz	a5,1abc0 <_vfiprintf_r+0xa24>
   1ab80:	0d1d                	addi	s10,s10,7
   1ab82:	ff8d7d13          	andi	s10,s10,-8
   1ab86:	000d2783          	lw	a5,0(s10)
   1ab8a:	004d2583          	lw	a1,4(s10)
   1ab8e:	0d21                	addi	s10,s10,8
   1ab90:	00187713          	andi	a4,a6,1
   1ab94:	cf01                	beqz	a4,1abac <_vfiprintf_r+0xa10>
   1ab96:	00b7e733          	or	a4,a5,a1
   1ab9a:	cb09                	beqz	a4,1abac <_vfiprintf_r+0xa10>
   1ab9c:	03000713          	li	a4,48
   1aba0:	02e10e23          	sb	a4,60(sp)
   1aba4:	02c10ea3          	sb	a2,61(sp)
   1aba8:	00286813          	ori	a6,a6,2
   1abac:	bff87813          	andi	a6,a6,-1025
   1abb0:	b941                	j	1a840 <_vfiprintf_r+0x6a4>
   1abb2:	67f9                	lui	a5,0x1e
   1abb4:	94c78793          	addi	a5,a5,-1716 # 1d94c <__clzsi2+0x94>
   1abb8:	c23e                	sw	a5,4(sp)
   1abba:	02087793          	andi	a5,a6,32
   1abbe:	f3e9                	bnez	a5,1ab80 <_vfiprintf_r+0x9e4>
   1abc0:	01087713          	andi	a4,a6,16
   1abc4:	000d2783          	lw	a5,0(s10)
   1abc8:	0d11                	addi	s10,s10,4
   1abca:	e315                	bnez	a4,1abee <_vfiprintf_r+0xa52>
   1abcc:	04087713          	andi	a4,a6,64
   1abd0:	cb19                	beqz	a4,1abe6 <_vfiprintf_r+0xa4a>
   1abd2:	07c2                	slli	a5,a5,0x10
   1abd4:	83c1                	srli	a5,a5,0x10
   1abd6:	4581                	li	a1,0
   1abd8:	bf65                	j	1ab90 <_vfiprintf_r+0x9f4>
   1abda:	8526                	mv	a0,s1
   1abdc:	9e5fc0ef          	jal	175c0 <strlen>
   1abe0:	4822                	lw	a6,8(sp)
   1abe2:	8e2a                	mv	t3,a0
   1abe4:	b435                	j	1a610 <_vfiprintf_r+0x474>
   1abe6:	20087713          	andi	a4,a6,512
   1abea:	1c071763          	bnez	a4,1adb8 <_vfiprintf_r+0xc1c>
   1abee:	4581                	li	a1,0
   1abf0:	b745                	j	1ab90 <_vfiprintf_r+0x9f4>
   1abf2:	ccccdf37          	lui	t5,0xccccd
   1abf6:	ccccdfb7          	lui	t6,0xccccd
   1abfa:	42d2                	lw	t0,20(sp)
   1abfc:	40087e13          	andi	t3,a6,1024
   1ac00:	4581                	li	a1,0
   1ac02:	1988                	addi	a0,sp,240
   1ac04:	4315                	li	t1,5
   1ac06:	ccdf0f13          	addi	t5,t5,-819 # cccccccd <__BSS_END__+0xcccad0e1>
   1ac0a:	cccf8f93          	addi	t6,t6,-820 # cccccccc <__BSS_END__+0xcccad0e0>
   1ac0e:	0ff00e93          	li	t4,255
   1ac12:	a081                	j	1ac52 <_vfiprintf_r+0xab6>
   1ac14:	00f4b733          	sltu	a4,s1,a5
   1ac18:	9726                	add	a4,a4,s1
   1ac1a:	02677733          	remu	a4,a4,t1
   1ac1e:	40e78733          	sub	a4,a5,a4
   1ac22:	00e7b633          	sltu	a2,a5,a4
   1ac26:	40c88633          	sub	a2,a7,a2
   1ac2a:	03f703b3          	mul	t2,a4,t6
   1ac2e:	03e60633          	mul	a2,a2,t5
   1ac32:	03e73533          	mulhu	a0,a4,t5
   1ac36:	961e                	add	a2,a2,t2
   1ac38:	03e70733          	mul	a4,a4,t5
   1ac3c:	962a                	add	a2,a2,a0
   1ac3e:	01f61513          	slli	a0,a2,0x1f
   1ac42:	8205                	srli	a2,a2,0x1
   1ac44:	8305                	srli	a4,a4,0x1
   1ac46:	8f49                	or	a4,a4,a0
   1ac48:	16088263          	beqz	a7,1adac <_vfiprintf_r+0xc10>
   1ac4c:	87ba                	mv	a5,a4
   1ac4e:	88b2                	mv	a7,a2
   1ac50:	8536                	mv	a0,a3
   1ac52:	011784b3          	add	s1,a5,a7
   1ac56:	00f4b733          	sltu	a4,s1,a5
   1ac5a:	9726                	add	a4,a4,s1
   1ac5c:	02677733          	remu	a4,a4,t1
   1ac60:	fff50693          	addi	a3,a0,-1
   1ac64:	0585                	addi	a1,a1,1
   1ac66:	40e78733          	sub	a4,a5,a4
   1ac6a:	00e7b3b3          	sltu	t2,a5,a4
   1ac6e:	407883b3          	sub	t2,a7,t2
   1ac72:	03e73633          	mulhu	a2,a4,t5
   1ac76:	03e383b3          	mul	t2,t2,t5
   1ac7a:	03e70733          	mul	a4,a4,t5
   1ac7e:	93b2                	add	t2,t2,a2
   1ac80:	03fe                	slli	t2,t2,0x1f
   1ac82:	00175613          	srli	a2,a4,0x1
   1ac86:	00c3e633          	or	a2,t2,a2
   1ac8a:	00261713          	slli	a4,a2,0x2
   1ac8e:	9732                	add	a4,a4,a2
   1ac90:	0706                	slli	a4,a4,0x1
   1ac92:	40e78733          	sub	a4,a5,a4
   1ac96:	03070713          	addi	a4,a4,48
   1ac9a:	fee50fa3          	sb	a4,-1(a0)
   1ac9e:	f60e0be3          	beqz	t3,1ac14 <_vfiprintf_r+0xa78>
   1aca2:	0002c703          	lbu	a4,0(t0)
   1aca6:	f6b717e3          	bne	a4,a1,1ac14 <_vfiprintf_r+0xa78>
   1acaa:	f7d585e3          	beq	a1,t4,1ac14 <_vfiprintf_r+0xa78>
   1acae:	06089b63          	bnez	a7,1ad24 <_vfiprintf_r+0xb88>
   1acb2:	4725                	li	a4,9
   1acb4:	06f76863          	bltu	a4,a5,1ad24 <_vfiprintf_r+0xb88>
   1acb8:	84b6                	mv	s1,a3
   1acba:	ca16                	sw	t0,20(sp)
   1acbc:	bba9                	j	1aa16 <_vfiprintf_r+0x87a>
   1acbe:	883a                	mv	a6,a4
   1acc0:	4701                	li	a4,0
   1acc2:	b0070ce3          	beqz	a4,1a7da <_vfiprintf_r+0x63e>
   1acc6:	b335                	j	1a9f2 <_vfiprintf_r+0x856>
   1acc8:	93ef90ef          	jal	13e06 <__sinit>
   1accc:	cfaff06f          	j	1a1c6 <_vfiprintf_r+0x2a>
   1acd0:	0019c783          	lbu	a5,1(s3)
   1acd4:	20086813          	ori	a6,a6,512
   1acd8:	0985                	addi	s3,s3,1
   1acda:	dd4ff06f          	j	1a2ae <_vfiprintf_r+0x112>
   1acde:	0019c783          	lbu	a5,1(s3)
   1ace2:	02086813          	ori	a6,a6,32
   1ace6:	0985                	addi	s3,s3,1
   1ace8:	dc6ff06f          	j	1a2ae <_vfiprintf_r+0x112>
   1acec:	000d2783          	lw	a5,0(s10)
   1acf0:	0d11                	addi	s10,s10,4
   1acf2:	0127a023          	sw	s2,0(a5)
   1acf6:	d5aff06f          	j	1a250 <_vfiprintf_r+0xb4>
   1acfa:	4799                	li	a5,6
   1acfc:	8e6e                	mv	t3,s11
   1acfe:	0bb7eb63          	bltu	a5,s11,1adb4 <_vfiprintf_r+0xc18>
   1ad02:	64f9                	lui	s1,0x1e
   1ad04:	88f2                	mv	a7,t3
   1ad06:	97448493          	addi	s1,s1,-1676 # 1d974 <__clzsi2+0xbc>
   1ad0a:	df2ff06f          	j	1a2fc <_vfiprintf_r+0x160>
   1ad0e:	200e7713          	andi	a4,t3,512
   1ad12:	e00703e3          	beqz	a4,1ab18 <_vfiprintf_r+0x97c>
   1ad16:	0ff7f793          	zext.b	a5,a5
   1ad1a:	4881                	li	a7,0
   1ad1c:	bc49                	j	1a7ae <_vfiprintf_r+0x612>
   1ad1e:	4781                	li	a5,0
   1ad20:	4581                	li	a1,0
   1ad22:	b9c1                	j	1a9f2 <_vfiprintf_r+0x856>
   1ad24:	d43e                	sw	a5,40(sp)
   1ad26:	47e2                	lw	a5,24(sp)
   1ad28:	45f2                	lw	a1,28(sp)
   1ad2a:	d646                	sw	a7,44(sp)
   1ad2c:	8e9d                	sub	a3,a3,a5
   1ad2e:	863e                	mv	a2,a5
   1ad30:	8536                	mv	a0,a3
   1ad32:	d27e                	sw	t6,36(sp)
   1ad34:	d07a                	sw	t5,32(sp)
   1ad36:	ca72                	sw	t3,20(sp)
   1ad38:	c842                	sw	a6,16(sp)
   1ad3a:	c616                	sw	t0,12(sp)
   1ad3c:	c436                	sw	a3,8(sp)
   1ad3e:	d76fc0ef          	jal	172b4 <strncpy>
   1ad42:	57a2                	lw	a5,40(sp)
   1ad44:	4615                	li	a2,5
   1ad46:	42b2                	lw	t0,12(sp)
   1ad48:	00f4b733          	sltu	a4,s1,a5
   1ad4c:	9726                	add	a4,a4,s1
   1ad4e:	02c77733          	remu	a4,a4,a2
   1ad52:	0012c603          	lbu	a2,1(t0)
   1ad56:	58b2                	lw	a7,44(sp)
   1ad58:	ccccd537          	lui	a0,0xccccd
   1ad5c:	00c03633          	snez	a2,a2
   1ad60:	ccccd3b7          	lui	t2,0xccccd
   1ad64:	92b2                	add	t0,t0,a2
   1ad66:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccad0e1>
   1ad6a:	ccc38393          	addi	t2,t2,-820 # cccccccc <__BSS_END__+0xcccad0e0>
   1ad6e:	46a2                	lw	a3,8(sp)
   1ad70:	4842                	lw	a6,16(sp)
   1ad72:	4e52                	lw	t3,20(sp)
   1ad74:	5f02                	lw	t5,32(sp)
   1ad76:	5f92                	lw	t6,36(sp)
   1ad78:	4581                	li	a1,0
   1ad7a:	4315                	li	t1,5
   1ad7c:	0ff00e93          	li	t4,255
   1ad80:	40e78733          	sub	a4,a5,a4
   1ad84:	00e7b633          	sltu	a2,a5,a4
   1ad88:	40c88633          	sub	a2,a7,a2
   1ad8c:	027703b3          	mul	t2,a4,t2
   1ad90:	02a60633          	mul	a2,a2,a0
   1ad94:	02a738b3          	mulhu	a7,a4,a0
   1ad98:	961e                	add	a2,a2,t2
   1ad9a:	02a707b3          	mul	a5,a4,a0
   1ad9e:	9646                	add	a2,a2,a7
   1ada0:	01f61713          	slli	a4,a2,0x1f
   1ada4:	8205                	srli	a2,a2,0x1
   1ada6:	8385                	srli	a5,a5,0x1
   1ada8:	8f5d                	or	a4,a4,a5
   1adaa:	b54d                	j	1ac4c <_vfiprintf_r+0xab0>
   1adac:	4525                	li	a0,9
   1adae:	e8f56fe3          	bltu	a0,a5,1ac4c <_vfiprintf_r+0xab0>
   1adb2:	b719                	j	1acb8 <_vfiprintf_r+0xb1c>
   1adb4:	4e19                	li	t3,6
   1adb6:	b7b1                	j	1ad02 <_vfiprintf_r+0xb66>
   1adb8:	0ff7f793          	zext.b	a5,a5
   1adbc:	4581                	li	a1,0
   1adbe:	bbc9                	j	1ab90 <_vfiprintf_r+0x9f4>
   1adc0:	07e2                	slli	a5,a5,0x18
   1adc2:	87e1                	srai	a5,a5,0x18
   1adc4:	41f7d893          	srai	a7,a5,0x1f
   1adc8:	8746                	mv	a4,a7
   1adca:	e20ff06f          	j	1a3ea <_vfiprintf_r+0x24e>
   1adce:	000d2783          	lw	a5,0(s10)
   1add2:	0d11                	addi	s10,s10,4
   1add4:	01279023          	sh	s2,0(a5)
   1add8:	c78ff06f          	j	1a250 <_vfiprintf_r+0xb4>
   1addc:	0ff7f793          	zext.b	a5,a5
   1ade0:	4581                	li	a1,0
   1ade2:	b2b9                	j	1a730 <_vfiprintf_r+0x594>
   1ade4:	03000793          	li	a5,48
   1ade8:	fe4ff06f          	j	1a5cc <_vfiprintf_r+0x430>
   1adec:	5d7d                	li	s10,-1
   1adee:	ecaff06f          	j	1a4b8 <_vfiprintf_r+0x31c>
   1adf2:	000d2d83          	lw	s11,0(s10)
   1adf6:	0d11                	addi	s10,s10,4
   1adf8:	000dd363          	bgez	s11,1adfe <_vfiprintf_r+0xc62>
   1adfc:	5dfd                	li	s11,-1
   1adfe:	0019c783          	lbu	a5,1(s3)
   1ae02:	89b6                	mv	s3,a3
   1ae04:	caaff06f          	j	1a2ae <_vfiprintf_r+0x112>

0001ae08 <vfiprintf>:
   1ae08:	87aa                	mv	a5,a0
   1ae0a:	f141a503          	lw	a0,-236(gp) # 1f8b4 <_impure_ptr>
   1ae0e:	86b2                	mv	a3,a2
   1ae10:	862e                	mv	a2,a1
   1ae12:	85be                	mv	a1,a5
   1ae14:	b88ff06f          	j	1a19c <_vfiprintf_r>

0001ae18 <__sbprintf>:
   1ae18:	b8010113          	addi	sp,sp,-1152
   1ae1c:	00c59783          	lh	a5,12(a1)
   1ae20:	00e5d703          	lhu	a4,14(a1)
   1ae24:	46812c23          	sw	s0,1144(sp)
   1ae28:	842e                	mv	s0,a1
   1ae2a:	65c1                	lui	a1,0x10
   1ae2c:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   1ae2e:	06442e03          	lw	t3,100(s0)
   1ae32:	01c42303          	lw	t1,28(s0)
   1ae36:	02442883          	lw	a7,36(s0)
   1ae3a:	0742                	slli	a4,a4,0x10
   1ae3c:	8fed                	and	a5,a5,a1
   1ae3e:	8fd9                	or	a5,a5,a4
   1ae40:	40000813          	li	a6,1024
   1ae44:	ca3e                	sw	a5,20(sp)
   1ae46:	002c                	addi	a1,sp,8
   1ae48:	189c                	addi	a5,sp,112
   1ae4a:	46912a23          	sw	s1,1140(sp)
   1ae4e:	47212823          	sw	s2,1136(sp)
   1ae52:	46112e23          	sw	ra,1148(sp)
   1ae56:	892a                	mv	s2,a0
   1ae58:	d6f2                	sw	t3,108(sp)
   1ae5a:	d21a                	sw	t1,36(sp)
   1ae5c:	d646                	sw	a7,44(sp)
   1ae5e:	c43e                	sw	a5,8(sp)
   1ae60:	cc3e                	sw	a5,24(sp)
   1ae62:	c842                	sw	a6,16(sp)
   1ae64:	ce42                	sw	a6,28(sp)
   1ae66:	d002                	sw	zero,32(sp)
   1ae68:	b34ff0ef          	jal	1a19c <_vfiprintf_r>
   1ae6c:	84aa                	mv	s1,a0
   1ae6e:	02055963          	bgez	a0,1aea0 <__sbprintf+0x88>
   1ae72:	01415783          	lhu	a5,20(sp)
   1ae76:	0407f793          	andi	a5,a5,64
   1ae7a:	c799                	beqz	a5,1ae88 <__sbprintf+0x70>
   1ae7c:	00c45783          	lhu	a5,12(s0)
   1ae80:	0407e793          	ori	a5,a5,64
   1ae84:	00f41623          	sh	a5,12(s0)
   1ae88:	47c12083          	lw	ra,1148(sp)
   1ae8c:	47812403          	lw	s0,1144(sp)
   1ae90:	47012903          	lw	s2,1136(sp)
   1ae94:	8526                	mv	a0,s1
   1ae96:	47412483          	lw	s1,1140(sp)
   1ae9a:	48010113          	addi	sp,sp,1152
   1ae9e:	8082                	ret
   1aea0:	002c                	addi	a1,sp,8
   1aea2:	854a                	mv	a0,s2
   1aea4:	d2bfb0ef          	jal	16bce <_fflush_r>
   1aea8:	d569                	beqz	a0,1ae72 <__sbprintf+0x5a>
   1aeaa:	54fd                	li	s1,-1
   1aeac:	b7d9                	j	1ae72 <__sbprintf+0x5a>

0001aeae <__errno>:
   1aeae:	f141a503          	lw	a0,-236(gp) # 1f8b4 <_impure_ptr>
   1aeb2:	8082                	ret

0001aeb4 <abort>:
   1aeb4:	1141                	addi	sp,sp,-16
   1aeb6:	4519                	li	a0,6
   1aeb8:	c606                	sw	ra,12(sp)
   1aeba:	2a59                	jal	1b050 <raise>
   1aebc:	4505                	li	a0,1
   1aebe:	2e61                	jal	1b256 <_exit>

0001aec0 <_init_signal_r>:
   1aec0:	11852783          	lw	a5,280(a0)
   1aec4:	c399                	beqz	a5,1aeca <_init_signal_r+0xa>
   1aec6:	4501                	li	a0,0
   1aec8:	8082                	ret
   1aeca:	1141                	addi	sp,sp,-16
   1aecc:	08000593          	li	a1,128
   1aed0:	c422                	sw	s0,8(sp)
   1aed2:	c606                	sw	ra,12(sp)
   1aed4:	842a                	mv	s0,a0
   1aed6:	893f90ef          	jal	14768 <_malloc_r>
   1aeda:	10a42c23          	sw	a0,280(s0)
   1aede:	cd09                	beqz	a0,1aef8 <_init_signal_r+0x38>
   1aee0:	08050793          	addi	a5,a0,128
   1aee4:	00052023          	sw	zero,0(a0)
   1aee8:	0511                	addi	a0,a0,4
   1aeea:	fef51de3          	bne	a0,a5,1aee4 <_init_signal_r+0x24>
   1aeee:	4501                	li	a0,0
   1aef0:	40b2                	lw	ra,12(sp)
   1aef2:	4422                	lw	s0,8(sp)
   1aef4:	0141                	addi	sp,sp,16
   1aef6:	8082                	ret
   1aef8:	557d                	li	a0,-1
   1aefa:	bfdd                	j	1aef0 <_init_signal_r+0x30>

0001aefc <_signal_r>:
   1aefc:	1101                	addi	sp,sp,-32
   1aefe:	ca26                	sw	s1,20(sp)
   1af00:	ce06                	sw	ra,28(sp)
   1af02:	47fd                	li	a5,31
   1af04:	84aa                	mv	s1,a0
   1af06:	02b7e063          	bltu	a5,a1,1af26 <_signal_r+0x2a>
   1af0a:	11852783          	lw	a5,280(a0)
   1af0e:	cc22                	sw	s0,24(sp)
   1af10:	842e                	mv	s0,a1
   1af12:	cf91                	beqz	a5,1af2e <_signal_r+0x32>
   1af14:	040a                	slli	s0,s0,0x2
   1af16:	97a2                	add	a5,a5,s0
   1af18:	4462                	lw	s0,24(sp)
   1af1a:	4388                	lw	a0,0(a5)
   1af1c:	c390                	sw	a2,0(a5)
   1af1e:	40f2                	lw	ra,28(sp)
   1af20:	44d2                	lw	s1,20(sp)
   1af22:	6105                	addi	sp,sp,32
   1af24:	8082                	ret
   1af26:	47d9                	li	a5,22
   1af28:	c11c                	sw	a5,0(a0)
   1af2a:	557d                	li	a0,-1
   1af2c:	bfcd                	j	1af1e <_signal_r+0x22>
   1af2e:	08000593          	li	a1,128
   1af32:	c632                	sw	a2,12(sp)
   1af34:	835f90ef          	jal	14768 <_malloc_r>
   1af38:	10a4ac23          	sw	a0,280(s1)
   1af3c:	4632                	lw	a2,12(sp)
   1af3e:	87aa                	mv	a5,a0
   1af40:	872a                	mv	a4,a0
   1af42:	08050693          	addi	a3,a0,128
   1af46:	c519                	beqz	a0,1af54 <_signal_r+0x58>
   1af48:	00072023          	sw	zero,0(a4)
   1af4c:	0711                	addi	a4,a4,4
   1af4e:	fed71de3          	bne	a4,a3,1af48 <_signal_r+0x4c>
   1af52:	b7c9                	j	1af14 <_signal_r+0x18>
   1af54:	4462                	lw	s0,24(sp)
   1af56:	557d                	li	a0,-1
   1af58:	b7d9                	j	1af1e <_signal_r+0x22>

0001af5a <_raise_r>:
   1af5a:	1141                	addi	sp,sp,-16
   1af5c:	c226                	sw	s1,4(sp)
   1af5e:	c606                	sw	ra,12(sp)
   1af60:	47fd                	li	a5,31
   1af62:	84aa                	mv	s1,a0
   1af64:	04b7ee63          	bltu	a5,a1,1afc0 <_raise_r+0x66>
   1af68:	11852783          	lw	a5,280(a0)
   1af6c:	c422                	sw	s0,8(sp)
   1af6e:	842e                	mv	s0,a1
   1af70:	c795                	beqz	a5,1af9c <_raise_r+0x42>
   1af72:	00259713          	slli	a4,a1,0x2
   1af76:	97ba                	add	a5,a5,a4
   1af78:	4398                	lw	a4,0(a5)
   1af7a:	c30d                	beqz	a4,1af9c <_raise_r+0x42>
   1af7c:	4685                	li	a3,1
   1af7e:	00d70963          	beq	a4,a3,1af90 <_raise_r+0x36>
   1af82:	56fd                	li	a3,-1
   1af84:	02d70663          	beq	a4,a3,1afb0 <_raise_r+0x56>
   1af88:	0007a023          	sw	zero,0(a5)
   1af8c:	852e                	mv	a0,a1
   1af8e:	9702                	jalr	a4
   1af90:	4422                	lw	s0,8(sp)
   1af92:	4501                	li	a0,0
   1af94:	40b2                	lw	ra,12(sp)
   1af96:	4492                	lw	s1,4(sp)
   1af98:	0141                	addi	sp,sp,16
   1af9a:	8082                	ret
   1af9c:	8526                	mv	a0,s1
   1af9e:	2469                	jal	1b228 <_getpid_r>
   1afa0:	8622                	mv	a2,s0
   1afa2:	4422                	lw	s0,8(sp)
   1afa4:	40b2                	lw	ra,12(sp)
   1afa6:	85aa                	mv	a1,a0
   1afa8:	8526                	mv	a0,s1
   1afaa:	4492                	lw	s1,4(sp)
   1afac:	0141                	addi	sp,sp,16
   1afae:	a489                	j	1b1f0 <_kill_r>
   1afb0:	4422                	lw	s0,8(sp)
   1afb2:	40b2                	lw	ra,12(sp)
   1afb4:	47d9                	li	a5,22
   1afb6:	c11c                	sw	a5,0(a0)
   1afb8:	4492                	lw	s1,4(sp)
   1afba:	4505                	li	a0,1
   1afbc:	0141                	addi	sp,sp,16
   1afbe:	8082                	ret
   1afc0:	47d9                	li	a5,22
   1afc2:	c11c                	sw	a5,0(a0)
   1afc4:	557d                	li	a0,-1
   1afc6:	b7f9                	j	1af94 <_raise_r+0x3a>

0001afc8 <__sigtramp_r>:
   1afc8:	47fd                	li	a5,31
   1afca:	08b7e163          	bltu	a5,a1,1b04c <__sigtramp_r+0x84>
   1afce:	11852783          	lw	a5,280(a0)
   1afd2:	1141                	addi	sp,sp,-16
   1afd4:	c422                	sw	s0,8(sp)
   1afd6:	c226                	sw	s1,4(sp)
   1afd8:	c606                	sw	ra,12(sp)
   1afda:	842e                	mv	s0,a1
   1afdc:	84aa                	mv	s1,a0
   1afde:	c7a1                	beqz	a5,1b026 <__sigtramp_r+0x5e>
   1afe0:	00241713          	slli	a4,s0,0x2
   1afe4:	97ba                	add	a5,a5,a4
   1afe6:	4398                	lw	a4,0(a5)
   1afe8:	c30d                	beqz	a4,1b00a <__sigtramp_r+0x42>
   1afea:	56fd                	li	a3,-1
   1afec:	02d70b63          	beq	a4,a3,1b022 <__sigtramp_r+0x5a>
   1aff0:	4685                	li	a3,1
   1aff2:	02d70263          	beq	a4,a3,1b016 <__sigtramp_r+0x4e>
   1aff6:	8522                	mv	a0,s0
   1aff8:	0007a023          	sw	zero,0(a5)
   1affc:	9702                	jalr	a4
   1affe:	4501                	li	a0,0
   1b000:	40b2                	lw	ra,12(sp)
   1b002:	4422                	lw	s0,8(sp)
   1b004:	4492                	lw	s1,4(sp)
   1b006:	0141                	addi	sp,sp,16
   1b008:	8082                	ret
   1b00a:	40b2                	lw	ra,12(sp)
   1b00c:	4422                	lw	s0,8(sp)
   1b00e:	4492                	lw	s1,4(sp)
   1b010:	4505                	li	a0,1
   1b012:	0141                	addi	sp,sp,16
   1b014:	8082                	ret
   1b016:	40b2                	lw	ra,12(sp)
   1b018:	4422                	lw	s0,8(sp)
   1b01a:	4492                	lw	s1,4(sp)
   1b01c:	450d                	li	a0,3
   1b01e:	0141                	addi	sp,sp,16
   1b020:	8082                	ret
   1b022:	4509                	li	a0,2
   1b024:	bff1                	j	1b000 <__sigtramp_r+0x38>
   1b026:	08000593          	li	a1,128
   1b02a:	f3ef90ef          	jal	14768 <_malloc_r>
   1b02e:	10a4ac23          	sw	a0,280(s1)
   1b032:	87aa                	mv	a5,a0
   1b034:	c911                	beqz	a0,1b048 <__sigtramp_r+0x80>
   1b036:	872a                	mv	a4,a0
   1b038:	08050693          	addi	a3,a0,128
   1b03c:	00072023          	sw	zero,0(a4)
   1b040:	0711                	addi	a4,a4,4
   1b042:	fed71de3          	bne	a4,a3,1b03c <__sigtramp_r+0x74>
   1b046:	bf69                	j	1afe0 <__sigtramp_r+0x18>
   1b048:	557d                	li	a0,-1
   1b04a:	bf5d                	j	1b000 <__sigtramp_r+0x38>
   1b04c:	557d                	li	a0,-1
   1b04e:	8082                	ret

0001b050 <raise>:
   1b050:	1141                	addi	sp,sp,-16
   1b052:	c226                	sw	s1,4(sp)
   1b054:	c606                	sw	ra,12(sp)
   1b056:	47fd                	li	a5,31
   1b058:	f141a483          	lw	s1,-236(gp) # 1f8b4 <_impure_ptr>
   1b05c:	04a7ed63          	bltu	a5,a0,1b0b6 <raise+0x66>
   1b060:	1184a783          	lw	a5,280(s1)
   1b064:	c422                	sw	s0,8(sp)
   1b066:	842a                	mv	s0,a0
   1b068:	c78d                	beqz	a5,1b092 <raise+0x42>
   1b06a:	00251713          	slli	a4,a0,0x2
   1b06e:	97ba                	add	a5,a5,a4
   1b070:	4398                	lw	a4,0(a5)
   1b072:	c305                	beqz	a4,1b092 <raise+0x42>
   1b074:	4685                	li	a3,1
   1b076:	00d70863          	beq	a4,a3,1b086 <raise+0x36>
   1b07a:	56fd                	li	a3,-1
   1b07c:	02d70563          	beq	a4,a3,1b0a6 <raise+0x56>
   1b080:	0007a023          	sw	zero,0(a5)
   1b084:	9702                	jalr	a4
   1b086:	4422                	lw	s0,8(sp)
   1b088:	4501                	li	a0,0
   1b08a:	40b2                	lw	ra,12(sp)
   1b08c:	4492                	lw	s1,4(sp)
   1b08e:	0141                	addi	sp,sp,16
   1b090:	8082                	ret
   1b092:	8526                	mv	a0,s1
   1b094:	2a51                	jal	1b228 <_getpid_r>
   1b096:	8622                	mv	a2,s0
   1b098:	4422                	lw	s0,8(sp)
   1b09a:	40b2                	lw	ra,12(sp)
   1b09c:	85aa                	mv	a1,a0
   1b09e:	8526                	mv	a0,s1
   1b0a0:	4492                	lw	s1,4(sp)
   1b0a2:	0141                	addi	sp,sp,16
   1b0a4:	a2b1                	j	1b1f0 <_kill_r>
   1b0a6:	4422                	lw	s0,8(sp)
   1b0a8:	40b2                	lw	ra,12(sp)
   1b0aa:	47d9                	li	a5,22
   1b0ac:	c09c                	sw	a5,0(s1)
   1b0ae:	4505                	li	a0,1
   1b0b0:	4492                	lw	s1,4(sp)
   1b0b2:	0141                	addi	sp,sp,16
   1b0b4:	8082                	ret
   1b0b6:	47d9                	li	a5,22
   1b0b8:	c09c                	sw	a5,0(s1)
   1b0ba:	557d                	li	a0,-1
   1b0bc:	b7f9                	j	1b08a <raise+0x3a>

0001b0be <signal>:
   1b0be:	1141                	addi	sp,sp,-16
   1b0c0:	c04a                	sw	s2,0(sp)
   1b0c2:	c606                	sw	ra,12(sp)
   1b0c4:	47fd                	li	a5,31
   1b0c6:	f141a903          	lw	s2,-236(gp) # 1f8b4 <_impure_ptr>
   1b0ca:	02a7e463          	bltu	a5,a0,1b0f2 <signal+0x34>
   1b0ce:	c422                	sw	s0,8(sp)
   1b0d0:	842a                	mv	s0,a0
   1b0d2:	11892503          	lw	a0,280(s2)
   1b0d6:	c226                	sw	s1,4(sp)
   1b0d8:	84ae                	mv	s1,a1
   1b0da:	c10d                	beqz	a0,1b0fc <signal+0x3e>
   1b0dc:	040a                	slli	s0,s0,0x2
   1b0de:	008507b3          	add	a5,a0,s0
   1b0e2:	4388                	lw	a0,0(a5)
   1b0e4:	4422                	lw	s0,8(sp)
   1b0e6:	c384                	sw	s1,0(a5)
   1b0e8:	4492                	lw	s1,4(sp)
   1b0ea:	40b2                	lw	ra,12(sp)
   1b0ec:	4902                	lw	s2,0(sp)
   1b0ee:	0141                	addi	sp,sp,16
   1b0f0:	8082                	ret
   1b0f2:	47d9                	li	a5,22
   1b0f4:	00f92023          	sw	a5,0(s2)
   1b0f8:	557d                	li	a0,-1
   1b0fa:	bfc5                	j	1b0ea <signal+0x2c>
   1b0fc:	08000593          	li	a1,128
   1b100:	854a                	mv	a0,s2
   1b102:	e66f90ef          	jal	14768 <_malloc_r>
   1b106:	10a92c23          	sw	a0,280(s2)
   1b10a:	87aa                	mv	a5,a0
   1b10c:	08050713          	addi	a4,a0,128
   1b110:	c519                	beqz	a0,1b11e <signal+0x60>
   1b112:	0007a023          	sw	zero,0(a5)
   1b116:	0791                	addi	a5,a5,4
   1b118:	fef71de3          	bne	a4,a5,1b112 <signal+0x54>
   1b11c:	b7c1                	j	1b0dc <signal+0x1e>
   1b11e:	4422                	lw	s0,8(sp)
   1b120:	4492                	lw	s1,4(sp)
   1b122:	557d                	li	a0,-1
   1b124:	b7d9                	j	1b0ea <signal+0x2c>

0001b126 <_init_signal>:
   1b126:	1141                	addi	sp,sp,-16
   1b128:	c422                	sw	s0,8(sp)
   1b12a:	f141a403          	lw	s0,-236(gp) # 1f8b4 <_impure_ptr>
   1b12e:	c606                	sw	ra,12(sp)
   1b130:	11842783          	lw	a5,280(s0)
   1b134:	c791                	beqz	a5,1b140 <_init_signal+0x1a>
   1b136:	4501                	li	a0,0
   1b138:	40b2                	lw	ra,12(sp)
   1b13a:	4422                	lw	s0,8(sp)
   1b13c:	0141                	addi	sp,sp,16
   1b13e:	8082                	ret
   1b140:	08000593          	li	a1,128
   1b144:	8522                	mv	a0,s0
   1b146:	e22f90ef          	jal	14768 <_malloc_r>
   1b14a:	10a42c23          	sw	a0,280(s0)
   1b14e:	c909                	beqz	a0,1b160 <_init_signal+0x3a>
   1b150:	08050793          	addi	a5,a0,128
   1b154:	00052023          	sw	zero,0(a0)
   1b158:	0511                	addi	a0,a0,4
   1b15a:	fef51de3          	bne	a0,a5,1b154 <_init_signal+0x2e>
   1b15e:	bfe1                	j	1b136 <_init_signal+0x10>
   1b160:	557d                	li	a0,-1
   1b162:	bfd9                	j	1b138 <_init_signal+0x12>

0001b164 <__sigtramp>:
   1b164:	1141                	addi	sp,sp,-16
   1b166:	c226                	sw	s1,4(sp)
   1b168:	c606                	sw	ra,12(sp)
   1b16a:	47fd                	li	a5,31
   1b16c:	f141a483          	lw	s1,-236(gp) # 1f8b4 <_impure_ptr>
   1b170:	06a7ee63          	bltu	a5,a0,1b1ec <__sigtramp+0x88>
   1b174:	1184a783          	lw	a5,280(s1)
   1b178:	c422                	sw	s0,8(sp)
   1b17a:	842a                	mv	s0,a0
   1b17c:	c7a9                	beqz	a5,1b1c6 <__sigtramp+0x62>
   1b17e:	00241713          	slli	a4,s0,0x2
   1b182:	97ba                	add	a5,a5,a4
   1b184:	4398                	lw	a4,0(a5)
   1b186:	c30d                	beqz	a4,1b1a8 <__sigtramp+0x44>
   1b188:	56fd                	li	a3,-1
   1b18a:	02d70b63          	beq	a4,a3,1b1c0 <__sigtramp+0x5c>
   1b18e:	4685                	li	a3,1
   1b190:	02d70263          	beq	a4,a3,1b1b4 <__sigtramp+0x50>
   1b194:	8522                	mv	a0,s0
   1b196:	0007a023          	sw	zero,0(a5)
   1b19a:	9702                	jalr	a4
   1b19c:	4422                	lw	s0,8(sp)
   1b19e:	4501                	li	a0,0
   1b1a0:	40b2                	lw	ra,12(sp)
   1b1a2:	4492                	lw	s1,4(sp)
   1b1a4:	0141                	addi	sp,sp,16
   1b1a6:	8082                	ret
   1b1a8:	4422                	lw	s0,8(sp)
   1b1aa:	40b2                	lw	ra,12(sp)
   1b1ac:	4492                	lw	s1,4(sp)
   1b1ae:	4505                	li	a0,1
   1b1b0:	0141                	addi	sp,sp,16
   1b1b2:	8082                	ret
   1b1b4:	4422                	lw	s0,8(sp)
   1b1b6:	40b2                	lw	ra,12(sp)
   1b1b8:	4492                	lw	s1,4(sp)
   1b1ba:	450d                	li	a0,3
   1b1bc:	0141                	addi	sp,sp,16
   1b1be:	8082                	ret
   1b1c0:	4422                	lw	s0,8(sp)
   1b1c2:	4509                	li	a0,2
   1b1c4:	bff1                	j	1b1a0 <__sigtramp+0x3c>
   1b1c6:	08000593          	li	a1,128
   1b1ca:	8526                	mv	a0,s1
   1b1cc:	d9cf90ef          	jal	14768 <_malloc_r>
   1b1d0:	10a4ac23          	sw	a0,280(s1)
   1b1d4:	87aa                	mv	a5,a0
   1b1d6:	c911                	beqz	a0,1b1ea <__sigtramp+0x86>
   1b1d8:	872a                	mv	a4,a0
   1b1da:	08050693          	addi	a3,a0,128
   1b1de:	00072023          	sw	zero,0(a4)
   1b1e2:	0711                	addi	a4,a4,4
   1b1e4:	fee69de3          	bne	a3,a4,1b1de <__sigtramp+0x7a>
   1b1e8:	bf59                	j	1b17e <__sigtramp+0x1a>
   1b1ea:	4422                	lw	s0,8(sp)
   1b1ec:	557d                	li	a0,-1
   1b1ee:	bf4d                	j	1b1a0 <__sigtramp+0x3c>

0001b1f0 <_kill_r>:
   1b1f0:	1141                	addi	sp,sp,-16
   1b1f2:	872e                	mv	a4,a1
   1b1f4:	c422                	sw	s0,8(sp)
   1b1f6:	c226                	sw	s1,4(sp)
   1b1f8:	842a                	mv	s0,a0
   1b1fa:	85b2                	mv	a1,a2
   1b1fc:	853a                	mv	a0,a4
   1b1fe:	c606                	sw	ra,12(sp)
   1b200:	f201a223          	sw	zero,-220(gp) # 1f8c4 <errno>
   1b204:	28d9                	jal	1b2da <_kill>
   1b206:	57fd                	li	a5,-1
   1b208:	00f50763          	beq	a0,a5,1b216 <_kill_r+0x26>
   1b20c:	40b2                	lw	ra,12(sp)
   1b20e:	4422                	lw	s0,8(sp)
   1b210:	4492                	lw	s1,4(sp)
   1b212:	0141                	addi	sp,sp,16
   1b214:	8082                	ret
   1b216:	f241a783          	lw	a5,-220(gp) # 1f8c4 <errno>
   1b21a:	dbed                	beqz	a5,1b20c <_kill_r+0x1c>
   1b21c:	40b2                	lw	ra,12(sp)
   1b21e:	c01c                	sw	a5,0(s0)
   1b220:	4422                	lw	s0,8(sp)
   1b222:	4492                	lw	s1,4(sp)
   1b224:	0141                	addi	sp,sp,16
   1b226:	8082                	ret

0001b228 <_getpid_r>:
   1b228:	a069                	j	1b2b2 <_getpid>

0001b22a <_close>:
   1b22a:	1141                	addi	sp,sp,-16
   1b22c:	c606                	sw	ra,12(sp)
   1b22e:	c422                	sw	s0,8(sp)
   1b230:	03900893          	li	a7,57
   1b234:	00000073          	ecall
   1b238:	842a                	mv	s0,a0
   1b23a:	00054763          	bltz	a0,1b248 <_close+0x1e>
   1b23e:	40b2                	lw	ra,12(sp)
   1b240:	8522                	mv	a0,s0
   1b242:	4422                	lw	s0,8(sp)
   1b244:	0141                	addi	sp,sp,16
   1b246:	8082                	ret
   1b248:	40800433          	neg	s0,s0
   1b24c:	c63ff0ef          	jal	1aeae <__errno>
   1b250:	c100                	sw	s0,0(a0)
   1b252:	547d                	li	s0,-1
   1b254:	b7ed                	j	1b23e <_close+0x14>

0001b256 <_exit>:
   1b256:	05d00893          	li	a7,93
   1b25a:	00000073          	ecall
   1b25e:	00054363          	bltz	a0,1b264 <_exit+0xe>
   1b262:	a001                	j	1b262 <_exit+0xc>
   1b264:	1141                	addi	sp,sp,-16
   1b266:	c422                	sw	s0,8(sp)
   1b268:	842a                	mv	s0,a0
   1b26a:	c606                	sw	ra,12(sp)
   1b26c:	40800433          	neg	s0,s0
   1b270:	c3fff0ef          	jal	1aeae <__errno>
   1b274:	c100                	sw	s0,0(a0)
   1b276:	a001                	j	1b276 <_exit+0x20>

0001b278 <_fstat>:
   1b278:	7175                	addi	sp,sp,-144
   1b27a:	c326                	sw	s1,132(sp)
   1b27c:	c706                	sw	ra,140(sp)
   1b27e:	84ae                	mv	s1,a1
   1b280:	c522                	sw	s0,136(sp)
   1b282:	05000893          	li	a7,80
   1b286:	858a                	mv	a1,sp
   1b288:	00000073          	ecall
   1b28c:	842a                	mv	s0,a0
   1b28e:	00054b63          	bltz	a0,1b2a4 <_fstat+0x2c>
   1b292:	8526                	mv	a0,s1
   1b294:	858a                	mv	a1,sp
   1b296:	2a05                	jal	1b3c6 <_conv_stat>
   1b298:	40ba                	lw	ra,140(sp)
   1b29a:	8522                	mv	a0,s0
   1b29c:	442a                	lw	s0,136(sp)
   1b29e:	449a                	lw	s1,132(sp)
   1b2a0:	6149                	addi	sp,sp,144
   1b2a2:	8082                	ret
   1b2a4:	40800433          	neg	s0,s0
   1b2a8:	c07ff0ef          	jal	1aeae <__errno>
   1b2ac:	c100                	sw	s0,0(a0)
   1b2ae:	547d                	li	s0,-1
   1b2b0:	b7cd                	j	1b292 <_fstat+0x1a>

0001b2b2 <_getpid>:
   1b2b2:	4505                	li	a0,1
   1b2b4:	8082                	ret

0001b2b6 <_isatty>:
   1b2b6:	7159                	addi	sp,sp,-112
   1b2b8:	002c                	addi	a1,sp,8
   1b2ba:	d686                	sw	ra,108(sp)
   1b2bc:	fbdff0ef          	jal	1b278 <_fstat>
   1b2c0:	57fd                	li	a5,-1
   1b2c2:	00f50863          	beq	a0,a5,1b2d2 <_isatty+0x1c>
   1b2c6:	4532                	lw	a0,12(sp)
   1b2c8:	50b6                	lw	ra,108(sp)
   1b2ca:	8135                	srli	a0,a0,0xd
   1b2cc:	8905                	andi	a0,a0,1
   1b2ce:	6165                	addi	sp,sp,112
   1b2d0:	8082                	ret
   1b2d2:	50b6                	lw	ra,108(sp)
   1b2d4:	4501                	li	a0,0
   1b2d6:	6165                	addi	sp,sp,112
   1b2d8:	8082                	ret

0001b2da <_kill>:
   1b2da:	1141                	addi	sp,sp,-16
   1b2dc:	c606                	sw	ra,12(sp)
   1b2de:	bd1ff0ef          	jal	1aeae <__errno>
   1b2e2:	40b2                	lw	ra,12(sp)
   1b2e4:	47d9                	li	a5,22
   1b2e6:	c11c                	sw	a5,0(a0)
   1b2e8:	557d                	li	a0,-1
   1b2ea:	0141                	addi	sp,sp,16
   1b2ec:	8082                	ret

0001b2ee <_lseek>:
   1b2ee:	1141                	addi	sp,sp,-16
   1b2f0:	c606                	sw	ra,12(sp)
   1b2f2:	c422                	sw	s0,8(sp)
   1b2f4:	03e00893          	li	a7,62
   1b2f8:	00000073          	ecall
   1b2fc:	842a                	mv	s0,a0
   1b2fe:	00054763          	bltz	a0,1b30c <_lseek+0x1e>
   1b302:	40b2                	lw	ra,12(sp)
   1b304:	8522                	mv	a0,s0
   1b306:	4422                	lw	s0,8(sp)
   1b308:	0141                	addi	sp,sp,16
   1b30a:	8082                	ret
   1b30c:	40800433          	neg	s0,s0
   1b310:	b9fff0ef          	jal	1aeae <__errno>
   1b314:	c100                	sw	s0,0(a0)
   1b316:	547d                	li	s0,-1
   1b318:	b7ed                	j	1b302 <_lseek+0x14>

0001b31a <_read>:
   1b31a:	1141                	addi	sp,sp,-16
   1b31c:	c606                	sw	ra,12(sp)
   1b31e:	c422                	sw	s0,8(sp)
   1b320:	03f00893          	li	a7,63
   1b324:	00000073          	ecall
   1b328:	842a                	mv	s0,a0
   1b32a:	00054763          	bltz	a0,1b338 <_read+0x1e>
   1b32e:	40b2                	lw	ra,12(sp)
   1b330:	8522                	mv	a0,s0
   1b332:	4422                	lw	s0,8(sp)
   1b334:	0141                	addi	sp,sp,16
   1b336:	8082                	ret
   1b338:	40800433          	neg	s0,s0
   1b33c:	b73ff0ef          	jal	1aeae <__errno>
   1b340:	c100                	sw	s0,0(a0)
   1b342:	547d                	li	s0,-1
   1b344:	b7ed                	j	1b32e <_read+0x14>

0001b346 <_sbrk>:
   1b346:	f3c1a703          	lw	a4,-196(gp) # 1f8dc <heap_end.0>
   1b34a:	1141                	addi	sp,sp,-16
   1b34c:	c606                	sw	ra,12(sp)
   1b34e:	87aa                	mv	a5,a0
   1b350:	ef01                	bnez	a4,1b368 <_sbrk+0x22>
   1b352:	0d600893          	li	a7,214
   1b356:	4501                	li	a0,0
   1b358:	00000073          	ecall
   1b35c:	567d                	li	a2,-1
   1b35e:	872a                	mv	a4,a0
   1b360:	02c50563          	beq	a0,a2,1b38a <_sbrk+0x44>
   1b364:	f2a1ae23          	sw	a0,-196(gp) # 1f8dc <heap_end.0>
   1b368:	0d600893          	li	a7,214
   1b36c:	00e78533          	add	a0,a5,a4
   1b370:	00000073          	ecall
   1b374:	f3c1a703          	lw	a4,-196(gp) # 1f8dc <heap_end.0>
   1b378:	97ba                	add	a5,a5,a4
   1b37a:	00f51863          	bne	a0,a5,1b38a <_sbrk+0x44>
   1b37e:	40b2                	lw	ra,12(sp)
   1b380:	f2a1ae23          	sw	a0,-196(gp) # 1f8dc <heap_end.0>
   1b384:	853a                	mv	a0,a4
   1b386:	0141                	addi	sp,sp,16
   1b388:	8082                	ret
   1b38a:	b25ff0ef          	jal	1aeae <__errno>
   1b38e:	40b2                	lw	ra,12(sp)
   1b390:	47b1                	li	a5,12
   1b392:	c11c                	sw	a5,0(a0)
   1b394:	557d                	li	a0,-1
   1b396:	0141                	addi	sp,sp,16
   1b398:	8082                	ret

0001b39a <_write>:
   1b39a:	1141                	addi	sp,sp,-16
   1b39c:	c606                	sw	ra,12(sp)
   1b39e:	c422                	sw	s0,8(sp)
   1b3a0:	04000893          	li	a7,64
   1b3a4:	00000073          	ecall
   1b3a8:	842a                	mv	s0,a0
   1b3aa:	00054763          	bltz	a0,1b3b8 <_write+0x1e>
   1b3ae:	40b2                	lw	ra,12(sp)
   1b3b0:	8522                	mv	a0,s0
   1b3b2:	4422                	lw	s0,8(sp)
   1b3b4:	0141                	addi	sp,sp,16
   1b3b6:	8082                	ret
   1b3b8:	40800433          	neg	s0,s0
   1b3bc:	af3ff0ef          	jal	1aeae <__errno>
   1b3c0:	c100                	sw	s0,0(a0)
   1b3c2:	547d                	li	s0,-1
   1b3c4:	b7ed                	j	1b3ae <_write+0x14>

0001b3c6 <_conv_stat>:
   1b3c6:	0185d703          	lhu	a4,24(a1)
   1b3ca:	0145d783          	lhu	a5,20(a1)
   1b3ce:	1141                	addi	sp,sp,-16
   1b3d0:	01c5a283          	lw	t0,28(a1)
   1b3d4:	0205af83          	lw	t6,32(a1)
   1b3d8:	0305af03          	lw	t5,48(a1)
   1b3dc:	0405ae83          	lw	t4,64(a1)
   1b3e0:	0385ae03          	lw	t3,56(a1)
   1b3e4:	0485a303          	lw	t1,72(a1)
   1b3e8:	04c5a383          	lw	t2,76(a1)
   1b3ec:	0585a803          	lw	a6,88(a1)
   1b3f0:	05c5a883          	lw	a7,92(a1)
   1b3f4:	c622                	sw	s0,12(sp)
   1b3f6:	c426                	sw	s1,8(sp)
   1b3f8:	4980                	lw	s0,16(a1)
   1b3fa:	4584                	lw	s1,8(a1)
   1b3fc:	c24a                	sw	s2,4(sp)
   1b3fe:	0005a903          	lw	s2,0(a1)
   1b402:	55b0                	lw	a2,104(a1)
   1b404:	0742                	slli	a4,a4,0x10
   1b406:	8fd9                	or	a5,a5,a4
   1b408:	55f4                	lw	a3,108(a1)
   1b40a:	01251023          	sh	s2,0(a0)
   1b40e:	00951123          	sh	s1,2(a0)
   1b412:	c140                	sw	s0,4(a0)
   1b414:	c51c                	sw	a5,8(a0)
   1b416:	00551623          	sh	t0,12(a0)
   1b41a:	01f51723          	sh	t6,14(a0)
   1b41e:	01e52823          	sw	t5,16(a0)
   1b422:	05d52623          	sw	t4,76(a0)
   1b426:	05c52423          	sw	t3,72(a0)
   1b42a:	00652c23          	sw	t1,24(a0)
   1b42e:	00752e23          	sw	t2,28(a0)
   1b432:	03052423          	sw	a6,40(a0)
   1b436:	03152623          	sw	a7,44(a0)
   1b43a:	dd10                	sw	a2,56(a0)
   1b43c:	4432                	lw	s0,12(sp)
   1b43e:	dd54                	sw	a3,60(a0)
   1b440:	44a2                	lw	s1,8(sp)
   1b442:	4912                	lw	s2,4(sp)
   1b444:	0141                	addi	sp,sp,16
   1b446:	8082                	ret

0001b448 <__eqtf2>:
   1b448:	411c                	lw	a5,0(a0)
   1b44a:	00452e03          	lw	t3,4(a0)
   1b44e:	00852e83          	lw	t4,8(a0)
   1b452:	4554                	lw	a3,12(a0)
   1b454:	4198                	lw	a4,0(a1)
   1b456:	0045af83          	lw	t6,4(a1)
   1b45a:	0085af03          	lw	t5,8(a1)
   1b45e:	00c5a883          	lw	a7,12(a1)
   1b462:	1141                	addi	sp,sp,-16
   1b464:	00202673          	frrm	a2
   1b468:	6521                	lui	a0,0x8
   1b46a:	0106d613          	srli	a2,a3,0x10
   1b46e:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1b470:	01069313          	slli	t1,a3,0x10
   1b474:	01089593          	slli	a1,a7,0x10
   1b478:	01f6d813          	srli	a6,a3,0x1f
   1b47c:	8e69                	and	a2,a2,a0
   1b47e:	0108d693          	srli	a3,a7,0x10
   1b482:	01035313          	srli	t1,t1,0x10
   1b486:	81c1                	srli	a1,a1,0x10
   1b488:	8ee9                	and	a3,a3,a0
   1b48a:	01f8d893          	srli	a7,a7,0x1f
   1b48e:	00a61c63          	bne	a2,a0,1b4a6 <__eqtf2+0x5e>
   1b492:	01c7e533          	or	a0,a5,t3
   1b496:	01d56533          	or	a0,a0,t4
   1b49a:	00656533          	or	a0,a0,t1
   1b49e:	e51d                	bnez	a0,1b4cc <__eqtf2+0x84>
   1b4a0:	04c69b63          	bne	a3,a2,1b4f6 <__eqtf2+0xae>
   1b4a4:	a019                	j	1b4aa <__eqtf2+0x62>
   1b4a6:	04a69a63          	bne	a3,a0,1b4fa <__eqtf2+0xb2>
   1b4aa:	01f76533          	or	a0,a4,t6
   1b4ae:	01e56533          	or	a0,a0,t5
   1b4b2:	8d4d                	or	a0,a0,a1
   1b4b4:	c139                	beqz	a0,1b4fa <__eqtf2+0xb2>
   1b4b6:	6521                	lui	a0,0x8
   1b4b8:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1b4ba:	02a61a63          	bne	a2,a0,1b4ee <__eqtf2+0xa6>
   1b4be:	01c7e7b3          	or	a5,a5,t3
   1b4c2:	01d7e7b3          	or	a5,a5,t4
   1b4c6:	0067e7b3          	or	a5,a5,t1
   1b4ca:	cb99                	beqz	a5,1b4e0 <__eqtf2+0x98>
   1b4cc:	0342                	slli	t1,t1,0x10
   1b4ce:	41035313          	srai	t1,t1,0x10
   1b4d2:	04035c63          	bgez	t1,1b52a <__eqtf2+0xe2>
   1b4d6:	67a1                	lui	a5,0x8
   1b4d8:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1b4da:	4505                	li	a0,1
   1b4dc:	04f69563          	bne	a3,a5,1b526 <__eqtf2+0xde>
   1b4e0:	01f76733          	or	a4,a4,t6
   1b4e4:	01e76733          	or	a4,a4,t5
   1b4e8:	8f4d                	or	a4,a4,a1
   1b4ea:	4505                	li	a0,1
   1b4ec:	cf0d                	beqz	a4,1b526 <__eqtf2+0xde>
   1b4ee:	05c2                	slli	a1,a1,0x10
   1b4f0:	85c1                	srai	a1,a1,0x10
   1b4f2:	0205dc63          	bgez	a1,1b52a <__eqtf2+0xe2>
   1b4f6:	4505                	li	a0,1
   1b4f8:	a03d                	j	1b526 <__eqtf2+0xde>
   1b4fa:	4505                	li	a0,1
   1b4fc:	02c69563          	bne	a3,a2,1b526 <__eqtf2+0xde>
   1b500:	02e79363          	bne	a5,a4,1b526 <__eqtf2+0xde>
   1b504:	03fe1163          	bne	t3,t6,1b526 <__eqtf2+0xde>
   1b508:	01ee9f63          	bne	t4,t5,1b526 <__eqtf2+0xde>
   1b50c:	00b31d63          	bne	t1,a1,1b526 <__eqtf2+0xde>
   1b510:	03180063          	beq	a6,a7,1b530 <__eqtf2+0xe8>
   1b514:	ea89                	bnez	a3,1b526 <__eqtf2+0xde>
   1b516:	01c7e533          	or	a0,a5,t3
   1b51a:	01d56533          	or	a0,a0,t4
   1b51e:	00656533          	or	a0,a0,t1
   1b522:	00a03533          	snez	a0,a0
   1b526:	0141                	addi	sp,sp,16
   1b528:	8082                	ret
   1b52a:	00186073          	csrsi	fflags,16
   1b52e:	b7e1                	j	1b4f6 <__eqtf2+0xae>
   1b530:	4501                	li	a0,0
   1b532:	bfd5                	j	1b526 <__eqtf2+0xde>

0001b534 <__getf2>:
   1b534:	00052883          	lw	a7,0(a0)
   1b538:	00452303          	lw	t1,4(a0)
   1b53c:	00852e03          	lw	t3,8(a0)
   1b540:	455c                	lw	a5,12(a0)
   1b542:	0005ae83          	lw	t4,0(a1)
   1b546:	0045af03          	lw	t5,4(a1)
   1b54a:	0085af83          	lw	t6,8(a1)
   1b54e:	45d4                	lw	a3,12(a1)
   1b550:	1141                	addi	sp,sp,-16
   1b552:	00202773          	frrm	a4
   1b556:	6721                	lui	a4,0x8
   1b558:	0107d613          	srli	a2,a5,0x10
   1b55c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b55e:	01079813          	slli	a6,a5,0x10
   1b562:	01069293          	slli	t0,a3,0x10
   1b566:	0106d513          	srli	a0,a3,0x10
   1b56a:	8e79                	and	a2,a2,a4
   1b56c:	01085813          	srli	a6,a6,0x10
   1b570:	83fd                	srli	a5,a5,0x1f
   1b572:	0102d293          	srli	t0,t0,0x10
   1b576:	8d79                	and	a0,a0,a4
   1b578:	82fd                	srli	a3,a3,0x1f
   1b57a:	00e61963          	bne	a2,a4,1b58c <__getf2+0x58>
   1b57e:	01136733          	or	a4,t1,a7
   1b582:	01c76733          	or	a4,a4,t3
   1b586:	01076733          	or	a4,a4,a6
   1b58a:	ef35                	bnez	a4,1b606 <__getf2+0xd2>
   1b58c:	6721                	lui	a4,0x8
   1b58e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b590:	00e51963          	bne	a0,a4,1b5a2 <__getf2+0x6e>
   1b594:	01eee733          	or	a4,t4,t5
   1b598:	01f76733          	or	a4,a4,t6
   1b59c:	00576733          	or	a4,a4,t0
   1b5a0:	e33d                	bnez	a4,1b606 <__getf2+0xd2>
   1b5a2:	4701                	li	a4,0
   1b5a4:	ea09                	bnez	a2,1b5b6 <__getf2+0x82>
   1b5a6:	01136733          	or	a4,t1,a7
   1b5aa:	01c76733          	or	a4,a4,t3
   1b5ae:	01076733          	or	a4,a4,a6
   1b5b2:	00173713          	seqz	a4,a4
   1b5b6:	ed21                	bnez	a0,1b60e <__getf2+0xda>
   1b5b8:	01eee5b3          	or	a1,t4,t5
   1b5bc:	01f5e5b3          	or	a1,a1,t6
   1b5c0:	0055e5b3          	or	a1,a1,t0
   1b5c4:	c711                	beqz	a4,1b5d0 <__getf2+0x9c>
   1b5c6:	c981                	beqz	a1,1b5d6 <__getf2+0xa2>
   1b5c8:	4505                	li	a0,1
   1b5ca:	e691                	bnez	a3,1b5d6 <__getf2+0xa2>
   1b5cc:	557d                	li	a0,-1
   1b5ce:	a021                	j	1b5d6 <__getf2+0xa2>
   1b5d0:	e1a1                	bnez	a1,1b610 <__getf2+0xdc>
   1b5d2:	557d                	li	a0,-1
   1b5d4:	c7a1                	beqz	a5,1b61c <__getf2+0xe8>
   1b5d6:	0141                	addi	sp,sp,16
   1b5d8:	8082                	ret
   1b5da:	fea647e3          	blt	a2,a0,1b5c8 <__getf2+0x94>
   1b5de:	ff02eae3          	bltu	t0,a6,1b5d2 <__getf2+0x9e>
   1b5e2:	00581f63          	bne	a6,t0,1b600 <__getf2+0xcc>
   1b5e6:	ffcfe6e3          	bltu	t6,t3,1b5d2 <__getf2+0x9e>
   1b5ea:	01fe1b63          	bne	t3,t6,1b600 <__getf2+0xcc>
   1b5ee:	fe6f62e3          	bltu	t5,t1,1b5d2 <__getf2+0x9e>
   1b5f2:	01e31763          	bne	t1,t5,1b600 <__getf2+0xcc>
   1b5f6:	fd1eeee3          	bltu	t4,a7,1b5d2 <__getf2+0x9e>
   1b5fa:	4501                	li	a0,0
   1b5fc:	fdd8fde3          	bgeu	a7,t4,1b5d6 <__getf2+0xa2>
   1b600:	4505                	li	a0,1
   1b602:	fbf1                	bnez	a5,1b5d6 <__getf2+0xa2>
   1b604:	b7e1                	j	1b5cc <__getf2+0x98>
   1b606:	00186073          	csrsi	fflags,16
   1b60a:	5579                	li	a0,-2
   1b60c:	b7e9                	j	1b5d6 <__getf2+0xa2>
   1b60e:	ff4d                	bnez	a4,1b5c8 <__getf2+0x94>
   1b610:	fcf691e3          	bne	a3,a5,1b5d2 <__getf2+0x9e>
   1b614:	fcc553e3          	bge	a0,a2,1b5da <__getf2+0xa6>
   1b618:	557d                	li	a0,-1
   1b61a:	fed5                	bnez	a3,1b5d6 <__getf2+0xa2>
   1b61c:	4505                	li	a0,1
   1b61e:	bf65                	j	1b5d6 <__getf2+0xa2>

0001b620 <__letf2>:
   1b620:	00052883          	lw	a7,0(a0)
   1b624:	00452303          	lw	t1,4(a0)
   1b628:	00852e03          	lw	t3,8(a0)
   1b62c:	455c                	lw	a5,12(a0)
   1b62e:	0005ae83          	lw	t4,0(a1)
   1b632:	0045af03          	lw	t5,4(a1)
   1b636:	0085af83          	lw	t6,8(a1)
   1b63a:	45d4                	lw	a3,12(a1)
   1b63c:	1141                	addi	sp,sp,-16
   1b63e:	00202773          	frrm	a4
   1b642:	6721                	lui	a4,0x8
   1b644:	0107d613          	srli	a2,a5,0x10
   1b648:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b64a:	01079813          	slli	a6,a5,0x10
   1b64e:	01069293          	slli	t0,a3,0x10
   1b652:	0106d513          	srli	a0,a3,0x10
   1b656:	8e79                	and	a2,a2,a4
   1b658:	01085813          	srli	a6,a6,0x10
   1b65c:	83fd                	srli	a5,a5,0x1f
   1b65e:	0102d293          	srli	t0,t0,0x10
   1b662:	8d79                	and	a0,a0,a4
   1b664:	82fd                	srli	a3,a3,0x1f
   1b666:	00e61963          	bne	a2,a4,1b678 <__letf2+0x58>
   1b66a:	01136733          	or	a4,t1,a7
   1b66e:	01c76733          	or	a4,a4,t3
   1b672:	01076733          	or	a4,a4,a6
   1b676:	ef35                	bnez	a4,1b6f2 <__letf2+0xd2>
   1b678:	6721                	lui	a4,0x8
   1b67a:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b67c:	00e51963          	bne	a0,a4,1b68e <__letf2+0x6e>
   1b680:	01eee733          	or	a4,t4,t5
   1b684:	01f76733          	or	a4,a4,t6
   1b688:	00576733          	or	a4,a4,t0
   1b68c:	e33d                	bnez	a4,1b6f2 <__letf2+0xd2>
   1b68e:	4701                	li	a4,0
   1b690:	ea09                	bnez	a2,1b6a2 <__letf2+0x82>
   1b692:	01136733          	or	a4,t1,a7
   1b696:	01c76733          	or	a4,a4,t3
   1b69a:	01076733          	or	a4,a4,a6
   1b69e:	00173713          	seqz	a4,a4
   1b6a2:	ed21                	bnez	a0,1b6fa <__letf2+0xda>
   1b6a4:	01eee5b3          	or	a1,t4,t5
   1b6a8:	01f5e5b3          	or	a1,a1,t6
   1b6ac:	0055e5b3          	or	a1,a1,t0
   1b6b0:	c711                	beqz	a4,1b6bc <__letf2+0x9c>
   1b6b2:	c981                	beqz	a1,1b6c2 <__letf2+0xa2>
   1b6b4:	4505                	li	a0,1
   1b6b6:	e691                	bnez	a3,1b6c2 <__letf2+0xa2>
   1b6b8:	557d                	li	a0,-1
   1b6ba:	a021                	j	1b6c2 <__letf2+0xa2>
   1b6bc:	e1a1                	bnez	a1,1b6fc <__letf2+0xdc>
   1b6be:	557d                	li	a0,-1
   1b6c0:	c7a1                	beqz	a5,1b708 <__letf2+0xe8>
   1b6c2:	0141                	addi	sp,sp,16
   1b6c4:	8082                	ret
   1b6c6:	fea647e3          	blt	a2,a0,1b6b4 <__letf2+0x94>
   1b6ca:	ff02eae3          	bltu	t0,a6,1b6be <__letf2+0x9e>
   1b6ce:	00581f63          	bne	a6,t0,1b6ec <__letf2+0xcc>
   1b6d2:	ffcfe6e3          	bltu	t6,t3,1b6be <__letf2+0x9e>
   1b6d6:	01fe1b63          	bne	t3,t6,1b6ec <__letf2+0xcc>
   1b6da:	fe6f62e3          	bltu	t5,t1,1b6be <__letf2+0x9e>
   1b6de:	01e31763          	bne	t1,t5,1b6ec <__letf2+0xcc>
   1b6e2:	fd1eeee3          	bltu	t4,a7,1b6be <__letf2+0x9e>
   1b6e6:	4501                	li	a0,0
   1b6e8:	fdd8fde3          	bgeu	a7,t4,1b6c2 <__letf2+0xa2>
   1b6ec:	4505                	li	a0,1
   1b6ee:	fbf1                	bnez	a5,1b6c2 <__letf2+0xa2>
   1b6f0:	b7e1                	j	1b6b8 <__letf2+0x98>
   1b6f2:	00186073          	csrsi	fflags,16
   1b6f6:	4509                	li	a0,2
   1b6f8:	b7e9                	j	1b6c2 <__letf2+0xa2>
   1b6fa:	ff4d                	bnez	a4,1b6b4 <__letf2+0x94>
   1b6fc:	fcf691e3          	bne	a3,a5,1b6be <__letf2+0x9e>
   1b700:	fcc553e3          	bge	a0,a2,1b6c6 <__letf2+0xa6>
   1b704:	557d                	li	a0,-1
   1b706:	fed5                	bnez	a3,1b6c2 <__letf2+0xa2>
   1b708:	4505                	li	a0,1
   1b70a:	bf65                	j	1b6c2 <__letf2+0xa2>

0001b70c <__multf3>:
   1b70c:	7131                	addi	sp,sp,-192
   1b70e:	d552                	sw	s4,168(sp)
   1b710:	d356                	sw	s5,164(sp)
   1b712:	d15a                	sw	s6,160(sp)
   1b714:	cf5e                	sw	s7,156(sp)
   1b716:	c62a                	sw	a0,12(sp)
   1b718:	419c                	lw	a5,0(a1)
   1b71a:	41c8                	lw	a0,4(a1)
   1b71c:	4594                	lw	a3,8(a1)
   1b71e:	45d8                	lw	a4,12(a1)
   1b720:	00062a83          	lw	s5,0(a2)
   1b724:	00462b83          	lw	s7,4(a2)
   1b728:	00862b03          	lw	s6,8(a2)
   1b72c:	00c62a03          	lw	s4,12(a2)
   1b730:	df06                	sw	ra,188(sp)
   1b732:	dd22                	sw	s0,184(sp)
   1b734:	db26                	sw	s1,180(sp)
   1b736:	d94a                	sw	s2,176(sp)
   1b738:	d74e                	sw	s3,172(sp)
   1b73a:	cd62                	sw	s8,152(sp)
   1b73c:	cb66                	sw	s9,148(sp)
   1b73e:	c96a                	sw	s10,144(sp)
   1b740:	c76e                	sw	s11,140(sp)
   1b742:	002024f3          	frrm	s1
   1b746:	6621                	lui	a2,0x8
   1b748:	01071413          	slli	s0,a4,0x10
   1b74c:	8041                	srli	s0,s0,0x10
   1b74e:	01075913          	srli	s2,a4,0x10
   1b752:	167d                	addi	a2,a2,-1 # 7fff <exit-0x8095>
   1b754:	d0be                	sw	a5,96(sp)
   1b756:	d2aa                	sw	a0,100(sp)
   1b758:	d4b6                	sw	a3,104(sp)
   1b75a:	d6ba                	sw	a4,108(sp)
   1b75c:	d83e                	sw	a5,48(sp)
   1b75e:	da2a                	sw	a0,52(sp)
   1b760:	dc36                	sw	a3,56(sp)
   1b762:	de22                	sw	s0,60(sp)
   1b764:	00c97933          	and	s2,s2,a2
   1b768:	01f75993          	srli	s3,a4,0x1f
   1b76c:	02090a63          	beqz	s2,1b7a0 <__multf3+0x94>
   1b770:	10c90d63          	beq	s2,a2,1b88a <__multf3+0x17e>
   1b774:	6741                	lui	a4,0x10
   1b776:	8c59                	or	s0,s0,a4
   1b778:	de22                	sw	s0,60(sp)
   1b77a:	1818                	addi	a4,sp,48
   1b77c:	104c                	addi	a1,sp,36
   1b77e:	4754                	lw	a3,12(a4)
   1b780:	4710                	lw	a2,8(a4)
   1b782:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   1b784:	068e                	slli	a3,a3,0x3
   1b786:	8275                	srli	a2,a2,0x1d
   1b788:	8ed1                	or	a3,a3,a2
   1b78a:	cb14                	sw	a3,16(a4)
   1b78c:	fee599e3          	bne	a1,a4,1b77e <__multf3+0x72>
   1b790:	078e                	slli	a5,a5,0x3
   1b792:	d83e                	sw	a5,48(sp)
   1b794:	77f1                	lui	a5,0xffffc
   1b796:	0785                	addi	a5,a5,1 # ffffc001 <__BSS_END__+0xfffdc415>
   1b798:	993e                	add	s2,s2,a5
   1b79a:	4c01                	li	s8,0
   1b79c:	4401                	li	s0,0
   1b79e:	a211                	j	1b8a2 <__multf3+0x196>
   1b7a0:	00a7e733          	or	a4,a5,a0
   1b7a4:	8f55                	or	a4,a4,a3
   1b7a6:	8f41                	or	a4,a4,s0
   1b7a8:	70070d63          	beqz	a4,1bec2 <__multf3+0x7b6>
   1b7ac:	cc2d                	beqz	s0,1b826 <__multf3+0x11a>
   1b7ae:	8522                	mv	a0,s0
   1b7b0:	108020ef          	jal	1d8b8 <__clzsi2>
   1b7b4:	ff450693          	addi	a3,a0,-12
   1b7b8:	4056d793          	srai	a5,a3,0x5
   1b7bc:	8afd                	andi	a3,a3,31
   1b7be:	c6d9                	beqz	a3,1b84c <__multf3+0x140>
   1b7c0:	5671                	li	a2,-4
   1b7c2:	02c78633          	mul	a2,a5,a2
   1b7c6:	02000813          	li	a6,32
   1b7ca:	03010313          	addi	t1,sp,48
   1b7ce:	40d80833          	sub	a6,a6,a3
   1b7d2:	00c60713          	addi	a4,a2,12
   1b7d6:	971a                	add	a4,a4,t1
   1b7d8:	40c00633          	neg	a2,a2
   1b7dc:	08e31863          	bne	t1,a4,1b86c <__multf3+0x160>
   1b7e0:	fff78713          	addi	a4,a5,-1
   1b7e4:	078a                	slli	a5,a5,0x2
   1b7e6:	1810                	addi	a2,sp,48
   1b7e8:	05078793          	addi	a5,a5,80
   1b7ec:	97b2                	add	a5,a5,a2
   1b7ee:	5642                	lw	a2,48(sp)
   1b7f0:	00d616b3          	sll	a3,a2,a3
   1b7f4:	fad7a823          	sw	a3,-80(a5)
   1b7f8:	00170793          	addi	a5,a4,1
   1b7fc:	078a                	slli	a5,a5,0x2
   1b7fe:	46a1                	li	a3,8
   1b800:	1818                	addi	a4,sp,48
   1b802:	00d7e863          	bltu	a5,a3,1b812 <__multf3+0x106>
   1b806:	00072023          	sw	zero,0(a4)
   1b80a:	00072223          	sw	zero,4(a4)
   1b80e:	17e1                	addi	a5,a5,-8
   1b810:	1838                	addi	a4,sp,56
   1b812:	4691                	li	a3,4
   1b814:	00d7e463          	bltu	a5,a3,1b81c <__multf3+0x110>
   1b818:	00072023          	sw	zero,0(a4)
   1b81c:	7971                	lui	s2,0xffffc
   1b81e:	0945                	addi	s2,s2,17 # ffffc011 <__BSS_END__+0xfffdc425>
   1b820:	40a90933          	sub	s2,s2,a0
   1b824:	bf9d                	j	1b79a <__multf3+0x8e>
   1b826:	c699                	beqz	a3,1b834 <__multf3+0x128>
   1b828:	8536                	mv	a0,a3
   1b82a:	08e020ef          	jal	1d8b8 <__clzsi2>
   1b82e:	02050513          	addi	a0,a0,32
   1b832:	b749                	j	1b7b4 <__multf3+0xa8>
   1b834:	c511                	beqz	a0,1b840 <__multf3+0x134>
   1b836:	082020ef          	jal	1d8b8 <__clzsi2>
   1b83a:	04050513          	addi	a0,a0,64
   1b83e:	bf9d                	j	1b7b4 <__multf3+0xa8>
   1b840:	853e                	mv	a0,a5
   1b842:	076020ef          	jal	1d8b8 <__clzsi2>
   1b846:	06050513          	addi	a0,a0,96
   1b84a:	b7ad                	j	1b7b4 <__multf3+0xa8>
   1b84c:	5671                	li	a2,-4
   1b84e:	02c78633          	mul	a2,a5,a2
   1b852:	1878                	addi	a4,sp,60
   1b854:	468d                	li	a3,3
   1b856:	00c705b3          	add	a1,a4,a2
   1b85a:	418c                	lw	a1,0(a1)
   1b85c:	16fd                	addi	a3,a3,-1
   1b85e:	1771                	addi	a4,a4,-4
   1b860:	c34c                	sw	a1,4(a4)
   1b862:	fef6dae3          	bge	a3,a5,1b856 <__multf3+0x14a>
   1b866:	fff78713          	addi	a4,a5,-1
   1b86a:	b779                	j	1b7f8 <__multf3+0xec>
   1b86c:	430c                	lw	a1,0(a4)
   1b86e:	ffc72883          	lw	a7,-4(a4)
   1b872:	00c70e33          	add	t3,a4,a2
   1b876:	00d595b3          	sll	a1,a1,a3
   1b87a:	0108d8b3          	srl	a7,a7,a6
   1b87e:	0115e5b3          	or	a1,a1,a7
   1b882:	00be2023          	sw	a1,0(t3)
   1b886:	1771                	addi	a4,a4,-4
   1b888:	bf91                	j	1b7dc <__multf3+0xd0>
   1b88a:	8fc9                	or	a5,a5,a0
   1b88c:	8fd5                	or	a5,a5,a3
   1b88e:	8fc1                	or	a5,a5,s0
   1b890:	62078c63          	beqz	a5,1bec8 <__multf3+0x7bc>
   1b894:	0442                	slli	s0,s0,0x10
   1b896:	8441                	srai	s0,s0,0x10
   1b898:	fff44413          	not	s0,s0
   1b89c:	807d                	srli	s0,s0,0x1f
   1b89e:	0412                	slli	s0,s0,0x4
   1b8a0:	4c0d                	li	s8,3
   1b8a2:	010a1513          	slli	a0,s4,0x10
   1b8a6:	6721                	lui	a4,0x8
   1b8a8:	010a5793          	srli	a5,s4,0x10
   1b8ac:	8141                	srli	a0,a0,0x10
   1b8ae:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1b8b0:	d6d2                	sw	s4,108(sp)
   1b8b2:	d0d6                	sw	s5,96(sp)
   1b8b4:	d2de                	sw	s7,100(sp)
   1b8b6:	d4da                	sw	s6,104(sp)
   1b8b8:	c0d6                	sw	s5,64(sp)
   1b8ba:	c2de                	sw	s7,68(sp)
   1b8bc:	c4da                	sw	s6,72(sp)
   1b8be:	c6aa                	sw	a0,76(sp)
   1b8c0:	8ff9                	and	a5,a5,a4
   1b8c2:	01fa5a13          	srli	s4,s4,0x1f
   1b8c6:	60078363          	beqz	a5,1becc <__multf3+0x7c0>
   1b8ca:	6ee78863          	beq	a5,a4,1bfba <__multf3+0x8ae>
   1b8ce:	6741                	lui	a4,0x10
   1b8d0:	8d59                	or	a0,a0,a4
   1b8d2:	c6aa                	sw	a0,76(sp)
   1b8d4:	0098                	addi	a4,sp,64
   1b8d6:	184c                	addi	a1,sp,52
   1b8d8:	4754                	lw	a3,12(a4)
   1b8da:	4710                	lw	a2,8(a4)
   1b8dc:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   1b8de:	068e                	slli	a3,a3,0x3
   1b8e0:	8275                	srli	a2,a2,0x1d
   1b8e2:	8ed1                	or	a3,a3,a2
   1b8e4:	cb14                	sw	a3,16(a4)
   1b8e6:	fee599e3          	bne	a1,a4,1b8d8 <__multf3+0x1cc>
   1b8ea:	7771                	lui	a4,0xffffc
   1b8ec:	0a8e                	slli	s5,s5,0x3
   1b8ee:	0705                	addi	a4,a4,1 # ffffc001 <__BSS_END__+0xfffdc415>
   1b8f0:	c0d6                	sw	s5,64(sp)
   1b8f2:	97ba                	add	a5,a5,a4
   1b8f4:	4681                	li	a3,0
   1b8f6:	97ca                	add	a5,a5,s2
   1b8f8:	ca3e                	sw	a5,20(sp)
   1b8fa:	0785                	addi	a5,a5,1
   1b8fc:	c83e                	sw	a5,16(sp)
   1b8fe:	002c1793          	slli	a5,s8,0x2
   1b902:	8fd5                	or	a5,a5,a3
   1b904:	4729                	li	a4,10
   1b906:	70f74363          	blt	a4,a5,1c00c <__multf3+0x900>
   1b90a:	4609                	li	a2,2
   1b90c:	0149c733          	xor	a4,s3,s4
   1b910:	6cf64863          	blt	a2,a5,1bfe0 <__multf3+0x8d4>
   1b914:	17fd                	addi	a5,a5,-1
   1b916:	4605                	li	a2,1
   1b918:	70f67263          	bgeu	a2,a5,1c01c <__multf3+0x910>
   1b91c:	5542                	lw	a0,48(sp)
   1b91e:	4306                	lw	t1,64(sp)
   1b920:	6841                	lui	a6,0x10
   1b922:	fff80593          	addi	a1,a6,-1 # ffff <exit-0x95>
   1b926:	01055913          	srli	s2,a0,0x10
   1b92a:	01035393          	srli	t2,t1,0x10
   1b92e:	8d6d                	and	a0,a0,a1
   1b930:	00b37333          	and	t1,t1,a1
   1b934:	02a30633          	mul	a2,t1,a0
   1b938:	026908b3          	mul	a7,s2,t1
   1b93c:	01065793          	srli	a5,a2,0x10
   1b940:	02a386b3          	mul	a3,t2,a0
   1b944:	96c6                	add	a3,a3,a7
   1b946:	97b6                	add	a5,a5,a3
   1b948:	02790bb3          	mul	s7,s2,t2
   1b94c:	0117f363          	bgeu	a5,a7,1b952 <__multf3+0x246>
   1b950:	9bc2                	add	s7,s7,a6
   1b952:	4896                	lw	a7,68(sp)
   1b954:	0107d693          	srli	a3,a5,0x10
   1b958:	8fed                	and	a5,a5,a1
   1b95a:	8e6d                	and	a2,a2,a1
   1b95c:	07c2                	slli	a5,a5,0x10
   1b95e:	97b2                	add	a5,a5,a2
   1b960:	0108df93          	srli	t6,a7,0x10
   1b964:	00b8f8b3          	and	a7,a7,a1
   1b968:	031905b3          	mul	a1,s2,a7
   1b96c:	d03e                	sw	a5,32(sp)
   1b96e:	d0be                	sw	a5,96(sp)
   1b970:	02af8633          	mul	a2,t6,a0
   1b974:	02a887b3          	mul	a5,a7,a0
   1b978:	962e                	add	a2,a2,a1
   1b97a:	0107d813          	srli	a6,a5,0x10
   1b97e:	9832                	add	a6,a6,a2
   1b980:	03f90b33          	mul	s6,s2,t6
   1b984:	00b87463          	bgeu	a6,a1,1b98c <__multf3+0x280>
   1b988:	6641                	lui	a2,0x10
   1b98a:	9b32                	add	s6,s6,a2
   1b98c:	01085613          	srli	a2,a6,0x10
   1b990:	55d2                	lw	a1,52(sp)
   1b992:	cc32                	sw	a2,24(sp)
   1b994:	6641                	lui	a2,0x10
   1b996:	fff60e93          	addi	t4,a2,-1 # ffff <exit-0x95>
   1b99a:	01d87833          	and	a6,a6,t4
   1b99e:	01d7f7b3          	and	a5,a5,t4
   1b9a2:	0105d293          	srli	t0,a1,0x10
   1b9a6:	0842                	slli	a6,a6,0x10
   1b9a8:	01d5f5b3          	and	a1,a1,t4
   1b9ac:	983e                	add	a6,a6,a5
   1b9ae:	02628a33          	mul	s4,t0,t1
   1b9b2:	96c2                	add	a3,a3,a6
   1b9b4:	026587b3          	mul	a5,a1,t1
   1b9b8:	02b38eb3          	mul	t4,t2,a1
   1b9bc:	0107d993          	srli	s3,a5,0x10
   1b9c0:	9ed2                	add	t4,t4,s4
   1b9c2:	99f6                	add	s3,s3,t4
   1b9c4:	02538f33          	mul	t5,t2,t0
   1b9c8:	0149f363          	bgeu	s3,s4,1b9ce <__multf3+0x2c2>
   1b9cc:	9f32                	add	t5,t5,a2
   1b9ce:	6c41                	lui	s8,0x10
   1b9d0:	fffc0613          	addi	a2,s8,-1 # ffff <exit-0x95>
   1b9d4:	8ff1                	and	a5,a5,a2
   1b9d6:	0109da13          	srli	s4,s3,0x10
   1b9da:	00c9f9b3          	and	s3,s3,a2
   1b9de:	09c2                	slli	s3,s3,0x10
   1b9e0:	99be                	add	s3,s3,a5
   1b9e2:	02b88eb3          	mul	t4,a7,a1
   1b9e6:	9a7a                	add	s4,s4,t5
   1b9e8:	03128633          	mul	a2,t0,a7
   1b9ec:	010ed793          	srli	a5,t4,0x10
   1b9f0:	02bf8ab3          	mul	s5,t6,a1
   1b9f4:	9ab2                	add	s5,s5,a2
   1b9f6:	97d6                	add	a5,a5,s5
   1b9f8:	025f8f33          	mul	t5,t6,t0
   1b9fc:	00c7f363          	bgeu	a5,a2,1ba02 <__multf3+0x2f6>
   1ba00:	9f62                	add	t5,t5,s8
   1ba02:	0107d613          	srli	a2,a5,0x10
   1ba06:	967a                	add	a2,a2,t5
   1ba08:	6ac1                	lui	s5,0x10
   1ba0a:	ce32                	sw	a2,28(sp)
   1ba0c:	fffa8613          	addi	a2,s5,-1 # ffff <exit-0x95>
   1ba10:	8ff1                	and	a5,a5,a2
   1ba12:	00cefeb3          	and	t4,t4,a2
   1ba16:	07c2                	slli	a5,a5,0x10
   1ba18:	97f6                	add	a5,a5,t4
   1ba1a:	d23e                	sw	a5,36(sp)
   1ba1c:	47a6                	lw	a5,72(sp)
   1ba1e:	0107dd93          	srli	s11,a5,0x10
   1ba22:	00c7fd33          	and	s10,a5,a2
   1ba26:	02ad0633          	mul	a2,s10,a0
   1ba2a:	03a90c33          	mul	s8,s2,s10
   1ba2e:	01065793          	srli	a5,a2,0x10
   1ba32:	02ad8f33          	mul	t5,s11,a0
   1ba36:	9f62                	add	t5,t5,s8
   1ba38:	97fa                	add	a5,a5,t5
   1ba3a:	03b90eb3          	mul	t4,s2,s11
   1ba3e:	0187f363          	bgeu	a5,s8,1ba44 <__multf3+0x338>
   1ba42:	9ed6                	add	t4,t4,s5
   1ba44:	0107df13          	srli	t5,a5,0x10
   1ba48:	6cc1                	lui	s9,0x10
   1ba4a:	01df0e33          	add	t3,t5,t4
   1ba4e:	fffc8e93          	addi	t4,s9,-1 # ffff <exit-0x95>
   1ba52:	01d7f7b3          	and	a5,a5,t4
   1ba56:	01d67633          	and	a2,a2,t4
   1ba5a:	07c2                	slli	a5,a5,0x10
   1ba5c:	97b2                	add	a5,a5,a2
   1ba5e:	5662                	lw	a2,56(sp)
   1ba60:	d472                	sw	t3,40(sp)
   1ba62:	d63e                	sw	a5,44(sp)
   1ba64:	01065f13          	srli	t5,a2,0x10
   1ba68:	01d67633          	and	a2,a2,t4
   1ba6c:	02660ab3          	mul	s5,a2,t1
   1ba70:	026f0e33          	mul	t3,t5,t1
   1ba74:	010ad793          	srli	a5,s5,0x10
   1ba78:	02c38eb3          	mul	t4,t2,a2
   1ba7c:	9ef2                	add	t4,t4,t3
   1ba7e:	9ebe                	add	t4,t4,a5
   1ba80:	03e38c33          	mul	s8,t2,t5
   1ba84:	01cef363          	bgeu	t4,t3,1ba8a <__multf3+0x37e>
   1ba88:	9c66                	add	s8,s8,s9
   1ba8a:	47e2                	lw	a5,24(sp)
   1ba8c:	96de                	add	a3,a3,s7
   1ba8e:	0106b833          	sltu	a6,a3,a6
   1ba92:	010edc93          	srli	s9,t4,0x10
   1ba96:	6e41                	lui	t3,0x10
   1ba98:	9c66                	add	s8,s8,s9
   1ba9a:	fffe0c93          	addi	s9,t3,-1 # ffff <exit-0x95>
   1ba9e:	01078e33          	add	t3,a5,a6
   1baa2:	013687b3          	add	a5,a3,s3
   1baa6:	9e5a                	add	t3,t3,s6
   1baa8:	00d7b6b3          	sltu	a3,a5,a3
   1baac:	cc3e                	sw	a5,24(sp)
   1baae:	d2be                	sw	a5,100(sp)
   1bab0:	5792                	lw	a5,36(sp)
   1bab2:	9a72                	add	s4,s4,t3
   1bab4:	96d2                	add	a3,a3,s4
   1bab6:	01ca39b3          	sltu	s3,s4,t3
   1baba:	0146ba33          	sltu	s4,a3,s4
   1babe:	010e3e33          	sltu	t3,t3,a6
   1bac2:	00f68833          	add	a6,a3,a5
   1bac6:	47f2                	lw	a5,28(sp)
   1bac8:	0149e9b3          	or	s3,s3,s4
   1bacc:	9e4e                	add	t3,t3,s3
   1bace:	00fe09b3          	add	s3,t3,a5
   1bad2:	57b2                	lw	a5,44(sp)
   1bad4:	5a22                	lw	s4,40(sp)
   1bad6:	00d836b3          	sltu	a3,a6,a3
   1bada:	019efeb3          	and	t4,t4,s9
   1bade:	96ce                	add	a3,a3,s3
   1bae0:	97c2                	add	a5,a5,a6
   1bae2:	0ec2                	slli	t4,t4,0x10
   1bae4:	019afab3          	and	s5,s5,s9
   1bae8:	9a36                	add	s4,s4,a3
   1baea:	0107b833          	sltu	a6,a5,a6
   1baee:	9ed6                	add	t4,t4,s5
   1baf0:	9ebe                	add	t4,t4,a5
   1baf2:	9852                	add	a6,a6,s4
   1baf4:	9c42                	add	s8,s8,a6
   1baf6:	00feb7b3          	sltu	a5,t4,a5
   1bafa:	ce76                	sw	t4,28(sp)
   1bafc:	d4f6                	sw	t4,104(sp)
   1bafe:	4eb6                	lw	t4,76(sp)
   1bb00:	01c9be33          	sltu	t3,s3,t3
   1bb04:	97e2                	add	a5,a5,s8
   1bb06:	0136b9b3          	sltu	s3,a3,s3
   1bb0a:	00da36b3          	sltu	a3,s4,a3
   1bb0e:	01483a33          	sltu	s4,a6,s4
   1bb12:	013e69b3          	or	s3,t3,s3
   1bb16:	0146e6b3          	or	a3,a3,s4
   1bb1a:	010c3833          	sltu	a6,s8,a6
   1bb1e:	0187bc33          	sltu	s8,a5,s8
   1bb22:	96ce                	add	a3,a3,s3
   1bb24:	01886833          	or	a6,a6,s8
   1bb28:	010ed993          	srli	s3,t4,0x10
   1bb2c:	019efeb3          	and	t4,t4,s9
   1bb30:	03d90a33          	mul	s4,s2,t4
   1bb34:	00d80e33          	add	t3,a6,a3
   1bb38:	02ae86b3          	mul	a3,t4,a0
   1bb3c:	02a98533          	mul	a0,s3,a0
   1bb40:	0106d813          	srli	a6,a3,0x10
   1bb44:	9552                	add	a0,a0,s4
   1bb46:	982a                	add	a6,a6,a0
   1bb48:	03390933          	mul	s2,s2,s3
   1bb4c:	01487463          	bgeu	a6,s4,1bb54 <__multf3+0x448>
   1bb50:	6541                	lui	a0,0x10
   1bb52:	992a                	add	s2,s2,a0
   1bb54:	01085513          	srli	a0,a6,0x10
   1bb58:	954a                	add	a0,a0,s2
   1bb5a:	5a72                	lw	s4,60(sp)
   1bb5c:	6ac1                	lui	s5,0x10
   1bb5e:	d22a                	sw	a0,36(sp)
   1bb60:	fffa8513          	addi	a0,s5,-1 # ffff <exit-0x95>
   1bb64:	00a87833          	and	a6,a6,a0
   1bb68:	010a5913          	srli	s2,s4,0x10
   1bb6c:	0842                	slli	a6,a6,0x10
   1bb6e:	8ee9                	and	a3,a3,a0
   1bb70:	00aa7a33          	and	s4,s4,a0
   1bb74:	96c2                	add	a3,a3,a6
   1bb76:	026a0533          	mul	a0,s4,t1
   1bb7a:	d436                	sw	a3,40(sp)
   1bb7c:	02690333          	mul	t1,s2,t1
   1bb80:	01055693          	srli	a3,a0,0x10
   1bb84:	03238833          	mul	a6,t2,s2
   1bb88:	034383b3          	mul	t2,t2,s4
   1bb8c:	939a                	add	t2,t2,t1
   1bb8e:	969e                	add	a3,a3,t2
   1bb90:	0066f363          	bgeu	a3,t1,1bb96 <__multf3+0x48a>
   1bb94:	9856                	add	a6,a6,s5
   1bb96:	0106da93          	srli	s5,a3,0x10
   1bb9a:	6bc1                	lui	s7,0x10
   1bb9c:	9ac2                	add	s5,s5,a6
   1bb9e:	fffb8813          	addi	a6,s7,-1 # ffff <exit-0x95>
   1bba2:	01057533          	and	a0,a0,a6
   1bba6:	0106f6b3          	and	a3,a3,a6
   1bbaa:	03a28333          	mul	t1,t0,s10
   1bbae:	06c2                	slli	a3,a3,0x10
   1bbb0:	96aa                	add	a3,a3,a0
   1bbb2:	03a58833          	mul	a6,a1,s10
   1bbb6:	02bd83b3          	mul	t2,s11,a1
   1bbba:	01085513          	srli	a0,a6,0x10
   1bbbe:	939a                	add	t2,t2,t1
   1bbc0:	951e                	add	a0,a0,t2
   1bbc2:	03b28b33          	mul	s6,t0,s11
   1bbc6:	00657363          	bgeu	a0,t1,1bbcc <__multf3+0x4c0>
   1bbca:	9b5e                	add	s6,s6,s7
   1bbcc:	6c41                	lui	s8,0x10
   1bbce:	fffc0313          	addi	t1,s8,-1 # ffff <exit-0x95>
   1bbd2:	01055393          	srli	t2,a0,0x10
   1bbd6:	00657533          	and	a0,a0,t1
   1bbda:	00687833          	and	a6,a6,t1
   1bbde:	0542                	slli	a0,a0,0x10
   1bbe0:	93da                	add	t2,t2,s6
   1bbe2:	02cf8333          	mul	t1,t6,a2
   1bbe6:	9542                	add	a0,a0,a6
   1bbe8:	031f0b33          	mul	s6,t5,a7
   1bbec:	02c88833          	mul	a6,a7,a2
   1bbf0:	935a                	add	t1,t1,s6
   1bbf2:	01085c93          	srli	s9,a6,0x10
   1bbf6:	9366                	add	t1,t1,s9
   1bbf8:	03ef8bb3          	mul	s7,t6,t5
   1bbfc:	01637363          	bgeu	t1,s6,1bc02 <__multf3+0x4f6>
   1bc00:	9be2                	add	s7,s7,s8
   1bc02:	01035b13          	srli	s6,t1,0x10
   1bc06:	9b5e                	add	s6,s6,s7
   1bc08:	6bc1                	lui	s7,0x10
   1bc0a:	fffb8c13          	addi	s8,s7,-1 # ffff <exit-0x95>
   1bc0e:	01837333          	and	t1,t1,s8
   1bc12:	0342                	slli	t1,t1,0x10
   1bc14:	01887833          	and	a6,a6,s8
   1bc18:	981a                	add	a6,a6,t1
   1bc1a:	5322                	lw	t1,40(sp)
   1bc1c:	5c12                	lw	s8,36(sp)
   1bc1e:	933e                	add	t1,t1,a5
   1bc20:	9c72                	add	s8,s8,t3
   1bc22:	00f337b3          	sltu	a5,t1,a5
   1bc26:	97e2                	add	a5,a5,s8
   1bc28:	969a                	add	a3,a3,t1
   1bc2a:	9abe                	add	s5,s5,a5
   1bc2c:	0066b333          	sltu	t1,a3,t1
   1bc30:	9356                	add	t1,t1,s5
   1bc32:	9536                	add	a0,a0,a3
   1bc34:	939a                	add	t2,t2,t1
   1bc36:	00d536b3          	sltu	a3,a0,a3
   1bc3a:	969e                	add	a3,a3,t2
   1bc3c:	982a                	add	a6,a6,a0
   1bc3e:	01cc3e33          	sltu	t3,s8,t3
   1bc42:	9b36                	add	s6,s6,a3
   1bc44:	0187bc33          	sltu	s8,a5,s8
   1bc48:	00a83533          	sltu	a0,a6,a0
   1bc4c:	00fab7b3          	sltu	a5,s5,a5
   1bc50:	01533ab3          	sltu	s5,t1,s5
   1bc54:	018e6c33          	or	s8,t3,s8
   1bc58:	0157e7b3          	or	a5,a5,s5
   1bc5c:	0063b333          	sltu	t1,t2,t1
   1bc60:	955a                	add	a0,a0,s6
   1bc62:	0076b3b3          	sltu	t2,a3,t2
   1bc66:	97e2                	add	a5,a5,s8
   1bc68:	00736333          	or	t1,t1,t2
   1bc6c:	00db36b3          	sltu	a3,s6,a3
   1bc70:	01653b33          	sltu	s6,a0,s6
   1bc74:	00f303b3          	add	t2,t1,a5
   1bc78:	0166e6b3          	or	a3,a3,s6
   1bc7c:	00768333          	add	t1,a3,t2
   1bc80:	03af0e33          	mul	t3,t5,s10
   1bc84:	d6c2                	sw	a6,108(sp)
   1bc86:	03a606b3          	mul	a3,a2,s10
   1bc8a:	02cd8ab3          	mul	s5,s11,a2
   1bc8e:	0106d793          	srli	a5,a3,0x10
   1bc92:	9af2                	add	s5,s5,t3
   1bc94:	97d6                	add	a5,a5,s5
   1bc96:	03ed83b3          	mul	t2,s11,t5
   1bc9a:	01c7f363          	bgeu	a5,t3,1bca0 <__multf3+0x594>
   1bc9e:	93de                	add	t2,t2,s7
   1bca0:	0107de13          	srli	t3,a5,0x10
   1bca4:	6ac1                	lui	s5,0x10
   1bca6:	9e1e                	add	t3,t3,t2
   1bca8:	fffa8393          	addi	t2,s5,-1 # ffff <exit-0x95>
   1bcac:	0077f7b3          	and	a5,a5,t2
   1bcb0:	0076f6b3          	and	a3,a3,t2
   1bcb4:	07c2                	slli	a5,a5,0x10
   1bcb6:	03d28b33          	mul	s6,t0,t4
   1bcba:	97b6                	add	a5,a5,a3
   1bcbc:	02be86b3          	mul	a3,t4,a1
   1bcc0:	02b985b3          	mul	a1,s3,a1
   1bcc4:	0106d393          	srli	t2,a3,0x10
   1bcc8:	95da                	add	a1,a1,s6
   1bcca:	93ae                	add	t2,t2,a1
   1bccc:	033282b3          	mul	t0,t0,s3
   1bcd0:	0163f363          	bgeu	t2,s6,1bcd6 <__multf3+0x5ca>
   1bcd4:	92d6                	add	t0,t0,s5
   1bcd6:	0103d593          	srli	a1,t2,0x10
   1bcda:	6b41                	lui	s6,0x10
   1bcdc:	92ae                	add	t0,t0,a1
   1bcde:	fffb0593          	addi	a1,s6,-1 # ffff <exit-0x95>
   1bce2:	8eed                	and	a3,a3,a1
   1bce4:	00b3f3b3          	and	t2,t2,a1
   1bce8:	03c2                	slli	t2,t2,0x10
   1bcea:	031a05b3          	mul	a1,s4,a7
   1bcee:	93b6                	add	t2,t2,a3
   1bcf0:	031908b3          	mul	a7,s2,a7
   1bcf4:	0105d693          	srli	a3,a1,0x10
   1bcf8:	032f8ab3          	mul	s5,t6,s2
   1bcfc:	034f8fb3          	mul	t6,t6,s4
   1bd00:	9fc6                	add	t6,t6,a7
   1bd02:	96fe                	add	a3,a3,t6
   1bd04:	0116f363          	bgeu	a3,a7,1bd0a <__multf3+0x5fe>
   1bd08:	9ada                	add	s5,s5,s6
   1bd0a:	0106df93          	srli	t6,a3,0x10
   1bd0e:	68c1                	lui	a7,0x10
   1bd10:	9fd6                	add	t6,t6,s5
   1bd12:	fff88a93          	addi	s5,a7,-1 # ffff <exit-0x95>
   1bd16:	0156f6b3          	and	a3,a3,s5
   1bd1a:	0155f5b3          	and	a1,a1,s5
   1bd1e:	06c2                	slli	a3,a3,0x10
   1bd20:	03df0ab3          	mul	s5,t5,t4
   1bd24:	96ae                	add	a3,a3,a1
   1bd26:	03d605b3          	mul	a1,a2,t4
   1bd2a:	02c98633          	mul	a2,s3,a2
   1bd2e:	01560b33          	add	s6,a2,s5
   1bd32:	0105d613          	srli	a2,a1,0x10
   1bd36:	965a                	add	a2,a2,s6
   1bd38:	033f0f33          	mul	t5,t5,s3
   1bd3c:	01567363          	bgeu	a2,s5,1bd42 <__multf3+0x636>
   1bd40:	9f46                	add	t5,t5,a7
   1bd42:	6ac1                	lui	s5,0x10
   1bd44:	01065893          	srli	a7,a2,0x10
   1bd48:	fffa8b13          	addi	s6,s5,-1 # ffff <exit-0x95>
   1bd4c:	9f46                	add	t5,t5,a7
   1bd4e:	016678b3          	and	a7,a2,s6
   1bd52:	0165f5b3          	and	a1,a1,s6
   1bd56:	08c2                	slli	a7,a7,0x10
   1bd58:	03aa0633          	mul	a2,s4,s10
   1bd5c:	98ae                	add	a7,a7,a1
   1bd5e:	03a90bb3          	mul	s7,s2,s10
   1bd62:	01065c13          	srli	s8,a2,0x10
   1bd66:	034d85b3          	mul	a1,s11,s4
   1bd6a:	95de                	add	a1,a1,s7
   1bd6c:	95e2                	add	a1,a1,s8
   1bd6e:	032d8b33          	mul	s6,s11,s2
   1bd72:	0175f363          	bgeu	a1,s7,1bd78 <__multf3+0x66c>
   1bd76:	9b56                	add	s6,s6,s5
   1bd78:	97aa                	add	a5,a5,a0
   1bd7a:	9e1a                	add	t3,t3,t1
   1bd7c:	00a7b533          	sltu	a0,a5,a0
   1bd80:	9572                	add	a0,a0,t3
   1bd82:	93be                	add	t2,t2,a5
   1bd84:	92aa                	add	t0,t0,a0
   1bd86:	00f3b7b3          	sltu	a5,t2,a5
   1bd8a:	9796                	add	a5,a5,t0
   1bd8c:	006e3333          	sltu	t1,t3,t1
   1bd90:	01c53e33          	sltu	t3,a0,t3
   1bd94:	00a2b533          	sltu	a0,t0,a0
   1bd98:	0057b2b3          	sltu	t0,a5,t0
   1bd9c:	00556533          	or	a0,a0,t0
   1bda0:	01c36333          	or	t1,t1,t3
   1bda4:	932a                	add	t1,t1,a0
   1bda6:	03da0533          	mul	a0,s4,t4
   1bdaa:	969e                	add	a3,a3,t2
   1bdac:	9fbe                	add	t6,t6,a5
   1bdae:	0105da93          	srli	s5,a1,0x10
   1bdb2:	d8b6                	sw	a3,112(sp)
   1bdb4:	0076b6b3          	sltu	a3,a3,t2
   1bdb8:	96fe                	add	a3,a3,t6
   1bdba:	9ada                	add	s5,s5,s6
   1bdbc:	6b41                	lui	s6,0x10
   1bdbe:	fffb0b93          	addi	s7,s6,-1 # ffff <exit-0x95>
   1bdc2:	03d90eb3          	mul	t4,s2,t4
   1bdc6:	00ffb7b3          	sltu	a5,t6,a5
   1bdca:	01f6bfb3          	sltu	t6,a3,t6
   1bdce:	0175f5b3          	and	a1,a1,s7
   1bdd2:	01f7e7b3          	or	a5,a5,t6
   1bdd6:	98b6                	add	a7,a7,a3
   1bdd8:	05c2                	slli	a1,a1,0x10
   1bdda:	979a                	add	a5,a5,t1
   1bddc:	01767633          	and	a2,a2,s7
   1bde0:	9f3e                	add	t5,t5,a5
   1bde2:	03298933          	mul	s2,s3,s2
   1bde6:	962e                	add	a2,a2,a1
   1bde8:	00d8b6b3          	sltu	a3,a7,a3
   1bdec:	96fa                	add	a3,a3,t5
   1bdee:	9646                	add	a2,a2,a7
   1bdf0:	00ff37b3          	sltu	a5,t5,a5
   1bdf4:	9ab6                	add	s5,s5,a3
   1bdf6:	01e6bf33          	sltu	t5,a3,t5
   1bdfa:	dab2                	sw	a2,116(sp)
   1bdfc:	01163633          	sltu	a2,a2,a7
   1be00:	034989b3          	mul	s3,s3,s4
   1be04:	01e7e5b3          	or	a1,a5,t5
   1be08:	9656                	add	a2,a2,s5
   1be0a:	01055793          	srli	a5,a0,0x10
   1be0e:	00dab6b3          	sltu	a3,s5,a3
   1be12:	01563ab3          	sltu	s5,a2,s5
   1be16:	0156e6b3          	or	a3,a3,s5
   1be1a:	99f6                	add	s3,s3,t4
   1be1c:	97ce                	add	a5,a5,s3
   1be1e:	01d7f363          	bgeu	a5,t4,1be24 <__multf3+0x718>
   1be22:	995a                	add	s2,s2,s6
   1be24:	0107d893          	srli	a7,a5,0x10
   1be28:	95c6                	add	a1,a1,a7
   1be2a:	68c1                	lui	a7,0x10
   1be2c:	18fd                	addi	a7,a7,-1 # ffff <exit-0x95>
   1be2e:	0117f7b3          	and	a5,a5,a7
   1be32:	07c2                	slli	a5,a5,0x10
   1be34:	01157533          	and	a0,a0,a7
   1be38:	97aa                	add	a5,a5,a0
   1be3a:	97b2                	add	a5,a5,a2
   1be3c:	96ae                	add	a3,a3,a1
   1be3e:	00c7b633          	sltu	a2,a5,a2
   1be42:	9636                	add	a2,a2,a3
   1be44:	dcbe                	sw	a5,120(sp)
   1be46:	46e2                	lw	a3,24(sp)
   1be48:	5782                	lw	a5,32(sp)
   1be4a:	964a                	add	a2,a2,s2
   1be4c:	0836                	slli	a6,a6,0xd
   1be4e:	8fd5                	or	a5,a5,a3
   1be50:	46f2                	lw	a3,28(sp)
   1be52:	deb2                	sw	a2,124(sp)
   1be54:	188c                	addi	a1,sp,112
   1be56:	8fd5                	or	a5,a5,a3
   1be58:	00f86833          	or	a6,a6,a5
   1be5c:	109c                	addi	a5,sp,96
   1be5e:	47d4                	lw	a3,12(a5)
   1be60:	4b90                	lw	a2,16(a5)
   1be62:	82cd                	srli	a3,a3,0x13
   1be64:	0636                	slli	a2,a2,0xd
   1be66:	8ed1                	or	a3,a3,a2
   1be68:	c394                	sw	a3,0(a5)
   1be6a:	0791                	addi	a5,a5,4
   1be6c:	fef599e3          	bne	a1,a5,1be5e <__multf3+0x752>
   1be70:	5786                	lw	a5,96(sp)
   1be72:	01003833          	snez	a6,a6
   1be76:	56b6                	lw	a3,108(sp)
   1be78:	00f86833          	or	a6,a6,a5
   1be7c:	57a6                	lw	a5,104(sp)
   1be7e:	ceb6                	sw	a3,92(sp)
   1be80:	c8c2                	sw	a6,80(sp)
   1be82:	ccbe                	sw	a5,88(sp)
   1be84:	5796                	lw	a5,100(sp)
   1be86:	cabe                	sw	a5,84(sp)
   1be88:	00b69793          	slli	a5,a3,0xb
   1be8c:	0207d863          	bgez	a5,1bebc <__multf3+0x7b0>
   1be90:	087e                	slli	a6,a6,0x1f
   1be92:	089c                	addi	a5,sp,80
   1be94:	08e8                	addi	a0,sp,92
   1be96:	4390                	lw	a2,0(a5)
   1be98:	43cc                	lw	a1,4(a5)
   1be9a:	8205                	srli	a2,a2,0x1
   1be9c:	05fe                	slli	a1,a1,0x1f
   1be9e:	8e4d                	or	a2,a2,a1
   1bea0:	c390                	sw	a2,0(a5)
   1bea2:	0791                	addi	a5,a5,4
   1bea4:	fef519e3          	bne	a0,a5,1be96 <__multf3+0x78a>
   1bea8:	47c6                	lw	a5,80(sp)
   1beaa:	01003833          	snez	a6,a6
   1beae:	8285                	srli	a3,a3,0x1
   1beb0:	0107e7b3          	or	a5,a5,a6
   1beb4:	c8be                	sw	a5,80(sp)
   1beb6:	47c2                	lw	a5,16(sp)
   1beb8:	ceb6                	sw	a3,92(sp)
   1beba:	ca3e                	sw	a5,20(sp)
   1bebc:	47d2                	lw	a5,20(sp)
   1bebe:	c83e                	sw	a5,16(sp)
   1bec0:	aa41                	j	1c050 <__multf3+0x944>
   1bec2:	4901                	li	s2,0
   1bec4:	4c05                	li	s8,1
   1bec6:	b8d9                	j	1b79c <__multf3+0x90>
   1bec8:	4c09                	li	s8,2
   1beca:	b8c9                	j	1b79c <__multf3+0x90>
   1becc:	017ae7b3          	or	a5,s5,s7
   1bed0:	0167e7b3          	or	a5,a5,s6
   1bed4:	8fc9                	or	a5,a5,a0
   1bed6:	10078263          	beqz	a5,1bfda <__multf3+0x8ce>
   1beda:	c93d                	beqz	a0,1bf50 <__multf3+0x844>
   1bedc:	1dd010ef          	jal	1d8b8 <__clzsi2>
   1bee0:	ff450693          	addi	a3,a0,-12 # fff4 <exit-0xa0>
   1bee4:	4056d793          	srai	a5,a3,0x5
   1bee8:	8afd                	andi	a3,a3,31
   1beea:	cac9                	beqz	a3,1bf7c <__multf3+0x870>
   1beec:	5671                	li	a2,-4
   1beee:	02c78633          	mul	a2,a5,a2
   1bef2:	02000813          	li	a6,32
   1bef6:	04010313          	addi	t1,sp,64
   1befa:	40d80833          	sub	a6,a6,a3
   1befe:	00c60713          	addi	a4,a2,12
   1bf02:	971a                	add	a4,a4,t1
   1bf04:	40c00633          	neg	a2,a2
   1bf08:	08e31a63          	bne	t1,a4,1bf9c <__multf3+0x890>
   1bf0c:	fff78713          	addi	a4,a5,-1
   1bf10:	078a                	slli	a5,a5,0x2
   1bf12:	1810                	addi	a2,sp,48
   1bf14:	05078793          	addi	a5,a5,80
   1bf18:	97b2                	add	a5,a5,a2
   1bf1a:	4606                	lw	a2,64(sp)
   1bf1c:	00d616b3          	sll	a3,a2,a3
   1bf20:	fcd7a023          	sw	a3,-64(a5)
   1bf24:	00170793          	addi	a5,a4,1
   1bf28:	078a                	slli	a5,a5,0x2
   1bf2a:	46a1                	li	a3,8
   1bf2c:	0098                	addi	a4,sp,64
   1bf2e:	00d7e863          	bltu	a5,a3,1bf3e <__multf3+0x832>
   1bf32:	00072023          	sw	zero,0(a4)
   1bf36:	00072223          	sw	zero,4(a4)
   1bf3a:	17e1                	addi	a5,a5,-8
   1bf3c:	00b8                	addi	a4,sp,72
   1bf3e:	4691                	li	a3,4
   1bf40:	00d7e463          	bltu	a5,a3,1bf48 <__multf3+0x83c>
   1bf44:	00072023          	sw	zero,0(a4)
   1bf48:	77f1                	lui	a5,0xffffc
   1bf4a:	07c5                	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffdc425>
   1bf4c:	8f89                	sub	a5,a5,a0
   1bf4e:	b25d                	j	1b8f4 <__multf3+0x1e8>
   1bf50:	000b0863          	beqz	s6,1bf60 <__multf3+0x854>
   1bf54:	855a                	mv	a0,s6
   1bf56:	163010ef          	jal	1d8b8 <__clzsi2>
   1bf5a:	02050513          	addi	a0,a0,32
   1bf5e:	b749                	j	1bee0 <__multf3+0x7d4>
   1bf60:	000b8863          	beqz	s7,1bf70 <__multf3+0x864>
   1bf64:	855e                	mv	a0,s7
   1bf66:	153010ef          	jal	1d8b8 <__clzsi2>
   1bf6a:	04050513          	addi	a0,a0,64
   1bf6e:	bf8d                	j	1bee0 <__multf3+0x7d4>
   1bf70:	8556                	mv	a0,s5
   1bf72:	147010ef          	jal	1d8b8 <__clzsi2>
   1bf76:	06050513          	addi	a0,a0,96
   1bf7a:	b79d                	j	1bee0 <__multf3+0x7d4>
   1bf7c:	5671                	li	a2,-4
   1bf7e:	02c78633          	mul	a2,a5,a2
   1bf82:	00f8                	addi	a4,sp,76
   1bf84:	468d                	li	a3,3
   1bf86:	00c705b3          	add	a1,a4,a2
   1bf8a:	418c                	lw	a1,0(a1)
   1bf8c:	16fd                	addi	a3,a3,-1
   1bf8e:	1771                	addi	a4,a4,-4
   1bf90:	c34c                	sw	a1,4(a4)
   1bf92:	fef6dae3          	bge	a3,a5,1bf86 <__multf3+0x87a>
   1bf96:	fff78713          	addi	a4,a5,-1
   1bf9a:	b769                	j	1bf24 <__multf3+0x818>
   1bf9c:	430c                	lw	a1,0(a4)
   1bf9e:	ffc72883          	lw	a7,-4(a4)
   1bfa2:	00c70e33          	add	t3,a4,a2
   1bfa6:	00d595b3          	sll	a1,a1,a3
   1bfaa:	0108d8b3          	srl	a7,a7,a6
   1bfae:	0115e5b3          	or	a1,a1,a7
   1bfb2:	00be2023          	sw	a1,0(t3)
   1bfb6:	1771                	addi	a4,a4,-4
   1bfb8:	bf81                	j	1bf08 <__multf3+0x7fc>
   1bfba:	017aeab3          	or	s5,s5,s7
   1bfbe:	016aeab3          	or	s5,s5,s6
   1bfc2:	00aaeab3          	or	s5,s5,a0
   1bfc6:	4689                	li	a3,2
   1bfc8:	920a87e3          	beqz	s5,1b8f6 <__multf3+0x1ea>
   1bfcc:	0542                	slli	a0,a0,0x10
   1bfce:	8541                	srai	a0,a0,0x10
   1bfd0:	468d                	li	a3,3
   1bfd2:	920542e3          	bltz	a0,1b8f6 <__multf3+0x1ea>
   1bfd6:	4441                	li	s0,16
   1bfd8:	ba39                	j	1b8f6 <__multf3+0x1ea>
   1bfda:	4781                	li	a5,0
   1bfdc:	4685                	li	a3,1
   1bfde:	ba21                	j	1b8f6 <__multf3+0x1ea>
   1bfe0:	4605                	li	a2,1
   1bfe2:	00f617b3          	sll	a5,a2,a5
   1bfe6:	5307f613          	andi	a2,a5,1328
   1bfea:	e231                	bnez	a2,1c02e <__multf3+0x922>
   1bfec:	0887f613          	andi	a2,a5,136
   1bff0:	e60d                	bnez	a2,1c01a <__multf3+0x90e>
   1bff2:	2407f793          	andi	a5,a5,576
   1bff6:	920783e3          	beqz	a5,1b91c <__multf3+0x210>
   1bffa:	4441                	li	s0,16
   1bffc:	67a1                	lui	a5,0x8
   1bffe:	cebe                	sw	a5,92(sp)
   1c000:	cc82                	sw	zero,88(sp)
   1c002:	ca82                	sw	zero,84(sp)
   1c004:	c882                	sw	zero,80(sp)
   1c006:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1c008:	4701                	li	a4,0
   1c00a:	a8e1                	j	1c0e2 <__multf3+0x9d6>
   1c00c:	473d                	li	a4,15
   1c00e:	fee787e3          	beq	a5,a4,1bffc <__multf3+0x8f0>
   1c012:	462d                	li	a2,11
   1c014:	874e                	mv	a4,s3
   1c016:	00c79c63          	bne	a5,a2,1c02e <__multf3+0x922>
   1c01a:	8752                	mv	a4,s4
   1c01c:	4786                	lw	a5,64(sp)
   1c01e:	8c36                	mv	s8,a3
   1c020:	c8be                	sw	a5,80(sp)
   1c022:	4796                	lw	a5,68(sp)
   1c024:	cabe                	sw	a5,84(sp)
   1c026:	47a6                	lw	a5,72(sp)
   1c028:	ccbe                	sw	a5,88(sp)
   1c02a:	47b6                	lw	a5,76(sp)
   1c02c:	a801                	j	1c03c <__multf3+0x930>
   1c02e:	57c2                	lw	a5,48(sp)
   1c030:	c8be                	sw	a5,80(sp)
   1c032:	57d2                	lw	a5,52(sp)
   1c034:	cabe                	sw	a5,84(sp)
   1c036:	57e2                	lw	a5,56(sp)
   1c038:	ccbe                	sw	a5,88(sp)
   1c03a:	57f2                	lw	a5,60(sp)
   1c03c:	cebe                	sw	a5,92(sp)
   1c03e:	4789                	li	a5,2
   1c040:	34fc0d63          	beq	s8,a5,1c39a <__multf3+0xc8e>
   1c044:	478d                	li	a5,3
   1c046:	fafc0be3          	beq	s8,a5,1bffc <__multf3+0x8f0>
   1c04a:	4785                	li	a5,1
   1c04c:	34fc0263          	beq	s8,a5,1c390 <__multf3+0xc84>
   1c050:	46c2                	lw	a3,16(sp)
   1c052:	6791                	lui	a5,0x4
   1c054:	17fd                	addi	a5,a5,-1 # 3fff <exit-0xc095>
   1c056:	97b6                	add	a5,a5,a3
   1c058:	10f05763          	blez	a5,1c166 <__multf3+0xa5a>
   1c05c:	4646                	lw	a2,80(sp)
   1c05e:	00767693          	andi	a3,a2,7
   1c062:	c2a1                	beqz	a3,1c0a2 <__multf3+0x996>
   1c064:	4509                	li	a0,2
   1c066:	46d6                	lw	a3,84(sp)
   1c068:	45f6                	lw	a1,92(sp)
   1c06a:	0ca48563          	beq	s1,a0,1c134 <__multf3+0xa28>
   1c06e:	450d                	li	a0,3
   1c070:	0aa48c63          	beq	s1,a0,1c128 <__multf3+0xa1c>
   1c074:	e48d                	bnez	s1,1c09e <__multf3+0x992>
   1c076:	00f67513          	andi	a0,a2,15
   1c07a:	4811                	li	a6,4
   1c07c:	03050163          	beq	a0,a6,1c09e <__multf3+0x992>
   1c080:	0611                	addi	a2,a2,4
   1c082:	c8b2                	sw	a2,80(sp)
   1c084:	00463613          	sltiu	a2,a2,4
   1c088:	96b2                	add	a3,a3,a2
   1c08a:	cab6                	sw	a3,84(sp)
   1c08c:	00c6b6b3          	sltu	a3,a3,a2
   1c090:	4666                	lw	a2,88(sp)
   1c092:	96b2                	add	a3,a3,a2
   1c094:	ccb6                	sw	a3,88(sp)
   1c096:	00c6b6b3          	sltu	a3,a3,a2
   1c09a:	96ae                	add	a3,a3,a1
   1c09c:	ceb6                	sw	a3,92(sp)
   1c09e:	00146413          	ori	s0,s0,1
   1c0a2:	46f6                	lw	a3,92(sp)
   1c0a4:	00b69613          	slli	a2,a3,0xb
   1c0a8:	00065a63          	bgez	a2,1c0bc <__multf3+0x9b0>
   1c0ac:	fff007b7          	lui	a5,0xfff00
   1c0b0:	17fd                	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffee0413>
   1c0b2:	8efd                	and	a3,a3,a5
   1c0b4:	ceb6                	sw	a3,92(sp)
   1c0b6:	46c2                	lw	a3,16(sp)
   1c0b8:	6791                	lui	a5,0x4
   1c0ba:	97b6                	add	a5,a5,a3
   1c0bc:	0894                	addi	a3,sp,80
   1c0be:	08e8                	addi	a0,sp,92
   1c0c0:	4290                	lw	a2,0(a3)
   1c0c2:	42cc                	lw	a1,4(a3)
   1c0c4:	820d                	srli	a2,a2,0x3
   1c0c6:	05f6                	slli	a1,a1,0x1d
   1c0c8:	8e4d                	or	a2,a2,a1
   1c0ca:	c290                	sw	a2,0(a3)
   1c0cc:	0691                	addi	a3,a3,4
   1c0ce:	fed519e3          	bne	a0,a3,1c0c0 <__multf3+0x9b4>
   1c0d2:	6621                	lui	a2,0x8
   1c0d4:	1679                	addi	a2,a2,-2 # 7ffe <exit-0x8096>
   1c0d6:	46f6                	lw	a3,92(sp)
   1c0d8:	65a1                	lui	a1,0x8
   1c0da:	04f64f63          	blt	a2,a5,1c138 <__multf3+0xa2c>
   1c0de:	828d                	srli	a3,a3,0x3
   1c0e0:	ceb6                	sw	a3,92(sp)
   1c0e2:	4576                	lw	a0,92(sp)
   1c0e4:	073e                	slli	a4,a4,0xf
   1c0e6:	8f5d                	or	a4,a4,a5
   1c0e8:	06a11623          	sh	a0,108(sp)
   1c0ec:	06e11723          	sh	a4,110(sp)
   1c0f0:	45c6                	lw	a1,80(sp)
   1c0f2:	4656                	lw	a2,84(sp)
   1c0f4:	46e6                	lw	a3,88(sp)
   1c0f6:	57b6                	lw	a5,108(sp)
   1c0f8:	c019                	beqz	s0,1c0fe <__multf3+0x9f2>
   1c0fa:	00142073          	csrs	fflags,s0
   1c0fe:	4732                	lw	a4,12(sp)
   1c100:	50fa                	lw	ra,188(sp)
   1c102:	546a                	lw	s0,184(sp)
   1c104:	c30c                	sw	a1,0(a4)
   1c106:	c350                	sw	a2,4(a4)
   1c108:	c714                	sw	a3,8(a4)
   1c10a:	c75c                	sw	a5,12(a4)
   1c10c:	54da                	lw	s1,180(sp)
   1c10e:	594a                	lw	s2,176(sp)
   1c110:	59ba                	lw	s3,172(sp)
   1c112:	5a2a                	lw	s4,168(sp)
   1c114:	5a9a                	lw	s5,164(sp)
   1c116:	5b0a                	lw	s6,160(sp)
   1c118:	4bfa                	lw	s7,156(sp)
   1c11a:	4c6a                	lw	s8,152(sp)
   1c11c:	4cda                	lw	s9,148(sp)
   1c11e:	4d4a                	lw	s10,144(sp)
   1c120:	4dba                	lw	s11,140(sp)
   1c122:	853a                	mv	a0,a4
   1c124:	6129                	addi	sp,sp,192
   1c126:	8082                	ret
   1c128:	fb3d                	bnez	a4,1c09e <__multf3+0x992>
   1c12a:	0621                	addi	a2,a2,8
   1c12c:	c8b2                	sw	a2,80(sp)
   1c12e:	00863613          	sltiu	a2,a2,8
   1c132:	bf99                	j	1c088 <__multf3+0x97c>
   1c134:	d72d                	beqz	a4,1c09e <__multf3+0x992>
   1c136:	bfd5                	j	1c12a <__multf3+0xa1e>
   1c138:	4789                	li	a5,2
   1c13a:	02f48463          	beq	s1,a5,1c162 <__multf3+0xa56>
   1c13e:	478d                	li	a5,3
   1c140:	00f48763          	beq	s1,a5,1c14e <__multf3+0xa42>
   1c144:	e491                	bnez	s1,1c150 <__multf3+0xa44>
   1c146:	4681                	li	a3,0
   1c148:	fff58793          	addi	a5,a1,-1 # 7fff <exit-0x8095>
   1c14c:	a021                	j	1c154 <__multf3+0xa48>
   1c14e:	df65                	beqz	a4,1c146 <__multf3+0xa3a>
   1c150:	56fd                	li	a3,-1
   1c152:	87b2                	mv	a5,a2
   1c154:	ceb6                	sw	a3,92(sp)
   1c156:	ccb6                	sw	a3,88(sp)
   1c158:	cab6                	sw	a3,84(sp)
   1c15a:	c8b6                	sw	a3,80(sp)
   1c15c:	00546413          	ori	s0,s0,5
   1c160:	b749                	j	1c0e2 <__multf3+0x9d6>
   1c162:	f375                	bnez	a4,1c146 <__multf3+0xa3a>
   1c164:	b7f5                	j	1c150 <__multf3+0xa44>
   1c166:	4685                	li	a3,1
   1c168:	ebb9                	bnez	a5,1c1be <__multf3+0xab2>
   1c16a:	4646                	lw	a2,80(sp)
   1c16c:	46f6                	lw	a3,92(sp)
   1c16e:	00767593          	andi	a1,a2,7
   1c172:	c1b1                	beqz	a1,1c1b6 <__multf3+0xaaa>
   1c174:	4809                	li	a6,2
   1c176:	45d6                	lw	a1,84(sp)
   1c178:	4566                	lw	a0,88(sp)
   1c17a:	00146413          	ori	s0,s0,1
   1c17e:	03048b63          	beq	s1,a6,1c1b4 <__multf3+0xaa8>
   1c182:	480d                	li	a6,3
   1c184:	03048363          	beq	s1,a6,1c1aa <__multf3+0xa9e>
   1c188:	e49d                	bnez	s1,1c1b6 <__multf3+0xaaa>
   1c18a:	00f67813          	andi	a6,a2,15
   1c18e:	4891                	li	a7,4
   1c190:	03180363          	beq	a6,a7,1c1b6 <__multf3+0xaaa>
   1c194:	0611                	addi	a2,a2,4
   1c196:	00463613          	sltiu	a2,a2,4
   1c19a:	95b2                	add	a1,a1,a2
   1c19c:	00c5b5b3          	sltu	a1,a1,a2
   1c1a0:	952e                	add	a0,a0,a1
   1c1a2:	00b53533          	sltu	a0,a0,a1
   1c1a6:	96aa                	add	a3,a3,a0
   1c1a8:	a039                	j	1c1b6 <__multf3+0xaaa>
   1c1aa:	e711                	bnez	a4,1c1b6 <__multf3+0xaaa>
   1c1ac:	0621                	addi	a2,a2,8
   1c1ae:	00863613          	sltiu	a2,a2,8
   1c1b2:	b7e5                	j	1c19a <__multf3+0xa8e>
   1c1b4:	ff65                	bnez	a4,1c1ac <__multf3+0xaa0>
   1c1b6:	82d1                	srli	a3,a3,0x14
   1c1b8:	0016c693          	xori	a3,a3,1
   1c1bc:	8a85                	andi	a3,a3,1
   1c1be:	4605                	li	a2,1
   1c1c0:	40f607b3          	sub	a5,a2,a5
   1c1c4:	07400593          	li	a1,116
   1c1c8:	18f5c163          	blt	a1,a5,1c34a <__multf3+0xc3e>
   1c1cc:	0890                	addi	a2,sp,80
   1c1ce:	4057d593          	srai	a1,a5,0x5
   1c1d2:	01f7f513          	andi	a0,a5,31
   1c1d6:	88b2                	mv	a7,a2
   1c1d8:	4781                	li	a5,0
   1c1da:	4801                	li	a6,0
   1c1dc:	02b81763          	bne	a6,a1,1c20a <__multf3+0xafe>
   1c1e0:	480d                	li	a6,3
   1c1e2:	40b80833          	sub	a6,a6,a1
   1c1e6:	00259893          	slli	a7,a1,0x2
   1c1ea:	e51d                	bnez	a0,1c218 <__multf3+0xb0c>
   1c1ec:	8332                	mv	t1,a2
   1c1ee:	01130e33          	add	t3,t1,a7
   1c1f2:	000e2e03          	lw	t3,0(t3)
   1c1f6:	0505                	addi	a0,a0,1
   1c1f8:	0311                	addi	t1,t1,4
   1c1fa:	ffc32e23          	sw	t3,-4(t1)
   1c1fe:	fea858e3          	bge	a6,a0,1c1ee <__multf3+0xae2>
   1c202:	4511                	li	a0,4
   1c204:	40b505b3          	sub	a1,a0,a1
   1c208:	a8a1                	j	1c260 <__multf3+0xb54>
   1c20a:	0008a303          	lw	t1,0(a7)
   1c20e:	0805                	addi	a6,a6,1
   1c210:	0891                	addi	a7,a7,4
   1c212:	0067e7b3          	or	a5,a5,t1
   1c216:	b7d9                	j	1c1dc <__multf3+0xad0>
   1c218:	05088313          	addi	t1,a7,80
   1c21c:	03010e13          	addi	t3,sp,48
   1c220:	9372                	add	t1,t1,t3
   1c222:	fd032303          	lw	t1,-48(t1)
   1c226:	02000e93          	li	t4,32
   1c22a:	40ae8eb3          	sub	t4,t4,a0
   1c22e:	01d31333          	sll	t1,t1,t4
   1c232:	0067e7b3          	or	a5,a5,t1
   1c236:	4f01                	li	t5,0
   1c238:	01160333          	add	t1,a2,a7
   1c23c:	411008b3          	neg	a7,a7
   1c240:	0b0f4d63          	blt	t5,a6,1c2fa <__multf3+0xbee>
   1c244:	4891                	li	a7,4
   1c246:	080a                	slli	a6,a6,0x2
   1c248:	40b885b3          	sub	a1,a7,a1
   1c24c:	05080813          	addi	a6,a6,80
   1c250:	03010893          	addi	a7,sp,48
   1c254:	9846                	add	a6,a6,a7
   1c256:	48f6                	lw	a7,92(sp)
   1c258:	00a8d533          	srl	a0,a7,a0
   1c25c:	fca82823          	sw	a0,-48(a6)
   1c260:	4511                	li	a0,4
   1c262:	8d0d                	sub	a0,a0,a1
   1c264:	050a                	slli	a0,a0,0x2
   1c266:	058a                	slli	a1,a1,0x2
   1c268:	4821                	li	a6,8
   1c26a:	95b2                	add	a1,a1,a2
   1c26c:	01056863          	bltu	a0,a6,1c27c <__multf3+0xb70>
   1c270:	0005a023          	sw	zero,0(a1)
   1c274:	0005a223          	sw	zero,4(a1)
   1c278:	1561                	addi	a0,a0,-8
   1c27a:	05a1                	addi	a1,a1,8
   1c27c:	4811                	li	a6,4
   1c27e:	01056463          	bltu	a0,a6,1c286 <__multf3+0xb7a>
   1c282:	0005a023          	sw	zero,0(a1)
   1c286:	45c6                	lw	a1,80(sp)
   1c288:	00f037b3          	snez	a5,a5
   1c28c:	8fcd                	or	a5,a5,a1
   1c28e:	c8be                	sw	a5,80(sp)
   1c290:	0077f593          	andi	a1,a5,7
   1c294:	c1a1                	beqz	a1,1c2d4 <__multf3+0xbc8>
   1c296:	4509                	li	a0,2
   1c298:	45f6                	lw	a1,92(sp)
   1c29a:	08a48763          	beq	s1,a0,1c328 <__multf3+0xc1c>
   1c29e:	450d                	li	a0,3
   1c2a0:	06a48e63          	beq	s1,a0,1c31c <__multf3+0xc10>
   1c2a4:	e495                	bnez	s1,1c2d0 <__multf3+0xbc4>
   1c2a6:	00f7f513          	andi	a0,a5,15
   1c2aa:	4811                	li	a6,4
   1c2ac:	03050263          	beq	a0,a6,1c2d0 <__multf3+0xbc4>
   1c2b0:	0791                	addi	a5,a5,4 # 4004 <exit-0xc090>
   1c2b2:	c8be                	sw	a5,80(sp)
   1c2b4:	0047b793          	sltiu	a5,a5,4
   1c2b8:	4556                	lw	a0,84(sp)
   1c2ba:	97aa                	add	a5,a5,a0
   1c2bc:	cabe                	sw	a5,84(sp)
   1c2be:	00a7b7b3          	sltu	a5,a5,a0
   1c2c2:	4566                	lw	a0,88(sp)
   1c2c4:	97aa                	add	a5,a5,a0
   1c2c6:	ccbe                	sw	a5,88(sp)
   1c2c8:	00a7b7b3          	sltu	a5,a5,a0
   1c2cc:	97ae                	add	a5,a5,a1
   1c2ce:	cebe                	sw	a5,92(sp)
   1c2d0:	00146413          	ori	s0,s0,1
   1c2d4:	45f6                	lw	a1,92(sp)
   1c2d6:	00c59793          	slli	a5,a1,0xc
   1c2da:	0407d963          	bgez	a5,1c32c <__multf3+0xc20>
   1c2de:	ce82                	sw	zero,92(sp)
   1c2e0:	cc82                	sw	zero,88(sp)
   1c2e2:	ca82                	sw	zero,84(sp)
   1c2e4:	c882                	sw	zero,80(sp)
   1c2e6:	00146413          	ori	s0,s0,1
   1c2ea:	4785                	li	a5,1
   1c2ec:	de068be3          	beqz	a3,1c0e2 <__multf3+0x9d6>
   1c2f0:	00147693          	andi	a3,s0,1
   1c2f4:	0686                	slli	a3,a3,0x1
   1c2f6:	8c55                	or	s0,s0,a3
   1c2f8:	b3ed                	j	1c0e2 <__multf3+0x9d6>
   1c2fa:	00032e03          	lw	t3,0(t1)
   1c2fe:	00432f83          	lw	t6,4(t1)
   1c302:	011302b3          	add	t0,t1,a7
   1c306:	00ae5e33          	srl	t3,t3,a0
   1c30a:	01df9fb3          	sll	t6,t6,t4
   1c30e:	01fe6e33          	or	t3,t3,t6
   1c312:	01c2a023          	sw	t3,0(t0)
   1c316:	0f05                	addi	t5,t5,1
   1c318:	0311                	addi	t1,t1,4
   1c31a:	b71d                	j	1c240 <__multf3+0xb34>
   1c31c:	fb55                	bnez	a4,1c2d0 <__multf3+0xbc4>
   1c31e:	07a1                	addi	a5,a5,8
   1c320:	c8be                	sw	a5,80(sp)
   1c322:	0087b793          	sltiu	a5,a5,8
   1c326:	bf49                	j	1c2b8 <__multf3+0xbac>
   1c328:	d745                	beqz	a4,1c2d0 <__multf3+0xbc4>
   1c32a:	bfd5                	j	1c31e <__multf3+0xc12>
   1c32c:	00c60813          	addi	a6,a2,12
   1c330:	421c                	lw	a5,0(a2)
   1c332:	4248                	lw	a0,4(a2)
   1c334:	838d                	srli	a5,a5,0x3
   1c336:	0576                	slli	a0,a0,0x1d
   1c338:	8fc9                	or	a5,a5,a0
   1c33a:	c21c                	sw	a5,0(a2)
   1c33c:	0611                	addi	a2,a2,4
   1c33e:	fec819e3          	bne	a6,a2,1c330 <__multf3+0xc24>
   1c342:	818d                	srli	a1,a1,0x3
   1c344:	ceae                	sw	a1,92(sp)
   1c346:	4781                	li	a5,0
   1c348:	b755                	j	1c2ec <__multf3+0xbe0>
   1c34a:	46d6                	lw	a3,84(sp)
   1c34c:	47c6                	lw	a5,80(sp)
   1c34e:	8fd5                	or	a5,a5,a3
   1c350:	46e6                	lw	a3,88(sp)
   1c352:	8fd5                	or	a5,a5,a3
   1c354:	46f6                	lw	a3,92(sp)
   1c356:	8fd5                	or	a5,a5,a3
   1c358:	c395                	beqz	a5,1c37c <__multf3+0xc70>
   1c35a:	ce82                	sw	zero,92(sp)
   1c35c:	cc82                	sw	zero,88(sp)
   1c35e:	ca82                	sw	zero,84(sp)
   1c360:	c8b2                	sw	a2,80(sp)
   1c362:	4789                	li	a5,2
   1c364:	00146413          	ori	s0,s0,1
   1c368:	02f48263          	beq	s1,a5,1c38c <__multf3+0xc80>
   1c36c:	478d                	li	a5,3
   1c36e:	00f48b63          	beq	s1,a5,1c384 <__multf3+0xc78>
   1c372:	4795                	li	a5,5
   1c374:	c891                	beqz	s1,1c388 <__multf3+0xc7c>
   1c376:	47c6                	lw	a5,80(sp)
   1c378:	838d                	srli	a5,a5,0x3
   1c37a:	c8be                	sw	a5,80(sp)
   1c37c:	00246413          	ori	s0,s0,2
   1c380:	4781                	li	a5,0
   1c382:	b385                	j	1c0e2 <__multf3+0x9d6>
   1c384:	fb6d                	bnez	a4,1c376 <__multf3+0xc6a>
   1c386:	47a5                	li	a5,9
   1c388:	c8be                	sw	a5,80(sp)
   1c38a:	b7f5                	j	1c376 <__multf3+0xc6a>
   1c38c:	ff6d                	bnez	a4,1c386 <__multf3+0xc7a>
   1c38e:	b7e5                	j	1c376 <__multf3+0xc6a>
   1c390:	ce82                	sw	zero,92(sp)
   1c392:	cc82                	sw	zero,88(sp)
   1c394:	ca82                	sw	zero,84(sp)
   1c396:	c882                	sw	zero,80(sp)
   1c398:	b7e5                	j	1c380 <__multf3+0xc74>
   1c39a:	67a1                	lui	a5,0x8
   1c39c:	ce82                	sw	zero,92(sp)
   1c39e:	cc82                	sw	zero,88(sp)
   1c3a0:	ca82                	sw	zero,84(sp)
   1c3a2:	c882                	sw	zero,80(sp)
   1c3a4:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1c3a6:	bb35                	j	1c0e2 <__multf3+0x9d6>

0001c3a8 <__subtf3>:
   1c3a8:	7159                	addi	sp,sp,-112
   1c3aa:	d2a6                	sw	s1,100(sp)
   1c3ac:	d0ca                	sw	s2,96(sp)
   1c3ae:	cece                	sw	s3,92(sp)
   1c3b0:	c2e6                	sw	s9,68(sp)
   1c3b2:	d686                	sw	ra,108(sp)
   1c3b4:	d4a2                	sw	s0,104(sp)
   1c3b6:	ccd2                	sw	s4,88(sp)
   1c3b8:	cad6                	sw	s5,84(sp)
   1c3ba:	c8da                	sw	s6,80(sp)
   1c3bc:	c6de                	sw	s7,76(sp)
   1c3be:	c4e2                	sw	s8,72(sp)
   1c3c0:	892a                	mv	s2,a0
   1c3c2:	4198                	lw	a4,0(a1)
   1c3c4:	41d4                	lw	a3,4(a1)
   1c3c6:	459c                	lw	a5,8(a1)
   1c3c8:	00c5a983          	lw	s3,12(a1)
   1c3cc:	4204                	lw	s1,0(a2)
   1c3ce:	00462883          	lw	a7,4(a2)
   1c3d2:	00862803          	lw	a6,8(a2)
   1c3d6:	00c62c83          	lw	s9,12(a2)
   1c3da:	00202a73          	frrm	s4
   1c3de:	dc3e                	sw	a5,56(sp)
   1c3e0:	c43e                	sw	a5,8(sp)
   1c3e2:	01099793          	slli	a5,s3,0x10
   1c3e6:	83c1                	srli	a5,a5,0x10
   1c3e8:	00199413          	slli	s0,s3,0x1
   1c3ec:	858a                	mv	a1,sp
   1c3ee:	de4e                	sw	s3,60(sp)
   1c3f0:	c63e                	sw	a5,12(sp)
   1c3f2:	d83a                	sw	a4,48(sp)
   1c3f4:	da36                	sw	a3,52(sp)
   1c3f6:	c03a                	sw	a4,0(sp)
   1c3f8:	c236                	sw	a3,4(sp)
   1c3fa:	8045                	srli	s0,s0,0x11
   1c3fc:	01f9d993          	srli	s3,s3,0x1f
   1c400:	ff410313          	addi	t1,sp,-12
   1c404:	87ae                	mv	a5,a1
   1c406:	852e                	mv	a0,a1
   1c408:	47d4                	lw	a3,12(a5)
   1c40a:	4790                	lw	a2,8(a5)
   1c40c:	17f1                	addi	a5,a5,-4
   1c40e:	068e                	slli	a3,a3,0x3
   1c410:	8275                	srli	a2,a2,0x1d
   1c412:	8ed1                	or	a3,a3,a2
   1c414:	cb94                	sw	a3,16(a5)
   1c416:	fef319e3          	bne	t1,a5,1c408 <__subtf3+0x60>
   1c41a:	010c9793          	slli	a5,s9,0x10
   1c41e:	83c1                	srli	a5,a5,0x10
   1c420:	001c9a93          	slli	s5,s9,0x1
   1c424:	070e                	slli	a4,a4,0x3
   1c426:	dc42                	sw	a6,56(sp)
   1c428:	cc42                	sw	a6,24(sp)
   1c42a:	01010813          	addi	a6,sp,16
   1c42e:	da46                	sw	a7,52(sp)
   1c430:	de66                	sw	s9,60(sp)
   1c432:	ca46                	sw	a7,20(sp)
   1c434:	ce3e                	sw	a5,28(sp)
   1c436:	c03a                	sw	a4,0(sp)
   1c438:	d826                	sw	s1,48(sp)
   1c43a:	c826                	sw	s1,16(sp)
   1c43c:	011ada93          	srli	s5,s5,0x11
   1c440:	01fcdc93          	srli	s9,s9,0x1f
   1c444:	00410893          	addi	a7,sp,4
   1c448:	87c2                	mv	a5,a6
   1c44a:	8e42                	mv	t3,a6
   1c44c:	47d4                	lw	a3,12(a5)
   1c44e:	4790                	lw	a2,8(a5)
   1c450:	17f1                	addi	a5,a5,-4
   1c452:	068e                	slli	a3,a3,0x3
   1c454:	8275                	srli	a2,a2,0x1d
   1c456:	8ed1                	or	a3,a3,a2
   1c458:	cb94                	sw	a3,16(a5)
   1c45a:	fef899e3          	bne	a7,a5,1c44c <__subtf3+0xa4>
   1c45e:	048e                	slli	s1,s1,0x3
   1c460:	67a1                	lui	a5,0x8
   1c462:	c826                	sw	s1,16(sp)
   1c464:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1c466:	00fa9963          	bne	s5,a5,1c478 <__subtf3+0xd0>
   1c46a:	46e2                	lw	a3,24(sp)
   1c46c:	47d2                	lw	a5,20(sp)
   1c46e:	8fd5                	or	a5,a5,a3
   1c470:	46f2                	lw	a3,28(sp)
   1c472:	8fd5                	or	a5,a5,a3
   1c474:	8fc5                	or	a5,a5,s1
   1c476:	e399                	bnez	a5,1c47c <__subtf3+0xd4>
   1c478:	001ccc93          	xori	s9,s9,1
   1c47c:	415407b3          	sub	a5,s0,s5
   1c480:	5d3c9c63          	bne	s9,s3,1ca58 <__subtf3+0x6b0>
   1c484:	24f05963          	blez	a5,1c6d6 <__subtf3+0x32e>
   1c488:	4312                	lw	t1,4(sp)
   1c48a:	48a2                	lw	a7,8(sp)
   1c48c:	45b2                	lw	a1,12(sp)
   1c48e:	080a9963          	bnez	s5,1c520 <__subtf3+0x178>
   1c492:	4552                	lw	a0,20(sp)
   1c494:	46e2                	lw	a3,24(sp)
   1c496:	4ef2                	lw	t4,28(sp)
   1c498:	00d56633          	or	a2,a0,a3
   1c49c:	01d66633          	or	a2,a2,t4
   1c4a0:	8e45                	or	a2,a2,s1
   1c4a2:	e61d                	bnez	a2,1c4d0 <__subtf3+0x128>
   1c4a4:	66a1                	lui	a3,0x8
   1c4a6:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1c4a8:	00d79e63          	bne	a5,a3,1c4c4 <__subtf3+0x11c>
   1c4ac:	011366b3          	or	a3,t1,a7
   1c4b0:	8ecd                	or	a3,a3,a1
   1c4b2:	8ed9                	or	a3,a3,a4
   1c4b4:	ca81                	beqz	a3,1c4c4 <__subtf3+0x11c>
   1c4b6:	0125da93          	srli	s5,a1,0x12
   1c4ba:	001aca93          	xori	s5,s5,1
   1c4be:	001afa93          	andi	s5,s5,1
   1c4c2:	0a92                	slli	s5,s5,0x4
   1c4c4:	d03a                	sw	a4,32(sp)
   1c4c6:	d21a                	sw	t1,36(sp)
   1c4c8:	d446                	sw	a7,40(sp)
   1c4ca:	d62e                	sw	a1,44(sp)
   1c4cc:	8456                	mv	s0,s5
   1c4ce:	ac99                	j	1c724 <__subtf3+0x37c>
   1c4d0:	fff78613          	addi	a2,a5,-1
   1c4d4:	ea0d                	bnez	a2,1c506 <__subtf3+0x15e>
   1c4d6:	94ba                	add	s1,s1,a4
   1c4d8:	932a                	add	t1,t1,a0
   1c4da:	d026                	sw	s1,32(sp)
   1c4dc:	00e4b4b3          	sltu	s1,s1,a4
   1c4e0:	949a                	add	s1,s1,t1
   1c4e2:	d226                	sw	s1,36(sp)
   1c4e4:	00a33533          	sltu	a0,t1,a0
   1c4e8:	0064b4b3          	sltu	s1,s1,t1
   1c4ec:	98b6                	add	a7,a7,a3
   1c4ee:	8d45                	or	a0,a0,s1
   1c4f0:	9546                	add	a0,a0,a7
   1c4f2:	d42a                	sw	a0,40(sp)
   1c4f4:	00d8b733          	sltu	a4,a7,a3
   1c4f8:	01153533          	sltu	a0,a0,a7
   1c4fc:	8f49                	or	a4,a4,a0
   1c4fe:	9eae                	add	t4,t4,a1
   1c500:	9776                	add	a4,a4,t4
   1c502:	4785                	li	a5,1
   1c504:	a299                	j	1c64a <__subtf3+0x2a2>
   1c506:	66a1                	lui	a3,0x8
   1c508:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1c50a:	fad781e3          	beq	a5,a3,1c4ac <__subtf3+0x104>
   1c50e:	07400793          	li	a5,116
   1c512:	04c7d863          	bge	a5,a2,1c562 <__subtf3+0x1ba>
   1c516:	ce02                	sw	zero,28(sp)
   1c518:	cc02                	sw	zero,24(sp)
   1c51a:	ca02                	sw	zero,20(sp)
   1c51c:	4785                	li	a5,1
   1c51e:	a8dd                	j	1c614 <__subtf3+0x26c>
   1c520:	66a1                	lui	a3,0x8
   1c522:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1c524:	02d41563          	bne	s0,a3,1c54e <__subtf3+0x1a6>
   1c528:	011367b3          	or	a5,t1,a7
   1c52c:	8fcd                	or	a5,a5,a1
   1c52e:	8fd9                	or	a5,a5,a4
   1c530:	4681                	li	a3,0
   1c532:	c799                	beqz	a5,1c540 <__subtf3+0x198>
   1c534:	0125d693          	srli	a3,a1,0x12
   1c538:	0016c693          	xori	a3,a3,1
   1c53c:	8a85                	andi	a3,a3,1
   1c53e:	0692                	slli	a3,a3,0x4
   1c540:	d03a                	sw	a4,32(sp)
   1c542:	d21a                	sw	t1,36(sp)
   1c544:	d446                	sw	a7,40(sp)
   1c546:	d62e                	sw	a1,44(sp)
   1c548:	87a2                	mv	a5,s0
   1c54a:	8436                	mv	s0,a3
   1c54c:	aae1                	j	1c724 <__subtf3+0x37c>
   1c54e:	46f2                	lw	a3,28(sp)
   1c550:	00080637          	lui	a2,0x80
   1c554:	8ed1                	or	a3,a3,a2
   1c556:	ce36                	sw	a3,28(sp)
   1c558:	07400693          	li	a3,116
   1c55c:	faf6cde3          	blt	a3,a5,1c516 <__subtf3+0x16e>
   1c560:	863e                	mv	a2,a5
   1c562:	40565693          	srai	a3,a2,0x5
   1c566:	8ec2                	mv	t4,a6
   1c568:	8a7d                	andi	a2,a2,31
   1c56a:	4781                	li	a5,0
   1c56c:	4501                	li	a0,0
   1c56e:	02d51563          	bne	a0,a3,1c598 <__subtf3+0x1f0>
   1c572:	450d                	li	a0,3
   1c574:	8d15                	sub	a0,a0,a3
   1c576:	00269e93          	slli	t4,a3,0x2
   1c57a:	e615                	bnez	a2,1c5a6 <__subtf3+0x1fe>
   1c57c:	01d80f33          	add	t5,a6,t4
   1c580:	000f2f03          	lw	t5,0(t5)
   1c584:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x60415>
   1c586:	0811                	addi	a6,a6,4
   1c588:	ffe82e23          	sw	t5,-4(a6)
   1c58c:	fec558e3          	bge	a0,a2,1c57c <__subtf3+0x1d4>
   1c590:	4611                	li	a2,4
   1c592:	40d606b3          	sub	a3,a2,a3
   1c596:	a881                	j	1c5e6 <__subtf3+0x23e>
   1c598:	000eaf03          	lw	t5,0(t4)
   1c59c:	0505                	addi	a0,a0,1
   1c59e:	0e91                	addi	t4,t4,4
   1c5a0:	01e7e7b3          	or	a5,a5,t5
   1c5a4:	b7e9                	j	1c56e <__subtf3+0x1c6>
   1c5a6:	040e8493          	addi	s1,t4,64
   1c5aa:	00248f33          	add	t5,s1,sp
   1c5ae:	fd0f2f03          	lw	t5,-48(t5)
   1c5b2:	02000393          	li	t2,32
   1c5b6:	40c383b3          	sub	t2,t2,a2
   1c5ba:	007f1f33          	sll	t5,t5,t2
   1c5be:	9876                	add	a6,a6,t4
   1c5c0:	01e7e7b3          	or	a5,a5,t5
   1c5c4:	41d00eb3          	neg	t4,t4
   1c5c8:	4f81                	li	t6,0
   1c5ca:	0eafc563          	blt	t6,a0,1c6b4 <__subtf3+0x30c>
   1c5ce:	4811                	li	a6,4
   1c5d0:	40d806b3          	sub	a3,a6,a3
   1c5d4:	4872                	lw	a6,28(sp)
   1c5d6:	050a                	slli	a0,a0,0x2
   1c5d8:	04050513          	addi	a0,a0,64
   1c5dc:	950a                	add	a0,a0,sp
   1c5de:	00c85633          	srl	a2,a6,a2
   1c5e2:	fcc52823          	sw	a2,-48(a0)
   1c5e6:	4611                	li	a2,4
   1c5e8:	8e15                	sub	a2,a2,a3
   1c5ea:	060a                	slli	a2,a2,0x2
   1c5ec:	068a                	slli	a3,a3,0x2
   1c5ee:	4521                	li	a0,8
   1c5f0:	96f2                	add	a3,a3,t3
   1c5f2:	00a66863          	bltu	a2,a0,1c602 <__subtf3+0x25a>
   1c5f6:	0006a023          	sw	zero,0(a3)
   1c5fa:	0006a223          	sw	zero,4(a3)
   1c5fe:	1661                	addi	a2,a2,-8
   1c600:	06a1                	addi	a3,a3,8
   1c602:	4511                	li	a0,4
   1c604:	00a66463          	bltu	a2,a0,1c60c <__subtf3+0x264>
   1c608:	0006a023          	sw	zero,0(a3)
   1c60c:	46c2                	lw	a3,16(sp)
   1c60e:	00f037b3          	snez	a5,a5
   1c612:	8fd5                	or	a5,a5,a3
   1c614:	46d2                	lw	a3,20(sp)
   1c616:	c83e                	sw	a5,16(sp)
   1c618:	97ba                	add	a5,a5,a4
   1c61a:	9336                	add	t1,t1,a3
   1c61c:	d03e                	sw	a5,32(sp)
   1c61e:	00e7b7b3          	sltu	a5,a5,a4
   1c622:	4762                	lw	a4,24(sp)
   1c624:	979a                	add	a5,a5,t1
   1c626:	d23e                	sw	a5,36(sp)
   1c628:	00d336b3          	sltu	a3,t1,a3
   1c62c:	0067b7b3          	sltu	a5,a5,t1
   1c630:	98ba                	add	a7,a7,a4
   1c632:	8fd5                	or	a5,a5,a3
   1c634:	97c6                	add	a5,a5,a7
   1c636:	d43e                	sw	a5,40(sp)
   1c638:	00e8b733          	sltu	a4,a7,a4
   1c63c:	0117b7b3          	sltu	a5,a5,a7
   1c640:	8f5d                	or	a4,a4,a5
   1c642:	47f2                	lw	a5,28(sp)
   1c644:	97ae                	add	a5,a5,a1
   1c646:	973e                	add	a4,a4,a5
   1c648:	87a2                	mv	a5,s0
   1c64a:	d63a                	sw	a4,44(sp)
   1c64c:	00c71693          	slli	a3,a4,0xc
   1c650:	4401                	li	s0,0
   1c652:	0c06d963          	bgez	a3,1c724 <__subtf3+0x37c>
   1c656:	5602                	lw	a2,32(sp)
   1c658:	fff806b7          	lui	a3,0xfff80
   1c65c:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff60413>
   1c65e:	8f75                	and	a4,a4,a3
   1c660:	d63a                	sw	a4,44(sp)
   1c662:	0785                	addi	a5,a5,1
   1c664:	067e                	slli	a2,a2,0x1f
   1c666:	1014                	addi	a3,sp,32
   1c668:	02c10813          	addi	a6,sp,44
   1c66c:	428c                	lw	a1,0(a3)
   1c66e:	42c8                	lw	a0,4(a3)
   1c670:	8185                	srli	a1,a1,0x1
   1c672:	057e                	slli	a0,a0,0x1f
   1c674:	8dc9                	or	a1,a1,a0
   1c676:	c28c                	sw	a1,0(a3)
   1c678:	0691                	addi	a3,a3,4
   1c67a:	fed819e3          	bne	a6,a3,1c66c <__subtf3+0x2c4>
   1c67e:	5682                	lw	a3,32(sp)
   1c680:	8305                	srli	a4,a4,0x1
   1c682:	d63a                	sw	a4,44(sp)
   1c684:	00c03733          	snez	a4,a2
   1c688:	8f55                	or	a4,a4,a3
   1c68a:	d03a                	sw	a4,32(sp)
   1c68c:	6721                	lui	a4,0x8
   1c68e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c690:	4401                	li	s0,0
   1c692:	08e79963          	bne	a5,a4,1c724 <__subtf3+0x37c>
   1c696:	3a0a0963          	beqz	s4,1ca48 <__subtf3+0x6a0>
   1c69a:	478d                	li	a5,3
   1c69c:	3afa1163          	bne	s4,a5,1ca3e <__subtf3+0x696>
   1c6a0:	3a098463          	beqz	s3,1ca48 <__subtf3+0x6a0>
   1c6a4:	57fd                	li	a5,-1
   1c6a6:	d63e                	sw	a5,44(sp)
   1c6a8:	d43e                	sw	a5,40(sp)
   1c6aa:	d23e                	sw	a5,36(sp)
   1c6ac:	d03e                	sw	a5,32(sp)
   1c6ae:	67a1                	lui	a5,0x8
   1c6b0:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   1c6b2:	a64d                	j	1ca54 <__subtf3+0x6ac>
   1c6b4:	00082f03          	lw	t5,0(a6)
   1c6b8:	00482283          	lw	t0,4(a6)
   1c6bc:	01d804b3          	add	s1,a6,t4
   1c6c0:	00cf5f33          	srl	t5,t5,a2
   1c6c4:	007292b3          	sll	t0,t0,t2
   1c6c8:	005f6f33          	or	t5,t5,t0
   1c6cc:	01e4a023          	sw	t5,0(s1)
   1c6d0:	0f85                	addi	t6,t6,1
   1c6d2:	0811                	addi	a6,a6,4
   1c6d4:	bddd                	j	1c5ca <__subtf3+0x222>
   1c6d6:	4bd2                	lw	s7,20(sp)
   1c6d8:	4c62                	lw	s8,24(sp)
   1c6da:	4b72                	lw	s6,28(sp)
   1c6dc:	1e078363          	beqz	a5,1c8c2 <__subtf3+0x51a>
   1c6e0:	408a87b3          	sub	a5,s5,s0
   1c6e4:	e859                	bnez	s0,1c77a <__subtf3+0x3d2>
   1c6e6:	4612                	lw	a2,4(sp)
   1c6e8:	46a2                	lw	a3,8(sp)
   1c6ea:	48b2                	lw	a7,12(sp)
   1c6ec:	00d66833          	or	a6,a2,a3
   1c6f0:	01186833          	or	a6,a6,a7
   1c6f4:	00e86833          	or	a6,a6,a4
   1c6f8:	02081963          	bnez	a6,1c72a <__subtf3+0x382>
   1c6fc:	6721                	lui	a4,0x8
   1c6fe:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c700:	00e79e63          	bne	a5,a4,1c71c <__subtf3+0x374>
   1c704:	018be733          	or	a4,s7,s8
   1c708:	01676733          	or	a4,a4,s6
   1c70c:	8f45                	or	a4,a4,s1
   1c70e:	c719                	beqz	a4,1c71c <__subtf3+0x374>
   1c710:	012b5413          	srli	s0,s6,0x12
   1c714:	00144413          	xori	s0,s0,1
   1c718:	8805                	andi	s0,s0,1
   1c71a:	0412                	slli	s0,s0,0x4
   1c71c:	d026                	sw	s1,32(sp)
   1c71e:	d25e                	sw	s7,36(sp)
   1c720:	d462                	sw	s8,40(sp)
   1c722:	d65a                	sw	s6,44(sp)
   1c724:	4681                	li	a3,0
   1c726:	3fb0006f          	j	1d320 <__subtf3+0xf78>
   1c72a:	fff78813          	addi	a6,a5,-1
   1c72e:	02081963          	bnez	a6,1c760 <__subtf3+0x3b8>
   1c732:	94ba                	add	s1,s1,a4
   1c734:	9bb2                	add	s7,s7,a2
   1c736:	d026                	sw	s1,32(sp)
   1c738:	00e4b4b3          	sltu	s1,s1,a4
   1c73c:	94de                	add	s1,s1,s7
   1c73e:	d226                	sw	s1,36(sp)
   1c740:	00cbb633          	sltu	a2,s7,a2
   1c744:	0174b4b3          	sltu	s1,s1,s7
   1c748:	9c36                	add	s8,s8,a3
   1c74a:	8e45                	or	a2,a2,s1
   1c74c:	9662                	add	a2,a2,s8
   1c74e:	d432                	sw	a2,40(sp)
   1c750:	00dc3733          	sltu	a4,s8,a3
   1c754:	01863633          	sltu	a2,a2,s8
   1c758:	8f51                	or	a4,a4,a2
   1c75a:	98da                	add	a7,a7,s6
   1c75c:	9746                	add	a4,a4,a7
   1c75e:	b355                	j	1c502 <__subtf3+0x15a>
   1c760:	6721                	lui	a4,0x8
   1c762:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c764:	fae780e3          	beq	a5,a4,1c704 <__subtf3+0x35c>
   1c768:	07400793          	li	a5,116
   1c76c:	0507d863          	bge	a5,a6,1c7bc <__subtf3+0x414>
   1c770:	c602                	sw	zero,12(sp)
   1c772:	c402                	sw	zero,8(sp)
   1c774:	c202                	sw	zero,4(sp)
   1c776:	4785                	li	a5,1
   1c778:	a8cd                	j	1c86a <__subtf3+0x4c2>
   1c77a:	6721                	lui	a4,0x8
   1c77c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1c77e:	02ea9563          	bne	s5,a4,1c7a8 <__subtf3+0x400>
   1c782:	018be7b3          	or	a5,s7,s8
   1c786:	0167e7b3          	or	a5,a5,s6
   1c78a:	8fc5                	or	a5,a5,s1
   1c78c:	4401                	li	s0,0
   1c78e:	c799                	beqz	a5,1c79c <__subtf3+0x3f4>
   1c790:	012b5413          	srli	s0,s6,0x12
   1c794:	00144413          	xori	s0,s0,1
   1c798:	8805                	andi	s0,s0,1
   1c79a:	0412                	slli	s0,s0,0x4
   1c79c:	d026                	sw	s1,32(sp)
   1c79e:	d25e                	sw	s7,36(sp)
   1c7a0:	d462                	sw	s8,40(sp)
   1c7a2:	d65a                	sw	s6,44(sp)
   1c7a4:	87d6                	mv	a5,s5
   1c7a6:	bfbd                	j	1c724 <__subtf3+0x37c>
   1c7a8:	4732                	lw	a4,12(sp)
   1c7aa:	000806b7          	lui	a3,0x80
   1c7ae:	8f55                	or	a4,a4,a3
   1c7b0:	c63a                	sw	a4,12(sp)
   1c7b2:	07400713          	li	a4,116
   1c7b6:	faf74de3          	blt	a4,a5,1c770 <__subtf3+0x3c8>
   1c7ba:	883e                	mv	a6,a5
   1c7bc:	02000713          	li	a4,32
   1c7c0:	02e84733          	div	a4,a6,a4
   1c7c4:	86ae                	mv	a3,a1
   1c7c6:	4401                	li	s0,0
   1c7c8:	4781                	li	a5,0
   1c7ca:	02e7c663          	blt	a5,a4,1c7f6 <__subtf3+0x44e>
   1c7ce:	478d                	li	a5,3
   1c7d0:	01f87893          	andi	a7,a6,31
   1c7d4:	8f99                	sub	a5,a5,a4
   1c7d6:	00271613          	slli	a2,a4,0x2
   1c7da:	02089363          	bnez	a7,1c800 <__subtf3+0x458>
   1c7de:	00c586b3          	add	a3,a1,a2
   1c7e2:	4294                	lw	a3,0(a3)
   1c7e4:	0885                	addi	a7,a7,1
   1c7e6:	c194                	sw	a3,0(a1)
   1c7e8:	0591                	addi	a1,a1,4
   1c7ea:	ff17dae3          	bge	a5,a7,1c7de <__subtf3+0x436>
   1c7ee:	4791                	li	a5,4
   1c7f0:	40e78733          	sub	a4,a5,a4
   1c7f4:	a899                	j	1c84a <__subtf3+0x4a2>
   1c7f6:	4290                	lw	a2,0(a3)
   1c7f8:	0785                	addi	a5,a5,1
   1c7fa:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x60418>
   1c7fc:	8c51                	or	s0,s0,a2
   1c7fe:	b7f1                	j	1c7ca <__subtf3+0x422>
   1c800:	02000693          	li	a3,32
   1c804:	02d86833          	rem	a6,a6,a3
   1c808:	41068833          	sub	a6,a3,a6
   1c80c:	86ba                	mv	a3,a4
   1c80e:	00075363          	bgez	a4,1c814 <__subtf3+0x46c>
   1c812:	4681                	li	a3,0
   1c814:	068a                	slli	a3,a3,0x2
   1c816:	04068693          	addi	a3,a3,64
   1c81a:	968a                	add	a3,a3,sp
   1c81c:	fc06a683          	lw	a3,-64(a3)
   1c820:	95b2                	add	a1,a1,a2
   1c822:	4301                	li	t1,0
   1c824:	010696b3          	sll	a3,a3,a6
   1c828:	8c55                	or	s0,s0,a3
   1c82a:	40c00633          	neg	a2,a2
   1c82e:	06f34a63          	blt	t1,a5,1c8a2 <__subtf3+0x4fa>
   1c832:	4691                	li	a3,4
   1c834:	40e68733          	sub	a4,a3,a4
   1c838:	46b2                	lw	a3,12(sp)
   1c83a:	078a                	slli	a5,a5,0x2
   1c83c:	04078793          	addi	a5,a5,64
   1c840:	978a                	add	a5,a5,sp
   1c842:	0116d6b3          	srl	a3,a3,a7
   1c846:	fcd7a023          	sw	a3,-64(a5)
   1c84a:	00572793          	slti	a5,a4,5
   1c84e:	4601                	li	a2,0
   1c850:	c781                	beqz	a5,1c858 <__subtf3+0x4b0>
   1c852:	4611                	li	a2,4
   1c854:	8e19                	sub	a2,a2,a4
   1c856:	060a                	slli	a2,a2,0x2
   1c858:	070a                	slli	a4,a4,0x2
   1c85a:	953a                	add	a0,a0,a4
   1c85c:	4581                	li	a1,0
   1c85e:	a93f70ef          	jal	142f0 <memset>
   1c862:	4702                	lw	a4,0(sp)
   1c864:	008037b3          	snez	a5,s0
   1c868:	8fd9                	or	a5,a5,a4
   1c86a:	4692                	lw	a3,4(sp)
   1c86c:	c03e                	sw	a5,0(sp)
   1c86e:	97a6                	add	a5,a5,s1
   1c870:	9bb6                	add	s7,s7,a3
   1c872:	4722                	lw	a4,8(sp)
   1c874:	d03e                	sw	a5,32(sp)
   1c876:	0097b7b3          	sltu	a5,a5,s1
   1c87a:	97de                	add	a5,a5,s7
   1c87c:	d23e                	sw	a5,36(sp)
   1c87e:	00dbb6b3          	sltu	a3,s7,a3
   1c882:	0177b7b3          	sltu	a5,a5,s7
   1c886:	9c3a                	add	s8,s8,a4
   1c888:	8fd5                	or	a5,a5,a3
   1c88a:	97e2                	add	a5,a5,s8
   1c88c:	d43e                	sw	a5,40(sp)
   1c88e:	00ec3733          	sltu	a4,s8,a4
   1c892:	0187b7b3          	sltu	a5,a5,s8
   1c896:	8f5d                	or	a4,a4,a5
   1c898:	47b2                	lw	a5,12(sp)
   1c89a:	97da                	add	a5,a5,s6
   1c89c:	973e                	add	a4,a4,a5
   1c89e:	87d6                	mv	a5,s5
   1c8a0:	b36d                	j	1c64a <__subtf3+0x2a2>
   1c8a2:	4194                	lw	a3,0(a1)
   1c8a4:	0045ae03          	lw	t3,4(a1)
   1c8a8:	00c58eb3          	add	t4,a1,a2
   1c8ac:	0116d6b3          	srl	a3,a3,a7
   1c8b0:	010e1e33          	sll	t3,t3,a6
   1c8b4:	01c6e6b3          	or	a3,a3,t3
   1c8b8:	00dea023          	sw	a3,0(t4)
   1c8bc:	0305                	addi	t1,t1,1
   1c8be:	0591                	addi	a1,a1,4
   1c8c0:	b7bd                	j	1c82e <__subtf3+0x486>
   1c8c2:	00140793          	addi	a5,s0,1
   1c8c6:	01179513          	slli	a0,a5,0x11
   1c8ca:	8149                	srli	a0,a0,0x12
   1c8cc:	4612                	lw	a2,4(sp)
   1c8ce:	46a2                	lw	a3,8(sp)
   1c8d0:	45b2                	lw	a1,12(sp)
   1c8d2:	10051c63          	bnez	a0,1c9ea <__subtf3+0x642>
   1c8d6:	00d667b3          	or	a5,a2,a3
   1c8da:	8fcd                	or	a5,a5,a1
   1c8dc:	8fd9                	or	a5,a5,a4
   1c8de:	e049                	bnez	s0,1c960 <__subtf3+0x5b8>
   1c8e0:	e785                	bnez	a5,1c908 <__subtf3+0x560>
   1c8e2:	d026                	sw	s1,32(sp)
   1c8e4:	d25e                	sw	s7,36(sp)
   1c8e6:	d462                	sw	s8,40(sp)
   1c8e8:	d65a                	sw	s6,44(sp)
   1c8ea:	5782                	lw	a5,32(sp)
   1c8ec:	5592                	lw	a1,36(sp)
   1c8ee:	5622                	lw	a2,40(sp)
   1c8f0:	56b2                	lw	a3,44(sp)
   1c8f2:	00b7e733          	or	a4,a5,a1
   1c8f6:	8f51                	or	a4,a4,a2
   1c8f8:	8f55                	or	a4,a4,a3
   1c8fa:	1a071de3          	bnez	a4,1d2b4 <__subtf3+0xf0c>
   1c8fe:	4781                	li	a5,0
   1c900:	4681                	li	a3,0
   1c902:	4401                	li	s0,0
   1c904:	21d0006f          	j	1d320 <__subtf3+0xf78>
   1c908:	018be7b3          	or	a5,s7,s8
   1c90c:	0167e7b3          	or	a5,a5,s6
   1c910:	8fc5                	or	a5,a5,s1
   1c912:	e791                	bnez	a5,1c91e <__subtf3+0x576>
   1c914:	d03a                	sw	a4,32(sp)
   1c916:	d232                	sw	a2,36(sp)
   1c918:	d436                	sw	a3,40(sp)
   1c91a:	d62e                	sw	a1,44(sp)
   1c91c:	b7f9                	j	1c8ea <__subtf3+0x542>
   1c91e:	94ba                	add	s1,s1,a4
   1c920:	9bb2                	add	s7,s7,a2
   1c922:	d026                	sw	s1,32(sp)
   1c924:	00e4b4b3          	sltu	s1,s1,a4
   1c928:	94de                	add	s1,s1,s7
   1c92a:	d226                	sw	s1,36(sp)
   1c92c:	00cbb633          	sltu	a2,s7,a2
   1c930:	0174b4b3          	sltu	s1,s1,s7
   1c934:	9c36                	add	s8,s8,a3
   1c936:	8e45                	or	a2,a2,s1
   1c938:	9662                	add	a2,a2,s8
   1c93a:	d432                	sw	a2,40(sp)
   1c93c:	00dc36b3          	sltu	a3,s8,a3
   1c940:	01863633          	sltu	a2,a2,s8
   1c944:	8ed1                	or	a3,a3,a2
   1c946:	95da                	add	a1,a1,s6
   1c948:	96ae                	add	a3,a3,a1
   1c94a:	00c69793          	slli	a5,a3,0xc
   1c94e:	3207d2e3          	bgez	a5,1d472 <__subtf3+0x10ca>
   1c952:	fff807b7          	lui	a5,0xfff80
   1c956:	17fd                	addi	a5,a5,-1 # fff7ffff <__BSS_END__+0xfff60413>
   1c958:	8efd                	and	a3,a3,a5
   1c95a:	d636                	sw	a3,44(sp)
   1c95c:	4785                	li	a5,1
   1c95e:	b3d9                	j	1c724 <__subtf3+0x37c>
   1c960:	6521                	lui	a0,0x8
   1c962:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1c964:	04a41363          	bne	s0,a0,1c9aa <__subtf3+0x602>
   1c968:	300788e3          	beqz	a5,1d478 <__subtf3+0x10d0>
   1c96c:	0125d413          	srli	s0,a1,0x12
   1c970:	00144413          	xori	s0,s0,1
   1c974:	8805                	andi	s0,s0,1
   1c976:	0412                	slli	s0,s0,0x4
   1c978:	02aa9d63          	bne	s5,a0,1c9b2 <__subtf3+0x60a>
   1c97c:	018be533          	or	a0,s7,s8
   1c980:	01656533          	or	a0,a0,s6
   1c984:	8d45                	or	a0,a0,s1
   1c986:	c50d                	beqz	a0,1c9b0 <__subtf3+0x608>
   1c988:	00db1513          	slli	a0,s6,0xd
   1c98c:	02054263          	bltz	a0,1c9b0 <__subtf3+0x608>
   1c990:	4441                	li	s0,16
   1c992:	eb85                	bnez	a5,1c9c2 <__subtf3+0x61a>
   1c994:	8726                	mv	a4,s1
   1c996:	865e                	mv	a2,s7
   1c998:	86e2                	mv	a3,s8
   1c99a:	85da                	mv	a1,s6
   1c99c:	d03a                	sw	a4,32(sp)
   1c99e:	d232                	sw	a2,36(sp)
   1c9a0:	d436                	sw	a3,40(sp)
   1c9a2:	d62e                	sw	a1,44(sp)
   1c9a4:	67a1                	lui	a5,0x8
   1c9a6:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1c9a8:	bbb5                	j	1c724 <__subtf3+0x37c>
   1c9aa:	4401                	li	s0,0
   1c9ac:	fcaa88e3          	beq	s5,a0,1c97c <__subtf3+0x5d4>
   1c9b0:	d3f5                	beqz	a5,1c994 <__subtf3+0x5ec>
   1c9b2:	018bebb3          	or	s7,s7,s8
   1c9b6:	016bebb3          	or	s7,s7,s6
   1c9ba:	009bebb3          	or	s7,s7,s1
   1c9be:	fc0b8fe3          	beqz	s7,1c99c <__subtf3+0x5f4>
   1c9c2:	67a1                	lui	a5,0x8
   1c9c4:	d63e                	sw	a5,44(sp)
   1c9c6:	d402                	sw	zero,40(sp)
   1c9c8:	d202                	sw	zero,36(sp)
   1c9ca:	d002                	sw	zero,32(sp)
   1c9cc:	101c                	addi	a5,sp,32
   1c9ce:	0850                	addi	a2,sp,20
   1c9d0:	47d8                	lw	a4,12(a5)
   1c9d2:	4794                	lw	a3,8(a5)
   1c9d4:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1c9d6:	070e                	slli	a4,a4,0x3
   1c9d8:	82f5                	srli	a3,a3,0x1d
   1c9da:	8f55                	or	a4,a4,a3
   1c9dc:	cb98                	sw	a4,16(a5)
   1c9de:	fef619e3          	bne	a2,a5,1c9d0 <__subtf3+0x628>
   1c9e2:	4981                	li	s3,0
   1c9e4:	b7c1                	j	1c9a4 <__subtf3+0x5fc>
   1c9e6:	4401                	li	s0,0
   1c9e8:	bf51                	j	1c97c <__subtf3+0x5d4>
   1c9ea:	94ba                	add	s1,s1,a4
   1c9ec:	9bb2                	add	s7,s7,a2
   1c9ee:	d026                	sw	s1,32(sp)
   1c9f0:	00e4b4b3          	sltu	s1,s1,a4
   1c9f4:	94de                	add	s1,s1,s7
   1c9f6:	d226                	sw	s1,36(sp)
   1c9f8:	00cbb633          	sltu	a2,s7,a2
   1c9fc:	0174b4b3          	sltu	s1,s1,s7
   1ca00:	9c36                	add	s8,s8,a3
   1ca02:	8e45                	or	a2,a2,s1
   1ca04:	9662                	add	a2,a2,s8
   1ca06:	d432                	sw	a2,40(sp)
   1ca08:	00dc36b3          	sltu	a3,s8,a3
   1ca0c:	01863633          	sltu	a2,a2,s8
   1ca10:	8ed1                	or	a3,a3,a2
   1ca12:	95da                	add	a1,a1,s6
   1ca14:	96ae                	add	a3,a3,a1
   1ca16:	d636                	sw	a3,44(sp)
   1ca18:	1018                	addi	a4,sp,32
   1ca1a:	1068                	addi	a0,sp,44
   1ca1c:	4310                	lw	a2,0(a4)
   1ca1e:	434c                	lw	a1,4(a4)
   1ca20:	8205                	srli	a2,a2,0x1
   1ca22:	05fe                	slli	a1,a1,0x1f
   1ca24:	8e4d                	or	a2,a2,a1
   1ca26:	c310                	sw	a2,0(a4)
   1ca28:	0711                	addi	a4,a4,4
   1ca2a:	fee519e3          	bne	a0,a4,1ca1c <__subtf3+0x674>
   1ca2e:	6721                	lui	a4,0x8
   1ca30:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1ca32:	c6e782e3          	beq	a5,a4,1c696 <__subtf3+0x2ee>
   1ca36:	8285                	srli	a3,a3,0x1
   1ca38:	d636                	sw	a3,44(sp)
   1ca3a:	4401                	li	s0,0
   1ca3c:	b1e5                	j	1c724 <__subtf3+0x37c>
   1ca3e:	4789                	li	a5,2
   1ca40:	c6fa12e3          	bne	s4,a5,1c6a4 <__subtf3+0x2fc>
   1ca44:	c60980e3          	beqz	s3,1c6a4 <__subtf3+0x2fc>
   1ca48:	67a1                	lui	a5,0x8
   1ca4a:	d602                	sw	zero,44(sp)
   1ca4c:	d402                	sw	zero,40(sp)
   1ca4e:	d202                	sw	zero,36(sp)
   1ca50:	d002                	sw	zero,32(sp)
   1ca52:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1ca54:	4415                	li	s0,5
   1ca56:	b1f9                	j	1c724 <__subtf3+0x37c>
   1ca58:	22f05b63          	blez	a5,1cc8e <__subtf3+0x8e6>
   1ca5c:	4592                	lw	a1,4(sp)
   1ca5e:	4522                	lw	a0,8(sp)
   1ca60:	48b2                	lw	a7,12(sp)
   1ca62:	0a0a9563          	bnez	s5,1cb0c <__subtf3+0x764>
   1ca66:	4ed2                	lw	t4,20(sp)
   1ca68:	4fe2                	lw	t6,24(sp)
   1ca6a:	4672                	lw	a2,28(sp)
   1ca6c:	01fee6b3          	or	a3,t4,t6
   1ca70:	8ed1                	or	a3,a3,a2
   1ca72:	8ec5                	or	a3,a3,s1
   1ca74:	e69d                	bnez	a3,1caa2 <__subtf3+0x6fa>
   1ca76:	66a1                	lui	a3,0x8
   1ca78:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1ca7a:	00d79f63          	bne	a5,a3,1ca98 <__subtf3+0x6f0>
   1ca7e:	00a5e6b3          	or	a3,a1,a0
   1ca82:	0116e6b3          	or	a3,a3,a7
   1ca86:	8ed9                	or	a3,a3,a4
   1ca88:	ca81                	beqz	a3,1ca98 <__subtf3+0x6f0>
   1ca8a:	0128da93          	srli	s5,a7,0x12
   1ca8e:	001aca93          	xori	s5,s5,1
   1ca92:	001afa93          	andi	s5,s5,1
   1ca96:	0a92                	slli	s5,s5,0x4
   1ca98:	d03a                	sw	a4,32(sp)
   1ca9a:	d22e                	sw	a1,36(sp)
   1ca9c:	d42a                	sw	a0,40(sp)
   1ca9e:	d646                	sw	a7,44(sp)
   1caa0:	b435                	j	1c4cc <__subtf3+0x124>
   1caa2:	fff78f13          	addi	t5,a5,-1
   1caa6:	040f1663          	bnez	t5,1caf2 <__subtf3+0x74a>
   1caaa:	409706b3          	sub	a3,a4,s1
   1caae:	41d58833          	sub	a6,a1,t4
   1cab2:	00d73333          	sltu	t1,a4,a3
   1cab6:	0105b7b3          	sltu	a5,a1,a6
   1caba:	40680833          	sub	a6,a6,t1
   1cabe:	4301                	li	t1,0
   1cac0:	00d77663          	bgeu	a4,a3,1cacc <__subtf3+0x724>
   1cac4:	40be8eb3          	sub	t4,t4,a1
   1cac8:	001eb313          	seqz	t1,t4
   1cacc:	00f36733          	or	a4,t1,a5
   1cad0:	41f505b3          	sub	a1,a0,t6
   1cad4:	00b53333          	sltu	t1,a0,a1
   1cad8:	8d99                	sub	a1,a1,a4
   1cada:	c709                	beqz	a4,1cae4 <__subtf3+0x73c>
   1cadc:	40af87b3          	sub	a5,t6,a0
   1cae0:	0017bf13          	seqz	t5,a5
   1cae4:	40c88733          	sub	a4,a7,a2
   1cae8:	006f67b3          	or	a5,t5,t1
   1caec:	8f1d                	sub	a4,a4,a5
   1caee:	4785                	li	a5,1
   1caf0:	aab9                	j	1cc4e <__subtf3+0x8a6>
   1caf2:	66a1                	lui	a3,0x8
   1caf4:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1caf6:	f8d784e3          	beq	a5,a3,1ca7e <__subtf3+0x6d6>
   1cafa:	07400793          	li	a5,116
   1cafe:	05e7d763          	bge	a5,t5,1cb4c <__subtf3+0x7a4>
   1cb02:	ce02                	sw	zero,28(sp)
   1cb04:	cc02                	sw	zero,24(sp)
   1cb06:	ca02                	sw	zero,20(sp)
   1cb08:	4685                	li	a3,1
   1cb0a:	a8e5                	j	1cc02 <__subtf3+0x85a>
   1cb0c:	66a1                	lui	a3,0x8
   1cb0e:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1cb10:	02d41463          	bne	s0,a3,1cb38 <__subtf3+0x790>
   1cb14:	00a5e7b3          	or	a5,a1,a0
   1cb18:	0117e7b3          	or	a5,a5,a7
   1cb1c:	8fd9                	or	a5,a5,a4
   1cb1e:	4681                	li	a3,0
   1cb20:	c799                	beqz	a5,1cb2e <__subtf3+0x786>
   1cb22:	0128d693          	srli	a3,a7,0x12
   1cb26:	0016c693          	xori	a3,a3,1
   1cb2a:	8a85                	andi	a3,a3,1
   1cb2c:	0692                	slli	a3,a3,0x4
   1cb2e:	d03a                	sw	a4,32(sp)
   1cb30:	d22e                	sw	a1,36(sp)
   1cb32:	d42a                	sw	a0,40(sp)
   1cb34:	d646                	sw	a7,44(sp)
   1cb36:	bc09                	j	1c548 <__subtf3+0x1a0>
   1cb38:	46f2                	lw	a3,28(sp)
   1cb3a:	00080637          	lui	a2,0x80
   1cb3e:	8ed1                	or	a3,a3,a2
   1cb40:	ce36                	sw	a3,28(sp)
   1cb42:	07400693          	li	a3,116
   1cb46:	faf6cee3          	blt	a3,a5,1cb02 <__subtf3+0x75a>
   1cb4a:	8f3e                	mv	t5,a5
   1cb4c:	405f5793          	srai	a5,t5,0x5
   1cb50:	8342                	mv	t1,a6
   1cb52:	01ff7f13          	andi	t5,t5,31
   1cb56:	4681                	li	a3,0
   1cb58:	4601                	li	a2,0
   1cb5a:	02f61663          	bne	a2,a5,1cb86 <__subtf3+0x7de>
   1cb5e:	460d                	li	a2,3
   1cb60:	8e1d                	sub	a2,a2,a5
   1cb62:	00279313          	slli	t1,a5,0x2
   1cb66:	020f1763          	bnez	t5,1cb94 <__subtf3+0x7ec>
   1cb6a:	00680eb3          	add	t4,a6,t1
   1cb6e:	000eae83          	lw	t4,0(t4)
   1cb72:	0f05                	addi	t5,t5,1
   1cb74:	0811                	addi	a6,a6,4
   1cb76:	ffd82e23          	sw	t4,-4(a6)
   1cb7a:	ffe658e3          	bge	a2,t5,1cb6a <__subtf3+0x7c2>
   1cb7e:	4611                	li	a2,4
   1cb80:	40f607b3          	sub	a5,a2,a5
   1cb84:	a881                	j	1cbd4 <__subtf3+0x82c>
   1cb86:	00032e83          	lw	t4,0(t1)
   1cb8a:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x60415>
   1cb8c:	0311                	addi	t1,t1,4
   1cb8e:	01d6e6b3          	or	a3,a3,t4
   1cb92:	b7e1                	j	1cb5a <__subtf3+0x7b2>
   1cb94:	04030493          	addi	s1,t1,64
   1cb98:	00248eb3          	add	t4,s1,sp
   1cb9c:	fd0eae83          	lw	t4,-48(t4)
   1cba0:	02000393          	li	t2,32
   1cba4:	41e383b3          	sub	t2,t2,t5
   1cba8:	007e9eb3          	sll	t4,t4,t2
   1cbac:	981a                	add	a6,a6,t1
   1cbae:	01d6e6b3          	or	a3,a3,t4
   1cbb2:	40600333          	neg	t1,t1
   1cbb6:	4f81                	li	t6,0
   1cbb8:	0acfca63          	blt	t6,a2,1cc6c <__subtf3+0x8c4>
   1cbbc:	4811                	li	a6,4
   1cbbe:	40f807b3          	sub	a5,a6,a5
   1cbc2:	4872                	lw	a6,28(sp)
   1cbc4:	060a                	slli	a2,a2,0x2
   1cbc6:	04060613          	addi	a2,a2,64
   1cbca:	960a                	add	a2,a2,sp
   1cbcc:	01e85833          	srl	a6,a6,t5
   1cbd0:	fd062823          	sw	a6,-48(a2)
   1cbd4:	4611                	li	a2,4
   1cbd6:	8e1d                	sub	a2,a2,a5
   1cbd8:	060a                	slli	a2,a2,0x2
   1cbda:	078a                	slli	a5,a5,0x2
   1cbdc:	4821                	li	a6,8
   1cbde:	97f2                	add	a5,a5,t3
   1cbe0:	01066863          	bltu	a2,a6,1cbf0 <__subtf3+0x848>
   1cbe4:	0007a023          	sw	zero,0(a5)
   1cbe8:	0007a223          	sw	zero,4(a5)
   1cbec:	1661                	addi	a2,a2,-8
   1cbee:	07a1                	addi	a5,a5,8
   1cbf0:	4811                	li	a6,4
   1cbf2:	01066463          	bltu	a2,a6,1cbfa <__subtf3+0x852>
   1cbf6:	0007a023          	sw	zero,0(a5)
   1cbfa:	47c2                	lw	a5,16(sp)
   1cbfc:	00d036b3          	snez	a3,a3
   1cc00:	8edd                	or	a3,a3,a5
   1cc02:	4652                	lw	a2,20(sp)
   1cc04:	c836                	sw	a3,16(sp)
   1cc06:	40d706b3          	sub	a3,a4,a3
   1cc0a:	40c58833          	sub	a6,a1,a2
   1cc0e:	00d737b3          	sltu	a5,a4,a3
   1cc12:	0105b333          	sltu	t1,a1,a6
   1cc16:	40f80833          	sub	a6,a6,a5
   1cc1a:	4781                	li	a5,0
   1cc1c:	00d77563          	bgeu	a4,a3,1cc26 <__subtf3+0x87e>
   1cc20:	8e0d                	sub	a2,a2,a1
   1cc22:	00163793          	seqz	a5,a2
   1cc26:	4762                	lw	a4,24(sp)
   1cc28:	0067e7b3          	or	a5,a5,t1
   1cc2c:	4601                	li	a2,0
   1cc2e:	40e505b3          	sub	a1,a0,a4
   1cc32:	00b53333          	sltu	t1,a0,a1
   1cc36:	8d9d                	sub	a1,a1,a5
   1cc38:	c781                	beqz	a5,1cc40 <__subtf3+0x898>
   1cc3a:	8f09                	sub	a4,a4,a0
   1cc3c:	00173613          	seqz	a2,a4
   1cc40:	4772                	lw	a4,28(sp)
   1cc42:	00666633          	or	a2,a2,t1
   1cc46:	87a2                	mv	a5,s0
   1cc48:	40e88733          	sub	a4,a7,a4
   1cc4c:	8f11                	sub	a4,a4,a2
   1cc4e:	d036                	sw	a3,32(sp)
   1cc50:	d63a                	sw	a4,44(sp)
   1cc52:	d42e                	sw	a1,40(sp)
   1cc54:	d242                	sw	a6,36(sp)
   1cc56:	00c71693          	slli	a3,a4,0xc
   1cc5a:	de06d0e3          	bgez	a3,1ca3a <__subtf3+0x692>
   1cc5e:	000806b7          	lui	a3,0x80
   1cc62:	16fd                	addi	a3,a3,-1 # 7ffff <__BSS_END__+0x60413>
   1cc64:	8f75                	and	a4,a4,a3
   1cc66:	d63a                	sw	a4,44(sp)
   1cc68:	843e                	mv	s0,a5
   1cc6a:	a1bd                	j	1d0d8 <__subtf3+0xd30>
   1cc6c:	00082e83          	lw	t4,0(a6)
   1cc70:	00482283          	lw	t0,4(a6)
   1cc74:	006804b3          	add	s1,a6,t1
   1cc78:	01eedeb3          	srl	t4,t4,t5
   1cc7c:	007292b3          	sll	t0,t0,t2
   1cc80:	005eeeb3          	or	t4,t4,t0
   1cc84:	01d4a023          	sw	t4,0(s1)
   1cc88:	0f85                	addi	t6,t6,1
   1cc8a:	0811                	addi	a6,a6,4
   1cc8c:	b735                	j	1cbb8 <__subtf3+0x810>
   1cc8e:	4bd2                	lw	s7,20(sp)
   1cc90:	4b62                	lw	s6,24(sp)
   1cc92:	4c72                	lw	s8,28(sp)
   1cc94:	20078763          	beqz	a5,1cea2 <__subtf3+0xafa>
   1cc98:	408a87b3          	sub	a5,s5,s0
   1cc9c:	e05d                	bnez	s0,1cd42 <__subtf3+0x99a>
   1cc9e:	4892                	lw	a7,4(sp)
   1cca0:	4e22                	lw	t3,8(sp)
   1cca2:	4632                	lw	a2,12(sp)
   1cca4:	01c8e6b3          	or	a3,a7,t3
   1cca8:	8ed1                	or	a3,a3,a2
   1ccaa:	8ed9                	or	a3,a3,a4
   1ccac:	e69d                	bnez	a3,1ccda <__subtf3+0x932>
   1ccae:	6721                	lui	a4,0x8
   1ccb0:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1ccb2:	00e79e63          	bne	a5,a4,1ccce <__subtf3+0x926>
   1ccb6:	016be733          	or	a4,s7,s6
   1ccba:	01876733          	or	a4,a4,s8
   1ccbe:	8f45                	or	a4,a4,s1
   1ccc0:	c719                	beqz	a4,1ccce <__subtf3+0x926>
   1ccc2:	012c5413          	srli	s0,s8,0x12
   1ccc6:	00144413          	xori	s0,s0,1
   1ccca:	8805                	andi	s0,s0,1
   1cccc:	0412                	slli	s0,s0,0x4
   1ccce:	d026                	sw	s1,32(sp)
   1ccd0:	d25e                	sw	s7,36(sp)
   1ccd2:	d45a                	sw	s6,40(sp)
   1ccd4:	d662                	sw	s8,44(sp)
   1ccd6:	89e6                	mv	s3,s9
   1ccd8:	b4b1                	j	1c724 <__subtf3+0x37c>
   1ccda:	fff78313          	addi	t1,a5,-1
   1ccde:	04031563          	bnez	t1,1cd28 <__subtf3+0x980>
   1cce2:	40e486b3          	sub	a3,s1,a4
   1cce6:	411b8833          	sub	a6,s7,a7
   1ccea:	00d4b733          	sltu	a4,s1,a3
   1ccee:	010bb7b3          	sltu	a5,s7,a6
   1ccf2:	40e80833          	sub	a6,a6,a4
   1ccf6:	4701                	li	a4,0
   1ccf8:	00d4f663          	bgeu	s1,a3,1cd04 <__subtf3+0x95c>
   1ccfc:	417888b3          	sub	a7,a7,s7
   1cd00:	0018b713          	seqz	a4,a7
   1cd04:	41cb05b3          	sub	a1,s6,t3
   1cd08:	8f5d                	or	a4,a4,a5
   1cd0a:	00bb3533          	sltu	a0,s6,a1
   1cd0e:	8d99                	sub	a1,a1,a4
   1cd10:	c709                	beqz	a4,1cd1a <__subtf3+0x972>
   1cd12:	416e07b3          	sub	a5,t3,s6
   1cd16:	0017b313          	seqz	t1,a5
   1cd1a:	40cc0733          	sub	a4,s8,a2
   1cd1e:	00a367b3          	or	a5,t1,a0
   1cd22:	8f1d                	sub	a4,a4,a5
   1cd24:	89e6                	mv	s3,s9
   1cd26:	b3e1                	j	1caee <__subtf3+0x746>
   1cd28:	6721                	lui	a4,0x8
   1cd2a:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1cd2c:	f8e785e3          	beq	a5,a4,1ccb6 <__subtf3+0x90e>
   1cd30:	07400793          	li	a5,116
   1cd34:	0467d863          	bge	a5,t1,1cd84 <__subtf3+0x9dc>
   1cd38:	c602                	sw	zero,12(sp)
   1cd3a:	c402                	sw	zero,8(sp)
   1cd3c:	c202                	sw	zero,4(sp)
   1cd3e:	4685                	li	a3,1
   1cd40:	a8cd                	j	1ce32 <__subtf3+0xa8a>
   1cd42:	6721                	lui	a4,0x8
   1cd44:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1cd46:	02ea9563          	bne	s5,a4,1cd70 <__subtf3+0x9c8>
   1cd4a:	016be7b3          	or	a5,s7,s6
   1cd4e:	0187e7b3          	or	a5,a5,s8
   1cd52:	8fc5                	or	a5,a5,s1
   1cd54:	4401                	li	s0,0
   1cd56:	c799                	beqz	a5,1cd64 <__subtf3+0x9bc>
   1cd58:	012c5413          	srli	s0,s8,0x12
   1cd5c:	00144413          	xori	s0,s0,1
   1cd60:	8805                	andi	s0,s0,1
   1cd62:	0412                	slli	s0,s0,0x4
   1cd64:	d026                	sw	s1,32(sp)
   1cd66:	d25e                	sw	s7,36(sp)
   1cd68:	d45a                	sw	s6,40(sp)
   1cd6a:	d662                	sw	s8,44(sp)
   1cd6c:	87d6                	mv	a5,s5
   1cd6e:	b7a5                	j	1ccd6 <__subtf3+0x92e>
   1cd70:	4732                	lw	a4,12(sp)
   1cd72:	000806b7          	lui	a3,0x80
   1cd76:	8f55                	or	a4,a4,a3
   1cd78:	c63a                	sw	a4,12(sp)
   1cd7a:	07400713          	li	a4,116
   1cd7e:	faf74de3          	blt	a4,a5,1cd38 <__subtf3+0x990>
   1cd82:	833e                	mv	t1,a5
   1cd84:	02000793          	li	a5,32
   1cd88:	02f347b3          	div	a5,t1,a5
   1cd8c:	86ae                	mv	a3,a1
   1cd8e:	4401                	li	s0,0
   1cd90:	4701                	li	a4,0
   1cd92:	02f74663          	blt	a4,a5,1cdbe <__subtf3+0xa16>
   1cd96:	470d                	li	a4,3
   1cd98:	01f37813          	andi	a6,t1,31
   1cd9c:	8f1d                	sub	a4,a4,a5
   1cd9e:	00279613          	slli	a2,a5,0x2
   1cda2:	02081363          	bnez	a6,1cdc8 <__subtf3+0xa20>
   1cda6:	00c586b3          	add	a3,a1,a2
   1cdaa:	4294                	lw	a3,0(a3)
   1cdac:	0805                	addi	a6,a6,1
   1cdae:	c194                	sw	a3,0(a1)
   1cdb0:	0591                	addi	a1,a1,4
   1cdb2:	ff075ae3          	bge	a4,a6,1cda6 <__subtf3+0x9fe>
   1cdb6:	4711                	li	a4,4
   1cdb8:	40f707b3          	sub	a5,a4,a5
   1cdbc:	a899                	j	1ce12 <__subtf3+0xa6a>
   1cdbe:	4290                	lw	a2,0(a3)
   1cdc0:	0705                	addi	a4,a4,1
   1cdc2:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x60418>
   1cdc4:	8c51                	or	s0,s0,a2
   1cdc6:	b7f1                	j	1cd92 <__subtf3+0x9ea>
   1cdc8:	02000693          	li	a3,32
   1cdcc:	02d36333          	rem	t1,t1,a3
   1cdd0:	40668333          	sub	t1,a3,t1
   1cdd4:	86be                	mv	a3,a5
   1cdd6:	0007d363          	bgez	a5,1cddc <__subtf3+0xa34>
   1cdda:	4681                	li	a3,0
   1cddc:	068a                	slli	a3,a3,0x2
   1cdde:	04068693          	addi	a3,a3,64
   1cde2:	968a                	add	a3,a3,sp
   1cde4:	fc06a683          	lw	a3,-64(a3)
   1cde8:	95b2                	add	a1,a1,a2
   1cdea:	4881                	li	a7,0
   1cdec:	006696b3          	sll	a3,a3,t1
   1cdf0:	8c55                	or	s0,s0,a3
   1cdf2:	40c00633          	neg	a2,a2
   1cdf6:	08e8c663          	blt	a7,a4,1ce82 <__subtf3+0xada>
   1cdfa:	4691                	li	a3,4
   1cdfc:	40f687b3          	sub	a5,a3,a5
   1ce00:	46b2                	lw	a3,12(sp)
   1ce02:	070a                	slli	a4,a4,0x2
   1ce04:	04070713          	addi	a4,a4,64
   1ce08:	970a                	add	a4,a4,sp
   1ce0a:	0106d6b3          	srl	a3,a3,a6
   1ce0e:	fcd72023          	sw	a3,-64(a4)
   1ce12:	0057a713          	slti	a4,a5,5
   1ce16:	4601                	li	a2,0
   1ce18:	c701                	beqz	a4,1ce20 <__subtf3+0xa78>
   1ce1a:	4611                	li	a2,4
   1ce1c:	8e1d                	sub	a2,a2,a5
   1ce1e:	060a                	slli	a2,a2,0x2
   1ce20:	078a                	slli	a5,a5,0x2
   1ce22:	953e                	add	a0,a0,a5
   1ce24:	4581                	li	a1,0
   1ce26:	ccaf70ef          	jal	142f0 <memset>
   1ce2a:	4782                	lw	a5,0(sp)
   1ce2c:	008036b3          	snez	a3,s0
   1ce30:	8edd                	or	a3,a3,a5
   1ce32:	4712                	lw	a4,4(sp)
   1ce34:	c036                	sw	a3,0(sp)
   1ce36:	40d486b3          	sub	a3,s1,a3
   1ce3a:	40eb8833          	sub	a6,s7,a4
   1ce3e:	00d4b7b3          	sltu	a5,s1,a3
   1ce42:	010bb633          	sltu	a2,s7,a6
   1ce46:	40f80833          	sub	a6,a6,a5
   1ce4a:	4781                	li	a5,0
   1ce4c:	00d4f663          	bgeu	s1,a3,1ce58 <__subtf3+0xab0>
   1ce50:	41770733          	sub	a4,a4,s7
   1ce54:	00173793          	seqz	a5,a4
   1ce58:	4722                	lw	a4,8(sp)
   1ce5a:	8fd1                	or	a5,a5,a2
   1ce5c:	4601                	li	a2,0
   1ce5e:	40eb05b3          	sub	a1,s6,a4
   1ce62:	00bb3533          	sltu	a0,s6,a1
   1ce66:	8d9d                	sub	a1,a1,a5
   1ce68:	c789                	beqz	a5,1ce72 <__subtf3+0xaca>
   1ce6a:	41670733          	sub	a4,a4,s6
   1ce6e:	00173613          	seqz	a2,a4
   1ce72:	4732                	lw	a4,12(sp)
   1ce74:	8e49                	or	a2,a2,a0
   1ce76:	87d6                	mv	a5,s5
   1ce78:	40ec0733          	sub	a4,s8,a4
   1ce7c:	8f11                	sub	a4,a4,a2
   1ce7e:	89e6                	mv	s3,s9
   1ce80:	b3f9                	j	1cc4e <__subtf3+0x8a6>
   1ce82:	4194                	lw	a3,0(a1)
   1ce84:	0045ae03          	lw	t3,4(a1)
   1ce88:	00c58eb3          	add	t4,a1,a2
   1ce8c:	0106d6b3          	srl	a3,a3,a6
   1ce90:	006e1e33          	sll	t3,t3,t1
   1ce94:	01c6e6b3          	or	a3,a3,t3
   1ce98:	00dea023          	sw	a3,0(t4)
   1ce9c:	0885                	addi	a7,a7,1
   1ce9e:	0591                	addi	a1,a1,4
   1cea0:	bf99                	j	1cdf6 <__subtf3+0xa4e>
   1cea2:	00140693          	addi	a3,s0,1
   1cea6:	01169813          	slli	a6,a3,0x11
   1ceaa:	01285813          	srli	a6,a6,0x12
   1ceae:	4612                	lw	a2,4(sp)
   1ceb0:	45a2                	lw	a1,8(sp)
   1ceb2:	4532                	lw	a0,12(sp)
   1ceb4:	18081363          	bnez	a6,1d03a <__subtf3+0xc92>
   1ceb8:	016be7b3          	or	a5,s7,s6
   1cebc:	00b666b3          	or	a3,a2,a1
   1cec0:	0187e7b3          	or	a5,a5,s8
   1cec4:	8ec9                	or	a3,a3,a0
   1cec6:	8fc5                	or	a5,a5,s1
   1cec8:	8ed9                	or	a3,a3,a4
   1ceca:	e869                	bnez	s0,1cf9c <__subtf3+0xbf4>
   1cecc:	ea99                	bnez	a3,1cee2 <__subtf3+0xb3a>
   1cece:	d026                	sw	s1,32(sp)
   1ced0:	d25e                	sw	s7,36(sp)
   1ced2:	d45a                	sw	s6,40(sp)
   1ced4:	d662                	sw	s8,44(sp)
   1ced6:	ebcd                	bnez	a5,1cf88 <__subtf3+0xbe0>
   1ced8:	ffea0993          	addi	s3,s4,-2
   1cedc:	0019b993          	seqz	s3,s3
   1cee0:	b429                	j	1c8ea <__subtf3+0x542>
   1cee2:	e791                	bnez	a5,1ceee <__subtf3+0xb46>
   1cee4:	d03a                	sw	a4,32(sp)
   1cee6:	d232                	sw	a2,36(sp)
   1cee8:	d42e                	sw	a1,40(sp)
   1ceea:	d62a                	sw	a0,44(sp)
   1ceec:	bafd                	j	1c8ea <__subtf3+0x542>
   1ceee:	409707b3          	sub	a5,a4,s1
   1cef2:	41760e33          	sub	t3,a2,s7
   1cef6:	00f73833          	sltu	a6,a4,a5
   1cefa:	01c638b3          	sltu	a7,a2,t3
   1cefe:	410e0833          	sub	a6,t3,a6
   1cf02:	4681                	li	a3,0
   1cf04:	00f77463          	bgeu	a4,a5,1cf0c <__subtf3+0xb64>
   1cf08:	001e3693          	seqz	a3,t3
   1cf0c:	0116e6b3          	or	a3,a3,a7
   1cf10:	416588b3          	sub	a7,a1,s6
   1cf14:	0115bf33          	sltu	t5,a1,a7
   1cf18:	40d88eb3          	sub	t4,a7,a3
   1cf1c:	4301                	li	t1,0
   1cf1e:	c299                	beqz	a3,1cf24 <__subtf3+0xb7c>
   1cf20:	0018b313          	seqz	t1,a7
   1cf24:	01e36333          	or	t1,t1,t5
   1cf28:	418506b3          	sub	a3,a0,s8
   1cf2c:	406686b3          	sub	a3,a3,t1
   1cf30:	d636                	sw	a3,44(sp)
   1cf32:	d476                	sw	t4,40(sp)
   1cf34:	d242                	sw	a6,36(sp)
   1cf36:	d03e                	sw	a5,32(sp)
   1cf38:	00c69313          	slli	t1,a3,0xc
   1cf3c:	04035863          	bgez	t1,1cf8c <__subtf3+0xbe4>
   1cf40:	40e48733          	sub	a4,s1,a4
   1cf44:	40cb8633          	sub	a2,s7,a2
   1cf48:	00e4b7b3          	sltu	a5,s1,a4
   1cf4c:	00cbbbb3          	sltu	s7,s7,a2
   1cf50:	8e1d                	sub	a2,a2,a5
   1cf52:	4781                	li	a5,0
   1cf54:	00e4f463          	bgeu	s1,a4,1cf5c <__subtf3+0xbb4>
   1cf58:	001e3793          	seqz	a5,t3
   1cf5c:	40bb05b3          	sub	a1,s6,a1
   1cf60:	0177ebb3          	or	s7,a5,s7
   1cf64:	00bb3b33          	sltu	s6,s6,a1
   1cf68:	417585b3          	sub	a1,a1,s7
   1cf6c:	000b8463          	beqz	s7,1cf74 <__subtf3+0xbcc>
   1cf70:	0018b413          	seqz	s0,a7
   1cf74:	40ac0533          	sub	a0,s8,a0
   1cf78:	01646b33          	or	s6,s0,s6
   1cf7c:	41650533          	sub	a0,a0,s6
   1cf80:	d62a                	sw	a0,44(sp)
   1cf82:	d42e                	sw	a1,40(sp)
   1cf84:	d232                	sw	a2,36(sp)
   1cf86:	d03a                	sw	a4,32(sp)
   1cf88:	89e6                	mv	s3,s9
   1cf8a:	b285                	j	1c8ea <__subtf3+0x542>
   1cf8c:	0107e7b3          	or	a5,a5,a6
   1cf90:	01d7e7b3          	or	a5,a5,t4
   1cf94:	8fd5                	or	a5,a5,a3
   1cf96:	94079ae3          	bnez	a5,1c8ea <__subtf3+0x542>
   1cf9a:	bf3d                	j	1ced8 <__subtf3+0xb30>
   1cf9c:	6821                	lui	a6,0x8
   1cf9e:	187d                	addi	a6,a6,-1 # 7fff <exit-0x8095>
   1cfa0:	03041263          	bne	s0,a6,1cfc4 <__subtf3+0xc1c>
   1cfa4:	4c068f63          	beqz	a3,1d482 <__subtf3+0x10da>
   1cfa8:	01255413          	srli	s0,a0,0x12
   1cfac:	00144413          	xori	s0,s0,1
   1cfb0:	8805                	andi	s0,s0,1
   1cfb2:	0412                	slli	s0,s0,0x4
   1cfb4:	010a8b63          	beq	s5,a6,1cfca <__subtf3+0xc22>
   1cfb8:	ebb1                	bnez	a5,1d00c <__subtf3+0xc64>
   1cfba:	d03a                	sw	a4,32(sp)
   1cfbc:	d232                	sw	a2,36(sp)
   1cfbe:	d42e                	sw	a1,40(sp)
   1cfc0:	d62a                	sw	a0,44(sp)
   1cfc2:	b2cd                	j	1c9a4 <__subtf3+0x5fc>
   1cfc4:	4401                	li	s0,0
   1cfc6:	010a9363          	bne	s5,a6,1cfcc <__subtf3+0xc24>
   1cfca:	eb9d                	bnez	a5,1d000 <__subtf3+0xc58>
   1cfcc:	f6f5                	bnez	a3,1cfb8 <__subtf3+0xc10>
   1cfce:	e3a5                	bnez	a5,1d02e <__subtf3+0xc86>
   1cfd0:	67a1                	lui	a5,0x8
   1cfd2:	d63e                	sw	a5,44(sp)
   1cfd4:	d402                	sw	zero,40(sp)
   1cfd6:	d202                	sw	zero,36(sp)
   1cfd8:	d002                	sw	zero,32(sp)
   1cfda:	101c                	addi	a5,sp,32
   1cfdc:	0850                	addi	a2,sp,20
   1cfde:	47d8                	lw	a4,12(a5)
   1cfe0:	4794                	lw	a3,8(a5)
   1cfe2:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1cfe4:	070e                	slli	a4,a4,0x3
   1cfe6:	82f5                	srli	a3,a3,0x1d
   1cfe8:	8f55                	or	a4,a4,a3
   1cfea:	cb98                	sw	a4,16(a5)
   1cfec:	fef619e3          	bne	a2,a5,1cfde <__subtf3+0xc36>
   1cff0:	67a1                	lui	a5,0x8
   1cff2:	4981                	li	s3,0
   1cff4:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1cff6:	4441                	li	s0,16
   1cff8:	f2cff06f          	j	1c724 <__subtf3+0x37c>
   1cffc:	4401                	li	s0,0
   1cffe:	b7f1                	j	1cfca <__subtf3+0xc22>
   1d000:	00dc1813          	slli	a6,s8,0xd
   1d004:	fc0844e3          	bltz	a6,1cfcc <__subtf3+0xc24>
   1d008:	4441                	li	s0,16
   1d00a:	c295                	beqz	a3,1d02e <__subtf3+0xc86>
   1d00c:	67a1                	lui	a5,0x8
   1d00e:	d63e                	sw	a5,44(sp)
   1d010:	d402                	sw	zero,40(sp)
   1d012:	d202                	sw	zero,36(sp)
   1d014:	d002                	sw	zero,32(sp)
   1d016:	101c                	addi	a5,sp,32
   1d018:	0850                	addi	a2,sp,20
   1d01a:	47d8                	lw	a4,12(a5)
   1d01c:	4794                	lw	a3,8(a5)
   1d01e:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1d020:	070e                	slli	a4,a4,0x3
   1d022:	82f5                	srli	a3,a3,0x1d
   1d024:	8f55                	or	a4,a4,a3
   1d026:	cb98                	sw	a4,16(a5)
   1d028:	fef619e3          	bne	a2,a5,1d01a <__subtf3+0xc72>
   1d02c:	ba5d                	j	1c9e2 <__subtf3+0x63a>
   1d02e:	d026                	sw	s1,32(sp)
   1d030:	d25e                	sw	s7,36(sp)
   1d032:	d45a                	sw	s6,40(sp)
   1d034:	d662                	sw	s8,44(sp)
   1d036:	89e6                	mv	s3,s9
   1d038:	b2b5                	j	1c9a4 <__subtf3+0x5fc>
   1d03a:	409706b3          	sub	a3,a4,s1
   1d03e:	41760e33          	sub	t3,a2,s7
   1d042:	00d73eb3          	sltu	t4,a4,a3
   1d046:	01c638b3          	sltu	a7,a2,t3
   1d04a:	41de0eb3          	sub	t4,t3,t4
   1d04e:	4801                	li	a6,0
   1d050:	00d77463          	bgeu	a4,a3,1d058 <__subtf3+0xcb0>
   1d054:	001e3813          	seqz	a6,t3
   1d058:	01186833          	or	a6,a6,a7
   1d05c:	416588b3          	sub	a7,a1,s6
   1d060:	0115bf33          	sltu	t5,a1,a7
   1d064:	41088fb3          	sub	t6,a7,a6
   1d068:	4301                	li	t1,0
   1d06a:	00080463          	beqz	a6,1d072 <__subtf3+0xcca>
   1d06e:	0018b313          	seqz	t1,a7
   1d072:	01e36333          	or	t1,t1,t5
   1d076:	41850833          	sub	a6,a0,s8
   1d07a:	40680833          	sub	a6,a6,t1
   1d07e:	d642                	sw	a6,44(sp)
   1d080:	d47e                	sw	t6,40(sp)
   1d082:	d276                	sw	t4,36(sp)
   1d084:	d036                	sw	a3,32(sp)
   1d086:	00c81313          	slli	t1,a6,0xc
   1d08a:	10035163          	bgez	t1,1d18c <__subtf3+0xde4>
   1d08e:	40e48733          	sub	a4,s1,a4
   1d092:	40cb8633          	sub	a2,s7,a2
   1d096:	00e4b6b3          	sltu	a3,s1,a4
   1d09a:	00cbbbb3          	sltu	s7,s7,a2
   1d09e:	8e15                	sub	a2,a2,a3
   1d0a0:	4681                	li	a3,0
   1d0a2:	00e4f463          	bgeu	s1,a4,1d0aa <__subtf3+0xd02>
   1d0a6:	001e3693          	seqz	a3,t3
   1d0aa:	40bb05b3          	sub	a1,s6,a1
   1d0ae:	0176ebb3          	or	s7,a3,s7
   1d0b2:	00bb3b33          	sltu	s6,s6,a1
   1d0b6:	417585b3          	sub	a1,a1,s7
   1d0ba:	000b8463          	beqz	s7,1d0c2 <__subtf3+0xd1a>
   1d0be:	0018b793          	seqz	a5,a7
   1d0c2:	40ac0533          	sub	a0,s8,a0
   1d0c6:	0167eb33          	or	s6,a5,s6
   1d0ca:	41650533          	sub	a0,a0,s6
   1d0ce:	d62a                	sw	a0,44(sp)
   1d0d0:	d42e                	sw	a1,40(sp)
   1d0d2:	d232                	sw	a2,36(sp)
   1d0d4:	d03a                	sw	a4,32(sp)
   1d0d6:	89e6                	mv	s3,s9
   1d0d8:	5532                	lw	a0,44(sp)
   1d0da:	c169                	beqz	a0,1d19c <__subtf3+0xdf4>
   1d0dc:	7dc000ef          	jal	1d8b8 <__clzsi2>
   1d0e0:	ff450793          	addi	a5,a0,-12
   1d0e4:	02000693          	li	a3,32
   1d0e8:	01f7f813          	andi	a6,a5,31
   1d0ec:	02d7c733          	div	a4,a5,a3
   1d0f0:	0c080763          	beqz	a6,1d1be <__subtf3+0xe16>
   1d0f4:	02010313          	addi	t1,sp,32
   1d0f8:	02d7e633          	rem	a2,a5,a3
   1d0fc:	40c685b3          	sub	a1,a3,a2
   1d100:	5671                	li	a2,-4
   1d102:	02c70633          	mul	a2,a4,a2
   1d106:	00c60693          	addi	a3,a2,12
   1d10a:	969a                	add	a3,a3,t1
   1d10c:	40c00633          	neg	a2,a2
   1d110:	0cd31763          	bne	t1,a3,1d1de <__subtf3+0xe36>
   1d114:	5602                	lw	a2,32(sp)
   1d116:	fff70693          	addi	a3,a4,-1
   1d11a:	070a                	slli	a4,a4,0x2
   1d11c:	04070713          	addi	a4,a4,64
   1d120:	970a                	add	a4,a4,sp
   1d122:	01061633          	sll	a2,a2,a6
   1d126:	fec72023          	sw	a2,-32(a4)
   1d12a:	00168713          	addi	a4,a3,1
   1d12e:	070a                	slli	a4,a4,0x2
   1d130:	1014                	addi	a3,sp,32
   1d132:	4621                	li	a2,8
   1d134:	88b6                	mv	a7,a3
   1d136:	00c76863          	bltu	a4,a2,1d146 <__subtf3+0xd9e>
   1d13a:	0006a023          	sw	zero,0(a3)
   1d13e:	0006a223          	sw	zero,4(a3)
   1d142:	1761                	addi	a4,a4,-8
   1d144:	1034                	addi	a3,sp,40
   1d146:	4611                	li	a2,4
   1d148:	00c76463          	bltu	a4,a2,1d150 <__subtf3+0xda8>
   1d14c:	0006a023          	sw	zero,0(a3)
   1d150:	1487c863          	blt	a5,s0,1d2a0 <__subtf3+0xef8>
   1d154:	8f81                	sub	a5,a5,s0
   1d156:	0785                	addi	a5,a5,1
   1d158:	4057d713          	srai	a4,a5,0x5
   1d15c:	85c6                	mv	a1,a7
   1d15e:	8bfd                	andi	a5,a5,31
   1d160:	8646                	mv	a2,a7
   1d162:	4301                	li	t1,0
   1d164:	4681                	li	a3,0
   1d166:	08e69b63          	bne	a3,a4,1d1fc <__subtf3+0xe54>
   1d16a:	468d                	li	a3,3
   1d16c:	8e99                	sub	a3,a3,a4
   1d16e:	00271613          	slli	a2,a4,0x2
   1d172:	ebd9                	bnez	a5,1d208 <__subtf3+0xe60>
   1d174:	00c58533          	add	a0,a1,a2
   1d178:	4108                	lw	a0,0(a0)
   1d17a:	0785                	addi	a5,a5,1
   1d17c:	c188                	sw	a0,0(a1)
   1d17e:	0591                	addi	a1,a1,4
   1d180:	fef6dae3          	bge	a3,a5,1d174 <__subtf3+0xdcc>
   1d184:	4791                	li	a5,4
   1d186:	40e78733          	sub	a4,a5,a4
   1d18a:	a87d                	j	1d248 <__subtf3+0xea0>
   1d18c:	01d6e6b3          	or	a3,a3,t4
   1d190:	01f6e6b3          	or	a3,a3,t6
   1d194:	0106e6b3          	or	a3,a3,a6
   1d198:	f2a1                	bnez	a3,1d0d8 <__subtf3+0xd30>
   1d19a:	bb3d                	j	1ced8 <__subtf3+0xb30>
   1d19c:	5522                	lw	a0,40(sp)
   1d19e:	c509                	beqz	a0,1d1a8 <__subtf3+0xe00>
   1d1a0:	2f21                	jal	1d8b8 <__clzsi2>
   1d1a2:	02050513          	addi	a0,a0,32
   1d1a6:	bf2d                	j	1d0e0 <__subtf3+0xd38>
   1d1a8:	5512                	lw	a0,36(sp)
   1d1aa:	c509                	beqz	a0,1d1b4 <__subtf3+0xe0c>
   1d1ac:	2731                	jal	1d8b8 <__clzsi2>
   1d1ae:	04050513          	addi	a0,a0,64
   1d1b2:	b73d                	j	1d0e0 <__subtf3+0xd38>
   1d1b4:	5502                	lw	a0,32(sp)
   1d1b6:	2709                	jal	1d8b8 <__clzsi2>
   1d1b8:	06050513          	addi	a0,a0,96
   1d1bc:	b715                	j	1d0e0 <__subtf3+0xd38>
   1d1be:	55f1                	li	a1,-4
   1d1c0:	02b705b3          	mul	a1,a4,a1
   1d1c4:	1074                	addi	a3,sp,44
   1d1c6:	460d                	li	a2,3
   1d1c8:	00b68533          	add	a0,a3,a1
   1d1cc:	4108                	lw	a0,0(a0)
   1d1ce:	167d                	addi	a2,a2,-1
   1d1d0:	16f1                	addi	a3,a3,-4
   1d1d2:	c2c8                	sw	a0,4(a3)
   1d1d4:	fee65ae3          	bge	a2,a4,1d1c8 <__subtf3+0xe20>
   1d1d8:	fff70693          	addi	a3,a4,-1
   1d1dc:	b7b9                	j	1d12a <__subtf3+0xd82>
   1d1de:	4288                	lw	a0,0(a3)
   1d1e0:	ffc6a883          	lw	a7,-4(a3)
   1d1e4:	00c68e33          	add	t3,a3,a2
   1d1e8:	01051533          	sll	a0,a0,a6
   1d1ec:	00b8d8b3          	srl	a7,a7,a1
   1d1f0:	01156533          	or	a0,a0,a7
   1d1f4:	00ae2023          	sw	a0,0(t3)
   1d1f8:	16f1                	addi	a3,a3,-4
   1d1fa:	bf19                	j	1d110 <__subtf3+0xd68>
   1d1fc:	4208                	lw	a0,0(a2)
   1d1fe:	0685                	addi	a3,a3,1
   1d200:	0611                	addi	a2,a2,4
   1d202:	00a36333          	or	t1,t1,a0
   1d206:	b785                	j	1d166 <__subtf3+0xdbe>
   1d208:	04060593          	addi	a1,a2,64
   1d20c:	958a                	add	a1,a1,sp
   1d20e:	fe05a583          	lw	a1,-32(a1)
   1d212:	02000813          	li	a6,32
   1d216:	40f80833          	sub	a6,a6,a5
   1d21a:	010595b3          	sll	a1,a1,a6
   1d21e:	00b36333          	or	t1,t1,a1
   1d222:	4e01                	li	t3,0
   1d224:	00c885b3          	add	a1,a7,a2
   1d228:	40c00633          	neg	a2,a2
   1d22c:	04de4a63          	blt	t3,a3,1d280 <__subtf3+0xed8>
   1d230:	4611                	li	a2,4
   1d232:	40e60733          	sub	a4,a2,a4
   1d236:	5632                	lw	a2,44(sp)
   1d238:	068a                	slli	a3,a3,0x2
   1d23a:	04068693          	addi	a3,a3,64
   1d23e:	968a                	add	a3,a3,sp
   1d240:	00f657b3          	srl	a5,a2,a5
   1d244:	fef6a023          	sw	a5,-32(a3)
   1d248:	4691                	li	a3,4
   1d24a:	8e99                	sub	a3,a3,a4
   1d24c:	070a                	slli	a4,a4,0x2
   1d24e:	00e887b3          	add	a5,a7,a4
   1d252:	00269713          	slli	a4,a3,0x2
   1d256:	46a1                	li	a3,8
   1d258:	00d76863          	bltu	a4,a3,1d268 <__subtf3+0xec0>
   1d25c:	0007a023          	sw	zero,0(a5)
   1d260:	0007a223          	sw	zero,4(a5)
   1d264:	1761                	addi	a4,a4,-8
   1d266:	07a1                	addi	a5,a5,8
   1d268:	4691                	li	a3,4
   1d26a:	00d76463          	bltu	a4,a3,1d272 <__subtf3+0xeca>
   1d26e:	0007a023          	sw	zero,0(a5)
   1d272:	5702                	lw	a4,32(sp)
   1d274:	006037b3          	snez	a5,t1
   1d278:	8fd9                	or	a5,a5,a4
   1d27a:	d03e                	sw	a5,32(sp)
   1d27c:	e6eff06f          	j	1c8ea <__subtf3+0x542>
   1d280:	4188                	lw	a0,0(a1)
   1d282:	0045ae83          	lw	t4,4(a1)
   1d286:	00c58f33          	add	t5,a1,a2
   1d28a:	00f55533          	srl	a0,a0,a5
   1d28e:	010e9eb3          	sll	t4,t4,a6
   1d292:	01d56533          	or	a0,a0,t4
   1d296:	00af2023          	sw	a0,0(t5)
   1d29a:	0e05                	addi	t3,t3,1
   1d29c:	0591                	addi	a1,a1,4
   1d29e:	b779                	j	1d22c <__subtf3+0xe84>
   1d2a0:	5732                	lw	a4,44(sp)
   1d2a2:	fff806b7          	lui	a3,0xfff80
   1d2a6:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff60413>
   1d2a8:	8f75                	and	a4,a4,a3
   1d2aa:	40f407b3          	sub	a5,s0,a5
   1d2ae:	d63a                	sw	a4,44(sp)
   1d2b0:	f8aff06f          	j	1ca3a <__subtf3+0x692>
   1d2b4:	da2e                	sw	a1,52(sp)
   1d2b6:	d83e                	sw	a5,48(sp)
   1d2b8:	dc32                	sw	a2,56(sp)
   1d2ba:	de36                	sw	a3,60(sp)
   1d2bc:	1818                	addi	a4,sp,48
   1d2be:	104c                	addi	a1,sp,36
   1d2c0:	4754                	lw	a3,12(a4)
   1d2c2:	4710                	lw	a2,8(a4)
   1d2c4:	1771                	addi	a4,a4,-4
   1d2c6:	0686                	slli	a3,a3,0x1
   1d2c8:	827d                	srli	a2,a2,0x1f
   1d2ca:	8ed1                	or	a3,a3,a2
   1d2cc:	cb14                	sw	a3,16(a4)
   1d2ce:	fee599e3          	bne	a1,a4,1d2c0 <__subtf3+0xf18>
   1d2d2:	0786                	slli	a5,a5,0x1
   1d2d4:	0077f713          	andi	a4,a5,7
   1d2d8:	4401                	li	s0,0
   1d2da:	cf0d                	beqz	a4,1d314 <__subtf3+0xf6c>
   1d2dc:	4709                	li	a4,2
   1d2de:	56f2                	lw	a3,60(sp)
   1d2e0:	14ea0463          	beq	s4,a4,1d428 <__subtf3+0x1080>
   1d2e4:	470d                	li	a4,3
   1d2e6:	12ea0b63          	beq	s4,a4,1d41c <__subtf3+0x1074>
   1d2ea:	020a1463          	bnez	s4,1d312 <__subtf3+0xf6a>
   1d2ee:	00f7f713          	andi	a4,a5,15
   1d2f2:	4611                	li	a2,4
   1d2f4:	00c70f63          	beq	a4,a2,1d312 <__subtf3+0xf6a>
   1d2f8:	0791                	addi	a5,a5,4
   1d2fa:	0047b793          	sltiu	a5,a5,4
   1d2fe:	5752                	lw	a4,52(sp)
   1d300:	973e                	add	a4,a4,a5
   1d302:	00f73733          	sltu	a4,a4,a5
   1d306:	57e2                	lw	a5,56(sp)
   1d308:	97ba                	add	a5,a5,a4
   1d30a:	00e7b7b3          	sltu	a5,a5,a4
   1d30e:	97b6                	add	a5,a5,a3
   1d310:	de3e                	sw	a5,60(sp)
   1d312:	4405                	li	s0,1
   1d314:	56f2                	lw	a3,60(sp)
   1d316:	4781                	li	a5,0
   1d318:	82d1                	srli	a3,a3,0x14
   1d31a:	0016c693          	xori	a3,a3,1
   1d31e:	8a85                	andi	a3,a3,1
   1d320:	5702                	lw	a4,32(sp)
   1d322:	00777613          	andi	a2,a4,7
   1d326:	c229                	beqz	a2,1d368 <__subtf3+0xfc0>
   1d328:	4589                	li	a1,2
   1d32a:	5632                	lw	a2,44(sp)
   1d32c:	10ba0863          	beq	s4,a1,1d43c <__subtf3+0x1094>
   1d330:	458d                	li	a1,3
   1d332:	0eba0e63          	beq	s4,a1,1d42e <__subtf3+0x1086>
   1d336:	020a1763          	bnez	s4,1d364 <__subtf3+0xfbc>
   1d33a:	00f77593          	andi	a1,a4,15
   1d33e:	4511                	li	a0,4
   1d340:	02a58263          	beq	a1,a0,1d364 <__subtf3+0xfbc>
   1d344:	0711                	addi	a4,a4,4
   1d346:	d03a                	sw	a4,32(sp)
   1d348:	00473713          	sltiu	a4,a4,4
   1d34c:	5592                	lw	a1,36(sp)
   1d34e:	972e                	add	a4,a4,a1
   1d350:	d23a                	sw	a4,36(sp)
   1d352:	00b73733          	sltu	a4,a4,a1
   1d356:	55a2                	lw	a1,40(sp)
   1d358:	972e                	add	a4,a4,a1
   1d35a:	d43a                	sw	a4,40(sp)
   1d35c:	00b73733          	sltu	a4,a4,a1
   1d360:	9732                	add	a4,a4,a2
   1d362:	d63a                	sw	a4,44(sp)
   1d364:	00146413          	ori	s0,s0,1
   1d368:	c689                	beqz	a3,1d372 <__subtf3+0xfca>
   1d36a:	00147713          	andi	a4,s0,1
   1d36e:	0706                	slli	a4,a4,0x1
   1d370:	8c59                	or	s0,s0,a4
   1d372:	5732                	lw	a4,44(sp)
   1d374:	00c71693          	slli	a3,a4,0xc
   1d378:	0006dc63          	bgez	a3,1d390 <__subtf3+0xfe8>
   1d37c:	66a1                	lui	a3,0x8
   1d37e:	0785                	addi	a5,a5,1
   1d380:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1d382:	0cd78063          	beq	a5,a3,1d442 <__subtf3+0x109a>
   1d386:	fff806b7          	lui	a3,0xfff80
   1d38a:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff60413>
   1d38c:	8f75                	and	a4,a4,a3
   1d38e:	d63a                	sw	a4,44(sp)
   1d390:	1018                	addi	a4,sp,32
   1d392:	106c                	addi	a1,sp,44
   1d394:	4314                	lw	a3,0(a4)
   1d396:	4350                	lw	a2,4(a4)
   1d398:	828d                	srli	a3,a3,0x3
   1d39a:	0676                	slli	a2,a2,0x1d
   1d39c:	8ed1                	or	a3,a3,a2
   1d39e:	c314                	sw	a3,0(a4)
   1d3a0:	0711                	addi	a4,a4,4
   1d3a2:	feb719e3          	bne	a4,a1,1d394 <__subtf3+0xfec>
   1d3a6:	56b2                	lw	a3,44(sp)
   1d3a8:	6621                	lui	a2,0x8
   1d3aa:	fff60713          	addi	a4,a2,-1 # 7fff <exit-0x8095>
   1d3ae:	828d                	srli	a3,a3,0x3
   1d3b0:	d636                	sw	a3,44(sp)
   1d3b2:	00e79e63          	bne	a5,a4,1d3ce <__subtf3+0x1026>
   1d3b6:	5592                	lw	a1,36(sp)
   1d3b8:	5702                	lw	a4,32(sp)
   1d3ba:	8f4d                	or	a4,a4,a1
   1d3bc:	55a2                	lw	a1,40(sp)
   1d3be:	8f4d                	or	a4,a4,a1
   1d3c0:	8f55                	or	a4,a4,a3
   1d3c2:	c711                	beqz	a4,1d3ce <__subtf3+0x1026>
   1d3c4:	d632                	sw	a2,44(sp)
   1d3c6:	d402                	sw	zero,40(sp)
   1d3c8:	d202                	sw	zero,36(sp)
   1d3ca:	d002                	sw	zero,32(sp)
   1d3cc:	4981                	li	s3,0
   1d3ce:	55b2                	lw	a1,44(sp)
   1d3d0:	07c6                	slli	a5,a5,0x11
   1d3d2:	83c5                	srli	a5,a5,0x11
   1d3d4:	09be                	slli	s3,s3,0xf
   1d3d6:	00f9e9b3          	or	s3,s3,a5
   1d3da:	02b11e23          	sh	a1,60(sp)
   1d3de:	03311f23          	sh	s3,62(sp)
   1d3e2:	5602                	lw	a2,32(sp)
   1d3e4:	5692                	lw	a3,36(sp)
   1d3e6:	5722                	lw	a4,40(sp)
   1d3e8:	57f2                	lw	a5,60(sp)
   1d3ea:	c019                	beqz	s0,1d3f0 <__subtf3+0x1048>
   1d3ec:	00142073          	csrs	fflags,s0
   1d3f0:	50b6                	lw	ra,108(sp)
   1d3f2:	5426                	lw	s0,104(sp)
   1d3f4:	00c92023          	sw	a2,0(s2)
   1d3f8:	00d92223          	sw	a3,4(s2)
   1d3fc:	00e92423          	sw	a4,8(s2)
   1d400:	00f92623          	sw	a5,12(s2)
   1d404:	5496                	lw	s1,100(sp)
   1d406:	49f6                	lw	s3,92(sp)
   1d408:	4a66                	lw	s4,88(sp)
   1d40a:	4ad6                	lw	s5,84(sp)
   1d40c:	4b46                	lw	s6,80(sp)
   1d40e:	4bb6                	lw	s7,76(sp)
   1d410:	4c26                	lw	s8,72(sp)
   1d412:	4c96                	lw	s9,68(sp)
   1d414:	854a                	mv	a0,s2
   1d416:	5906                	lw	s2,96(sp)
   1d418:	6165                	addi	sp,sp,112
   1d41a:	8082                	ret
   1d41c:	ee099be3          	bnez	s3,1d312 <__subtf3+0xf6a>
   1d420:	07a1                	addi	a5,a5,8
   1d422:	0087b793          	sltiu	a5,a5,8
   1d426:	bde1                	j	1d2fe <__subtf3+0xf56>
   1d428:	ee0985e3          	beqz	s3,1d312 <__subtf3+0xf6a>
   1d42c:	bfd5                	j	1d420 <__subtf3+0x1078>
   1d42e:	f2099be3          	bnez	s3,1d364 <__subtf3+0xfbc>
   1d432:	0721                	addi	a4,a4,8
   1d434:	d03a                	sw	a4,32(sp)
   1d436:	00873713          	sltiu	a4,a4,8
   1d43a:	bf09                	j	1d34c <__subtf3+0xfa4>
   1d43c:	f20984e3          	beqz	s3,1d364 <__subtf3+0xfbc>
   1d440:	bfcd                	j	1d432 <__subtf3+0x108a>
   1d442:	4701                	li	a4,0
   1d444:	020a0063          	beqz	s4,1d464 <__subtf3+0x10bc>
   1d448:	468d                	li	a3,3
   1d44a:	00da1863          	bne	s4,a3,1d45a <__subtf3+0x10b2>
   1d44e:	00098b63          	beqz	s3,1d464 <__subtf3+0x10bc>
   1d452:	67a1                	lui	a5,0x8
   1d454:	577d                	li	a4,-1
   1d456:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   1d458:	a031                	j	1d464 <__subtf3+0x10bc>
   1d45a:	4689                	li	a3,2
   1d45c:	feda1be3          	bne	s4,a3,1d452 <__subtf3+0x10aa>
   1d460:	fe0989e3          	beqz	s3,1d452 <__subtf3+0x10aa>
   1d464:	d63a                	sw	a4,44(sp)
   1d466:	d43a                	sw	a4,40(sp)
   1d468:	d23a                	sw	a4,36(sp)
   1d46a:	d03a                	sw	a4,32(sp)
   1d46c:	00546413          	ori	s0,s0,5
   1d470:	b705                	j	1d390 <__subtf3+0xfe8>
   1d472:	d636                	sw	a3,44(sp)
   1d474:	c76ff06f          	j	1c8ea <__subtf3+0x542>
   1d478:	d68a8763          	beq	s5,s0,1c9e6 <__subtf3+0x63e>
   1d47c:	4401                	li	s0,0
   1d47e:	d16ff06f          	j	1c994 <__subtf3+0x5ec>
   1d482:	b68a8de3          	beq	s5,s0,1cffc <__subtf3+0xc54>
   1d486:	4401                	li	s0,0
   1d488:	b699                	j	1cfce <__subtf3+0xc26>

0001d48a <__unordtf2>:
   1d48a:	4114                	lw	a3,0(a0)
   1d48c:	00452f03          	lw	t5,4(a0)
   1d490:	00852e83          	lw	t4,8(a0)
   1d494:	4550                	lw	a2,12(a0)
   1d496:	419c                	lw	a5,0(a1)
   1d498:	0045ae03          	lw	t3,4(a1)
   1d49c:	0085a303          	lw	t1,8(a1)
   1d4a0:	45d8                	lw	a4,12(a1)
   1d4a2:	1141                	addi	sp,sp,-16
   1d4a4:	002025f3          	frrm	a1
   1d4a8:	6521                	lui	a0,0x8
   1d4aa:	01061813          	slli	a6,a2,0x10
   1d4ae:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1d4b0:	8241                	srli	a2,a2,0x10
   1d4b2:	01071593          	slli	a1,a4,0x10
   1d4b6:	8e69                	and	a2,a2,a0
   1d4b8:	8341                	srli	a4,a4,0x10
   1d4ba:	01085813          	srli	a6,a6,0x10
   1d4be:	81c1                	srli	a1,a1,0x10
   1d4c0:	8f69                	and	a4,a4,a0
   1d4c2:	00a61963          	bne	a2,a0,1d4d4 <__unordtf2+0x4a>
   1d4c6:	01e6e533          	or	a0,a3,t5
   1d4ca:	01d56533          	or	a0,a0,t4
   1d4ce:	01056533          	or	a0,a0,a6
   1d4d2:	e51d                	bnez	a0,1d500 <__unordtf2+0x76>
   1d4d4:	68a1                	lui	a7,0x8
   1d4d6:	18fd                	addi	a7,a7,-1 # 7fff <exit-0x8095>
   1d4d8:	4501                	li	a0,0
   1d4da:	05171c63          	bne	a4,a7,1d532 <__unordtf2+0xa8>
   1d4de:	01c7e8b3          	or	a7,a5,t3
   1d4e2:	0068e8b3          	or	a7,a7,t1
   1d4e6:	00b8e8b3          	or	a7,a7,a1
   1d4ea:	04088463          	beqz	a7,1d532 <__unordtf2+0xa8>
   1d4ee:	02e61a63          	bne	a2,a4,1d522 <__unordtf2+0x98>
   1d4f2:	01e6e6b3          	or	a3,a3,t5
   1d4f6:	01d6e6b3          	or	a3,a3,t4
   1d4fa:	0106e6b3          	or	a3,a3,a6
   1d4fe:	ca99                	beqz	a3,1d514 <__unordtf2+0x8a>
   1d500:	0842                	slli	a6,a6,0x10
   1d502:	41085813          	srai	a6,a6,0x10
   1d506:	02085363          	bgez	a6,1d52c <__unordtf2+0xa2>
   1d50a:	66a1                	lui	a3,0x8
   1d50c:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1d50e:	4505                	li	a0,1
   1d510:	02d71163          	bne	a4,a3,1d532 <__unordtf2+0xa8>
   1d514:	01c7e7b3          	or	a5,a5,t3
   1d518:	0067e7b3          	or	a5,a5,t1
   1d51c:	8fcd                	or	a5,a5,a1
   1d51e:	4505                	li	a0,1
   1d520:	cb89                	beqz	a5,1d532 <__unordtf2+0xa8>
   1d522:	05c2                	slli	a1,a1,0x10
   1d524:	85c1                	srai	a1,a1,0x10
   1d526:	4505                	li	a0,1
   1d528:	0005c563          	bltz	a1,1d532 <__unordtf2+0xa8>
   1d52c:	00186073          	csrsi	fflags,16
   1d530:	4505                	li	a0,1
   1d532:	0141                	addi	sp,sp,16
   1d534:	8082                	ret

0001d536 <__fixtfsi>:
   1d536:	411c                	lw	a5,0(a0)
   1d538:	00452803          	lw	a6,4(a0)
   1d53c:	4518                	lw	a4,8(a0)
   1d53e:	4550                	lw	a2,12(a0)
   1d540:	1101                	addi	sp,sp,-32
   1d542:	002026f3          	frrm	a3
   1d546:	01061693          	slli	a3,a2,0x10
   1d54a:	00161593          	slli	a1,a2,0x1
   1d54e:	c632                	sw	a2,12(sp)
   1d550:	01f65893          	srli	a7,a2,0x1f
   1d554:	6611                	lui	a2,0x4
   1d556:	c03e                	sw	a5,0(sp)
   1d558:	c242                	sw	a6,4(sp)
   1d55a:	c43a                	sw	a4,8(sp)
   1d55c:	c83e                	sw	a5,16(sp)
   1d55e:	ca42                	sw	a6,20(sp)
   1d560:	cc3a                	sw	a4,24(sp)
   1d562:	81c5                	srli	a1,a1,0x11
   1d564:	1679                	addi	a2,a2,-2 # 3ffe <exit-0xc096>
   1d566:	82c1                	srli	a3,a3,0x10
   1d568:	00b64a63          	blt	a2,a1,1d57c <__fixtfsi+0x46>
   1d56c:	e9f9                	bnez	a1,1d642 <__fixtfsi+0x10c>
   1d56e:	0107e533          	or	a0,a5,a6
   1d572:	8d59                	or	a0,a0,a4
   1d574:	8d55                	or	a0,a0,a3
   1d576:	e571                	bnez	a0,1d642 <__fixtfsi+0x10c>
   1d578:	6105                	addi	sp,sp,32
   1d57a:	8082                	ret
   1d57c:	6511                	lui	a0,0x4
   1d57e:	0575                	addi	a0,a0,29 # 401d <exit-0xc077>
   1d580:	8646                	mv	a2,a7
   1d582:	02b55763          	bge	a0,a1,1d5b0 <__fixtfsi+0x7a>
   1d586:	0c088163          	beqz	a7,1d648 <__fixtfsi+0x112>
   1d58a:	6511                	lui	a0,0x4
   1d58c:	0579                	addi	a0,a0,30 # 401e <exit-0xc076>
   1d58e:	0ca59263          	bne	a1,a0,1d652 <__fixtfsi+0x11c>
   1d592:	01175593          	srli	a1,a4,0x11
   1d596:	06be                	slli	a3,a3,0xf
   1d598:	8ecd                	or	a3,a3,a1
   1d59a:	eec5                	bnez	a3,1d652 <__fixtfsi+0x11c>
   1d59c:	0107e7b3          	or	a5,a5,a6
   1d5a0:	073e                	slli	a4,a4,0xf
   1d5a2:	8f5d                	or	a4,a4,a5
   1d5a4:	80000537          	lui	a0,0x80000
   1d5a8:	db61                	beqz	a4,1d578 <__fixtfsi+0x42>
   1d5aa:	00162073          	csrs	fflags,a2
   1d5ae:	b7e9                	j	1d578 <__fixtfsi+0x42>
   1d5b0:	67c1                	lui	a5,0x10
   1d5b2:	8fd5                	or	a5,a5,a3
   1d5b4:	6691                	lui	a3,0x4
   1d5b6:	06f68693          	addi	a3,a3,111 # 406f <exit-0xc025>
   1d5ba:	8e8d                	sub	a3,a3,a1
   1d5bc:	4056d513          	srai	a0,a3,0x5
   1d5c0:	ce3e                	sw	a5,28(sp)
   1d5c2:	8afd                	andi	a3,a3,31
   1d5c4:	080c                	addi	a1,sp,16
   1d5c6:	4801                	li	a6,0
   1d5c8:	4601                	li	a2,0
   1d5ca:	0005a303          	lw	t1,0(a1)
   1d5ce:	0605                	addi	a2,a2,1
   1d5d0:	0591                	addi	a1,a1,4
   1d5d2:	00686833          	or	a6,a6,t1
   1d5d6:	fec51ae3          	bne	a0,a2,1d5ca <__fixtfsi+0x94>
   1d5da:	00251613          	slli	a2,a0,0x2
   1d5de:	e28d                	bnez	a3,1d600 <__fixtfsi+0xca>
   1d5e0:	02060793          	addi	a5,a2,32
   1d5e4:	00278633          	add	a2,a5,sp
   1d5e8:	ff062783          	lw	a5,-16(a2)
   1d5ec:	c83e                	sw	a5,16(sp)
   1d5ee:	4542                	lw	a0,16(sp)
   1d5f0:	00088463          	beqz	a7,1d5f8 <__fixtfsi+0xc2>
   1d5f4:	40a00533          	neg	a0,a0
   1d5f8:	4605                	li	a2,1
   1d5fa:	fa0818e3          	bnez	a6,1d5aa <__fixtfsi+0x74>
   1d5fe:	bfad                	j	1d578 <__fixtfsi+0x42>
   1d600:	02060613          	addi	a2,a2,32
   1d604:	960a                	add	a2,a2,sp
   1d606:	ff062603          	lw	a2,-16(a2)
   1d60a:	02000593          	li	a1,32
   1d60e:	8d95                	sub	a1,a1,a3
   1d610:	00b61633          	sll	a2,a2,a1
   1d614:	4309                	li	t1,2
   1d616:	00c86833          	or	a6,a6,a2
   1d61a:	4601                	li	a2,0
   1d61c:	00651963          	bne	a0,t1,1d62e <__fixtfsi+0xf8>
   1d620:	00d75733          	srl	a4,a4,a3
   1d624:	00b795b3          	sll	a1,a5,a1
   1d628:	8f4d                	or	a4,a4,a1
   1d62a:	c83a                	sw	a4,16(sp)
   1d62c:	4605                	li	a2,1
   1d62e:	060a                	slli	a2,a2,0x2
   1d630:	02060713          	addi	a4,a2,32
   1d634:	00270633          	add	a2,a4,sp
   1d638:	00d7d7b3          	srl	a5,a5,a3
   1d63c:	fef62823          	sw	a5,-16(a2)
   1d640:	b77d                	j	1d5ee <__fixtfsi+0xb8>
   1d642:	4605                	li	a2,1
   1d644:	4501                	li	a0,0
   1d646:	b795                	j	1d5aa <__fixtfsi+0x74>
   1d648:	80000537          	lui	a0,0x80000
   1d64c:	4641                	li	a2,16
   1d64e:	157d                	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe0413>
   1d650:	bfa9                	j	1d5aa <__fixtfsi+0x74>
   1d652:	4641                	li	a2,16
   1d654:	80000537          	lui	a0,0x80000
   1d658:	bf89                	j	1d5aa <__fixtfsi+0x74>

0001d65a <__floatsitf>:
   1d65a:	7179                	addi	sp,sp,-48
   1d65c:	d226                	sw	s1,36(sp)
   1d65e:	d606                	sw	ra,44(sp)
   1d660:	d422                	sw	s0,40(sp)
   1d662:	d04a                	sw	s2,32(sp)
   1d664:	84aa                	mv	s1,a0
   1d666:	cdcd                	beqz	a1,1d720 <__floatsitf+0xc6>
   1d668:	41f5d793          	srai	a5,a1,0x1f
   1d66c:	00b7c433          	xor	s0,a5,a1
   1d670:	8c1d                	sub	s0,s0,a5
   1d672:	8522                	mv	a0,s0
   1d674:	01f5d913          	srli	s2,a1,0x1f
   1d678:	2481                	jal	1d8b8 <__clzsi2>
   1d67a:	6711                	lui	a4,0x4
   1d67c:	0779                	addi	a4,a4,30 # 401e <exit-0xc076>
   1d67e:	05150793          	addi	a5,a0,81 # 80000051 <__BSS_END__+0x7ffe0465>
   1d682:	40a70633          	sub	a2,a4,a0
   1d686:	c822                	sw	s0,16(sp)
   1d688:	4057d713          	srai	a4,a5,0x5
   1d68c:	ca02                	sw	zero,20(sp)
   1d68e:	cc02                	sw	zero,24(sp)
   1d690:	ce02                	sw	zero,28(sp)
   1d692:	8bfd                	andi	a5,a5,31
   1d694:	c78d                	beqz	a5,1d6be <__floatsitf+0x64>
   1d696:	4689                	li	a3,2
   1d698:	08d71263          	bne	a4,a3,1d71c <__floatsitf+0xc2>
   1d69c:	02000693          	li	a3,32
   1d6a0:	8e9d                	sub	a3,a3,a5
   1d6a2:	00d456b3          	srl	a3,s0,a3
   1d6a6:	ce36                	sw	a3,28(sp)
   1d6a8:	fff70693          	addi	a3,a4,-1
   1d6ac:	070a                	slli	a4,a4,0x2
   1d6ae:	02070713          	addi	a4,a4,32
   1d6b2:	970a                	add	a4,a4,sp
   1d6b4:	00f41433          	sll	s0,s0,a5
   1d6b8:	fe872823          	sw	s0,-16(a4)
   1d6bc:	a005                	j	1d6dc <__floatsitf+0x82>
   1d6be:	478d                	li	a5,3
   1d6c0:	8f99                	sub	a5,a5,a4
   1d6c2:	078a                	slli	a5,a5,0x2
   1d6c4:	02078793          	addi	a5,a5,32 # 10020 <exit-0x74>
   1d6c8:	978a                	add	a5,a5,sp
   1d6ca:	ff07a783          	lw	a5,-16(a5)
   1d6ce:	4689                	li	a3,2
   1d6d0:	ce3e                	sw	a5,28(sp)
   1d6d2:	4789                	li	a5,2
   1d6d4:	00f71463          	bne	a4,a5,1d6dc <__floatsitf+0x82>
   1d6d8:	cc22                	sw	s0,24(sp)
   1d6da:	4685                	li	a3,1
   1d6dc:	068a                	slli	a3,a3,0x2
   1d6de:	c802                	sw	zero,16(sp)
   1d6e0:	ca02                	sw	zero,20(sp)
   1d6e2:	16f1                	addi	a3,a3,-4
   1d6e4:	4791                	li	a5,4
   1d6e6:	00f6e363          	bltu	a3,a5,1d6ec <__floatsitf+0x92>
   1d6ea:	cc02                	sw	zero,24(sp)
   1d6ec:	85ca                	mv	a1,s2
   1d6ee:	47f2                	lw	a5,28(sp)
   1d6f0:	00f59413          	slli	s0,a1,0xf
   1d6f4:	8c51                	or	s0,s0,a2
   1d6f6:	00811723          	sh	s0,14(sp)
   1d6fa:	00f11623          	sh	a5,12(sp)
   1d6fe:	4542                	lw	a0,16(sp)
   1d700:	46d2                	lw	a3,20(sp)
   1d702:	4762                	lw	a4,24(sp)
   1d704:	47b2                	lw	a5,12(sp)
   1d706:	50b2                	lw	ra,44(sp)
   1d708:	5422                	lw	s0,40(sp)
   1d70a:	c088                	sw	a0,0(s1)
   1d70c:	c0d4                	sw	a3,4(s1)
   1d70e:	c498                	sw	a4,8(s1)
   1d710:	c4dc                	sw	a5,12(s1)
   1d712:	5902                	lw	s2,32(sp)
   1d714:	8526                	mv	a0,s1
   1d716:	5492                	lw	s1,36(sp)
   1d718:	6145                	addi	sp,sp,48
   1d71a:	8082                	ret
   1d71c:	470d                	li	a4,3
   1d71e:	b769                	j	1d6a8 <__floatsitf+0x4e>
   1d720:	ce02                	sw	zero,28(sp)
   1d722:	cc02                	sw	zero,24(sp)
   1d724:	ca02                	sw	zero,20(sp)
   1d726:	c802                	sw	zero,16(sp)
   1d728:	4601                	li	a2,0
   1d72a:	b7d1                	j	1d6ee <__floatsitf+0x94>

0001d72c <__extenddftf2>:
   1d72c:	7139                	addi	sp,sp,-64
   1d72e:	d84a                	sw	s2,48(sp)
   1d730:	d64e                	sw	s3,44(sp)
   1d732:	de06                	sw	ra,60(sp)
   1d734:	dc22                	sw	s0,56(sp)
   1d736:	da26                	sw	s1,52(sp)
   1d738:	89aa                	mv	s3,a0
   1d73a:	892e                	mv	s2,a1
   1d73c:	002027f3          	frrm	a5
   1d740:	01465413          	srli	s0,a2,0x14
   1d744:	00c61793          	slli	a5,a2,0xc
   1d748:	7ff47413          	andi	s0,s0,2047
   1d74c:	83b1                	srli	a5,a5,0xc
   1d74e:	00140713          	addi	a4,s0,1
   1d752:	c82e                	sw	a1,16(sp)
   1d754:	ca3e                	sw	a5,20(sp)
   1d756:	ce02                	sw	zero,28(sp)
   1d758:	cc02                	sw	zero,24(sp)
   1d75a:	7fe77713          	andi	a4,a4,2046
   1d75e:	01f65493          	srli	s1,a2,0x1f
   1d762:	c325                	beqz	a4,1d7c2 <__extenddftf2+0x96>
   1d764:	0047d693          	srli	a3,a5,0x4
   1d768:	6711                	lui	a4,0x4
   1d76a:	ce36                	sw	a3,28(sp)
   1d76c:	07f2                	slli	a5,a5,0x1c
   1d76e:	0045d693          	srli	a3,a1,0x4
   1d772:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc494>
   1d776:	8fd5                	or	a5,a5,a3
   1d778:	01c59913          	slli	s2,a1,0x1c
   1d77c:	9722                	add	a4,a4,s0
   1d77e:	cc3e                	sw	a5,24(sp)
   1d780:	ca4a                	sw	s2,20(sp)
   1d782:	c802                	sw	zero,16(sp)
   1d784:	4401                	li	s0,0
   1d786:	47f2                	lw	a5,28(sp)
   1d788:	04be                	slli	s1,s1,0xf
   1d78a:	8cd9                	or	s1,s1,a4
   1d78c:	00f11623          	sh	a5,12(sp)
   1d790:	00911723          	sh	s1,14(sp)
   1d794:	45c2                	lw	a1,16(sp)
   1d796:	4652                	lw	a2,20(sp)
   1d798:	46e2                	lw	a3,24(sp)
   1d79a:	47b2                	lw	a5,12(sp)
   1d79c:	c019                	beqz	s0,1d7a2 <__extenddftf2+0x76>
   1d79e:	00186073          	csrsi	fflags,16
   1d7a2:	50f2                	lw	ra,60(sp)
   1d7a4:	5462                	lw	s0,56(sp)
   1d7a6:	00b9a023          	sw	a1,0(s3)
   1d7aa:	00c9a223          	sw	a2,4(s3)
   1d7ae:	00d9a423          	sw	a3,8(s3)
   1d7b2:	00f9a623          	sw	a5,12(s3)
   1d7b6:	54d2                	lw	s1,52(sp)
   1d7b8:	5942                	lw	s2,48(sp)
   1d7ba:	854e                	mv	a0,s3
   1d7bc:	59b2                	lw	s3,44(sp)
   1d7be:	6121                	addi	sp,sp,64
   1d7c0:	8082                	ret
   1d7c2:	00b7e533          	or	a0,a5,a1
   1d7c6:	e061                	bnez	s0,1d886 <__extenddftf2+0x15a>
   1d7c8:	4701                	li	a4,0
   1d7ca:	dd55                	beqz	a0,1d786 <__extenddftf2+0x5a>
   1d7cc:	c7a1                	beqz	a5,1d814 <__extenddftf2+0xe8>
   1d7ce:	853e                	mv	a0,a5
   1d7d0:	20e5                	jal	1d8b8 <__clzsi2>
   1d7d2:	03150693          	addi	a3,a0,49
   1d7d6:	4056d793          	srai	a5,a3,0x5
   1d7da:	8afd                	andi	a3,a3,31
   1d7dc:	c2a1                	beqz	a3,1d81c <__extenddftf2+0xf0>
   1d7de:	5671                	li	a2,-4
   1d7e0:	02c78633          	mul	a2,a5,a2
   1d7e4:	02000813          	li	a6,32
   1d7e8:	01010313          	addi	t1,sp,16
   1d7ec:	40d80833          	sub	a6,a6,a3
   1d7f0:	00c60713          	addi	a4,a2,12
   1d7f4:	971a                	add	a4,a4,t1
   1d7f6:	40c00633          	neg	a2,a2
   1d7fa:	06e31763          	bne	t1,a4,1d868 <__extenddftf2+0x13c>
   1d7fe:	fff78713          	addi	a4,a5,-1
   1d802:	078a                	slli	a5,a5,0x2
   1d804:	02078793          	addi	a5,a5,32
   1d808:	978a                	add	a5,a5,sp
   1d80a:	00d916b3          	sll	a3,s2,a3
   1d80e:	fed7a823          	sw	a3,-16(a5)
   1d812:	a025                	j	1d83a <__extenddftf2+0x10e>
   1d814:	2055                	jal	1d8b8 <__clzsi2>
   1d816:	02050513          	addi	a0,a0,32
   1d81a:	bf65                	j	1d7d2 <__extenddftf2+0xa6>
   1d81c:	5671                	li	a2,-4
   1d81e:	02c78633          	mul	a2,a5,a2
   1d822:	0878                	addi	a4,sp,28
   1d824:	468d                	li	a3,3
   1d826:	00c705b3          	add	a1,a4,a2
   1d82a:	418c                	lw	a1,0(a1)
   1d82c:	16fd                	addi	a3,a3,-1
   1d82e:	1771                	addi	a4,a4,-4
   1d830:	c34c                	sw	a1,4(a4)
   1d832:	fef6dae3          	bge	a3,a5,1d826 <__extenddftf2+0xfa>
   1d836:	fff78713          	addi	a4,a5,-1
   1d83a:	00170793          	addi	a5,a4,1
   1d83e:	078a                	slli	a5,a5,0x2
   1d840:	46a1                	li	a3,8
   1d842:	0818                	addi	a4,sp,16
   1d844:	00d7e863          	bltu	a5,a3,1d854 <__extenddftf2+0x128>
   1d848:	00072023          	sw	zero,0(a4)
   1d84c:	00072223          	sw	zero,4(a4)
   1d850:	17e1                	addi	a5,a5,-8
   1d852:	0838                	addi	a4,sp,24
   1d854:	4691                	li	a3,4
   1d856:	00d7e463          	bltu	a5,a3,1d85e <__extenddftf2+0x132>
   1d85a:	00072023          	sw	zero,0(a4)
   1d85e:	6711                	lui	a4,0x4
   1d860:	c0c70713          	addi	a4,a4,-1012 # 3c0c <exit-0xc488>
   1d864:	8f09                	sub	a4,a4,a0
   1d866:	b705                	j	1d786 <__extenddftf2+0x5a>
   1d868:	430c                	lw	a1,0(a4)
   1d86a:	ffc72883          	lw	a7,-4(a4)
   1d86e:	00c70e33          	add	t3,a4,a2
   1d872:	00d595b3          	sll	a1,a1,a3
   1d876:	0108d8b3          	srl	a7,a7,a6
   1d87a:	0115e5b3          	or	a1,a1,a7
   1d87e:	00be2023          	sw	a1,0(t3)
   1d882:	1771                	addi	a4,a4,-4
   1d884:	bf9d                	j	1d7fa <__extenddftf2+0xce>
   1d886:	c515                	beqz	a0,1d8b2 <__extenddftf2+0x186>
   1d888:	01c79713          	slli	a4,a5,0x1c
   1d88c:	0045d693          	srli	a3,a1,0x4
   1d890:	8f55                	or	a4,a4,a3
   1d892:	00080437          	lui	s0,0x80
   1d896:	0087b433          	sltu	s0,a5,s0
   1d89a:	cc3a                	sw	a4,24(sp)
   1d89c:	8391                	srli	a5,a5,0x4
   1d89e:	6721                	lui	a4,0x8
   1d8a0:	01c59913          	slli	s2,a1,0x1c
   1d8a4:	8fd9                	or	a5,a5,a4
   1d8a6:	0412                	slli	s0,s0,0x4
   1d8a8:	ca4a                	sw	s2,20(sp)
   1d8aa:	c802                	sw	zero,16(sp)
   1d8ac:	ce3e                	sw	a5,28(sp)
   1d8ae:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1d8b0:	bdd9                	j	1d786 <__extenddftf2+0x5a>
   1d8b2:	4401                	li	s0,0
   1d8b4:	6721                	lui	a4,0x8
   1d8b6:	bfe5                	j	1d8ae <__extenddftf2+0x182>

0001d8b8 <__clzsi2>:
   1d8b8:	67c1                	lui	a5,0x10
   1d8ba:	02f57563          	bgeu	a0,a5,1d8e4 <__clzsi2+0x2c>
   1d8be:	10053793          	sltiu	a5,a0,256
   1d8c2:	0017b793          	seqz	a5,a5
   1d8c6:	078e                	slli	a5,a5,0x3
   1d8c8:	6779                	lui	a4,0x1e
   1d8ca:	02000693          	li	a3,32
   1d8ce:	8e9d                	sub	a3,a3,a5
   1d8d0:	00f55533          	srl	a0,a0,a5
   1d8d4:	09070793          	addi	a5,a4,144 # 1e090 <__clz_tab>
   1d8d8:	97aa                	add	a5,a5,a0
   1d8da:	0007c503          	lbu	a0,0(a5) # 10000 <exit-0x94>
   1d8de:	40a68533          	sub	a0,a3,a0
   1d8e2:	8082                	ret
   1d8e4:	01000737          	lui	a4,0x1000
   1d8e8:	47e1                	li	a5,24
   1d8ea:	fce57fe3          	bgeu	a0,a4,1d8c8 <__clzsi2+0x10>
   1d8ee:	47c1                	li	a5,16
   1d8f0:	bfe1                	j	1d8c8 <__clzsi2+0x10>
