glabel func_80067D3C
/* 06893C 80067D3C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 068940 80067D40 AFBF0014 */  sw    $ra, 0x14($sp)
/* 068944 80067D44 AFA50024 */  sw    $a1, 0x24($sp)
/* 068948 80067D48 8C830000 */  lw    $v1, ($a0)
/* 06894C 80067D4C 3C0FB400 */  lui   $t7, 0xb400
/* 068950 80067D50 246E0008 */  addiu $t6, $v1, 8
/* 068954 80067D54 AC8E0000 */  sw    $t6, ($a0)
/* 068958 80067D58 3C188012 */  lui   $t8, %hi(D_80120D6C) # $t8, 0x8012
/* 06895C 80067D5C AC6F0000 */  sw    $t7, ($v1)
/* 068960 80067D60 97180D6C */  lhu   $t8, %lo(D_80120D6C)($t8)
/* 068964 80067D64 3C068012 */  lui   $a2, %hi(D_80120CE4) # $a2, 0x8012
/* 068968 80067D68 AC780004 */  sw    $t8, 4($v1)
/* 06896C 80067D6C 24C60CE4 */  addiu $a2, %lo(D_80120CE4) # addiu $a2, $a2, 0xce4
/* 068970 80067D70 3C198012 */  lui   $t9, %hi(D_80120D14) # $t9, 0x8012
/* 068974 80067D74 8CC50000 */  lw    $a1, ($a2)
/* 068978 80067D78 83390D14 */  lb    $t9, %lo(D_80120D14)($t9)
/* 06897C 80067D7C 3C078012 */  lui   $a3, %hi(D_80120CF0) # $a3, 0x8012
/* 068980 80067D80 13200004 */  beqz  $t9, .L80067D94
/* 068984 80067D84 AFA5001C */   sw    $a1, 0x1c($sp)
/* 068988 80067D88 24A80004 */  addiu $t0, $a1, 4
/* 06898C 80067D8C ACC80000 */  sw    $t0, ($a2)
/* 068990 80067D90 01002825 */  move  $a1, $t0
.L80067D94:
/* 068994 80067D94 00054900 */  sll   $t1, $a1, 4
/* 068998 80067D98 01254821 */  addu  $t1, $t1, $a1
/* 06899C 80067D9C 3C0A8012 */  lui   $t2, %hi(D_80120AC0) # $t2, 0x8012
/* 0689A0 80067DA0 254A0AC0 */  addiu $t2, %lo(D_80120AC0) # addiu $t2, $t2, 0xac0
/* 0689A4 80067DA4 00094880 */  sll   $t1, $t1, 2
/* 0689A8 80067DA8 012A1021 */  addu  $v0, $t1, $t2
/* 0689AC 80067DAC 24E70CF0 */  addiu $a3, %lo(D_80120CF0) # addiu $a3, $a3, 0xcf0
/* 0689B0 80067DB0 844B0000 */  lh    $t3, ($v0)
/* 0689B4 80067DB4 844D0038 */  lh    $t5, 0x38($v0)
/* 0689B8 80067DB8 844E0002 */  lh    $t6, 2($v0)
/* 0689BC 80067DBC C444000C */  lwc1  $f4, 0xc($v0)
/* 0689C0 80067DC0 C4480010 */  lwc1  $f8, 0x10($v0)
/* 0689C4 80067DC4 84580004 */  lh    $t8, 4($v0)
/* 0689C8 80067DC8 34018000 */  li    $at, 32768
/* 0689CC 80067DCC 01616021 */  addu  $t4, $t3, $at
/* 0689D0 80067DD0 01AE7821 */  addu  $t7, $t5, $t6
/* 0689D4 80067DD4 46002187 */  neg.s $f6, $f4
/* 0689D8 80067DD8 46004287 */  neg.s $f10, $f8
/* 0689DC 80067DDC A4EC0000 */  sh    $t4, ($a3)
/* 0689E0 80067DE0 A4EF0002 */  sh    $t7, 2($a3)
/* 0689E4 80067DE4 E4E6000C */  swc1  $f6, 0xc($a3)
/* 0689E8 80067DE8 E4EA0010 */  swc1  $f10, 0x10($a3)
/* 0689EC 80067DEC 3C198012 */  lui   $t9, %hi(D_80120D18) # $t9, 0x8012
/* 0689F0 80067DF0 A4F80004 */  sh    $t8, 4($a3)
/* 0689F4 80067DF4 8F390D18 */  lw    $t9, %lo(D_80120D18)($t9)
/* 0689F8 80067DF8 3C048012 */  lui   $a0, %hi(D_80120F60) # $a0, 0x8012
/* 0689FC 80067DFC 13200006 */  beqz  $t9, .L80067E18
/* 068A00 80067E00 24840F60 */   addiu $a0, %lo(D_80120F60) # addiu $a0, $a0, 0xf60
/* 068A04 80067E04 C4F00010 */  lwc1  $f16, 0x10($a3)
/* 068A08 80067E08 C4520030 */  lwc1  $f18, 0x30($v0)
/* 068A0C 80067E0C 00000000 */  nop   
/* 068A10 80067E10 46128101 */  sub.s $f4, $f16, $f18
/* 068A14 80067E14 E4E40010 */  swc1  $f4, 0x10($a3)
.L80067E18:
/* 068A18 80067E18 C4460014 */  lwc1  $f6, 0x14($v0)
/* 068A1C 80067E1C 00E02825 */  move  $a1, $a3
/* 068A20 80067E20 46003207 */  neg.s $f8, $f6
/* 068A24 80067E24 0C01BF9D */  jal   func_8006FE74
/* 068A28 80067E28 E4E80014 */   swc1  $f8, 0x14($a3)
/* 068A2C 80067E2C 3C048012 */  lui   $a0, %hi(D_80120F60) # $a0, 0x8012
/* 068A30 80067E30 3C058012 */  lui   $a1, %hi(D_80120EE0) # $a1, 0x8012
/* 068A34 80067E34 3C068012 */  lui   $a2, %hi(D_80120F20) # $a2, 0x8012
/* 068A38 80067E38 24C60F20 */  addiu $a2, %lo(D_80120F20) # addiu $a2, $a2, 0xf20
/* 068A3C 80067E3C 24A50EE0 */  addiu $a1, %lo(D_80120EE0) # addiu $a1, $a1, 0xee0
/* 068A40 80067E40 0C01BDDA */  jal   func_8006F768
/* 068A44 80067E44 24840F60 */   addiu $a0, %lo(D_80120F60) # addiu $a0, $a0, 0xf60
/* 068A48 80067E48 3C088012 */  lui   $t0, %hi(D_80120CE4) # $t0, 0x8012
/* 068A4C 80067E4C 8D080CE4 */  lw    $t0, %lo(D_80120CE4)($t0)
/* 068A50 80067E50 3C0A8012 */  lui   $t2, %hi(D_80120AC0) # $t2, 0x8012
/* 068A54 80067E54 00084900 */  sll   $t1, $t0, 4
/* 068A58 80067E58 01284821 */  addu  $t1, $t1, $t0
/* 068A5C 80067E5C 00094880 */  sll   $t1, $t1, 2
/* 068A60 80067E60 254A0AC0 */  addiu $t2, %lo(D_80120AC0) # addiu $t2, $t2, 0xac0
/* 068A64 80067E64 012A1021 */  addu  $v0, $t1, $t2
/* 068A68 80067E68 3C078012 */  lui   $a3, %hi(D_80120CF0) # $a3, 0x8012
/* 068A6C 80067E6C 24E70CF0 */  addiu $a3, %lo(D_80120CF0) # addiu $a3, $a3, 0xcf0
/* 068A70 80067E70 844E0038 */  lh    $t6, 0x38($v0)
/* 068A74 80067E74 844F0002 */  lh    $t7, 2($v0)
/* 068A78 80067E78 844B0000 */  lh    $t3, ($v0)
/* 068A7C 80067E7C 84480004 */  lh    $t0, 4($v0)
/* 068A80 80067E80 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 068A84 80067E84 44815000 */  mtc1  $at, $f10
/* 068A88 80067E88 C450000C */  lwc1  $f16, 0xc($v0)
/* 068A8C 80067E8C C4520010 */  lwc1  $f18, 0x10($v0)
/* 068A90 80067E90 240C8000 */  li    $t4, -32768
/* 068A94 80067E94 01CFC021 */  addu  $t8, $t6, $t7
/* 068A98 80067E98 0018C823 */  negu  $t9, $t8
/* 068A9C 80067E9C 018B6823 */  subu  $t5, $t4, $t3
/* 068AA0 80067EA0 00084823 */  negu  $t1, $t0
/* 068AA4 80067EA4 A4ED0000 */  sh    $t5, ($a3)
/* 068AA8 80067EA8 A4F90002 */  sh    $t9, 2($a3)
/* 068AAC 80067EAC A4E90004 */  sh    $t1, 4($a3)
/* 068AB0 80067EB0 3C0A8012 */  lui   $t2, %hi(D_80120D18) # $t2, 0x8012
/* 068AB4 80067EB4 E4EA0008 */  swc1  $f10, 8($a3)
/* 068AB8 80067EB8 E4F0000C */  swc1  $f16, 0xc($a3)
/* 068ABC 80067EBC E4F20010 */  swc1  $f18, 0x10($a3)
/* 068AC0 80067EC0 8D4A0D18 */  lw    $t2, %lo(D_80120D18)($t2)
/* 068AC4 80067EC4 3C048012 */  lui   $a0, %hi(D_80120FA0) # $a0, 0x8012
/* 068AC8 80067EC8 11400006 */  beqz  $t2, .L80067EE4
/* 068ACC 80067ECC 24840FA0 */   addiu $a0, %lo(D_80120FA0) # addiu $a0, $a0, 0xfa0
/* 068AD0 80067ED0 C4E40010 */  lwc1  $f4, 0x10($a3)
/* 068AD4 80067ED4 C4460030 */  lwc1  $f6, 0x30($v0)
/* 068AD8 80067ED8 00000000 */  nop   
/* 068ADC 80067EDC 46062200 */  add.s $f8, $f4, $f6
/* 068AE0 80067EE0 E4E80010 */  swc1  $f8, 0x10($a3)
.L80067EE4:
/* 068AE4 80067EE4 C44A0014 */  lwc1  $f10, 0x14($v0)
/* 068AE8 80067EE8 00E02825 */  move  $a1, $a3
/* 068AEC 80067EEC 0C01BF0C */  jal   func_8006FC30
/* 068AF0 80067EF0 E4EA0014 */   swc1  $f10, 0x14($a3)
/* 068AF4 80067EF4 3C048012 */  lui   $a0, %hi(D_80120FA0) # $a0, 0x8012
/* 068AF8 80067EF8 3C058012 */  lui   $a1, %hi(D_80121020) # $a1, 0x8012
/* 068AFC 80067EFC 24A51020 */  addiu $a1, %lo(D_80121020) # addiu $a1, $a1, 0x1020
/* 068B00 80067F00 0C01BE1C */  jal   func_8006F870
/* 068B04 80067F04 24840FA0 */   addiu $a0, %lo(D_80120FA0) # addiu $a0, $a0, 0xfa0
/* 068B08 80067F08 8FAC001C */  lw    $t4, 0x1c($sp)
/* 068B0C 80067F0C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 068B10 80067F10 3C018012 */  lui   $at, %hi(D_80120CE4) # $at, 0x8012
/* 068B14 80067F14 27BD0020 */  addiu $sp, $sp, 0x20
/* 068B18 80067F18 03E00008 */  jr    $ra
/* 068B1C 80067F1C AC2C0CE4 */   sw    $t4, %lo(D_80120CE4)($at)

