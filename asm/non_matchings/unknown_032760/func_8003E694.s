.late_rodata
glabel D_800E61F0
.double 1.2

.text
glabel func_8003E694
/* 03F294 8003E694 27BDFF18 */  addiu $sp, $sp, -0xe8
/* 03F298 8003E698 AFBF002C */  sw    $ra, 0x2c($sp)
/* 03F29C 8003E69C AFB10028 */  sw    $s1, 0x28($sp)
/* 03F2A0 8003E6A0 AFB00024 */  sw    $s0, 0x24($sp)
/* 03F2A4 8003E6A4 AFA500EC */  sw    $a1, 0xec($sp)
/* 03F2A8 8003E6A8 8C83004C */  lw    $v1, 0x4c($a0)
/* 03F2AC 8003E6AC 44800000 */  mtc1  $zero, $f0
/* 03F2B0 8003E6B0 846E0014 */  lh    $t6, 0x14($v1)
/* 03F2B4 8003E6B4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 03F2B8 8003E6B8 35CF0100 */  ori   $t7, $t6, 0x100
/* 03F2BC 8003E6BC A46F0014 */  sh    $t7, 0x14($v1)
/* 03F2C0 8003E6C0 C484000C */  lwc1  $f4, 0xc($a0)
/* 03F2C4 8003E6C4 8C910064 */  lw    $s1, 0x64($a0)
/* 03F2C8 8003E6C8 E7A400BC */  swc1  $f4, 0xbc($sp)
/* 03F2CC 8003E6CC C4860010 */  lwc1  $f6, 0x10($a0)
/* 03F2D0 8003E6D0 44815000 */  mtc1  $at, $f10
/* 03F2D4 8003E6D4 E7A600B8 */  swc1  $f6, 0xb8($sp)
/* 03F2D8 8003E6D8 C4880014 */  lwc1  $f8, 0x14($a0)
/* 03F2DC 8003E6DC 00808025 */  move  $s0, $a0
/* 03F2E0 8003E6E0 E7A800B4 */  swc1  $f8, 0xb4($sp)
/* 03F2E4 8003E6E4 84980000 */  lh    $t8, ($a0)
/* 03F2E8 8003E6E8 27A5003C */  addiu $a1, $sp, 0x3c
/* 03F2EC 8003E6EC A7B8003C */  sh    $t8, 0x3c($sp)
/* 03F2F0 8003E6F0 84990002 */  lh    $t9, 2($a0)
/* 03F2F4 8003E6F4 A7A00040 */  sh    $zero, 0x40($sp)
/* 03F2F8 8003E6F8 27A40054 */  addiu $a0, $sp, 0x54
/* 03F2FC 8003E6FC E7A00048 */  swc1  $f0, 0x48($sp)
/* 03F300 8003E700 E7A0004C */  swc1  $f0, 0x4c($sp)
/* 03F304 8003E704 E7A00050 */  swc1  $f0, 0x50($sp)
/* 03F308 8003E708 E7AA0044 */  swc1  $f10, 0x44($sp)
/* 03F30C 8003E70C 0C01BF0C */  jal   func_8006FC30
/* 03F310 8003E710 A7B9003E */   sh    $t9, 0x3e($sp)
/* 03F314 8003E714 44800000 */  mtc1  $zero, $f0
/* 03F318 8003E718 8E270010 */  lw    $a3, 0x10($s1)
/* 03F31C 8003E71C 2608001C */  addiu $t0, $s0, 0x1c
/* 03F320 8003E720 26090020 */  addiu $t1, $s0, 0x20
/* 03F324 8003E724 260A0024 */  addiu $t2, $s0, 0x24
/* 03F328 8003E728 44050000 */  mfc1  $a1, $f0
/* 03F32C 8003E72C 44060000 */  mfc1  $a2, $f0
/* 03F330 8003E730 AFAA0018 */  sw    $t2, 0x18($sp)
/* 03F334 8003E734 AFA90014 */  sw    $t1, 0x14($sp)
/* 03F338 8003E738 AFA80010 */  sw    $t0, 0x10($sp)
/* 03F33C 8003E73C 0C01BD93 */  jal   guMtxXFMF
/* 03F340 8003E740 27A40054 */   addiu $a0, $sp, 0x54
/* 03F344 8003E744 8FAB00EC */  lw    $t3, 0xec($sp)
/* 03F348 8003E748 3C0C8000 */  lui   $t4, %hi(osTvType) # $t4, 0x8000
/* 03F34C 8003E74C 448B8000 */  mtc1  $t3, $f16
/* 03F350 8003E750 8D8C0300 */  lw    $t4, %lo(osTvType)($t4)
/* 03F354 8003E754 46808020 */  cvt.s.w $f0, $f16
/* 03F358 8003E758 3C01800E */  lui   $at, %hi(D_800E61F0 + 4) # $at, 0x800e
/* 03F35C 8003E75C 15800006 */  bnez  $t4, .L8003E778
/* 03F360 8003E760 46000086 */   mov.s $f2, $f0
/* 03F364 8003E764 C42561F0 */  lwc1  $f5, %lo(D_800E61F0)($at)
/* 03F368 8003E768 C42461F4 */  lwc1  $f4, %lo(D_800E61F0 + 4)($at)
/* 03F36C 8003E76C 460004A1 */  cvt.d.s $f18, $f0
/* 03F370 8003E770 46249182 */  mul.d $f6, $f18, $f4
/* 03F374 8003E774 462030A0 */  cvt.s.d $f2, $f6
.L8003E778:
/* 03F378 8003E778 C60A001C */  lwc1  $f10, 0x1c($s0)
/* 03F37C 8003E77C C608000C */  lwc1  $f8, 0xc($s0)
/* 03F380 8003E780 46025402 */  mul.s $f16, $f10, $f2
/* 03F384 8003E784 24010006 */  li    $at, 6
/* 03F388 8003E788 24040001 */  li    $a0, 1
/* 03F38C 8003E78C 2605000C */  addiu $a1, $s0, 0xc
/* 03F390 8003E790 46104480 */  add.s $f18, $f8, $f16
/* 03F394 8003E794 27A600C8 */  addiu $a2, $sp, 0xc8
/* 03F398 8003E798 E7B200C8 */  swc1  $f18, 0xc8($sp)
/* 03F39C 8003E79C C6060020 */  lwc1  $f6, 0x20($s0)
/* 03F3A0 8003E7A0 C6040010 */  lwc1  $f4, 0x10($s0)
/* 03F3A4 8003E7A4 46023282 */  mul.s $f10, $f6, $f2
/* 03F3A8 8003E7A8 2407FFFF */  li    $a3, -1
/* 03F3AC 8003E7AC 460A2200 */  add.s $f8, $f4, $f10
/* 03F3B0 8003E7B0 E7A800CC */  swc1  $f8, 0xcc($sp)
/* 03F3B4 8003E7B4 C6120024 */  lwc1  $f18, 0x24($s0)
/* 03F3B8 8003E7B8 C6100014 */  lwc1  $f16, 0x14($s0)
/* 03F3BC 8003E7BC 46029182 */  mul.s $f6, $f18, $f2
/* 03F3C0 8003E7C0 46068100 */  add.s $f4, $f16, $f6
/* 03F3C4 8003E7C4 E7A400D0 */  swc1  $f4, 0xd0($sp)
/* 03F3C8 8003E7C8 922D0018 */  lbu   $t5, 0x18($s1)
/* 03F3CC 8003E7CC 00000000 */  nop   
/* 03F3D0 8003E7D0 11A1001E */  beq   $t5, $at, .L8003E84C
/* 03F3D4 8003E7D4 3C014180 */   li    $at, 0x41800000 # 16.000000
/* 03F3D8 8003E7D8 44815000 */  mtc1  $at, $f10
/* 03F3DC 8003E7DC AFA50038 */  sw    $a1, 0x38($sp)
/* 03F3E0 8003E7E0 E7A200C0 */  swc1  $f2, 0xc0($sp)
/* 03F3E4 8003E7E4 0C00C44C */  jal   func_80031130
/* 03F3E8 8003E7E8 E7AA00C4 */   swc1  $f10, 0xc4($sp)
/* 03F3EC 8003E7EC 240EFFFF */  li    $t6, -1
/* 03F3F0 8003E7F0 8FA40038 */  lw    $a0, 0x38($sp)
/* 03F3F4 8003E7F4 240F0001 */  li    $t7, 1
/* 03F3F8 8003E7F8 27B800A4 */  addiu $t8, $sp, 0xa4
/* 03F3FC 8003E7FC AFA000A4 */  sw    $zero, 0xa4($sp)
/* 03F400 8003E800 A3AE0097 */  sb    $t6, 0x97($sp)
/* 03F404 8003E804 AFB80014 */  sw    $t8, 0x14($sp)
/* 03F408 8003E808 AFAF0010 */  sw    $t7, 0x10($sp)
/* 03F40C 8003E80C 27A500C8 */  addiu $a1, $sp, 0xc8
/* 03F410 8003E810 27A600C4 */  addiu $a2, $sp, 0xc4
/* 03F414 8003E814 0C00C580 */  jal   func_80031600
/* 03F418 8003E818 27A70097 */   addiu $a3, $sp, 0x97
/* 03F41C 8003E81C 8FB900A4 */  lw    $t9, 0xa4($sp)
/* 03F420 8003E820 C7A200C0 */  lwc1  $f2, 0xc0($sp)
/* 03F424 8003E824 1B200009 */  blez  $t9, .L8003E84C
/* 03F428 8003E828 27A400B0 */   addiu $a0, $sp, 0xb0
/* 03F42C 8003E82C 27A500AC */  addiu $a1, $sp, 0xac
/* 03F430 8003E830 27A600A8 */  addiu $a2, $sp, 0xa8
/* 03F434 8003E834 0C00AB35 */  jal   func_8002ACD4
/* 03F438 8003E838 E7A200C0 */   swc1  $f2, 0xc0($sp)
/* 03F43C 8003E83C C7A200C0 */  lwc1  $f2, 0xc0($sp)
/* 03F440 8003E840 10400002 */  beqz  $v0, .L8003E84C
/* 03F444 8003E844 00000000 */   nop   
/* 03F448 8003E848 AE000078 */  sw    $zero, 0x78($s0)
.L8003E84C:
/* 03F44C 8003E84C C7A800C8 */  lwc1  $f8, 0xc8($sp)
/* 03F450 8003E850 C7B200BC */  lwc1  $f18, 0xbc($sp)
/* 03F454 8003E854 C7B000CC */  lwc1  $f16, 0xcc($sp)
/* 03F458 8003E858 C7A600B8 */  lwc1  $f6, 0xb8($sp)
/* 03F45C 8003E85C C7A400D0 */  lwc1  $f4, 0xd0($sp)
/* 03F460 8003E860 C7AA00B4 */  lwc1  $f10, 0xb4($sp)
/* 03F464 8003E864 46124001 */  sub.s $f0, $f8, $f18
/* 03F468 8003E868 02002025 */  move  $a0, $s0
/* 03F46C 8003E86C 46068301 */  sub.s $f12, $f16, $f6
/* 03F470 8003E870 44050000 */  mfc1  $a1, $f0
/* 03F474 8003E874 460A2381 */  sub.s $f14, $f4, $f10
/* 03F478 8003E878 44066000 */  mfc1  $a2, $f12
/* 03F47C 8003E87C 44077000 */  mfc1  $a3, $f14
/* 03F480 8003E880 E7AE00A8 */  swc1  $f14, 0xa8($sp)
/* 03F484 8003E884 E7AC00AC */  swc1  $f12, 0xac($sp)
/* 03F488 8003E888 E7A000B0 */  swc1  $f0, 0xb0($sp)
/* 03F48C 8003E88C 0C00455C */  jal   func_80011570
/* 03F490 8003E890 E7A200C0 */   swc1  $f2, 0xc0($sp)
/* 03F494 8003E894 C7A200C0 */  lwc1  $f2, 0xc0($sp)
/* 03F498 8003E898 10400002 */  beqz  $v0, .L8003E8A4
/* 03F49C 8003E89C 00000000 */   nop   
/* 03F4A0 8003E8A0 AE000078 */  sw    $zero, 0x78($s0)
.L8003E8A4:
/* 03F4A4 8003E8A4 C7A800B0 */  lwc1  $f8, 0xb0($sp)
/* 03F4A8 8003E8A8 C7B000A8 */  lwc1  $f16, 0xa8($sp)
/* 03F4AC 8003E8AC 46084482 */  mul.s $f18, $f8, $f8
/* 03F4B0 8003E8B0 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 03F4B4 8003E8B4 46108182 */  mul.s $f6, $f16, $f16
/* 03F4B8 8003E8B8 44818000 */  mtc1  $at, $f16
/* 03F4BC 8003E8BC 46069100 */  add.s $f4, $f18, $f6
/* 03F4C0 8003E8C0 00000000 */  nop   
/* 03F4C4 8003E8C4 46022283 */  div.s $f10, $f4, $f2
/* 03F4C8 8003E8C8 E7AA00B0 */  swc1  $f10, 0xb0($sp)
/* 03F4CC 8003E8CC C6200010 */  lwc1  $f0, 0x10($s1)
/* 03F4D0 8003E8D0 C7A600B0 */  lwc1  $f6, 0xb0($sp)
/* 03F4D4 8003E8D4 46000202 */  mul.s $f8, $f0, $f0
/* 03F4D8 8003E8D8 00000000 */  nop   
/* 03F4DC 8003E8DC 46104483 */  div.s $f18, $f8, $f16
/* 03F4E0 8003E8E0 4612303C */  c.lt.s $f6, $f18
/* 03F4E4 8003E8E4 E7B200A8 */  swc1  $f18, 0xa8($sp)
/* 03F4E8 8003E8E8 45000002 */  bc1f  .L8003E8F4
/* 03F4EC 8003E8EC 00000000 */   nop   
/* 03F4F0 8003E8F0 AE000078 */  sw    $zero, 0x78($s0)
.L8003E8F4:
/* 03F4F4 8003E8F4 92220018 */  lbu   $v0, 0x18($s1)
/* 03F4F8 8003E8F8 00000000 */  nop   
/* 03F4FC 8003E8FC 14400023 */  bnez  $v0, .L8003E98C
/* 03F500 8003E900 00000000 */   nop   
/* 03F504 8003E904 0C006E99 */  jal   func_8001BA64
/* 03F508 8003E908 00000000 */   nop   
/* 03F50C 8003E90C 1840001D */  blez  $v0, .L8003E984
/* 03F510 8003E910 240DFFFF */   li    $t5, -1
/* 03F514 8003E914 82240019 */  lb    $a0, 0x19($s1)
/* 03F518 8003E918 C7A400B4 */  lwc1  $f4, 0xb4($sp)
/* 03F51C 8003E91C 8FA600BC */  lw    $a2, 0xbc($sp)
/* 03F520 8003E920 8FA700B8 */  lw    $a3, 0xb8($sp)
/* 03F524 8003E924 2628000C */  addiu $t0, $s1, 0xc
/* 03F528 8003E928 27A90097 */  addiu $t1, $sp, 0x97
/* 03F52C 8003E92C AFA90018 */  sw    $t1, 0x18($sp)
/* 03F530 8003E930 AFA80014 */  sw    $t0, 0x14($sp)
/* 03F534 8003E934 AFA2009C */  sw    $v0, 0x9c($sp)
/* 03F538 8003E938 02002825 */  move  $a1, $s0
/* 03F53C 8003E93C 0C006179 */  jal   func_800185E4
/* 03F540 8003E940 E7A40010 */   swc1  $f4, 0x10($sp)
/* 03F544 8003E944 8FA3009C */  lw    $v1, 0x9c($sp)
/* 03F548 8003E948 1440000B */  bnez  $v0, .L8003E978
/* 03F54C 8003E94C 00000000 */   nop   
/* 03F550 8003E950 822A0019 */  lb    $t2, 0x19($s1)
/* 03F554 8003E954 00000000 */  nop   
/* 03F558 8003E958 254B0001 */  addiu $t3, $t2, 1
/* 03F55C 8003E95C A22B0019 */  sb    $t3, 0x19($s1)
/* 03F560 8003E960 822C0019 */  lb    $t4, 0x19($s1)
/* 03F564 8003E964 00000000 */  nop   
/* 03F568 8003E968 0183082A */  slt   $at, $t4, $v1
/* 03F56C 8003E96C 14200002 */  bnez  $at, .L8003E978
/* 03F570 8003E970 00000000 */   nop   
/* 03F574 8003E974 A2200019 */  sb    $zero, 0x19($s1)
.L8003E978:
/* 03F578 8003E978 92220018 */  lbu   $v0, 0x18($s1)
/* 03F57C 8003E97C 10000003 */  b     .L8003E98C
/* 03F580 8003E980 00000000 */   nop   
.L8003E984:
/* 03F584 8003E984 92220018 */  lbu   $v0, 0x18($s1)
/* 03F588 8003E988 A22D0019 */  sb    $t5, 0x19($s1)
.L8003E98C:
/* 03F58C 8003E98C 14400007 */  bnez  $v0, .L8003E9AC
/* 03F590 8003E990 02002025 */   move  $a0, $s0
/* 03F594 8003E994 8FA500EC */  lw    $a1, 0xec($sp)
/* 03F598 8003E998 02002025 */  move  $a0, $s0
/* 03F59C 8003E99C 0C00FB76 */  jal   func_8003EDD8
/* 03F5A0 8003E9A0 02203025 */   move  $a2, $s1
/* 03F5A4 8003E9A4 10000005 */  b     .L8003E9BC
/* 03F5A8 8003E9A8 8E03004C */   lw    $v1, 0x4c($s0)
.L8003E9AC:
/* 03F5AC 8003E9AC 8FA500EC */  lw    $a1, 0xec($sp)
/* 03F5B0 8003E9B0 0C00FB05 */  jal   func_8003EC14
/* 03F5B4 8003E9B4 02203025 */   move  $a2, $s1
/* 03F5B8 8003E9B8 8E03004C */  lw    $v1, 0x4c($s0)
.L8003E9BC:
/* 03F5BC 8003E9BC 00000000 */  nop   
/* 03F5C0 8003E9C0 8C620000 */  lw    $v0, ($v1)
/* 03F5C4 8003E9C4 00000000 */  nop   
/* 03F5C8 8003E9C8 1040004E */  beqz  $v0, .L8003EB04
/* 03F5CC 8003E9CC 00000000 */   nop   
/* 03F5D0 8003E9D0 8E2E0004 */  lw    $t6, 4($s1)
/* 03F5D4 8003E9D4 00402825 */  move  $a1, $v0
/* 03F5D8 8003E9D8 144E000C */  bne   $v0, $t6, .L8003EA0C
/* 03F5DC 8003E9DC 240401C2 */   li    $a0, 450
/* 03F5E0 8003E9E0 0C00322D */  jal   normalise_time
/* 03F5E4 8003E9E4 AFA200E4 */   sw    $v0, 0xe4($sp)
/* 03F5E8 8003E9E8 8E030078 */  lw    $v1, 0x78($s0)
/* 03F5EC 8003E9EC 8FA500E4 */  lw    $a1, 0xe4($sp)
/* 03F5F0 8003E9F0 0062082A */  slt   $at, $v1, $v0
/* 03F5F4 8003E9F4 10200043 */  beqz  $at, .L8003EB04
/* 03F5F8 8003E9F8 00000000 */   nop   
/* 03F5FC 8003E9FC 10600041 */  beqz  $v1, .L8003EB04
/* 03F600 8003EA00 00000000 */   nop   
/* 03F604 8003EA04 8E03004C */  lw    $v1, 0x4c($s0)
/* 03F608 8003EA08 00000000 */  nop   
.L8003EA0C:
/* 03F60C 8003EA0C 922F0018 */  lbu   $t7, 0x18($s1)
/* 03F610 8003EA10 2402003C */  li    $v0, 60
/* 03F614 8003EA14 15E00009 */  bnez  $t7, .L8003EA3C
/* 03F618 8003EA18 00000000 */   nop   
/* 03F61C 8003EA1C 8E380000 */  lw    $t8, ($s1)
/* 03F620 8003EA20 00000000 */  nop   
/* 03F624 8003EA24 14B80003 */  bne   $a1, $t8, .L8003EA34
/* 03F628 8003EA28 00000000 */   nop   
/* 03F62C 8003EA2C 10000003 */  b     .L8003EA3C
/* 03F630 8003EA30 2402004B */   li    $v0, 75
.L8003EA34:
/* 03F634 8003EA34 10000001 */  b     .L8003EA3C
/* 03F638 8003EA38 24020014 */   li    $v0, 20
.L8003EA3C:
/* 03F63C 8003EA3C 90790013 */  lbu   $t9, 0x13($v1)
/* 03F640 8003EA40 00000000 */  nop   
/* 03F644 8003EA44 0322082A */  slt   $at, $t9, $v0
/* 03F648 8003EA48 1020002E */  beqz  $at, .L8003EB04
/* 03F64C 8003EA4C 00000000 */   nop   
/* 03F650 8003EA50 8CA80040 */  lw    $t0, 0x40($a1)
/* 03F654 8003EA54 24040001 */  li    $a0, 1
/* 03F658 8003EA58 81090054 */  lb    $t1, 0x54($t0)
/* 03F65C 8003EA5C 00000000 */  nop   
/* 03F660 8003EA60 14890018 */  bne   $a0, $t1, .L8003EAC4
/* 03F664 8003EA64 00000000 */   nop   
/* 03F668 8003EA68 8CA30064 */  lw    $v1, 0x64($a1)
/* 03F66C 8003EA6C 2406FFFF */  li    $a2, -1
/* 03F670 8003EA70 A0640187 */  sb    $a0, 0x187($v1)
/* 03F674 8003EA74 8E2A0004 */  lw    $t2, 4($s1)
/* 03F678 8003EA78 846B0000 */  lh    $t3, ($v1)
/* 03F67C 8003EA7C 8D420064 */  lw    $v0, 0x64($t2)
/* 03F680 8003EA80 14CB0005 */  bne   $a2, $t3, .L8003EA98
/* 03F684 8003EA84 00000000 */   nop   
/* 03F688 8003EA88 844C0000 */  lh    $t4, ($v0)
/* 03F68C 8003EA8C 00000000 */  nop   
/* 03F690 8003EA90 10CC0005 */  beq   $a2, $t4, .L8003EAA8
/* 03F694 8003EA94 00000000 */   nop   
.L8003EA98:
/* 03F698 8003EA98 904D01EF */  lbu   $t5, 0x1ef($v0)
/* 03F69C 8003EA9C 00000000 */  nop   
/* 03F6A0 8003EAA0 35AE0002 */  ori   $t6, $t5, 2
/* 03F6A4 8003EAA4 A04E01EF */  sb    $t6, 0x1ef($v0)
.L8003EAA8:
/* 03F6A8 8003EAA8 806F01D8 */  lb    $t7, 0x1d8($v1)
/* 03F6AC 8003EAAC 00000000 */  nop   
/* 03F6B0 8003EAB0 15E00004 */  bnez  $t7, .L8003EAC4
/* 03F6B4 8003EAB4 00000000 */   nop   
/* 03F6B8 8003EAB8 84640000 */  lh    $a0, ($v1)
/* 03F6BC 8003EABC 0C01C8D2 */  jal   func_80072348
/* 03F6C0 8003EAC0 24050009 */   li    $a1, 9
.L8003EAC4:
/* 03F6C4 8003EAC4 C60C000C */  lwc1  $f12, 0xc($s0)
/* 03F6C8 8003EAC8 C60E0010 */  lwc1  $f14, 0x10($s0)
/* 03F6CC 8003EACC 8E060014 */  lw    $a2, 0x14($s0)
/* 03F6D0 8003EAD0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 03F6D4 8003EAD4 44815000 */  mtc1  $at, $f10
/* 03F6D8 8003EAD8 24180011 */  li    $t8, 17
/* 03F6DC 8003EADC 24190001 */  li    $t9, 1
/* 03F6E0 8003EAE0 AFB90018 */  sw    $t9, 0x18($sp)
/* 03F6E4 8003EAE4 AFB80010 */  sw    $t8, 0x10($sp)
/* 03F6E8 8003EAE8 2407002C */  li    $a3, 44
/* 03F6EC 8003EAEC 0C00FF11 */  jal   func_8003FC44
/* 03F6F0 8003EAF0 E7AA0014 */   swc1  $f10, 0x14($sp)
/* 03F6F4 8003EAF4 0C003FEE */  jal   gParticlePtrList_addObject
/* 03F6F8 8003EAF8 02002025 */   move  $a0, $s0
/* 03F6FC 8003EAFC 10000041 */  b     .L8003EC04
/* 03F700 8003EB00 8FBF002C */   lw    $ra, 0x2c($sp)
.L8003EB04:
/* 03F704 8003EB04 8E08007C */  lw    $t0, 0x7c($s0)
/* 03F708 8003EB08 8FA900EC */  lw    $t1, 0xec($sp)
/* 03F70C 8003EB0C 8E030060 */  lw    $v1, 0x60($s0)
/* 03F710 8003EB10 01095021 */  addu  $t2, $t0, $t1
/* 03F714 8003EB14 10600027 */  beqz  $v1, .L8003EBB4
/* 03F718 8003EB18 AE0A007C */   sw    $t2, 0x7c($s0)
/* 03F71C 8003EB1C 8C710004 */  lw    $s1, 4($v1)
/* 03F720 8003EB20 29410008 */  slti  $at, $t2, 8
/* 03F724 8003EB24 10200009 */  beqz  $at, .L8003EB4C
/* 03F728 8003EB28 01401025 */   move  $v0, $t2
/* 03F72C 8003EB2C 44824000 */  mtc1  $v0, $f8
/* 03F730 8003EB30 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 03F734 8003EB34 46804420 */  cvt.s.w $f16, $f8
/* 03F738 8003EB38 44813000 */  mtc1  $at, $f6
/* 03F73C 8003EB3C 00000000 */  nop   
/* 03F740 8003EB40 46068482 */  mul.s $f18, $f16, $f6
/* 03F744 8003EB44 1000001B */  b     .L8003EBB4
/* 03F748 8003EB48 E6320008 */   swc1  $f18, 8($s1)
.L8003EB4C:
/* 03F74C 8003EB4C 28410010 */  slti  $at, $v0, 0x10
/* 03F750 8003EB50 1020000D */  beqz  $at, .L8003EB88
/* 03F754 8003EB54 00402025 */   move  $a0, $v0
/* 03F758 8003EB58 244BFFF8 */  addiu $t3, $v0, -8
/* 03F75C 8003EB5C 448B2000 */  mtc1  $t3, $f4
/* 03F760 8003EB60 3C013E80 */  li    $at, 0x3E800000 # 0.250000
/* 03F764 8003EB64 468022A0 */  cvt.s.w $f10, $f4
/* 03F768 8003EB68 44814000 */  mtc1  $at, $f8
/* 03F76C 8003EB6C 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 03F770 8003EB70 46085402 */  mul.s $f16, $f10, $f8
/* 03F774 8003EB74 44813000 */  mtc1  $at, $f6
/* 03F778 8003EB78 00000000 */  nop   
/* 03F77C 8003EB7C 46103481 */  sub.s $f18, $f6, $f16
/* 03F780 8003EB80 1000000C */  b     .L8003EBB4
/* 03F784 8003EB84 E6320008 */   swc1  $f18, 8($s1)
.L8003EB88:
/* 03F788 8003EB88 00046700 */  sll   $t4, $a0, 0x1c
/* 03F78C 8003EB8C 0C01C1F1 */  jal   cosine_s
/* 03F790 8003EB90 000C2403 */   sra   $a0, $t4, 0x10
/* 03F794 8003EB94 3C013E80 */  li    $at, 0x3E800000 # 0.250000
/* 03F798 8003EB98 44812000 */  mtc1  $at, $f4
/* 03F79C 8003EB9C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 03F7A0 8003EBA0 46040282 */  mul.s $f10, $f0, $f4
/* 03F7A4 8003EBA4 44814000 */  mtc1  $at, $f8
/* 03F7A8 8003EBA8 00000000 */  nop   
/* 03F7AC 8003EBAC 46085180 */  add.s $f6, $f10, $f8
/* 03F7B0 8003EBB0 E6260008 */  swc1  $f6, 8($s1)
.L8003EBB4:
/* 03F7B4 8003EBB4 8E0E0078 */  lw    $t6, 0x78($s0)
/* 03F7B8 8003EBB8 8FAF00EC */  lw    $t7, 0xec($sp)
/* 03F7BC 8003EBBC 2407002C */  li    $a3, 44
/* 03F7C0 8003EBC0 01CFC023 */  subu  $t8, $t6, $t7
/* 03F7C4 8003EBC4 0701000E */  bgez  $t8, .L8003EC00
/* 03F7C8 8003EBC8 AE180078 */   sw    $t8, 0x78($s0)
/* 03F7CC 8003EBCC C60C000C */  lwc1  $f12, 0xc($s0)
/* 03F7D0 8003EBD0 C60E0010 */  lwc1  $f14, 0x10($s0)
/* 03F7D4 8003EBD4 8E060014 */  lw    $a2, 0x14($s0)
/* 03F7D8 8003EBD8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 03F7DC 8003EBDC 44818000 */  mtc1  $at, $f16
/* 03F7E0 8003EBE0 24080011 */  li    $t0, 17
/* 03F7E4 8003EBE4 24090001 */  li    $t1, 1
/* 03F7E8 8003EBE8 AFA90018 */  sw    $t1, 0x18($sp)
/* 03F7EC 8003EBEC AFA80010 */  sw    $t0, 0x10($sp)
/* 03F7F0 8003EBF0 0C00FF11 */  jal   func_8003FC44
/* 03F7F4 8003EBF4 E7B00014 */   swc1  $f16, 0x14($sp)
/* 03F7F8 8003EBF8 0C003FEE */  jal   gParticlePtrList_addObject
/* 03F7FC 8003EBFC 02002025 */   move  $a0, $s0
.L8003EC00:
/* 03F800 8003EC00 8FBF002C */  lw    $ra, 0x2c($sp)
.L8003EC04:
/* 03F804 8003EC04 8FB00024 */  lw    $s0, 0x24($sp)
/* 03F808 8003EC08 8FB10028 */  lw    $s1, 0x28($sp)
/* 03F80C 8003EC0C 03E00008 */  jr    $ra
/* 03F810 8003EC10 27BD00E8 */   addiu $sp, $sp, 0xe8

