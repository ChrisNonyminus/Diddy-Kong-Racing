glabel func_800AC8A8
/* 0AD4A8 800AC8A8 3C05800E */  lui   $a1, %hi(D_800E2A80) # $a1, 0x800e
/* 0AD4AC 800AC8AC 24A52A80 */  addiu $a1, %lo(D_800E2A80) # addiu $a1, $a1, 0x2a80
/* 0AD4B0 800AC8B0 ACA40000 */  sw    $a0, ($a1)
/* 0AD4B4 800AC8B4 3C01800E */  lui   $at, %hi(D_800E2A84) # $at, 0x800e
/* 0AD4B8 800AC8B8 AC202A84 */  sw    $zero, %lo(D_800E2A84)($at)
/* 0AD4BC 800AC8BC 8CAE0000 */  lw    $t6, ($a1)
/* 0AD4C0 800AC8C0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0AD4C4 800AC8C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AD4C8 800AC8C8 8DC3003C */  lw    $v1, 0x3c($t6)
/* 0AD4CC 800AC8CC 24060001 */  li    $a2, 1
/* 0AD4D0 800AC8D0 9062000C */  lbu   $v0, 0xc($v1)
/* 0AD4D4 800AC8D4 3C058012 */  lui   $a1, %hi(D_80127C30) # $a1, 0x8012
/* 0AD4D8 800AC8D8 1046000A */  beq   $v0, $a2, .L800AC904
/* 0AD4DC 800AC8DC 24A57C30 */   addiu $a1, %lo(D_80127C30) # addiu $a1, $a1, 0x7c30
/* 0AD4E0 800AC8E0 24010002 */  li    $at, 2
/* 0AD4E4 800AC8E4 1041000C */  beq   $v0, $at, .L800AC918
/* 0AD4E8 800AC8E8 3C18800E */   lui   $t8, %hi(D_800E29E0) # $t8, 0x800e
/* 0AD4EC 800AC8EC 24010003 */  li    $at, 3
/* 0AD4F0 800AC8F0 1041000D */  beq   $v0, $at, .L800AC928
/* 0AD4F4 800AC8F4 3C19800E */   lui   $t9, %hi(D_800E2A30) # $t9, 0x800e
/* 0AD4F8 800AC8F8 3C018012 */  lui   $at, %hi(D_80127C24) # $at, 0x8012
/* 0AD4FC 800AC8FC 1000000D */  b     .L800AC934
/* 0AD500 800AC900 AC207C24 */   sw    $zero, %lo(D_80127C24)($at)
.L800AC904:
/* 0AD504 800AC904 3C0F800E */  lui   $t7, %hi(D_800E29A0) # $t7, 0x800e
/* 0AD508 800AC908 25EF29A0 */  addiu $t7, %lo(D_800E29A0) # addiu $t7, $t7, 0x29a0
/* 0AD50C 800AC90C 3C018012 */  lui   $at, %hi(D_80127C24) # $at, 0x8012
/* 0AD510 800AC910 10000008 */  b     .L800AC934
/* 0AD514 800AC914 AC2F7C24 */   sw    $t7, %lo(D_80127C24)($at)
.L800AC918:
/* 0AD518 800AC918 271829E0 */  addiu $t8, %lo(D_800E29E0) # addiu $t8, $t8, 0x29e0
/* 0AD51C 800AC91C 3C018012 */  lui   $at, %hi(D_80127C24) # $at, 0x8012
/* 0AD520 800AC920 10000004 */  b     .L800AC934
/* 0AD524 800AC924 AC387C24 */   sw    $t8, %lo(D_80127C24)($at)
.L800AC928:
/* 0AD528 800AC928 27392A30 */  addiu $t9, %lo(D_800E2A30) # addiu $t9, $t9, 0x2a30
/* 0AD52C 800AC92C 3C018012 */  lui   $at, %hi(D_80127C24) # $at, 0x8012
/* 0AD530 800AC930 AC397C24 */  sw    $t9, %lo(D_80127C24)($at)
.L800AC934:
/* 0AD534 800AC934 9062000D */  lbu   $v0, 0xd($v1)
/* 0AD538 800AC938 44800000 */  mtc1  $zero, $f0
/* 0AD53C 800AC93C 1046000A */  beq   $v0, $a2, .L800AC968
/* 0AD540 800AC940 27A4001C */   addiu $a0, $sp, 0x1c
/* 0AD544 800AC944 24010002 */  li    $at, 2
/* 0AD548 800AC948 1041000C */  beq   $v0, $at, .L800AC97C
/* 0AD54C 800AC94C 3C09800E */   lui   $t1, %hi(D_800E29E0) # $t1, 0x800e
/* 0AD550 800AC950 24010003 */  li    $at, 3
/* 0AD554 800AC954 1041000D */  beq   $v0, $at, .L800AC98C
/* 0AD558 800AC958 3C0A800E */   lui   $t2, %hi(D_800E2A30) # $t2, 0x800e
/* 0AD55C 800AC95C 3C018012 */  lui   $at, %hi(D_80127C28) # $at, 0x8012
/* 0AD560 800AC960 1000000D */  b     .L800AC998
/* 0AD564 800AC964 AC207C28 */   sw    $zero, %lo(D_80127C28)($at)
.L800AC968:
/* 0AD568 800AC968 3C08800E */  lui   $t0, %hi(D_800E29A0) # $t0, 0x800e
/* 0AD56C 800AC96C 250829A0 */  addiu $t0, %lo(D_800E29A0) # addiu $t0, $t0, 0x29a0
/* 0AD570 800AC970 3C018012 */  lui   $at, %hi(D_80127C28) # $at, 0x8012
/* 0AD574 800AC974 10000008 */  b     .L800AC998
/* 0AD578 800AC978 AC287C28 */   sw    $t0, %lo(D_80127C28)($at)
.L800AC97C:
/* 0AD57C 800AC97C 252929E0 */  addiu $t1, %lo(D_800E29E0) # addiu $t1, $t1, 0x29e0
/* 0AD580 800AC980 3C018012 */  lui   $at, %hi(D_80127C28) # $at, 0x8012
/* 0AD584 800AC984 10000004 */  b     .L800AC998
/* 0AD588 800AC988 AC297C28 */   sw    $t1, %lo(D_80127C28)($at)
.L800AC98C:
/* 0AD58C 800AC98C 254A2A30 */  addiu $t2, %lo(D_800E2A30) # addiu $t2, $t2, 0x2a30
/* 0AD590 800AC990 3C018012 */  lui   $at, %hi(D_80127C28) # $at, 0x8012
/* 0AD594 800AC994 AC2A7C28 */  sw    $t2, %lo(D_80127C28)($at)
.L800AC998:
/* 0AD598 800AC998 906B000E */  lbu   $t3, 0xe($v1)
/* 0AD59C 800AC99C 3C0C800E */  lui   $t4, %hi(D_800E2980) # $t4, 0x800e
/* 0AD5A0 800AC9A0 14CB0005 */  bne   $a2, $t3, .L800AC9B8
/* 0AD5A4 800AC9A4 3C018012 */   lui   $at, %hi(D_80127C2C) # $at, 0x8012
/* 0AD5A8 800AC9A8 258C2980 */  addiu $t4, %lo(D_800E2980) # addiu $t4, $t4, 0x2980
/* 0AD5AC 800AC9AC 3C018012 */  lui   $at, %hi(D_80127C2C) # $at, 0x8012
/* 0AD5B0 800AC9B0 10000002 */  b     .L800AC9BC
/* 0AD5B4 800AC9B4 AC2C7C2C */   sw    $t4, %lo(D_80127C2C)($at)
.L800AC9B8:
/* 0AD5B8 800AC9B8 AC207C2C */  sw    $zero, %lo(D_80127C2C)($at)
.L800AC9BC:
/* 0AD5BC 800AC9BC 846D000A */  lh    $t5, 0xa($v1)
/* 0AD5C0 800AC9C0 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0AD5C4 800AC9C4 A7AD001C */  sh    $t5, 0x1c($sp)
/* 0AD5C8 800AC9C8 846E0008 */  lh    $t6, 8($v1)
/* 0AD5CC 800AC9CC 44812000 */  mtc1  $at, $f4
/* 0AD5D0 800AC9D0 A7A00020 */  sh    $zero, 0x20($sp)
/* 0AD5D4 800AC9D4 E4A00000 */  swc1  $f0, ($a1)
/* 0AD5D8 800AC9D8 E4A00004 */  swc1  $f0, 4($a1)
/* 0AD5DC 800AC9DC A7AE001E */  sh    $t6, 0x1e($sp)
/* 0AD5E0 800AC9E0 0C01C124 */  jal   func_80070490
/* 0AD5E4 800AC9E4 E4A40008 */   swc1  $f4, 8($a1)
/* 0AD5E8 800AC9E8 3C058012 */  lui   $a1, %hi(D_80127C30) # $a1, 0x8012
/* 0AD5EC 800AC9EC 24A57C30 */  addiu $a1, %lo(D_80127C30) # addiu $a1, $a1, 0x7c30
/* 0AD5F0 800AC9F0 C4A60000 */  lwc1  $f6, ($a1)
/* 0AD5F4 800AC9F4 C4AA0004 */  lwc1  $f10, 4($a1)
/* 0AD5F8 800AC9F8 C4B20008 */  lwc1  $f18, 8($a1)
/* 0AD5FC 800AC9FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0AD600 800ACA00 46003207 */  neg.s $f8, $f6
/* 0AD604 800ACA04 46005407 */  neg.s $f16, $f10
/* 0AD608 800ACA08 46009107 */  neg.s $f4, $f18
/* 0AD60C 800ACA0C E4A80000 */  swc1  $f8, ($a1)
/* 0AD610 800ACA10 E4B00004 */  swc1  $f16, 4($a1)
/* 0AD614 800ACA14 E4A40008 */  swc1  $f4, 8($a1)
/* 0AD618 800ACA18 03E00008 */  jr    $ra
/* 0AD61C 800ACA1C 27BD0028 */   addiu $sp, $sp, 0x28

