.late_rodata
glabel D_800E61F8
.double 10000.0

.text
glabel func_8003EDD8
/* 03F9D8 8003EDD8 27BDFF88 */  addiu $sp, $sp, -0x78
/* 03F9DC 8003EDDC AFBF0034 */  sw    $ra, 0x34($sp)
/* 03F9E0 8003EDE0 AFB10030 */  sw    $s1, 0x30($sp)
/* 03F9E4 8003EDE4 AFB0002C */  sw    $s0, 0x2c($sp)
/* 03F9E8 8003EDE8 AFA5007C */  sw    $a1, 0x7c($sp)
/* 03F9EC 8003EDEC 8CC20000 */  lw    $v0, ($a2)
/* 03F9F0 8003EDF0 00808025 */  move  $s0, $a0
/* 03F9F4 8003EDF4 104000A1 */  beqz  $v0, .L8003F07C
/* 03F9F8 8003EDF8 00C08825 */   move  $s1, $a2
/* 03F9FC 8003EDFC 8C430064 */  lw    $v1, 0x64($v0)
/* 03FA00 8003EE00 3C01800E */  lui   $at, %hi(D_800E61FC) # $at, 0x800e
/* 03FA04 8003EE04 846E01BA */  lh    $t6, 0x1ba($v1)
/* 03FA08 8003EE08 C42D61F8 */  lwc1  $f13, %lo(D_800E61F8)($at)
/* 03FA0C 8003EE0C C42C61FC */  lwc1  $f12, %lo(D_800E61FC)($at)
/* 03FA10 8003EE10 000E7843 */  sra   $t7, $t6, 1
/* 03FA14 8003EE14 A4CF0014 */  sh    $t7, 0x14($a2)
/* 03FA18 8003EE18 847801BC */  lh    $t8, 0x1bc($v1)
/* 03FA1C 8003EE1C 00404025 */  move  $t0, $v0
/* 03FA20 8003EE20 0018C843 */  sra   $t9, $t8, 1
/* 03FA24 8003EE24 A4D90016 */  sh    $t9, 0x16($a2)
/* 03FA28 8003EE28 C486000C */  lwc1  $f6, 0xc($a0)
/* 03FA2C 8003EE2C C444000C */  lwc1  $f4, 0xc($v0)
/* 03FA30 8003EE30 00000000 */  nop   
/* 03FA34 8003EE34 46062201 */  sub.s $f8, $f4, $f6
/* 03FA38 8003EE38 E7A80068 */  swc1  $f8, 0x68($sp)
/* 03FA3C 8003EE3C C4920010 */  lwc1  $f18, 0x10($a0)
/* 03FA40 8003EE40 C44A0010 */  lwc1  $f10, 0x10($v0)
/* 03FA44 8003EE44 00000000 */  nop   
/* 03FA48 8003EE48 46125101 */  sub.s $f4, $f10, $f18
/* 03FA4C 8003EE4C C7B20068 */  lwc1  $f18, 0x68($sp)
/* 03FA50 8003EE50 E7A40064 */  swc1  $f4, 0x64($sp)
/* 03FA54 8003EE54 C4880014 */  lwc1  $f8, 0x14($a0)
/* 03FA58 8003EE58 C4460014 */  lwc1  $f6, 0x14($v0)
/* 03FA5C 8003EE5C 46129102 */  mul.s $f4, $f18, $f18
/* 03FA60 8003EE60 46083281 */  sub.s $f10, $f6, $f8
/* 03FA64 8003EE64 E7AA0060 */  swc1  $f10, 0x60($sp)
/* 03FA68 8003EE68 C7A60060 */  lwc1  $f6, 0x60($sp)
/* 03FA6C 8003EE6C C7AA0064 */  lwc1  $f10, 0x64($sp)
/* 03FA70 8003EE70 46063202 */  mul.s $f8, $f6, $f6
/* 03FA74 8003EE74 46082400 */  add.s $f16, $f4, $f8
/* 03FA78 8003EE78 460A5082 */  mul.s $f2, $f10, $f10
/* 03FA7C 8003EE7C 460084A1 */  cvt.d.s $f18, $f16
/* 03FA80 8003EE80 462C903C */  c.lt.d $f18, $f12
/* 03FA84 8003EE84 00000000 */  nop   
/* 03FA88 8003EE88 45000008 */  bc1f  .L8003EEAC
/* 03FA8C 8003EE8C 46001386 */   mov.s $f14, $f2
/* 03FA90 8003EE90 460011A1 */  cvt.d.s $f6, $f2
/* 03FA94 8003EE94 4626603C */  c.lt.d $f12, $f6
/* 03FA98 8003EE98 00000000 */  nop   
/* 03FA9C 8003EE9C 45000003 */  bc1f  .L8003EEAC
/* 03FAA0 8003EEA0 00000000 */   nop   
/* 03FAA4 8003EEA4 10000085 */  b     .L8003F0BC
/* 03FAA8 8003EEA8 ACC00000 */   sw    $zero, ($a2)
.L8003EEAC:
/* 03FAAC 8003EEAC 460E8300 */  add.s $f12, $f16, $f14
/* 03FAB0 8003EEB0 AFA30070 */  sw    $v1, 0x70($sp)
/* 03FAB4 8003EEB4 0C0326B4 */  jal   sqrtf
/* 03FAB8 8003EEB8 AFA80074 */   sw    $t0, 0x74($sp)
/* 03FABC 8003EEBC 3C014396 */  li    $at, 0x43960000 # 300.000000
/* 03FAC0 8003EEC0 44812000 */  mtc1  $at, $f4
/* 03FAC4 8003EEC4 8FA30070 */  lw    $v1, 0x70($sp)
/* 03FAC8 8003EEC8 4600203C */  c.lt.s $f4, $f0
/* 03FACC 8003EECC 8FA80074 */  lw    $t0, 0x74($sp)
/* 03FAD0 8003EED0 45000021 */  bc1f  .L8003EF58
/* 03FAD4 8003EED4 E7A0006C */   swc1  $f0, 0x6c($sp)
/* 03FAD8 8003EED8 82250019 */  lb    $a1, 0x19($s1)
/* 03FADC 8003EEDC 2401FFFF */  li    $at, -1
/* 03FAE0 8003EEE0 10A1001E */  beq   $a1, $at, .L8003EF5C
/* 03FAE4 8003EEE4 3C01C1C8 */   lui   $at, 0xc1c8
/* 03FAE8 8003EEE8 8E2A0008 */  lw    $t2, 8($s1)
/* 03FAEC 8003EEEC 02002025 */  move  $a0, $s0
/* 03FAF0 8003EEF0 15400019 */  bnez  $t2, .L8003EF58
/* 03FAF4 8003EEF4 27AC0068 */   addiu $t4, $sp, 0x68
/* 03FAF8 8003EEF8 862B0016 */  lh    $t3, 0x16($s1)
/* 03FAFC 8003EEFC 906601C8 */  lbu   $a2, 0x1c8($v1)
/* 03FB00 8003EF00 86270014 */  lh    $a3, 0x14($s1)
/* 03FB04 8003EF04 AFAB0010 */  sw    $t3, 0x10($sp)
/* 03FB08 8003EF08 C628000C */  lwc1  $f8, 0xc($s1)
/* 03FB0C 8003EF0C 27AD0064 */  addiu $t5, $sp, 0x64
/* 03FB10 8003EF10 27AE0060 */  addiu $t6, $sp, 0x60
/* 03FB14 8003EF14 AFAE0020 */  sw    $t6, 0x20($sp)
/* 03FB18 8003EF18 AFAD001C */  sw    $t5, 0x1c($sp)
/* 03FB1C 8003EF1C AFA80074 */  sw    $t0, 0x74($sp)
/* 03FB20 8003EF20 AFAC0018 */  sw    $t4, 0x18($sp)
/* 03FB24 8003EF24 0C006557 */  jal   func_8001955C
/* 03FB28 8003EF28 E7A80014 */   swc1  $f8, 0x14($sp)
/* 03FB2C 8003EF2C 3C0143FA */  li    $at, 0x43FA0000 # 500.000000
/* 03FB30 8003EF30 44817000 */  mtc1  $at, $f14
/* 03FB34 8003EF34 C7AC0064 */  lwc1  $f12, 0x64($sp)
/* 03FB38 8003EF38 0C01C1D4 */  jal   func_80070750
/* 03FB3C 8003EF3C AFA20058 */   sw    $v0, 0x58($sp)
/* 03FB40 8003EF40 8FA80074 */  lw    $t0, 0x74($sp)
/* 03FB44 8003EF44 304FFFFF */  andi  $t7, $v0, 0xffff
/* 03FB48 8003EF48 24180003 */  li    $t8, 3
/* 03FB4C 8003EF4C AFAF0050 */  sw    $t7, 0x50($sp)
/* 03FB50 8003EF50 10000006 */  b     .L8003EF6C
/* 03FB54 8003EF54 AFB80048 */   sw    $t8, 0x48($sp)
.L8003EF58:
/* 03FB58 8003EF58 3C01C1C8 */  li    $at, 0xC1C80000 # -25.000000
.L8003EF5C:
/* 03FB5C 8003EF5C 44815000 */  mtc1  $at, $f10
/* 03FB60 8003EF60 AE280008 */  sw    $t0, 8($s1)
/* 03FB64 8003EF64 E62A0010 */  swc1  $f10, 0x10($s1)
/* 03FB68 8003EF68 AFA00058 */  sw    $zero, 0x58($sp)
.L8003EF6C:
/* 03FB6C 8003EF6C C7AC0068 */  lwc1  $f12, 0x68($sp)
/* 03FB70 8003EF70 C7AE0060 */  lwc1  $f14, 0x60($sp)
/* 03FB74 8003EF74 0C01C1D4 */  jal   func_80070750
/* 03FB78 8003EF78 AFA80074 */   sw    $t0, 0x74($sp)
/* 03FB7C 8003EF7C 86050000 */  lh    $a1, ($s0)
/* 03FB80 8003EF80 24018000 */  li    $at, -32768
/* 03FB84 8003EF84 00412021 */  addu  $a0, $v0, $at
/* 03FB88 8003EF88 3086FFFF */  andi  $a2, $a0, 0xffff
/* 03FB8C 8003EF8C 30AAFFFF */  andi  $t2, $a1, 0xffff
/* 03FB90 8003EF90 34078001 */  li    $a3, 32769
/* 03FB94 8003EF94 00CA1823 */  subu  $v1, $a2, $t2
/* 03FB98 8003EF98 8FA80074 */  lw    $t0, 0x74($sp)
/* 03FB9C 8003EF9C 8FA90048 */  lw    $t1, 0x48($sp)
/* 03FBA0 8003EFA0 0067082A */  slt   $at, $v1, $a3
/* 03FBA4 8003EFA4 8FAB0058 */  lw    $t3, 0x58($sp)
/* 03FBA8 8003EFA8 14200003 */  bnez  $at, .L8003EFB8
/* 03FBAC 8003EFAC 3C01FFFF */   lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 03FBB0 8003EFB0 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 03FBB4 8003EFB4 00611821 */  addu  $v1, $v1, $at
.L8003EFB8:
/* 03FBB8 8003EFB8 28618000 */  slti  $at, $v1, -0x8000
/* 03FBBC 8003EFBC 10200002 */  beqz  $at, .L8003EFC8
/* 03FBC0 8003EFC0 3401FFFF */   li    $at, 65535
/* 03FBC4 8003EFC4 00611821 */  addu  $v1, $v1, $at
.L8003EFC8:
/* 03FBC8 8003EFC8 1160001B */  beqz  $t3, .L8003F038
/* 03FBCC 8003EFCC 28616001 */   slti  $at, $v1, 0x6001
/* 03FBD0 8003EFD0 8FA4007C */  lw    $a0, 0x7c($sp)
/* 03FBD4 8003EFD4 86020002 */  lh    $v0, 2($s0)
/* 03FBD8 8003EFD8 00640019 */  multu $v1, $a0
/* 03FBDC 8003EFDC 3058FFFF */  andi  $t8, $v0, 0xffff
/* 03FBE0 8003EFE0 00006012 */  mflo  $t4
/* 03FBE4 8003EFE4 012C6807 */  srav  $t5, $t4, $t1
/* 03FBE8 8003EFE8 00AD7021 */  addu  $t6, $a1, $t5
/* 03FBEC 8003EFEC A60E0000 */  sh    $t6, ($s0)
/* 03FBF0 8003EFF0 8FAF0050 */  lw    $t7, 0x50($sp)
/* 03FBF4 8003EFF4 00000000 */  nop   
/* 03FBF8 8003EFF8 01F81823 */  subu  $v1, $t7, $t8
/* 03FBFC 8003EFFC 0067082A */  slt   $at, $v1, $a3
/* 03FC00 8003F000 14200003 */  bnez  $at, .L8003F010
/* 03FC04 8003F004 3C01FFFF */   lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 03FC08 8003F008 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 03FC0C 8003F00C 00611821 */  addu  $v1, $v1, $at
.L8003F010:
/* 03FC10 8003F010 28618000 */  slti  $at, $v1, -0x8000
/* 03FC14 8003F014 10200002 */  beqz  $at, .L8003F020
/* 03FC18 8003F018 3401FFFF */   li    $at, 65535
/* 03FC1C 8003F01C 00611821 */  addu  $v1, $v1, $at
.L8003F020:
/* 03FC20 8003F020 00640019 */  multu $v1, $a0
/* 03FC24 8003F024 0000C812 */  mflo  $t9
/* 03FC28 8003F028 01395007 */  srav  $t2, $t9, $t1
/* 03FC2C 8003F02C 004A5821 */  addu  $t3, $v0, $t2
/* 03FC30 8003F030 10000012 */  b     .L8003F07C
/* 03FC34 8003F034 A60B0002 */   sh    $t3, 2($s0)
.L8003F038:
/* 03FC38 8003F038 10200003 */  beqz  $at, .L8003F048
/* 03FC3C 8003F03C 2861A000 */   slti  $at, $v1, -0x6000
/* 03FC40 8003F040 10200007 */  beqz  $at, .L8003F060
/* 03FC44 8003F044 00000000 */   nop   
.L8003F048:
/* 03FC48 8003F048 8E0C004C */  lw    $t4, 0x4c($s0)
/* 03FC4C 8003F04C 240D0001 */  li    $t5, 1
/* 03FC50 8003F050 AD880000 */  sw    $t0, ($t4)
/* 03FC54 8003F054 8E0E004C */  lw    $t6, 0x4c($s0)
/* 03FC58 8003F058 00000000 */  nop   
/* 03FC5C 8003F05C A1CD0013 */  sb    $t5, 0x13($t6)
.L8003F060:
/* 03FC60 8003F060 C7AC0064 */  lwc1  $f12, 0x64($sp)
/* 03FC64 8003F064 C7AE006C */  lwc1  $f14, 0x6c($sp)
/* 03FC68 8003F068 0C01C1D4 */  jal   func_80070750
/* 03FC6C 8003F06C AFA60054 */   sw    $a2, 0x54($sp)
/* 03FC70 8003F070 8FA60054 */  lw    $a2, 0x54($sp)
/* 03FC74 8003F074 A6020002 */  sh    $v0, 2($s0)
/* 03FC78 8003F078 A6060000 */  sh    $a2, ($s0)
.L8003F07C:
/* 03FC7C 8003F07C 02002025 */  move  $a0, $s0
/* 03FC80 8003F080 02202825 */  move  $a1, $s1
/* 03FC84 8003F084 0C00FC3E */  jal   func_8003F0F8
/* 03FC88 8003F088 24060136 */   li    $a2, 310
/* 03FC8C 8003F08C 0C0270F2 */  jal   func_8009C3C8
/* 03FC90 8003F090 00000000 */   nop   
/* 03FC94 8003F094 28410003 */  slti  $at, $v0, 3
/* 03FC98 8003F098 10200009 */  beqz  $at, .L8003F0C0
/* 03FC9C 8003F09C 8FBF0034 */   lw    $ra, 0x34($sp)
/* 03FCA0 8003F0A0 8E180074 */  lw    $t8, 0x74($s0)
/* 03FCA4 8003F0A4 02002025 */  move  $a0, $s0
/* 03FCA8 8003F0A8 37190001 */  ori   $t9, $t8, 1
/* 03FCAC 8003F0AC AE190074 */  sw    $t9, 0x74($s0)
/* 03FCB0 8003F0B0 8FA5007C */  lw    $a1, 0x7c($sp)
/* 03FCB4 8003F0B4 0C02BF0F */  jal   func_800AFC3C
/* 03FCB8 8003F0B8 00000000 */   nop   
.L8003F0BC:
/* 03FCBC 8003F0BC 8FBF0034 */  lw    $ra, 0x34($sp)
.L8003F0C0:
/* 03FCC0 8003F0C0 8FB0002C */  lw    $s0, 0x2c($sp)
/* 03FCC4 8003F0C4 8FB10030 */  lw    $s1, 0x30($sp)
/* 03FCC8 8003F0C8 03E00008 */  jr    $ra
/* 03FCCC 8003F0CC 27BD0078 */   addiu $sp, $sp, 0x78

