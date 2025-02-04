.late_rodata
glabel D_800E6558
.double 0.4
glabel D_800E6560
.double 0.005555555555555556
glabel D_800E6568
.float 0.4
.word 0 # Padding
glabel D_800E6570
.double 65.0
glabel D_800E6578
.double 0.2

.text
glabel update_camera_plane
/* 04CEB0 8004C2B0 3C014348 */  li    $at, 0x43480000 # 200.000000
/* 04CEB4 8004C2B4 44810000 */  mtc1  $at, $f0
/* 04CEB8 8004C2B8 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 04CEBC 8004C2BC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 04CEC0 8004C2C0 44817000 */  mtc1  $at, $f14
/* 04CEC4 8004C2C4 3C014234 */  li    $at, 0x42340000 # 45.000000
/* 04CEC8 8004C2C8 44819000 */  mtc1  $at, $f18
/* 04CECC 8004C2CC AFBF0014 */  sw    $ra, 0x14($sp)
/* 04CED0 8004C2D0 E7AC0050 */  swc1  $f12, 0x50($sp)
/* 04CED4 8004C2D4 AFA50054 */  sw    $a1, 0x54($sp)
/* 04CED8 8004C2D8 3C018012 */  lui   $at, %hi(gCurrentCourseHeight) # $at, 0x8012
/* 04CEDC 8004C2DC C424D4F0 */  lwc1  $f4, %lo(gCurrentCourseHeight)($at)
/* 04CEE0 8004C2E0 C4A60010 */  lwc1  $f6, 0x10($a1)
/* 04CEE4 8004C2E4 44801000 */  mtc1  $zero, $f2
/* 04CEE8 8004C2E8 46062401 */  sub.s $f16, $f4, $f6
/* 04CEEC 8004C2EC 00C03825 */  move  $a3, $a2
/* 04CEF0 8004C2F0 46100401 */  sub.s $f16, $f0, $f16
/* 04CEF4 8004C2F4 4602803C */  c.lt.s $f16, $f2
/* 04CEF8 8004C2F8 00000000 */  nop   
/* 04CEFC 8004C2FC 45000002 */  bc1f  .L8004C308
/* 04CF00 8004C300 00000000 */   nop   
/* 04CF04 8004C304 46001406 */  mov.s $f16, $f2
.L8004C308:
/* 04CF08 8004C308 4610003C */  c.lt.s $f0, $f16
/* 04CF0C 8004C30C 00000000 */  nop   
/* 04CF10 8004C310 45000002 */  bc1f  .L8004C31C
/* 04CF14 8004C314 00000000 */   nop   
/* 04CF18 8004C318 46000406 */  mov.s $f16, $f0
.L8004C31C:
/* 04CF1C 8004C31C AFA70058 */  sw    $a3, 0x58($sp)
/* 04CF20 8004C320 E7AE0034 */  swc1  $f14, 0x34($sp)
/* 04CF24 8004C324 E7B00020 */  swc1  $f16, 0x20($sp)
/* 04CF28 8004C328 0C019884 */  jal   get_viewport_count
/* 04CF2C 8004C32C E7B20030 */   swc1  $f18, 0x30($sp)
/* 04CF30 8004C330 8FA70058 */  lw    $a3, 0x58($sp)
/* 04CF34 8004C334 C7AE0034 */  lwc1  $f14, 0x34($sp)
/* 04CF38 8004C338 C7B00020 */  lwc1  $f16, 0x20($sp)
/* 04CF3C 8004C33C C7B20030 */  lwc1  $f18, 0x30($sp)
/* 04CF40 8004C340 24010001 */  li    $at, 1
/* 04CF44 8004C344 14410007 */  bne   $v0, $at, .L8004C364
/* 04CF48 8004C348 3C0F8012 */   lui   $t7, %hi(gCurrentRacerInput) # $t7, 0x8012
/* 04CF4C 8004C34C 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 04CF50 8004C350 44817000 */  mtc1  $at, $f14
/* 04CF54 8004C354 3C014248 */  li    $at, 0x42480000 # 50.000000
/* 04CF58 8004C358 44819000 */  mtc1  $at, $f18
/* 04CF5C 8004C35C 10000008 */  b     .L8004C380
/* 04CF60 8004C360 00000000 */   nop   
.L8004C364:
/* 04CF64 8004C364 28410002 */  slti  $at, $v0, 2
/* 04CF68 8004C368 14200005 */  bnez  $at, .L8004C380
/* 04CF6C 8004C36C 3C0142DC */   li    $at, 0x42DC0000 # 110.000000
/* 04CF70 8004C370 44817000 */  mtc1  $at, $f14
/* 04CF74 8004C374 3C014228 */  li    $at, 0x42280000 # 42.000000
/* 04CF78 8004C378 44819000 */  mtc1  $at, $f18
/* 04CF7C 8004C37C 00000000 */  nop   
.L8004C380:
/* 04CF80 8004C380 8DEFD528 */  lw    $t7, %lo(gCurrentRacerInput)($t7)
/* 04CF84 8004C384 00000000 */  nop   
/* 04CF88 8004C388 31F80010 */  andi  $t8, $t7, 0x10
/* 04CF8C 8004C38C 13000006 */  beqz  $t8, .L8004C3A8
/* 04CF90 8004C390 00000000 */   nop   
/* 04CF94 8004C394 80F901E2 */  lb    $t9, 0x1e2($a3)
/* 04CF98 8004C398 00000000 */  nop   
/* 04CF9C 8004C39C 2B210003 */  slti  $at, $t9, 3
/* 04CFA0 8004C3A0 10200059 */  beqz  $at, .L8004C508
/* 04CFA4 8004C3A4 00000000 */   nop   
.L8004C3A8:
/* 04CFA8 8004C3A8 90EA01F5 */  lbu   $t2, 0x1f5($a3)
/* 04CFAC 8004C3AC 34018000 */  li    $at, 32768
/* 04CFB0 8004C3B0 15400055 */  bnez  $t2, .L8004C508
/* 04CFB4 8004C3B4 00000000 */   nop   
/* 04CFB8 8004C3B8 84EB01A0 */  lh    $t3, 0x1a0($a3)
/* 04CFBC 8004C3BC 84ED0196 */  lh    $t5, 0x196($a3)
/* 04CFC0 8004C3C0 000B6023 */  negu  $t4, $t3
/* 04CFC4 8004C3C4 31AEFFFF */  andi  $t6, $t5, 0xffff
/* 04CFC8 8004C3C8 018E2023 */  subu  $a0, $t4, $t6
/* 04CFCC 8004C3CC 00812021 */  addu  $a0, $a0, $at
/* 04CFD0 8004C3D0 34018001 */  li    $at, 32769
/* 04CFD4 8004C3D4 0081082A */  slt   $at, $a0, $at
/* 04CFD8 8004C3D8 14200003 */  bnez  $at, .L8004C3E8
/* 04CFDC 8004C3DC 3C01FFFF */   lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 04CFE0 8004C3E0 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 04CFE4 8004C3E4 00812021 */  addu  $a0, $a0, $at
.L8004C3E8:
/* 04CFE8 8004C3E8 28818000 */  slti  $at, $a0, -0x8000
/* 04CFEC 8004C3EC 10200002 */  beqz  $at, .L8004C3F8
/* 04CFF0 8004C3F0 3401FFFF */   li    $at, 65535
/* 04CFF4 8004C3F4 00812021 */  addu  $a0, $a0, $at
.L8004C3F8:
/* 04CFF8 8004C3F8 3C01800E */  lui   $at, %hi(D_800E6558 + 4) # $at, 0x800e
/* 04CFFC 8004C3FC C4E80094 */  lwc1  $f8, 0x94($a3)
/* 04D000 8004C400 C42B6558 */  lwc1  $f11, %lo(D_800E6558)($at)
/* 04D004 8004C404 C42A655C */  lwc1  $f10, %lo(D_800E6558 + 4)($at)
/* 04D008 8004C408 46004021 */  cvt.d.s $f0, $f8
/* 04D00C 8004C40C 462A003C */  c.lt.d $f0, $f10
/* 04D010 8004C410 3C01800E */  lui   $at, %hi(D_800E6568) # $at, 0x800e
/* 04D014 8004C414 45000009 */  bc1f  .L8004C43C
/* 04D018 8004C418 00000000 */   nop   
# Used to access D_800E6560 and D_800E6560 + 4.
/* 04D01C 8004C41C 3C01800E */  lui   $at, %hi(D_800E6560) # $at, 0x800e
/* 04D020 8004C420 C4256560 */  lwc1  $f5, %lo(D_800E6560)($at)
/* 04D024 8004C424 C4246564 */  lwc1  $f4, %lo(D_800E6560 + 4)($at)
/* 04D028 8004C428 00000000 */  nop   
/* 04D02C 8004C42C 46240180 */  add.d $f6, $f0, $f4
/* 04D030 8004C430 46203220 */  cvt.s.d $f8, $f6
/* 04D034 8004C434 10000004 */  b     .L8004C448
/* 04D038 8004C438 E4E80094 */   swc1  $f8, 0x94($a3)
.L8004C43C:
/* 04D03C 8004C43C C42A6568 */  lwc1  $f10, %lo(D_800E6568)($at)
/* 04D040 8004C440 00000000 */  nop   
/* 04D044 8004C444 E4EA0094 */  swc1  $f10, 0x94($a3)
.L8004C448:
/* 04D048 8004C448 44842000 */  mtc1  $a0, $f4
/* 04D04C 8004C44C C4E80094 */  lwc1  $f8, 0x94($a3)
/* 04D050 8004C450 468021A0 */  cvt.s.w $f6, $f4
/* 04D054 8004C454 46083282 */  mul.s $f10, $f6, $f8
/* 04D058 8004C458 444FF800 */  cfc1  $t7, $31
/* 04D05C 8004C45C 00000000 */  nop   
/* 04D060 8004C460 35E10003 */  ori   $at, $t7, 3
/* 04D064 8004C464 38210002 */  xori  $at, $at, 2
/* 04D068 8004C468 44C1F800 */  ctc1  $at, $31
/* 04D06C 8004C46C 00000000 */  nop   
/* 04D070 8004C470 46005124 */  cvt.w.s $f4, $f10
/* 04D074 8004C474 44032000 */  mfc1  $v1, $f4
/* 04D078 8004C478 44CFF800 */  ctc1  $t7, $31
/* 04D07C 8004C47C 28610201 */  slti  $at, $v1, 0x201
/* 04D080 8004C480 14200003 */  bnez  $at, .L8004C490
/* 04D084 8004C484 2861FE00 */   slti  $at, $v1, -0x200
/* 04D088 8004C488 24030200 */  li    $v1, 512
/* 04D08C 8004C48C 2861FE00 */  slti  $at, $v1, -0x200
.L8004C490:
/* 04D090 8004C490 10200002 */  beqz  $at, .L8004C49C
/* 04D094 8004C494 00000000 */   nop   
/* 04D098 8004C498 2403FE00 */  li    $v1, -512
.L8004C49C:
/* 04D09C 8004C49C 4458F800 */  cfc1  $t8, $31
/* 04D0A0 8004C4A0 C7A60050 */  lwc1  $f6, 0x50($sp)
/* 04D0A4 8004C4A4 37010003 */  ori   $at, $t8, 3
/* 04D0A8 8004C4A8 38210002 */  xori  $at, $at, 2
/* 04D0AC 8004C4AC 44C1F800 */  ctc1  $at, $31
/* 04D0B0 8004C4B0 00000000 */  nop   
/* 04D0B4 8004C4B4 46003224 */  cvt.w.s $f8, $f6
/* 04D0B8 8004C4B8 44094000 */  mfc1  $t1, $f8
/* 04D0BC 8004C4BC 44D8F800 */  ctc1  $t8, $31
/* 04D0C0 8004C4C0 00690019 */  multu $v1, $t1
/* 04D0C4 8004C4C4 00001812 */  mflo  $v1
/* 04D0C8 8004C4C8 0064082A */  slt   $at, $v1, $a0
/* 04D0CC 8004C4CC 04810004 */  bgez  $a0, .L8004C4E0
/* 04D0D0 8004C4D0 00000000 */   nop   
/* 04D0D4 8004C4D4 10200002 */  beqz  $at, .L8004C4E0
/* 04D0D8 8004C4D8 00000000 */   nop   
/* 04D0DC 8004C4DC 00801825 */  move  $v1, $a0
.L8004C4E0:
/* 04D0E0 8004C4E0 18800004 */  blez  $a0, .L8004C4F4
/* 04D0E4 8004C4E4 0083082A */   slt   $at, $a0, $v1
/* 04D0E8 8004C4E8 10200002 */  beqz  $at, .L8004C4F4
/* 04D0EC 8004C4EC 00000000 */   nop   
/* 04D0F0 8004C4F0 00801825 */  move  $v1, $a0
.L8004C4F4:
/* 04D0F4 8004C4F4 84F90196 */  lh    $t9, 0x196($a3)
/* 04D0F8 8004C4F8 00000000 */  nop   
/* 04D0FC 8004C4FC 03235021 */  addu  $t2, $t9, $v1
/* 04D100 8004C500 1000000D */  b     .L8004C538
/* 04D104 8004C504 A4EA0196 */   sh    $t2, 0x196($a3)
.L8004C508:
/* 04D108 8004C508 444BF800 */  cfc1  $t3, $31
/* 04D10C 8004C50C 44805000 */  mtc1  $zero, $f10
/* 04D110 8004C510 35610003 */  ori   $at, $t3, 3
/* 04D114 8004C514 38210002 */  xori  $at, $at, 2
/* 04D118 8004C518 E4EA0094 */  swc1  $f10, 0x94($a3)
/* 04D11C 8004C51C C7A40050 */  lwc1  $f4, 0x50($sp)
/* 04D120 8004C520 44C1F800 */  ctc1  $at, $31
/* 04D124 8004C524 00000000 */  nop   
/* 04D128 8004C528 460021A4 */  cvt.w.s $f6, $f4
/* 04D12C 8004C52C 44CBF800 */  ctc1  $t3, $31
/* 04D130 8004C530 44093000 */  mfc1  $t1, $f6
/* 04D134 8004C534 00000000 */  nop   
.L8004C538:
/* 04D138 8004C538 3C0D8012 */  lui   $t5, %hi(D_8011D586) # $t5, 0x8012
/* 04D13C 8004C53C 85ADD586 */  lh    $t5, %lo(D_8011D586)($t5)
/* 04D140 8004C540 00000000 */  nop   
/* 04D144 8004C544 11A00005 */  beqz  $t5, .L8004C55C
/* 04D148 8004C548 00000000 */   nop   
/* 04D14C 8004C54C 84EC01A0 */  lh    $t4, 0x1a0($a3)
/* 04D150 8004C550 340E8000 */  li    $t6, 32768
/* 04D154 8004C554 01CC7823 */  subu  $t7, $t6, $t4
/* 04D158 8004C558 A4EF0196 */  sh    $t7, 0x196($a3)
.L8004C55C:
/* 04D15C 8004C55C 80E301E0 */  lb    $v1, 0x1e0($a3)
/* 04D160 8004C560 24010002 */  li    $at, 2
/* 04D164 8004C564 10610003 */  beq   $v1, $at, .L8004C574
/* 04D168 8004C568 2401FFFE */   li    $at, -2
/* 04D16C 8004C56C 14610004 */  bne   $v1, $at, .L8004C580
/* 04D170 8004C570 8FB80054 */   lw    $t8, 0x54($sp)
.L8004C574:
/* 04D174 8004C574 1000000D */  b     .L8004C5AC
/* 04D178 8004C578 00002025 */   move  $a0, $zero
/* 04D17C 8004C57C 8FB80054 */  lw    $t8, 0x54($sp)
.L8004C580:
/* 04D180 8004C580 00000000 */  nop   
/* 04D184 8004C584 87040002 */  lh    $a0, 2($t8)
/* 04D188 8004C588 00000000 */  nop   
/* 04D18C 8004C58C 28813001 */  slti  $at, $a0, 0x3001
/* 04D190 8004C590 14200003 */  bnez  $at, .L8004C5A0
/* 04D194 8004C594 2881D000 */   slti  $at, $a0, -0x3000
/* 04D198 8004C598 24043000 */  li    $a0, 12288
/* 04D19C 8004C59C 2881D000 */  slti  $at, $a0, -0x3000
.L8004C5A0:
/* 04D1A0 8004C5A0 10200003 */  beqz  $at, .L8004C5B0
/* 04D1A4 8004C5A4 3C014120 */   lui   $at, 0x4120
/* 04D1A8 8004C5A8 2404D000 */  li    $a0, -12288
.L8004C5AC:
/* 04D1AC 8004C5AC 3C014120 */  li    $at, 0x41200000 # 10.000000
.L8004C5B0:
/* 04D1B0 8004C5B0 44816000 */  mtc1  $at, $f12
/* 04D1B4 8004C5B4 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 04D1B8 8004C5B8 460C8202 */  mul.s $f8, $f16, $f12
/* 04D1BC 8004C5BC 2508D508 */  addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 04D1C0 8004C5C0 8D050000 */  lw    $a1, ($t0)
/* 04D1C4 8004C5C4 4459F800 */  cfc1  $t9, $31
/* 04D1C8 8004C5C8 84A60002 */  lh    $a2, 2($a1)
/* 04D1CC 8004C5CC 37210003 */  ori   $at, $t9, 3
/* 04D1D0 8004C5D0 38210002 */  xori  $at, $at, 2
/* 04D1D4 8004C5D4 44C1F800 */  ctc1  $at, $31
/* 04D1D8 8004C5D8 30CBFFFF */  andi  $t3, $a2, 0xffff
/* 04D1DC 8004C5DC 460042A4 */  cvt.w.s $f10, $f8
/* 04D1E0 8004C5E0 34018001 */  li    $at, 32769
/* 04D1E4 8004C5E4 440A5000 */  mfc1  $t2, $f10
/* 04D1E8 8004C5E8 44D9F800 */  ctc1  $t9, $31
/* 04D1EC 8004C5EC 008A2023 */  subu  $a0, $a0, $t2
/* 04D1F0 8004C5F0 00042023 */  negu  $a0, $a0
/* 04D1F4 8004C5F4 008B1823 */  subu  $v1, $a0, $t3
/* 04D1F8 8004C5F8 0061082A */  slt   $at, $v1, $at
/* 04D1FC 8004C5FC 14200004 */  bnez  $at, .L8004C610
/* 04D200 8004C600 3C198012 */   lui   $t9, %hi(gRaceStartTimer) # $t9, 0x8012
/* 04D204 8004C604 3C01FFFF */  lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 04D208 8004C608 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 04D20C 8004C60C 00611821 */  addu  $v1, $v1, $at
.L8004C610:
/* 04D210 8004C610 28618000 */  slti  $at, $v1, -0x8000
/* 04D214 8004C614 10200002 */  beqz  $at, .L8004C620
/* 04D218 8004C618 3401FFFF */   li    $at, 65535
/* 04D21C 8004C61C 00611821 */  addu  $v1, $v1, $at
.L8004C620:
/* 04D220 8004C620 00690019 */  multu $v1, $t1
/* 04D224 8004C624 24010001 */  li    $at, 1
/* 04D228 8004C628 00006812 */  mflo  $t5
/* 04D22C 8004C62C 000D7103 */  sra   $t6, $t5, 4
/* 04D230 8004C630 00CE6021 */  addu  $t4, $a2, $t6
/* 04D234 8004C634 A4AC0002 */  sh    $t4, 2($a1)
/* 04D238 8004C638 8D0F0000 */  lw    $t7, ($t0)
/* 04D23C 8004C63C C4E200B8 */  lwc1  $f2, 0xb8($a3)
/* 04D240 8004C640 91E4003B */  lbu   $a0, 0x3b($t7)
/* 04D244 8004C644 C4E00008 */  lwc1  $f0, 8($a3)
/* 04D248 8004C648 10810007 */  beq   $a0, $at, .L8004C668
/* 04D24C 8004C64C 24010002 */   li    $at, 2
/* 04D250 8004C650 10810009 */  beq   $a0, $at, .L8004C678
/* 04D254 8004C654 24010003 */   li    $at, 3
/* 04D258 8004C658 1081000D */  beq   $a0, $at, .L8004C690
/* 04D25C 8004C65C 3C014254 */   lui   $at, 0x4254
/* 04D260 8004C660 10000018 */  b     .L8004C6C4
/* 04D264 8004C664 28410002 */   slti  $at, $v0, 2
.L8004C668:
/* 04D268 8004C668 3C01420C */  li    $at, 0x420C0000 # 35.000000
/* 04D26C 8004C66C 44812000 */  mtc1  $at, $f4
/* 04D270 8004C670 10000013 */  b     .L8004C6C0
/* 04D274 8004C674 46047380 */   add.s $f14, $f14, $f4
.L8004C678:
/* 04D278 8004C678 3C01420C */  li    $at, 0x420C0000 # 35.000000
/* 04D27C 8004C67C 44813000 */  mtc1  $at, $f6
/* 04D280 8004C680 460C9481 */  sub.s $f18, $f18, $f12
/* 04D284 8004C684 1000000E */  b     .L8004C6C0
/* 04D288 8004C688 46067381 */   sub.s $f14, $f14, $f6
/* 04D28C 8004C68C 3C014254 */  li    $at, 0x42540000 # 53.000000
.L8004C690:
/* 04D290 8004C690 44814000 */  mtc1  $at, $f8
/* 04D294 8004C694 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 04D298 8004C698 44815000 */  mtc1  $at, $f10
/* 04D29C 8004C69C 3C013FD0 */  li    $at, 0x3FD00000 # 1.625000
/* 04D2A0 8004C6A0 44813800 */  mtc1  $at, $f7
/* 04D2A4 8004C6A4 44803000 */  mtc1  $zero, $f6
/* 04D2A8 8004C6A8 46000121 */  cvt.d.s $f4, $f0
/* 04D2AC 8004C6AC 46087381 */  sub.s $f14, $f14, $f8
/* 04D2B0 8004C6B0 44801000 */  mtc1  $zero, $f2
/* 04D2B4 8004C6B4 46262202 */  mul.d $f8, $f4, $f6
/* 04D2B8 8004C6B8 460A9481 */  sub.s $f18, $f18, $f10
/* 04D2BC 8004C6BC 46204020 */  cvt.s.d $f0, $f8
.L8004C6C0:
/* 04D2C0 8004C6C0 28410002 */  slti  $at, $v0, 2
.L8004C6C4:
/* 04D2C4 8004C6C4 10200006 */  beqz  $at, .L8004C6E0
/* 04D2C8 8004C6C8 3C014270 */   li    $at, 0x42700000 # 60.000000
/* 04D2CC 8004C6CC 44815000 */  mtc1  $at, $f10
/* 04D2D0 8004C6D0 00000000 */  nop   
/* 04D2D4 8004C6D4 460A0102 */  mul.s $f4, $f0, $f10
/* 04D2D8 8004C6D8 10000006 */  b     .L8004C6F4
/* 04D2DC 8004C6DC 46047380 */   add.s $f14, $f14, $f4
.L8004C6E0:
/* 04D2E0 8004C6E0 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 04D2E4 8004C6E4 44813000 */  mtc1  $at, $f6
/* 04D2E8 8004C6E8 00000000 */  nop   
/* 04D2EC 8004C6EC 46060202 */  mul.s $f8, $f0, $f6
/* 04D2F0 8004C6F0 46087380 */  add.s $f14, $f14, $f8
.L8004C6F4:
/* 04D2F4 8004C6F4 C4E0002C */  lwc1  $f0, 0x2c($a3)
/* 04D2F8 8004C6F8 44802800 */  mtc1  $zero, $f5
/* 04D2FC 8004C6FC 44802000 */  mtc1  $zero, $f4
/* 04D300 8004C700 460002A1 */  cvt.d.s $f10, $f0
/* 04D304 8004C704 4624503C */  c.lt.d $f10, $f4
/* 04D308 8004C708 00000000 */  nop   
/* 04D30C 8004C70C 45000016 */  bc1f  .L8004C768
/* 04D310 8004C710 00000000 */   nop   
/* 04D314 8004C714 80F801E2 */  lb    $t8, 0x1e2($a3)
/* 04D318 8004C718 00000000 */  nop   
/* 04D31C 8004C71C 17000012 */  bnez  $t8, .L8004C768
/* 04D320 8004C720 00000000 */   nop   
/* 04D324 8004C724 46020182 */  mul.s $f6, $f0, $f2
/* 04D328 8004C728 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 04D32C 8004C72C 44815000 */  mtc1  $at, $f10
/* 04D330 8004C730 3C01800E */  lui   $at, %hi(D_800E6570 + 4) # $at, 0x800e
/* 04D334 8004C734 46003207 */  neg.s $f8, $f6
/* 04D338 8004C738 460A4402 */  mul.s $f16, $f8, $f10
/* 04D33C 8004C73C C4256570 */  lwc1  $f5, %lo(D_800E6570)($at)
/* 04D340 8004C740 C4246574 */  lwc1  $f4, %lo(D_800E6570 + 4)($at)
/* 04D344 8004C744 3C014282 */  li    $at, 0x42820000 # 65.000000
/* 04D348 8004C748 460081A1 */  cvt.d.s $f6, $f16
/* 04D34C 8004C74C 4626203C */  c.lt.d $f4, $f6
/* 04D350 8004C750 00000000 */  nop   
/* 04D354 8004C754 45000003 */  bc1f  .L8004C764
/* 04D358 8004C758 00000000 */   nop   
/* 04D35C 8004C75C 44818000 */  mtc1  $at, $f16
/* 04D360 8004C760 00000000 */  nop   
.L8004C764:
/* 04D364 8004C764 46107381 */  sub.s $f14, $f14, $f16
.L8004C768:
/* 04D368 8004C768 8F39D540 */  lw    $t9, %lo(gRaceStartTimer)($t9)
/* 04D36C 8004C76C 00000000 */  nop   
/* 04D370 8004C770 17200015 */  bnez  $t9, .L8004C7C8
/* 04D374 8004C774 24040024 */   li    $a0, 36
/* 04D378 8004C778 AFA70058 */  sw    $a3, 0x58($sp)
/* 04D37C 8004C77C E7AE0034 */  swc1  $f14, 0x34($sp)
/* 04D380 8004C780 0C00322D */  jal   normalise_time
/* 04D384 8004C784 E7B20030 */   swc1  $f18, 0x30($sp)
/* 04D388 8004C788 8FA70058 */  lw    $a3, 0x58($sp)
/* 04D38C 8004C78C 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 04D390 8004C790 80E301D3 */  lb    $v1, 0x1d3($a3)
/* 04D394 8004C794 C7AE0034 */  lwc1  $f14, 0x34($sp)
/* 04D398 8004C798 C7B20030 */  lwc1  $f18, 0x30($sp)
/* 04D39C 8004C79C 0043082A */  slt   $at, $v0, $v1
/* 04D3A0 8004C7A0 10200005 */  beqz  $at, .L8004C7B8
/* 04D3A4 8004C7A4 2508D508 */   addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 04D3A8 8004C7A8 3C01C1F0 */  li    $at, 0xC1F00000 # -30.000000
/* 04D3AC 8004C7AC 44817000 */  mtc1  $at, $f14
/* 04D3B0 8004C7B0 10000005 */  b     .L8004C7C8
/* 04D3B4 8004C7B4 00000000 */   nop   
.L8004C7B8:
/* 04D3B8 8004C7B8 18600003 */  blez  $v1, .L8004C7C8
/* 04D3BC 8004C7BC 3C014334 */   li    $at, 0x43340000 # 180.000000
/* 04D3C0 8004C7C0 44817000 */  mtc1  $at, $f14
/* 04D3C4 8004C7C4 00000000 */  nop   
.L8004C7C8:
/* 04D3C8 8004C7C8 3C0A8012 */  lui   $t2, %hi(gRaceStartTimer) # $t2, 0x8012
/* 04D3CC 8004C7CC 8D4AD540 */  lw    $t2, %lo(gRaceStartTimer)($t2)
/* 04D3D0 8004C7D0 8D050000 */  lw    $a1, ($t0)
/* 04D3D4 8004C7D4 29410051 */  slti  $at, $t2, 0x51
/* 04D3D8 8004C7D8 14200007 */  bnez  $at, .L8004C7F8
/* 04D3DC 8004C7DC 00000000 */   nop   
/* 04D3E0 8004C7E0 E4AE001C */  swc1  $f14, 0x1c($a1)
/* 04D3E4 8004C7E4 8D0B0000 */  lw    $t3, ($t0)
/* 04D3E8 8004C7E8 00000000 */  nop   
/* 04D3EC 8004C7EC E5720020 */  swc1  $f18, 0x20($t3)
/* 04D3F0 8004C7F0 8D050000 */  lw    $a1, ($t0)
/* 04D3F4 8004C7F4 00000000 */  nop   
.L8004C7F8:
/* 04D3F8 8004C7F8 C4A2001C */  lwc1  $f2, 0x1c($a1)
/* 04D3FC 8004C7FC 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 04D400 8004C800 46027281 */  sub.s $f10, $f14, $f2
/* 04D404 8004C804 44810800 */  mtc1  $at, $f1
/* 04D408 8004C808 44800000 */  mtc1  $zero, $f0
/* 04D40C 8004C80C 46005121 */  cvt.d.s $f4, $f10
/* 04D410 8004C810 46202182 */  mul.d $f6, $f4, $f0
/* 04D414 8004C814 46001221 */  cvt.d.s $f8, $f2
/* 04D418 8004C818 46264280 */  add.d $f10, $f8, $f6
/* 04D41C 8004C81C 46205120 */  cvt.s.d $f4, $f10
/* 04D420 8004C820 E4A4001C */  swc1  $f4, 0x1c($a1)
/* 04D424 8004C824 8D050000 */  lw    $a1, ($t0)
/* 04D428 8004C828 00000000 */  nop   
/* 04D42C 8004C82C C4AC0020 */  lwc1  $f12, 0x20($a1)
/* 04D430 8004C830 00000000 */  nop   
/* 04D434 8004C834 460C9181 */  sub.s $f6, $f18, $f12
/* 04D438 8004C838 460032A1 */  cvt.d.s $f10, $f6
/* 04D43C 8004C83C 46205102 */  mul.d $f4, $f10, $f0
/* 04D440 8004C840 46006221 */  cvt.d.s $f8, $f12
/* 04D444 8004C844 46244180 */  add.d $f6, $f8, $f4
/* 04D448 8004C848 462032A0 */  cvt.s.d $f10, $f6
/* 04D44C 8004C84C E4AA0020 */  swc1  $f10, 0x20($a1)
/* 04D450 8004C850 8D0D0000 */  lw    $t5, ($t0)
/* 04D454 8004C854 00000000 */  nop   
/* 04D458 8004C858 85A40002 */  lh    $a0, 2($t5)
/* 04D45C 8004C85C AFA70058 */  sw    $a3, 0x58($sp)
/* 04D460 8004C860 2484FC00 */  addiu $a0, $a0, -0x400
/* 04D464 8004C864 00047400 */  sll   $t6, $a0, 0x10
/* 04D468 8004C868 0C01C1F1 */  jal   cosine_s
/* 04D46C 8004C86C 000E2403 */   sra   $a0, $t6, 0x10
/* 04D470 8004C870 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 04D474 8004C874 2508D508 */  addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 04D478 8004C878 8D0F0000 */  lw    $t7, ($t0)
/* 04D47C 8004C87C 00000000 */  nop   
/* 04D480 8004C880 85E40002 */  lh    $a0, 2($t7)
/* 04D484 8004C884 E7A0001C */  swc1  $f0, 0x1c($sp)
/* 04D488 8004C888 2484FC00 */  addiu $a0, $a0, -0x400
/* 04D48C 8004C88C 0004C400 */  sll   $t8, $a0, 0x10
/* 04D490 8004C890 0C01C1FE */  jal   sine_s
/* 04D494 8004C894 00182403 */   sra   $a0, $t8, 0x10
/* 04D498 8004C898 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 04D49C 8004C89C 2508D508 */  addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 04D4A0 8004C8A0 8D050000 */  lw    $a1, ($t0)
/* 04D4A4 8004C8A4 C7AE001C */  lwc1  $f14, 0x1c($sp)
/* 04D4A8 8004C8A8 C4A2001C */  lwc1  $f2, 0x1c($a1)
/* 04D4AC 8004C8AC C4AC0020 */  lwc1  $f12, 0x20($a1)
/* 04D4B0 8004C8B0 46001202 */  mul.s $f8, $f2, $f0
/* 04D4B4 8004C8B4 8FA70058 */  lw    $a3, 0x58($sp)
/* 04D4B8 8004C8B8 340B8000 */  li    $t3, 32768
/* 04D4BC 8004C8BC 84EA0196 */  lh    $t2, 0x196($a3)
/* 04D4C0 8004C8C0 460E6102 */  mul.s $f4, $f12, $f14
/* 04D4C4 8004C8C4 016A2023 */  subu  $a0, $t3, $t2
/* 04D4C8 8004C8C8 00046C00 */  sll   $t5, $a0, 0x10
/* 04D4CC 8004C8CC 000D2403 */  sra   $a0, $t5, 0x10
/* 04D4D0 8004C8D0 460E1182 */  mul.s $f6, $f2, $f14
/* 04D4D4 8004C8D4 46044401 */  sub.s $f16, $f8, $f4
/* 04D4D8 8004C8D8 E7B00020 */  swc1  $f16, 0x20($sp)
/* 04D4DC 8004C8DC 46006282 */  mul.s $f10, $f12, $f0
/* 04D4E0 8004C8E0 460A3480 */  add.s $f18, $f6, $f10
/* 04D4E4 8004C8E4 0C01C1F1 */  jal   cosine_s
/* 04D4E8 8004C8E8 E7B20030 */   swc1  $f18, 0x30($sp)
/* 04D4EC 8004C8EC C7B00020 */  lwc1  $f16, 0x20($sp)
/* 04D4F0 8004C8F0 8FA70058 */  lw    $a3, 0x58($sp)
/* 04D4F4 8004C8F4 46100202 */  mul.s $f8, $f0, $f16
/* 04D4F8 8004C8F8 340F8000 */  li    $t7, 32768
/* 04D4FC 8004C8FC E7A80028 */  swc1  $f8, 0x28($sp)
/* 04D500 8004C900 84EC0196 */  lh    $t4, 0x196($a3)
/* 04D504 8004C904 00000000 */  nop   
/* 04D508 8004C908 01EC2023 */  subu  $a0, $t7, $t4
/* 04D50C 8004C90C 0004C400 */  sll   $t8, $a0, 0x10
/* 04D510 8004C910 0C01C1FE */  jal   sine_s
/* 04D514 8004C914 00182403 */   sra   $a0, $t8, 0x10
/* 04D518 8004C918 C7B00020 */  lwc1  $f16, 0x20($sp)
/* 04D51C 8004C91C 8FA70058 */  lw    $a3, 0x58($sp)
/* 04D520 8004C920 46100102 */  mul.s $f4, $f0, $f16
/* 04D524 8004C924 E7A40024 */  swc1  $f4, 0x24($sp)
/* 04D528 8004C928 84E40196 */  lh    $a0, 0x196($a3)
/* 04D52C 8004C92C 00000000 */  nop   
/* 04D530 8004C930 24844000 */  addiu $a0, $a0, 0x4000
/* 04D534 8004C934 00045C00 */  sll   $t3, $a0, 0x10
/* 04D538 8004C938 0C01C1F1 */  jal   cosine_s
/* 04D53C 8004C93C 000B2403 */   sra   $a0, $t3, 0x10
/* 04D540 8004C940 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 04D544 8004C944 44813000 */  mtc1  $at, $f6
/* 04D548 8004C948 8FA70058 */  lw    $a3, 0x58($sp)
/* 04D54C 8004C94C 46060282 */  mul.s $f10, $f0, $f6
/* 04D550 8004C950 8FA20054 */  lw    $v0, 0x54($sp)
/* 04D554 8004C954 C4E80030 */  lwc1  $f8, 0x30($a3)
/* 04D558 8004C958 C7A60028 */  lwc1  $f6, 0x28($sp)
/* 04D55C 8004C95C 46085402 */  mul.s $f16, $f10, $f8
/* 04D560 8004C960 C444000C */  lwc1  $f4, 0xc($v0)
/* 04D564 8004C964 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 04D568 8004C968 2508D508 */  addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 04D56C 8004C96C 46062280 */  add.s $f10, $f4, $f6
/* 04D570 8004C970 8D0D0000 */  lw    $t5, ($t0)
/* 04D574 8004C974 46105200 */  add.s $f8, $f10, $f16
/* 04D578 8004C978 C7B20030 */  lwc1  $f18, 0x30($sp)
/* 04D57C 8004C97C E5A8000C */  swc1  $f8, 0xc($t5)
/* 04D580 8004C980 8D0E0000 */  lw    $t6, ($t0)
/* 04D584 8004C984 C4460010 */  lwc1  $f6, 0x10($v0)
/* 04D588 8004C988 C5C40010 */  lwc1  $f4, 0x10($t6)
/* 04D58C 8004C98C 46123280 */  add.s $f10, $f6, $f18
/* 04D590 8004C990 80E301E0 */  lb    $v1, 0x1e0($a3)
/* 04D594 8004C994 460A2081 */  sub.s $f2, $f4, $f10
/* 04D598 8004C998 24010001 */  li    $at, 1
/* 04D59C 8004C99C 10610003 */  beq   $v1, $at, .L8004C9AC
/* 04D5A0 8004C9A0 46001406 */   mov.s $f16, $f2
/* 04D5A4 8004C9A4 2401FFFF */  li    $at, -1
/* 04D5A8 8004C9A8 14610004 */  bne   $v1, $at, .L8004C9BC
.L8004C9AC:
/* 04D5AC 8004C9AC 3C014100 */   li    $at, 0x41000000 # 8.000000
/* 04D5B0 8004C9B0 44814000 */  mtc1  $at, $f8
/* 04D5B4 8004C9B4 80E301E0 */  lb    $v1, 0x1e0($a3)
/* 04D5B8 8004C9B8 E4E80074 */  swc1  $f8, 0x74($a3)
.L8004C9BC:
/* 04D5BC 8004C9BC 24010002 */  li    $at, 2
/* 04D5C0 8004C9C0 10610002 */  beq   $v1, $at, .L8004C9CC
/* 04D5C4 8004C9C4 2401FFFE */   li    $at, -2
/* 04D5C8 8004C9C8 14610004 */  bne   $v1, $at, .L8004C9DC
.L8004C9CC:
/* 04D5CC 8004C9CC 3C014100 */   li    $at, 0x41000000 # 8.000000
/* 04D5D0 8004C9D0 44813000 */  mtc1  $at, $f6
/* 04D5D4 8004C9D4 00000000 */  nop   
/* 04D5D8 8004C9D8 E4E60074 */  swc1  $f6, 0x74($a3)
.L8004C9DC:
/* 04D5DC 8004C9DC C4E40074 */  lwc1  $f4, 0x74($a3)
/* 04D5E0 8004C9E0 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 04D5E4 8004C9E4 44815800 */  mtc1  $at, $f11
/* 04D5E8 8004C9E8 44805000 */  mtc1  $zero, $f10
/* 04D5EC 8004C9EC 46002021 */  cvt.d.s $f0, $f4
/* 04D5F0 8004C9F0 4620503C */  c.lt.d $f10, $f0
/* 04D5F4 8004C9F4 3C014000 */  lui   $at, 0x4000
/* 04D5F8 8004C9F8 45000009 */  bc1f  .L8004CA20
/* 04D5FC 8004C9FC 00000000 */   nop   
# Used to access D_800E6578 and D_800E6578 + 4.
/* 04D600 8004CA00 3C01800E */  lui   $at, %hi(D_800E6578) # $at, 0x800e
/* 04D604 8004CA04 C4296578 */  lwc1  $f9, %lo(D_800E6578)($at)
/* 04D608 8004CA08 C428657C */  lwc1  $f8, %lo(D_800E6578 + 4)($at)
/* 04D60C 8004CA0C 00000000 */  nop   
/* 04D610 8004CA10 46280181 */  sub.d $f6, $f0, $f8
/* 04D614 8004CA14 46203120 */  cvt.s.d $f4, $f6
/* 04D618 8004CA18 10000004 */  b     .L8004CA2C
/* 04D61C 8004CA1C E4E40074 */   swc1  $f4, 0x74($a3)
.L8004CA20:
/* 04D620 8004CA20 44815000 */  mtc1  $at, $f10
/* 04D624 8004CA24 00000000 */  nop   
/* 04D628 8004CA28 E4EA0074 */  swc1  $f10, 0x74($a3)
.L8004CA2C:
/* 04D62C 8004CA2C C7A80050 */  lwc1  $f8, 0x50($sp)
/* 04D630 8004CA30 C4E40074 */  lwc1  $f4, 0x74($a3)
/* 04D634 8004CA34 46081182 */  mul.s $f6, $f2, $f8
/* 04D638 8004CA38 44800000 */  mtc1  $zero, $f0
/* 04D63C 8004CA3C 46043083 */  div.s $f2, $f6, $f4
/* 04D640 8004CA40 4602003C */  c.lt.s $f0, $f2
/* 04D644 8004CA44 00000000 */  nop   
/* 04D648 8004CA48 45000006 */  bc1f  .L8004CA64
/* 04D64C 8004CA4C 00000000 */   nop   
/* 04D650 8004CA50 4602803C */  c.lt.s $f16, $f2
/* 04D654 8004CA54 00000000 */  nop   
/* 04D658 8004CA58 45000002 */  bc1f  .L8004CA64
/* 04D65C 8004CA5C 00000000 */   nop   
/* 04D660 8004CA60 46008086 */  mov.s $f2, $f16
.L8004CA64:
/* 04D664 8004CA64 4600103C */  c.lt.s $f2, $f0
/* 04D668 8004CA68 00000000 */  nop   
/* 04D66C 8004CA6C 45000006 */  bc1f  .L8004CA88
/* 04D670 8004CA70 00000000 */   nop   
/* 04D674 8004CA74 4610103C */  c.lt.s $f2, $f16
/* 04D678 8004CA78 00000000 */  nop   
/* 04D67C 8004CA7C 45000002 */  bc1f  .L8004CA88
/* 04D680 8004CA80 00000000 */   nop   
/* 04D684 8004CA84 46008086 */  mov.s $f2, $f16
.L8004CA88:
/* 04D688 8004CA88 8D050000 */  lw    $a1, ($t0)
/* 04D68C 8004CA8C 00000000 */  nop   
/* 04D690 8004CA90 C4AA0010 */  lwc1  $f10, 0x10($a1)
/* 04D694 8004CA94 00000000 */  nop   
/* 04D698 8004CA98 46025201 */  sub.s $f8, $f10, $f2
/* 04D69C 8004CA9C E4A80010 */  swc1  $f8, 0x10($a1)
/* 04D6A0 8004CAA0 84E40196 */  lh    $a0, 0x196($a3)
/* 04D6A4 8004CAA4 AFA70058 */  sw    $a3, 0x58($sp)
/* 04D6A8 8004CAA8 24844000 */  addiu $a0, $a0, 0x4000
/* 04D6AC 8004CAAC 00047C00 */  sll   $t7, $a0, 0x10
/* 04D6B0 8004CAB0 0C01C1FE */  jal   sine_s
/* 04D6B4 8004CAB4 000F2403 */   sra   $a0, $t7, 0x10
/* 04D6B8 8004CAB8 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 04D6BC 8004CABC 44812000 */  mtc1  $at, $f4
/* 04D6C0 8004CAC0 46000187 */  neg.s $f6, $f0
/* 04D6C4 8004CAC4 46043282 */  mul.s $f10, $f6, $f4
/* 04D6C8 8004CAC8 8FA70058 */  lw    $a3, 0x58($sp)
/* 04D6CC 8004CACC 8FB80054 */  lw    $t8, 0x54($sp)
/* 04D6D0 8004CAD0 C4E80030 */  lwc1  $f8, 0x30($a3)
/* 04D6D4 8004CAD4 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 04D6D8 8004CAD8 46085402 */  mul.s $f16, $f10, $f8
/* 04D6DC 8004CADC C7060014 */  lwc1  $f6, 0x14($t8)
/* 04D6E0 8004CAE0 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 04D6E4 8004CAE4 2508D508 */  addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 04D6E8 8004CAE8 46043280 */  add.s $f10, $f6, $f4
/* 04D6EC 8004CAEC 8D190000 */  lw    $t9, ($t0)
/* 04D6F0 8004CAF0 46105200 */  add.s $f8, $f10, $f16
/* 04D6F4 8004CAF4 3C0E8012 */  lui   $t6, %hi(D_8011D586) # $t6, 0x8012
/* 04D6F8 8004CAF8 E7280014 */  swc1  $f8, 0x14($t9)
/* 04D6FC 8004CAFC 8D0A0000 */  lw    $t2, ($t0)
/* 04D700 8004CB00 84EB0196 */  lh    $t3, 0x196($a3)
/* 04D704 8004CB04 00000000 */  nop   
/* 04D708 8004CB08 A54B0000 */  sh    $t3, ($t2)
/* 04D70C 8004CB0C 80ED01E0 */  lb    $t5, 0x1e0($a3)
/* 04D710 8004CB10 00000000 */  nop   
/* 04D714 8004CB14 15A00005 */  bnez  $t5, .L8004CB2C
/* 04D718 8004CB18 00000000 */   nop   
/* 04D71C 8004CB1C 85CED586 */  lh    $t6, %lo(D_8011D586)($t6)
/* 04D720 8004CB20 34018001 */  li    $at, 32769
/* 04D724 8004CB24 11C00014 */  beqz  $t6, .L8004CB78
/* 04D728 8004CB28 00000000 */   nop   
.L8004CB2C:
/* 04D72C 8004CB2C 8D050000 */  lw    $a1, ($t0)
/* 04D730 8004CB30 34018001 */  li    $at, 32769
/* 04D734 8004CB34 84A20004 */  lh    $v0, 4($a1)
/* 04D738 8004CB38 00000000 */  nop   
/* 04D73C 8004CB3C 3043FFFF */  andi  $v1, $v0, 0xffff
/* 04D740 8004CB40 00031823 */  negu  $v1, $v1
/* 04D744 8004CB44 0061082A */  slt   $at, $v1, $at
/* 04D748 8004CB48 14200003 */  bnez  $at, .L8004CB58
/* 04D74C 8004CB4C 3C01FFFF */   lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 04D750 8004CB50 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 04D754 8004CB54 00611821 */  addu  $v1, $v1, $at
.L8004CB58:
/* 04D758 8004CB58 28618000 */  slti  $at, $v1, -0x8000
/* 04D75C 8004CB5C 10200002 */  beqz  $at, .L8004CB68
/* 04D760 8004CB60 3401FFFF */   li    $at, 65535
/* 04D764 8004CB64 00611821 */  addu  $v1, $v1, $at
.L8004CB68:
/* 04D768 8004CB68 00037883 */  sra   $t7, $v1, 2
/* 04D76C 8004CB6C 004F6021 */  addu  $t4, $v0, $t7
/* 04D770 8004CB70 10000013 */  b     .L8004CBC0
/* 04D774 8004CB74 A4AC0004 */   sh    $t4, 4($a1)
.L8004CB78:
/* 04D778 8004CB78 8D050000 */  lw    $a1, ($t0)
/* 04D77C 8004CB7C 84E401A4 */  lh    $a0, 0x1a4($a3)
/* 04D780 8004CB80 84A20004 */  lh    $v0, 4($a1)
/* 04D784 8004CB84 0004C103 */  sra   $t8, $a0, 4
/* 04D788 8004CB88 3059FFFF */  andi  $t9, $v0, 0xffff
/* 04D78C 8004CB8C 03191823 */  subu  $v1, $t8, $t9
/* 04D790 8004CB90 0061082A */  slt   $at, $v1, $at
/* 04D794 8004CB94 14200003 */  bnez  $at, .L8004CBA4
/* 04D798 8004CB98 3C01FFFF */   lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 04D79C 8004CB9C 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 04D7A0 8004CBA0 00611821 */  addu  $v1, $v1, $at
.L8004CBA4:
/* 04D7A4 8004CBA4 28618000 */  slti  $at, $v1, -0x8000
/* 04D7A8 8004CBA8 10200002 */  beqz  $at, .L8004CBB4
/* 04D7AC 8004CBAC 3401FFFF */   li    $at, 65535
/* 04D7B0 8004CBB0 00611821 */  addu  $v1, $v1, $at
.L8004CBB4:
/* 04D7B4 8004CBB4 000358C3 */  sra   $t3, $v1, 3
/* 04D7B8 8004CBB8 004B5021 */  addu  $t2, $v0, $t3
/* 04D7BC 8004CBBC A4AA0004 */  sh    $t2, 4($a1)
.L8004CBC0:
/* 04D7C0 8004CBC0 8D050000 */  lw    $a1, ($t0)
/* 04D7C4 8004CBC4 00000000 */  nop   
/* 04D7C8 8004CBC8 C4AC000C */  lwc1  $f12, 0xc($a1)
/* 04D7CC 8004CBCC C4AE0010 */  lwc1  $f14, 0x10($a1)
/* 04D7D0 8004CBD0 8CA60014 */  lw    $a2, 0x14($a1)
/* 04D7D4 8004CBD4 0C00A7C6 */  jal   get_level_segment_index_from_position
/* 04D7D8 8004CBD8 AFA70058 */   sw    $a3, 0x58($sp)
/* 04D7DC 8004CBDC 8FA70058 */  lw    $a3, 0x58($sp)
/* 04D7E0 8004CBE0 3C088012 */  lui   $t0, %hi(gCameraObject) # $t0, 0x8012
/* 04D7E4 8004CBE4 2401FFFF */  li    $at, -1
/* 04D7E8 8004CBE8 10410004 */  beq   $v0, $at, .L8004CBFC
/* 04D7EC 8004CBEC 2508D508 */   addiu $t0, %lo(gCameraObject) # addiu $t0, $t0, -0x2af8
/* 04D7F0 8004CBF0 8D0D0000 */  lw    $t5, ($t0)
/* 04D7F4 8004CBF4 00000000 */  nop   
/* 04D7F8 8004CBF8 A5A20034 */  sh    $v0, 0x34($t5)
.L8004CBFC:
/* 04D7FC 8004CBFC 8D0E0000 */  lw    $t6, ($t0)
/* 04D800 8004CC00 00000000 */  nop   
/* 04D804 8004CC04 85CF0000 */  lh    $t7, ($t6)
/* 04D808 8004CC08 00000000 */  nop   
/* 04D80C 8004CC0C A4EF0196 */  sh    $t7, 0x196($a3)
/* 04D810 8004CC10 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04D814 8004CC14 27BD0050 */  addiu $sp, $sp, 0x50
/* 04D818 8004CC18 03E00008 */  jr    $ra
/* 04D81C 8004CC1C 00000000 */   nop   

