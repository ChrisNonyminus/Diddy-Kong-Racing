glabel func_8007C57C
/* 07D17C 8007C57C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 07D180 8007C580 240E0004 */  li    $t6, 4
/* 07D184 8007C584 308F8000 */  andi  $t7, $a0, 0x8000
/* 07D188 8007C588 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07D18C 8007C58C AFAE0018 */  sw    $t6, 0x18($sp)
/* 07D190 8007C590 11E00006 */  beqz  $t7, .L8007C5AC
/* 07D194 8007C594 00001025 */   move  $v0, $zero
/* 07D198 8007C598 24180002 */  li    $t8, 2
/* 07D19C 8007C59C 30997FFF */  andi  $t9, $a0, 0x7fff
/* 07D1A0 8007C5A0 AFB80018 */  sw    $t8, 0x18($sp)
/* 07D1A4 8007C5A4 24020001 */  li    $v0, 1
/* 07D1A8 8007C5A8 03202025 */  move  $a0, $t9
.L8007C5AC:
/* 07D1AC 8007C5AC 00021880 */  sll   $v1, $v0, 2
/* 07D1B0 8007C5B0 3C088012 */  lui   $t0, %hi(D_80126338) # $t0, 0x8012
/* 07D1B4 8007C5B4 01034021 */  addu  $t0, $t0, $v1
/* 07D1B8 8007C5B8 8D086338 */  lw    $t0, %lo(D_80126338)($t0)
/* 07D1BC 8007C5BC 00000000 */  nop   
/* 07D1C0 8007C5C0 0088082A */  slt   $at, $a0, $t0
/* 07D1C4 8007C5C4 10200003 */  beqz  $at, .L8007C5D4
/* 07D1C8 8007C5C8 00000000 */   nop   
/* 07D1CC 8007C5CC 04810003 */  bgez  $a0, .L8007C5DC
/* 07D1D0 8007C5D0 3C098012 */   lui   $t1, %hi(D_80126320) # $t1, 0x8012
.L8007C5D4:
/* 07D1D4 8007C5D4 1000001E */  b     .L8007C650
/* 07D1D8 8007C5D8 00001025 */   move  $v0, $zero
.L8007C5DC:
/* 07D1DC 8007C5DC 01234821 */  addu  $t1, $t1, $v1
/* 07D1E0 8007C5E0 8D296320 */  lw    $t1, %lo(D_80126320)($t1)
/* 07D1E4 8007C5E4 00045080 */  sll   $t2, $a0, 2
/* 07D1E8 8007C5E8 3C058012 */  lui   $a1, %hi(D_8012636C) # $a1, 0x8012
/* 07D1EC 8007C5EC 8CA5636C */  lw    $a1, %lo(D_8012636C)($a1)
/* 07D1F0 8007C5F0 012A1021 */  addu  $v0, $t1, $t2
/* 07D1F4 8007C5F4 8C460000 */  lw    $a2, ($v0)
/* 07D1F8 8007C5F8 8C4B0004 */  lw    $t3, 4($v0)
/* 07D1FC 8007C5FC 90AC001D */  lbu   $t4, 0x1d($a1)
/* 07D200 8007C600 8FA40018 */  lw    $a0, 0x18($sp)
/* 07D204 8007C604 1180000A */  beqz  $t4, .L8007C630
/* 07D208 8007C608 01663823 */   subu  $a3, $t3, $a2
/* 07D20C 8007C60C 0C01DB9A */  jal   func_80076E68
/* 07D210 8007C610 24070028 */   li    $a3, 40
/* 07D214 8007C614 3C038012 */  lui   $v1, %hi(D_8012636C) # $v1, 0x8012
/* 07D218 8007C618 8C63636C */  lw    $v1, %lo(D_8012636C)($v1)
/* 07D21C 8007C61C 0C03186B */  jal   byteswap32
/* 07D220 8007C620 24640020 */   addiu $a0, $v1, 0x20
/* 07D224 8007C624 3C058012 */  lui   $a1, %hi(D_8012636C) # $a1, 0x8012
/* 07D228 8007C628 8CA5636C */  lw    $a1, %lo(D_8012636C)($a1)
/* 07D22C 8007C62C 00403825 */  move  $a3, $v0
.L8007C630:
/* 07D230 8007C630 94A30012 */  lhu   $v1, 0x12($a1)
/* 07D234 8007C634 00000000 */  nop   
/* 07D238 8007C638 00036A03 */  sra   $t5, $v1, 8
/* 07D23C 8007C63C 31AEFFFF */  andi  $t6, $t5, 0xffff
/* 07D240 8007C640 000E7880 */  sll   $t7, $t6, 2
/* 07D244 8007C644 01EE7823 */  subu  $t7, $t7, $t6
/* 07D248 8007C648 000F7940 */  sll   $t7, $t7, 5
/* 07D24C 8007C64C 01E71021 */  addu  $v0, $t7, $a3
.L8007C650:
/* 07D250 8007C650 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07D254 8007C654 27BD0028 */  addiu $sp, $sp, 0x28
/* 07D258 8007C658 03E00008 */  jr    $ra
/* 07D25C 8007C65C 00000000 */   nop   

/* 07D260 8007C660 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 07D264 8007C664 308F8000 */  andi  $t7, $a0, 0x8000
/* 07D268 8007C668 AFBF003C */  sw    $ra, 0x3c($sp)
/* 07D26C 8007C66C AFBE0038 */  sw    $fp, 0x38($sp)
/* 07D270 8007C670 AFB70034 */  sw    $s7, 0x34($sp)
/* 07D274 8007C674 AFB60030 */  sw    $s6, 0x30($sp)
/* 07D278 8007C678 AFB5002C */  sw    $s5, 0x2c($sp)
/* 07D27C 8007C67C AFB40028 */  sw    $s4, 0x28($sp)
/* 07D280 8007C680 AFB30024 */  sw    $s3, 0x24($sp)
/* 07D284 8007C684 AFB20020 */  sw    $s2, 0x20($sp)
/* 07D288 8007C688 AFB1001C */  sw    $s1, 0x1c($sp)
/* 07D28C 8007C68C AFB00018 */  sw    $s0, 0x18($sp)
/* 07D290 8007C690 11E00003 */  beqz  $t7, .L8007C6A0
/* 07D294 8007C694 AFA40040 */   sw    $a0, 0x40($sp)
/* 07D298 8007C698 10000065 */  b     .L8007C830
/* 07D29C 8007C69C 00001025 */   move  $v0, $zero
.L8007C6A0:
/* 07D2A0 8007C6A0 3C138012 */  lui   $s3, %hi(D_80126370) # $s3, 0x8012
/* 07D2A4 8007C6A4 26736370 */  addiu $s3, %lo(D_80126370) # addiu $s3, $s3, 0x6370
/* 07D2A8 8007C6A8 8E780000 */  lw    $t8, ($s3)
/* 07D2AC 8007C6AC 3C108012 */  lui   $s0, %hi(D_80126338) # $s0, 0x8012
/* 07D2B0 8007C6B0 17000059 */  bnez  $t8, .L8007C818
/* 07D2B4 8007C6B4 26106338 */   addiu $s0, %lo(D_80126338) # addiu $s0, $s0, 0x6338
/* 07D2B8 8007C6B8 8E040000 */  lw    $a0, ($s0)
/* 07D2BC 8007C6BC 3C05FF00 */  lui   $a1, (0xFF00FFFF >> 16) # lui $a1, 0xff00
/* 07D2C0 8007C6C0 0C01C327 */  jal   func_80070C9C
/* 07D2C4 8007C6C4 34A5FFFF */   ori   $a1, (0xFF00FFFF & 0xFFFF) # ori $a1, $a1, 0xffff
/* 07D2C8 8007C6C8 8E190000 */  lw    $t9, ($s0)
/* 07D2CC 8007C6CC AE620000 */  sw    $v0, ($s3)
/* 07D2D0 8007C6D0 1B20000B */  blez  $t9, .L8007C700
/* 07D2D4 8007C6D4 0000A025 */   move  $s4, $zero
.L8007C6D8:
/* 07D2D8 8007C6D8 8E680000 */  lw    $t0, ($s3)
/* 07D2DC 8007C6DC 00000000 */  nop   
/* 07D2E0 8007C6E0 01144821 */  addu  $t1, $t0, $s4
/* 07D2E4 8007C6E4 A1200000 */  sb    $zero, ($t1)
/* 07D2E8 8007C6E8 8E0A0000 */  lw    $t2, ($s0)
/* 07D2EC 8007C6EC 26940001 */  addiu $s4, $s4, 1
/* 07D2F0 8007C6F0 028A082A */  slt   $at, $s4, $t2
/* 07D2F4 8007C6F4 1420FFF8 */  bnez  $at, .L8007C6D8
/* 07D2F8 8007C6F8 00000000 */   nop   
/* 07D2FC 8007C6FC 0000A025 */  move  $s4, $zero
.L8007C700:
/* 07D300 8007C700 3C1E8012 */  lui   $fp, %hi(D_80126354) # $fp, 0x8012
/* 07D304 8007C704 27DE6354 */  addiu $fp, %lo(D_80126354) # addiu $fp, $fp, 0x6354
/* 07D308 8007C708 8FCB0000 */  lw    $t3, ($fp)
/* 07D30C 8007C70C 0000A825 */  move  $s5, $zero
/* 07D310 8007C710 19600041 */  blez  $t3, .L8007C818
/* 07D314 8007C714 3C178012 */   lui   $s7, %hi(D_80126348) # $s7, 0x8012
/* 07D318 8007C718 3C168012 */  lui   $s6, %hi(D_80126350) # $s6, 0x8012
/* 07D31C 8007C71C 26D66350 */  addiu $s6, %lo(D_80126350) # addiu $s6, $s6, 0x6350
/* 07D320 8007C720 26F76348 */  addiu $s7, %lo(D_80126348) # addiu $s7, $s7, 0x6348
/* 07D324 8007C724 24120001 */  li    $s2, 1
.L8007C728:
/* 07D328 8007C728 8EEC0000 */  lw    $t4, ($s7)
/* 07D32C 8007C72C 8ED10000 */  lw    $s1, ($s6)
/* 07D330 8007C730 01951021 */  addu  $v0, $t4, $s5
/* 07D334 8007C734 8C460000 */  lw    $a2, ($v0)
/* 07D338 8007C738 8C4D0004 */  lw    $t5, 4($v0)
/* 07D33C 8007C73C 2404000C */  li    $a0, 12
/* 07D340 8007C740 00008025 */  move  $s0, $zero
/* 07D344 8007C744 02202825 */  move  $a1, $s1
/* 07D348 8007C748 0C01DB9A */  jal   func_80076E68
/* 07D34C 8007C74C 01A63823 */   subu  $a3, $t5, $a2
/* 07D350 8007C750 862E0002 */  lh    $t6, 2($s1)
/* 07D354 8007C754 00000000 */  nop   
/* 07D358 8007C758 022E7821 */  addu  $t7, $s1, $t6
/* 07D35C 8007C75C 91E3000C */  lbu   $v1, 0xc($t7)
/* 07D360 8007C760 00000000 */  nop   
/* 07D364 8007C764 18600027 */  blez  $v1, .L8007C804
/* 07D368 8007C768 30640003 */   andi  $a0, $v1, 3
/* 07D36C 8007C76C 1080000B */  beqz  $a0, .L8007C79C
/* 07D370 8007C770 00801025 */   move  $v0, $a0
.L8007C774:
/* 07D374 8007C774 8E780000 */  lw    $t8, ($s3)
/* 07D378 8007C778 86390000 */  lh    $t9, ($s1)
/* 07D37C 8007C77C 00000000 */  nop   
/* 07D380 8007C780 03194021 */  addu  $t0, $t8, $t9
/* 07D384 8007C784 01104821 */  addu  $t1, $t0, $s0
/* 07D388 8007C788 26100001 */  addiu $s0, $s0, 1
/* 07D38C 8007C78C 1450FFF9 */  bne   $v0, $s0, .L8007C774
/* 07D390 8007C790 A1320000 */   sb    $s2, ($t1)
/* 07D394 8007C794 1203001B */  beq   $s0, $v1, .L8007C804
/* 07D398 8007C798 00000000 */   nop   
.L8007C79C:
/* 07D39C 8007C79C 8E6A0000 */  lw    $t2, ($s3)
/* 07D3A0 8007C7A0 862B0000 */  lh    $t3, ($s1)
/* 07D3A4 8007C7A4 00000000 */  nop   
/* 07D3A8 8007C7A8 014B6021 */  addu  $t4, $t2, $t3
/* 07D3AC 8007C7AC 01906821 */  addu  $t5, $t4, $s0
/* 07D3B0 8007C7B0 A1B20000 */  sb    $s2, ($t5)
/* 07D3B4 8007C7B4 862F0000 */  lh    $t7, ($s1)
/* 07D3B8 8007C7B8 8E6E0000 */  lw    $t6, ($s3)
/* 07D3BC 8007C7BC 00000000 */  nop   
/* 07D3C0 8007C7C0 01CFC021 */  addu  $t8, $t6, $t7
/* 07D3C4 8007C7C4 0310C821 */  addu  $t9, $t8, $s0
/* 07D3C8 8007C7C8 A3320001 */  sb    $s2, 1($t9)
/* 07D3CC 8007C7CC 86290000 */  lh    $t1, ($s1)
/* 07D3D0 8007C7D0 8E680000 */  lw    $t0, ($s3)
/* 07D3D4 8007C7D4 00000000 */  nop   
/* 07D3D8 8007C7D8 01095021 */  addu  $t2, $t0, $t1
/* 07D3DC 8007C7DC 01505821 */  addu  $t3, $t2, $s0
/* 07D3E0 8007C7E0 A1720002 */  sb    $s2, 2($t3)
/* 07D3E4 8007C7E4 862D0000 */  lh    $t5, ($s1)
/* 07D3E8 8007C7E8 8E6C0000 */  lw    $t4, ($s3)
/* 07D3EC 8007C7EC 00000000 */  nop   
/* 07D3F0 8007C7F0 018D7021 */  addu  $t6, $t4, $t5
/* 07D3F4 8007C7F4 01D07821 */  addu  $t7, $t6, $s0
/* 07D3F8 8007C7F8 26100004 */  addiu $s0, $s0, 4
/* 07D3FC 8007C7FC 1603FFE7 */  bne   $s0, $v1, .L8007C79C
/* 07D400 8007C800 A1F20003 */   sb    $s2, 3($t7)
.L8007C804:
/* 07D404 8007C804 8FD80000 */  lw    $t8, ($fp)
/* 07D408 8007C808 26940001 */  addiu $s4, $s4, 1
/* 07D40C 8007C80C 0298082A */  slt   $at, $s4, $t8
/* 07D410 8007C810 1420FFC5 */  bnez  $at, .L8007C728
/* 07D414 8007C814 26B50004 */   addiu $s5, $s5, 4
.L8007C818:
/* 07D418 8007C818 8E790000 */  lw    $t9, ($s3)
/* 07D41C 8007C81C 8FA80040 */  lw    $t0, 0x40($sp)
/* 07D420 8007C820 00000000 */  nop   
/* 07D424 8007C824 03284821 */  addu  $t1, $t9, $t0
/* 07D428 8007C828 91220000 */  lbu   $v0, ($t1)
/* 07D42C 8007C82C 00000000 */  nop   
.L8007C830:
/* 07D430 8007C830 8FBF003C */  lw    $ra, 0x3c($sp)
/* 07D434 8007C834 8FB00018 */  lw    $s0, 0x18($sp)
/* 07D438 8007C838 8FB1001C */  lw    $s1, 0x1c($sp)
/* 07D43C 8007C83C 8FB20020 */  lw    $s2, 0x20($sp)
/* 07D440 8007C840 8FB30024 */  lw    $s3, 0x24($sp)
/* 07D444 8007C844 8FB40028 */  lw    $s4, 0x28($sp)
/* 07D448 8007C848 8FB5002C */  lw    $s5, 0x2c($sp)
/* 07D44C 8007C84C 8FB60030 */  lw    $s6, 0x30($sp)
/* 07D450 8007C850 8FB70034 */  lw    $s7, 0x34($sp)
/* 07D454 8007C854 8FBE0038 */  lw    $fp, 0x38($sp)
/* 07D458 8007C858 03E00008 */  jr    $ra
/* 07D45C 8007C85C 27BD0040 */   addiu $sp, $sp, 0x40

/* 07D460 8007C860 04800006 */  bltz  $a0, .L8007C87C
/* 07D464 8007C864 3C0E8012 */   lui   $t6, %hi(D_80126330) # $t6, 0x8012
/* 07D468 8007C868 8DCE6330 */  lw    $t6, %lo(D_80126330)($t6)
/* 07D46C 8007C86C 3C0F8012 */  lui   $t7, %hi(D_80126328) # $t7, 0x8012
/* 07D470 8007C870 008E082A */  slt   $at, $a0, $t6
/* 07D474 8007C874 14200003 */  bnez  $at, .L8007C884
/* 07D478 8007C878 00000000 */   nop   
.L8007C87C:
/* 07D47C 8007C87C 03E00008 */  jr    $ra
/* 07D480 8007C880 2402FFFF */   li    $v0, -1

.L8007C884:
/* 07D484 8007C884 8DEF6328 */  lw    $t7, %lo(D_80126328)($t7)
/* 07D488 8007C888 0004C8C0 */  sll   $t9, $a0, 3
/* 07D48C 8007C88C 01F94021 */  addu  $t0, $t7, $t9
/* 07D490 8007C890 8D020000 */  lw    $v0, ($t0)
/* 07D494 8007C894 00000000 */  nop   
/* 07D498 8007C898 03E00008 */  jr    $ra
/* 07D49C 8007C89C 00000000 */   nop   

/* 07D4A0 8007C8A0 04800006 */  bltz  $a0, .L8007C8BC
/* 07D4A4 8007C8A4 3C0E8012 */   lui   $t6, %hi(D_80126358) # $t6, 0x8012
/* 07D4A8 8007C8A8 8DCE6358 */  lw    $t6, %lo(D_80126358)($t6)
/* 07D4AC 8007C8AC 3C0F8012 */  lui   $t7, %hi(D_8012634C) # $t7, 0x8012
/* 07D4B0 8007C8B0 008E082A */  slt   $at, $a0, $t6
/* 07D4B4 8007C8B4 14200003 */  bnez  $at, .L8007C8C4
/* 07D4B8 8007C8B8 00000000 */   nop   
.L8007C8BC:
/* 07D4BC 8007C8BC 03E00008 */  jr    $ra
/* 07D4C0 8007C8C0 2402FFFF */   li    $v0, -1

.L8007C8C4:
/* 07D4C4 8007C8C4 8DEF634C */  lw    $t7, %lo(D_8012634C)($t7)
/* 07D4C8 8007C8C8 0004C8C0 */  sll   $t9, $a0, 3
/* 07D4CC 8007C8CC 01F94021 */  addu  $t0, $t7, $t9
/* 07D4D0 8007C8D0 8D020000 */  lw    $v0, ($t0)
/* 07D4D4 8007C8D4 00000000 */  nop   
/* 07D4D8 8007C8D8 03E00008 */  jr    $ra
/* 07D4DC 8007C8DC 00000000 */   nop   

