glabel func_8007A550
/* 07B150 8007A550 3C028000 */  lui   $v0, %hi(osTvType) # $v0, 0x8000
/* 07B154 8007A554 8C420300 */  lw    $v0, %lo(osTvType)($v0)
/* 07B158 8007A558 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 07B15C 8007A55C AFBF0014 */  sw    $ra, 0x14($sp)
/* 07B160 8007A560 14400004 */  bnez  $v0, .L8007A574
/* 07B164 8007A564 00001825 */   move  $v1, $zero
/* 07B168 8007A568 2403000E */  li    $v1, 14
/* 07B16C 8007A56C 10000005 */  b     .L8007A584
/* 07B170 8007A570 24050002 */   li    $a1, 2
.L8007A574:
/* 07B174 8007A574 24050002 */  li    $a1, 2
/* 07B178 8007A578 14A20002 */  bne   $a1, $v0, .L8007A584
/* 07B17C 8007A57C 00000000 */   nop   
/* 07B180 8007A580 2403001C */  li    $v1, 28
.L8007A584:
/* 07B184 8007A584 3C0E8012 */  lui   $t6, %hi(D_801262CC) # $t6, 0x8012
/* 07B188 8007A588 8DCE62CC */  lw    $t6, %lo(D_801262CC)($t6)
/* 07B18C 8007A58C 3C01800E */  lui   $at, %hi(D_800E7B0C) # $at, 0x800e
/* 07B190 8007A590 31CF0007 */  andi  $t7, $t6, 7
/* 07B194 8007A594 000F7880 */  sll   $t7, $t7, 2
/* 07B198 8007A598 002F0821 */  addu  $at, $at, $t7
/* 07B19C 8007A59C 8C2F7B0C */  lw    $t7, %lo(D_800E7B0C)($at)
/* 07B1A0 8007A5A0 00000000 */  nop   
/* 07B1A4 8007A5A4 01E00008 */  jr    $t7
/* 07B1A8 8007A5A8 00000000 */   nop   
/* 07B1AC 8007A5AC 0003C080 */  sll   $t8, $v1, 2
/* 07B1B0 8007A5B0 0303C021 */  addu  $t8, $t8, $v1
/* 07B1B4 8007A5B4 3C19800E */  lui   $t9, %hi(D_800E3900) # $t9, 0x800e
/* 07B1B8 8007A5B8 27393900 */  addiu $t9, %lo(D_800E3900) # addiu $t9, $t9, 0x3900
/* 07B1BC 8007A5BC 0018C100 */  sll   $t8, $t8, 4
/* 07B1C0 8007A5C0 0C034728 */  jal   osViSetMode
/* 07B1C4 8007A5C4 03192021 */   addu  $a0, $t8, $t9
/* 07B1C8 8007A5C8 1000007D */  b     .L8007A7C0
/* 07B1CC 8007A5CC 00000000 */   nop   
/* 07B1D0 8007A5D0 3C04800E */  lui   $a0, %hi(D_800E4620) # $a0, 0x800e
/* 07B1D4 8007A5D4 14400004 */  bnez  $v0, .L8007A5E8
/* 07B1D8 8007A5D8 24844620 */   addiu $a0, %lo(D_800E4620) # addiu $a0, $a0, 0x4620
/* 07B1DC 8007A5DC 3C04800E */  lui   $a0, %hi(D_800E4670) # $a0, 0x800e
/* 07B1E0 8007A5E0 10000005 */  b     .L8007A5F8
/* 07B1E4 8007A5E4 24844670 */   addiu $a0, %lo(D_800E4670) # addiu $a0, $a0, 0x4670
.L8007A5E8:
/* 07B1E8 8007A5E8 14A20003 */  bne   $a1, $v0, .L8007A5F8
/* 07B1EC 8007A5EC 00000000 */   nop   
/* 07B1F0 8007A5F0 3C04800E */  lui   $a0, %hi(D_800E46C0) # $a0, 0x800e
/* 07B1F4 8007A5F4 248446C0 */  addiu $a0, %lo(D_800E46C0) # addiu $a0, $a0, 0x46c0
.L8007A5F8:
/* 07B1F8 8007A5F8 3C058012 */  lui   $a1, %hi(D_80126260) # $a1, 0x8012
/* 07B1FC 8007A5FC 24A56260 */  addiu $a1, %lo(D_80126260) # addiu $a1, $a1, 0x6260
/* 07B200 8007A600 0C01EAFF */  jal   func_8007ABFC
/* 07B204 8007A604 24060050 */   li    $a2, 80
/* 07B208 8007A608 3C088000 */  lui   $t0, %hi(osTvType) # $t0, 0x8000
/* 07B20C 8007A60C 8D080300 */  lw    $t0, %lo(osTvType)($t0)
/* 07B210 8007A610 3C058012 */  lui   $a1, %hi(D_80126260) # $a1, 0x8012
/* 07B214 8007A614 1500000C */  bnez  $t0, .L8007A648
/* 07B218 8007A618 24A56260 */   addiu $a1, %lo(D_80126260) # addiu $a1, $a1, 0x6260
/* 07B21C 8007A61C 8CA90030 */  lw    $t1, 0x30($a1)
/* 07B220 8007A620 8CAB0044 */  lw    $t3, 0x44($a1)
/* 07B224 8007A624 3C020018 */  lui   $v0, 0x18
/* 07B228 8007A628 01225023 */  subu  $t2, $t1, $v0
/* 07B22C 8007A62C 01626023 */  subu  $t4, $t3, $v0
/* 07B230 8007A630 ACAA0030 */  sw    $t2, 0x30($a1)
/* 07B234 8007A634 ACAC0044 */  sw    $t4, 0x44($a1)
/* 07B238 8007A638 254E0018 */  addiu $t6, $t2, 0x18
/* 07B23C 8007A63C 25980018 */  addiu $t8, $t4, 0x18
/* 07B240 8007A640 ACAE0030 */  sw    $t6, 0x30($a1)
/* 07B244 8007A644 ACB80044 */  sw    $t8, 0x44($a1)
.L8007A648:
/* 07B248 8007A648 0C034728 */  jal   osViSetMode
/* 07B24C 8007A64C 00A02025 */   move  $a0, $a1
/* 07B250 8007A650 1000005B */  b     .L8007A7C0
/* 07B254 8007A654 00000000 */   nop   
/* 07B258 8007A658 3C04800E */  lui   $a0, %hi(D_800E4620) # $a0, 0x800e
/* 07B25C 8007A65C 14400004 */  bnez  $v0, .L8007A670
/* 07B260 8007A660 24844620 */   addiu $a0, %lo(D_800E4620) # addiu $a0, $a0, 0x4620
/* 07B264 8007A664 3C04800E */  lui   $a0, %hi(D_800E4670) # $a0, 0x800e
/* 07B268 8007A668 10000005 */  b     .L8007A680
/* 07B26C 8007A66C 24844670 */   addiu $a0, %lo(D_800E4670) # addiu $a0, $a0, 0x4670
.L8007A670:
/* 07B270 8007A670 14A20003 */  bne   $a1, $v0, .L8007A680
/* 07B274 8007A674 00000000 */   nop   
/* 07B278 8007A678 3C04800E */  lui   $a0, %hi(D_800E46C0) # $a0, 0x800e
/* 07B27C 8007A67C 248446C0 */  addiu $a0, %lo(D_800E46C0) # addiu $a0, $a0, 0x46c0
.L8007A680:
/* 07B280 8007A680 3C058012 */  lui   $a1, %hi(D_80126260) # $a1, 0x8012
/* 07B284 8007A684 24A56260 */  addiu $a1, %lo(D_80126260) # addiu $a1, $a1, 0x6260
/* 07B288 8007A688 0C01EAFF */  jal   func_8007ABFC
/* 07B28C 8007A68C 24060050 */   li    $a2, 80
/* 07B290 8007A690 3C058012 */  lui   $a1, 0x8012
/* 07B294 8007A694 24A46260 */  addiu $a0, $a1, 0x6260
/* 07B298 8007A698 24020500 */  li    $v0, 1280
/* 07B29C 8007A69C 24190280 */  li    $t9, 640
/* 07B2A0 8007A6A0 24080400 */  li    $t0, 1024
/* 07B2A4 8007A6A4 AC990008 */  sw    $t9, 8($a0)
/* 07B2A8 8007A6A8 AC880020 */  sw    $t0, 0x20($a0)
/* 07B2AC 8007A6AC AC820028 */  sw    $v0, 0x28($a0)
/* 07B2B0 8007A6B0 0C034728 */  jal   osViSetMode
/* 07B2B4 8007A6B4 AC82003C */   sw    $v0, 0x3c($a0)
/* 07B2B8 8007A6B8 10000041 */  b     .L8007A7C0
/* 07B2BC 8007A6BC 00000000 */   nop   
/* 07B2C0 8007A6C0 3C04800E */  lui   $a0, %hi(D_800E4710) # $a0, 0x800e
/* 07B2C4 8007A6C4 14400004 */  bnez  $v0, .L8007A6D8
/* 07B2C8 8007A6C8 24844710 */   addiu $a0, %lo(D_800E4710) # addiu $a0, $a0, 0x4710
/* 07B2CC 8007A6CC 3C04800E */  lui   $a0, %hi(D_800E4760) # $a0, 0x800e
/* 07B2D0 8007A6D0 10000005 */  b     .L8007A6E8
/* 07B2D4 8007A6D4 24844760 */   addiu $a0, %lo(D_800E4760) # addiu $a0, $a0, 0x4760
.L8007A6D8:
/* 07B2D8 8007A6D8 14A20003 */  bne   $a1, $v0, .L8007A6E8
/* 07B2DC 8007A6DC 00000000 */   nop   
/* 07B2E0 8007A6E0 3C04800E */  lui   $a0, %hi(D_800E47B0) # $a0, 0x800e
/* 07B2E4 8007A6E4 248447B0 */  addiu $a0, %lo(D_800E47B0) # addiu $a0, $a0, 0x47b0
.L8007A6E8:
/* 07B2E8 8007A6E8 3C058012 */  lui   $a1, %hi(D_80126260) # $a1, 0x8012
/* 07B2EC 8007A6EC 24A56260 */  addiu $a1, %lo(D_80126260) # addiu $a1, $a1, 0x6260
/* 07B2F0 8007A6F0 0C01EAFF */  jal   func_8007ABFC
/* 07B2F4 8007A6F4 24060050 */   li    $a2, 80
/* 07B2F8 8007A6F8 3C058012 */  lui   $a1, 0x8012
/* 07B2FC 8007A6FC 24A46260 */  addiu $a0, $a1, 0x6260
/* 07B300 8007A700 24020500 */  li    $v0, 1280
/* 07B304 8007A704 24090280 */  li    $t1, 640
/* 07B308 8007A708 240A0400 */  li    $t2, 1024
/* 07B30C 8007A70C AC890008 */  sw    $t1, 8($a0)
/* 07B310 8007A710 AC8A0020 */  sw    $t2, 0x20($a0)
/* 07B314 8007A714 AC820028 */  sw    $v0, 0x28($a0)
/* 07B318 8007A718 0C034728 */  jal   osViSetMode
/* 07B31C 8007A71C AC82003C */   sw    $v0, 0x3c($a0)
/* 07B320 8007A720 10000027 */  b     .L8007A7C0
/* 07B324 8007A724 00000000 */   nop   
/* 07B328 8007A728 00035880 */  sll   $t3, $v1, 2
/* 07B32C 8007A72C 01635821 */  addu  $t3, $t3, $v1
/* 07B330 8007A730 000B5900 */  sll   $t3, $t3, 4
/* 07B334 8007A734 3C0D800E */  lui   $t5, %hi(D_800E3900) # $t5, 0x800e
/* 07B338 8007A738 25AD3900 */  addiu $t5, %lo(D_800E3900) # addiu $t5, $t5, 0x3900
/* 07B33C 8007A73C 256C0280 */  addiu $t4, $t3, 0x280
/* 07B340 8007A740 0C034728 */  jal   osViSetMode
/* 07B344 8007A744 018D2021 */   addu  $a0, $t4, $t5
/* 07B348 8007A748 1000001D */  b     .L8007A7C0
/* 07B34C 8007A74C 00000000 */   nop   
/* 07B350 8007A750 00037080 */  sll   $t6, $v1, 2
/* 07B354 8007A754 01C37021 */  addu  $t6, $t6, $v1
/* 07B358 8007A758 000E7100 */  sll   $t6, $t6, 4
/* 07B35C 8007A75C 3C18800E */  lui   $t8, %hi(D_800E3900) # $t8, 0x800e
/* 07B360 8007A760 27183900 */  addiu $t8, %lo(D_800E3900) # addiu $t8, $t8, 0x3900
/* 07B364 8007A764 25CF0320 */  addiu $t7, $t6, 0x320
/* 07B368 8007A768 0C034728 */  jal   osViSetMode
/* 07B36C 8007A76C 01F82021 */   addu  $a0, $t7, $t8
/* 07B370 8007A770 10000013 */  b     .L8007A7C0
/* 07B374 8007A774 00000000 */   nop   
/* 07B378 8007A778 0003C880 */  sll   $t9, $v1, 2
/* 07B37C 8007A77C 0323C821 */  addu  $t9, $t9, $v1
/* 07B380 8007A780 0019C900 */  sll   $t9, $t9, 4
/* 07B384 8007A784 3C09800E */  lui   $t1, %hi(D_800E3900) # $t1, 0x800e
/* 07B388 8007A788 25293900 */  addiu $t1, %lo(D_800E3900) # addiu $t1, $t1, 0x3900
/* 07B38C 8007A78C 272802D0 */  addiu $t0, $t9, 0x2d0
/* 07B390 8007A790 0C034728 */  jal   osViSetMode
/* 07B394 8007A794 01092021 */   addu  $a0, $t0, $t1
/* 07B398 8007A798 10000009 */  b     .L8007A7C0
/* 07B39C 8007A79C 00000000 */   nop   
/* 07B3A0 8007A7A0 00035080 */  sll   $t2, $v1, 2
/* 07B3A4 8007A7A4 01435021 */  addu  $t2, $t2, $v1
/* 07B3A8 8007A7A8 000A5100 */  sll   $t2, $t2, 4
/* 07B3AC 8007A7AC 3C0C800E */  lui   $t4, %hi(D_800E3900) # $t4, 0x800e
/* 07B3B0 8007A7B0 258C3900 */  addiu $t4, %lo(D_800E3900) # addiu $t4, $t4, 0x3900
/* 07B3B4 8007A7B4 254B0370 */  addiu $t3, $t2, 0x370
/* 07B3B8 8007A7B8 0C034728 */  jal   osViSetMode
/* 07B3BC 8007A7BC 016C2021 */   addu  $a0, $t3, $t4
.L8007A7C0:
/* 07B3C0 8007A7C0 0C034898 */  jal   osViSetSpecialFeatures
/* 07B3C4 8007A7C4 24040010 */   li    $a0, 16
/* 07B3C8 8007A7C8 0C034898 */  jal   osViSetSpecialFeatures
/* 07B3CC 8007A7CC 24040040 */   li    $a0, 64
/* 07B3D0 8007A7D0 0C034898 */  jal   osViSetSpecialFeatures
/* 07B3D4 8007A7D4 24040002 */   li    $a0, 2
/* 07B3D8 8007A7D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07B3DC 8007A7DC 27BD0018 */  addiu $sp, $sp, 0x18
/* 07B3E0 8007A7E0 03E00008 */  jr    $ra
/* 07B3E4 8007A7E4 00000000 */   nop   

