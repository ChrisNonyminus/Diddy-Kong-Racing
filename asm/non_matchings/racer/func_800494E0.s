.late_rodata
glabel D_800E64A0
.double 0.16666666666666666

.text
glabel func_800494E0
/* 04A0E0 800494E0 27BDFF78 */  addiu $sp, $sp, -0x88
/* 04A0E4 800494E4 8FB80098 */  lw    $t8, 0x98($sp)
/* 04A0E8 800494E8 00077600 */  sll   $t6, $a3, 0x18
/* 04A0EC 800494EC 44982000 */  mtc1  $t8, $f4
/* 04A0F0 800494F0 000E7E03 */  sra   $t7, $t6, 0x18
/* 04A0F4 800494F4 AFB10028 */  sw    $s1, 0x28($sp)
/* 04A0F8 800494F8 AFB00024 */  sw    $s0, 0x24($sp)
/* 04A0FC 800494FC 2401000E */  li    $at, 14
/* 04A100 80049500 00C08025 */  move  $s0, $a2
/* 04A104 80049504 00808825 */  move  $s1, $a0
/* 04A108 80049508 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04A10C 8004950C AFA5008C */  sw    $a1, 0x8c($sp)
/* 04A110 80049510 AFA70094 */  sw    $a3, 0x94($sp)
/* 04A114 80049514 15E10019 */  bne   $t7, $at, .L8004957C
/* 04A118 80049518 46802020 */   cvt.s.w $f0, $f4
/* 04A11C 8004951C 44800000 */  mtc1  $zero, $f0
/* 04A120 80049520 C4A2002C */  lwc1  $f2, 0x2c($a1)
/* 04A124 80049524 3C01800E */  lui   $at, %hi(D_800E64A0 + 4) # $at, 0x800e
/* 04A128 80049528 4600103C */  c.lt.s $f2, $f0
/* 04A12C 8004952C 00000000 */  nop   
/* 04A130 80049530 45000002 */  bc1f  .L8004953C
/* 04A134 80049534 00000000 */   nop   
/* 04A138 80049538 46001087 */  neg.s $f2, $f2
.L8004953C:
/* 04A13C 8004953C C42964A0 */  lwc1  $f9, %lo(D_800E64A0)($at)
/* 04A140 80049540 C42864A4 */  lwc1  $f8, %lo(D_800E64A0 + 4)($at)
/* 04A144 80049544 460011A1 */  cvt.d.s $f6, $f2
/* 04A148 80049548 46283282 */  mul.d $f10, $f6, $f8
/* 04A14C 8004954C 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 04A150 80049550 44818800 */  mtc1  $at, $f17
/* 04A154 80049554 44808000 */  mtc1  $zero, $f16
/* 04A158 80049558 00000000 */  nop   
/* 04A15C 8004955C 462A8481 */  sub.d $f18, $f16, $f10
/* 04A160 80049560 462090A0 */  cvt.s.d $f2, $f18
/* 04A164 80049564 4600103C */  c.lt.s $f2, $f0
/* 04A168 80049568 00000000 */  nop   
/* 04A16C 8004956C 45000014 */  bc1f  .L800495C0
/* 04A170 80049570 00000000 */   nop   
/* 04A174 80049574 10000012 */  b     .L800495C0
/* 04A178 80049578 46000086 */   mov.s $f2, $f0
.L8004957C:
/* 04A17C 8004957C C6060000 */  lwc1  $f6, ($s0)
/* 04A180 80049580 C7AC00A0 */  lwc1  $f12, 0xa0($sp)
/* 04A184 80049584 46003202 */  mul.s $f8, $f6, $f0
/* 04A188 80049588 C624000C */  lwc1  $f4, 0xc($s1)
/* 04A18C 8004958C C6320014 */  lwc1  $f18, 0x14($s1)
/* 04A190 80049590 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 04A194 80049594 460C4402 */  mul.s $f16, $f8, $f12
/* 04A198 80049598 44811000 */  mtc1  $at, $f2
/* 04A19C 8004959C 46102280 */  add.s $f10, $f4, $f16
/* 04A1A0 800495A0 E62A000C */  swc1  $f10, 0xc($s1)
/* 04A1A4 800495A4 C6060008 */  lwc1  $f6, 8($s0)
/* 04A1A8 800495A8 00000000 */  nop   
/* 04A1AC 800495AC 46003202 */  mul.s $f8, $f6, $f0
/* 04A1B0 800495B0 44800000 */  mtc1  $zero, $f0
/* 04A1B4 800495B4 460C4102 */  mul.s $f4, $f8, $f12
/* 04A1B8 800495B8 46049400 */  add.s $f16, $f18, $f4
/* 04A1BC 800495BC E6300014 */  swc1  $f16, 0x14($s1)
.L800495C0:
/* 04A1C0 800495C0 86280000 */  lh    $t0, ($s1)
/* 04A1C4 800495C4 3C058012 */  lui   $a1, %hi(D_8011D510) # $a1, 0x8012
/* 04A1C8 800495C8 24A5D510 */  addiu $a1, %lo(D_8011D510) # addiu $a1, $a1, -0x2af0
/* 04A1CC 800495CC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 04A1D0 800495D0 44815000 */  mtc1  $at, $f10
/* 04A1D4 800495D4 00084823 */  negu  $t1, $t0
/* 04A1D8 800495D8 A4A90000 */  sh    $t1, ($a1)
/* 04A1DC 800495DC A4A00002 */  sh    $zero, 2($a1)
/* 04A1E0 800495E0 A4A00004 */  sh    $zero, 4($a1)
/* 04A1E4 800495E4 E4A0000C */  swc1  $f0, 0xc($a1)
/* 04A1E8 800495E8 E4A00010 */  swc1  $f0, 0x10($a1)
/* 04A1EC 800495EC E4A00014 */  swc1  $f0, 0x14($a1)
/* 04A1F0 800495F0 E7A20044 */  swc1  $f2, 0x44($sp)
/* 04A1F4 800495F4 27A40048 */  addiu $a0, $sp, 0x48
/* 04A1F8 800495F8 0C01BF9D */  jal   func_8006FE74
/* 04A1FC 800495FC E4AA0008 */   swc1  $f10, 8($a1)
/* 04A200 80049600 8E050000 */  lw    $a1, ($s0)
/* 04A204 80049604 8E060004 */  lw    $a2, 4($s0)
/* 04A208 80049608 8E070008 */  lw    $a3, 8($s0)
/* 04A20C 8004960C 260A0004 */  addiu $t2, $s0, 4
/* 04A210 80049610 260B0008 */  addiu $t3, $s0, 8
/* 04A214 80049614 AFAB0018 */  sw    $t3, 0x18($sp)
/* 04A218 80049618 AFAA0014 */  sw    $t2, 0x14($sp)
/* 04A21C 8004961C AFB00010 */  sw    $s0, 0x10($sp)
/* 04A220 80049620 0C01BD93 */  jal   guMtxXFMF
/* 04A224 80049624 27A40048 */   addiu $a0, $sp, 0x48
/* 04A228 80049628 C60C0000 */  lwc1  $f12, ($s0)
/* 04A22C 8004962C C60E0004 */  lwc1  $f14, 4($s0)
/* 04A230 80049630 0C01C1D4 */  jal   arctan2_f
/* 04A234 80049634 00000000 */   nop   
/* 04A238 80049638 00026400 */  sll   $t4, $v0, 0x10
/* 04A23C 8004963C 000C6C03 */  sra   $t5, $t4, 0x10
/* 04A240 80049640 000D7023 */  negu  $t6, $t5
/* 04A244 80049644 448E3000 */  mtc1  $t6, $f6
/* 04A248 80049648 C7A20044 */  lwc1  $f2, 0x44($sp)
/* 04A24C 8004964C 46803220 */  cvt.s.w $f8, $f6
/* 04A250 80049650 8FA5008C */  lw    $a1, 0x8c($sp)
/* 04A254 80049654 8FB9009C */  lw    $t9, 0x9c($sp)
/* 04A258 80049658 46024482 */  mul.s $f18, $f8, $f2
/* 04A25C 8004965C 84A301A4 */  lh    $v1, 0x1a4($a1)
/* 04A260 80049660 00194180 */  sll   $t0, $t9, 6
/* 04A264 80049664 306BFFFF */  andi  $t3, $v1, 0xffff
/* 04A268 80049668 444FF800 */  cfc1  $t7, $31
/* 04A26C 8004966C 8FAC0098 */  lw    $t4, 0x98($sp)
/* 04A270 80049670 35E10003 */  ori   $at, $t7, 3
/* 04A274 80049674 38210002 */  xori  $at, $at, 2
/* 04A278 80049678 44C1F800 */  ctc1  $at, $31
/* 04A27C 8004967C 34018001 */  li    $at, 32769
/* 04A280 80049680 46009124 */  cvt.w.s $f4, $f18
/* 04A284 80049684 44182000 */  mfc1  $t8, $f4
/* 04A288 80049688 44CFF800 */  ctc1  $t7, $31
/* 04A28C 8004968C 03084823 */  subu  $t1, $t8, $t0
/* 04A290 80049690 312AFFFF */  andi  $t2, $t1, 0xffff
/* 04A294 80049694 014B2023 */  subu  $a0, $t2, $t3
/* 04A298 80049698 0081082A */  slt   $at, $a0, $at
/* 04A29C 8004969C 14200003 */  bnez  $at, .L800496AC
/* 04A2A0 800496A0 3C01FFFF */   lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 04A2A4 800496A4 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 04A2A8 800496A8 00812021 */  addu  $a0, $a0, $at
.L800496AC:
/* 04A2AC 800496AC 28818000 */  slti  $at, $a0, -0x8000
/* 04A2B0 800496B0 10200002 */  beqz  $at, .L800496BC
/* 04A2B4 800496B4 3401FFFF */   li    $at, 65535
/* 04A2B8 800496B8 00812021 */  addu  $a0, $a0, $at
.L800496BC:
/* 04A2BC 800496BC 008C0019 */  multu $a0, $t4
/* 04A2C0 800496C0 00006812 */  mflo  $t5
/* 04A2C4 800496C4 000D7103 */  sra   $t6, $t5, 4
/* 04A2C8 800496C8 006E7821 */  addu  $t7, $v1, $t6
/* 04A2CC 800496CC A4AF01A4 */  sh    $t7, 0x1a4($a1)
/* 04A2D0 800496D0 C60E0004 */  lwc1  $f14, 4($s0)
/* 04A2D4 800496D4 C60C0008 */  lwc1  $f12, 8($s0)
/* 04A2D8 800496D8 0C01C1D4 */  jal   arctan2_f
/* 04A2DC 800496DC E7A20044 */   swc1  $f2, 0x44($sp)
/* 04A2E0 800496E0 0002CC00 */  sll   $t9, $v0, 0x10
/* 04A2E4 800496E4 0019C403 */  sra   $t8, $t9, 0x10
/* 04A2E8 800496E8 44988000 */  mtc1  $t8, $f16
/* 04A2EC 800496EC C7A20044 */  lwc1  $f2, 0x44($sp)
/* 04A2F0 800496F0 468082A0 */  cvt.s.w $f10, $f16
/* 04A2F4 800496F4 3C0A8012 */  lui   $t2, %hi(gCurrentStickY) # $t2, 0x8012
/* 04A2F8 800496F8 8D4AD538 */  lw    $t2, %lo(gCurrentStickY)($t2)
/* 04A2FC 800496FC 46025182 */  mul.s $f6, $f10, $f2
/* 04A300 80049700 000A5823 */  negu  $t3, $t2
/* 04A304 80049704 000B6140 */  sll   $t4, $t3, 5
/* 04A308 80049708 86250002 */  lh    $a1, 2($s1)
/* 04A30C 8004970C 4448F800 */  cfc1  $t0, $31
/* 04A310 80049710 30AEFFFF */  andi  $t6, $a1, 0xffff
/* 04A314 80049714 35010003 */  ori   $at, $t0, 3
/* 04A318 80049718 38210002 */  xori  $at, $at, 2
/* 04A31C 8004971C 44C1F800 */  ctc1  $at, $31
/* 04A320 80049720 34018001 */  li    $at, 32769
/* 04A324 80049724 46003224 */  cvt.w.s $f8, $f6
/* 04A328 80049728 8FAF0098 */  lw    $t7, 0x98($sp)
/* 04A32C 8004972C 44094000 */  mfc1  $t1, $f8
/* 04A330 80049730 44C8F800 */  ctc1  $t0, $31
/* 04A334 80049734 012C1821 */  addu  $v1, $t1, $t4
/* 04A338 80049738 246303C0 */  addiu $v1, $v1, 0x3c0
/* 04A33C 8004973C 306DFFFF */  andi  $t5, $v1, 0xffff
/* 04A340 80049740 01AE2023 */  subu  $a0, $t5, $t6
/* 04A344 80049744 0081082A */  slt   $at, $a0, $at
/* 04A348 80049748 14200003 */  bnez  $at, .L80049758
/* 04A34C 8004974C 3C01FFFF */   lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 04A350 80049750 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 04A354 80049754 00812021 */  addu  $a0, $a0, $at
.L80049758:
/* 04A358 80049758 28818000 */  slti  $at, $a0, -0x8000
/* 04A35C 8004975C 10200002 */  beqz  $at, .L80049768
/* 04A360 80049760 3401FFFF */   li    $at, 65535
/* 04A364 80049764 00812021 */  addu  $a0, $a0, $at
.L80049768:
/* 04A368 80049768 008F0019 */  multu $a0, $t7
/* 04A36C 8004976C 46001006 */  mov.s $f0, $f2
/* 04A370 80049770 0000C812 */  mflo  $t9
/* 04A374 80049774 0019C103 */  sra   $t8, $t9, 4
/* 04A378 80049778 00B84021 */  addu  $t0, $a1, $t8
/* 04A37C 8004977C A6280002 */  sh    $t0, 2($s1)
/* 04A380 80049780 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04A384 80049784 8FB10028 */  lw    $s1, 0x28($sp)
/* 04A388 80049788 8FB00024 */  lw    $s0, 0x24($sp)
/* 04A38C 8004978C 03E00008 */  jr    $ra
/* 04A390 80049790 27BD0088 */   addiu $sp, $sp, 0x88

