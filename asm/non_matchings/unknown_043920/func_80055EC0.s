glabel func_80055EC0
/* 056AC0 80055EC0 27BDFF78 */  addiu $sp, $sp, -0x88
/* 056AC4 80055EC4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 056AC8 80055EC8 AFB00020 */  sw    $s0, 0x20($sp)
/* 056ACC 80055ECC AFA60090 */  sw    $a2, 0x90($sp)
/* 056AD0 80055ED0 A7A0003A */  sh    $zero, 0x3a($sp)
/* 056AD4 80055ED4 8CA20144 */  lw    $v0, 0x144($a1)
/* 056AD8 80055ED8 00A08025 */  move  $s0, $a1
/* 056ADC 80055EDC 10400073 */  beqz  $v0, .L800560AC
/* 056AE0 80055EE0 00803825 */   move  $a3, $a0
/* 056AE4 80055EE4 3C058012 */  lui   $a1, %hi(D_8011D52C) # $a1, 0x8012
/* 056AE8 80055EE8 24A5D52C */  addiu $a1, %lo(D_8011D52C) # addiu $a1, $a1, -0x2ad4
/* 056AEC 80055EEC 8CAE0000 */  lw    $t6, ($a1)
/* 056AF0 80055EF0 00401825 */  move  $v1, $v0
/* 056AF4 80055EF4 31CF2000 */  andi  $t7, $t6, 0x2000
/* 056AF8 80055EF8 15E00009 */  bnez  $t7, .L80055F20
/* 056AFC 80055EFC 00000000 */   nop   
/* 056B00 80055F00 821801D8 */  lb    $t8, 0x1d8($s0)
/* 056B04 80055F04 00000000 */  nop   
/* 056B08 80055F08 17000005 */  bnez  $t8, .L80055F20
/* 056B0C 80055F0C 00000000 */   nop   
/* 056B10 80055F10 82190187 */  lb    $t9, 0x187($s0)
/* 056B14 80055F14 00000000 */  nop   
/* 056B18 80055F18 13200282 */  beqz  $t9, .L80056924
/* 056B1C 80055F1C 8FBF0024 */   lw    $ra, 0x24($sp)
.L80055F20:
/* 056B20 80055F20 80EC003A */  lb    $t4, 0x3a($a3)
/* 056B24 80055F24 8CEB0068 */  lw    $t3, 0x68($a3)
/* 056B28 80055F28 000C6880 */  sll   $t5, $t4, 2
/* 056B2C 80055F2C 016D7021 */  addu  $t6, $t3, $t5
/* 056B30 80055F30 44806000 */  mtc1  $zero, $f12
/* 056B34 80055F34 8DC20000 */  lw    $v0, ($t6)
/* 056B38 80055F38 46006086 */  mov.s $f2, $f12
/* 056B3C 80055F3C 10400022 */  beqz  $v0, .L80055FC8
/* 056B40 80055F40 00000000 */   nop   
/* 056B44 80055F44 8CEF0040 */  lw    $t7, 0x40($a3)
/* 056B48 80055F48 8C450000 */  lw    $a1, ($v0)
/* 056B4C 80055F4C 81E40058 */  lb    $a0, 0x58($t7)
/* 056B50 80055F50 00000000 */  nop   
/* 056B54 80055F54 0480001C */  bltz  $a0, .L80055FC8
/* 056B58 80055F58 00000000 */   nop   
/* 056B5C 80055F5C 84B80018 */  lh    $t8, 0x18($a1)
/* 056B60 80055F60 00000000 */  nop   
/* 056B64 80055F64 0098082A */  slt   $at, $a0, $t8
/* 056B68 80055F68 10200017 */  beqz  $at, .L80055FC8
/* 056B6C 80055F6C 00000000 */   nop   
/* 056B70 80055F70 8CE60044 */  lw    $a2, 0x44($a3)
/* 056B74 80055F74 00000000 */  nop   
/* 056B78 80055F78 10C00013 */  beqz  $a2, .L80055FC8
/* 056B7C 80055F7C 00000000 */   nop   
/* 056B80 80055F80 8CB90014 */  lw    $t9, 0x14($a1)
/* 056B84 80055F84 00046040 */  sll   $t4, $a0, 1
/* 056B88 80055F88 032C5821 */  addu  $t3, $t9, $t4
/* 056B8C 80055F8C 856D0000 */  lh    $t5, ($t3)
/* 056B90 80055F90 C4E00008 */  lwc1  $f0, 8($a3)
/* 056B94 80055F94 000D7080 */  sll   $t6, $t5, 2
/* 056B98 80055F98 01CD7021 */  addu  $t6, $t6, $t5
/* 056B9C 80055F9C 000E7040 */  sll   $t6, $t6, 1
/* 056BA0 80055FA0 00CE1021 */  addu  $v0, $a2, $t6
/* 056BA4 80055FA4 844F0002 */  lh    $t7, 2($v0)
/* 056BA8 80055FA8 84580004 */  lh    $t8, 4($v0)
/* 056BAC 80055FAC 448F2000 */  mtc1  $t7, $f4
/* 056BB0 80055FB0 44983000 */  mtc1  $t8, $f6
/* 056BB4 80055FB4 468020A0 */  cvt.s.w $f2, $f4
/* 056BB8 80055FB8 46001082 */  mul.s $f2, $f2, $f0
/* 056BBC 80055FBC 46803320 */  cvt.s.w $f12, $f6
/* 056BC0 80055FC0 46006302 */  mul.s $f12, $f12, $f0
/* 056BC4 80055FC4 00000000 */  nop   
.L80055FC8:
/* 056BC8 80055FC8 C60A0038 */  lwc1  $f10, 0x38($s0)
/* 056BCC 80055FCC C6040044 */  lwc1  $f4, 0x44($s0)
/* 056BD0 80055FD0 460C5402 */  mul.s $f16, $f10, $f12
/* 056BD4 80055FD4 C4E8000C */  lwc1  $f8, 0xc($a3)
/* 056BD8 80055FD8 3C01800E */  lui   $at, %hi(D_800E6848) # $at, 0x800e
/* 056BDC 80055FDC 8C620064 */  lw    $v0, 0x64($v1)
/* 056BE0 80055FE0 46022182 */  mul.s $f6, $f4, $f2
/* 056BE4 80055FE4 46104480 */  add.s $f18, $f8, $f16
/* 056BE8 80055FE8 240C0002 */  li    $t4, 2
/* 056BEC 80055FEC 240B0001 */  li    $t3, 1
/* 056BF0 80055FF0 46069280 */  add.s $f10, $f18, $f6
/* 056BF4 80055FF4 E46A000C */  swc1  $f10, 0xc($v1)
/* 056BF8 80055FF8 C610003C */  lwc1  $f16, 0x3c($s0)
/* 056BFC 80055FFC C6060048 */  lwc1  $f6, 0x48($s0)
/* 056C00 80056000 460C8102 */  mul.s $f4, $f16, $f12
/* 056C04 80056004 C4E80010 */  lwc1  $f8, 0x10($a3)
/* 056C08 80056008 46023282 */  mul.s $f10, $f6, $f2
/* 056C0C 8005600C 46044480 */  add.s $f18, $f8, $f4
/* 056C10 80056010 460A9400 */  add.s $f16, $f18, $f10
/* 056C14 80056014 E4700010 */  swc1  $f16, 0x10($v1)
/* 056C18 80056018 C6040040 */  lwc1  $f4, 0x40($s0)
/* 056C1C 8005601C C60A004C */  lwc1  $f10, 0x4c($s0)
/* 056C20 80056020 460C2182 */  mul.s $f6, $f4, $f12
/* 056C24 80056024 C4E80014 */  lwc1  $f8, 0x14($a3)
/* 056C28 80056028 46025402 */  mul.s $f16, $f10, $f2
/* 056C2C 8005602C 46064480 */  add.s $f18, $f8, $f6
/* 056C30 80056030 46109100 */  add.s $f4, $f18, $f16
/* 056C34 80056034 E4640014 */  swc1  $f4, 0x14($v1)
/* 056C38 80056038 84F9002E */  lh    $t9, 0x2e($a3)
/* 056C3C 8005603C 00000000 */  nop   
/* 056C40 80056040 A479002E */  sh    $t9, 0x2e($v1)
/* 056C44 80056044 C4E8001C */  lwc1  $f8, 0x1c($a3)
/* 056C48 80056048 C420684C */  lwc1  $f0, %lo(D_800E684C)($at)
/* 056C4C 8005604C C4216848 */  lwc1  $f1, %lo(D_800E6848)($at)
/* 056C50 80056050 460041A1 */  cvt.d.s $f6, $f8
/* 056C54 80056054 46203282 */  mul.d $f10, $f6, $f0
/* 056C58 80056058 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 056C5C 8005605C 44814800 */  mtc1  $at, $f9
/* 056C60 80056060 44804000 */  mtc1  $zero, $f8
/* 056C64 80056064 462054A0 */  cvt.s.d $f18, $f10
/* 056C68 80056068 E472001C */  swc1  $f18, 0x1c($v1)
/* 056C6C 8005606C C4F00020 */  lwc1  $f16, 0x20($a3)
/* 056C70 80056070 00000000 */  nop   
/* 056C74 80056074 46008121 */  cvt.d.s $f4, $f16
/* 056C78 80056078 46282181 */  sub.d $f6, $f4, $f8
/* 056C7C 8005607C 462032A0 */  cvt.s.d $f10, $f6
/* 056C80 80056080 E46A0020 */  swc1  $f10, 0x20($v1)
/* 056C84 80056084 C4F20024 */  lwc1  $f18, 0x24($a3)
/* 056C88 80056088 00000000 */  nop   
/* 056C8C 8005608C 46009421 */  cvt.d.s $f16, $f18
/* 056C90 80056090 46208102 */  mul.d $f4, $f16, $f0
/* 056C94 80056094 46202220 */  cvt.s.d $f8, $f4
/* 056C98 80056098 E4680024 */  swc1  $f8, 0x24($v1)
/* 056C9C 8005609C A04C000B */  sb    $t4, 0xb($v0)
/* 056CA0 800560A0 AE000144 */  sw    $zero, 0x144($s0)
/* 056CA4 800560A4 1000021E */  b     .L80056920
/* 056CA8 800560A8 A20B0211 */   sb    $t3, 0x211($s0)
.L800560AC:
/* 056CAC 800560AC 3C058012 */  lui   $a1, %hi(D_8011D52C) # $a1, 0x8012
/* 056CB0 800560B0 24A5D52C */  addiu $a1, %lo(D_8011D52C) # addiu $a1, $a1, -0x2ad4
/* 056CB4 800560B4 8CAD0000 */  lw    $t5, ($a1)
/* 056CB8 800560B8 3C018012 */  lui   $at, %hi(D_8011D530) # $at, 0x8012
/* 056CBC 800560BC 31AE2000 */  andi  $t6, $t5, 0x2000
/* 056CC0 800560C0 11C00002 */  beqz  $t6, .L800560CC
/* 056CC4 800560C4 2404000C */   li    $a0, 12
/* 056CC8 800560C8 A2000211 */  sb    $zero, 0x211($s0)
.L800560CC:
/* 056CCC 800560CC 820F0211 */  lb    $t7, 0x211($s0)
/* 056CD0 800560D0 00000000 */  nop   
/* 056CD4 800560D4 11E00006 */  beqz  $t7, .L800560F0
/* 056CD8 800560D8 00000000 */   nop   
/* 056CDC 800560DC AC20D530 */  sw    $zero, %lo(D_8011D530)($at)
/* 056CE0 800560E0 8CB80000 */  lw    $t8, ($a1)
/* 056CE4 800560E4 2401DFFF */  li    $at, -8193
/* 056CE8 800560E8 0301C824 */  and   $t9, $t8, $at
/* 056CEC 800560EC ACB90000 */  sw    $t9, ($a1)
.L800560F0:
/* 056CF0 800560F0 820C0175 */  lb    $t4, 0x175($s0)
/* 056CF4 800560F4 00000000 */  nop   
/* 056CF8 800560F8 15800002 */  bnez  $t4, .L80056104
/* 056CFC 800560FC 00000000 */   nop   
/* 056D00 80056100 AE000140 */  sw    $zero, 0x140($s0)
.L80056104:
/* 056D04 80056104 820B0172 */  lb    $t3, 0x172($s0)
/* 056D08 80056108 2401FFFF */  li    $at, -1
/* 056D0C 8005610C 15610002 */  bne   $t3, $at, .L80056118
/* 056D10 80056110 00000000 */   nop   
/* 056D14 80056114 A2000173 */  sb    $zero, 0x173($s0)
.L80056118:
/* 056D18 80056118 820D0173 */  lb    $t5, 0x173($s0)
/* 056D1C 8005611C 00000000 */  nop   
/* 056D20 80056120 1DA0000A */  bgtz  $t5, .L8005614C
/* 056D24 80056124 00000000 */   nop   
/* 056D28 80056128 8CAE0000 */  lw    $t6, ($a1)
/* 056D2C 8005612C 00E02025 */  move  $a0, $a3
/* 056D30 80056130 31CF2000 */  andi  $t7, $t6, 0x2000
/* 056D34 80056134 11E001FB */  beqz  $t7, .L80056924
/* 056D38 80056138 8FBF0024 */   lw    $ra, 0x24($sp)
/* 056D3C 8005613C 0C015A4C */  jal   func_80056930
/* 056D40 80056140 02002825 */   move  $a1, $s0
/* 056D44 80056144 100001F7 */  b     .L80056924
/* 056D48 80056148 8FBF0024 */   lw    $ra, 0x24($sp)
.L8005614C:
/* 056D4C 8005614C 0C0078A7 */  jal   func_8001E29C
/* 056D50 80056150 AFA70088 */   sw    $a3, 0x88($sp)
/* 056D54 80056154 82180172 */  lb    $t8, 0x172($s0)
/* 056D58 80056158 820C0174 */  lb    $t4, 0x174($s0)
/* 056D5C 8005615C 0018C880 */  sll   $t9, $t8, 2
/* 056D60 80056160 0338C821 */  addu  $t9, $t9, $t8
/* 056D64 80056164 0019C840 */  sll   $t9, $t9, 1
/* 056D68 80056168 000C5840 */  sll   $t3, $t4, 1
/* 056D6C 8005616C 032B6821 */  addu  $t5, $t9, $t3
/* 056D70 80056170 01A27021 */  addu  $t6, $t5, $v0
/* 056D74 80056174 81C80000 */  lb    $t0, ($t6)
/* 056D78 80056178 3C058012 */  lui   $a1, %hi(D_8011D52C) # $a1, 0x8012
/* 056D7C 8005617C 2401FFFF */  li    $at, -1
/* 056D80 80056180 15010003 */  bne   $t0, $at, .L80056190
/* 056D84 80056184 24A5D52C */   addiu $a1, %lo(D_8011D52C) # addiu $a1, $a1, -0x2ad4
/* 056D88 80056188 100001E5 */  b     .L80056920
/* 056D8C 8005618C A2000173 */   sb    $zero, 0x173($s0)
.L80056190:
/* 056D90 80056190 8CAF0000 */  lw    $t7, ($a1)
/* 056D94 80056194 00003825 */  move  $a3, $zero
/* 056D98 80056198 31F82000 */  andi  $t8, $t7, 0x2000
/* 056D9C 8005619C 13000008 */  beqz  $t8, .L800561C0
/* 056DA0 800561A0 2404013E */   li    $a0, 318
/* 056DA4 800561A4 86050000 */  lh    $a1, ($s0)
/* 056DA8 800561A8 AFA8007C */  sw    $t0, 0x7c($sp)
/* 056DAC 800561AC 0C029D3B */  jal   func_800A74EC
/* 056DB0 800561B0 AFA00068 */   sw    $zero, 0x68($sp)
/* 056DB4 800561B4 8FA70068 */  lw    $a3, 0x68($sp)
/* 056DB8 800561B8 8FA8007C */  lw    $t0, 0x7c($sp)
/* 056DBC 800561BC 00000000 */  nop   
.L800561C0:
/* 056DC0 800561C0 820C0195 */  lb    $t4, 0x195($s0)
/* 056DC4 800561C4 3C0B8012 */  lui   $t3, %hi(D_8011D528) # $t3, 0x8012
/* 056DC8 800561C8 11800006 */  beqz  $t4, .L800561E4
/* 056DCC 800561CC 00000000 */   nop   
/* 056DD0 800561D0 82190175 */  lb    $t9, 0x175($s0)
/* 056DD4 800561D4 00000000 */  nop   
/* 056DD8 800561D8 172001D2 */  bnez  $t9, .L80056924
/* 056DDC 800561DC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 056DE0 800561E0 A2000195 */  sb    $zero, 0x195($s0)
.L800561E4:
/* 056DE4 800561E4 8D6BD528 */  lw    $t3, %lo(D_8011D528)($t3)
/* 056DE8 800561E8 3C038012 */  lui   $v1, %hi(D_8011D530) # $v1, 0x8012
/* 056DEC 800561EC 316D2000 */  andi  $t5, $t3, 0x2000
/* 056DF0 800561F0 15A00006 */  bnez  $t5, .L8005620C
/* 056DF4 800561F4 00000000 */   nop   
/* 056DF8 800561F8 8C63D530 */  lw    $v1, %lo(D_8011D530)($v1)
/* 056DFC 800561FC 00000000 */  nop   
/* 056E00 80056200 306E2000 */  andi  $t6, $v1, 0x2000
/* 056E04 80056204 11C00045 */  beqz  $t6, .L8005631C
/* 056E08 80056208 01C01825 */   move  $v1, $t6
.L8005620C:
/* 056E0C 8005620C 1100000E */  beqz  $t0, .L80056248
/* 056E10 80056210 02002825 */   move  $a1, $s0
/* 056E14 80056214 24010005 */  li    $at, 5
/* 056E18 80056218 1101001A */  beq   $t0, $at, .L80056284
/* 056E1C 8005621C 02002825 */   move  $a1, $s0
/* 056E20 80056220 24010006 */  li    $at, 6
/* 056E24 80056224 11010017 */  beq   $t0, $at, .L80056284
/* 056E28 80056228 24010007 */   li    $at, 7
/* 056E2C 8005622C 11010015 */  beq   $t0, $at, .L80056284
/* 056E30 80056230 3C038012 */   lui   $v1, %hi(D_8011D530) # $v1, 0x8012
/* 056E34 80056234 8C63D530 */  lw    $v1, %lo(D_8011D530)($v1)
/* 056E38 80056238 00000000 */  nop   
/* 056E3C 8005623C 306F2000 */  andi  $t7, $v1, 0x2000
/* 056E40 80056240 10000036 */  b     .L8005631C
/* 056E44 80056244 01E01825 */   move  $v1, $t7
.L80056248:
/* 056E48 80056248 8FA40088 */  lw    $a0, 0x88($sp)
/* 056E4C 8005624C 27A60064 */  addiu $a2, $sp, 0x64
/* 056E50 80056250 AFA70068 */  sw    $a3, 0x68($sp)
/* 056E54 80056254 0C015A63 */  jal   func_8005698C
/* 056E58 80056258 AFA8007C */   sw    $t0, 0x7c($sp)
/* 056E5C 8005625C 8FA70068 */  lw    $a3, 0x68($sp)
/* 056E60 80056260 8FA8007C */  lw    $t0, 0x7c($sp)
/* 056E64 80056264 A2000175 */  sb    $zero, 0x175($s0)
/* 056E68 80056268 AE020140 */  sw    $v0, 0x140($s0)
/* 056E6C 8005626C 3C038012 */  lui   $v1, %hi(D_8011D530) # $v1, 0x8012
/* 056E70 80056270 8C63D530 */  lw    $v1, %lo(D_8011D530)($v1)
/* 056E74 80056274 AFA2006C */  sw    $v0, 0x6c($sp)
/* 056E78 80056278 30782000 */  andi  $t8, $v1, 0x2000
/* 056E7C 8005627C 10000027 */  b     .L8005631C
/* 056E80 80056280 03001825 */   move  $v1, $t8
.L80056284:
/* 056E84 80056284 8FA40088 */  lw    $a0, 0x88($sp)
/* 056E88 80056288 27A60064 */  addiu $a2, $sp, 0x64
/* 056E8C 8005628C AFA70068 */  sw    $a3, 0x68($sp)
/* 056E90 80056290 0C015A63 */  jal   func_8005698C
/* 056E94 80056294 AFA8007C */   sw    $t0, 0x7c($sp)
/* 056E98 80056298 8FA8007C */  lw    $t0, 0x7c($sp)
/* 056E9C 8005629C 8FA70068 */  lw    $a3, 0x68($sp)
/* 056EA0 800562A0 24010005 */  li    $at, 5
/* 056EA4 800562A4 00405025 */  move  $t2, $v0
/* 056EA8 800562A8 15010005 */  bne   $t0, $at, .L800562C0
/* 056EAC 800562AC A2000175 */   sb    $zero, 0x175($s0)
/* 056EB0 800562B0 3C01447A */  li    $at, 0x447A0000 # 1000.000000
/* 056EB4 800562B4 44810000 */  mtc1  $at, $f0
/* 056EB8 800562B8 10000005 */  b     .L800562D0
/* 056EBC 800562BC C7A60064 */   lwc1  $f6, 0x64($sp)
.L800562C0:
/* 056EC0 800562C0 3C01800E */  lui   $at, %hi(D_800E6850) # $at, 0x800e
/* 056EC4 800562C4 C4206850 */  lwc1  $f0, %lo(D_800E6850)($at)
/* 056EC8 800562C8 00000000 */  nop   
/* 056ECC 800562CC C7A60064 */  lwc1  $f6, 0x64($sp)
.L800562D0:
/* 056ED0 800562D0 24010006 */  li    $at, 6
/* 056ED4 800562D4 4600303C */  c.lt.s $f6, $f0
/* 056ED8 800562D8 3C038012 */  lui   $v1, %hi(D_8011D530) # $v1, 0x8012
/* 056EDC 800562DC 45000009 */  bc1f  .L80056304
/* 056EE0 800562E0 00000000 */   nop   
/* 056EE4 800562E4 15010005 */  bne   $t0, $at, .L800562FC
/* 056EE8 800562E8 00000000 */   nop   
/* 056EEC 800562EC 10400003 */  beqz  $v0, .L800562FC
/* 056EF0 800562F0 00000000 */   nop   
/* 056EF4 800562F4 8C470064 */  lw    $a3, 0x64($v0)
/* 056EF8 800562F8 00000000 */  nop   
.L800562FC:
/* 056EFC 800562FC 10000003 */  b     .L8005630C
/* 056F00 80056300 AE020140 */   sw    $v0, 0x140($s0)
.L80056304:
/* 056F04 80056304 AE000140 */  sw    $zero, 0x140($s0)
/* 056F08 80056308 00005025 */  move  $t2, $zero
.L8005630C:
/* 056F0C 8005630C 8C63D530 */  lw    $v1, %lo(D_8011D530)($v1)
/* 056F10 80056310 AFAA006C */  sw    $t2, 0x6c($sp)
/* 056F14 80056314 306C2000 */  andi  $t4, $v1, 0x2000
/* 056F18 80056318 01801825 */  move  $v1, $t4
.L8005631C:
/* 056F1C 8005631C 8FAA006C */  lw    $t2, 0x6c($sp)
/* 056F20 80056320 1060017F */  beqz  $v1, .L80056920
/* 056F24 80056324 2402001D */   li    $v0, 29
/* 056F28 80056328 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 056F2C 8005632C 44810000 */  mtc1  $at, $f0
/* 056F30 80056330 2D010010 */  sltiu $at, $t0, 0x10
/* 056F34 80056334 AFA80030 */  sw    $t0, 0x30($sp)
/* 056F38 80056338 102000B9 */  beqz  $at, .L80056620
/* 056F3C 8005633C 0100C825 */   move  $t9, $t0
/* 056F40 80056340 0019C880 */  sll   $t9, $t9, 2
/* 056F44 80056344 3C01800E */  lui   $at, %hi(D_800E6854) # $at, 0x800e
/* 056F48 80056348 00390821 */  addu  $at, $at, $t9
/* 056F4C 8005634C 8C396854 */  lw    $t9, %lo(D_800E6854)($at)
/* 056F50 80056350 00000000 */  nop   
/* 056F54 80056354 03200008 */  jr    $t9
/* 056F58 80056358 00000000 */   nop   
/* 056F5C 8005635C 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 056F60 80056360 44815000 */  mtc1  $at, $f10
/* 056F64 80056364 240200E5 */  li    $v0, 229
/* 056F68 80056368 100000B0 */  b     .L8005662C
/* 056F6C 8005636C E7AA0064 */   swc1  $f10, 0x64($sp)
/* 056F70 80056370 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 056F74 80056374 44819000 */  mtc1  $at, $f18
/* 056F78 80056378 100000AC */  b     .L8005662C
/* 056F7C 8005637C E7B20064 */   swc1  $f18, 0x64($sp)
/* 056F80 80056380 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 056F84 80056384 44818000 */  mtc1  $at, $f16
/* 056F88 80056388 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 056F8C 8005638C 44810000 */  mtc1  $at, $f0
/* 056F90 80056390 2402000E */  li    $v0, 14
/* 056F94 80056394 100000A5 */  b     .L8005662C
/* 056F98 80056398 E7B00064 */   swc1  $f16, 0x64($sp)
/* 056F9C 8005639C 820B01D6 */  lb    $t3, 0x1d6($s0)
/* 056FA0 800563A0 24010002 */  li    $at, 2
/* 056FA4 800563A4 11610003 */  beq   $t3, $at, .L800563B4
/* 056FA8 800563A8 240200EB */   li    $v0, 235
/* 056FAC 800563AC 10000001 */  b     .L800563B4
/* 056FB0 800563B0 24020082 */   li    $v0, 130
.L800563B4:
/* 056FB4 800563B4 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 056FB8 800563B8 44812000 */  mtc1  $at, $f4
/* 056FBC 800563BC 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 056FC0 800563C0 44810000 */  mtc1  $at, $f0
/* 056FC4 800563C4 10000099 */  b     .L8005662C
/* 056FC8 800563C8 E7A40064 */   swc1  $f4, 0x64($sp)
/* 056FCC 800563CC 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 056FD0 800563D0 44814000 */  mtc1  $at, $f8
/* 056FD4 800563D4 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 056FD8 800563D8 44810000 */  mtc1  $at, $f0
/* 056FDC 800563DC 2402002E */  li    $v0, 46
/* 056FE0 800563E0 00005025 */  move  $t2, $zero
/* 056FE4 800563E4 10000091 */  b     .L8005662C
/* 056FE8 800563E8 E7A80064 */   swc1  $f8, 0x64($sp)
/* 056FEC 800563EC 24010008 */  li    $at, 8
/* 056FF0 800563F0 11010009 */  beq   $t0, $at, .L80056418
/* 056FF4 800563F4 2401000F */   li    $at, 15
/* 056FF8 800563F8 1501000D */  bne   $t0, $at, .L80056430
/* 056FFC 800563FC 00000000 */   nop   
/* 057000 80056400 0C00322D */  jal   func_8000C8B4
/* 057004 80056404 2404004B */   li    $a0, 75
/* 057008 80056408 240D0002 */  li    $t5, 2
/* 05700C 8005640C A20D0203 */  sb    $t5, 0x203($s0)
/* 057010 80056410 1000000B */  b     .L80056440
/* 057014 80056414 A20201D3 */   sb    $v0, 0x1d3($s0)
.L80056418:
/* 057018 80056418 0C00322D */  jal   func_8000C8B4
/* 05701C 8005641C 24040037 */   li    $a0, 55
/* 057020 80056420 240E0001 */  li    $t6, 1
/* 057024 80056424 A20E0203 */  sb    $t6, 0x203($s0)
/* 057028 80056428 10000005 */  b     .L80056440
/* 05702C 8005642C A20201D3 */   sb    $v0, 0x1d3($s0)
.L80056430:
/* 057030 80056430 0C00322D */  jal   func_8000C8B4
/* 057034 80056434 24040023 */   li    $a0, 35
/* 057038 80056438 A20201D3 */  sb    $v0, 0x1d3($s0)
/* 05703C 8005643C A2000203 */  sb    $zero, 0x203($s0)
.L80056440:
/* 057040 80056440 920F020C */  lbu   $t7, 0x20c($s0)
/* 057044 80056444 00000000 */  nop   
/* 057048 80056448 11E00006 */  beqz  $t7, .L80056464
/* 05704C 8005644C 8FB90030 */   lw    $t9, 0x30($sp)
/* 057050 80056450 82180203 */  lb    $t8, 0x203($s0)
/* 057054 80056454 00000000 */  nop   
/* 057058 80056458 370C0004 */  ori   $t4, $t8, 4
/* 05705C 8005645C A20C0203 */  sb    $t4, 0x203($s0)
/* 057060 80056460 8FB90030 */  lw    $t9, 0x30($sp)
.L80056464:
/* 057064 80056464 2401000F */  li    $at, 15
/* 057068 80056468 1721000B */  bne   $t9, $at, .L80056498
/* 05706C 8005646C 8FA40088 */   lw    $a0, 0x88($sp)
/* 057070 80056470 8FA40088 */  lw    $a0, 0x88($sp)
/* 057074 80056474 0C015C12 */  jal   func_80057048
/* 057078 80056478 24050232 */   li    $a1, 562
/* 05707C 8005647C 8FA40088 */  lw    $a0, 0x88($sp)
/* 057080 80056480 24050233 */  li    $a1, 563
/* 057084 80056484 0C015C29 */  jal   func_800570A4
/* 057088 80056488 2406001E */   li    $a2, 30
/* 05708C 8005648C 10000005 */  b     .L800564A4
/* 057090 80056490 820B0173 */   lb    $t3, 0x173($s0)
/* 057094 80056494 8FA40088 */  lw    $a0, 0x88($sp)
.L80056498:
/* 057098 80056498 0C015C12 */  jal   func_80057048
/* 05709C 8005649C 24050021 */   li    $a1, 33
/* 0570A0 800564A0 820B0173 */  lb    $t3, 0x173($s0)
.L800564A4:
/* 0570A4 800564A4 24010004 */  li    $at, 4
/* 0570A8 800564A8 256DFFFF */  addiu $t5, $t3, -1
/* 0570AC 800564AC A20D0173 */  sb    $t5, 0x173($s0)
/* 0570B0 800564B0 8FAE0030 */  lw    $t6, 0x30($sp)
/* 0570B4 800564B4 00000000 */  nop   
/* 0570B8 800564B8 15C1000A */  bne   $t6, $at, .L800564E4
/* 0570BC 800564BC 00000000 */   nop   
/* 0570C0 800564C0 820F01D8 */  lb    $t7, 0x1d8($s0)
/* 0570C4 800564C4 00000000 */  nop   
/* 0570C8 800564C8 15E00116 */  bnez  $t7, .L80056924
/* 0570CC 800564CC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0570D0 800564D0 86040000 */  lh    $a0, ($s0)
/* 0570D4 800564D4 0C01C8D2 */  jal   func_80072348
/* 0570D8 800564D8 24050006 */   li    $a1, 6
/* 0570DC 800564DC 10000111 */  b     .L80056924
/* 0570E0 800564E0 8FBF0024 */   lw    $ra, 0x24($sp)
.L800564E4:
/* 0570E4 800564E4 821801D8 */  lb    $t8, 0x1d8($s0)
/* 0570E8 800564E8 00000000 */  nop   
/* 0570EC 800564EC 1700010D */  bnez  $t8, .L80056924
/* 0570F0 800564F0 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0570F4 800564F4 86040000 */  lh    $a0, ($s0)
/* 0570F8 800564F8 0C01C8D2 */  jal   func_80072348
/* 0570FC 800564FC 24050008 */   li    $a1, 8
/* 057100 80056500 10000108 */  b     .L80056924
/* 057104 80056504 8FBF0024 */   lw    $ra, 0x24($sp)
/* 057108 80056508 820C0173 */  lb    $t4, 0x173($s0)
/* 05710C 8005650C 860B0000 */  lh    $t3, ($s0)
/* 057110 80056510 2401FFFF */  li    $at, -1
/* 057114 80056514 2599FFFF */  addiu $t9, $t4, -1
/* 057118 80056518 11610101 */  beq   $t3, $at, .L80056920
/* 05711C 8005651C A2190173 */   sb    $t9, 0x173($s0)
/* 057120 80056520 11400005 */  beqz  $t2, .L80056538
/* 057124 80056524 240D005A */   li    $t5, 90
/* 057128 80056528 250EFFFB */  addiu $t6, $t0, -5
/* 05712C 8005652C 000E7843 */  sra   $t7, $t6, 1
/* 057130 80056530 A20D0175 */  sb    $t5, 0x175($s0)
/* 057134 80056534 A20F0184 */  sb    $t7, 0x184($s0)
.L80056538:
/* 057138 80056538 821801D8 */  lb    $t8, 0x1d8($s0)
/* 05713C 8005653C 00000000 */  nop   
/* 057140 80056540 170000F8 */  bnez  $t8, .L80056924
/* 057144 80056544 8FBF0024 */   lw    $ra, 0x24($sp)
/* 057148 80056548 86040000 */  lh    $a0, ($s0)
/* 05714C 8005654C 0C01C8D2 */  jal   func_80072348
/* 057150 80056550 2405000F */   li    $a1, 15
/* 057154 80056554 100000F3 */  b     .L80056924
/* 057158 80056558 8FBF0024 */   lw    $ra, 0x24($sp)
/* 05715C 8005655C 820C0173 */  lb    $t4, 0x173($s0)
/* 057160 80056560 860B0000 */  lh    $t3, ($s0)
/* 057164 80056564 2401FFFF */  li    $at, -1
/* 057168 80056568 2599FFFF */  addiu $t9, $t4, -1
/* 05716C 8005656C A2190173 */  sb    $t9, 0x173($s0)
/* 057170 80056570 116100EB */  beq   $t3, $at, .L80056920
/* 057174 80056574 AE000140 */   sw    $zero, 0x140($s0)
/* 057178 80056578 10E00008 */  beqz  $a3, .L8005659C
/* 05717C 8005657C 240D0001 */   li    $t5, 1
/* 057180 80056580 240E0078 */  li    $t6, 120
/* 057184 80056584 A0ED0195 */  sb    $t5, 0x195($a3)
/* 057188 80056588 A0EE0175 */  sb    $t6, 0x175($a3)
/* 05718C 8005658C 8FAF0088 */  lw    $t7, 0x88($sp)
/* 057190 80056590 24180002 */  li    $t8, 2
/* 057194 80056594 A0F80184 */  sb    $t8, 0x184($a3)
/* 057198 80056598 ACEF0140 */  sw    $t7, 0x140($a3)
.L8005659C:
/* 05719C 8005659C 820C01D8 */  lb    $t4, 0x1d8($s0)
/* 0571A0 800565A0 00000000 */  nop   
/* 0571A4 800565A4 158000DF */  bnez  $t4, .L80056924
/* 0571A8 800565A8 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0571AC 800565AC 86040000 */  lh    $a0, ($s0)
/* 0571B0 800565B0 0C01C8D2 */  jal   func_80072348
/* 0571B4 800565B4 2405000F */   li    $a1, 15
/* 0571B8 800565B8 100000DA */  b     .L80056924
/* 0571BC 800565BC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0571C0 800565C0 820D0173 */  lb    $t5, 0x173($s0)
/* 0571C4 800565C4 24190001 */  li    $t9, 1
/* 0571C8 800565C8 240B012C */  li    $t3, 300
/* 0571CC 800565CC 25AEFFFF */  addiu $t6, $t5, -1
/* 0571D0 800565D0 A2190189 */  sb    $t9, 0x189($s0)
/* 0571D4 800565D4 A60B018E */  sh    $t3, 0x18e($s0)
/* 0571D8 800565D8 100000D1 */  b     .L80056920
/* 0571DC 800565DC A20E0173 */   sb    $t6, 0x173($s0)
/* 0571E0 800565E0 82180173 */  lb    $t8, 0x173($s0)
/* 0571E4 800565E4 240F0002 */  li    $t7, 2
/* 0571E8 800565E8 24190258 */  li    $t9, 600
/* 0571EC 800565EC 270CFFFF */  addiu $t4, $t8, -1
/* 0571F0 800565F0 A20F0189 */  sb    $t7, 0x189($s0)
/* 0571F4 800565F4 A20C0173 */  sb    $t4, 0x173($s0)
/* 0571F8 800565F8 100000C9 */  b     .L80056920
/* 0571FC 800565FC A619018E */   sh    $t9, 0x18e($s0)
/* 057200 80056600 820E0173 */  lb    $t6, 0x173($s0)
/* 057204 80056604 240B0003 */  li    $t3, 3
/* 057208 80056608 240D0384 */  li    $t5, 900
/* 05720C 8005660C 25CFFFFF */  addiu $t7, $t6, -1
/* 057210 80056610 A20B0189 */  sb    $t3, 0x189($s0)
/* 057214 80056614 A60D018E */  sh    $t5, 0x18e($s0)
/* 057218 80056618 100000C1 */  b     .L80056920
/* 05721C 8005661C A20F0173 */   sb    $t7, 0x173($s0)
.L80056620:
/* 057220 80056620 44803000 */  mtc1  $zero, $f6
/* 057224 80056624 00000000 */  nop   
/* 057228 80056628 E7A60064 */  swc1  $f6, 0x64($sp)
.L8005662C:
/* 05722C 8005662C 8FA40088 */  lw    $a0, 0x88($sp)
/* 057230 80056630 24050162 */  li    $a1, 354
/* 057234 80056634 24060008 */  li    $a2, 8
/* 057238 80056638 24070081 */  li    $a3, 129
/* 05723C 8005663C AFA20074 */  sw    $v0, 0x74($sp)
/* 057240 80056640 AFA8007C */  sw    $t0, 0x7c($sp)
/* 057244 80056644 AFAA006C */  sw    $t2, 0x6c($sp)
/* 057248 80056648 0C015C2E */  jal   func_800570B8
/* 05724C 8005664C E7A00058 */   swc1  $f0, 0x58($sp)
/* 057250 80056650 C60A0038 */  lwc1  $f10, 0x38($s0)
/* 057254 80056654 C7B20064 */  lwc1  $f18, 0x64($sp)
/* 057258 80056658 8FA30088 */  lw    $v1, 0x88($sp)
/* 05725C 8005665C 46125402 */  mul.s $f16, $f10, $f18
/* 057260 80056660 C464000C */  lwc1  $f4, 0xc($v1)
/* 057264 80056664 8FA20074 */  lw    $v0, 0x74($sp)
/* 057268 80056668 240F0008 */  li    $t7, 8
/* 05726C 8005666C 46102200 */  add.s $f8, $f4, $f16
/* 057270 80056670 27A40080 */  addiu $a0, $sp, 0x80
/* 057274 80056674 4458F800 */  cfc1  $t8, $31
/* 057278 80056678 24050001 */  li    $a1, 1
/* 05727C 8005667C 37010003 */  ori   $at, $t8, 3
/* 057280 80056680 38210002 */  xori  $at, $at, 2
/* 057284 80056684 44C1F800 */  ctc1  $at, $31
/* 057288 80056688 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 05728C 8005668C 460041A4 */  cvt.w.s $f6, $f8
/* 057290 80056690 440C3000 */  mfc1  $t4, $f6
/* 057294 80056694 44D8F800 */  ctc1  $t8, $31
/* 057298 80056698 A7AC0082 */  sh    $t4, 0x82($sp)
/* 05729C 8005669C C60A003C */  lwc1  $f10, 0x3c($s0)
/* 0572A0 800566A0 C4700010 */  lwc1  $f16, 0x10($v1)
/* 0572A4 800566A4 46125102 */  mul.s $f4, $f10, $f18
/* 0572A8 800566A8 C60A0048 */  lwc1  $f10, 0x48($s0)
/* 0572AC 800566AC 44813000 */  mtc1  $at, $f6
/* 0572B0 800566B0 46048200 */  add.s $f8, $f16, $f4
/* 0572B4 800566B4 460A3402 */  mul.s $f16, $f6, $f10
/* 0572B8 800566B8 46104100 */  add.s $f4, $f8, $f16
/* 0572BC 800566BC 4459F800 */  cfc1  $t9, $31
/* 0572C0 800566C0 00000000 */  nop   
/* 0572C4 800566C4 37210003 */  ori   $at, $t9, 3
/* 0572C8 800566C8 38210002 */  xori  $at, $at, 2
/* 0572CC 800566CC 44C1F800 */  ctc1  $at, $31
/* 0572D0 800566D0 00000000 */  nop   
/* 0572D4 800566D4 460021A4 */  cvt.w.s $f6, $f4
/* 0572D8 800566D8 440B3000 */  mfc1  $t3, $f6
/* 0572DC 800566DC 44D9F800 */  ctc1  $t9, $31
/* 0572E0 800566E0 A7AB0084 */  sh    $t3, 0x84($sp)
/* 0572E4 800566E4 C60A0040 */  lwc1  $f10, 0x40($s0)
/* 0572E8 800566E8 C4700014 */  lwc1  $f16, 0x14($v1)
/* 0572EC 800566EC 46125202 */  mul.s $f8, $f10, $f18
/* 0572F0 800566F0 A3AF0081 */  sb    $t7, 0x81($sp)
/* 0572F4 800566F4 A3A20080 */  sb    $v0, 0x80($sp)
/* 0572F8 800566F8 46088100 */  add.s $f4, $f16, $f8
/* 0572FC 800566FC 444DF800 */  cfc1  $t5, $31
/* 057300 80056700 00000000 */  nop   
/* 057304 80056704 35A10003 */  ori   $at, $t5, 3
/* 057308 80056708 38210002 */  xori  $at, $at, 2
/* 05730C 8005670C 44C1F800 */  ctc1  $at, $31
/* 057310 80056710 00000000 */  nop   
/* 057314 80056714 460021A4 */  cvt.w.s $f6, $f4
/* 057318 80056718 440E3000 */  mfc1  $t6, $f6
/* 05731C 8005671C 44CDF800 */  ctc1  $t5, $31
/* 057320 80056720 0C003A95 */  jal   func_8000EA54
/* 057324 80056724 A7AE0086 */   sh    $t6, 0x86($sp)
/* 057328 80056728 8FA8007C */  lw    $t0, 0x7c($sp)
/* 05732C 8005672C 8FAA006C */  lw    $t2, 0x6c($sp)
/* 057330 80056730 C7A00058 */  lwc1  $f0, 0x58($sp)
/* 057334 80056734 10400073 */  beqz  $v0, .L80056904
/* 057338 80056738 00000000 */   nop   
/* 05733C 8005673C 8FA90088 */  lw    $t1, 0x88($sp)
/* 057340 80056740 AC40003C */  sw    $zero, 0x3c($v0)
/* 057344 80056744 C6120038 */  lwc1  $f18, 0x38($s0)
/* 057348 80056748 C52A001C */  lwc1  $f10, 0x1c($t1)
/* 05734C 8005674C 46009402 */  mul.s $f16, $f18, $f0
/* 057350 80056750 24010001 */  li    $at, 1
/* 057354 80056754 46105201 */  sub.s $f8, $f10, $f16
/* 057358 80056758 E448001C */  swc1  $f8, 0x1c($v0)
/* 05735C 8005675C C606003C */  lwc1  $f6, 0x3c($s0)
/* 057360 80056760 C5240020 */  lwc1  $f4, 0x20($t1)
/* 057364 80056764 46003482 */  mul.s $f18, $f6, $f0
/* 057368 80056768 46122281 */  sub.s $f10, $f4, $f18
/* 05736C 8005676C E44A0020 */  swc1  $f10, 0x20($v0)
/* 057370 80056770 C6080040 */  lwc1  $f8, 0x40($s0)
/* 057374 80056774 C5300024 */  lwc1  $f16, 0x24($t1)
/* 057378 80056778 46004182 */  mul.s $f6, $f8, $f0
/* 05737C 8005677C 46068101 */  sub.s $f4, $f16, $f6
/* 057380 80056780 E4440024 */  swc1  $f4, 0x24($v0)
/* 057384 80056784 85380000 */  lh    $t8, ($t1)
/* 057388 80056788 00000000 */  nop   
/* 05738C 8005678C A4580000 */  sh    $t8, ($v0)
/* 057390 80056790 852C0002 */  lh    $t4, 2($t1)
/* 057394 80056794 00000000 */  nop   
/* 057398 80056798 A44C0002 */  sh    $t4, 2($v0)
/* 05739C 8005679C 821901D6 */  lb    $t9, 0x1d6($s0)
/* 0573A0 800567A0 00000000 */  nop   
/* 0573A4 800567A4 1721000D */  bne   $t9, $at, .L800567DC
/* 0573A8 800567A8 00000000 */   nop   
/* 0573AC 800567AC 820B01E5 */  lb    $t3, 0x1e5($s0)
/* 0573B0 800567B0 00000000 */  nop   
/* 0573B4 800567B4 11600009 */  beqz  $t3, .L800567DC
/* 0573B8 800567B8 00000000 */   nop   
/* 0573BC 800567BC 84430002 */  lh    $v1, 2($v0)
/* 0573C0 800567C0 00000000 */  nop   
/* 0573C4 800567C4 2861FC01 */  slti  $at, $v1, -0x3ff
/* 0573C8 800567C8 14200004 */  bnez  $at, .L800567DC
/* 0573CC 800567CC 28610400 */   slti  $at, $v1, 0x400
/* 0573D0 800567D0 10200002 */  beqz  $at, .L800567DC
/* 0573D4 800567D4 00000000 */   nop   
/* 0573D8 800567D8 A4400002 */  sh    $zero, 2($v0)
.L800567DC:
/* 0573DC 800567DC 8C430064 */  lw    $v1, 0x64($v0)
/* 0573E0 800567E0 310E00FF */  andi  $t6, $t0, 0xff
/* 0573E4 800567E4 AC690004 */  sw    $t1, 4($v1)
/* 0573E8 800567E8 AC6A0000 */  sw    $t2, ($v1)
/* 0573EC 800567EC 820D0192 */  lb    $t5, 0x192($s0)
/* 0573F0 800567F0 2DC1000C */  sltiu $at, $t6, 0xc
/* 0573F4 800567F4 A06D0019 */  sb    $t5, 0x19($v1)
/* 0573F8 800567F8 C612002C */  lwc1  $f18, 0x2c($s0)
/* 0573FC 800567FC A0680018 */  sb    $t0, 0x18($v1)
/* 057400 80056800 46009281 */  sub.s $f10, $f18, $f0
/* 057404 80056804 1020001F */  beqz  $at, .L80056884
/* 057408 80056808 E46A0010 */   swc1  $f10, 0x10($v1)
/* 05740C 8005680C 000E7080 */  sll   $t6, $t6, 2
/* 057410 80056810 3C01800E */  lui   $at, %hi(D_800E6894) # $at, 0x800e
/* 057414 80056814 002E0821 */  addu  $at, $at, $t6
/* 057418 80056818 8C2E6894 */  lw    $t6, %lo(D_800E6894)($at)
/* 05741C 8005681C 00000000 */  nop   
/* 057420 80056820 01C00008 */  jr    $t6
/* 057424 80056824 00000000 */   nop   
/* 057428 80056828 240F0134 */  li    $t7, 308
/* 05742C 8005682C 10000015 */  b     .L80056884
/* 057430 80056830 A7AF003A */   sh    $t7, 0x3a($sp)
/* 057434 80056834 24180135 */  li    $t8, 309
/* 057438 80056838 10000012 */  b     .L80056884
/* 05743C 8005683C A7B8003A */   sh    $t8, 0x3a($sp)
/* 057440 80056840 240C000F */  li    $t4, 15
/* 057444 80056844 1000000F */  b     .L80056884
/* 057448 80056848 A7AC003A */   sh    $t4, 0x3a($sp)
/* 05744C 8005684C 821901D6 */  lb    $t9, 0x1d6($s0)
/* 057450 80056850 24010002 */  li    $at, 2
/* 057454 80056854 13210005 */  beq   $t9, $at, .L8005686C
/* 057458 80056858 240D0151 */   li    $t5, 337
/* 05745C 8005685C 44804000 */  mtc1  $zero, $f8
/* 057460 80056860 8C4B0050 */  lw    $t3, 0x50($v0)
/* 057464 80056864 00000000 */  nop   
/* 057468 80056868 E5680000 */  swc1  $f8, ($t3)
.L8005686C:
/* 05746C 8005686C 10000005 */  b     .L80056884
/* 057470 80056870 A7AD003A */   sh    $t5, 0x3a($sp)
/* 057474 80056874 240E000F */  li    $t6, 15
/* 057478 80056878 10000002 */  b     .L80056884
/* 05747C 8005687C A7AE003A */   sh    $t6, 0x3a($sp)
/* 057480 80056880 A4400018 */  sh    $zero, 0x18($v0)
.L80056884:
/* 057484 80056884 97AF003A */  lhu   $t7, 0x3a($sp)
/* 057488 80056888 00000000 */  nop   
/* 05748C 8005688C 11E0001D */  beqz  $t7, .L80056904
/* 057490 80056890 00000000 */   nop   
/* 057494 80056894 86180000 */  lh    $t8, ($s0)
/* 057498 80056898 2401FFFF */  li    $at, -1
/* 05749C 8005689C 1701000A */  bne   $t8, $at, .L800568C8
/* 0574A0 800568A0 01E02025 */   move  $a0, $t7
/* 0574A4 800568A4 8D25000C */  lw    $a1, 0xc($t1)
/* 0574A8 800568A8 8D260010 */  lw    $a2, 0x10($t1)
/* 0574AC 800568AC 8D270014 */  lw    $a3, 0x14($t1)
/* 0574B0 800568B0 240C0004 */  li    $t4, 4
/* 0574B4 800568B4 AFAC0010 */  sw    $t4, 0x10($sp)
/* 0574B8 800568B8 0C002556 */  jal   func_80009558
/* 0574BC 800568BC AFA00014 */   sw    $zero, 0x14($sp)
/* 0574C0 800568C0 10000011 */  b     .L80056908
/* 0574C4 800568C4 82020173 */   lb    $v0, 0x173($s0)
.L800568C8:
/* 0574C8 800568C8 8E040218 */  lw    $a0, 0x218($s0)
/* 0574CC 800568CC 00000000 */  nop   
/* 0574D0 800568D0 10800005 */  beqz  $a0, .L800568E8
/* 0574D4 800568D4 00000000 */   nop   
/* 0574D8 800568D8 0C001223 */  jal   func_8000488C
/* 0574DC 800568DC 00000000 */   nop   
/* 0574E0 800568E0 8FA90088 */  lw    $t1, 0x88($sp)
/* 0574E4 800568E4 00000000 */  nop   
.L800568E8:
/* 0574E8 800568E8 97A4003A */  lhu   $a0, 0x3a($sp)
/* 0574EC 800568EC 8D25000C */  lw    $a1, 0xc($t1)
/* 0574F0 800568F0 8D260010 */  lw    $a2, 0x10($t1)
/* 0574F4 800568F4 8D270014 */  lw    $a3, 0x14($t1)
/* 0574F8 800568F8 26190218 */  addiu $t9, $s0, 0x218
/* 0574FC 800568FC 0C0007AA */  jal   func_80001EA8
/* 057500 80056900 AFB90010 */   sw    $t9, 0x10($sp)
.L80056904:
/* 057504 80056904 82020173 */  lb    $v0, 0x173($s0)
.L80056908:
/* 057508 80056908 00000000 */  nop   
/* 05750C 8005690C 18400003 */  blez  $v0, .L8005691C
/* 057510 80056910 244BFFFF */   addiu $t3, $v0, -1
/* 057514 80056914 10000002 */  b     .L80056920
/* 057518 80056918 A20B0173 */   sb    $t3, 0x173($s0)
.L8005691C:
/* 05751C 8005691C A2000173 */  sb    $zero, 0x173($s0)
.L80056920:
/* 057520 80056920 8FBF0024 */  lw    $ra, 0x24($sp)
.L80056924:
/* 057524 80056924 8FB00020 */  lw    $s0, 0x20($sp)
/* 057528 80056928 03E00008 */  jr    $ra
/* 05752C 8005692C 27BD0088 */   addiu $sp, $sp, 0x88

