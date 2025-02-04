.late_rodata
glabel D_800E92B8
.float 6.64
glabel D_800E92BC
.float 89128.961
glabel D_800E92C0
.float 6.5333333
glabel D_800E92C4
.float 89128.961

.text
glabel func_800BFC54
/* 0C0854 800BFC54 44856000 */  mtc1  $a1, $f12
/* 0C0858 800BFC58 44867000 */  mtc1  $a2, $f14
/* 0C085C 800BFC5C 1080008C */  beqz  $a0, .L800BFE90
/* 0C0860 800BFC60 AFA7000C */   sw    $a3, 0xc($sp)
/* 0C0864 800BFC64 C4840010 */  lwc1  $f4, 0x10($a0)
/* 0C0868 800BFC68 3C013FF0 */  li    $at, 0x3FF00000 # 1.875000
/* 0C086C 800BFC6C 460C2180 */  add.s $f6, $f4, $f12
/* 0C0870 800BFC70 44818800 */  mtc1  $at, $f17
/* 0C0874 800BFC74 E4860010 */  swc1  $f6, 0x10($a0)
/* 0C0878 800BFC78 C4800010 */  lwc1  $f0, 0x10($a0)
/* 0C087C 800BFC7C 44808000 */  mtc1  $zero, $f16
/* 0C0880 800BFC80 46000221 */  cvt.d.s $f8, $f0
/* 0C0884 800BFC84 4630403C */  c.lt.d $f8, $f16
/* 0C0888 800BFC88 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C088C 800BFC8C 45000006 */  bc1f  .L800BFCA8
/* 0C0890 800BFC90 00000000 */   nop   
/* 0C0894 800BFC94 44815000 */  mtc1  $at, $f10
/* 0C0898 800BFC98 00000000 */  nop   
/* 0C089C 800BFC9C E48A0010 */  swc1  $f10, 0x10($a0)
/* 0C08A0 800BFCA0 C4800010 */  lwc1  $f0, 0x10($a0)
/* 0C08A4 800BFCA4 00000000 */  nop   
.L800BFCA8:
/* 0C08A8 800BFCA8 C482000C */  lwc1  $f2, 0xc($a0)
/* 0C08AC 800BFCAC C4860028 */  lwc1  $f6, 0x28($a0)
/* 0C08B0 800BFCB0 46001481 */  sub.s $f18, $f2, $f0
/* 0C08B4 800BFCB4 3C0E8000 */  lui   $t6, %hi(osTvType) # $t6, 0x8000
/* 0C08B8 800BFCB8 46001100 */  add.s $f4, $f2, $f0
/* 0C08BC 800BFCBC E4920000 */  swc1  $f18, ($a0)
/* 0C08C0 800BFCC0 460E3200 */  add.s $f8, $f6, $f14
/* 0C08C4 800BFCC4 E4840004 */  swc1  $f4, 4($a0)
/* 0C08C8 800BFCC8 E4880028 */  swc1  $f8, 0x28($a0)
/* 0C08CC 800BFCCC 8DCE0300 */  lw    $t6, %lo(osTvType)($t6)
# Used to access D_800E92C0 and D_800E92C4.
/* 0C08D0 800BFCD0 3C01800F */  lui   $at, %hi(D_800E92C0) # $at, 0x800f
/* 0C08D4 800BFCD4 15C0002B */  bnez  $t6, .L800BFD84
/* 0C08D8 800BFCD8 00000000 */   nop   
# Used to access D_800E92B8 and D_800E92BC.
/* 0C08DC 800BFCDC 3C01800F */  lui   $at, %hi(D_800E92B8) # $at, 0x800f
/* 0C08E0 800BFCE0 C48A0028 */  lwc1  $f10, 0x28($a0)
/* 0C08E4 800BFCE4 C42592B8 */  lwc1  $f5, %lo(D_800E92B8)($at)
/* 0C08E8 800BFCE8 C42492BC */  lwc1  $f4, %lo(D_800E92BC)($at)
/* 0C08EC 800BFCEC 460054A1 */  cvt.d.s $f18, $f10
/* 0C08F0 800BFCF0 46249182 */  mul.d $f6, $f18, $f4
/* 0C08F4 800BFCF4 24180001 */  li    $t8, 1
/* 0C08F8 800BFCF8 3C0141E0 */  li    $at, 0x41E00000 # 28.000000
/* 0C08FC 800BFCFC 444FF800 */  cfc1  $t7, $31
/* 0C0900 800BFD00 44D8F800 */  ctc1  $t8, $31
/* 0C0904 800BFD04 00000000 */  nop   
/* 0C0908 800BFD08 46203224 */  cvt.w.d $f8, $f6
/* 0C090C 800BFD0C 4458F800 */  cfc1  $t8, $31
/* 0C0910 800BFD10 00000000 */  nop   
/* 0C0914 800BFD14 33180078 */  andi  $t8, $t8, 0x78
/* 0C0918 800BFD18 13000013 */  beqz  $t8, .L800BFD68
/* 0C091C 800BFD1C 00000000 */   nop   
/* 0C0920 800BFD20 44814800 */  mtc1  $at, $f9
/* 0C0924 800BFD24 44804000 */  mtc1  $zero, $f8
/* 0C0928 800BFD28 24180001 */  li    $t8, 1
/* 0C092C 800BFD2C 46283201 */  sub.d $f8, $f6, $f8
/* 0C0930 800BFD30 3C018000 */  lui   $at, 0x8000
/* 0C0934 800BFD34 44D8F800 */  ctc1  $t8, $31
/* 0C0938 800BFD38 00000000 */  nop   
/* 0C093C 800BFD3C 46204224 */  cvt.w.d $f8, $f8
/* 0C0940 800BFD40 4458F800 */  cfc1  $t8, $31
/* 0C0944 800BFD44 00000000 */  nop   
/* 0C0948 800BFD48 33180078 */  andi  $t8, $t8, 0x78
/* 0C094C 800BFD4C 17000004 */  bnez  $t8, .L800BFD60
/* 0C0950 800BFD50 00000000 */   nop   
/* 0C0954 800BFD54 44184000 */  mfc1  $t8, $f8
/* 0C0958 800BFD58 10000007 */  b     .L800BFD78
/* 0C095C 800BFD5C 0301C025 */   or    $t8, $t8, $at
.L800BFD60:
/* 0C0960 800BFD60 10000005 */  b     .L800BFD78
/* 0C0964 800BFD64 2418FFFF */   li    $t8, -1
.L800BFD68:
/* 0C0968 800BFD68 44184000 */  mfc1  $t8, $f8
/* 0C096C 800BFD6C 00000000 */  nop   
/* 0C0970 800BFD70 0700FFFB */  bltz  $t8, .L800BFD60
/* 0C0974 800BFD74 00000000 */   nop   
.L800BFD78:
/* 0C0978 800BFD78 44CFF800 */  ctc1  $t7, $31
/* 0C097C 800BFD7C 1000002A */  b     .L800BFE28
/* 0C0980 800BFD80 AC98001C */   sw    $t8, 0x1c($a0)
.L800BFD84:
/* 0C0984 800BFD84 C48A0028 */  lwc1  $f10, 0x28($a0)
/* 0C0988 800BFD88 C42592C0 */  lwc1  $f5, %lo(D_800E92C0)($at)
/* 0C098C 800BFD8C C42492C4 */  lwc1  $f4, %lo(D_800E92C4)($at)
/* 0C0990 800BFD90 460054A1 */  cvt.d.s $f18, $f10
/* 0C0994 800BFD94 46249182 */  mul.d $f6, $f18, $f4
/* 0C0998 800BFD98 24080001 */  li    $t0, 1
/* 0C099C 800BFD9C 3C0141E0 */  li    $at, 0x41E00000 # 28.000000
/* 0C09A0 800BFDA0 4459F800 */  cfc1  $t9, $31
/* 0C09A4 800BFDA4 44C8F800 */  ctc1  $t0, $31
/* 0C09A8 800BFDA8 00000000 */  nop   
/* 0C09AC 800BFDAC 46203224 */  cvt.w.d $f8, $f6
/* 0C09B0 800BFDB0 4448F800 */  cfc1  $t0, $31
/* 0C09B4 800BFDB4 00000000 */  nop   
/* 0C09B8 800BFDB8 31080078 */  andi  $t0, $t0, 0x78
/* 0C09BC 800BFDBC 11000013 */  beqz  $t0, .L800BFE0C
/* 0C09C0 800BFDC0 00000000 */   nop   
/* 0C09C4 800BFDC4 44814800 */  mtc1  $at, $f9
/* 0C09C8 800BFDC8 44804000 */  mtc1  $zero, $f8
/* 0C09CC 800BFDCC 24080001 */  li    $t0, 1
/* 0C09D0 800BFDD0 46283201 */  sub.d $f8, $f6, $f8
/* 0C09D4 800BFDD4 3C018000 */  lui   $at, 0x8000
/* 0C09D8 800BFDD8 44C8F800 */  ctc1  $t0, $31
/* 0C09DC 800BFDDC 00000000 */  nop   
/* 0C09E0 800BFDE0 46204224 */  cvt.w.d $f8, $f8
/* 0C09E4 800BFDE4 4448F800 */  cfc1  $t0, $31
/* 0C09E8 800BFDE8 00000000 */  nop   
/* 0C09EC 800BFDEC 31080078 */  andi  $t0, $t0, 0x78
/* 0C09F0 800BFDF0 15000004 */  bnez  $t0, .L800BFE04
/* 0C09F4 800BFDF4 00000000 */   nop   
/* 0C09F8 800BFDF8 44084000 */  mfc1  $t0, $f8
/* 0C09FC 800BFDFC 10000007 */  b     .L800BFE1C
/* 0C0A00 800BFE00 01014025 */   or    $t0, $t0, $at
.L800BFE04:
/* 0C0A04 800BFE04 10000005 */  b     .L800BFE1C
/* 0C0A08 800BFE08 2408FFFF */   li    $t0, -1
.L800BFE0C:
/* 0C0A0C 800BFE0C 44084000 */  mfc1  $t0, $f8
/* 0C0A10 800BFE10 00000000 */  nop   
/* 0C0A14 800BFE14 0500FFFB */  bltz  $t0, .L800BFE04
/* 0C0A18 800BFE18 00000000 */   nop   
.L800BFE1C:
/* 0C0A1C 800BFE1C 44D9F800 */  ctc1  $t9, $31
/* 0C0A20 800BFE20 AC88001C */  sw    $t0, 0x1c($a0)
/* 0C0A24 800BFE24 00000000 */  nop   
.L800BFE28:
/* 0C0A28 800BFE28 C48A002C */  lwc1  $f10, 0x2c($a0)
/* 0C0A2C 800BFE2C C7B2000C */  lwc1  $f18, 0xc($sp)
/* 0C0A30 800BFE30 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C0A34 800BFE34 46125100 */  add.s $f4, $f10, $f18
/* 0C0A38 800BFE38 E484002C */  swc1  $f4, 0x2c($a0)
/* 0C0A3C 800BFE3C C480002C */  lwc1  $f0, 0x2c($a0)
/* 0C0A40 800BFE40 00000000 */  nop   
/* 0C0A44 800BFE44 460001A1 */  cvt.d.s $f6, $f0
/* 0C0A48 800BFE48 4630303C */  c.lt.d $f6, $f16
/* 0C0A4C 800BFE4C 00000000 */  nop   
/* 0C0A50 800BFE50 45000006 */  bc1f  .L800BFE6C
/* 0C0A54 800BFE54 00000000 */   nop   
/* 0C0A58 800BFE58 44814000 */  mtc1  $at, $f8
/* 0C0A5C 800BFE5C 00000000 */  nop   
/* 0C0A60 800BFE60 E488002C */  swc1  $f8, 0x2c($a0)
/* 0C0A64 800BFE64 C480002C */  lwc1  $f0, 0x2c($a0)
/* 0C0A68 800BFE68 00000000 */  nop   
.L800BFE6C:
/* 0C0A6C 800BFE6C 3C014780 */  li    $at, 0x47800000 # 65536.000000
/* 0C0A70 800BFE70 44815000 */  mtc1  $at, $f10
/* 0C0A74 800BFE74 C4840024 */  lwc1  $f4, 0x24($a0)
/* 0C0A78 800BFE78 46005483 */  div.s $f18, $f10, $f0
/* 0C0A7C 800BFE7C E4920020 */  swc1  $f18, 0x20($a0)
/* 0C0A80 800BFE80 C7A60010 */  lwc1  $f6, 0x10($sp)
/* 0C0A84 800BFE84 00000000 */  nop   
/* 0C0A88 800BFE88 46062200 */  add.s $f8, $f4, $f6
/* 0C0A8C 800BFE8C E4880024 */  swc1  $f8, 0x24($a0)
.L800BFE90:
/* 0C0A90 800BFE90 03E00008 */  jr    $ra
/* 0C0A94 800BFE94 00000000 */   nop   

