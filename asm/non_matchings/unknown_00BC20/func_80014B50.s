glabel func_80014B50
/* 015750 80014B50 44866000 */  mtc1  $a2, $f12
/* 015754 80014B54 2CE1000B */  sltiu $at, $a3, 0xb
/* 015758 80014B58 00801025 */  move  $v0, $a0
/* 01575C 80014B5C 102001F8 */  beqz  $at, .L80015340
/* 015760 80014B60 00A01825 */   move  $v1, $a1
/* 015764 80014B64 00077080 */  sll   $t6, $a3, 2
/* 015768 80014B68 3C01800E */  lui   $at, %hi(D_800E5588) # $at, 0x800e
/* 01576C 80014B6C 002E0821 */  addu  $at, $at, $t6
/* 015770 80014B70 8C2E5588 */  lw    $t6, %lo(D_800E5588)($at)
/* 015774 80014B74 00000000 */  nop   
/* 015778 80014B78 01C00008 */  jr    $t6
/* 01577C 80014B7C 00000000 */   nop   
/* 015780 80014B80 00A4082A */  slt   $at, $a1, $a0
/* 015784 80014B84 142001EE */  bnez  $at, .L80015340
/* 015788 80014B88 3C0A8012 */   lui   $t2, %hi(objPtrList) # $t2, 0x8012
/* 01578C 80014B8C 254AAE58 */  addiu $t2, %lo(objPtrList) # addiu $t2, $t2, -0x51a8
/* 015790 80014B90 0064082A */  slt   $at, $v1, $a0
.L80014B94:
/* 015794 80014B94 1420001D */  bnez  $at, .L80014C0C
/* 015798 80014B98 00A2082A */   slt   $at, $a1, $v0
/* 01579C 80014B9C 8D4F0000 */  lw    $t7, ($t2)
/* 0157A0 80014BA0 0004C080 */  sll   $t8, $a0, 2
/* 0157A4 80014BA4 01F83821 */  addu  $a3, $t7, $t8
/* 0157A8 80014BA8 8CE60000 */  lw    $a2, ($a3)
/* 0157AC 80014BAC 00000000 */  nop   
/* 0157B0 80014BB0 C4C4000C */  lwc1  $f4, 0xc($a2)
/* 0157B4 80014BB4 C4C60034 */  lwc1  $f6, 0x34($a2)
/* 0157B8 80014BB8 00000000 */  nop   
/* 0157BC 80014BBC 46062201 */  sub.s $f8, $f4, $f6
/* 0157C0 80014BC0 460C403C */  c.lt.s $f8, $f12
/* 0157C4 80014BC4 00000000 */  nop   
/* 0157C8 80014BC8 45000010 */  bc1f  .L80014C0C
/* 0157CC 80014BCC 00A2082A */   slt   $at, $a1, $v0
.L80014BD0:
/* 0157D0 80014BD0 24840001 */  addiu $a0, $a0, 1
/* 0157D4 80014BD4 0064082A */  slt   $at, $v1, $a0
/* 0157D8 80014BD8 1420000B */  bnez  $at, .L80014C08
/* 0157DC 80014BDC 24E70004 */   addiu $a3, $a3, 4
/* 0157E0 80014BE0 8CE60000 */  lw    $a2, ($a3)
/* 0157E4 80014BE4 00000000 */  nop   
/* 0157E8 80014BE8 C4CA000C */  lwc1  $f10, 0xc($a2)
/* 0157EC 80014BEC C4D00034 */  lwc1  $f16, 0x34($a2)
/* 0157F0 80014BF0 00000000 */  nop   
/* 0157F4 80014BF4 46105481 */  sub.s $f18, $f10, $f16
/* 0157F8 80014BF8 460C903C */  c.lt.s $f18, $f12
/* 0157FC 80014BFC 00000000 */  nop   
/* 015800 80014C00 4501FFF3 */  bc1t  .L80014BD0
/* 015804 80014C04 00000000 */   nop   
.L80014C08:
/* 015808 80014C08 00A2082A */  slt   $at, $a1, $v0
.L80014C0C:
/* 01580C 80014C0C 1420001C */  bnez  $at, .L80014C80
/* 015810 80014C10 00046080 */   sll   $t4, $a0, 2
/* 015814 80014C14 8D590000 */  lw    $t9, ($t2)
/* 015818 80014C18 00055880 */  sll   $t3, $a1, 2
/* 01581C 80014C1C 032B3021 */  addu  $a2, $t9, $t3
/* 015820 80014C20 8CC70000 */  lw    $a3, ($a2)
/* 015824 80014C24 00000000 */  nop   
/* 015828 80014C28 C4E4000C */  lwc1  $f4, 0xc($a3)
/* 01582C 80014C2C C4E60034 */  lwc1  $f6, 0x34($a3)
/* 015830 80014C30 00000000 */  nop   
/* 015834 80014C34 46062201 */  sub.s $f8, $f4, $f6
/* 015838 80014C38 4608603E */  c.le.s $f12, $f8
/* 01583C 80014C3C 00000000 */  nop   
/* 015840 80014C40 45000010 */  bc1f  .L80014C84
/* 015844 80014C44 0085082A */   slt   $at, $a0, $a1
.L80014C48:
/* 015848 80014C48 24A5FFFF */  addiu $a1, $a1, -1
/* 01584C 80014C4C 00A2082A */  slt   $at, $a1, $v0
/* 015850 80014C50 1420000B */  bnez  $at, .L80014C80
/* 015854 80014C54 24C6FFFC */   addiu $a2, $a2, -4
/* 015858 80014C58 8CC70000 */  lw    $a3, ($a2)
/* 01585C 80014C5C 00000000 */  nop   
/* 015860 80014C60 C4EA000C */  lwc1  $f10, 0xc($a3)
/* 015864 80014C64 C4F00034 */  lwc1  $f16, 0x34($a3)
/* 015868 80014C68 00000000 */  nop   
/* 01586C 80014C6C 46105481 */  sub.s $f18, $f10, $f16
/* 015870 80014C70 4612603E */  c.le.s $f12, $f18
/* 015874 80014C74 00000000 */  nop   
/* 015878 80014C78 4501FFF3 */  bc1t  .L80014C48
/* 01587C 80014C7C 00000000 */   nop   
.L80014C80:
/* 015880 80014C80 0085082A */  slt   $at, $a0, $a1
.L80014C84:
/* 015884 80014C84 1020000C */  beqz  $at, .L80014CB8
/* 015888 80014C88 00054080 */   sll   $t0, $a1, 2
/* 01588C 80014C8C 8D460000 */  lw    $a2, ($t2)
/* 015890 80014C90 24840001 */  addiu $a0, $a0, 1
/* 015894 80014C94 00C86821 */  addu  $t5, $a2, $t0
/* 015898 80014C98 8DAE0000 */  lw    $t6, ($t5)
/* 01589C 80014C9C 00CC3821 */  addu  $a3, $a2, $t4
/* 0158A0 80014CA0 8CE90000 */  lw    $t1, ($a3)
/* 0158A4 80014CA4 ACEE0000 */  sw    $t6, ($a3)
/* 0158A8 80014CA8 8D4F0000 */  lw    $t7, ($t2)
/* 0158AC 80014CAC 24A5FFFF */  addiu $a1, $a1, -1
/* 0158B0 80014CB0 01E8C021 */  addu  $t8, $t7, $t0
/* 0158B4 80014CB4 AF090000 */  sw    $t1, ($t8)
.L80014CB8:
/* 0158B8 80014CB8 00A4082A */  slt   $at, $a1, $a0
/* 0158BC 80014CBC 1020FFB5 */  beqz  $at, .L80014B94
/* 0158C0 80014CC0 0064082A */   slt   $at, $v1, $a0
/* 0158C4 80014CC4 03E00008 */  jr    $ra
/* 0158C8 80014CC8 00801025 */   move  $v0, $a0

/* 0158CC 80014CCC 00A4082A */  slt   $at, $a1, $a0
/* 0158D0 80014CD0 1420019B */  bnez  $at, .L80015340
/* 0158D4 80014CD4 3C0A8012 */   lui   $t2, %hi(objPtrList) # $t2, 0x8012
/* 0158D8 80014CD8 254AAE58 */  addiu $t2, %lo(objPtrList) # addiu $t2, $t2, -0x51a8
/* 0158DC 80014CDC 0064082A */  slt   $at, $v1, $a0
.L80014CE0:
/* 0158E0 80014CE0 1420001D */  bnez  $at, .L80014D58
/* 0158E4 80014CE4 00A2082A */   slt   $at, $a1, $v0
/* 0158E8 80014CE8 8D590000 */  lw    $t9, ($t2)
/* 0158EC 80014CEC 00045880 */  sll   $t3, $a0, 2
/* 0158F0 80014CF0 032B3821 */  addu  $a3, $t9, $t3
/* 0158F4 80014CF4 8CE60000 */  lw    $a2, ($a3)
/* 0158F8 80014CF8 00000000 */  nop   
/* 0158FC 80014CFC C4C40010 */  lwc1  $f4, 0x10($a2)
/* 015900 80014D00 C4C60034 */  lwc1  $f6, 0x34($a2)
/* 015904 80014D04 00000000 */  nop   
/* 015908 80014D08 46062201 */  sub.s $f8, $f4, $f6
/* 01590C 80014D0C 460C403C */  c.lt.s $f8, $f12
/* 015910 80014D10 00000000 */  nop   
/* 015914 80014D14 45000010 */  bc1f  .L80014D58
/* 015918 80014D18 00A2082A */   slt   $at, $a1, $v0
.L80014D1C:
/* 01591C 80014D1C 24840001 */  addiu $a0, $a0, 1
/* 015920 80014D20 0064082A */  slt   $at, $v1, $a0
/* 015924 80014D24 1420000B */  bnez  $at, .L80014D54
/* 015928 80014D28 24E70004 */   addiu $a3, $a3, 4
/* 01592C 80014D2C 8CE60000 */  lw    $a2, ($a3)
/* 015930 80014D30 00000000 */  nop   
/* 015934 80014D34 C4CA0010 */  lwc1  $f10, 0x10($a2)
/* 015938 80014D38 C4D00034 */  lwc1  $f16, 0x34($a2)
/* 01593C 80014D3C 00000000 */  nop   
/* 015940 80014D40 46105481 */  sub.s $f18, $f10, $f16
/* 015944 80014D44 460C903C */  c.lt.s $f18, $f12
/* 015948 80014D48 00000000 */  nop   
/* 01594C 80014D4C 4501FFF3 */  bc1t  .L80014D1C
/* 015950 80014D50 00000000 */   nop   
.L80014D54:
/* 015954 80014D54 00A2082A */  slt   $at, $a1, $v0
.L80014D58:
/* 015958 80014D58 1420001C */  bnez  $at, .L80014DCC
/* 01595C 80014D5C 00047080 */   sll   $t6, $a0, 2
/* 015960 80014D60 8D4C0000 */  lw    $t4, ($t2)
/* 015964 80014D64 00056880 */  sll   $t5, $a1, 2
/* 015968 80014D68 018D3021 */  addu  $a2, $t4, $t5
/* 01596C 80014D6C 8CC70000 */  lw    $a3, ($a2)
/* 015970 80014D70 00000000 */  nop   
/* 015974 80014D74 C4E40010 */  lwc1  $f4, 0x10($a3)
/* 015978 80014D78 C4E60034 */  lwc1  $f6, 0x34($a3)
/* 01597C 80014D7C 00000000 */  nop   
/* 015980 80014D80 46062201 */  sub.s $f8, $f4, $f6
/* 015984 80014D84 4608603E */  c.le.s $f12, $f8
/* 015988 80014D88 00000000 */  nop   
/* 01598C 80014D8C 45000010 */  bc1f  .L80014DD0
/* 015990 80014D90 0085082A */   slt   $at, $a0, $a1
.L80014D94:
/* 015994 80014D94 24A5FFFF */  addiu $a1, $a1, -1
/* 015998 80014D98 00A2082A */  slt   $at, $a1, $v0
/* 01599C 80014D9C 1420000B */  bnez  $at, .L80014DCC
/* 0159A0 80014DA0 24C6FFFC */   addiu $a2, $a2, -4
/* 0159A4 80014DA4 8CC70000 */  lw    $a3, ($a2)
/* 0159A8 80014DA8 00000000 */  nop   
/* 0159AC 80014DAC C4EA0010 */  lwc1  $f10, 0x10($a3)
/* 0159B0 80014DB0 C4F00034 */  lwc1  $f16, 0x34($a3)
/* 0159B4 80014DB4 00000000 */  nop   
/* 0159B8 80014DB8 46105481 */  sub.s $f18, $f10, $f16
/* 0159BC 80014DBC 4612603E */  c.le.s $f12, $f18
/* 0159C0 80014DC0 00000000 */  nop   
/* 0159C4 80014DC4 4501FFF3 */  bc1t  .L80014D94
/* 0159C8 80014DC8 00000000 */   nop   
.L80014DCC:
/* 0159CC 80014DCC 0085082A */  slt   $at, $a0, $a1
.L80014DD0:
/* 0159D0 80014DD0 1020000C */  beqz  $at, .L80014E04
/* 0159D4 80014DD4 00054080 */   sll   $t0, $a1, 2
/* 0159D8 80014DD8 8D460000 */  lw    $a2, ($t2)
/* 0159DC 80014DDC 24840001 */  addiu $a0, $a0, 1
/* 0159E0 80014DE0 00C87821 */  addu  $t7, $a2, $t0
/* 0159E4 80014DE4 8DF80000 */  lw    $t8, ($t7)
/* 0159E8 80014DE8 00CE3821 */  addu  $a3, $a2, $t6
/* 0159EC 80014DEC 8CE90000 */  lw    $t1, ($a3)
/* 0159F0 80014DF0 ACF80000 */  sw    $t8, ($a3)
/* 0159F4 80014DF4 8D590000 */  lw    $t9, ($t2)
/* 0159F8 80014DF8 24A5FFFF */  addiu $a1, $a1, -1
/* 0159FC 80014DFC 03285821 */  addu  $t3, $t9, $t0
/* 015A00 80014E00 AD690000 */  sw    $t1, ($t3)
.L80014E04:
/* 015A04 80014E04 00A4082A */  slt   $at, $a1, $a0
/* 015A08 80014E08 1020FFB5 */  beqz  $at, .L80014CE0
/* 015A0C 80014E0C 0064082A */   slt   $at, $v1, $a0
/* 015A10 80014E10 03E00008 */  jr    $ra
/* 015A14 80014E14 00801025 */   move  $v0, $a0

/* 015A18 80014E18 00A4082A */  slt   $at, $a1, $a0
/* 015A1C 80014E1C 14200148 */  bnez  $at, .L80015340
/* 015A20 80014E20 3C0A8012 */   lui   $t2, %hi(objPtrList) # $t2, 0x8012
/* 015A24 80014E24 254AAE58 */  addiu $t2, %lo(objPtrList) # addiu $t2, $t2, -0x51a8
/* 015A28 80014E28 0064082A */  slt   $at, $v1, $a0
.L80014E2C:
/* 015A2C 80014E2C 1420001D */  bnez  $at, .L80014EA4
/* 015A30 80014E30 00A2082A */   slt   $at, $a1, $v0
/* 015A34 80014E34 8D4C0000 */  lw    $t4, ($t2)
/* 015A38 80014E38 00046880 */  sll   $t5, $a0, 2
/* 015A3C 80014E3C 018D3821 */  addu  $a3, $t4, $t5
/* 015A40 80014E40 8CE60000 */  lw    $a2, ($a3)
/* 015A44 80014E44 00000000 */  nop   
/* 015A48 80014E48 C4C40014 */  lwc1  $f4, 0x14($a2)
/* 015A4C 80014E4C C4C60034 */  lwc1  $f6, 0x34($a2)
/* 015A50 80014E50 00000000 */  nop   
/* 015A54 80014E54 46062201 */  sub.s $f8, $f4, $f6
/* 015A58 80014E58 460C403C */  c.lt.s $f8, $f12
/* 015A5C 80014E5C 00000000 */  nop   
/* 015A60 80014E60 45000010 */  bc1f  .L80014EA4
/* 015A64 80014E64 00A2082A */   slt   $at, $a1, $v0
.L80014E68:
/* 015A68 80014E68 24840001 */  addiu $a0, $a0, 1
/* 015A6C 80014E6C 0064082A */  slt   $at, $v1, $a0
/* 015A70 80014E70 1420000B */  bnez  $at, .L80014EA0
/* 015A74 80014E74 24E70004 */   addiu $a3, $a3, 4
/* 015A78 80014E78 8CE60000 */  lw    $a2, ($a3)
/* 015A7C 80014E7C 00000000 */  nop   
/* 015A80 80014E80 C4CA0014 */  lwc1  $f10, 0x14($a2)
/* 015A84 80014E84 C4D00034 */  lwc1  $f16, 0x34($a2)
/* 015A88 80014E88 00000000 */  nop   
/* 015A8C 80014E8C 46105481 */  sub.s $f18, $f10, $f16
/* 015A90 80014E90 460C903C */  c.lt.s $f18, $f12
/* 015A94 80014E94 00000000 */  nop   
/* 015A98 80014E98 4501FFF3 */  bc1t  .L80014E68
/* 015A9C 80014E9C 00000000 */   nop   
.L80014EA0:
/* 015AA0 80014EA0 00A2082A */  slt   $at, $a1, $v0
.L80014EA4:
/* 015AA4 80014EA4 1420001C */  bnez  $at, .L80014F18
/* 015AA8 80014EA8 0004C080 */   sll   $t8, $a0, 2
/* 015AAC 80014EAC 8D4E0000 */  lw    $t6, ($t2)
/* 015AB0 80014EB0 00057880 */  sll   $t7, $a1, 2
/* 015AB4 80014EB4 01CF3021 */  addu  $a2, $t6, $t7
/* 015AB8 80014EB8 8CC70000 */  lw    $a3, ($a2)
/* 015ABC 80014EBC 00000000 */  nop   
/* 015AC0 80014EC0 C4E40014 */  lwc1  $f4, 0x14($a3)
/* 015AC4 80014EC4 C4E60034 */  lwc1  $f6, 0x34($a3)
/* 015AC8 80014EC8 00000000 */  nop   
/* 015ACC 80014ECC 46062201 */  sub.s $f8, $f4, $f6
/* 015AD0 80014ED0 4608603E */  c.le.s $f12, $f8
/* 015AD4 80014ED4 00000000 */  nop   
/* 015AD8 80014ED8 45000010 */  bc1f  .L80014F1C
/* 015ADC 80014EDC 0085082A */   slt   $at, $a0, $a1
.L80014EE0:
/* 015AE0 80014EE0 24A5FFFF */  addiu $a1, $a1, -1
/* 015AE4 80014EE4 00A2082A */  slt   $at, $a1, $v0
/* 015AE8 80014EE8 1420000B */  bnez  $at, .L80014F18
/* 015AEC 80014EEC 24C6FFFC */   addiu $a2, $a2, -4
/* 015AF0 80014EF0 8CC70000 */  lw    $a3, ($a2)
/* 015AF4 80014EF4 00000000 */  nop   
/* 015AF8 80014EF8 C4EA0014 */  lwc1  $f10, 0x14($a3)
/* 015AFC 80014EFC C4F00034 */  lwc1  $f16, 0x34($a3)
/* 015B00 80014F00 00000000 */  nop   
/* 015B04 80014F04 46105481 */  sub.s $f18, $f10, $f16
/* 015B08 80014F08 4612603E */  c.le.s $f12, $f18
/* 015B0C 80014F0C 00000000 */  nop   
/* 015B10 80014F10 4501FFF3 */  bc1t  .L80014EE0
/* 015B14 80014F14 00000000 */   nop   
.L80014F18:
/* 015B18 80014F18 0085082A */  slt   $at, $a0, $a1
.L80014F1C:
/* 015B1C 80014F1C 1020000C */  beqz  $at, .L80014F50
/* 015B20 80014F20 00054080 */   sll   $t0, $a1, 2
/* 015B24 80014F24 8D460000 */  lw    $a2, ($t2)
/* 015B28 80014F28 24840001 */  addiu $a0, $a0, 1
/* 015B2C 80014F2C 00C8C821 */  addu  $t9, $a2, $t0
/* 015B30 80014F30 8F2B0000 */  lw    $t3, ($t9)
/* 015B34 80014F34 00D83821 */  addu  $a3, $a2, $t8
/* 015B38 80014F38 8CE90000 */  lw    $t1, ($a3)
/* 015B3C 80014F3C ACEB0000 */  sw    $t3, ($a3)
/* 015B40 80014F40 8D4C0000 */  lw    $t4, ($t2)
/* 015B44 80014F44 24A5FFFF */  addiu $a1, $a1, -1
/* 015B48 80014F48 01886821 */  addu  $t5, $t4, $t0
/* 015B4C 80014F4C ADA90000 */  sw    $t1, ($t5)
.L80014F50:
/* 015B50 80014F50 00A4082A */  slt   $at, $a1, $a0
/* 015B54 80014F54 1020FFB5 */  beqz  $at, .L80014E2C
/* 015B58 80014F58 0064082A */   slt   $at, $v1, $a0
/* 015B5C 80014F5C 03E00008 */  jr    $ra
/* 015B60 80014F60 00801025 */   move  $v0, $a0

/* 015B64 80014F64 00A4082A */  slt   $at, $a1, $a0
/* 015B68 80014F68 142000F5 */  bnez  $at, .L80015340
/* 015B6C 80014F6C 3C0A8012 */   lui   $t2, %hi(objPtrList) # $t2, 0x8012
/* 015B70 80014F70 254AAE58 */  addiu $t2, %lo(objPtrList) # addiu $t2, $t2, -0x51a8
/* 015B74 80014F74 0064082A */  slt   $at, $v1, $a0
.L80014F78:
/* 015B78 80014F78 1420001D */  bnez  $at, .L80014FF0
/* 015B7C 80014F7C 00A2082A */   slt   $at, $a1, $v0
/* 015B80 80014F80 8D4E0000 */  lw    $t6, ($t2)
/* 015B84 80014F84 00047880 */  sll   $t7, $a0, 2
/* 015B88 80014F88 01CF3821 */  addu  $a3, $t6, $t7
/* 015B8C 80014F8C 8CE60000 */  lw    $a2, ($a3)
/* 015B90 80014F90 00000000 */  nop   
/* 015B94 80014F94 C4C40034 */  lwc1  $f4, 0x34($a2)
/* 015B98 80014F98 C4C6000C */  lwc1  $f6, 0xc($a2)
/* 015B9C 80014F9C 00000000 */  nop   
/* 015BA0 80014FA0 46062200 */  add.s $f8, $f4, $f6
/* 015BA4 80014FA4 460C403C */  c.lt.s $f8, $f12
/* 015BA8 80014FA8 00000000 */  nop   
/* 015BAC 80014FAC 45000010 */  bc1f  .L80014FF0
/* 015BB0 80014FB0 00A2082A */   slt   $at, $a1, $v0
.L80014FB4:
/* 015BB4 80014FB4 24840001 */  addiu $a0, $a0, 1
/* 015BB8 80014FB8 0064082A */  slt   $at, $v1, $a0
/* 015BBC 80014FBC 1420000B */  bnez  $at, .L80014FEC
/* 015BC0 80014FC0 24E70004 */   addiu $a3, $a3, 4
/* 015BC4 80014FC4 8CE60000 */  lw    $a2, ($a3)
/* 015BC8 80014FC8 00000000 */  nop   
/* 015BCC 80014FCC C4CA0034 */  lwc1  $f10, 0x34($a2)
/* 015BD0 80014FD0 C4D0000C */  lwc1  $f16, 0xc($a2)
/* 015BD4 80014FD4 00000000 */  nop   
/* 015BD8 80014FD8 46105480 */  add.s $f18, $f10, $f16
/* 015BDC 80014FDC 460C903C */  c.lt.s $f18, $f12
/* 015BE0 80014FE0 00000000 */  nop   
/* 015BE4 80014FE4 4501FFF3 */  bc1t  .L80014FB4
/* 015BE8 80014FE8 00000000 */   nop   
.L80014FEC:
/* 015BEC 80014FEC 00A2082A */  slt   $at, $a1, $v0
.L80014FF0:
/* 015BF0 80014FF0 1420001C */  bnez  $at, .L80015064
/* 015BF4 80014FF4 00045880 */   sll   $t3, $a0, 2
/* 015BF8 80014FF8 8D580000 */  lw    $t8, ($t2)
/* 015BFC 80014FFC 0005C880 */  sll   $t9, $a1, 2
/* 015C00 80015000 03193021 */  addu  $a2, $t8, $t9
/* 015C04 80015004 8CC70000 */  lw    $a3, ($a2)
/* 015C08 80015008 00000000 */  nop   
/* 015C0C 8001500C C4E40034 */  lwc1  $f4, 0x34($a3)
/* 015C10 80015010 C4E6000C */  lwc1  $f6, 0xc($a3)
/* 015C14 80015014 00000000 */  nop   
/* 015C18 80015018 46062200 */  add.s $f8, $f4, $f6
/* 015C1C 8001501C 4608603E */  c.le.s $f12, $f8
/* 015C20 80015020 00000000 */  nop   
/* 015C24 80015024 45000010 */  bc1f  .L80015068
/* 015C28 80015028 0085082A */   slt   $at, $a0, $a1
.L8001502C:
/* 015C2C 8001502C 24A5FFFF */  addiu $a1, $a1, -1
/* 015C30 80015030 00A2082A */  slt   $at, $a1, $v0
/* 015C34 80015034 1420000B */  bnez  $at, .L80015064
/* 015C38 80015038 24C6FFFC */   addiu $a2, $a2, -4
/* 015C3C 8001503C 8CC70000 */  lw    $a3, ($a2)
/* 015C40 80015040 00000000 */  nop   
/* 015C44 80015044 C4EA0034 */  lwc1  $f10, 0x34($a3)
/* 015C48 80015048 C4F0000C */  lwc1  $f16, 0xc($a3)
/* 015C4C 8001504C 00000000 */  nop   
/* 015C50 80015050 46105480 */  add.s $f18, $f10, $f16
/* 015C54 80015054 4612603E */  c.le.s $f12, $f18
/* 015C58 80015058 00000000 */  nop   
/* 015C5C 8001505C 4501FFF3 */  bc1t  .L8001502C
/* 015C60 80015060 00000000 */   nop   
.L80015064:
/* 015C64 80015064 0085082A */  slt   $at, $a0, $a1
.L80015068:
/* 015C68 80015068 1020000C */  beqz  $at, .L8001509C
/* 015C6C 8001506C 00054080 */   sll   $t0, $a1, 2
/* 015C70 80015070 8D460000 */  lw    $a2, ($t2)
/* 015C74 80015074 24840001 */  addiu $a0, $a0, 1
/* 015C78 80015078 00C86021 */  addu  $t4, $a2, $t0
/* 015C7C 8001507C 8D8D0000 */  lw    $t5, ($t4)
/* 015C80 80015080 00CB3821 */  addu  $a3, $a2, $t3
/* 015C84 80015084 8CE90000 */  lw    $t1, ($a3)
/* 015C88 80015088 ACED0000 */  sw    $t5, ($a3)
/* 015C8C 8001508C 8D4E0000 */  lw    $t6, ($t2)
/* 015C90 80015090 24A5FFFF */  addiu $a1, $a1, -1
/* 015C94 80015094 01C87821 */  addu  $t7, $t6, $t0
/* 015C98 80015098 ADE90000 */  sw    $t1, ($t7)
.L8001509C:
/* 015C9C 8001509C 00A4082A */  slt   $at, $a1, $a0
/* 015CA0 800150A0 1020FFB5 */  beqz  $at, .L80014F78
/* 015CA4 800150A4 0064082A */   slt   $at, $v1, $a0
/* 015CA8 800150A8 03E00008 */  jr    $ra
/* 015CAC 800150AC 00801025 */   move  $v0, $a0

/* 015CB0 800150B0 00A4082A */  slt   $at, $a1, $a0
/* 015CB4 800150B4 142000A2 */  bnez  $at, .L80015340
/* 015CB8 800150B8 3C0A8012 */   lui   $t2, %hi(objPtrList) # $t2, 0x8012
/* 015CBC 800150BC 254AAE58 */  addiu $t2, %lo(objPtrList) # addiu $t2, $t2, -0x51a8
/* 015CC0 800150C0 0064082A */  slt   $at, $v1, $a0
.L800150C4:
/* 015CC4 800150C4 1420001D */  bnez  $at, .L8001513C
/* 015CC8 800150C8 00A2082A */   slt   $at, $a1, $v0
/* 015CCC 800150CC 8D580000 */  lw    $t8, ($t2)
/* 015CD0 800150D0 0004C880 */  sll   $t9, $a0, 2
/* 015CD4 800150D4 03193821 */  addu  $a3, $t8, $t9
/* 015CD8 800150D8 8CE60000 */  lw    $a2, ($a3)
/* 015CDC 800150DC 00000000 */  nop   
/* 015CE0 800150E0 C4C40034 */  lwc1  $f4, 0x34($a2)
/* 015CE4 800150E4 C4C60010 */  lwc1  $f6, 0x10($a2)
/* 015CE8 800150E8 00000000 */  nop   
/* 015CEC 800150EC 46062200 */  add.s $f8, $f4, $f6
/* 015CF0 800150F0 460C403C */  c.lt.s $f8, $f12
/* 015CF4 800150F4 00000000 */  nop   
/* 015CF8 800150F8 45000010 */  bc1f  .L8001513C
/* 015CFC 800150FC 00A2082A */   slt   $at, $a1, $v0
.L80015100:
/* 015D00 80015100 24840001 */  addiu $a0, $a0, 1
/* 015D04 80015104 0064082A */  slt   $at, $v1, $a0
/* 015D08 80015108 1420000B */  bnez  $at, .L80015138
/* 015D0C 8001510C 24E70004 */   addiu $a3, $a3, 4
/* 015D10 80015110 8CE60000 */  lw    $a2, ($a3)
/* 015D14 80015114 00000000 */  nop   
/* 015D18 80015118 C4CA0034 */  lwc1  $f10, 0x34($a2)
/* 015D1C 8001511C C4D00010 */  lwc1  $f16, 0x10($a2)
/* 015D20 80015120 00000000 */  nop   
/* 015D24 80015124 46105480 */  add.s $f18, $f10, $f16
/* 015D28 80015128 460C903C */  c.lt.s $f18, $f12
/* 015D2C 8001512C 00000000 */  nop   
/* 015D30 80015130 4501FFF3 */  bc1t  .L80015100
/* 015D34 80015134 00000000 */   nop   
.L80015138:
/* 015D38 80015138 00A2082A */  slt   $at, $a1, $v0
.L8001513C:
/* 015D3C 8001513C 1420001C */  bnez  $at, .L800151B0
/* 015D40 80015140 00046880 */   sll   $t5, $a0, 2
/* 015D44 80015144 8D4B0000 */  lw    $t3, ($t2)
/* 015D48 80015148 00056080 */  sll   $t4, $a1, 2
/* 015D4C 8001514C 016C3021 */  addu  $a2, $t3, $t4
/* 015D50 80015150 8CC70000 */  lw    $a3, ($a2)
/* 015D54 80015154 00000000 */  nop   
/* 015D58 80015158 C4E40034 */  lwc1  $f4, 0x34($a3)
/* 015D5C 8001515C C4E60010 */  lwc1  $f6, 0x10($a3)
/* 015D60 80015160 00000000 */  nop   
/* 015D64 80015164 46062200 */  add.s $f8, $f4, $f6
/* 015D68 80015168 4608603E */  c.le.s $f12, $f8
/* 015D6C 8001516C 00000000 */  nop   
/* 015D70 80015170 45000010 */  bc1f  .L800151B4
/* 015D74 80015174 0085082A */   slt   $at, $a0, $a1
.L80015178:
/* 015D78 80015178 24A5FFFF */  addiu $a1, $a1, -1
/* 015D7C 8001517C 00A2082A */  slt   $at, $a1, $v0
/* 015D80 80015180 1420000B */  bnez  $at, .L800151B0
/* 015D84 80015184 24C6FFFC */   addiu $a2, $a2, -4
/* 015D88 80015188 8CC70000 */  lw    $a3, ($a2)
/* 015D8C 8001518C 00000000 */  nop   
/* 015D90 80015190 C4EA0034 */  lwc1  $f10, 0x34($a3)
/* 015D94 80015194 C4F00010 */  lwc1  $f16, 0x10($a3)
/* 015D98 80015198 00000000 */  nop   
/* 015D9C 8001519C 46105480 */  add.s $f18, $f10, $f16
/* 015DA0 800151A0 4612603E */  c.le.s $f12, $f18
/* 015DA4 800151A4 00000000 */  nop   
/* 015DA8 800151A8 4501FFF3 */  bc1t  .L80015178
/* 015DAC 800151AC 00000000 */   nop   
.L800151B0:
/* 015DB0 800151B0 0085082A */  slt   $at, $a0, $a1
.L800151B4:
/* 015DB4 800151B4 1020000C */  beqz  $at, .L800151E8
/* 015DB8 800151B8 00054080 */   sll   $t0, $a1, 2
/* 015DBC 800151BC 8D460000 */  lw    $a2, ($t2)
/* 015DC0 800151C0 24840001 */  addiu $a0, $a0, 1
/* 015DC4 800151C4 00C87021 */  addu  $t6, $a2, $t0
/* 015DC8 800151C8 8DCF0000 */  lw    $t7, ($t6)
/* 015DCC 800151CC 00CD3821 */  addu  $a3, $a2, $t5
/* 015DD0 800151D0 8CE90000 */  lw    $t1, ($a3)
/* 015DD4 800151D4 ACEF0000 */  sw    $t7, ($a3)
/* 015DD8 800151D8 8D580000 */  lw    $t8, ($t2)
/* 015DDC 800151DC 24A5FFFF */  addiu $a1, $a1, -1
/* 015DE0 800151E0 0308C821 */  addu  $t9, $t8, $t0
/* 015DE4 800151E4 AF290000 */  sw    $t1, ($t9)
.L800151E8:
/* 015DE8 800151E8 00A4082A */  slt   $at, $a1, $a0
/* 015DEC 800151EC 1020FFB5 */  beqz  $at, .L800150C4
/* 015DF0 800151F0 0064082A */   slt   $at, $v1, $a0
/* 015DF4 800151F4 03E00008 */  jr    $ra
/* 015DF8 800151F8 00801025 */   move  $v0, $a0

/* 015DFC 800151FC 00A4082A */  slt   $at, $a1, $a0
/* 015E00 80015200 1420004F */  bnez  $at, .L80015340
/* 015E04 80015204 3C0A8012 */   lui   $t2, %hi(objPtrList) # $t2, 0x8012
/* 015E08 80015208 254AAE58 */  addiu $t2, %lo(objPtrList) # addiu $t2, $t2, -0x51a8
/* 015E0C 8001520C 0064082A */  slt   $at, $v1, $a0
.L80015210:
/* 015E10 80015210 1420001D */  bnez  $at, .L80015288
/* 015E14 80015214 00A2082A */   slt   $at, $a1, $v0
/* 015E18 80015218 8D4B0000 */  lw    $t3, ($t2)
/* 015E1C 8001521C 00046080 */  sll   $t4, $a0, 2
/* 015E20 80015220 016C3821 */  addu  $a3, $t3, $t4
/* 015E24 80015224 8CE60000 */  lw    $a2, ($a3)
/* 015E28 80015228 00000000 */  nop   
/* 015E2C 8001522C C4C40034 */  lwc1  $f4, 0x34($a2)
/* 015E30 80015230 C4C60014 */  lwc1  $f6, 0x14($a2)
/* 015E34 80015234 00000000 */  nop   
/* 015E38 80015238 46062200 */  add.s $f8, $f4, $f6
/* 015E3C 8001523C 460C403C */  c.lt.s $f8, $f12
/* 015E40 80015240 00000000 */  nop   
/* 015E44 80015244 45000010 */  bc1f  .L80015288
/* 015E48 80015248 00A2082A */   slt   $at, $a1, $v0
.L8001524C:
/* 015E4C 8001524C 24840001 */  addiu $a0, $a0, 1
/* 015E50 80015250 0064082A */  slt   $at, $v1, $a0
/* 015E54 80015254 1420000B */  bnez  $at, .L80015284
/* 015E58 80015258 24E70004 */   addiu $a3, $a3, 4
/* 015E5C 8001525C 8CE60000 */  lw    $a2, ($a3)
/* 015E60 80015260 00000000 */  nop   
/* 015E64 80015264 C4CA0034 */  lwc1  $f10, 0x34($a2)
/* 015E68 80015268 C4D00014 */  lwc1  $f16, 0x14($a2)
/* 015E6C 8001526C 00000000 */  nop   
/* 015E70 80015270 46105480 */  add.s $f18, $f10, $f16
/* 015E74 80015274 460C903C */  c.lt.s $f18, $f12
/* 015E78 80015278 00000000 */  nop   
/* 015E7C 8001527C 4501FFF3 */  bc1t  .L8001524C
/* 015E80 80015280 00000000 */   nop   
.L80015284:
/* 015E84 80015284 00A2082A */  slt   $at, $a1, $v0
.L80015288:
/* 015E88 80015288 1420001C */  bnez  $at, .L800152FC
/* 015E8C 8001528C 00047880 */   sll   $t7, $a0, 2
/* 015E90 80015290 8D4D0000 */  lw    $t5, ($t2)
/* 015E94 80015294 00057080 */  sll   $t6, $a1, 2
/* 015E98 80015298 01AE3021 */  addu  $a2, $t5, $t6
/* 015E9C 8001529C 8CC70000 */  lw    $a3, ($a2)
/* 015EA0 800152A0 00000000 */  nop   
/* 015EA4 800152A4 C4E40034 */  lwc1  $f4, 0x34($a3)
/* 015EA8 800152A8 C4E60014 */  lwc1  $f6, 0x14($a3)
/* 015EAC 800152AC 00000000 */  nop   
/* 015EB0 800152B0 46062200 */  add.s $f8, $f4, $f6
/* 015EB4 800152B4 4608603E */  c.le.s $f12, $f8
/* 015EB8 800152B8 00000000 */  nop   
/* 015EBC 800152BC 45000010 */  bc1f  .L80015300
/* 015EC0 800152C0 0085082A */   slt   $at, $a0, $a1
.L800152C4:
/* 015EC4 800152C4 24A5FFFF */  addiu $a1, $a1, -1
/* 015EC8 800152C8 00A2082A */  slt   $at, $a1, $v0
/* 015ECC 800152CC 1420000B */  bnez  $at, .L800152FC
/* 015ED0 800152D0 24C6FFFC */   addiu $a2, $a2, -4
/* 015ED4 800152D4 8CC70000 */  lw    $a3, ($a2)
/* 015ED8 800152D8 00000000 */  nop   
/* 015EDC 800152DC C4EA0034 */  lwc1  $f10, 0x34($a3)
/* 015EE0 800152E0 C4F00014 */  lwc1  $f16, 0x14($a3)
/* 015EE4 800152E4 00000000 */  nop   
/* 015EE8 800152E8 46105480 */  add.s $f18, $f10, $f16
/* 015EEC 800152EC 4612603E */  c.le.s $f12, $f18
/* 015EF0 800152F0 00000000 */  nop   
/* 015EF4 800152F4 4501FFF3 */  bc1t  .L800152C4
/* 015EF8 800152F8 00000000 */   nop   
.L800152FC:
/* 015EFC 800152FC 0085082A */  slt   $at, $a0, $a1
.L80015300:
/* 015F00 80015300 1020000C */  beqz  $at, .L80015334
/* 015F04 80015304 00054080 */   sll   $t0, $a1, 2
/* 015F08 80015308 8D460000 */  lw    $a2, ($t2)
/* 015F0C 8001530C 24840001 */  addiu $a0, $a0, 1
/* 015F10 80015310 00C8C021 */  addu  $t8, $a2, $t0
/* 015F14 80015314 8F190000 */  lw    $t9, ($t8)
/* 015F18 80015318 00CF3821 */  addu  $a3, $a2, $t7
/* 015F1C 8001531C 8CE90000 */  lw    $t1, ($a3)
/* 015F20 80015320 ACF90000 */  sw    $t9, ($a3)
/* 015F24 80015324 8D4B0000 */  lw    $t3, ($t2)
/* 015F28 80015328 24A5FFFF */  addiu $a1, $a1, -1
/* 015F2C 8001532C 01686021 */  addu  $t4, $t3, $t0
/* 015F30 80015330 AD890000 */  sw    $t1, ($t4)
.L80015334:
/* 015F34 80015334 00A4082A */  slt   $at, $a1, $a0
/* 015F38 80015338 1020FFB5 */  beqz  $at, .L80015210
/* 015F3C 8001533C 0064082A */   slt   $at, $v1, $a0
.L80015340:
/* 015F40 80015340 03E00008 */  jr    $ra
/* 015F44 80015344 00801025 */   move  $v0, $a0

