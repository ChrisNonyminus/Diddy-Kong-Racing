glabel func_80078D00
/* 079900 80078D00 27BDFF50 */  addiu $sp, $sp, -0xb0
/* 079904 80078D04 AFBF003C */  sw    $ra, 0x3c($sp)
/* 079908 80078D08 AFB20020 */  sw    $s2, 0x20($sp)
/* 07990C 80078D0C AFB00018 */  sw    $s0, 0x18($sp)
/* 079910 80078D10 00808025 */  move  $s0, $a0
/* 079914 80078D14 00A09025 */  move  $s2, $a1
/* 079918 80078D18 AFBE0038 */  sw    $fp, 0x38($sp)
/* 07991C 80078D1C AFB70034 */  sw    $s7, 0x34($sp)
/* 079920 80078D20 AFB60030 */  sw    $s6, 0x30($sp)
/* 079924 80078D24 AFB5002C */  sw    $s5, 0x2c($sp)
/* 079928 80078D28 AFB40028 */  sw    $s4, 0x28($sp)
/* 07992C 80078D2C AFB30024 */  sw    $s3, 0x24($sp)
/* 079930 80078D30 AFB1001C */  sw    $s1, 0x1c($sp)
/* 079934 80078D34 AFA600B8 */  sw    $a2, 0xb8($sp)
/* 079938 80078D38 0C01E948 */  jal   get_video_width_and_height_as_s32
/* 07993C 80078D3C AFA700BC */   sw    $a3, 0xbc($sp)
/* 079940 80078D40 8FA900C8 */  lw    $t1, 0xc8($sp)
/* 079944 80078D44 240100FF */  li    $at, 255
/* 079948 80078D48 312E00FF */  andi  $t6, $t1, 0xff
/* 07994C 80078D4C 15C10009 */  bne   $t6, $at, .L80078D74
/* 079950 80078D50 8FA800CC */   lw    $t0, 0xcc($sp)
/* 079954 80078D54 8FA800CC */  lw    $t0, 0xcc($sp)
/* 079958 80078D58 3C0E800E */  lui   $t6, %hi(D_800DE6A8) # $t6, 0x800e
/* 07995C 80078D5C 311800FF */  andi  $t8, $t0, 0xff
/* 079960 80078D60 0018C900 */  sll   $t9, $t8, 4
/* 079964 80078D64 25CEE6A8 */  addiu $t6, %lo(D_800DE6A8) # addiu $t6, $t6, -0x1958
/* 079968 80078D68 10000007 */  b     .L80078D88
/* 07996C 80078D6C 032E3821 */   addu  $a3, $t9, $t6
/* 079970 80078D70 8FA800CC */  lw    $t0, 0xcc($sp)
.L80078D74:
/* 079974 80078D74 3C0E800E */  lui   $t6, %hi(D_800DE6E8) # $t6, 0x800e
/* 079978 80078D78 311800FF */  andi  $t8, $t0, 0xff
/* 07997C 80078D7C 0018C900 */  sll   $t9, $t8, 4
/* 079980 80078D80 25CEE6E8 */  addiu $t6, %lo(D_800DE6E8) # addiu $t6, $t6, -0x1918
/* 079984 80078D84 032E3821 */  addu  $a3, $t9, $t6
.L80078D88:
/* 079988 80078D88 8E040000 */  lw    $a0, ($s0)
/* 07998C 80078D8C C7A000C0 */  lwc1  $f0, 0xc0($sp)
/* 079990 80078D90 248F0008 */  addiu $t7, $a0, 8
/* 079994 80078D94 AE0F0000 */  sw    $t7, ($s0)
/* 079998 80078D98 3C19800E */  lui   $t9, %hi(D_800DE670) # $t9, 0x800e
/* 07999C 80078D9C 2739E670 */  addiu $t9, %lo(D_800DE670) # addiu $t9, $t9, -0x1990
/* 0799A0 80078DA0 3C180600 */  lui   $t8, 0x600
/* 0799A4 80078DA4 AC980000 */  sw    $t8, ($a0)
/* 0799A8 80078DA8 AC990004 */  sw    $t9, 4($a0)
/* 0799AC 80078DAC 8E050000 */  lw    $a1, ($s0)
/* 0799B0 80078DB0 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 0799B4 80078DB4 44816000 */  mtc1  $at, $f12
/* 0799B8 80078DB8 24AE0008 */  addiu $t6, $a1, 8
/* 0799BC 80078DBC AE0E0000 */  sw    $t6, ($s0)
/* 0799C0 80078DC0 3C018000 */  lui   $at, 0x8000
/* 0799C4 80078DC4 3C0F0702 */  lui   $t7, (0x07020010 >> 16) # lui $t7, 0x702
/* 0799C8 80078DC8 35EF0010 */  ori   $t7, (0x07020010 & 0xFFFF) # ori $t7, $t7, 0x10
/* 0799CC 80078DCC 00E1C021 */  addu  $t8, $a3, $at
/* 0799D0 80078DD0 ACB80004 */  sw    $t8, 4($a1)
/* 0799D4 80078DD4 ACAF0000 */  sw    $t7, ($a1)
/* 0799D8 80078DD8 8E060000 */  lw    $a2, ($s0)
/* 0799DC 80078DDC 3C0EFA00 */  lui   $t6, 0xfa00
/* 0799E0 80078DE0 24D90008 */  addiu $t9, $a2, 8
/* 0799E4 80078DE4 AE190000 */  sw    $t9, ($s0)
/* 0799E8 80078DE8 460C0002 */  mul.s $f0, $f0, $f12
/* 0799EC 80078DEC ACC90004 */  sw    $t1, 4($a2)
/* 0799F0 80078DF0 ACCE0000 */  sw    $t6, ($a2)
/* 0799F4 80078DF4 C7A200C4 */  lwc1  $f2, 0xc4($sp)
/* 0799F8 80078DF8 8E5F0000 */  lw    $ra, ($s2)
/* 0799FC 80078DFC 460C1082 */  mul.s $f2, $f2, $f12
/* 079A00 80078E00 13E00137 */  beqz  $ra, .L800792E0
/* 079A04 80078E04 3C014080 */   li    $at, 0x40800000 # 4.000000
/* 079A08 80078E08 C7A400B8 */  lwc1  $f4, 0xb8($sp)
/* 079A0C 80078E0C 44813000 */  mtc1  $at, $f6
/* 079A10 80078E10 C7B000BC */  lwc1  $f16, 0xbc($sp)
/* 079A14 80078E14 46062202 */  mul.s $f8, $f4, $f6
/* 079A18 80078E18 304FFFFF */  andi  $t7, $v0, 0xffff
/* 079A1C 80078E1C 02408825 */  move  $s1, $s2
/* 079A20 80078E20 000FC080 */  sll   $t8, $t7, 2
/* 079A24 80078E24 4459F800 */  cfc1  $t9, $31
/* 079A28 80078E28 8FB20080 */  lw    $s2, 0x80($sp)
/* 079A2C 80078E2C 37210003 */  ori   $at, $t9, 3
/* 079A30 80078E30 38210002 */  xori  $at, $at, 2
/* 079A34 80078E34 44C1F800 */  ctc1  $at, $31
/* 079A38 80078E38 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 079A3C 80078E3C 460042A4 */  cvt.w.s $f10, $f8
/* 079A40 80078E40 44819000 */  mtc1  $at, $f18
/* 079A44 80078E44 44D9F800 */  ctc1  $t9, $31
/* 079A48 80078E48 44175000 */  mfc1  $s7, $f10
/* 079A4C 80078E4C 46128102 */  mul.s $f4, $f16, $f18
/* 079A50 80078E50 8FB3007C */  lw    $s3, 0x7c($sp)
/* 079A54 80078E54 AFB80044 */  sw    $t8, 0x44($sp)
/* 079A58 80078E58 31151000 */  andi  $s5, $t0, 0x1000
/* 079A5C 80078E5C 444EF800 */  cfc1  $t6, $31
/* 079A60 80078E60 31162000 */  andi  $s6, $t0, 0x2000
/* 079A64 80078E64 35C10003 */  ori   $at, $t6, 3
/* 079A68 80078E68 38210002 */  xori  $at, $at, 2
/* 079A6C 80078E6C 44C1F800 */  ctc1  $at, $31
/* 079A70 80078E70 00000000 */  nop   
/* 079A74 80078E74 460021A4 */  cvt.w.s $f6, $f4
/* 079A78 80078E78 44CEF800 */  ctc1  $t6, $31
/* 079A7C 80078E7C 441E3000 */  mfc1  $fp, $f6
/* 079A80 80078E80 00000000 */  nop   
.L80078E84:
/* 079A84 80078E84 16A00012 */  bnez  $s5, .L80078ED0
/* 079A88 80078E88 00000000 */   nop   
/* 079A8C 80078E8C 862F0004 */  lh    $t7, 4($s1)
/* 079A90 80078E90 00000000 */  nop   
/* 079A94 80078E94 448F4000 */  mtc1  $t7, $f8
/* 079A98 80078E98 00000000 */  nop   
/* 079A9C 80078E9C 468042A0 */  cvt.s.w $f10, $f8
/* 079AA0 80078EA0 46005402 */  mul.s $f16, $f10, $f0
/* 079AA4 80078EA4 4458F800 */  cfc1  $t8, $31
/* 079AA8 80078EA8 00000000 */  nop   
/* 079AAC 80078EAC 37010003 */  ori   $at, $t8, 3
/* 079AB0 80078EB0 38210002 */  xori  $at, $at, 2
/* 079AB4 80078EB4 44C1F800 */  ctc1  $at, $31
/* 079AB8 80078EB8 00000000 */  nop   
/* 079ABC 80078EBC 460084A4 */  cvt.w.s $f18, $f16
/* 079AC0 80078EC0 44199000 */  mfc1  $t9, $f18
/* 079AC4 80078EC4 44D8F800 */  ctc1  $t8, $31
/* 079AC8 80078EC8 10000022 */  b     .L80078F54
/* 079ACC 80078ECC 03375821 */   addu  $t3, $t9, $s7
.L80078ED0:
/* 079AD0 80078ED0 862E0004 */  lh    $t6, 4($s1)
/* 079AD4 80078ED4 93F90000 */  lbu   $t9, ($ra)
/* 079AD8 80078ED8 448E2000 */  mtc1  $t6, $f4
/* 079ADC 80078EDC 44998000 */  mtc1  $t9, $f16
/* 079AE0 80078EE0 468021A0 */  cvt.s.w $f6, $f4
/* 079AE4 80078EE4 46003202 */  mul.s $f8, $f6, $f0
/* 079AE8 80078EE8 444FF800 */  cfc1  $t7, $31
/* 079AEC 80078EEC 00000000 */  nop   
/* 079AF0 80078EF0 35E10003 */  ori   $at, $t7, 3
/* 079AF4 80078EF4 38210002 */  xori  $at, $at, 2
/* 079AF8 80078EF8 44C1F800 */  ctc1  $at, $31
/* 079AFC 80078EFC 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 079B00 80078F00 460042A4 */  cvt.w.s $f10, $f8
/* 079B04 80078F04 44185000 */  mfc1  $t8, $f10
/* 079B08 80078F08 44CFF800 */  ctc1  $t7, $31
/* 079B0C 80078F0C 02F89023 */  subu  $s2, $s7, $t8
/* 079B10 80078F10 07210004 */  bgez  $t9, .L80078F24
/* 079B14 80078F14 468084A0 */   cvt.s.w $f18, $f16
/* 079B18 80078F18 44812000 */  mtc1  $at, $f4
/* 079B1C 80078F1C 00000000 */  nop   
/* 079B20 80078F20 46049480 */  add.s $f18, $f18, $f4
.L80078F24:
/* 079B24 80078F24 46009182 */  mul.s $f6, $f18, $f0
/* 079B28 80078F28 444EF800 */  cfc1  $t6, $31
/* 079B2C 80078F2C 00000000 */  nop   
/* 079B30 80078F30 35C10003 */  ori   $at, $t6, 3
/* 079B34 80078F34 38210002 */  xori  $at, $at, 2
/* 079B38 80078F38 44C1F800 */  ctc1  $at, $31
/* 079B3C 80078F3C 00000000 */  nop   
/* 079B40 80078F40 46003224 */  cvt.w.s $f8, $f6
/* 079B44 80078F44 440F4000 */  mfc1  $t7, $f8
/* 079B48 80078F48 44CEF800 */  ctc1  $t6, $31
/* 079B4C 80078F4C 024F5823 */  subu  $t3, $s2, $t7
/* 079B50 80078F50 00000000 */  nop   
.L80078F54:
/* 079B54 80078F54 16C00012 */  bnez  $s6, .L80078FA0
/* 079B58 80078F58 00000000 */   nop   
/* 079B5C 80078F5C 86380006 */  lh    $t8, 6($s1)
/* 079B60 80078F60 00000000 */  nop   
/* 079B64 80078F64 44985000 */  mtc1  $t8, $f10
/* 079B68 80078F68 00000000 */  nop   
/* 079B6C 80078F6C 46805420 */  cvt.s.w $f16, $f10
/* 079B70 80078F70 46028102 */  mul.s $f4, $f16, $f2
/* 079B74 80078F74 4459F800 */  cfc1  $t9, $31
/* 079B78 80078F78 00000000 */  nop   
/* 079B7C 80078F7C 37210003 */  ori   $at, $t9, 3
/* 079B80 80078F80 38210002 */  xori  $at, $at, 2
/* 079B84 80078F84 44C1F800 */  ctc1  $at, $31
/* 079B88 80078F88 00000000 */  nop   
/* 079B8C 80078F8C 460024A4 */  cvt.w.s $f18, $f4
/* 079B90 80078F90 440E9000 */  mfc1  $t6, $f18
/* 079B94 80078F94 44D9F800 */  ctc1  $t9, $31
/* 079B98 80078F98 10000022 */  b     .L80079024
/* 079B9C 80078F9C 01DE5021 */   addu  $t2, $t6, $fp
.L80078FA0:
/* 079BA0 80078FA0 862F0006 */  lh    $t7, 6($s1)
/* 079BA4 80078FA4 93EE0001 */  lbu   $t6, 1($ra)
/* 079BA8 80078FA8 448F3000 */  mtc1  $t7, $f6
/* 079BAC 80078FAC 448E2000 */  mtc1  $t6, $f4
/* 079BB0 80078FB0 46803220 */  cvt.s.w $f8, $f6
/* 079BB4 80078FB4 46024282 */  mul.s $f10, $f8, $f2
/* 079BB8 80078FB8 4458F800 */  cfc1  $t8, $31
/* 079BBC 80078FBC 00000000 */  nop   
/* 079BC0 80078FC0 37010003 */  ori   $at, $t8, 3
/* 079BC4 80078FC4 38210002 */  xori  $at, $at, 2
/* 079BC8 80078FC8 44C1F800 */  ctc1  $at, $31
/* 079BCC 80078FCC 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 079BD0 80078FD0 46005424 */  cvt.w.s $f16, $f10
/* 079BD4 80078FD4 44198000 */  mfc1  $t9, $f16
/* 079BD8 80078FD8 44D8F800 */  ctc1  $t8, $31
/* 079BDC 80078FDC 03D99823 */  subu  $s3, $fp, $t9
/* 079BE0 80078FE0 05C10004 */  bgez  $t6, .L80078FF4
/* 079BE4 80078FE4 468024A0 */   cvt.s.w $f18, $f4
/* 079BE8 80078FE8 44813000 */  mtc1  $at, $f6
/* 079BEC 80078FEC 00000000 */  nop   
/* 079BF0 80078FF0 46069480 */  add.s $f18, $f18, $f6
.L80078FF4:
/* 079BF4 80078FF4 46029202 */  mul.s $f8, $f18, $f2
/* 079BF8 80078FF8 444FF800 */  cfc1  $t7, $31
/* 079BFC 80078FFC 00000000 */  nop   
/* 079C00 80079000 35E10003 */  ori   $at, $t7, 3
/* 079C04 80079004 38210002 */  xori  $at, $at, 2
/* 079C08 80079008 44C1F800 */  ctc1  $at, $31
/* 079C0C 8007900C 00000000 */  nop   
/* 079C10 80079010 460042A4 */  cvt.w.s $f10, $f8
/* 079C14 80079014 44185000 */  mfc1  $t8, $f10
/* 079C18 80079018 44CFF800 */  ctc1  $t7, $31
/* 079C1C 8007901C 02785023 */  subu  $t2, $s3, $t8
/* 079C20 80079020 00000000 */  nop   
.L80079024:
/* 079C24 80079024 8FB90044 */  lw    $t9, 0x44($sp)
/* 079C28 80079028 00027403 */  sra   $t6, $v0, 0x10
/* 079C2C 8007902C 0179082A */  slt   $at, $t3, $t9
/* 079C30 80079030 102000A5 */  beqz  $at, .L800792C8
/* 079C34 80079034 31CFFFFF */   andi  $t7, $t6, 0xffff
/* 079C38 80079038 000FC080 */  sll   $t8, $t7, 2
/* 079C3C 8007903C 0158082A */  slt   $at, $t2, $t8
/* 079C40 80079040 102000A1 */  beqz  $at, .L800792C8
/* 079C44 80079044 00000000 */   nop   
/* 079C48 80079048 16A00015 */  bnez  $s5, .L800790A0
/* 079C4C 8007904C 00000000 */   nop   
/* 079C50 80079050 93F90000 */  lbu   $t9, ($ra)
/* 079C54 80079054 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 079C58 80079058 44998000 */  mtc1  $t9, $f16
/* 079C5C 8007905C 07210004 */  bgez  $t9, .L80079070
/* 079C60 80079060 46808120 */   cvt.s.w $f4, $f16
/* 079C64 80079064 44813000 */  mtc1  $at, $f6
/* 079C68 80079068 00000000 */  nop   
/* 079C6C 8007906C 46062100 */  add.s $f4, $f4, $f6
.L80079070:
/* 079C70 80079070 46002482 */  mul.s $f18, $f4, $f0
/* 079C74 80079074 444EF800 */  cfc1  $t6, $31
/* 079C78 80079078 00000000 */  nop   
/* 079C7C 8007907C 35C10003 */  ori   $at, $t6, 3
/* 079C80 80079080 38210002 */  xori  $at, $at, 2
/* 079C84 80079084 44C1F800 */  ctc1  $at, $31
/* 079C88 80079088 00000000 */  nop   
/* 079C8C 8007908C 46009224 */  cvt.w.s $f8, $f18
/* 079C90 80079090 440F4000 */  mfc1  $t7, $f8
/* 079C94 80079094 44CEF800 */  ctc1  $t6, $31
/* 079C98 80079098 01EB9021 */  addu  $s2, $t7, $t3
/* 079C9C 8007909C 00000000 */  nop   
.L800790A0:
/* 079CA0 800790A0 16C00015 */  bnez  $s6, .L800790F8
/* 079CA4 800790A4 00000000 */   nop   
/* 079CA8 800790A8 93F80001 */  lbu   $t8, 1($ra)
/* 079CAC 800790AC 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 079CB0 800790B0 44985000 */  mtc1  $t8, $f10
/* 079CB4 800790B4 07010004 */  bgez  $t8, .L800790C8
/* 079CB8 800790B8 46805420 */   cvt.s.w $f16, $f10
/* 079CBC 800790BC 44813000 */  mtc1  $at, $f6
/* 079CC0 800790C0 00000000 */  nop   
/* 079CC4 800790C4 46068400 */  add.s $f16, $f16, $f6
.L800790C8:
/* 079CC8 800790C8 46028102 */  mul.s $f4, $f16, $f2
/* 079CCC 800790CC 4459F800 */  cfc1  $t9, $31
/* 079CD0 800790D0 00000000 */  nop   
/* 079CD4 800790D4 37210003 */  ori   $at, $t9, 3
/* 079CD8 800790D8 38210002 */  xori  $at, $at, 2
/* 079CDC 800790DC 44C1F800 */  ctc1  $at, $31
/* 079CE0 800790E0 00000000 */  nop   
/* 079CE4 800790E4 460024A4 */  cvt.w.s $f18, $f4
/* 079CE8 800790E8 440E9000 */  mfc1  $t6, $f18
/* 079CEC 800790EC 44D9F800 */  ctc1  $t9, $31
/* 079CF0 800790F0 01CA9821 */  addu  $s3, $t6, $t2
/* 079CF4 800790F4 00000000 */  nop   
.L800790F8:
/* 079CF8 800790F8 1A400073 */  blez  $s2, .L800792C8
/* 079CFC 800790FC 00000000 */   nop   
/* 079D00 80079100 1A600071 */  blez  $s3, .L800792C8
/* 079D04 80079104 0172082A */   slt   $at, $t3, $s2
/* 079D08 80079108 1020006F */  beqz  $at, .L800792C8
/* 079D0C 8007910C 0153082A */   slt   $at, $t2, $s3
/* 079D10 80079110 1020006D */  beqz  $at, .L800792C8
/* 079D14 80079114 00000000 */   nop   
/* 079D18 80079118 93E30000 */  lbu   $v1, ($ra)
/* 079D1C 8007911C 024BC023 */  subu  $t8, $s2, $t3
/* 079D20 80079120 2463FFFF */  addiu $v1, $v1, -1
/* 079D24 80079124 00037B00 */  sll   $t7, $v1, 0xc
/* 079D28 80079128 01F8001A */  div   $zero, $t7, $t8
/* 079D2C 8007912C 32590FFF */  andi  $t9, $s2, 0xfff
/* 079D30 80079130 17000002 */  bnez  $t8, .L8007913C
/* 079D34 80079134 00000000 */   nop   
/* 079D38 80079138 0007000D */  break 7
.L8007913C:
/* 079D3C 8007913C 2401FFFF */  li    $at, -1
/* 079D40 80079140 17010004 */  bne   $t8, $at, .L80079154
/* 079D44 80079144 3C018000 */   lui   $at, 0x8000
/* 079D48 80079148 15E10002 */  bne   $t7, $at, .L80079154
/* 079D4C 8007914C 00000000 */   nop   
/* 079D50 80079150 0006000D */  break 6
.L80079154:
/* 079D54 80079154 3C01E400 */  lui   $at, 0xe400
/* 079D58 80079158 00197300 */  sll   $t6, $t9, 0xc
/* 079D5C 8007915C 01C17825 */  or    $t7, $t6, $at
/* 079D60 80079160 32780FFF */  andi  $t8, $s3, 0xfff
/* 079D64 80079164 01F8A025 */  or    $s4, $t7, $t8
/* 079D68 80079168 93E40001 */  lbu   $a0, 1($ra)
/* 079D6C 8007916C 00006825 */  move  $t5, $zero
/* 079D70 80079170 026A7023 */  subu  $t6, $s3, $t2
/* 079D74 80079174 00004025 */  move  $t0, $zero
/* 079D78 80079178 000B7823 */  negu  $t7, $t3
/* 079D7C 8007917C 00006012 */  mflo  $t4
/* 079D80 80079180 12A00004 */  beqz  $s5, .L80079194
/* 079D84 80079184 00000000 */   nop   
/* 079D88 80079188 00036940 */  sll   $t5, $v1, 5
/* 079D8C 8007918C 10000001 */  b     .L80079194
/* 079D90 80079190 000C6023 */   negu  $t4, $t4
.L80079194:
/* 079D94 80079194 2483FFFF */  addiu $v1, $a0, -1
/* 079D98 80079198 0003CB00 */  sll   $t9, $v1, 0xc
/* 079D9C 8007919C 032E001A */  div   $zero, $t9, $t6
/* 079DA0 800791A0 15C00002 */  bnez  $t6, .L800791AC
/* 079DA4 800791A4 00000000 */   nop   
/* 079DA8 800791A8 0007000D */  break 7
.L800791AC:
/* 079DAC 800791AC 2401FFFF */  li    $at, -1
/* 079DB0 800791B0 15C10004 */  bne   $t6, $at, .L800791C4
/* 079DB4 800791B4 3C018000 */   lui   $at, 0x8000
/* 079DB8 800791B8 17210002 */  bne   $t9, $at, .L800791C4
/* 079DBC 800791BC 00000000 */   nop   
/* 079DC0 800791C0 0006000D */  break 6
.L800791C4:
/* 079DC4 800791C4 000A7023 */  negu  $t6, $t2
/* 079DC8 800791C8 00003812 */  mflo  $a3
/* 079DCC 800791CC 12C00004 */  beqz  $s6, .L800791E0
/* 079DD0 800791D0 00000000 */   nop   
/* 079DD4 800791D4 00034140 */  sll   $t0, $v1, 5
/* 079DD8 800791D8 10000001 */  b     .L800791E0
/* 079DDC 800791DC 00073823 */   negu  $a3, $a3
.L800791E0:
/* 079DE0 800791E0 05610006 */  bgez  $t3, .L800791FC
/* 079DE4 800791E4 00000000 */   nop   
/* 079DE8 800791E8 01EC0019 */  multu $t7, $t4
/* 079DEC 800791EC 00005825 */  move  $t3, $zero
/* 079DF0 800791F0 0000C012 */  mflo  $t8
/* 079DF4 800791F4 0018C9C3 */  sra   $t9, $t8, 7
/* 079DF8 800791F8 01B96821 */  addu  $t5, $t5, $t9
.L800791FC:
/* 079DFC 800791FC 05410006 */  bgez  $t2, .L80079218
/* 079E00 80079200 00000000 */   nop   
/* 079E04 80079204 01C70019 */  multu $t6, $a3
/* 079E08 80079208 00005025 */  move  $t2, $zero
/* 079E0C 8007920C 00007812 */  mflo  $t7
/* 079E10 80079210 000FC1C3 */  sra   $t8, $t7, 7
/* 079E14 80079214 01184021 */  addu  $t0, $t0, $t8
.L80079218:
/* 079E18 80079218 8E030000 */  lw    $v1, ($s0)
/* 079E1C 8007921C 3C010700 */  lui   $at, 0x700
/* 079E20 80079220 24790008 */  addiu $t9, $v1, 8
/* 079E24 80079224 AE190000 */  sw    $t9, ($s0)
/* 079E28 80079228 87E5000A */  lh    $a1, 0xa($ra)
/* 079E2C 8007922C 00000000 */  nop   
/* 079E30 80079230 30AE00FF */  andi  $t6, $a1, 0xff
/* 079E34 80079234 000E7C00 */  sll   $t7, $t6, 0x10
/* 079E38 80079238 0005C8C0 */  sll   $t9, $a1, 3
/* 079E3C 8007923C 332EFFFF */  andi  $t6, $t9, 0xffff
/* 079E40 80079240 01E1C025 */  or    $t8, $t7, $at
/* 079E44 80079244 030E7825 */  or    $t7, $t8, $t6
/* 079E48 80079248 AC6F0000 */  sw    $t7, ($v1)
/* 079E4C 8007924C 8FF9000C */  lw    $t9, 0xc($ra)
/* 079E50 80079250 3C018000 */  lui   $at, 0x8000
/* 079E54 80079254 0321C021 */  addu  $t8, $t9, $at
/* 079E58 80079258 AC780004 */  sw    $t8, 4($v1)
/* 079E5C 8007925C 8E060000 */  lw    $a2, ($s0)
/* 079E60 80079260 316F0FFF */  andi  $t7, $t3, 0xfff
/* 079E64 80079264 24CE0008 */  addiu $t6, $a2, 8
/* 079E68 80079268 AE0E0000 */  sw    $t6, ($s0)
/* 079E6C 8007926C 000FCB00 */  sll   $t9, $t7, 0xc
/* 079E70 80079270 31580FFF */  andi  $t8, $t2, 0xfff
/* 079E74 80079274 03387025 */  or    $t6, $t9, $t8
/* 079E78 80079278 ACCE0004 */  sw    $t6, 4($a2)
/* 079E7C 8007927C ACD40000 */  sw    $s4, ($a2)
/* 079E80 80079280 8E090000 */  lw    $t1, ($s0)
/* 079E84 80079284 3C19B300 */  lui   $t9, 0xb300
/* 079E88 80079288 252F0008 */  addiu $t7, $t1, 8
/* 079E8C 8007928C AE0F0000 */  sw    $t7, ($s0)
/* 079E90 80079290 310FFFFF */  andi  $t7, $t0, 0xffff
/* 079E94 80079294 000D7400 */  sll   $t6, $t5, 0x10
/* 079E98 80079298 AD390000 */  sw    $t9, ($t1)
/* 079E9C 8007929C 01CFC825 */  or    $t9, $t6, $t7
/* 079EA0 800792A0 AD390004 */  sw    $t9, 4($t1)
/* 079EA4 800792A4 8E040000 */  lw    $a0, ($s0)
/* 079EA8 800792A8 3C0EB200 */  lui   $t6, 0xb200
/* 079EAC 800792AC 24980008 */  addiu $t8, $a0, 8
/* 079EB0 800792B0 AE180000 */  sw    $t8, ($s0)
/* 079EB4 800792B4 30F8FFFF */  andi  $t8, $a3, 0xffff
/* 079EB8 800792B8 000CCC00 */  sll   $t9, $t4, 0x10
/* 079EBC 800792BC AC8E0000 */  sw    $t6, ($a0)
/* 079EC0 800792C0 03387025 */  or    $t6, $t9, $t8
/* 079EC4 800792C4 AC8E0004 */  sw    $t6, 4($a0)
.L800792C8:
/* 079EC8 800792C8 8E3F0008 */  lw    $ra, 8($s1)
/* 079ECC 800792CC 26310008 */  addiu $s1, $s1, 8
/* 079ED0 800792D0 17E0FEEC */  bnez  $ra, .L80078E84
/* 079ED4 800792D4 00000000 */   nop   
/* 079ED8 800792D8 AFB3007C */  sw    $s3, 0x7c($sp)
/* 079EDC 800792DC AFB20080 */  sw    $s2, 0x80($sp)
.L800792E0:
/* 079EE0 800792E0 8E030000 */  lw    $v1, ($s0)
/* 079EE4 800792E4 3C19E700 */  lui   $t9, 0xe700
/* 079EE8 800792E8 246F0008 */  addiu $t7, $v1, 8
/* 079EEC 800792EC AE0F0000 */  sw    $t7, ($s0)
/* 079EF0 800792F0 AC600004 */  sw    $zero, 4($v1)
/* 079EF4 800792F4 AC790000 */  sw    $t9, ($v1)
/* 079EF8 800792F8 8E030000 */  lw    $v1, ($s0)
/* 079EFC 800792FC 240FFFFF */  li    $t7, -1
/* 079F00 80079300 24780008 */  addiu $t8, $v1, 8
/* 079F04 80079304 AE180000 */  sw    $t8, ($s0)
/* 079F08 80079308 3C0EFA00 */  lui   $t6, 0xfa00
/* 079F0C 8007930C AC6E0000 */  sw    $t6, ($v1)
/* 079F10 80079310 AC6F0004 */  sw    $t7, 4($v1)
/* 079F14 80079314 8FBF003C */  lw    $ra, 0x3c($sp)
/* 079F18 80079318 8FBE0038 */  lw    $fp, 0x38($sp)
/* 079F1C 8007931C 8FB70034 */  lw    $s7, 0x34($sp)
/* 079F20 80079320 8FB60030 */  lw    $s6, 0x30($sp)
/* 079F24 80079324 8FB5002C */  lw    $s5, 0x2c($sp)
/* 079F28 80079328 8FB40028 */  lw    $s4, 0x28($sp)
/* 079F2C 8007932C 8FB30024 */  lw    $s3, 0x24($sp)
/* 079F30 80079330 8FB20020 */  lw    $s2, 0x20($sp)
/* 079F34 80079334 8FB1001C */  lw    $s1, 0x1c($sp)
/* 079F38 80079338 8FB00018 */  lw    $s0, 0x18($sp)
/* 079F3C 8007933C 03E00008 */  jr    $ra
/* 079F40 80079340 27BD00B0 */   addiu $sp, $sp, 0xb0

/* 079F44 80079344 00000000 */  nop   
/* 079F48 80079348 00000000 */  nop   
/* 079F4C 8007934C 00000000 */  nop   

