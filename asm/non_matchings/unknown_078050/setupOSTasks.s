glabel setupOSTasks
/* 078050 80077450 3C03800E */  lui   $v1, %hi(D_800DE4D4) # $v1, 0x800e
/* 078054 80077454 240E0001 */  li    $t6, 1
/* 078058 80077458 3C01800E */  lui   $at, %hi(D_800DE4DC) # $at, 0x800e
/* 07805C 8007745C 2463E4D4 */  addiu $v1, %lo(D_800DE4D4) # addiu $v1, $v1, -0x1b2c
/* 078060 80077460 AC2EE4DC */  sw    $t6, %lo(D_800DE4DC)($at)
/* 078064 80077464 8C620000 */  lw    $v0, ($v1)
/* 078068 80077468 3C188012 */  lui   $t8, %hi(D_80125F40) # $t8, 0x8012
/* 07806C 8007746C 000278C0 */  sll   $t7, $v0, 3
/* 078070 80077470 01E27823 */  subu  $t7, $t7, $v0
/* 078074 80077474 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 078078 80077478 000F7900 */  sll   $t7, $t7, 4
/* 07807C 8007747C 27185F40 */  addiu $t8, %lo(D_80125F40) # addiu $t8, $t8, 0x5f40
/* 078080 80077480 24010002 */  li    $at, 2
/* 078084 80077484 24590001 */  addiu $t9, $v0, 1
/* 078088 80077488 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07808C 8007748C AFA60028 */  sw    $a2, 0x28($sp)
/* 078090 80077490 01F83821 */  addu  $a3, $t7, $t8
/* 078094 80077494 17210002 */  bne   $t9, $at, .L800774A0
/* 078098 80077498 AC790000 */   sw    $t9, ($v1)
/* 07809C 8007749C AC600000 */  sw    $zero, ($v1)
.L800774A0:
/* 0780A0 800774A0 00A45823 */  subu  $t3, $a1, $a0
/* 0780A4 800774A4 3C03800E */  lui   $v1, %hi(rspF3DDKRBootStart) # $v1, 0x800e
/* 0780A8 800774A8 3C0A8012 */  lui   $t2, %hi(D_80125ED8) # $t2, 0x8012
/* 0780AC 800774AC 000B60C3 */  sra   $t4, $t3, 3
/* 0780B0 800774B0 240D0001 */  li    $t5, 1
/* 0780B4 800774B4 3C0F800E */  lui   $t7, %hi(rspF3DDKRDramStart) # $t7, 0x800e
/* 0780B8 800774B8 246384C0 */  addiu $v1, %lo(rspF3DDKRBootStart) # addiu $v1, $v1, -0x7b40
/* 0780BC 800774BC 254A5ED8 */  addiu $t2, %lo(D_80125ED8) # addiu $t2, $t2, 0x5ed8
/* 0780C0 800774C0 ACEC0044 */  sw    $t4, 0x44($a3)
/* 0780C4 800774C4 ACED0010 */  sw    $t5, 0x10($a3)
/* 0780C8 800774C8 240E0002 */  li    $t6, 2
/* 0780CC 800774CC 25EF8590 */  addiu $t7, %lo(rspF3DDKRDramStart) # addiu $t7, $t7, -0x7a70
/* 0780D0 800774D0 3C02FF00 */  lui   $v0, (0xFF0000FF >> 16) # lui $v0, 0xff00
/* 0780D4 800774D4 24090023 */  li    $t1, 35
/* 0780D8 800774D8 ACEA0050 */  sw    $t2, 0x50($a3)
/* 0780DC 800774DC ACEE0014 */  sw    $t6, 0x14($a3)
/* 0780E0 800774E0 01E3C023 */  subu  $t8, $t7, $v1
/* 0780E4 800774E4 3C0C8012 */  lui   $t4, %hi(gGfxSPTaskYieldBuffer) # $t4, 0x8012
/* 0780E8 800774E8 3C0D8012 */  lui   $t5, %hi(D_80125EA0) # $t5, 0x8012
/* 0780EC 800774EC 344200FF */  ori   $v0, (0xFF0000FF & 0xFFFF) # ori $v0, $v0, 0xff
/* 0780F0 800774F0 ACE90008 */  sw    $t1, 8($a3)
/* 0780F4 800774F4 3C19800E */  lui   $t9, %hi(rspF3DDKRXbusStart) # $t9, 0x800e
/* 0780F8 800774F8 3C08800F */  lui   $t0, %hi(rspF3DDKRDataXbusStart) # $t0, 0x800f
/* 0780FC 800774FC 3C0A8012 */  lui   $t2, %hi(gDramStack) # $t2, 0x8012
/* 078100 80077500 258C46A0 */  addiu $t4, %lo(gGfxSPTaskYieldBuffer) # addiu $t4, $t4, 0x46a0
/* 078104 80077504 25AD5EA0 */  addiu $t5, %lo(D_80125EA0) # addiu $t5, $t5, 0x5ea0
/* 078108 80077508 3C0E8012 */  lui   $t6, %hi(D_801271B0) # $t6, 0x8012
/* 07810C 8007750C ACF8001C */  sw    $t8, 0x1c($a3)
/* 078110 80077510 2739A970 */  addiu $t9, %lo(rspF3DDKRXbusStart) # addiu $t9, $t9, -0x5690
/* 078114 80077514 2508ABA0 */  addiu $t0, %lo(rspF3DDKRDataXbusStart) # addiu $t0, $t0, -0x5460
/* 078118 80077518 24090800 */  li    $t1, 2048
/* 07811C 8007751C 254A42A0 */  addiu $t2, %lo(gDramStack) # addiu $t2, $t2, 0x42a0
/* 078120 80077520 240B0400 */  li    $t3, 1024
/* 078124 80077524 ACEC0038 */  sw    $t4, 0x38($a3)
/* 078128 80077528 ACED003C */  sw    $t5, 0x3c($a3)
/* 07812C 8007752C 25CE71B0 */  addiu $t6, %lo(D_801271B0) # addiu $t6, $t6, 0x71b0
/* 078130 80077530 240F0A00 */  li    $t7, 2560
/* 078134 80077534 ACE20058 */  sw    $v0, 0x58($a3)
/* 078138 80077538 ACE2005C */  sw    $v0, 0x5c($a3)
/* 07813C 8007753C ACE40040 */  sw    $a0, 0x40($a3)
/* 078140 80077540 ACE30018 */  sw    $v1, 0x18($a3)
/* 078144 80077544 ACF90020 */  sw    $t9, 0x20($a3)
/* 078148 80077548 ACE80028 */  sw    $t0, 0x28($a3)
/* 07814C 8007754C ACE9002C */  sw    $t1, 0x2c($a3)
/* 078150 80077550 ACEA0030 */  sw    $t2, 0x30($a3)
/* 078154 80077554 ACEB0034 */  sw    $t3, 0x34($a3)
/* 078158 80077558 ACEE0048 */  sw    $t6, 0x48($a3)
/* 07815C 8007755C ACEF004C */  sw    $t7, 0x4c($a3)
/* 078160 80077560 ACE00038 */  sw    $zero, 0x38($a3)
/* 078164 80077564 ACE0003C */  sw    $zero, 0x3c($a3)
/* 078168 80077568 ACE00000 */  sw    $zero, ($a3)
/* 07816C 8007756C 3C188012 */  lui   $t8, %hi(gVideoCurrFramebuffer) # $t8, 0x8012
/* 078170 80077570 8F1862D4 */  lw    $t8, %lo(gVideoCurrFramebuffer)($t8)
/* 078174 80077574 240200FF */  li    $v0, 255
/* 078178 80077578 ACE20060 */  sw    $v0, 0x60($a3)
/* 07817C 8007757C ACE20064 */  sw    $v0, 0x64($a3)
/* 078180 80077580 ACF8000C */  sw    $t8, 0xc($a3)
/* 078184 80077584 0C034628 */  jal   osWritebackDCacheAll
/* 078188 80077588 AFA7001C */   sw    $a3, 0x1c($sp)
/* 07818C 8007758C 3C048012 */  lui   $a0, %hi(osScInterruptQ) # $a0, 0x8012
/* 078190 80077590 8FA5001C */  lw    $a1, 0x1c($sp)
/* 078194 80077594 8C846100 */  lw    $a0, %lo(osScInterruptQ)($a0)
/* 078198 80077598 0C03238C */  jal   osSendMesg
/* 07819C 8007759C 24060001 */   li    $a2, 1
/* 0781A0 800775A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0781A4 800775A4 27BD0020 */  addiu $sp, $sp, 0x20
/* 0781A8 800775A8 03E00008 */  jr    $ra
/* 0781AC 800775AC 00001025 */   move  $v0, $zero

/* 0781B0 800775B0 3C03800E */  lui   $v1, %hi(D_800DE4D8) # $v1, 0x800e
/* 0781B4 800775B4 2463E4D8 */  addiu $v1, %lo(D_800DE4D8) # addiu $v1, $v1, -0x1b28
/* 0781B8 800775B8 8C620000 */  lw    $v0, ($v1)
/* 0781BC 800775BC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0781C0 800775C0 000270C0 */  sll   $t6, $v0, 3
/* 0781C4 800775C4 3C0F8012 */  lui   $t7, %hi(D_80126020) # $t7, 0x8012
/* 0781C8 800775C8 01C27023 */  subu  $t6, $t6, $v0
/* 0781CC 800775CC 000E7100 */  sll   $t6, $t6, 4
/* 0781D0 800775D0 25EF6020 */  addiu $t7, %lo(D_80126020) # addiu $t7, $t7, 0x6020
/* 0781D4 800775D4 24010002 */  li    $at, 2
/* 0781D8 800775D8 24580001 */  addiu $t8, $v0, 1
/* 0781DC 800775DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0781E0 800775E0 AFA60030 */  sw    $a2, 0x30($sp)
/* 0781E4 800775E4 AFA00020 */  sw    $zero, 0x20($sp)
/* 0781E8 800775E8 01CF3821 */  addu  $a3, $t6, $t7
/* 0781EC 800775EC 17010002 */  bne   $t8, $at, .L800775F8
/* 0781F0 800775F0 AC780000 */   sw    $t8, ($v1)
/* 0781F4 800775F4 AC600000 */  sw    $zero, ($v1)
.L800775F8:
/* 0781F8 800775F8 3C02800E */  lui   $v0, %hi(rspF3DDKRBootStart) # $v0, 0x800e
/* 0781FC 800775FC 3C0D800E */  lui   $t5, %hi(rspF3DDKRDramStart) # $t5, 0x800e
/* 078200 80077600 244284C0 */  addiu $v0, %lo(rspF3DDKRBootStart) # addiu $v0, $v0, -0x7b40
/* 078204 80077604 00A44023 */  subu  $t0, $a1, $a0
/* 078208 80077608 25AD8590 */  addiu $t5, %lo(rspF3DDKRDramStart) # addiu $t5, $t5, -0x7a70
/* 07820C 8007760C 000848C3 */  sra   $t1, $t0, 3
/* 078210 80077610 01A27023 */  subu  $t6, $t5, $v0
/* 078214 80077614 000950C0 */  sll   $t2, $t1, 3
/* 078218 80077618 ACEA0044 */  sw    $t2, 0x44($a3)
/* 07821C 8007761C 240B0001 */  li    $t3, 1
/* 078220 80077620 240C0002 */  li    $t4, 2
/* 078224 80077624 ACEE001C */  sw    $t6, 0x1c($a3)
/* 078228 80077628 3C0F800E */  lui   $t7, %hi(rspF3DDKRXbusStart) # $t7, 0x800e
/* 07822C 8007762C ACEB0010 */  sw    $t3, 0x10($a3)
/* 078230 80077630 ACEC0014 */  sw    $t4, 0x14($a3)
/* 078234 80077634 25EFA970 */  addiu $t7, %lo(rspF3DDKRXbusStart) # addiu $t7, $t7, -0x5690
/* 078238 80077638 3C18800F */  lui   $t8, %hi(rspF3DDKRDataXbusStart) # $t8, 0x800f
/* 07823C 8007763C 3C088012 */  lui   $t0, %hi(gDramStack) # $t0, 0x8012
/* 078240 80077640 3C0A8012 */  lui   $t2, %hi(D_801271B0) # $t2, 0x8012
/* 078244 80077644 3C0D8012 */  lui   $t5, %hi(D_80125ED8) # $t5, 0x8012
/* 078248 80077648 3C0E800E */  lui   $t6, %hi(D_800DE490) # $t6, 0x800e
/* 07824C 8007764C ACEF0020 */  sw    $t7, 0x20($a3)
/* 078250 80077650 2718ABA0 */  addiu $t8, %lo(rspF3DDKRDataXbusStart) # addiu $t8, $t8, -0x5460
/* 078254 80077654 24190800 */  li    $t9, 2048
/* 078258 80077658 250842A0 */  addiu $t0, %lo(gDramStack) # addiu $t0, $t0, 0x42a0
/* 07825C 8007765C 24090400 */  li    $t1, 1024
/* 078260 80077660 254A71B0 */  addiu $t2, %lo(D_801271B0) # addiu $t2, $t2, 0x71b0
/* 078264 80077664 240B0A00 */  li    $t3, 2560
/* 078268 80077668 240C0003 */  li    $t4, 3
/* 07826C 8007766C 25AD5ED8 */  addiu $t5, %lo(D_80125ED8) # addiu $t5, $t5, 0x5ed8
/* 078270 80077670 25CEE490 */  addiu $t6, %lo(D_800DE490) # addiu $t6, $t6, -0x1b70
/* 078274 80077674 ACE40040 */  sw    $a0, 0x40($a3)
/* 078278 80077678 ACE20018 */  sw    $v0, 0x18($a3)
/* 07827C 8007767C ACF80028 */  sw    $t8, 0x28($a3)
/* 078280 80077680 ACF9002C */  sw    $t9, 0x2c($a3)
/* 078284 80077684 ACE80030 */  sw    $t0, 0x30($a3)
/* 078288 80077688 ACE90034 */  sw    $t1, 0x34($a3)
/* 07828C 8007768C ACEA0048 */  sw    $t2, 0x48($a3)
/* 078290 80077690 ACEB004C */  sw    $t3, 0x4c($a3)
/* 078294 80077694 ACE00038 */  sw    $zero, 0x38($a3)
/* 078298 80077698 ACE0003C */  sw    $zero, 0x3c($a3)
/* 07829C 8007769C ACE00000 */  sw    $zero, ($a3)
/* 0782A0 800776A0 ACEC0008 */  sw    $t4, 8($a3)
/* 0782A4 800776A4 ACED0050 */  sw    $t5, 0x50($a3)
/* 0782A8 800776A8 ACEE0054 */  sw    $t6, 0x54($a3)
/* 0782AC 800776AC 3C0F8012 */  lui   $t7, %hi(gVideoCurrFramebuffer) # $t7, 0x8012
/* 0782B0 800776B0 8DEF62D4 */  lw    $t7, %lo(gVideoCurrFramebuffer)($t7)
/* 0782B4 800776B4 3C02FF00 */  lui   $v0, (0xFF0000FF >> 16) # lui $v0, 0xff00
/* 0782B8 800776B8 344200FF */  ori   $v0, (0xFF0000FF & 0xFFFF) # ori $v0, $v0, 0xff
/* 0782BC 800776BC 240300FF */  li    $v1, 255
/* 0782C0 800776C0 ACE20058 */  sw    $v0, 0x58($a3)
/* 0782C4 800776C4 ACE2005C */  sw    $v0, 0x5c($a3)
/* 0782C8 800776C8 ACE30060 */  sw    $v1, 0x60($a3)
/* 0782CC 800776CC ACE30064 */  sw    $v1, 0x64($a3)
/* 0782D0 800776D0 ACE00068 */  sw    $zero, 0x68($a3)
/* 0782D4 800776D4 ACEF000C */  sw    $t7, 0xc($a3)
/* 0782D8 800776D8 8FB80030 */  lw    $t8, 0x30($sp)
/* 0782DC 800776DC 3C198012 */  lui   $t9, %hi(D_80125EA0) # $t9, 0x8012
/* 0782E0 800776E0 13000002 */  beqz  $t8, .L800776EC
/* 0782E4 800776E4 27395EA0 */   addiu $t9, %lo(D_80125EA0) # addiu $t9, $t9, 0x5ea0
/* 0782E8 800776E8 ACF90050 */  sw    $t9, 0x50($a3)
.L800776EC:
/* 0782EC 800776EC 0C034628 */  jal   osWritebackDCacheAll
/* 0782F0 800776F0 AFA70024 */   sw    $a3, 0x24($sp)
/* 0782F4 800776F4 3C048012 */  lui   $a0, %hi(osScInterruptQ) # $a0, 0x8012
/* 0782F8 800776F8 8FA50024 */  lw    $a1, 0x24($sp)
/* 0782FC 800776FC 8C846100 */  lw    $a0, %lo(osScInterruptQ)($a0)
/* 078300 80077700 0C03238C */  jal   osSendMesg
/* 078304 80077704 24060001 */   li    $a2, 1
/* 078308 80077708 8FA80030 */  lw    $t0, 0x30($sp)
/* 07830C 8007770C 3C048012 */  lui   $a0, %hi(D_80125EA0) # $a0, 0x8012
/* 078310 80077710 11000004 */  beqz  $t0, .L80077724
/* 078314 80077714 24845EA0 */   addiu $a0, %lo(D_80125EA0) # addiu $a0, $a0, 0x5ea0
/* 078318 80077718 27A50020 */  addiu $a1, $sp, 0x20
/* 07831C 8007771C 0C0322EC */  jal   osRecvMesg
/* 078320 80077720 24060001 */   li    $a2, 1
.L80077724:
/* 078324 80077724 8FBF0014 */  lw    $ra, 0x14($sp)
/* 078328 80077728 27BD0028 */  addiu $sp, $sp, 0x28
/* 07832C 8007772C 03E00008 */  jr    $ra
/* 078330 80077730 00000000 */   nop   

/* 078334 80077734 3C03800E */  lui   $v1, %hi(D_800DE4D8) # $v1, 0x800e
/* 078338 80077738 2463E4D8 */  addiu $v1, %lo(D_800DE4D8) # addiu $v1, $v1, -0x1b28
/* 07833C 8007773C 8C620000 */  lw    $v0, ($v1)
/* 078340 80077740 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 078344 80077744 000270C0 */  sll   $t6, $v0, 3
/* 078348 80077748 3C0F8012 */  lui   $t7, %hi(D_80126020) # $t7, 0x8012
/* 07834C 8007774C 01C27023 */  subu  $t6, $t6, $v0
/* 078350 80077750 000E7100 */  sll   $t6, $t6, 4
/* 078354 80077754 25EF6020 */  addiu $t7, %lo(D_80126020) # addiu $t7, $t7, 0x6020
/* 078358 80077758 24010002 */  li    $at, 2
/* 07835C 8007775C 24580001 */  addiu $t8, $v0, 1
/* 078360 80077760 AFBF0014 */  sw    $ra, 0x14($sp)
/* 078364 80077764 AFA60030 */  sw    $a2, 0x30($sp)
/* 078368 80077768 AFA00020 */  sw    $zero, 0x20($sp)
/* 07836C 8007776C 01CF3821 */  addu  $a3, $t6, $t7
/* 078370 80077770 17010002 */  bne   $t8, $at, .L8007777C
/* 078374 80077774 AC780000 */   sw    $t8, ($v1)
/* 078378 80077778 AC600000 */  sw    $zero, ($v1)
.L8007777C:
/* 07837C 8007777C 3C02800E */  lui   $v0, %hi(rspF3DDKRBootStart) # $v0, 0x800e
/* 078380 80077780 00A44023 */  subu  $t0, $a1, $a0
/* 078384 80077784 3C0D800E */  lui   $t5, %hi(rspF3DDKRDramStart) # $t5, 0x800e
/* 078388 80077788 244284C0 */  addiu $v0, %lo(rspF3DDKRBootStart) # addiu $v0, $v0, -0x7b40
/* 07838C 8007778C 000848C3 */  sra   $t1, $t0, 3
/* 078390 80077790 25AD8590 */  addiu $t5, %lo(rspF3DDKRDramStart) # addiu $t5, $t5, -0x7a70
/* 078394 80077794 3C0F800E */  lui   $t7, %hi(rspF3DDKRFifoStart) # $t7, 0x800e
/* 078398 80077798 3C18800F */  lui   $t8, %hi(rspF3DDKRDataFifoStart) # $t8, 0x800f
/* 07839C 8007779C 000950C0 */  sll   $t2, $t1, 3
/* 0783A0 800777A0 240B0001 */  li    $t3, 1
/* 0783A4 800777A4 240C0002 */  li    $t4, 2
/* 0783A8 800777A8 01A27023 */  subu  $t6, $t5, $v0
/* 0783AC 800777AC 25EF9790 */  addiu $t7, %lo(rspF3DDKRFifoStart) # addiu $t7, $t7, -0x6870
/* 0783B0 800777B0 2718A3A0 */  addiu $t8, %lo(rspF3DDKRDataFifoStart) # addiu $t8, $t8, -0x5c60
/* 0783B4 800777B4 ACEA0044 */  sw    $t2, 0x44($a3)
/* 0783B8 800777B8 ACEB0010 */  sw    $t3, 0x10($a3)
/* 0783BC 800777BC ACEC0014 */  sw    $t4, 0x14($a3)
/* 0783C0 800777C0 ACEF0020 */  sw    $t7, 0x20($a3)
/* 0783C4 800777C4 ACF80028 */  sw    $t8, 0x28($a3)
/* 0783C8 800777C8 ACEE001C */  sw    $t6, 0x1c($a3)
/* 0783CC 800777CC 24190800 */  li    $t9, 2048
/* 0783D0 800777D0 3C088012 */  lui   $t0, %hi(gDramStack) # $t0, 0x8012
/* 0783D4 800777D4 3C0A8012 */  lui   $t2, %hi(gGfxSPTaskYieldBuffer) # $t2, 0x8012
/* 0783D8 800777D8 3C0B8012 */  lui   $t3, %hi(D_80125EA0) # $t3, 0x8012
/* 0783DC 800777DC 3C0C8012 */  lui   $t4, %hi(D_801271B0) # $t4, 0x8012
/* 0783E0 800777E0 3C0F8012 */  lui   $t7, %hi(D_80125ED8) # $t7, 0x8012
/* 0783E4 800777E4 3C18800E */  lui   $t8, %hi(D_800DE490) # $t8, 0x800e
/* 0783E8 800777E8 ACF9002C */  sw    $t9, 0x2c($a3)
/* 0783EC 800777EC 250842A0 */  addiu $t0, %lo(gDramStack) # addiu $t0, $t0, 0x42a0
/* 0783F0 800777F0 24090400 */  li    $t1, 1024
/* 0783F4 800777F4 254A46A0 */  addiu $t2, %lo(gGfxSPTaskYieldBuffer) # addiu $t2, $t2, 0x46a0
/* 0783F8 800777F8 256B5EA0 */  addiu $t3, %lo(D_80125EA0) # addiu $t3, $t3, 0x5ea0
/* 0783FC 800777FC 258C71B0 */  addiu $t4, %lo(D_801271B0) # addiu $t4, $t4, 0x71b0
/* 078400 80077800 240D0A00 */  li    $t5, 2560
/* 078404 80077804 240E0007 */  li    $t6, 7
/* 078408 80077808 25EF5ED8 */  addiu $t7, %lo(D_80125ED8) # addiu $t7, $t7, 0x5ed8
/* 07840C 8007780C 2718E490 */  addiu $t8, %lo(D_800DE490) # addiu $t8, $t8, -0x1b70
/* 078410 80077810 ACE40040 */  sw    $a0, 0x40($a3)
/* 078414 80077814 ACE20018 */  sw    $v0, 0x18($a3)
/* 078418 80077818 ACE80030 */  sw    $t0, 0x30($a3)
/* 07841C 8007781C ACE90034 */  sw    $t1, 0x34($a3)
/* 078420 80077820 ACEA0038 */  sw    $t2, 0x38($a3)
/* 078424 80077824 ACEB003C */  sw    $t3, 0x3c($a3)
/* 078428 80077828 ACEC0048 */  sw    $t4, 0x48($a3)
/* 07842C 8007782C ACED004C */  sw    $t5, 0x4c($a3)
/* 078430 80077830 ACE00000 */  sw    $zero, ($a3)
/* 078434 80077834 ACEE0008 */  sw    $t6, 8($a3)
/* 078438 80077838 ACEF0050 */  sw    $t7, 0x50($a3)
/* 07843C 8007783C ACF80054 */  sw    $t8, 0x54($a3)
/* 078440 80077840 3C198012 */  lui   $t9, %hi(gVideoCurrFramebuffer) # $t9, 0x8012
/* 078444 80077844 8F3962D4 */  lw    $t9, %lo(gVideoCurrFramebuffer)($t9)
/* 078448 80077848 3C02FF00 */  lui   $v0, (0xFF0000FF >> 16) # lui $v0, 0xff00
/* 07844C 8007784C 344200FF */  ori   $v0, (0xFF0000FF & 0xFFFF) # ori $v0, $v0, 0xff
/* 078450 80077850 240300FF */  li    $v1, 255
/* 078454 80077854 ACE20058 */  sw    $v0, 0x58($a3)
/* 078458 80077858 ACE2005C */  sw    $v0, 0x5c($a3)
/* 07845C 8007785C ACE30060 */  sw    $v1, 0x60($a3)
/* 078460 80077860 ACE30064 */  sw    $v1, 0x64($a3)
/* 078464 80077864 ACE00068 */  sw    $zero, 0x68($a3)
/* 078468 80077868 ACF9000C */  sw    $t9, 0xc($a3)
/* 07846C 8007786C 8FA80030 */  lw    $t0, 0x30($sp)
/* 078470 80077870 3C098012 */  lui   $t1, %hi(D_80125EA0) # $t1, 0x8012
/* 078474 80077874 11000002 */  beqz  $t0, .L80077880
/* 078478 80077878 25295EA0 */   addiu $t1, %lo(D_80125EA0) # addiu $t1, $t1, 0x5ea0
/* 07847C 8007787C ACE90050 */  sw    $t1, 0x50($a3)
.L80077880:
/* 078480 80077880 0C034628 */  jal   osWritebackDCacheAll
/* 078484 80077884 AFA70024 */   sw    $a3, 0x24($sp)
/* 078488 80077888 3C048012 */  lui   $a0, %hi(osScInterruptQ) # $a0, 0x8012
/* 07848C 8007788C 8FA50024 */  lw    $a1, 0x24($sp)
/* 078490 80077890 8C846100 */  lw    $a0, %lo(osScInterruptQ)($a0)
/* 078494 80077894 0C03238C */  jal   osSendMesg
/* 078498 80077898 24060001 */   li    $a2, 1
/* 07849C 8007789C 8FAA0030 */  lw    $t2, 0x30($sp)
/* 0784A0 800778A0 3C048012 */  lui   $a0, %hi(D_80125EA0) # $a0, 0x8012
/* 0784A4 800778A4 11400004 */  beqz  $t2, .L800778B8
/* 0784A8 800778A8 24845EA0 */   addiu $a0, %lo(D_80125EA0) # addiu $a0, $a0, 0x5ea0
/* 0784AC 800778AC 27A50020 */  addiu $a1, $sp, 0x20
/* 0784B0 800778B0 0C0322EC */  jal   osRecvMesg
/* 0784B4 800778B4 24060001 */   li    $a2, 1
.L800778B8:
/* 0784B8 800778B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0784BC 800778BC 27BD0028 */  addiu $sp, $sp, 0x28
/* 0784C0 800778C0 03E00008 */  jr    $ra
/* 0784C4 800778C4 00000000 */   nop   

/* 0784C8 800778C8 3C03800E */  lui   $v1, %hi(D_800DE4D4) # $v1, 0x800e
/* 0784CC 800778CC 2463E4D4 */  addiu $v1, %lo(D_800DE4D4) # addiu $v1, $v1, -0x1b2c
/* 0784D0 800778D0 8C620000 */  lw    $v0, ($v1)
/* 0784D4 800778D4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0784D8 800778D8 000270C0 */  sll   $t6, $v0, 3
/* 0784DC 800778DC 3C0F8012 */  lui   $t7, %hi(D_80125F40) # $t7, 0x8012
/* 0784E0 800778E0 01C27023 */  subu  $t6, $t6, $v0
/* 0784E4 800778E4 000E7100 */  sll   $t6, $t6, 4
/* 0784E8 800778E8 25EF5F40 */  addiu $t7, %lo(D_80125F40) # addiu $t7, $t7, 0x5f40
/* 0784EC 800778EC 24010003 */  li    $at, 3
/* 0784F0 800778F0 24580001 */  addiu $t8, $v0, 1
/* 0784F4 800778F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0784F8 800778F8 AFA60030 */  sw    $a2, 0x30($sp)
/* 0784FC 800778FC AFA00020 */  sw    $zero, 0x20($sp)
/* 078500 80077900 01CF3821 */  addu  $a3, $t6, $t7
/* 078504 80077904 17010002 */  bne   $t8, $at, .L80077910
/* 078508 80077908 AC780000 */   sw    $t8, ($v1)
/* 07850C 8007790C AC600000 */  sw    $zero, ($v1)
.L80077910:
/* 078510 80077910 3C02800E */  lui   $v0, %hi(rspF3DDKRBootStart) # $v0, 0x800e
/* 078514 80077914 00A44023 */  subu  $t0, $a1, $a0
/* 078518 80077918 3C0D800E */  lui   $t5, %hi(rspF3DDKRDramStart) # $t5, 0x800e
/* 07851C 8007791C 244284C0 */  addiu $v0, %lo(rspF3DDKRBootStart) # addiu $v0, $v0, -0x7b40
/* 078520 80077920 000848C3 */  sra   $t1, $t0, 3
/* 078524 80077924 25AD8590 */  addiu $t5, %lo(rspF3DDKRDramStart) # addiu $t5, $t5, -0x7a70
/* 078528 80077928 3C0F800E */  lui   $t7, %hi(rspF3DDKRFifoStart) # $t7, 0x800e
/* 07852C 8007792C 3C18800F */  lui   $t8, %hi(rspF3DDKRDataFifoStart) # $t8, 0x800f
/* 078530 80077930 000950C0 */  sll   $t2, $t1, 3
/* 078534 80077934 240B0001 */  li    $t3, 1
/* 078538 80077938 240C0002 */  li    $t4, 2
/* 07853C 8007793C 01A27023 */  subu  $t6, $t5, $v0
/* 078540 80077940 25EF9790 */  addiu $t7, %lo(rspF3DDKRFifoStart) # addiu $t7, $t7, -0x6870
/* 078544 80077944 2718A3A0 */  addiu $t8, %lo(rspF3DDKRDataFifoStart) # addiu $t8, $t8, -0x5c60
/* 078548 80077948 ACEA0044 */  sw    $t2, 0x44($a3)
/* 07854C 8007794C ACEB0010 */  sw    $t3, 0x10($a3)
/* 078550 80077950 ACEC0014 */  sw    $t4, 0x14($a3)
/* 078554 80077954 ACEF0020 */  sw    $t7, 0x20($a3)
/* 078558 80077958 ACF80028 */  sw    $t8, 0x28($a3)
/* 07855C 8007795C ACEE001C */  sw    $t6, 0x1c($a3)
/* 078560 80077960 24190800 */  li    $t9, 2048
/* 078564 80077964 3C088012 */  lui   $t0, %hi(gDramStack) # $t0, 0x8012
/* 078568 80077968 3C0A8012 */  lui   $t2, %hi(gGfxSPTaskYieldBuffer) # $t2, 0x8012
/* 07856C 8007796C 3C0B8012 */  lui   $t3, %hi(D_80125EA0) # $t3, 0x8012
/* 078570 80077970 3C0C8012 */  lui   $t4, %hi(D_801271B0) # $t4, 0x8012
/* 078574 80077974 3C0F8012 */  lui   $t7, %hi(D_80125ED8) # $t7, 0x8012
/* 078578 80077978 3C18800E */  lui   $t8, %hi(D_800DE490) # $t8, 0x800e
/* 07857C 8007797C ACE20018 */  sw    $v0, 0x18($a3)
/* 078580 80077980 ACF9002C */  sw    $t9, 0x2c($a3)
/* 078584 80077984 250842A0 */  addiu $t0, %lo(gDramStack) # addiu $t0, $t0, 0x42a0
/* 078588 80077988 24090400 */  li    $t1, 1024
/* 07858C 8007798C 254A46A0 */  addiu $t2, %lo(gGfxSPTaskYieldBuffer) # addiu $t2, $t2, 0x46a0
/* 078590 80077990 256B5EA0 */  addiu $t3, %lo(D_80125EA0) # addiu $t3, $t3, 0x5ea0
/* 078594 80077994 258C71B0 */  addiu $t4, %lo(D_801271B0) # addiu $t4, $t4, 0x71b0
/* 078598 80077998 240D0A00 */  li    $t5, 2560
/* 07859C 8007799C 240E0007 */  li    $t6, 7
/* 0785A0 800779A0 25EF5ED8 */  addiu $t7, %lo(D_80125ED8) # addiu $t7, $t7, 0x5ed8
/* 0785A4 800779A4 2718E490 */  addiu $t8, %lo(D_800DE490) # addiu $t8, $t8, -0x1b70
/* 0785A8 800779A8 ACE40040 */  sw    $a0, 0x40($a3)
/* 0785AC 800779AC ACE80030 */  sw    $t0, 0x30($a3)
/* 0785B0 800779B0 ACE90034 */  sw    $t1, 0x34($a3)
/* 0785B4 800779B4 ACEA0038 */  sw    $t2, 0x38($a3)
/* 0785B8 800779B8 ACEB003C */  sw    $t3, 0x3c($a3)
/* 0785BC 800779BC ACEC0048 */  sw    $t4, 0x48($a3)
/* 0785C0 800779C0 ACED004C */  sw    $t5, 0x4c($a3)
/* 0785C4 800779C4 ACE00000 */  sw    $zero, ($a3)
/* 0785C8 800779C8 ACEE0008 */  sw    $t6, 8($a3)
/* 0785CC 800779CC ACEF0050 */  sw    $t7, 0x50($a3)
/* 0785D0 800779D0 ACF80054 */  sw    $t8, 0x54($a3)
/* 0785D4 800779D4 3C198012 */  lui   $t9, %hi(gVideoCurrFramebuffer) # $t9, 0x8012
/* 0785D8 800779D8 8F3962D4 */  lw    $t9, %lo(gVideoCurrFramebuffer)($t9)
/* 0785DC 800779DC 3C02FF00 */  lui   $v0, (0xFF0000FF >> 16) # lui $v0, 0xff00
/* 0785E0 800779E0 344200FF */  ori   $v0, (0xFF0000FF & 0xFFFF) # ori $v0, $v0, 0xff
/* 0785E4 800779E4 ACE20058 */  sw    $v0, 0x58($a3)
/* 0785E8 800779E8 ACE2005C */  sw    $v0, 0x5c($a3)
/* 0785EC 800779EC ACF9000C */  sw    $t9, 0xc($a3)
/* 0785F0 800779F0 8FA80030 */  lw    $t0, 0x30($sp)
/* 0785F4 800779F4 240200FF */  li    $v0, 255
/* 0785F8 800779F8 11000003 */  beqz  $t0, .L80077A08
/* 0785FC 800779FC 00000000 */   nop   
/* 078600 80077A00 ACE20060 */  sw    $v0, 0x60($a3)
/* 078604 80077A04 ACE20064 */  sw    $v0, 0x64($a3)
.L80077A08:
/* 078608 80077A08 ACE00068 */  sw    $zero, 0x68($a3)
/* 07860C 80077A0C 0C034628 */  jal   osWritebackDCacheAll
/* 078610 80077A10 AFA70024 */   sw    $a3, 0x24($sp)
/* 078614 80077A14 3C048012 */  lui   $a0, %hi(osScInterruptQ) # $a0, 0x8012
/* 078618 80077A18 8FA50024 */  lw    $a1, 0x24($sp)
/* 07861C 80077A1C 8C846100 */  lw    $a0, %lo(osScInterruptQ)($a0)
/* 078620 80077A20 0C03238C */  jal   osSendMesg
/* 078624 80077A24 24060001 */   li    $a2, 1
/* 078628 80077A28 8FA90030 */  lw    $t1, 0x30($sp)
/* 07862C 80077A2C 3C048012 */  lui   $a0, %hi(D_80125ED8) # $a0, 0x8012
/* 078630 80077A30 11200004 */  beqz  $t1, .L80077A44
/* 078634 80077A34 24845ED8 */   addiu $a0, %lo(D_80125ED8) # addiu $a0, $a0, 0x5ed8
/* 078638 80077A38 27A50020 */  addiu $a1, $sp, 0x20
/* 07863C 80077A3C 0C0322EC */  jal   osRecvMesg
/* 078640 80077A40 24060001 */   li    $a2, 1
.L80077A44:
/* 078644 80077A44 8FBF0014 */  lw    $ra, 0x14($sp)
/* 078648 80077A48 27BD0028 */  addiu $sp, $sp, 0x28
/* 07864C 80077A4C 03E00008 */  jr    $ra
/* 078650 80077A50 00000000 */   nop   

