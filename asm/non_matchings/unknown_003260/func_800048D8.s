glabel func_800048D8
/* 0054D8 800048D8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0054DC 800048DC AFB20020 */  sw    $s2, 0x20($sp)
/* 0054E0 800048E0 309200FF */  andi  $s2, $a0, 0xff
/* 0054E4 800048E4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0054E8 800048E8 AFA40050 */  sw    $a0, 0x50($sp)
/* 0054EC 800048EC AFB40028 */  sw    $s4, 0x28($sp)
/* 0054F0 800048F0 AFB30024 */  sw    $s3, 0x24($sp)
/* 0054F4 800048F4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0054F8 800048F8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0054FC 800048FC 0C03268C */  jal   osSetIntMask
/* 005500 80004900 24040001 */   li    $a0, 1
/* 005504 80004904 3C10800E */  lui   $s0, %hi(D_800DC6B0) # $s0, 0x800e
/* 005508 80004908 8E10C6B0 */  lw    $s0, %lo(D_800DC6B0)($s0)
/* 00550C 8000490C AFA2004C */  sw    $v0, 0x4c($sp)
/* 005510 80004910 12000016 */  beqz  $s0, .L8000496C
/* 005514 80004914 02408825 */   move  $s1, $s2
/* 005518 80004918 3C13800E */  lui   $s3, %hi(gAlSndPlayer) # $s3, 0x800e
/* 00551C 8000491C 2673C6BC */  addiu $s3, %lo(gAlSndPlayer) # addiu $s3, $s3, -0x3944
/* 005520 80004920 27B4003C */  addiu $s4, $sp, 0x3c
/* 005524 80004924 2412FFEF */  li    $s2, -17
/* 005528 80004928 240E0400 */  li    $t6, 1024
.L8000492C:
/* 00552C 8000492C A7AE003C */  sh    $t6, 0x3c($sp)
/* 005530 80004930 AFB00040 */  sw    $s0, 0x40($sp)
/* 005534 80004934 9202003E */  lbu   $v0, 0x3e($s0)
/* 005538 80004938 02802825 */  move  $a1, $s4
/* 00553C 8000493C 00517824 */  and   $t7, $v0, $s1
/* 005540 80004940 162F0006 */  bne   $s1, $t7, .L8000495C
/* 005544 80004944 0052C024 */   and   $t8, $v0, $s2
/* 005548 80004948 A218003E */  sb    $t8, 0x3e($s0)
/* 00554C 8000494C 8E640000 */  lw    $a0, ($s3)
/* 005550 80004950 00003025 */  move  $a2, $zero
/* 005554 80004954 0C03246B */  jal   alEvtqPostEvent
/* 005558 80004958 24840014 */   addiu $a0, $a0, 0x14
.L8000495C:
/* 00555C 8000495C 8E100000 */  lw    $s0, ($s0)
/* 005560 80004960 00000000 */  nop   
/* 005564 80004964 1600FFF1 */  bnez  $s0, .L8000492C
/* 005568 80004968 240E0400 */   li    $t6, 1024
.L8000496C:
/* 00556C 8000496C 8FA4004C */  lw    $a0, 0x4c($sp)
/* 005570 80004970 0C03268C */  jal   osSetIntMask
/* 005574 80004974 00000000 */   nop   
/* 005578 80004978 8FBF002C */  lw    $ra, 0x2c($sp)
/* 00557C 8000497C 8FB00018 */  lw    $s0, 0x18($sp)
/* 005580 80004980 8FB1001C */  lw    $s1, 0x1c($sp)
/* 005584 80004984 8FB20020 */  lw    $s2, 0x20($sp)
/* 005588 80004988 8FB30024 */  lw    $s3, 0x24($sp)
/* 00558C 8000498C 8FB40028 */  lw    $s4, 0x28($sp)
/* 005590 80004990 03E00008 */  jr    $ra
/* 005594 80004994 27BD0050 */   addiu $sp, $sp, 0x50

