.late_rodata
glabel jpt_800E83B8
.word L8008541C, L8008553C, L80085574, L80085690, L800856DC, L80085728, L80085828, L80085774, L800857C0, L800857F0

.text
glabel func_800853D0
/* 085FD0 800853D0 27BDFF80 */  addiu $sp, $sp, -0x80
/* 085FD4 800853D4 240E000B */  li    $t6, 11
/* 085FD8 800853D8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 085FDC 800853DC AFB00030 */  sw    $s0, 0x30($sp)
/* 085FE0 800853E0 AFA50084 */  sw    $a1, 0x84($sp)
/* 085FE4 800853E4 AFA60088 */  sw    $a2, 0x88($sp)
/* 085FE8 800853E8 AFAE0070 */  sw    $t6, 0x70($sp)
/* 085FEC 800853EC 908F0000 */  lbu   $t7, ($a0)
/* 085FF0 800853F0 00808025 */  move  $s0, $a0
/* 085FF4 800853F4 25F8FFFF */  addiu $t8, $t7, -1
/* 085FF8 800853F8 2F01000A */  sltiu $at, $t8, 0xa
/* 085FFC 800853FC 1020010A */  beqz  $at, .L80085828
/* 086000 80085400 0018C080 */   sll   $t8, $t8, 2
/* 086004 80085404 3C01800F */  lui   $at, %hi(jpt_800E83B8) # $at, 0x800f
/* 086008 80085408 00380821 */  addu  $at, $at, $t8
/* 08600C 8008540C 8C3883B8 */  lw    $t8, %lo(jpt_800E83B8)($at)
/* 086010 80085410 00000000 */  nop   
/* 086014 80085414 03000008 */  jr    $t8
/* 086018 80085418 00000000 */   nop   
glabel L8008541C
/* 08601C 8008541C 3C19800E */  lui   $t9, %hi(D_800DFC10) # $t9, 0x800e
/* 086020 80085420 2739FC10 */  addiu $t9, %lo(D_800DFC10) # addiu $t9, $t9, -0x3f0
/* 086024 80085424 AFB90068 */  sw    $t9, 0x68($sp)
/* 086028 80085428 92030006 */  lbu   $v1, 6($s0)
/* 08602C 8008542C 3C028012 */  lui   $v0, %hi(gSavefileData) # $v0, 0x8012
/* 086030 80085430 00035080 */  sll   $t2, $v1, 2
/* 086034 80085434 004A1021 */  addu  $v0, $v0, $t2
/* 086038 80085438 8C426530 */  lw    $v0, %lo(gSavefileData)($v0)
/* 08603C 8008543C 3C088012 */  lui   $t0, %hi(D_80126550) # $t0, 0x8012
/* 086040 80085440 904B004B */  lbu   $t3, 0x4b($v0)
/* 086044 80085444 8D08665C */  lw    $t0, %lo(D_80126550 + 0x10C)($t0)
/* 086048 80085448 3C09B0E0 */  lui   $t1, (0xB0E0C0FF >> 16) # lui $t1, 0xb0e0
/* 08604C 8008544C 3529C0FF */  ori   $t1, (0xB0E0C0FF & 0xFFFF) # ori $t1, $t1, 0xc0ff
/* 086050 80085450 1560002F */  bnez  $t3, .L80085510
/* 086054 80085454 01401825 */   move  $v1, $t2
/* 086058 80085458 8C440050 */  lw    $a0, 0x50($v0)
/* 08605C 8008545C AFA9006C */  sw    $t1, 0x6c($sp)
/* 086060 80085460 AFA8004C */  sw    $t0, 0x4c($sp)
/* 086064 80085464 27A50050 */  addiu $a1, $sp, 0x50
/* 086068 80085468 0C025DBE */  jal   decompress_filename_string
/* 08606C 8008546C 24060003 */   li    $a2, 3
/* 086070 80085470 27A40050 */  addiu $a0, $sp, 0x50
/* 086074 80085474 0C025DF4 */  jal   trim_filename_string
/* 086078 80085478 00802825 */   move  $a1, $a0
/* 08607C 8008547C 27AC0050 */  addiu $t4, $sp, 0x50
/* 086080 80085480 AFAC0064 */  sw    $t4, 0x64($sp)
/* 086084 80085484 920D0006 */  lbu   $t5, 6($s0)
/* 086088 80085488 3C028012 */  lui   $v0, %hi(gSavefileData) # $v0, 0x8012
/* 08608C 8008548C 000D7080 */  sll   $t6, $t5, 2
/* 086090 80085490 004E1021 */  addu  $v0, $v0, $t6
/* 086094 80085494 8C426530 */  lw    $v0, %lo(gSavefileData)($v0)
/* 086098 80085498 2404000A */  li    $a0, 10
/* 08609C 8008549C 8C4F0000 */  lw    $t7, ($v0)
/* 0860A0 800854A0 8FA8004C */  lw    $t0, 0x4c($sp)
/* 0860A4 800854A4 85E30000 */  lh    $v1, ($t7)
/* 0860A8 800854A8 8FA9006C */  lw    $t1, 0x6c($sp)
/* 0860AC 800854AC 0064001A */  div   $zero, $v1, $a0
/* 0860B0 800854B0 240E000C */  li    $t6, 12
/* 0860B4 800854B4 14800002 */  bnez  $a0, .L800854C0
/* 0860B8 800854B8 00000000 */   nop   
/* 0860BC 800854BC 0007000D */  break 7
.L800854C0:
/* 0860C0 800854C0 2401FFFF */  li    $at, -1
/* 0860C4 800854C4 14810004 */  bne   $a0, $at, .L800854D8
/* 0860C8 800854C8 3C018000 */   lui   $at, 0x8000
/* 0860CC 800854CC 14610002 */  bne   $v1, $at, .L800854D8
/* 0860D0 800854D0 00000000 */   nop   
/* 0860D4 800854D4 0006000D */  break 6
.L800854D8:
/* 0860D8 800854D8 0000C012 */  mflo  $t8
/* 0860DC 800854DC AFB80078 */  sw    $t8, 0x78($sp)
/* 0860E0 800854E0 0300C825 */  move  $t9, $t8
/* 0860E4 800854E4 03040019 */  multu $t8, $a0
/* 0860E8 800854E8 00005012 */  mflo  $t2
/* 0860EC 800854EC 006A5823 */  subu  $t3, $v1, $t2
/* 0860F0 800854F0 AFAB0074 */  sw    $t3, 0x74($sp)
/* 0860F4 800854F4 8C4C0010 */  lw    $t4, 0x10($v0)
/* 0860F8 800854F8 00000000 */  nop   
/* 0860FC 800854FC 318D0004 */  andi  $t5, $t4, 4
/* 086100 80085500 11A00008 */  beqz  $t5, .L80085524
/* 086104 80085504 00000000 */   nop   
/* 086108 80085508 10000006 */  b     .L80085524
/* 08610C 8008550C AFAE0070 */   sw    $t6, 0x70($sp)
.L80085510:
/* 086110 80085510 3C0F800E */  lui   $t7, %hi(gFilenames) # $t7, 0x800e
/* 086114 80085514 01E37821 */  addu  $t7, $t7, $v1
/* 086118 80085518 8DEF03B0 */  lw    $t7, %lo(gFilenames)($t7)
/* 08611C 8008551C 00000000 */  nop   
/* 086120 80085520 AFAF0064 */  sw    $t7, 0x64($sp)
.L80085524:
/* 086124 80085524 3C18800E */  lui   $t8, %hi(gMenuText) # $t8, 0x800e
/* 086128 80085528 8F18F4A0 */  lw    $t8, %lo(gMenuText)($t8)
/* 08612C 8008552C 00000000 */  nop   
/* 086130 80085530 8F1901DC */  lw    $t9, 0x1dc($t8)
/* 086134 80085534 100000C8 */  b     .L80085858
/* 086138 80085538 AFB90060 */   sw    $t9, 0x60($sp)
glabel L8008553C
/* 08613C 8008553C 3C0A800E */  lui   $t2, %hi(D_800DFC20) # $t2, 0x800e
/* 086140 80085540 3C03800E */  lui   $v1, %hi(gMenuText) # $v1, 0x800e
/* 086144 80085544 8C63F4A0 */  lw    $v1, %lo(gMenuText)($v1)
/* 086148 80085548 254AFC20 */  addiu $t2, %lo(D_800DFC20) # addiu $t2, $t2, -0x3e0
/* 08614C 8008554C AFAA0068 */  sw    $t2, 0x68($sp)
/* 086150 80085550 8C6B01E0 */  lw    $t3, 0x1e0($v1)
/* 086154 80085554 3C088012 */  lui   $t0, %hi(D_80126550) # $t0, 0x8012
/* 086158 80085558 AFAB0064 */  sw    $t3, 0x64($sp)
/* 08615C 8008555C 8C6C01DC */  lw    $t4, 0x1dc($v1)
/* 086160 80085560 8D08665C */  lw    $t0, %lo(D_80126550 + 0x10C)($t0)
/* 086164 80085564 3C09B0E0 */  lui   $t1, (0xB0E0C0FF >> 16) # lui $t1, 0xb0e0
/* 086168 80085568 3529C0FF */  ori   $t1, (0xB0E0C0FF & 0xFFFF) # ori $t1, $t1, 0xc0ff
/* 08616C 8008556C 100000BA */  b     .L80085858
/* 086170 80085570 AFAC0060 */   sw    $t4, 0x60($sp)
glabel L80085574
/* 086174 80085574 3C0D800E */  lui   $t5, %hi(D_800DFC10) # $t5, 0x800e
/* 086178 80085578 25ADFC10 */  addiu $t5, %lo(D_800DFC10) # addiu $t5, $t5, -0x3f0
/* 08617C 8008557C AFAD0068 */  sw    $t5, 0x68($sp)
/* 086180 80085580 920E0006 */  lbu   $t6, 6($s0)
/* 086184 80085584 27A50050 */  addiu $a1, $sp, 0x50
/* 086188 80085588 3C09800E */  lui   $t1, %hi(D_800DFACC) # $t1, 0x800e
/* 08618C 8008558C 000E7880 */  sll   $t7, $t6, 2
/* 086190 80085590 3C088012 */  lui   $t0, %hi(D_80126550) # $t0, 0x8012
/* 086194 80085594 012F4821 */  addu  $t1, $t1, $t7
/* 086198 80085598 AFA50064 */  sw    $a1, 0x64($sp)
/* 08619C 8008559C 8D086660 */  lw    $t0, %lo(D_80126550 + 0x110)($t0)
/* 0861A0 800855A0 8D29FACC */  lw    $t1, %lo(D_800DFACC)($t1)
/* 0861A4 800855A4 86040004 */  lh    $a0, 4($s0)
/* 0861A8 800855A8 24060003 */  li    $a2, 3
/* 0861AC 800855AC AFA8004C */  sw    $t0, 0x4c($sp)
/* 0861B0 800855B0 0C025DBE */  jal   decompress_filename_string
/* 0861B4 800855B4 AFA9006C */   sw    $t1, 0x6c($sp)
/* 0861B8 800855B8 3C06800E */  lui   $a2, %hi(D_800E1E10) # $a2, 0x800e
/* 0861BC 800855BC 8CC61E10 */  lw    $a2, %lo(D_800E1E10)($a2)
/* 0861C0 800855C0 8FA8004C */  lw    $t0, 0x4c($sp)
/* 0861C4 800855C4 90D80000 */  lbu   $t8, ($a2)
/* 0861C8 800855C8 8FA9006C */  lw    $t1, 0x6c($sp)
/* 0861CC 800855CC 1300000A */  beqz  $t8, .L800855F8
/* 0861D0 800855D0 00002825 */   move  $a1, $zero
/* 0861D4 800855D4 90C40000 */  lbu   $a0, ($a2)
/* 0861D8 800855D8 27A20050 */  addiu $v0, $sp, 0x50
/* 0861DC 800855DC 00C01825 */  move  $v1, $a2
.L800855E0:
/* 0861E0 800855E0 A0440003 */  sb    $a0, 3($v0)
/* 0861E4 800855E4 90640001 */  lbu   $a0, 1($v1)
/* 0861E8 800855E8 24A50001 */  addiu $a1, $a1, 1
/* 0861EC 800855EC 24420001 */  addiu $v0, $v0, 1
/* 0861F0 800855F0 1480FFFB */  bnez  $a0, .L800855E0
/* 0861F4 800855F4 24630001 */   addiu $v1, $v1, 1
.L800855F8:
/* 0861F8 800855F8 8E0A0008 */  lw    $t2, 8($s0)
/* 0861FC 800855FC 27B90050 */  addiu $t9, $sp, 0x50
/* 086200 80085600 914B0000 */  lbu   $t3, ($t2)
/* 086204 80085604 00B91021 */  addu  $v0, $a1, $t9
/* 086208 80085608 240C0029 */  li    $t4, 41
/* 08620C 8008560C A04C0004 */  sb    $t4, 4($v0)
/* 086210 80085610 A0400005 */  sb    $zero, 5($v0)
/* 086214 80085614 A04B0003 */  sb    $t3, 3($v0)
/* 086218 80085618 920E0006 */  lbu   $t6, 6($s0)
/* 08621C 8008561C 3C0D800E */  lui   $t5, %hi(gMenuText) # $t5, 0x800e
/* 086220 80085620 8DADF4A0 */  lw    $t5, %lo(gMenuText)($t5)
/* 086224 80085624 000E7880 */  sll   $t7, $t6, 2
/* 086228 80085628 01AFC021 */  addu  $t8, $t5, $t7
/* 08622C 8008562C 8F190158 */  lw    $t9, 0x158($t8)
/* 086230 80085630 2404000A */  li    $a0, 10
/* 086234 80085634 AFB90060 */  sw    $t9, 0x60($sp)
/* 086238 80085638 92030002 */  lbu   $v1, 2($s0)
/* 08623C 8008563C 240E000C */  li    $t6, 12
/* 086240 80085640 0064001A */  div   $zero, $v1, $a0
/* 086244 80085644 14800002 */  bnez  $a0, .L80085650
/* 086248 80085648 00000000 */   nop   
/* 08624C 8008564C 0007000D */  break 7
.L80085650:
/* 086250 80085650 2401FFFF */  li    $at, -1
/* 086254 80085654 14810004 */  bne   $a0, $at, .L80085668
/* 086258 80085658 3C018000 */   lui   $at, 0x8000
/* 08625C 8008565C 14610002 */  bne   $v1, $at, .L80085668
/* 086260 80085660 00000000 */   nop   
/* 086264 80085664 0006000D */  break 6
.L80085668:
/* 086268 80085668 00005012 */  mflo  $t2
/* 08626C 8008566C 00005810 */  mfhi  $t3
/* 086270 80085670 AFAA0078 */  sw    $t2, 0x78($sp)
/* 086274 80085674 AFAB0074 */  sw    $t3, 0x74($sp)
/* 086278 80085678 920C0003 */  lbu   $t4, 3($s0)
/* 08627C 8008567C 00000000 */  nop   
/* 086280 80085680 11800076 */  beqz  $t4, .L8008585C
/* 086284 80085684 8FA50084 */   lw    $a1, 0x84($sp)
/* 086288 80085688 10000073 */  b     .L80085858
/* 08628C 8008568C AFAE0070 */   sw    $t6, 0x70($sp)
glabel L80085690
/* 086290 80085690 3C0D800E */  lui   $t5, %hi(D_800DFC20) # $t5, 0x800e
/* 086294 80085694 25ADFC20 */  addiu $t5, %lo(D_800DFC20) # addiu $t5, $t5, -0x3e0
/* 086298 80085698 AFAD0068 */  sw    $t5, 0x68($sp)
/* 08629C 8008569C 92020006 */  lbu   $v0, 6($s0)
/* 0862A0 800856A0 3C19800E */  lui   $t9, %hi(gMenuText) # $t9, 0x800e
/* 0862A4 800856A4 8E180008 */  lw    $t8, 8($s0)
/* 0862A8 800856A8 8F39F4A0 */  lw    $t9, %lo(gMenuText)($t9)
/* 0862AC 800856AC 00025080 */  sll   $t2, $v0, 2
/* 0862B0 800856B0 3C09800E */  lui   $t1, %hi(D_800DFACC) # $t1, 0x800e
/* 0862B4 800856B4 00027880 */  sll   $t7, $v0, 2
/* 0862B8 800856B8 AFB80064 */  sw    $t8, 0x64($sp)
/* 0862BC 800856BC 032A5821 */  addu  $t3, $t9, $t2
/* 0862C0 800856C0 8D6C0158 */  lw    $t4, 0x158($t3)
/* 0862C4 800856C4 3C088012 */  lui   $t0, %hi(D_80126550) # $t0, 0x8012
/* 0862C8 800856C8 012F4821 */  addu  $t1, $t1, $t7
/* 0862CC 800856CC 8D086660 */  lw    $t0, %lo(D_80126550 + 0x110)($t0)
/* 0862D0 800856D0 8D29FACC */  lw    $t1, %lo(D_800DFACC)($t1)
/* 0862D4 800856D4 10000060 */  b     .L80085858
/* 0862D8 800856D8 AFAC0060 */   sw    $t4, 0x60($sp)
glabel L800856DC
/* 0862DC 800856DC 3C0E800E */  lui   $t6, %hi(D_800DFC30) # $t6, 0x800e
/* 0862E0 800856E0 25CEFC30 */  addiu $t6, %lo(D_800DFC30) # addiu $t6, $t6, -0x3d0
/* 0862E4 800856E4 3C03800E */  lui   $v1, %hi(gMenuText) # $v1, 0x800e
/* 0862E8 800856E8 8C63F4A0 */  lw    $v1, %lo(gMenuText)($v1)
/* 0862EC 800856EC AFAE0068 */  sw    $t6, 0x68($sp)
/* 0862F0 800856F0 92020006 */  lbu   $v0, 6($s0)
/* 0862F4 800856F4 8C6F01E4 */  lw    $t7, 0x1e4($v1)
/* 0862F8 800856F8 0002C080 */  sll   $t8, $v0, 2
/* 0862FC 800856FC 3C09800E */  lui   $t1, %hi(D_800DFACC) # $t1, 0x800e
/* 086300 80085700 0078C821 */  addu  $t9, $v1, $t8
/* 086304 80085704 00026880 */  sll   $t5, $v0, 2
/* 086308 80085708 AFAF0064 */  sw    $t7, 0x64($sp)
/* 08630C 8008570C 8F2A0158 */  lw    $t2, 0x158($t9)
/* 086310 80085710 3C088012 */  lui   $t0, %hi(D_80126550) # $t0, 0x8012
/* 086314 80085714 012D4821 */  addu  $t1, $t1, $t5
/* 086318 80085718 8D086660 */  lw    $t0, %lo(D_80126550 + 0x110)($t0)
/* 08631C 8008571C 8D29FACC */  lw    $t1, %lo(D_800DFACC)($t1)
/* 086320 80085720 1000004D */  b     .L80085858
/* 086324 80085724 AFAA0060 */   sw    $t2, 0x60($sp)
glabel L80085728
/* 086328 80085728 3C0B800E */  lui   $t3, %hi(D_800DFC40) # $t3, 0x800e
/* 08632C 8008572C 256BFC40 */  addiu $t3, %lo(D_800DFC40) # addiu $t3, $t3, -0x3c0
/* 086330 80085730 AFAB0068 */  sw    $t3, 0x68($sp)
/* 086334 80085734 92020006 */  lbu   $v0, 6($s0)
/* 086338 80085738 3C0D800E */  lui   $t5, %hi(gMenuText) # $t5, 0x800e
/* 08633C 8008573C 8E0E0008 */  lw    $t6, 8($s0)
/* 086340 80085740 8DADF4A0 */  lw    $t5, %lo(gMenuText)($t5)
/* 086344 80085744 00027880 */  sll   $t7, $v0, 2
/* 086348 80085748 3C09800E */  lui   $t1, %hi(D_800DFACC) # $t1, 0x800e
/* 08634C 8008574C 00026080 */  sll   $t4, $v0, 2
/* 086350 80085750 AFAE0064 */  sw    $t6, 0x64($sp)
/* 086354 80085754 01AFC021 */  addu  $t8, $t5, $t7
/* 086358 80085758 8F190158 */  lw    $t9, 0x158($t8)
/* 08635C 8008575C 3C088012 */  lui   $t0, %hi(D_80126550) # $t0, 0x8012
/* 086360 80085760 012C4821 */  addu  $t1, $t1, $t4
/* 086364 80085764 8D086660 */  lw    $t0, %lo(D_80126550 + 0x110)($t0)
/* 086368 80085768 8D29FACC */  lw    $t1, %lo(D_800DFACC)($t1)
/* 08636C 8008576C 1000003A */  b     .L80085858
/* 086370 80085770 AFB90060 */   sw    $t9, 0x60($sp)
glabel L80085774
/* 086374 80085774 3C0A800E */  lui   $t2, %hi(D_800DFC50) # $t2, 0x800e
/* 086378 80085778 254AFC50 */  addiu $t2, %lo(D_800DFC50) # addiu $t2, $t2, -0x3b0
/* 08637C 8008577C 3C03800E */  lui   $v1, %hi(gMenuText) # $v1, 0x800e
/* 086380 80085780 8C63F4A0 */  lw    $v1, %lo(gMenuText)($v1)
/* 086384 80085784 AFAA0068 */  sw    $t2, 0x68($sp)
/* 086388 80085788 92020006 */  lbu   $v0, 6($s0)
/* 08638C 8008578C 8C6C01E8 */  lw    $t4, 0x1e8($v1)
/* 086390 80085790 00027080 */  sll   $t6, $v0, 2
/* 086394 80085794 3C09800E */  lui   $t1, %hi(D_800DFACC) # $t1, 0x800e
/* 086398 80085798 006E6821 */  addu  $t5, $v1, $t6
/* 08639C 8008579C 00025880 */  sll   $t3, $v0, 2
/* 0863A0 800857A0 AFAC0064 */  sw    $t4, 0x64($sp)
/* 0863A4 800857A4 8DAF0158 */  lw    $t7, 0x158($t5)
/* 0863A8 800857A8 3C088012 */  lui   $t0, %hi(D_80126550) # $t0, 0x8012
/* 0863AC 800857AC 012B4821 */  addu  $t1, $t1, $t3
/* 0863B0 800857B0 8D086660 */  lw    $t0, %lo(D_80126550 + 0x110)($t0)
/* 0863B4 800857B4 8D29FACC */  lw    $t1, %lo(D_800DFACC)($t1)
/* 0863B8 800857B8 10000027 */  b     .L80085858
/* 0863BC 800857BC AFAF0060 */   sw    $t7, 0x60($sp)
glabel L800857C0
/* 0863C0 800857C0 3C18800E */  lui   $t8, %hi(D_800DFC30) # $t8, 0x800e
/* 0863C4 800857C4 3C19800E */  lui   $t9, %hi(gMenuText) # $t9, 0x800e
/* 0863C8 800857C8 8F39F4A0 */  lw    $t9, %lo(gMenuText)($t9)
/* 0863CC 800857CC 2718FC30 */  addiu $t8, %lo(D_800DFC30) # addiu $t8, $t8, -0x3d0
/* 0863D0 800857D0 AFB80068 */  sw    $t8, 0x68($sp)
/* 0863D4 800857D4 8F2A01EC */  lw    $t2, 0x1ec($t9)
/* 0863D8 800857D8 3C088012 */  lui   $t0, %hi(D_80126550) # $t0, 0x8012
/* 0863DC 800857DC 8D086664 */  lw    $t0, %lo(D_80126550 + 0x114)($t0)
/* 0863E0 800857E0 2409FFFF */  li    $t1, -1
/* 0863E4 800857E4 AFA00060 */  sw    $zero, 0x60($sp)
/* 0863E8 800857E8 1000001B */  b     .L80085858
/* 0863EC 800857EC AFAA0064 */   sw    $t2, 0x64($sp)
glabel L800857F0
/* 0863F0 800857F0 3C0B800E */  lui   $t3, %hi(D_800DFC10) # $t3, 0x800e
/* 0863F4 800857F4 3C03800E */  lui   $v1, %hi(gMenuText) # $v1, 0x800e
/* 0863F8 800857F8 8C63F4A0 */  lw    $v1, %lo(gMenuText)($v1)
/* 0863FC 800857FC 256BFC10 */  addiu $t3, %lo(D_800DFC10) # addiu $t3, $t3, -0x3f0
/* 086400 80085800 AFAB0068 */  sw    $t3, 0x68($sp)
/* 086404 80085804 8C6C02D4 */  lw    $t4, 0x2d4($v1)
/* 086408 80085808 3C088012 */  lui   $t0, %hi(D_80126550) # $t0, 0x8012
/* 08640C 8008580C AFAC0064 */  sw    $t4, 0x64($sp)
/* 086410 80085810 8C6E01DC */  lw    $t6, 0x1dc($v1)
/* 086414 80085814 8D08665C */  lw    $t0, %lo(D_80126550 + 0x10C)($t0)
/* 086418 80085818 3C09B0E0 */  lui   $t1, (0xB0E0C0FF >> 16) # lui $t1, 0xb0e0
/* 08641C 8008581C 3529C0FF */  ori   $t1, (0xB0E0C0FF & 0xFFFF) # ori $t1, $t1, 0xc0ff
/* 086420 80085820 1000000D */  b     .L80085858
/* 086424 80085824 AFAE0060 */   sw    $t6, 0x60($sp)
.L80085828:
glabel L80085828
/* 086428 80085828 3C0D800E */  lui   $t5, %hi(D_800DFC60) # $t5, 0x800e
/* 08642C 8008582C 3C0F800E */  lui   $t7, %hi(gMenuText) # $t7, 0x800e
/* 086430 80085830 8DEFF4A0 */  lw    $t7, %lo(gMenuText)($t7)
/* 086434 80085834 25ADFC60 */  addiu $t5, %lo(D_800DFC60) # addiu $t5, $t5, -0x3a0
/* 086438 80085838 AFAD0068 */  sw    $t5, 0x68($sp)
/* 08643C 8008583C 8DF80144 */  lw    $t8, 0x144($t7)
/* 086440 80085840 3C088012 */  lui   $t0, %hi(D_80126550) # $t0, 0x8012
/* 086444 80085844 3C098080 */  lui   $t1, (0x808080FF >> 16) # lui $t1, 0x8080
/* 086448 80085848 8D086664 */  lw    $t0, %lo(D_80126550 + 0x114)($t0)
/* 08644C 8008584C 352980FF */  ori   $t1, (0x808080FF & 0xFFFF) # ori $t1, $t1, 0x80ff
/* 086450 80085850 AFA00060 */  sw    $zero, 0x60($sp)
/* 086454 80085854 AFB80064 */  sw    $t8, 0x64($sp)
.L80085858:
/* 086458 80085858 8FA50084 */  lw    $a1, 0x84($sp)
.L8008585C:
/* 08645C 8008585C 8FB90088 */  lw    $t9, 0x88($sp)
/* 086460 80085860 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 086464 80085864 240A0078 */  li    $t2, 120
/* 086468 80085868 240B0040 */  li    $t3, 64
/* 08646C 8008586C 240C0004 */  li    $t4, 4
/* 086470 80085870 240E0004 */  li    $t6, 4
/* 086474 80085874 AFAE0018 */  sw    $t6, 0x18($sp)
/* 086478 80085878 AFAC0014 */  sw    $t4, 0x14($sp)
/* 08647C 8008587C AFAB0010 */  sw    $t3, 0x10($sp)
/* 086480 80085880 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 086484 80085884 240700A0 */  li    $a3, 160
/* 086488 80085888 AFA9001C */  sw    $t1, 0x1c($sp)
/* 08648C 8008588C AFA80020 */  sw    $t0, 0x20($sp)
/* 086490 80085890 24A5FF60 */  addiu $a1, $a1, -0xa0
/* 086494 80085894 0C020160 */  jal   func_80080580
/* 086498 80085898 01593023 */   subu  $a2, $t2, $t9
/* 08649C 8008589C 3C038000 */  lui   $v1, %hi(osTvType) # $v1, 0x8000
/* 0864A0 800858A0 8C630300 */  lw    $v1, %lo(osTvType)($v1)
/* 0864A4 800858A4 8FAD0088 */  lw    $t5, 0x88($sp)
/* 0864A8 800858A8 14600002 */  bnez  $v1, .L800858B4
/* 0864AC 800858AC 25AF000C */   addiu $t7, $t5, 0xc
/* 0864B0 800858B0 AFAF0088 */  sw    $t7, 0x88($sp)
.L800858B4:
/* 0864B4 800858B4 92020000 */  lbu   $v0, ($s0)
/* 0864B8 800858B8 24010003 */  li    $at, 3
/* 0864BC 800858BC 1041000E */  beq   $v0, $at, .L800858F8
/* 0864C0 800858C0 24040001 */   li    $a0, 1
/* 0864C4 800858C4 24010001 */  li    $at, 1
/* 0864C8 800858C8 14410050 */  bne   $v0, $at, .L80085A0C
/* 0864CC 800858CC 8FAA0068 */   lw    $t2, 0x68($sp)
/* 0864D0 800858D0 92180006 */  lbu   $t8, 6($s0)
/* 0864D4 800858D4 3C198012 */  lui   $t9, %hi(gSavefileData) # $t9, 0x8012
/* 0864D8 800858D8 00185080 */  sll   $t2, $t8, 2
/* 0864DC 800858DC 032AC821 */  addu  $t9, $t9, $t2
/* 0864E0 800858E0 8F396530 */  lw    $t9, %lo(gSavefileData)($t9)
/* 0864E4 800858E4 00000000 */  nop   
/* 0864E8 800858E8 932B004B */  lbu   $t3, 0x4b($t9)
/* 0864EC 800858EC 00000000 */  nop   
/* 0864F0 800858F0 15600046 */  bnez  $t3, .L80085A0C
/* 0864F4 800858F4 8FAA0068 */   lw    $t2, 0x68($sp)
.L800858F8:
/* 0864F8 800858F8 14600003 */  bnez  $v1, .L80085908
/* 0864FC 800858FC 24050078 */   li    $a1, 120
/* 086500 80085900 10000001 */  b     .L80085908
/* 086504 80085904 24050086 */   li    $a1, 134
.L80085908:
/* 086508 80085908 0C01A142 */  jal   func_80068508
/* 08650C 8008590C AFA5007C */   sw    $a1, 0x7c($sp)
/* 086510 80085910 8FA5007C */  lw    $a1, 0x7c($sp)
/* 086514 80085914 8FAC0088 */  lw    $t4, 0x88($sp)
/* 086518 80085918 3C03800E */  lui   $v1, %hi(gMenuImageStack) # $v1, 0x800e
/* 08651C 8008591C 00AC1023 */  subu  $v0, $a1, $t4
/* 086520 80085920 244EFFCF */  addiu $t6, $v0, -0x31
/* 086524 80085924 448E2000 */  mtc1  $t6, $f4
/* 086528 80085928 2463F75C */  addiu $v1, %lo(gMenuImageStack) # addiu $v1, $v1, -0x8a4
/* 08652C 8008592C 468021A0 */  cvt.s.w $f6, $f4
/* 086530 80085930 8C6D0000 */  lw    $t5, ($v1)
/* 086534 80085934 2458FFE8 */  addiu $t8, $v0, -0x18
/* 086538 80085938 E5A60050 */  swc1  $f6, 0x50($t5)
/* 08653C 8008593C 8FB00070 */  lw    $s0, 0x70($sp)
/* 086540 80085940 44984000 */  mtc1  $t8, $f8
/* 086544 80085944 8C6A0000 */  lw    $t2, ($v1)
/* 086548 80085948 468042A0 */  cvt.s.w $f10, $f8
/* 08654C 8008594C 00107940 */  sll   $t7, $s0, 5
/* 086550 80085950 014FC821 */  addu  $t9, $t2, $t7
/* 086554 80085954 E72A0010 */  swc1  $f10, 0x10($t9)
/* 086558 80085958 01E08025 */  move  $s0, $t7
/* 08655C 8008595C 0C01EFC7 */  jal   func_8007BF1C
/* 086560 80085960 00002025 */   move  $a0, $zero
/* 086564 80085964 8FAB0084 */  lw    $t3, 0x84($sp)
/* 086568 80085968 3C02800E */  lui   $v0, %hi(gMenuImageStack) # $v0, 0x800e
/* 08656C 8008596C 256CFF7B */  addiu $t4, $t3, -0x85
/* 086570 80085970 448C8000 */  mtc1  $t4, $f16
/* 086574 80085974 2442F75C */  addiu $v0, %lo(gMenuImageStack) # addiu $v0, $v0, -0x8a4
/* 086578 80085978 468084A0 */  cvt.s.w $f18, $f16
/* 08657C 8008597C 8C4E0000 */  lw    $t6, ($v0)
/* 086580 80085980 24040002 */  li    $a0, 2
/* 086584 80085984 E5D2004C */  swc1  $f18, 0x4c($t6)
/* 086588 80085988 8C4F0000 */  lw    $t7, ($v0)
/* 08658C 8008598C 8FAD0078 */  lw    $t5, 0x78($sp)
/* 086590 80085990 0C027298 */  jal   func_8009CA60
/* 086594 80085994 A5ED0058 */   sh    $t5, 0x58($t7)
/* 086598 80085998 8FB80084 */  lw    $t8, 0x84($sp)
/* 08659C 8008599C 3C02800E */  lui   $v0, %hi(gMenuImageStack) # $v0, 0x800e
/* 0865A0 800859A0 270AFF83 */  addiu $t2, $t8, -0x7d
/* 0865A4 800859A4 448A2000 */  mtc1  $t2, $f4
/* 0865A8 800859A8 2442F75C */  addiu $v0, %lo(gMenuImageStack) # addiu $v0, $v0, -0x8a4
/* 0865AC 800859AC 468021A0 */  cvt.s.w $f6, $f4
/* 0865B0 800859B0 8C590000 */  lw    $t9, ($v0)
/* 0865B4 800859B4 24040002 */  li    $a0, 2
/* 0865B8 800859B8 E726004C */  swc1  $f6, 0x4c($t9)
/* 0865BC 800859BC 8C4C0000 */  lw    $t4, ($v0)
/* 0865C0 800859C0 8FAB0074 */  lw    $t3, 0x74($sp)
/* 0865C4 800859C4 0C027298 */  jal   func_8009CA60
/* 0865C8 800859C8 A58B0058 */   sh    $t3, 0x58($t4)
/* 0865CC 800859CC 0C01EFC7 */  jal   func_8007BF1C
/* 0865D0 800859D0 24040001 */   li    $a0, 1
/* 0865D4 800859D4 8FAE0084 */  lw    $t6, 0x84($sp)
/* 0865D8 800859D8 3C0F800E */  lui   $t7, %hi(gMenuImageStack) # $t7, 0x800e
/* 0865DC 800859DC 25CDFF80 */  addiu $t5, $t6, -0x80
/* 0865E0 800859E0 448D4000 */  mtc1  $t5, $f8
/* 0865E4 800859E4 8DEFF75C */  lw    $t7, %lo(gMenuImageStack)($t7)
/* 0865E8 800859E8 468042A0 */  cvt.s.w $f10, $f8
/* 0865EC 800859EC 01F0C021 */  addu  $t8, $t7, $s0
/* 0865F0 800859F0 E70A000C */  swc1  $f10, 0xc($t8)
/* 0865F4 800859F4 8FA40070 */  lw    $a0, 0x70($sp)
/* 0865F8 800859F8 0C027298 */  jal   func_8009CA60
/* 0865FC 800859FC 00000000 */   nop   
/* 086600 80085A00 0C01A142 */  jal   func_80068508
/* 086604 80085A04 00002025 */   move  $a0, $zero
/* 086608 80085A08 8FAA0068 */  lw    $t2, 0x68($sp)
.L80085A0C:
/* 08660C 80085A0C 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 086610 80085A10 1140000F */  beqz  $t2, .L80085A50
/* 086614 80085A14 248463A0 */   addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 086618 80085A18 8FA60084 */  lw    $a2, 0x84($sp)
/* 08661C 80085A1C 8FA70088 */  lw    $a3, 0x88($sp)
/* 086620 80085A20 241900FF */  li    $t9, 255
/* 086624 80085A24 240B00FF */  li    $t3, 255
/* 086628 80085A28 240C00FF */  li    $t4, 255
/* 08662C 80085A2C 240E00FF */  li    $t6, 255
/* 086630 80085A30 AFAE001C */  sw    $t6, 0x1c($sp)
/* 086634 80085A34 AFAC0018 */  sw    $t4, 0x18($sp)
/* 086638 80085A38 AFAB0014 */  sw    $t3, 0x14($sp)
/* 08663C 80085A3C AFB90010 */  sw    $t9, 0x10($sp)
/* 086640 80085A40 01402825 */  move  $a1, $t2
/* 086644 80085A44 24C6003C */  addiu $a2, $a2, 0x3c
/* 086648 80085A48 0C01E2AE */  jal   render_textured_rectangle
/* 08664C 80085A4C 24E70006 */   addiu $a3, $a3, 6
.L80085A50:
/* 086650 80085A50 8FAD0060 */  lw    $t5, 0x60($sp)
/* 086654 80085A54 00000000 */  nop   
/* 086658 80085A58 11A00026 */  beqz  $t5, .L80085AF4
/* 08665C 80085A5C 8FAB0064 */   lw    $t3, 0x64($sp)
/* 086660 80085A60 0C0310BB */  jal   set_text_font
/* 086664 80085A64 00002025 */   move  $a0, $zero
/* 086668 80085A68 240F0080 */  li    $t7, 128
/* 08666C 80085A6C AFAF0010 */  sw    $t7, 0x10($sp)
/* 086670 80085A70 00002025 */  move  $a0, $zero
/* 086674 80085A74 00002825 */  move  $a1, $zero
/* 086678 80085A78 00003025 */  move  $a2, $zero
/* 08667C 80085A7C 0C0310E1 */  jal   set_text_colour
/* 086680 80085A80 240700FF */   li    $a3, 255
/* 086684 80085A84 8FA50084 */  lw    $a1, 0x84($sp)
/* 086688 80085A88 8FA60088 */  lw    $a2, 0x88($sp)
/* 08668C 80085A8C 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 086690 80085A90 8FA70060 */  lw    $a3, 0x60($sp)
/* 086694 80085A94 2418000C */  li    $t8, 12
/* 086698 80085A98 AFB80010 */  sw    $t8, 0x10($sp)
/* 08669C 80085A9C 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 0866A0 80085AA0 24A50051 */  addiu $a1, $a1, 0x51
/* 0866A4 80085AA4 0C031110 */  jal   draw_text
/* 0866A8 80085AA8 24C60001 */   addiu $a2, $a2, 1
/* 0866AC 80085AAC 240A00FF */  li    $t2, 255
/* 0866B0 80085AB0 AFAA0010 */  sw    $t2, 0x10($sp)
/* 0866B4 80085AB4 240400FF */  li    $a0, 255
/* 0866B8 80085AB8 24050040 */  li    $a1, 64
/* 0866BC 80085ABC 240600FF */  li    $a2, 255
/* 0866C0 80085AC0 0C0310E1 */  jal   set_text_colour
/* 0866C4 80085AC4 24070040 */   li    $a3, 64
/* 0866C8 80085AC8 8FA50084 */  lw    $a1, 0x84($sp)
/* 0866CC 80085ACC 8FA60088 */  lw    $a2, 0x88($sp)
/* 0866D0 80085AD0 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 0866D4 80085AD4 8FA70060 */  lw    $a3, 0x60($sp)
/* 0866D8 80085AD8 2419000C */  li    $t9, 12
/* 0866DC 80085ADC AFB90010 */  sw    $t9, 0x10($sp)
/* 0866E0 80085AE0 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 0866E4 80085AE4 24A5004F */  addiu $a1, $a1, 0x4f
/* 0866E8 80085AE8 0C031110 */  jal   draw_text
/* 0866EC 80085AEC 24C6FFFF */   addiu $a2, $a2, -1
/* 0866F0 80085AF0 8FAB0064 */  lw    $t3, 0x64($sp)
.L80085AF4:
/* 0866F4 80085AF4 8FB00084 */  lw    $s0, 0x84($sp)
/* 0866F8 80085AF8 11600024 */  beqz  $t3, .L80085B8C
/* 0866FC 80085AFC 24040001 */   li    $a0, 1
/* 086700 80085B00 0C0310BB */  jal   set_text_font
/* 086704 80085B04 2610004F */   addiu $s0, $s0, 0x4f
/* 086708 80085B08 240C00A0 */  li    $t4, 160
/* 08670C 80085B0C AFAC0010 */  sw    $t4, 0x10($sp)
/* 086710 80085B10 00002025 */  move  $a0, $zero
/* 086714 80085B14 00002825 */  move  $a1, $zero
/* 086718 80085B18 00003025 */  move  $a2, $zero
/* 08671C 80085B1C 0C0310E1 */  jal   set_text_colour
/* 086720 80085B20 240700FF */   li    $a3, 255
/* 086724 80085B24 8FA50084 */  lw    $a1, 0x84($sp)
/* 086728 80085B28 8FA60088 */  lw    $a2, 0x88($sp)
/* 08672C 80085B2C 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 086730 80085B30 8FA70064 */  lw    $a3, 0x64($sp)
/* 086734 80085B34 240E0004 */  li    $t6, 4
/* 086738 80085B38 AFAE0010 */  sw    $t6, 0x10($sp)
/* 08673C 80085B3C 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 086740 80085B40 24A50050 */  addiu $a1, $a1, 0x50
/* 086744 80085B44 0C031110 */  jal   draw_text
/* 086748 80085B48 24C60030 */   addiu $a2, $a2, 0x30
/* 08674C 80085B4C 240D00FF */  li    $t5, 255
/* 086750 80085B50 AFAD0010 */  sw    $t5, 0x10($sp)
/* 086754 80085B54 240400FF */  li    $a0, 255
/* 086758 80085B58 240500FF */  li    $a1, 255
/* 08675C 80085B5C 240600FF */  li    $a2, 255
/* 086760 80085B60 0C0310E1 */  jal   set_text_colour
/* 086764 80085B64 240700FF */   li    $a3, 255
/* 086768 80085B68 8FA60088 */  lw    $a2, 0x88($sp)
/* 08676C 80085B6C 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 086770 80085B70 8FA70064 */  lw    $a3, 0x64($sp)
/* 086774 80085B74 240F0004 */  li    $t7, 4
/* 086778 80085B78 AFAF0010 */  sw    $t7, 0x10($sp)
/* 08677C 80085B7C 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 086780 80085B80 02002825 */  move  $a1, $s0
/* 086784 80085B84 0C031110 */  jal   draw_text
/* 086788 80085B88 24C6002F */   addiu $a2, $a2, 0x2f
.L80085B8C:
/* 08678C 80085B8C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 086790 80085B90 8FB00030 */  lw    $s0, 0x30($sp)
/* 086794 80085B94 03E00008 */  jr    $ra
/* 086798 80085B98 27BD0080 */   addiu $sp, $sp, 0x80

