.late_rodata
glabel jpt_800E5250
.word L80010374, L800105F8, L800105F8, L800105F8, L80010400, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L80010400, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800104C0, L800105F8, L800105F8, L800105A8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105D0, L800105E4, L800105F8, L800105F8, L800105F8, L800105F8, L800104D8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800104AC, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105A8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L80010508, L800105F8, L80010374, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L8001047C, L8001047C, L800105F8, L800105F8, L800105F8, L8001047C, L8001047C, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L800105F8, L8001044C
glabel jpt_800E5420
.word L8001063C, L8001063C, L80010664, L8001063C, L8001063C, L80010664, L8001063C, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L8001063C, L80010664, L8001063C, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L8001063C, L8001063C, L80010664, L80010664, L8001063C, L8001063C, L8001063C, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L8001063C, L8001063C, L80010664, L80010664, L80010664, L8001063C, L8001063C, L8001063C, L8001063C, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L80010664, L8001063C, L80010664, L8001063C, L80010664, L80010664, L80010664, L8001063C

.text
glabel func_800101AC
/* 010DAC 800101AC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 010DB0 800101B0 AFBF0034 */  sw    $ra, 0x34($sp)
/* 010DB4 800101B4 AFB60030 */  sw    $s6, 0x30($sp)
/* 010DB8 800101B8 AFB5002C */  sw    $s5, 0x2c($sp)
/* 010DBC 800101BC AFB40028 */  sw    $s4, 0x28($sp)
/* 010DC0 800101C0 AFB30024 */  sw    $s3, 0x24($sp)
/* 010DC4 800101C4 AFB20020 */  sw    $s2, 0x20($sp)
/* 010DC8 800101C8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 010DCC 800101CC AFB00018 */  sw    $s0, 0x18($sp)
/* 010DD0 800101D0 AFA5003C */  sw    $a1, 0x3c($sp)
/* 010DD4 800101D4 848E0006 */  lh    $t6, 6($a0)
/* 010DD8 800101D8 0080B025 */  move  $s6, $a0
/* 010DDC 800101DC 31CF8000 */  andi  $t7, $t6, 0x8000
/* 010DE0 800101E0 11E0000A */  beqz  $t7, .L8001020C
/* 010DE4 800101E4 00000000 */   nop   
/* 010DE8 800101E8 0C02C810 */  jal   func_800B2040
/* 010DEC 800101EC 00000000 */   nop   
/* 010DF0 800101F0 3C028012 */  lui   $v0, %hi(D_8011AE64) # $v0, 0x8012
/* 010DF4 800101F4 2442AE64 */  addiu $v0, %lo(D_8011AE64) # addiu $v0, $v0, -0x519c
/* 010DF8 800101F8 8C580000 */  lw    $t8, ($v0)
/* 010DFC 800101FC 00000000 */  nop   
/* 010E00 80010200 2719FFFF */  addiu $t9, $t8, -1
/* 010E04 80010204 100001D9 */  b     .L8001096C
/* 010E08 80010208 AC590000 */   sw    $t9, ($v0)
.L8001020C:
/* 010E0C 8001020C 8EC30060 */  lw    $v1, 0x60($s6)
/* 010E10 80010210 00000000 */  nop   
/* 010E14 80010214 10600033 */  beqz  $v1, .L800102E4
/* 010E18 80010218 00000000 */   nop   
/* 010E1C 8001021C 8C680000 */  lw    $t0, ($v1)
/* 010E20 80010220 0000A825 */  move  $s5, $zero
/* 010E24 80010224 1900002F */  blez  $t0, .L800102E4
/* 010E28 80010228 00000000 */   nop   
/* 010E2C 8001022C 0000A025 */  move  $s4, $zero
/* 010E30 80010230 00744821 */  addu  $t1, $v1, $s4
.L80010234:
/* 010E34 80010234 8D310004 */  lw    $s1, 4($t1)
/* 010E38 80010238 00009825 */  move  $s3, $zero
/* 010E3C 8001023C 8E220040 */  lw    $v0, 0x40($s1)
/* 010E40 80010240 00000000 */  nop   
/* 010E44 80010244 80440053 */  lb    $a0, 0x53($v0)
/* 010E48 80010248 80520055 */  lb    $s2, 0x55($v0)
/* 010E4C 8001024C 1480000E */  bnez  $a0, .L80010288
/* 010E50 80010250 00000000 */   nop   
/* 010E54 80010254 1A400017 */  blez  $s2, .L800102B4
/* 010E58 80010258 00008025 */   move  $s0, $zero
.L8001025C:
/* 010E5C 8001025C 8E2A0068 */  lw    $t2, 0x68($s1)
/* 010E60 80010260 00000000 */  nop   
/* 010E64 80010264 01505821 */  addu  $t3, $t2, $s0
/* 010E68 80010268 8D640000 */  lw    $a0, ($t3)
/* 010E6C 8001026C 0C017FD0 */  jal   func_8005FF40
/* 010E70 80010270 00000000 */   nop   
/* 010E74 80010274 26730001 */  addiu $s3, $s3, 1
/* 010E78 80010278 1672FFF8 */  bne   $s3, $s2, .L8001025C
/* 010E7C 8001027C 26100004 */   addiu $s0, $s0, 4
/* 010E80 80010280 1000000D */  b     .L800102B8
/* 010E84 80010284 8624002C */   lh    $a0, 0x2c($s1)
.L80010288:
/* 010E88 80010288 1A40000A */  blez  $s2, .L800102B4
/* 010E8C 8001028C 00008025 */   move  $s0, $zero
.L80010290:
/* 010E90 80010290 8E2C0068 */  lw    $t4, 0x68($s1)
/* 010E94 80010294 00000000 */  nop   
/* 010E98 80010298 01906821 */  addu  $t5, $t4, $s0
/* 010E9C 8001029C 8DA40000 */  lw    $a0, ($t5)
/* 010EA0 800102A0 0C01F32C */  jal   free_sprite
/* 010EA4 800102A4 00000000 */   nop   
/* 010EA8 800102A8 26730001 */  addiu $s3, $s3, 1
/* 010EAC 800102AC 1672FFF8 */  bne   $s3, $s2, .L80010290
/* 010EB0 800102B0 26100004 */   addiu $s0, $s0, 4
.L800102B4:
/* 010EB4 800102B4 8624002C */  lh    $a0, 0x2c($s1)
.L800102B8:
/* 010EB8 800102B8 0C003211 */  jal   func_8000C844
/* 010EBC 800102BC 00000000 */   nop   
/* 010EC0 800102C0 0C01C450 */  jal   free_from_memory_pool
/* 010EC4 800102C4 02202025 */   move  $a0, $s1
/* 010EC8 800102C8 8EC30060 */  lw    $v1, 0x60($s6)
/* 010ECC 800102CC 26B50001 */  addiu $s5, $s5, 1
/* 010ED0 800102D0 8C6E0000 */  lw    $t6, ($v1)
/* 010ED4 800102D4 26940004 */  addiu $s4, $s4, 4
/* 010ED8 800102D8 02AE082A */  slt   $at, $s5, $t6
/* 010EDC 800102DC 1420FFD5 */  bnez  $at, .L80010234
/* 010EE0 800102E0 00744821 */   addu  $t1, $v1, $s4
.L800102E4:
/* 010EE4 800102E4 8ECF0070 */  lw    $t7, 0x70($s6)
/* 010EE8 800102E8 00009825 */  move  $s3, $zero
/* 010EEC 800102EC 11E00015 */  beqz  $t7, .L80010344
/* 010EF0 800102F0 00000000 */   nop   
/* 010EF4 800102F4 8ED80040 */  lw    $t8, 0x40($s6)
/* 010EF8 800102F8 0000A825 */  move  $s5, $zero
/* 010EFC 800102FC 8319005A */  lb    $t9, 0x5a($t8)
/* 010F00 80010300 00000000 */  nop   
/* 010F04 80010304 1B20000F */  blez  $t9, .L80010344
/* 010F08 80010308 00000000 */   nop   
/* 010F0C 8001030C 0000A025 */  move  $s4, $zero
.L80010310:
/* 010F10 80010310 8EC80070 */  lw    $t0, 0x70($s6)
/* 010F14 80010314 00000000 */  nop   
/* 010F18 80010318 01144821 */  addu  $t1, $t0, $s4
/* 010F1C 8001031C 8D240000 */  lw    $a0, ($t1)
/* 010F20 80010320 0C00CAEB */  jal   func_80032BAC
/* 010F24 80010324 00000000 */   nop   
/* 010F28 80010328 8ECA0040 */  lw    $t2, 0x40($s6)
/* 010F2C 8001032C 26B50001 */  addiu $s5, $s5, 1
/* 010F30 80010330 814B005A */  lb    $t3, 0x5a($t2)
/* 010F34 80010334 26940004 */  addiu $s4, $s4, 4
/* 010F38 80010338 02AB082A */  slt   $at, $s5, $t3
/* 010F3C 8001033C 1420FFF4 */  bnez  $at, .L80010310
/* 010F40 80010340 00000000 */   nop   
.L80010344:
/* 010F44 80010344 86C50048 */  lh    $a1, 0x48($s6)
/* 010F48 80010348 00000000 */  nop   
/* 010F4C 8001034C 24ACFFFF */  addiu $t4, $a1, -1
/* 010F50 80010350 2D810074 */  sltiu $at, $t4, 0x74
/* 010F54 80010354 102000A8 */  beqz  $at, .L800105F8
/* 010F58 80010358 000C6080 */   sll   $t4, $t4, 2
/* 010F5C 8001035C 3C01800E */  lui   $at, %hi(jpt_800E5250) # $at, 0x800e
/* 010F60 80010360 002C0821 */  addu  $at, $at, $t4
/* 010F64 80010364 8C2C5250 */  lw    $t4, %lo(jpt_800E5250)($at)
/* 010F68 80010368 00000000 */  nop   
/* 010F6C 8001036C 01800008 */  jr    $t4
/* 010F70 80010370 00000000 */   nop   
glabel L80010374
/* 010F74 80010374 3C038012 */  lui   $v1, %hi(objCount) # $v1, 0x8012
/* 010F78 80010378 8C63AE5C */  lw    $v1, %lo(objCount)($v1)
/* 010F7C 8001037C 0000A825 */  move  $s5, $zero
/* 010F80 80010380 1860001D */  blez  $v1, .L800103F8
/* 010F84 80010384 0000A025 */   move  $s4, $zero
/* 010F88 80010388 24050001 */  li    $a1, 1
/* 010F8C 8001038C 2404003D */  li    $a0, 61
.L80010390:
/* 010F90 80010390 3C0D8012 */  lui   $t5, %hi(gObjPtrList) # $t5, 0x8012
/* 010F94 80010394 8DADAE58 */  lw    $t5, %lo(gObjPtrList)($t5)
/* 010F98 80010398 26B50001 */  addiu $s5, $s5, 1
/* 010F9C 8001039C 01B47021 */  addu  $t6, $t5, $s4
/* 010FA0 800103A0 8DD10000 */  lw    $s1, ($t6)
/* 010FA4 800103A4 00000000 */  nop   
/* 010FA8 800103A8 862F0048 */  lh    $t7, 0x48($s1)
/* 010FAC 800103AC 00000000 */  nop   
/* 010FB0 800103B0 148F000D */  bne   $a0, $t7, .L800103E8
/* 010FB4 800103B4 02A3082A */   slt   $at, $s5, $v1
/* 010FB8 800103B8 8E220064 */  lw    $v0, 0x64($s1)
/* 010FBC 800103BC 00000000 */  nop   
/* 010FC0 800103C0 8C580100 */  lw    $t8, 0x100($v0)
/* 010FC4 800103C4 00000000 */  nop   
/* 010FC8 800103C8 16D80007 */  bne   $s6, $t8, .L800103E8
/* 010FCC 800103CC 02A3082A */   slt   $at, $s5, $v1
/* 010FD0 800103D0 AC400100 */  sw    $zero, 0x100($v0)
/* 010FD4 800103D4 A04500FD */  sb    $a1, 0xfd($v0)
/* 010FD8 800103D8 3C038012 */  lui   $v1, %hi(objCount) # $v1, 0x8012
/* 010FDC 800103DC 8C63AE5C */  lw    $v1, %lo(objCount)($v1)
/* 010FE0 800103E0 00000000 */  nop   
/* 010FE4 800103E4 02A3082A */  slt   $at, $s5, $v1
.L800103E8:
/* 010FE8 800103E8 1420FFE9 */  bnez  $at, .L80010390
/* 010FEC 800103EC 26940004 */   addiu $s4, $s4, 4
/* 010FF0 800103F0 86C50048 */  lh    $a1, 0x48($s6)
/* 010FF4 800103F4 00000000 */  nop   
.L800103F8:
/* 010FF8 800103F8 10000080 */  b     .L800105FC
/* 010FFC 800103FC 24140012 */   li    $s4, 18
glabel L80010400
/* 011000 80010400 8ED00064 */  lw    $s0, 0x64($s6)
/* 011004 80010404 00000000 */  nop   
/* 011008 80010408 8E04001C */  lw    $a0, 0x1c($s0)
/* 01100C 8001040C 00000000 */  nop   
/* 011010 80010410 1080000C */  beqz  $a0, .L80010444
/* 011014 80010414 00000000 */   nop   
/* 011018 80010418 0C0025BE */  jal   func_800096F8
/* 01101C 8001041C 00000000 */   nop   
/* 011020 80010420 AE00001C */  sw    $zero, 0x1c($s0)
/* 011024 80010424 86C50048 */  lh    $a1, 0x48($s6)
/* 011028 80010428 24140012 */  li    $s4, 18
/* 01102C 8001042C 16850005 */  bne   $s4, $a1, .L80010444
/* 011030 80010430 00000000 */   nop   
/* 011034 80010434 0C00FC37 */  jal   func_8003F0DC
/* 011038 80010438 00000000 */   nop   
/* 01103C 8001043C 86C50048 */  lh    $a1, 0x48($s6)
/* 011040 80010440 00000000 */  nop   
.L80010444:
/* 011044 80010444 1000006D */  b     .L800105FC
/* 011048 80010448 24140012 */   li    $s4, 18
glabel L8001044C
/* 01104C 8001044C 8ED00064 */  lw    $s0, 0x64($s6)
/* 011050 80010450 00000000 */  nop   
/* 011054 80010454 8E04001C */  lw    $a0, 0x1c($s0)
/* 011058 80010458 00000000 */  nop   
/* 01105C 8001045C 10800005 */  beqz  $a0, .L80010474
/* 011060 80010460 00000000 */   nop   
/* 011064 80010464 0C0025BE */  jal   func_800096F8
/* 011068 80010468 00000000 */   nop   
/* 01106C 8001046C 86C50048 */  lh    $a1, 0x48($s6)
/* 011070 80010470 00000000 */  nop   
.L80010474:
/* 011074 80010474 10000061 */  b     .L800105FC
/* 011078 80010478 24140012 */   li    $s4, 18
glabel L8001047C
/* 01107C 8001047C 8EC20064 */  lw    $v0, 0x64($s6)
/* 011080 80010480 00000000 */  nop   
/* 011084 80010484 8C430020 */  lw    $v1, 0x20($v0)
/* 011088 80010488 00000000 */  nop   
/* 01108C 8001048C 10600005 */  beqz  $v1, .L800104A4
/* 011090 80010490 00000000 */   nop   
/* 011094 80010494 0C0025BE */  jal   func_800096F8
/* 011098 80010498 00602025 */   move  $a0, $v1
/* 01109C 8001049C 86C50048 */  lh    $a1, 0x48($s6)
/* 0110A0 800104A0 00000000 */  nop   
.L800104A4:
/* 0110A4 800104A4 10000055 */  b     .L800105FC
/* 0110A8 800104A8 24140012 */   li    $s4, 18
glabel L800104AC
/* 0110AC 800104AC 0C02FCF9 */  jal   func_800BF3E4
/* 0110B0 800104B0 02C02025 */   move  $a0, $s6
/* 0110B4 800104B4 86C50048 */  lh    $a1, 0x48($s6)
/* 0110B8 800104B8 10000050 */  b     .L800105FC
/* 0110BC 800104BC 24140012 */   li    $s4, 18
glabel L800104C0
/* 0110C0 800104C0 8EC40064 */  lw    $a0, 0x64($s6)
/* 0110C4 800104C4 0C00CAEB */  jal   func_80032BAC
/* 0110C8 800104C8 00000000 */   nop   
/* 0110CC 800104CC 86C50048 */  lh    $a1, 0x48($s6)
/* 0110D0 800104D0 1000004A */  b     .L800105FC
/* 0110D4 800104D4 24140012 */   li    $s4, 18
glabel L800104D8
/* 0110D8 800104D8 8EC40064 */  lw    $a0, 0x64($s6)
/* 0110DC 800104DC 8FB9003C */  lw    $t9, 0x3c($sp)
/* 0110E0 800104E0 10800007 */  beqz  $a0, .L80010500
/* 0110E4 800104E4 00000000 */   nop   
/* 0110E8 800104E8 17200005 */  bnez  $t9, .L80010500
/* 0110EC 800104EC 00000000 */   nop   
/* 0110F0 800104F0 0C003FEE */  jal   gParticlePtrList_addObject
/* 0110F4 800104F4 00000000 */   nop   
/* 0110F8 800104F8 86C50048 */  lh    $a1, 0x48($s6)
/* 0110FC 800104FC 00000000 */  nop   
.L80010500:
/* 011100 80010500 1000003E */  b     .L800105FC
/* 011104 80010504 24140012 */   li    $s4, 18
glabel L80010508
/* 011108 80010508 3C048012 */  lui   $a0, %hi(D_8011AE00) # $a0, 0x8012
/* 01110C 8001050C 2484AE00 */  addiu $a0, %lo(D_8011AE00) # addiu $a0, $a0, -0x5200
/* 011110 80010510 80830000 */  lb    $v1, ($a0)
/* 011114 80010514 3C088012 */  lui   $t0, %hi(D_8011ADD8) # $t0, 0x8012
/* 011118 80010518 1860000E */  blez  $v1, .L80010554
/* 01111C 8001051C 24140012 */   li    $s4, 18
/* 011120 80010520 8D08ADD8 */  lw    $t0, %lo(D_8011ADD8)($t0)
/* 011124 80010524 3C028012 */  lui   $v0, %hi(D_8011ADD8) # $v0, 0x8012
/* 011128 80010528 12C8000A */  beq   $s6, $t0, .L80010554
/* 01112C 8001052C 2442ADD8 */   addiu $v0, %lo(D_8011ADD8) # addiu $v0, $v0, -0x5228
.L80010530:
/* 011130 80010530 26730001 */  addiu $s3, $s3, 1
/* 011134 80010534 0263082A */  slt   $at, $s3, $v1
/* 011138 80010538 10200006 */  beqz  $at, .L80010554
/* 01113C 8001053C 00134880 */   sll   $t1, $s3, 2
/* 011140 80010540 00495021 */  addu  $t2, $v0, $t1
/* 011144 80010544 8D4B0000 */  lw    $t3, ($t2)
/* 011148 80010548 00000000 */  nop   
/* 01114C 8001054C 16CBFFF8 */  bne   $s6, $t3, .L80010530
/* 011150 80010550 00000000 */   nop   
.L80010554:
/* 011154 80010554 0263082A */  slt   $at, $s3, $v1
/* 011158 80010558 10200010 */  beqz  $at, .L8001059C
/* 01115C 8001055C 246CFFFF */   addiu $t4, $v1, -1
/* 011160 80010560 A08C0000 */  sb    $t4, ($a0)
/* 011164 80010564 80830000 */  lb    $v1, ($a0)
/* 011168 80010568 00136880 */  sll   $t5, $s3, 2
/* 01116C 8001056C 0263082A */  slt   $at, $s3, $v1
/* 011170 80010570 1020000A */  beqz  $at, .L8001059C
/* 011174 80010574 3C0E8012 */   lui   $t6, %hi(D_8011ADD8) # $t6, 0x8012
/* 011178 80010578 25CEADD8 */  addiu $t6, %lo(D_8011ADD8) # addiu $t6, $t6, -0x5228
/* 01117C 8001057C 00037880 */  sll   $t7, $v1, 2
/* 011180 80010580 01EE2021 */  addu  $a0, $t7, $t6
/* 011184 80010584 01AE1021 */  addu  $v0, $t5, $t6
.L80010588:
/* 011188 80010588 8C580004 */  lw    $t8, 4($v0)
/* 01118C 8001058C 24420004 */  addiu $v0, $v0, 4
/* 011190 80010590 0044082B */  sltu  $at, $v0, $a0
/* 011194 80010594 1420FFFC */  bnez  $at, .L80010588
/* 011198 80010598 AC58FFFC */   sw    $t8, -4($v0)
.L8001059C:
/* 01119C 8001059C 86C50048 */  lh    $a1, 0x48($s6)
/* 0111A0 800105A0 10000016 */  b     .L800105FC
/* 0111A4 800105A4 00009825 */   move  $s3, $zero
glabel L800105A8
/* 0111A8 800105A8 8EC40064 */  lw    $a0, 0x64($s6)
/* 0111AC 800105AC 00000000 */  nop   
/* 0111B0 800105B0 10800005 */  beqz  $a0, .L800105C8
/* 0111B4 800105B4 00000000 */   nop   
/* 0111B8 800105B8 0C01C450 */  jal   free_from_memory_pool
/* 0111BC 800105BC 00000000 */   nop   
/* 0111C0 800105C0 86C50048 */  lh    $a1, 0x48($s6)
/* 0111C4 800105C4 00000000 */  nop   
.L800105C8:
/* 0111C8 800105C8 1000000C */  b     .L800105FC
/* 0111CC 800105CC 24140012 */   li    $s4, 18
glabel L800105D0
/* 0111D0 800105D0 0C02B220 */  jal   func_800AC880
/* 0111D4 800105D4 02C02025 */   move  $a0, $s6
/* 0111D8 800105D8 86C50048 */  lh    $a1, 0x48($s6)
/* 0111DC 800105DC 10000007 */  b     .L800105FC
/* 0111E0 800105E0 24140012 */   li    $s4, 18
glabel L800105E4
/* 0111E4 800105E4 0C02B3E6 */  jal   func_800ACF98
/* 0111E8 800105E8 02C02025 */   move  $a0, $s6
/* 0111EC 800105EC 86C50048 */  lh    $a1, 0x48($s6)
/* 0111F0 800105F0 10000002 */  b     .L800105FC
/* 0111F4 800105F4 24140012 */   li    $s4, 18
.L800105F8:
glabel L800105F8
/* 0111F8 800105F8 24140012 */  li    $s4, 18
.L800105FC:
/* 0111FC 800105FC 28A1000D */  slti  $at, $a1, 0xd
/* 011200 80010600 1420000B */  bnez  $at, .L80010630
/* 011204 80010604 00A01025 */   move  $v0, $a1
/* 011208 80010608 2459FFCE */  addiu $t9, $v0, -0x32
/* 01120C 8001060C 2F210046 */  sltiu $at, $t9, 0x46
/* 011210 80010610 10200014 */  beqz  $at, .L80010664
/* 011214 80010614 0019C880 */   sll   $t9, $t9, 2
/* 011218 80010618 3C01800E */  lui   $at, %hi(jpt_800E5420) # $at, 0x800e
/* 01121C 8001061C 00390821 */  addu  $at, $at, $t9
/* 011220 80010620 8C395420 */  lw    $t9, %lo(jpt_800E5420)($at)
/* 011224 80010624 00000000 */  nop   
/* 011228 80010628 03200008 */  jr    $t9
/* 01122C 8001062C 00000000 */   nop   
.L80010630:
/* 011230 80010630 2401000C */  li    $at, 12
/* 011234 80010634 1441000C */  bne   $v0, $at, .L80010668
/* 011238 80010638 24010001 */   li    $at, 1
glabel L8001063C
/* 01123C 8001063C 8EC20064 */  lw    $v0, 0x64($s6)
/* 011240 80010640 00000000 */  nop   
/* 011244 80010644 8C440018 */  lw    $a0, 0x18($v0)
/* 011248 80010648 00000000 */  nop   
/* 01124C 8001064C 10800006 */  beqz  $a0, .L80010668
/* 011250 80010650 24010001 */   li    $at, 1
/* 011254 80010654 0C001223 */  jal   func_8000488C
/* 011258 80010658 00000000 */   nop   
/* 01125C 8001065C 86C50048 */  lh    $a1, 0x48($s6)
/* 011260 80010660 00000000 */  nop   
.L80010664:
glabel L80010664
/* 011264 80010664 24010001 */  li    $at, 1
.L80010668:
/* 011268 80010668 14A10061 */  bne   $a1, $at, .L800107F0
/* 01126C 8001066C 00000000 */   nop   
/* 011270 80010670 8ED00064 */  lw    $s0, 0x64($s6)
/* 011274 80010674 00000000 */  nop   
/* 011278 80010678 8E020018 */  lw    $v0, 0x18($s0)
/* 01127C 8001067C 00000000 */  nop   
/* 011280 80010680 10400003 */  beqz  $v0, .L80010690
/* 011284 80010684 00000000 */   nop   
/* 011288 80010688 0C001223 */  jal   func_8000488C
/* 01128C 8001068C 00402025 */   move  $a0, $v0
.L80010690:
/* 011290 80010690 8E020010 */  lw    $v0, 0x10($s0)
/* 011294 80010694 00000000 */  nop   
/* 011298 80010698 10400003 */  beqz  $v0, .L800106A8
/* 01129C 8001069C 00000000 */   nop   
/* 0112A0 800106A0 0C001223 */  jal   func_8000488C
/* 0112A4 800106A4 00402025 */   move  $a0, $v0
.L800106A8:
/* 0112A8 800106A8 8E020014 */  lw    $v0, 0x14($s0)
/* 0112AC 800106AC 00000000 */  nop   
/* 0112B0 800106B0 10400003 */  beqz  $v0, .L800106C0
/* 0112B4 800106B4 00000000 */   nop   
/* 0112B8 800106B8 0C001223 */  jal   func_8000488C
/* 0112BC 800106BC 00402025 */   move  $a0, $v0
.L800106C0:
/* 0112C0 800106C0 8E02001C */  lw    $v0, 0x1c($s0)
/* 0112C4 800106C4 00000000 */  nop   
/* 0112C8 800106C8 10400003 */  beqz  $v0, .L800106D8
/* 0112CC 800106CC 00000000 */   nop   
/* 0112D0 800106D0 0C001223 */  jal   func_8000488C
/* 0112D4 800106D4 00402025 */   move  $a0, $v0
.L800106D8:
/* 0112D8 800106D8 8E020020 */  lw    $v0, 0x20($s0)
/* 0112DC 800106DC 00000000 */  nop   
/* 0112E0 800106E0 10400003 */  beqz  $v0, .L800106F0
/* 0112E4 800106E4 00000000 */   nop   
/* 0112E8 800106E8 0C001223 */  jal   func_8000488C
/* 0112EC 800106EC 00402025 */   move  $a0, $v0
.L800106F0:
/* 0112F0 800106F0 8E040024 */  lw    $a0, 0x24($s0)
/* 0112F4 800106F4 00000000 */  nop   
/* 0112F8 800106F8 10800003 */  beqz  $a0, .L80010708
/* 0112FC 800106FC 00000000 */   nop   
/* 011300 80010700 0C0025BE */  jal   func_800096F8
/* 011304 80010704 00000000 */   nop   
.L80010708:
/* 011308 80010708 8E04017C */  lw    $a0, 0x17c($s0)
/* 01130C 8001070C 00000000 */  nop   
/* 011310 80010710 10800003 */  beqz  $a0, .L80010720
/* 011314 80010714 00000000 */   nop   
/* 011318 80010718 0C0025BE */  jal   func_800096F8
/* 01131C 8001071C 00000000 */   nop   
.L80010720:
/* 011320 80010720 8E040178 */  lw    $a0, 0x178($s0)
/* 011324 80010724 00000000 */  nop   
/* 011328 80010728 10800003 */  beqz  $a0, .L80010738
/* 01132C 8001072C 00000000 */   nop   
/* 011330 80010730 0C001223 */  jal   func_8000488C
/* 011334 80010734 00000000 */   nop   
.L80010738:
/* 011338 80010738 0C001AB2 */  jal   func_80006AC8
/* 01133C 8001073C 02C02025 */   move  $a0, $s6
/* 011340 80010740 3C158012 */  lui   $s5, %hi(objCount) # $s5, 0x8012
/* 011344 80010744 26B5AE5C */  addiu $s5, %lo(objCount) # addiu $s5, $s5, -0x51a4
/* 011348 80010748 8EA80000 */  lw    $t0, ($s5)
/* 01134C 8001074C 00008025 */  move  $s0, $zero
/* 011350 80010750 19000027 */  blez  $t0, .L800107F0
/* 011354 80010754 24120005 */   li    $s2, 5
/* 011358 80010758 2411004C */  li    $s1, 76
.L8001075C:
/* 01135C 8001075C 3C098012 */  lui   $t1, %hi(gObjPtrList) # $t1, 0x8012
/* 011360 80010760 8D29AE58 */  lw    $t1, %lo(gObjPtrList)($t1)
/* 011364 80010764 00000000 */  nop   
/* 011368 80010768 01305021 */  addu  $t2, $t1, $s0
/* 01136C 8001076C 8D440000 */  lw    $a0, ($t2)
/* 011370 80010770 00000000 */  nop   
/* 011374 80010774 848B0006 */  lh    $t3, 6($a0)
/* 011378 80010778 00000000 */  nop   
/* 01137C 8001077C 316C8000 */  andi  $t4, $t3, 0x8000
/* 011380 80010780 1180000B */  beqz  $t4, .L800107B0
/* 011384 80010784 00000000 */   nop   
/* 011388 80010788 8C8D003C */  lw    $t5, 0x3c($a0)
/* 01138C 8001078C 3C0F8012 */  lui   $t7, %hi(gObjPtrList) # $t7, 0x8012
/* 011390 80010790 16CD0007 */  bne   $s6, $t5, .L800107B0
/* 011394 80010794 00000000 */   nop   
/* 011398 80010798 AC80003C */  sw    $zero, 0x3c($a0)
/* 01139C 8001079C 8DEFAE58 */  lw    $t7, %lo(gObjPtrList)($t7)
/* 0113A0 800107A0 00000000 */  nop   
/* 0113A4 800107A4 01F07021 */  addu  $t6, $t7, $s0
/* 0113A8 800107A8 8DC40000 */  lw    $a0, ($t6)
/* 0113AC 800107AC 00000000 */  nop   
.L800107B0:
/* 0113B0 800107B0 84820048 */  lh    $v0, 0x48($a0)
/* 0113B4 800107B4 00000000 */  nop   
/* 0113B8 800107B8 12820005 */  beq   $s4, $v0, .L800107D0
/* 0113BC 800107BC 00000000 */   nop   
/* 0113C0 800107C0 12220003 */  beq   $s1, $v0, .L800107D0
/* 0113C4 800107C4 00000000 */   nop   
/* 0113C8 800107C8 16420003 */  bne   $s2, $v0, .L800107D8
/* 0113CC 800107CC 00000000 */   nop   
.L800107D0:
/* 0113D0 800107D0 0C003FEE */  jal   gParticlePtrList_addObject
/* 0113D4 800107D4 00000000 */   nop   
.L800107D8:
/* 0113D8 800107D8 8EB80000 */  lw    $t8, ($s5)
/* 0113DC 800107DC 26730001 */  addiu $s3, $s3, 1
/* 0113E0 800107E0 0278082A */  slt   $at, $s3, $t8
/* 0113E4 800107E4 1420FFDD */  bnez  $at, .L8001075C
/* 0113E8 800107E8 26100004 */   addiu $s0, $s0, 4
/* 0113EC 800107EC 00009825 */  move  $s3, $zero
.L800107F0:
/* 0113F0 800107F0 8EC20050 */  lw    $v0, 0x50($s6)
/* 0113F4 800107F4 00000000 */  nop   
/* 0113F8 800107F8 10400007 */  beqz  $v0, .L80010818
/* 0113FC 800107FC 00000000 */   nop   
/* 011400 80010800 8C440004 */  lw    $a0, 4($v0)
/* 011404 80010804 00000000 */  nop   
/* 011408 80010808 10800003 */  beqz  $a0, .L80010818
/* 01140C 8001080C 00000000 */   nop   
/* 011410 80010810 0C01ECAF */  jal   free_texture
/* 011414 80010814 00000000 */   nop   
.L80010818:
/* 011418 80010818 8EC20058 */  lw    $v0, 0x58($s6)
/* 01141C 8001081C 00000000 */  nop   
/* 011420 80010820 10400007 */  beqz  $v0, .L80010840
/* 011424 80010824 00000000 */   nop   
/* 011428 80010828 8C440004 */  lw    $a0, 4($v0)
/* 01142C 8001082C 00000000 */  nop   
/* 011430 80010830 10800003 */  beqz  $a0, .L80010840
/* 011434 80010834 00000000 */   nop   
/* 011438 80010838 0C01ECAF */  jal   free_texture
/* 01143C 8001083C 00000000 */   nop   
.L80010840:
/* 011440 80010840 8EC20040 */  lw    $v0, 0x40($s6)
/* 011444 80010844 00000000 */  nop   
/* 011448 80010848 80440053 */  lb    $a0, 0x53($v0)
/* 01144C 8001084C 80520055 */  lb    $s2, 0x55($v0)
/* 011450 80010850 14800013 */  bnez  $a0, .L800108A0
/* 011454 80010854 24010004 */   li    $at, 4
/* 011458 80010858 1A40002E */  blez  $s2, .L80010914
/* 01145C 8001085C 00008025 */   move  $s0, $zero
.L80010860:
/* 011460 80010860 8ED90068 */  lw    $t9, 0x68($s6)
/* 011464 80010864 00000000 */  nop   
/* 011468 80010868 03304021 */  addu  $t0, $t9, $s0
/* 01146C 8001086C 8D020000 */  lw    $v0, ($t0)
/* 011470 80010870 00000000 */  nop   
/* 011474 80010874 10400003 */  beqz  $v0, .L80010884
/* 011478 80010878 00000000 */   nop   
/* 01147C 8001087C 0C017FD0 */  jal   func_8005FF40
/* 011480 80010880 00402025 */   move  $a0, $v0
.L80010884:
/* 011484 80010884 26730001 */  addiu $s3, $s3, 1
/* 011488 80010888 1672FFF5 */  bne   $s3, $s2, .L80010860
/* 01148C 8001088C 26100004 */   addiu $s0, $s0, 4
/* 011490 80010890 8EC20040 */  lw    $v0, 0x40($s6)
/* 011494 80010894 10000020 */  b     .L80010918
/* 011498 80010898 80430057 */   lb    $v1, 0x57($v0)
/* 01149C 8001089C 24010004 */  li    $at, 4
.L800108A0:
/* 0114A0 800108A0 1481000F */  bne   $a0, $at, .L800108E0
/* 0114A4 800108A4 00000000 */   nop   
/* 0114A8 800108A8 1A40001A */  blez  $s2, .L80010914
/* 0114AC 800108AC 00008025 */   move  $s0, $zero
.L800108B0:
/* 0114B0 800108B0 8EC90068 */  lw    $t1, 0x68($s6)
/* 0114B4 800108B4 00000000 */  nop   
/* 0114B8 800108B8 01305021 */  addu  $t2, $t1, $s0
/* 0114BC 800108BC 8D440000 */  lw    $a0, ($t2)
/* 0114C0 800108C0 0C01ECAF */  jal   free_texture
/* 0114C4 800108C4 00000000 */   nop   
/* 0114C8 800108C8 26730001 */  addiu $s3, $s3, 1
/* 0114CC 800108CC 1672FFF8 */  bne   $s3, $s2, .L800108B0
/* 0114D0 800108D0 26100004 */   addiu $s0, $s0, 4
/* 0114D4 800108D4 8EC20040 */  lw    $v0, 0x40($s6)
/* 0114D8 800108D8 1000000F */  b     .L80010918
/* 0114DC 800108DC 80430057 */   lb    $v1, 0x57($v0)
.L800108E0:
/* 0114E0 800108E0 1A40000C */  blez  $s2, .L80010914
/* 0114E4 800108E4 00008025 */   move  $s0, $zero
.L800108E8:
/* 0114E8 800108E8 8ECB0068 */  lw    $t3, 0x68($s6)
/* 0114EC 800108EC 00000000 */  nop   
/* 0114F0 800108F0 01706021 */  addu  $t4, $t3, $s0
/* 0114F4 800108F4 8D840000 */  lw    $a0, ($t4)
/* 0114F8 800108F8 0C01F32C */  jal   free_sprite
/* 0114FC 800108FC 00000000 */   nop   
/* 011500 80010900 26730001 */  addiu $s3, $s3, 1
/* 011504 80010904 1672FFF8 */  bne   $s3, $s2, .L800108E8
/* 011508 80010908 26100004 */   addiu $s0, $s0, 4
/* 01150C 8001090C 8EC20040 */  lw    $v0, 0x40($s6)
/* 011510 80010910 00000000 */  nop   
.L80010914:
/* 011514 80010914 80430057 */  lb    $v1, 0x57($v0)
.L80010918:
/* 011518 80010918 00000000 */  nop   
/* 01151C 8001091C 1860000E */  blez  $v1, .L80010958
/* 011520 80010920 00000000 */   nop   
/* 011524 80010924 1860000C */  blez  $v1, .L80010958
/* 011528 80010928 00009825 */   move  $s3, $zero
.L8001092C:
/* 01152C 8001092C 8ECD006C */  lw    $t5, 0x6c($s6)
/* 011530 80010930 00137940 */  sll   $t7, $s3, 5
/* 011534 80010934 0C02C898 */  jal   func_800B2260
/* 011538 80010938 01AF2021 */   addu  $a0, $t5, $t7
/* 01153C 8001093C 8ECE0040 */  lw    $t6, 0x40($s6)
/* 011540 80010940 26730001 */  addiu $s3, $s3, 1
/* 011544 80010944 81D80057 */  lb    $t8, 0x57($t6)
/* 011548 80010948 00000000 */  nop   
/* 01154C 8001094C 0278082A */  slt   $at, $s3, $t8
/* 011550 80010950 1420FFF6 */  bnez  $at, .L8001092C
/* 011554 80010954 00000000 */   nop   
.L80010958:
/* 011558 80010958 86C4002C */  lh    $a0, 0x2c($s6)
/* 01155C 8001095C 0C003211 */  jal   func_8000C844
/* 011560 80010960 00000000 */   nop   
/* 011564 80010964 0C01C450 */  jal   free_from_memory_pool
/* 011568 80010968 02C02025 */   move  $a0, $s6
.L8001096C:
/* 01156C 8001096C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 011570 80010970 8FB00018 */  lw    $s0, 0x18($sp)
/* 011574 80010974 8FB1001C */  lw    $s1, 0x1c($sp)
/* 011578 80010978 8FB20020 */  lw    $s2, 0x20($sp)
/* 01157C 8001097C 8FB30024 */  lw    $s3, 0x24($sp)
/* 011580 80010980 8FB40028 */  lw    $s4, 0x28($sp)
/* 011584 80010984 8FB5002C */  lw    $s5, 0x2c($sp)
/* 011588 80010988 8FB60030 */  lw    $s6, 0x30($sp)
/* 01158C 8001098C 03E00008 */  jr    $ra
/* 011590 80010990 27BD0038 */   addiu $sp, $sp, 0x38

