glabel func_8005E204
/* 05EE04 8005E204 27BDFF78 */  addiu $sp, $sp, -0x88
/* 05EE08 8005E208 AFB70044 */  sw    $s7, 0x44($sp)
/* 05EE0C 8005E20C AFB30034 */  sw    $s3, 0x34($sp)
/* 05EE10 8005E210 E7B40024 */  swc1  $f20, 0x24($sp)
/* 05EE14 8005E214 4486A000 */  mtc1  $a2, $f20
/* 05EE18 8005E218 00809825 */  move  $s3, $a0
/* 05EE1C 8005E21C 00A0B825 */  move  $s7, $a1
/* 05EE20 8005E220 AFBF004C */  sw    $ra, 0x4c($sp)
/* 05EE24 8005E224 AFB00028 */  sw    $s0, 0x28($sp)
/* 05EE28 8005E228 00E08025 */  move  $s0, $a3
/* 05EE2C 8005E22C AFBE0048 */  sw    $fp, 0x48($sp)
/* 05EE30 8005E230 AFB60040 */  sw    $s6, 0x40($sp)
/* 05EE34 8005E234 AFB5003C */  sw    $s5, 0x3c($sp)
/* 05EE38 8005E238 AFB40038 */  sw    $s4, 0x38($sp)
/* 05EE3C 8005E23C AFB20030 */  sw    $s2, 0x30($sp)
/* 05EE40 8005E240 AFB1002C */  sw    $s1, 0x2c($sp)
/* 05EE44 8005E244 E7B50020 */  swc1  $f21, 0x20($sp)
/* 05EE48 8005E248 27A5007C */  addiu $a1, $sp, 0x7c
/* 05EE4C 8005E24C 0C003A62 */  jal   func_8000E988
/* 05EE50 8005E250 27A40080 */   addiu $a0, $sp, 0x80
/* 05EE54 8005E254 320F0100 */  andi  $t7, $s0, 0x100
/* 05EE58 8005E258 000FC043 */  sra   $t8, $t7, 1
/* 05EE5C 8005E25C 37190008 */  ori   $t9, $t8, 8
/* 05EE60 8005E260 A3B00064 */  sb    $s0, 0x64($sp)
/* 05EE64 8005E264 A3B90065 */  sb    $t9, 0x65($sp)
/* 05EE68 8005E268 C6E60038 */  lwc1  $f6, 0x38($s7)
/* 05EE6C 8005E26C C664000C */  lwc1  $f4, 0xc($s3)
/* 05EE70 8005E270 46143202 */  mul.s $f8, $f6, $f20
/* 05EE74 8005E274 8FAE007C */  lw    $t6, 0x7c($sp)
/* 05EE78 8005E278 8FBE0098 */  lw    $fp, 0x98($sp)
/* 05EE7C 8005E27C 0000A825 */  move  $s5, $zero
/* 05EE80 8005E280 46082281 */  sub.s $f10, $f4, $f8
/* 05EE84 8005E284 4448F800 */  cfc1  $t0, $31
/* 05EE88 8005E288 00000000 */  nop   
/* 05EE8C 8005E28C 35010003 */  ori   $at, $t0, 3
/* 05EE90 8005E290 38210002 */  xori  $at, $at, 2
/* 05EE94 8005E294 44C1F800 */  ctc1  $at, $31
/* 05EE98 8005E298 00000000 */  nop   
/* 05EE9C 8005E29C 46005424 */  cvt.w.s $f16, $f10
/* 05EEA0 8005E2A0 44098000 */  mfc1  $t1, $f16
/* 05EEA4 8005E2A4 44C8F800 */  ctc1  $t0, $31
/* 05EEA8 8005E2A8 A7A90066 */  sh    $t1, 0x66($sp)
/* 05EEAC 8005E2AC C6E6003C */  lwc1  $f6, 0x3c($s7)
/* 05EEB0 8005E2B0 C6720010 */  lwc1  $f18, 0x10($s3)
/* 05EEB4 8005E2B4 46143102 */  mul.s $f4, $f6, $f20
/* 05EEB8 8005E2B8 46049201 */  sub.s $f8, $f18, $f4
/* 05EEBC 8005E2BC 444AF800 */  cfc1  $t2, $31
/* 05EEC0 8005E2C0 00000000 */  nop   
/* 05EEC4 8005E2C4 35410003 */  ori   $at, $t2, 3
/* 05EEC8 8005E2C8 38210002 */  xori  $at, $at, 2
/* 05EECC 8005E2CC 44C1F800 */  ctc1  $at, $31
/* 05EED0 8005E2D0 00000000 */  nop   
/* 05EED4 8005E2D4 460042A4 */  cvt.w.s $f10, $f8
/* 05EED8 8005E2D8 440B5000 */  mfc1  $t3, $f10
/* 05EEDC 8005E2DC 44CAF800 */  ctc1  $t2, $31
/* 05EEE0 8005E2E0 A7AB0068 */  sh    $t3, 0x68($sp)
/* 05EEE4 8005E2E4 C6E60040 */  lwc1  $f6, 0x40($s7)
/* 05EEE8 8005E2E8 C6700014 */  lwc1  $f16, 0x14($s3)
/* 05EEEC 8005E2EC 46143482 */  mul.s $f18, $f6, $f20
/* 05EEF0 8005E2F0 46128101 */  sub.s $f4, $f16, $f18
/* 05EEF4 8005E2F4 444CF800 */  cfc1  $t4, $31
/* 05EEF8 8005E2F8 00000000 */  nop   
/* 05EEFC 8005E2FC 35810003 */  ori   $at, $t4, 3
/* 05EF00 8005E300 38210002 */  xori  $at, $at, 2
/* 05EF04 8005E304 44C1F800 */  ctc1  $at, $31
/* 05EF08 8005E308 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 05EF0C 8005E30C 46002224 */  cvt.w.s $f8, $f4
/* 05EF10 8005E310 440D4000 */  mfc1  $t5, $f8
/* 05EF14 8005E314 44CCF800 */  ctc1  $t4, $31
/* 05EF18 8005E318 19C00058 */  blez  $t6, .L8005E47C
/* 05EF1C 8005E31C A7AD006A */   sh    $t5, 0x6a($sp)
/* 05EF20 8005E320 4481A800 */  mtc1  $at, $f21
/* 05EF24 8005E324 4480A000 */  mtc1  $zero, $f20
/* 05EF28 8005E328 0040B025 */  move  $s6, $v0
.L8005E32C:
/* 05EF2C 8005E32C 8ED10000 */  lw    $s1, ($s6)
/* 05EF30 8005E330 2401006B */  li    $at, 107
/* 05EF34 8005E334 862F0048 */  lh    $t7, 0x48($s1)
/* 05EF38 8005E338 00000000 */  nop   
/* 05EF3C 8005E33C 15E1004B */  bne   $t7, $at, .L8005E46C
/* 05EF40 8005E340 8FAF007C */   lw    $t7, 0x7c($sp)
/* 05EF44 8005E344 8E32003C */  lw    $s2, 0x3c($s1)
/* 05EF48 8005E348 82F80193 */  lb    $t8, 0x193($s7)
/* 05EF4C 8005E34C 82420008 */  lb    $v0, 8($s2)
/* 05EF50 8005E350 27190001 */  addiu $t9, $t8, 1
/* 05EF54 8005E354 13220003 */  beq   $t9, $v0, .L8005E364
/* 05EF58 8005E358 00000000 */   nop   
/* 05EF5C 8005E35C 14400043 */  bnez  $v0, .L8005E46C
/* 05EF60 8005E360 8FAF007C */   lw    $t7, 0x7c($sp)
.L8005E364:
/* 05EF64 8005E364 C62A000C */  lwc1  $f10, 0xc($s1)
/* 05EF68 8005E368 C666000C */  lwc1  $f6, 0xc($s3)
/* 05EF6C 8005E36C C6300010 */  lwc1  $f16, 0x10($s1)
/* 05EF70 8005E370 46065001 */  sub.s $f0, $f10, $f6
/* 05EF74 8005E374 C6720010 */  lwc1  $f18, 0x10($s3)
/* 05EF78 8005E378 46000282 */  mul.s $f10, $f0, $f0
/* 05EF7C 8005E37C 46128081 */  sub.s $f2, $f16, $f18
/* 05EF80 8005E380 C6240014 */  lwc1  $f4, 0x14($s1)
/* 05EF84 8005E384 C6680014 */  lwc1  $f8, 0x14($s3)
/* 05EF88 8005E388 46021182 */  mul.s $f6, $f2, $f2
/* 05EF8C 8005E38C 46082381 */  sub.s $f14, $f4, $f8
/* 05EF90 8005E390 460E7482 */  mul.s $f18, $f14, $f14
/* 05EF94 8005E394 46065400 */  add.s $f16, $f10, $f6
/* 05EF98 8005E398 0C0326B4 */  jal   sqrtf
/* 05EF9C 8005E39C 46128300 */   add.s $f12, $f16, $f18
/* 05EFA0 8005E3A0 82480009 */  lb    $t0, 9($s2)
/* 05EFA4 8005E3A4 46000121 */  cvt.d.s $f4, $f0
/* 05EFA8 8005E3A8 310900FF */  andi  $t1, $t0, 0xff
/* 05EFAC 8005E3AC 44894000 */  mtc1  $t1, $f8
/* 05EFB0 8005E3B0 00000000 */  nop   
/* 05EFB4 8005E3B4 468042A0 */  cvt.s.w $f10, $f8
/* 05EFB8 8005E3B8 460051A1 */  cvt.d.s $f6, $f10
/* 05EFBC 8005E3BC 46343402 */  mul.d $f16, $f6, $f20
/* 05EFC0 8005E3C0 4630203C */  c.lt.d $f4, $f16
/* 05EFC4 8005E3C4 00000000 */  nop   
/* 05EFC8 8005E3C8 45000026 */  bc1f  .L8005E464
/* 05EFCC 8005E3CC 00000000 */   nop   
/* 05EFD0 8005E3D0 8E2A0078 */  lw    $t2, 0x78($s1)
/* 05EFD4 8005E3D4 240B0001 */  li    $t3, 1
/* 05EFD8 8005E3D8 15400023 */  bnez  $t2, .L8005E468
/* 05EFDC 8005E3DC 27A40064 */   addiu $a0, $sp, 0x64
/* 05EFE0 8005E3E0 AE2B0078 */  sw    $t3, 0x78($s1)
/* 05EFE4 8005E3E4 0C003A95 */  jal   spawn_object
/* 05EFE8 8005E3E8 24050001 */   li    $a1, 1
/* 05EFEC 8005E3EC 1040001E */  beqz  $v0, .L8005E468
/* 05EFF0 8005E3F0 00408025 */   move  $s0, $v0
/* 05EFF4 8005E3F4 AC40003C */  sw    $zero, 0x3c($v0)
/* 05EFF8 8005E3F8 C672001C */  lwc1  $f18, 0x1c($s3)
/* 05EFFC 8005E3FC 00002025 */  move  $a0, $zero
/* 05F000 8005E400 E452001C */  swc1  $f18, 0x1c($v0)
/* 05F004 8005E404 C6680020 */  lwc1  $f8, 0x20($s3)
/* 05F008 8005E408 240500FF */  li    $a1, 255
/* 05F00C 8005E40C E4480020 */  swc1  $f8, 0x20($v0)
/* 05F010 8005E410 C66A0024 */  lwc1  $f10, 0x24($s3)
/* 05F014 8005E414 AC510078 */  sw    $s1, 0x78($v0)
/* 05F018 8005E418 E44A0024 */  swc1  $f10, 0x24($v0)
/* 05F01C 8005E41C 824C000A */  lb    $t4, 0xa($s2)
/* 05F020 8005E420 33D4FFFF */  andi  $s4, $fp, 0xffff
/* 05F024 8005E424 000C6900 */  sll   $t5, $t4, 4
/* 05F028 8005E428 01AC6823 */  subu  $t5, $t5, $t4
/* 05F02C 8005E42C 000D6880 */  sll   $t5, $t5, 2
/* 05F030 8005E430 0C01BE53 */  jal   get_random_number_from_range
/* 05F034 8005E434 AC4D007C */   sw    $t5, 0x7c($v0)
/* 05F038 8005E438 8E05000C */  lw    $a1, 0xc($s0)
/* 05F03C 8005E43C 8E060010 */  lw    $a2, 0x10($s0)
/* 05F040 8005E440 8E070014 */  lw    $a3, 0x14($s0)
/* 05F044 8005E444 A6020018 */  sh    $v0, 0x18($s0)
/* 05F048 8005E448 240E0004 */  li    $t6, 4
/* 05F04C 8005E44C AFAE0010 */  sw    $t6, 0x10($sp)
/* 05F050 8005E450 AFA00014 */  sw    $zero, 0x14($sp)
/* 05F054 8005E454 0C002556 */  jal   func_80009558
/* 05F058 8005E458 3284FFFF */   andi  $a0, $s4, 0xffff
/* 05F05C 8005E45C 10000003 */  b     .L8005E46C
/* 05F060 8005E460 8FAF007C */   lw    $t7, 0x7c($sp)
.L8005E464:
/* 05F064 8005E464 AE200078 */  sw    $zero, 0x78($s1)
.L8005E468:
/* 05F068 8005E468 8FAF007C */  lw    $t7, 0x7c($sp)
.L8005E46C:
/* 05F06C 8005E46C 26B50001 */  addiu $s5, $s5, 1
/* 05F070 8005E470 02AF082A */  slt   $at, $s5, $t7
/* 05F074 8005E474 1420FFAD */  bnez  $at, .L8005E32C
/* 05F078 8005E478 26D60004 */   addiu $s6, $s6, 4
.L8005E47C:
/* 05F07C 8005E47C 8FBF004C */  lw    $ra, 0x4c($sp)
/* 05F080 8005E480 C7B50020 */  lwc1  $f21, 0x20($sp)
/* 05F084 8005E484 C7B40024 */  lwc1  $f20, 0x24($sp)
/* 05F088 8005E488 8FB00028 */  lw    $s0, 0x28($sp)
/* 05F08C 8005E48C 8FB1002C */  lw    $s1, 0x2c($sp)
/* 05F090 8005E490 8FB20030 */  lw    $s2, 0x30($sp)
/* 05F094 8005E494 8FB30034 */  lw    $s3, 0x34($sp)
/* 05F098 8005E498 8FB40038 */  lw    $s4, 0x38($sp)
/* 05F09C 8005E49C 8FB5003C */  lw    $s5, 0x3c($sp)
/* 05F0A0 8005E4A0 8FB60040 */  lw    $s6, 0x40($sp)
/* 05F0A4 8005E4A4 8FB70044 */  lw    $s7, 0x44($sp)
/* 05F0A8 8005E4A8 8FBE0048 */  lw    $fp, 0x48($sp)
/* 05F0AC 8005E4AC 03E00008 */  jr    $ra
/* 05F0B0 8005E4B0 27BD0088 */   addiu $sp, $sp, 0x88

/* 05F0B4 8005E4B4 00000000 */  nop   
/* 05F0B8 8005E4B8 00000000 */  nop   
/* 05F0BC 8005E4BC 00000000 */  nop   

