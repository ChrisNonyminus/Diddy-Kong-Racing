glabel func_80035E34
/* 036A34 80035E34 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 036A38 80035E38 AFBF001C */  sw    $ra, 0x1c($sp)
/* 036A3C 80035E3C AFB00018 */  sw    $s0, 0x18($sp)
/* 036A40 80035E40 AFA50024 */  sw    $a1, 0x24($sp)
/* 036A44 80035E44 240E0028 */  li    $t6, 40
/* 036A48 80035E48 00808025 */  move  $s0, $a0
/* 036A4C 80035E4C A080003B */  sb    $zero, 0x3b($a0)
/* 036A50 80035E50 0C0044E7 */  jal   func_8001139C
/* 036A54 80035E54 A48E0018 */   sh    $t6, 0x18($a0)
/* 036A58 80035E58 14400006 */  bnez  $v0, .L80035E74
/* 036A5C 80035E5C 00000000 */   nop   
/* 036A60 80035E60 8E0F0078 */  lw    $t7, 0x78($s0)
/* 036A64 80035E64 8FB80024 */  lw    $t8, 0x24($sp)
/* 036A68 80035E68 00000000 */  nop   
/* 036A6C 80035E6C 01F8C821 */  addu  $t9, $t7, $t8
/* 036A70 80035E70 AE190078 */  sw    $t9, 0x78($s0)
.L80035E74:
/* 036A74 80035E74 0C016790 */  jal   func_80059E40
/* 036A78 80035E78 02002025 */   move  $a0, $s0
/* 036A7C 80035E7C 8FA50024 */  lw    $a1, 0x24($sp)
/* 036A80 80035E80 0C02BF0F */  jal   func_800AFC3C
/* 036A84 80035E84 02002025 */   move  $a0, $s0
/* 036A88 80035E88 0C006EB2 */  jal   getPlayerStruct
/* 036A8C 80035E8C 00002025 */   move  $a0, $zero
/* 036A90 80035E90 8E030060 */  lw    $v1, 0x60($s0)
/* 036A94 80035E94 24050001 */  li    $a1, 1
/* 036A98 80035E98 8C680000 */  lw    $t0, ($v1)
/* 036A9C 80035E9C 8C440064 */  lw    $a0, 0x64($v0)
/* 036AA0 80035EA0 14A80012 */  bne   $a1, $t0, .L80035EEC
/* 036AA4 80035EA4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 036AA8 80035EA8 808201D6 */  lb    $v0, 0x1d6($a0)
/* 036AAC 80035EAC 24010002 */  li    $at, 2
/* 036AB0 80035EB0 10450003 */  beq   $v0, $a1, .L80035EC0
/* 036AB4 80035EB4 00000000 */   nop   
/* 036AB8 80035EB8 1441000C */  bne   $v0, $at, .L80035EEC
/* 036ABC 80035EBC 8FBF001C */   lw    $ra, 0x1c($sp)
.L80035EC0:
/* 036AC0 80035EC0 8C620004 */  lw    $v0, 4($v1)
/* 036AC4 80035EC4 24094000 */  li    $t1, 16384
/* 036AC8 80035EC8 804A003A */  lb    $t2, 0x3a($v0)
/* 036ACC 80035ECC A4490000 */  sh    $t1, ($v0)
/* 036AD0 80035ED0 254B0001 */  addiu $t3, $t2, 1
/* 036AD4 80035ED4 A04B003A */  sb    $t3, 0x3a($v0)
/* 036AD8 80035ED8 804C003A */  lb    $t4, 0x3a($v0)
/* 036ADC 80035EDC 00000000 */  nop   
/* 036AE0 80035EE0 318D0001 */  andi  $t5, $t4, 1
/* 036AE4 80035EE4 A04D003A */  sb    $t5, 0x3a($v0)
/* 036AE8 80035EE8 8FBF001C */  lw    $ra, 0x1c($sp)
.L80035EEC:
/* 036AEC 80035EEC 8FB00018 */  lw    $s0, 0x18($sp)
/* 036AF0 80035EF0 03E00008 */  jr    $ra
/* 036AF4 80035EF4 27BD0020 */   addiu $sp, $sp, 0x20

