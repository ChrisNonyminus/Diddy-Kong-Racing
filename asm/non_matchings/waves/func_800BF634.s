.late_rodata
glabel D_800E92A8
.float 6.64
glabel D_800E92AC
.float 89128.961
glabel D_800E92B0
.float 6.5333333
glabel D_800E92B4
.float 89128.961

.text
glabel func_800BF634
/* 0C0234 800BF634 3C03800E */  lui   $v1, %hi(D_800E3190) # $v1, 0x800e
/* 0C0238 800BF638 24633190 */  addiu $v1, %lo(D_800E3190) # addiu $v1, $v1, 0x3190
/* 0C023C 800BF63C 8C6E0000 */  lw    $t6, ($v1)
/* 0C0240 800BF640 44856000 */  mtc1  $a1, $f12
/* 0C0244 800BF644 44877000 */  mtc1  $a3, $f14
/* 0C0248 800BF648 00803825 */  move  $a3, $a0
/* 0C024C 800BF64C AFA40000 */  sw    $a0, ($sp)
/* 0C0250 800BF650 AFA60008 */  sw    $a2, 8($sp)
/* 0C0254 800BF654 11C000E5 */  beqz  $t6, .L800BF9EC
/* 0C0258 800BF658 00002825 */   move  $a1, $zero
/* 0C025C 800BF65C 3C0F800E */  lui   $t7, %hi(D_800E3194) # $t7, 0x800e
/* 0C0260 800BF660 8DEF3194 */  lw    $t7, %lo(D_800E3194)($t7)
/* 0C0264 800BF664 0000C080 */  sll   $t8, $zero, 2
/* 0C0268 800BF668 00001025 */  move  $v0, $zero
/* 0C026C 800BF66C 00002025 */  move  $a0, $zero
/* 0C0270 800BF670 01F83021 */  addu  $a2, $t7, $t8
.L800BF674:
/* 0C0274 800BF674 8CD90000 */  lw    $t9, ($a2)
/* 0C0278 800BF678 24420001 */  addiu $v0, $v0, 1
/* 0C027C 800BF67C 17200002 */  bnez  $t9, .L800BF688
/* 0C0280 800BF680 28410020 */   slti  $at, $v0, 0x20
/* 0C0284 800BF684 2404FFFF */  li    $a0, -1
.L800BF688:
/* 0C0288 800BF688 10200003 */  beqz  $at, .L800BF698
/* 0C028C 800BF68C 24C60004 */   addiu $a2, $a2, 4
/* 0C0290 800BF690 1080FFF8 */  beqz  $a0, .L800BF674
/* 0C0294 800BF694 00000000 */   nop   
.L800BF698:
/* 0C0298 800BF698 108000D4 */  beqz  $a0, .L800BF9EC
/* 0C029C 800BF69C 2442FFFF */   addiu $v0, $v0, -1
/* 0C02A0 800BF6A0 3C0B800E */  lui   $t3, %hi(D_800E3194) # $t3, 0x800e
/* 0C02A4 800BF6A4 8D6B3194 */  lw    $t3, %lo(D_800E3194)($t3)
/* 0C02A8 800BF6A8 00026080 */  sll   $t4, $v0, 2
/* 0C02AC 800BF6AC 3C04800E */  lui   $a0, %hi(D_800E3188) # $a0, 0x800e
/* 0C02B0 800BF6B0 016C6821 */  addu  $t5, $t3, $t4
/* 0C02B4 800BF6B4 24843188 */  addiu $a0, %lo(D_800E3188) # addiu $a0, $a0, 0x3188
/* 0C02B8 800BF6B8 ADA70000 */  sw    $a3, ($t5)
/* 0C02BC 800BF6BC 8C8E0000 */  lw    $t6, ($a0)
/* 0C02C0 800BF6C0 3C188013 */  lui   $t8, %hi(D_80129FF0) # $t8, 0x8013
/* 0C02C4 800BF6C4 25CF0001 */  addiu $t7, $t6, 1
/* 0C02C8 800BF6C8 AC8F0000 */  sw    $t7, ($a0)
/* 0C02CC 800BF6CC 8F189FF0 */  lw    $t8, %lo(D_80129FF0)($t8)
/* 0C02D0 800BF6D0 3C018013 */  lui   $at, %hi(D_8012A0B8) # $at, 0x8013
/* 0C02D4 800BF6D4 C420A0B8 */  lwc1  $f0, %lo(D_8012A0B8)($at)
/* 0C02D8 800BF6D8 13000006 */  beqz  $t8, .L800BF6F4
/* 0C02DC 800BF6DC 3C198013 */   lui   $t9, %hi(D_8012A0D0) # $t9, 0x8013
/* 0C02E0 800BF6E0 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0C02E4 800BF6E4 44812000 */  mtc1  $at, $f4
/* 0C02E8 800BF6E8 00000000 */  nop   
/* 0C02EC 800BF6EC 46040002 */  mul.s $f0, $f0, $f4
/* 0C02F0 800BF6F0 00000000 */  nop   
.L800BF6F4:
/* 0C02F4 800BF6F4 8F39A0D0 */  lw    $t9, %lo(D_8012A0D0)($t9)
/* 0C02F8 800BF6F8 460E6201 */  sub.s $f8, $f12, $f14
/* 0C02FC 800BF6FC 44993000 */  mtc1  $t9, $f6
/* 0C0300 800BF700 3C05800E */  lui   $a1, %hi(D_800E318C) # $a1, 0x800e
/* 0C0304 800BF704 468030A0 */  cvt.s.w $f2, $f6
/* 0C0308 800BF708 8CA5318C */  lw    $a1, %lo(D_800E318C)($a1)
/* 0C030C 800BF70C 46024281 */  sub.s $f10, $f8, $f2
/* 0C0310 800BF710 00000000 */  nop   
/* 0C0314 800BF714 46005403 */  div.s $f16, $f10, $f0
/* 0C0318 800BF718 444BF800 */  cfc1  $t3, $31
/* 0C031C 800BF71C 00000000 */  nop   
/* 0C0320 800BF720 35610003 */  ori   $at, $t3, 3
/* 0C0324 800BF724 38210002 */  xori  $at, $at, 2
/* 0C0328 800BF728 44C1F800 */  ctc1  $at, $31
/* 0C032C 800BF72C 00000000 */  nop   
/* 0C0330 800BF730 460084A4 */  cvt.w.s $f18, $f16
/* 0C0334 800BF734 44049000 */  mfc1  $a0, $f18
/* 0C0338 800BF738 44CBF800 */  ctc1  $t3, $31
/* 0C033C 800BF73C 0085082A */  slt   $at, $a0, $a1
/* 0C0340 800BF740 14200003 */  bnez  $at, .L800BF750
/* 0C0344 800BF744 00000000 */   nop   
/* 0C0348 800BF748 03E00008 */  jr    $ra
/* 0C034C 800BF74C 00001025 */   move  $v0, $zero

.L800BF750:
/* 0C0350 800BF750 460E6100 */  add.s $f4, $f12, $f14
/* 0C0354 800BF754 46022181 */  sub.s $f6, $f4, $f2
/* 0C0358 800BF758 00000000 */  nop   
/* 0C035C 800BF75C 46003203 */  div.s $f8, $f6, $f0
/* 0C0360 800BF760 444CF800 */  cfc1  $t4, $31
/* 0C0364 800BF764 00000000 */  nop   
/* 0C0368 800BF768 35810003 */  ori   $at, $t4, 3
/* 0C036C 800BF76C 38210002 */  xori  $at, $at, 2
/* 0C0370 800BF770 44C1F800 */  ctc1  $at, $31
/* 0C0374 800BF774 00000000 */  nop   
/* 0C0378 800BF778 460042A4 */  cvt.w.s $f10, $f8
/* 0C037C 800BF77C 44065000 */  mfc1  $a2, $f10
/* 0C0380 800BF780 44CCF800 */  ctc1  $t4, $31
/* 0C0384 800BF784 04C10003 */  bgez  $a2, .L800BF794
/* 0C0388 800BF788 00C5082A */   slt   $at, $a2, $a1
/* 0C038C 800BF78C 03E00008 */  jr    $ra
/* 0C0390 800BF790 00001025 */   move  $v0, $zero

.L800BF794:
/* 0C0394 800BF794 04810002 */  bgez  $a0, .L800BF7A0
/* 0C0398 800BF798 00026180 */   sll   $t4, $v0, 6
/* 0C039C 800BF79C 00002025 */  move  $a0, $zero
.L800BF7A0:
/* 0C03A0 800BF7A0 14200002 */  bnez  $at, .L800BF7AC
/* 0C03A4 800BF7A4 240A00FF */   li    $t2, 255
/* 0C03A8 800BF7A8 24A6FFFF */  addiu $a2, $a1, -1
.L800BF7AC:
/* 0C03AC 800BF7AC 00C4082A */  slt   $at, $a2, $a0
/* 0C03B0 800BF7B0 14200017 */  bnez  $at, .L800BF810
/* 0C03B4 800BF7B4 00802825 */   move  $a1, $a0
/* 0C03B8 800BF7B8 3C09800E */  lui   $t1, %hi(D_800E3184) # $t1, 0x800e
/* 0C03BC 800BF7BC 25293184 */  addiu $t1, %lo(D_800E3184) # addiu $t1, $t1, 0x3184
/* 0C03C0 800BF7C0 24C80001 */  addiu $t0, $a2, 1
.L800BF7C4:
/* 0C03C4 800BF7C4 8D2E0000 */  lw    $t6, ($t1)
/* 0C03C8 800BF7C8 000568C0 */  sll   $t5, $a1, 3
/* 0C03CC 800BF7CC 01AE2021 */  addu  $a0, $t5, $t6
/* 0C03D0 800BF7D0 908F0007 */  lbu   $t7, 7($a0)
/* 0C03D4 800BF7D4 24A50001 */  addiu $a1, $a1, 1
/* 0C03D8 800BF7D8 154F000B */  bne   $t2, $t7, .L800BF808
/* 0C03DC 800BF7DC 00000000 */   nop   
/* 0C03E0 800BF7E0 90980000 */  lbu   $t8, ($a0)
/* 0C03E4 800BF7E4 00003025 */  move  $a2, $zero
/* 0C03E8 800BF7E8 11580005 */  beq   $t2, $t8, .L800BF800
/* 0C03EC 800BF7EC 00803825 */   move  $a3, $a0
.L800BF7F0:
/* 0C03F0 800BF7F0 90F90001 */  lbu   $t9, 1($a3)
/* 0C03F4 800BF7F4 24C60001 */  addiu $a2, $a2, 1
/* 0C03F8 800BF7F8 1559FFFD */  bne   $t2, $t9, .L800BF7F0
/* 0C03FC 800BF7FC 24E70001 */   addiu $a3, $a3, 1
.L800BF800:
/* 0C0400 800BF800 00865821 */  addu  $t3, $a0, $a2
/* 0C0404 800BF804 A1620000 */  sb    $v0, ($t3)
.L800BF808:
/* 0C0408 800BF808 1505FFEE */  bne   $t0, $a1, .L800BF7C4
/* 0C040C 800BF80C 00000000 */   nop   
.L800BF810:
/* 0C0410 800BF810 C7B00008 */  lwc1  $f16, 8($sp)
/* 0C0414 800BF814 8C6D0000 */  lw    $t5, ($v1)
/* 0C0418 800BF818 460E8481 */  sub.s $f18, $f16, $f14
/* 0C041C 800BF81C 018D2821 */  addu  $a1, $t4, $t5
/* 0C0420 800BF820 E4B20000 */  swc1  $f18, ($a1)
/* 0C0424 800BF824 C7A40008 */  lwc1  $f4, 8($sp)
/* 0C0428 800BF828 E4AC0008 */  swc1  $f12, 8($a1)
/* 0C042C 800BF82C 460E2180 */  add.s $f6, $f4, $f14
/* 0C0430 800BF830 3C0F8000 */  lui   $t7, %hi(osTvType) # $t7, 0x8000
/* 0C0434 800BF834 E4A60004 */  swc1  $f6, 4($a1)
/* 0C0438 800BF838 460E7282 */  mul.s $f10, $f14, $f14
/* 0C043C 800BF83C C7A80008 */  lwc1  $f8, 8($sp)
/* 0C0440 800BF840 E4AE0010 */  swc1  $f14, 0x10($a1)
/* 0C0444 800BF844 A4A20018 */  sh    $v0, 0x18($a1)
/* 0C0448 800BF848 E4AA0014 */  swc1  $f10, 0x14($a1)
/* 0C044C 800BF84C E4A8000C */  swc1  $f8, 0xc($a1)
/* 0C0450 800BF850 8FAE0010 */  lw    $t6, 0x10($sp)
# Used to access D_800E92B0 and D_800E92B4.
/* 0C0454 800BF854 3C01800F */  lui   $at, %hi(D_800E92B0) # $at, 0x800f
/* 0C0458 800BF858 A4AE001A */  sh    $t6, 0x1a($a1)
/* 0C045C 800BF85C 8DEF0300 */  lw    $t7, %lo(osTvType)($t7)
/* 0C0460 800BF860 C7A00014 */  lwc1  $f0, 0x14($sp)
/* 0C0464 800BF864 15E0002B */  bnez  $t7, .L800BF914
/* 0C0468 800BF868 00000000 */   nop   
/* 0C046C 800BF86C 3C01800F */  lui   $at, %hi(D_800E92AC) # $at, 0x800f
/* 0C0470 800BF870 C7A00014 */  lwc1  $f0, 0x14($sp)
/* 0C0474 800BF874 C43392A8 */  lwc1  $f19, %lo(D_800E92A8)($at)
/* 0C0478 800BF878 C43292AC */  lwc1  $f18, %lo(D_800E92AC)($at)
/* 0C047C 800BF87C 46000421 */  cvt.d.s $f16, $f0
/* 0C0480 800BF880 46328102 */  mul.d $f4, $f16, $f18
/* 0C0484 800BF884 24190001 */  li    $t9, 1
/* 0C0488 800BF888 3C0141E0 */  li    $at, 0x41E00000 # 28.000000
/* 0C048C 800BF88C 4458F800 */  cfc1  $t8, $31
/* 0C0490 800BF890 44D9F800 */  ctc1  $t9, $31
/* 0C0494 800BF894 00000000 */  nop   
/* 0C0498 800BF898 462021A4 */  cvt.w.d $f6, $f4
/* 0C049C 800BF89C 4459F800 */  cfc1  $t9, $31
/* 0C04A0 800BF8A0 00000000 */  nop   
/* 0C04A4 800BF8A4 33390078 */  andi  $t9, $t9, 0x78
/* 0C04A8 800BF8A8 13200013 */  beqz  $t9, .L800BF8F8
/* 0C04AC 800BF8AC 00000000 */   nop   
/* 0C04B0 800BF8B0 44813800 */  mtc1  $at, $f7
/* 0C04B4 800BF8B4 44803000 */  mtc1  $zero, $f6
/* 0C04B8 800BF8B8 24190001 */  li    $t9, 1
/* 0C04BC 800BF8BC 46262181 */  sub.d $f6, $f4, $f6
/* 0C04C0 800BF8C0 3C018000 */  lui   $at, 0x8000
/* 0C04C4 800BF8C4 44D9F800 */  ctc1  $t9, $31
/* 0C04C8 800BF8C8 00000000 */  nop   
/* 0C04CC 800BF8CC 462031A4 */  cvt.w.d $f6, $f6
/* 0C04D0 800BF8D0 4459F800 */  cfc1  $t9, $31
/* 0C04D4 800BF8D4 00000000 */  nop   
/* 0C04D8 800BF8D8 33390078 */  andi  $t9, $t9, 0x78
/* 0C04DC 800BF8DC 17200004 */  bnez  $t9, .L800BF8F0
/* 0C04E0 800BF8E0 00000000 */   nop   
/* 0C04E4 800BF8E4 44193000 */  mfc1  $t9, $f6
/* 0C04E8 800BF8E8 10000007 */  b     .L800BF908
/* 0C04EC 800BF8EC 0321C825 */   or    $t9, $t9, $at
.L800BF8F0:
/* 0C04F0 800BF8F0 10000005 */  b     .L800BF908
/* 0C04F4 800BF8F4 2419FFFF */   li    $t9, -1
.L800BF8F8:
/* 0C04F8 800BF8F8 44193000 */  mfc1  $t9, $f6
/* 0C04FC 800BF8FC 00000000 */  nop   
/* 0C0500 800BF900 0720FFFB */  bltz  $t9, .L800BF8F0
/* 0C0504 800BF904 00000000 */   nop   
.L800BF908:
/* 0C0508 800BF908 44D8F800 */  ctc1  $t8, $31
/* 0C050C 800BF90C 10000029 */  b     .L800BF9B4
/* 0C0510 800BF910 ACB9001C */   sw    $t9, 0x1c($a1)
.L800BF914:
/* 0C0514 800BF914 C42B92B0 */  lwc1  $f11, %lo(D_800E92B0)($at)
/* 0C0518 800BF918 C42A92B4 */  lwc1  $f10, %lo(D_800E92B4)($at)
/* 0C051C 800BF91C 46000221 */  cvt.d.s $f8, $f0
/* 0C0520 800BF920 462A4402 */  mul.d $f16, $f8, $f10
/* 0C0524 800BF924 240C0001 */  li    $t4, 1
/* 0C0528 800BF928 3C0141E0 */  li    $at, 0x41E00000 # 28.000000
/* 0C052C 800BF92C 444BF800 */  cfc1  $t3, $31
/* 0C0530 800BF930 44CCF800 */  ctc1  $t4, $31
/* 0C0534 800BF934 00000000 */  nop   
/* 0C0538 800BF938 462084A4 */  cvt.w.d $f18, $f16
/* 0C053C 800BF93C 444CF800 */  cfc1  $t4, $31
/* 0C0540 800BF940 00000000 */  nop   
/* 0C0544 800BF944 318C0078 */  andi  $t4, $t4, 0x78
/* 0C0548 800BF948 11800013 */  beqz  $t4, .L800BF998
/* 0C054C 800BF94C 00000000 */   nop   
/* 0C0550 800BF950 44819800 */  mtc1  $at, $f19
/* 0C0554 800BF954 44809000 */  mtc1  $zero, $f18
/* 0C0558 800BF958 240C0001 */  li    $t4, 1
/* 0C055C 800BF95C 46328481 */  sub.d $f18, $f16, $f18
/* 0C0560 800BF960 3C018000 */  lui   $at, 0x8000
/* 0C0564 800BF964 44CCF800 */  ctc1  $t4, $31
/* 0C0568 800BF968 00000000 */  nop   
/* 0C056C 800BF96C 462094A4 */  cvt.w.d $f18, $f18
/* 0C0570 800BF970 444CF800 */  cfc1  $t4, $31
/* 0C0574 800BF974 00000000 */  nop   
/* 0C0578 800BF978 318C0078 */  andi  $t4, $t4, 0x78
/* 0C057C 800BF97C 15800004 */  bnez  $t4, .L800BF990
/* 0C0580 800BF980 00000000 */   nop   
/* 0C0584 800BF984 440C9000 */  mfc1  $t4, $f18
/* 0C0588 800BF988 10000007 */  b     .L800BF9A8
/* 0C058C 800BF98C 01816025 */   or    $t4, $t4, $at
.L800BF990:
/* 0C0590 800BF990 10000005 */  b     .L800BF9A8
/* 0C0594 800BF994 240CFFFF */   li    $t4, -1
.L800BF998:
/* 0C0598 800BF998 440C9000 */  mfc1  $t4, $f18
/* 0C059C 800BF99C 00000000 */  nop   
/* 0C05A0 800BF9A0 0580FFFB */  bltz  $t4, .L800BF990
/* 0C05A4 800BF9A4 00000000 */   nop   
.L800BF9A8:
/* 0C05A8 800BF9A8 44CBF800 */  ctc1  $t3, $31
/* 0C05AC 800BF9AC ACAC001C */  sw    $t4, 0x1c($a1)
/* 0C05B0 800BF9B0 00000000 */  nop   
.L800BF9B4:
/* 0C05B4 800BF9B4 3C014780 */  li    $at, 0x47800000 # 65536.000000
/* 0C05B8 800BF9B8 C7A20018 */  lwc1  $f2, 0x18($sp)
/* 0C05BC 800BF9BC 44812000 */  mtc1  $at, $f4
/* 0C05C0 800BF9C0 8FA20020 */  lw    $v0, 0x20($sp)
/* 0C05C4 800BF9C4 46022183 */  div.s $f6, $f4, $f2
/* 0C05C8 800BF9C8 304D0001 */  andi  $t5, $v0, 1
/* 0C05CC 800BF9CC 304E0002 */  andi  $t6, $v0, 2
/* 0C05D0 800BF9D0 E4A60020 */  swc1  $f6, 0x20($a1)
/* 0C05D4 800BF9D4 C7A8001C */  lwc1  $f8, 0x1c($sp)
/* 0C05D8 800BF9D8 E4A00028 */  swc1  $f0, 0x28($a1)
/* 0C05DC 800BF9DC A0AD0030 */  sb    $t5, 0x30($a1)
/* 0C05E0 800BF9E0 A0AE0031 */  sb    $t6, 0x31($a1)
/* 0C05E4 800BF9E4 E4A2002C */  swc1  $f2, 0x2c($a1)
/* 0C05E8 800BF9E8 E4A80024 */  swc1  $f8, 0x24($a1)
.L800BF9EC:
/* 0C05EC 800BF9EC 00A01025 */  move  $v0, $a1
/* 0C05F0 800BF9F0 03E00008 */  jr    $ra
/* 0C05F4 800BF9F4 00000000 */   nop   
