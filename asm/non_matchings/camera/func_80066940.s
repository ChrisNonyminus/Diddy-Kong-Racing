glabel func_80066940
/* 067540 80066940 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 067544 80066944 AFBF001C */  sw    $ra, 0x1c($sp)
/* 067548 80066948 AFB00018 */  sw    $s0, 0x18($sp)
/* 06754C 8006694C 00C08025 */  move  $s0, $a2
/* 067550 80066950 AFA40020 */  sw    $a0, 0x20($sp)
/* 067554 80066954 AFA50024 */  sw    $a1, 0x24($sp)
/* 067558 80066958 0C01E948 */  jal   get_video_width_and_height_as_s32
/* 06755C 8006695C AFA7002C */   sw    $a3, 0x2c($sp)
/* 067560 80066960 8FA50024 */  lw    $a1, 0x24($sp)
/* 067564 80066964 8FA7002C */  lw    $a3, 0x2c($sp)
/* 067568 80066968 8FA80020 */  lw    $t0, 0x20($sp)
/* 06756C 8006696C 8FA60030 */  lw    $a2, 0x30($sp)
/* 067570 80066970 00E5082A */  slt   $at, $a3, $a1
/* 067574 80066974 10200004 */  beqz  $at, .L80066988
/* 067578 80066978 3044FFFF */   andi  $a0, $v0, 0xffff
/* 06757C 8006697C 00A01825 */  move  $v1, $a1
/* 067580 80066980 00E02825 */  move  $a1, $a3
/* 067584 80066984 00603825 */  move  $a3, $v1
.L80066988:
/* 067588 80066988 00D0082A */  slt   $at, $a2, $s0
/* 06758C 8006698C 10200003 */  beqz  $at, .L8006699C
/* 067590 80066990 02001825 */   move  $v1, $s0
/* 067594 80066994 00C08025 */  move  $s0, $a2
/* 067598 80066998 00603025 */  move  $a2, $v1
.L8006699C:
/* 06759C 8006699C 00A4082A */  slt   $at, $a1, $a0
/* 0675A0 800669A0 10200008 */  beqz  $at, .L800669C4
/* 0675A4 800669A4 00087880 */   sll   $t7, $t0, 2
/* 0675A8 800669A8 04E00006 */  bltz  $a3, .L800669C4
/* 0675AC 800669AC 00021C03 */   sra   $v1, $v0, 0x10
/* 0675B0 800669B0 306EFFFF */  andi  $t6, $v1, 0xffff
/* 0675B4 800669B4 020E082A */  slt   $at, $s0, $t6
/* 0675B8 800669B8 10200002 */  beqz  $at, .L800669C4
/* 0675BC 800669BC 01C01825 */   move  $v1, $t6
/* 0675C0 800669C0 04C1000C */  bgez  $a2, .L800669F4
.L800669C4:
/* 0675C4 800669C4 01E87823 */   subu  $t7, $t7, $t0
/* 0675C8 800669C8 000F7880 */  sll   $t7, $t7, 2
/* 0675CC 800669CC 01E87821 */  addu  $t7, $t7, $t0
/* 0675D0 800669D0 3C18800E */  lui   $t8, %hi(gScreenViewports) # $t8, 0x800e
/* 0675D4 800669D4 2718D064 */  addiu $t8, %lo(gScreenViewports) # addiu $t8, $t8, -0x2f9c
/* 0675D8 800669D8 000F7880 */  sll   $t7, $t7, 2
/* 0675DC 800669DC 01F81021 */  addu  $v0, $t7, $t8
/* 0675E0 800669E0 AC400020 */  sw    $zero, 0x20($v0)
/* 0675E4 800669E4 AC400024 */  sw    $zero, 0x24($v0)
/* 0675E8 800669E8 AC400028 */  sw    $zero, 0x28($v0)
/* 0675EC 800669EC 10000026 */  b     .L80066A88
/* 0675F0 800669F0 AC40002C */   sw    $zero, 0x2c($v0)
.L800669F4:
/* 0675F4 800669F4 04A1000B */  bgez  $a1, .L80066A24
/* 0675F8 800669F8 00E4082A */   slt   $at, $a3, $a0
/* 0675FC 800669FC 0008C880 */  sll   $t9, $t0, 2
/* 067600 80066A00 0328C823 */  subu  $t9, $t9, $t0
/* 067604 80066A04 0019C880 */  sll   $t9, $t9, 2
/* 067608 80066A08 0328C821 */  addu  $t9, $t9, $t0
/* 06760C 80066A0C 3C09800E */  lui   $t1, %hi(gScreenViewports) # $t1, 0x800e
/* 067610 80066A10 2529D064 */  addiu $t1, %lo(gScreenViewports) # addiu $t1, $t1, -0x2f9c
/* 067614 80066A14 0019C880 */  sll   $t9, $t9, 2
/* 067618 80066A18 03291021 */  addu  $v0, $t9, $t1
/* 06761C 80066A1C 1000000A */  b     .L80066A48
/* 067620 80066A20 AC400020 */   sw    $zero, 0x20($v0)
.L80066A24:
/* 067624 80066A24 00085080 */  sll   $t2, $t0, 2
/* 067628 80066A28 01485023 */  subu  $t2, $t2, $t0
/* 06762C 80066A2C 000A5080 */  sll   $t2, $t2, 2
/* 067630 80066A30 01485021 */  addu  $t2, $t2, $t0
/* 067634 80066A34 3C0B800E */  lui   $t3, %hi(gScreenViewports) # $t3, 0x800e
/* 067638 80066A38 256BD064 */  addiu $t3, %lo(gScreenViewports) # addiu $t3, $t3, -0x2f9c
/* 06763C 80066A3C 000A5080 */  sll   $t2, $t2, 2
/* 067640 80066A40 014B1021 */  addu  $v0, $t2, $t3
/* 067644 80066A44 AC450020 */  sw    $a1, 0x20($v0)
.L80066A48:
/* 067648 80066A48 06010003 */  bgez  $s0, .L80066A58
/* 06764C 80066A4C 00000000 */   nop   
/* 067650 80066A50 10000002 */  b     .L80066A5C
/* 067654 80066A54 AC400024 */   sw    $zero, 0x24($v0)
.L80066A58:
/* 067658 80066A58 AC500024 */  sw    $s0, 0x24($v0)
.L80066A5C:
/* 06765C 80066A5C 14200003 */  bnez  $at, .L80066A6C
/* 067660 80066A60 248CFFFF */   addiu $t4, $a0, -1
/* 067664 80066A64 10000002 */  b     .L80066A70
/* 067668 80066A68 AC4C0028 */   sw    $t4, 0x28($v0)
.L80066A6C:
/* 06766C 80066A6C AC470028 */  sw    $a3, 0x28($v0)
.L80066A70:
/* 067670 80066A70 00C3082A */  slt   $at, $a2, $v1
/* 067674 80066A74 14200003 */  bnez  $at, .L80066A84
/* 067678 80066A78 246DFFFF */   addiu $t5, $v1, -1
/* 06767C 80066A7C 10000002 */  b     .L80066A88
/* 067680 80066A80 AC4D002C */   sw    $t5, 0x2c($v0)
.L80066A84:
/* 067684 80066A84 AC46002C */  sw    $a2, 0x2c($v0)
.L80066A88:
/* 067688 80066A88 8FBF001C */  lw    $ra, 0x1c($sp)
/* 06768C 80066A8C AC500004 */  sw    $s0, 4($v0)
/* 067690 80066A90 8FB00018 */  lw    $s0, 0x18($sp)
/* 067694 80066A94 AC450000 */  sw    $a1, ($v0)
/* 067698 80066A98 AC470008 */  sw    $a3, 8($v0)
/* 06769C 80066A9C AC46000C */  sw    $a2, 0xc($v0)
/* 0676A0 80066AA0 03E00008 */  jr    $ra
/* 0676A4 80066AA4 27BD0020 */   addiu $sp, $sp, 0x20

