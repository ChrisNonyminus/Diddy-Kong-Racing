glabel func_80027568
/* 028168 80027568 27BDFF18 */  addiu $sp, $sp, -0xe8
/* 02816C 8002756C AFBF0044 */  sw    $ra, 0x44($sp)
/* 028170 80027570 E7BF0038 */  swc1  $f31, 0x38($sp)
/* 028174 80027574 E7BE003C */  swc1  $f30, 0x3c($sp)
/* 028178 80027578 E7BD0030 */  swc1  $f29, 0x30($sp)
/* 02817C 8002757C E7BC0034 */  swc1  $f28, 0x34($sp)
/* 028180 80027580 E7BB0028 */  swc1  $f27, 0x28($sp)
/* 028184 80027584 E7BA002C */  swc1  $f26, 0x2c($sp)
/* 028188 80027588 E7B90020 */  swc1  $f25, 0x20($sp)
/* 02818C 8002758C E7B80024 */  swc1  $f24, 0x24($sp)
/* 028190 80027590 E7B70018 */  swc1  $f23, 0x18($sp)
/* 028194 80027594 E7B6001C */  swc1  $f22, 0x1c($sp)
/* 028198 80027598 E7B50010 */  swc1  $f21, 0x10($sp)
/* 02819C 8002759C E7B40014 */  swc1  $f20, 0x14($sp)
/* 0281A0 800275A0 0C006E9D */  jal   getPlayerStructArray
/* 0281A4 800275A4 27A400C4 */   addiu $a0, $sp, 0xc4
/* 0281A8 800275A8 8FAE00C4 */  lw    $t6, 0xc4($sp)
/* 0281AC 800275AC 00403025 */  move  $a2, $v0
/* 0281B0 800275B0 15C00003 */  bnez  $t6, .L800275C0
/* 0281B4 800275B4 00000000 */   nop   
/* 0281B8 800275B8 100000BC */  b     .L800278AC
/* 0281BC 800275BC 00001025 */   move  $v0, $zero
.L800275C0:
/* 0281C0 800275C0 0C019944 */  jal   func_80066510
/* 0281C4 800275C4 AFA60080 */   sw    $a2, 0x80($sp)
/* 0281C8 800275C8 8FA60080 */  lw    $a2, 0x80($sp)
/* 0281CC 800275CC 1440000A */  bnez  $v0, .L800275F8
/* 0281D0 800275D0 3C0F8012 */   lui   $t7, %hi(D_8011B0B0) # $t7, 0x8012
/* 0281D4 800275D4 8DEFB0B0 */  lw    $t7, %lo(D_8011B0B0)($t7)
/* 0281D8 800275D8 00000000 */  nop   
/* 0281DC 800275DC 85E20036 */  lh    $v0, 0x36($t7)
/* 0281E0 800275E0 00000000 */  nop   
/* 0281E4 800275E4 28410005 */  slti  $at, $v0, 5
/* 0281E8 800275E8 10200003 */  beqz  $at, .L800275F8
/* 0281EC 800275EC 24010003 */   li    $at, 3
/* 0281F0 800275F0 14410003 */  bne   $v0, $at, .L80027600
/* 0281F4 800275F4 00000000 */   nop   
.L800275F8:
/* 0281F8 800275F8 100000AC */  b     .L800278AC
/* 0281FC 800275FC 00001025 */   move  $v0, $zero
.L80027600:
/* 028200 80027600 0C019888 */  jal   func_80066220
/* 028204 80027604 AFA60080 */   sw    $a2, 0x80($sp)
/* 028208 80027608 8FB800C4 */  lw    $t8, 0xc4($sp)
/* 02820C 8002760C 8FA60080 */  lw    $a2, 0x80($sp)
/* 028210 80027610 00005825 */  move  $t3, $zero
/* 028214 80027614 1B000011 */  blez  $t8, .L8002765C
/* 028218 80027618 00001825 */   move  $v1, $zero
/* 02821C 8002761C 0003C880 */  sll   $t9, $v1, 2
.L80027620:
/* 028220 80027620 00D97021 */  addu  $t6, $a2, $t9
/* 028224 80027624 8DC50000 */  lw    $a1, ($t6)
/* 028228 80027628 8FB800C4 */  lw    $t8, 0xc4($sp)
/* 02822C 8002762C 8CA40064 */  lw    $a0, 0x64($a1)
/* 028230 80027630 00000000 */  nop   
/* 028234 80027634 848F0000 */  lh    $t7, ($a0)
/* 028238 80027638 00000000 */  nop   
/* 02823C 8002763C 144F0004 */  bne   $v0, $t7, .L80027650
/* 028240 80027640 24630001 */   addiu $v1, $v1, 1
/* 028244 80027644 8FA300C4 */  lw    $v1, 0xc4($sp)
/* 028248 80027648 00A05825 */  move  $t3, $a1
/* 02824C 8002764C 24630001 */  addiu $v1, $v1, 1
.L80027650:
/* 028250 80027650 0078082A */  slt   $at, $v1, $t8
/* 028254 80027654 1420FFF2 */  bnez  $at, .L80027620
/* 028258 80027658 0003C880 */   sll   $t9, $v1, 2
.L8002765C:
/* 02825C 8002765C 15600003 */  bnez  $t3, .L8002766C
/* 028260 80027660 24040001 */   li    $a0, 1
/* 028264 80027664 10000091 */  b     .L800278AC
/* 028268 80027668 00001025 */   move  $v0, $zero
.L8002766C:
/* 02826C 8002766C 3C068012 */  lui   $a2, %hi(D_8011B0B0) # $a2, 0x8012
/* 028270 80027670 8CC6B0B0 */  lw    $a2, %lo(D_8011B0B0)($a2)
/* 028274 80027674 2565000C */  addiu $a1, $t3, 0xc
/* 028278 80027678 2407FFFF */  li    $a3, -1
/* 02827C 8002767C AFAB007C */  sw    $t3, 0x7c($sp)
/* 028280 80027680 0C00C44C */  jal   func_80031130
/* 028284 80027684 24C6000C */   addiu $a2, $a2, 0xc
/* 028288 80027688 3C038012 */  lui   $v1, %hi(D_8011D378) # $v1, 0x8012
/* 02828C 8002768C 8C63D378 */  lw    $v1, %lo(D_8011D378)($v1)
/* 028290 80027690 8FAB007C */  lw    $t3, 0x7c($sp)
/* 028294 80027694 18600084 */  blez  $v1, .L800278A8
/* 028298 80027698 00003825 */   move  $a3, $zero
/* 02829C 8002769C 3C198012 */  lui   $t9, %hi(D_8011D370) # $t9, 0x8012
/* 0282A0 800276A0 8F39D370 */  lw    $t9, %lo(D_8011D370)($t9)
/* 0282A4 800276A4 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 0282A8 800276A8 00006080 */  sll   $t4, $zero, 2
/* 0282AC 800276AC 00037080 */  sll   $t6, $v1, 2
/* 0282B0 800276B0 4481D000 */  mtc1  $at, $f26
/* 0282B4 800276B4 8FBF00E4 */  lw    $ra, 0xe4($sp)
/* 0282B8 800276B8 AFAE004C */  sw    $t6, 0x4c($sp)
/* 0282BC 800276BC 24090001 */  li    $t1, 1
/* 0282C0 800276C0 032C6821 */  addu  $t5, $t9, $t4
.L800276C4:
/* 0282C4 800276C4 8DA40000 */  lw    $a0, ($t5)
/* 0282C8 800276C8 3C018000 */  lui   $at, 0x8000
/* 0282CC 800276CC 18800003 */  blez  $a0, .L800276DC
/* 0282D0 800276D0 3C058012 */   lui   $a1, %hi(D_8011B0B0) # $a1, 0x8012
/* 0282D4 800276D4 1000006C */  b     .L80027888
/* 0282D8 800276D8 0081F825 */   or    $ra, $a0, $at
.L800276DC:
/* 0282DC 800276DC 948F0000 */  lhu   $t7, ($a0)
/* 0282E0 800276E0 8FE80018 */  lw    $t0, 0x18($ra)
/* 0282E4 800276E4 8CA5B0B0 */  lw    $a1, %lo(D_8011B0B0)($a1)
/* 0282E8 800276E8 000FC100 */  sll   $t8, $t7, 4
/* 0282EC 800276EC 01181821 */  addu  $v1, $t0, $t8
/* 0282F0 800276F0 C4620000 */  lwc1  $f2, ($v1)
/* 0282F4 800276F4 C4BC000C */  lwc1  $f28, 0xc($a1)
/* 0282F8 800276F8 C4740004 */  lwc1  $f20, 4($v1)
/* 0282FC 800276FC 4602E102 */  mul.s $f4, $f28, $f2
/* 028300 80027700 C4BE0010 */  lwc1  $f30, 0x10($a1)
/* 028304 80027704 C4760008 */  lwc1  $f22, 8($v1)
/* 028308 80027708 C4A00014 */  lwc1  $f0, 0x14($a1)
/* 02830C 8002770C 461EA182 */  mul.s $f6, $f20, $f30
/* 028310 80027710 C478000C */  lwc1  $f24, 0xc($v1)
/* 028314 80027714 3C01402C */  li    $at, 0x402C0000 # 2.687500
/* 028318 80027718 00805025 */  move  $t2, $a0
/* 02831C 8002771C 4600B282 */  mul.s $f10, $f22, $f0
/* 028320 80027720 46062200 */  add.s $f8, $f4, $f6
/* 028324 80027724 44815800 */  mtc1  $at, $f11
/* 028328 80027728 3C01800E */  lui   $at, %hi(D_800E5E90) # $at, 0x800e
/* 02832C 8002772C 460A4100 */  add.s $f4, $f8, $f10
/* 028330 80027730 44805000 */  mtc1  $zero, $f10
/* 028334 80027734 46182180 */  add.s $f6, $f4, $f24
/* 028338 80027738 E7A0005C */  swc1  $f0, 0x5c($sp)
/* 02833C 8002773C 46003221 */  cvt.d.s $f8, $f6
/* 028340 80027740 462A4101 */  sub.d $f4, $f8, $f10
/* 028344 80027744 C4285E94 */  lwc1  $f8, %lo(D_800E5E94)($at)
/* 028348 80027748 46202320 */  cvt.s.d $f12, $f4
/* 02834C 8002774C C4295E90 */  lwc1  $f9, %lo(D_800E5E90)($at)
/* 028350 80027750 460061A1 */  cvt.d.s $f6, $f12
/* 028354 80027754 4628303C */  c.lt.d $f6, $f8
/* 028358 80027758 00000000 */  nop   
/* 02835C 8002775C 4500004B */  bc1f  .L8002788C
/* 028360 80027760 8FB9004C */   lw    $t9, 0x4c($sp)
/* 028364 80027764 C56E000C */  lwc1  $f14, 0xc($t3)
/* 028368 80027768 C5700010 */  lwc1  $f16, 0x10($t3)
/* 02836C 8002776C 46027282 */  mul.s $f10, $f14, $f2
/* 028370 80027770 C5720014 */  lwc1  $f18, 0x14($t3)
/* 028374 80027774 3C01800E */  lui   $at, %hi(D_800E5E9C) # $at, 0x800e
/* 028378 80027778 00001025 */  move  $v0, $zero
/* 02837C 8002777C 4610A102 */  mul.s $f4, $f20, $f16
/* 028380 80027780 00000000 */  nop   
/* 028384 80027784 4612B202 */  mul.s $f8, $f22, $f18
/* 028388 80027788 46045180 */  add.s $f6, $f10, $f4
/* 02838C 8002778C C4275E98 */  lwc1  $f7, %lo(D_800E5E98)($at)
/* 028390 80027790 46083280 */  add.s $f10, $f6, $f8
/* 028394 80027794 C4265E9C */  lwc1  $f6, %lo(D_800E5E9C)($at)
/* 028398 80027798 46185000 */  add.s $f0, $f10, $f24
/* 02839C 8002779C C7A8005C */  lwc1  $f8, 0x5c($sp)
/* 0283A0 800277A0 46000121 */  cvt.d.s $f4, $f0
/* 0283A4 800277A4 4624303E */  c.le.d $f6, $f4
/* 0283A8 800277A8 00000000 */  nop   
/* 0283AC 800277AC 45000036 */  bc1f  .L80027888
/* 0283B0 800277B0 00000000 */   nop   
/* 0283B4 800277B4 460C0032 */  c.eq.s $f0, $f12
/* 0283B8 800277B8 460EE501 */  sub.s $f20, $f28, $f14
/* 0283BC 800277BC 24070001 */  li    $a3, 1
/* 0283C0 800277C0 4610F581 */  sub.s $f22, $f30, $f16
/* 0283C4 800277C4 45010004 */  bc1t  .L800277D8
/* 0283C8 800277C8 46124601 */   sub.s $f24, $f8, $f18
/* 0283CC 800277CC 460C0281 */  sub.s $f10, $f0, $f12
/* 0283D0 800277D0 10000003 */  b     .L800277E0
/* 0283D4 800277D4 460A0083 */   div.s $f2, $f0, $f10
.L800277D8:
/* 0283D8 800277D8 44801000 */  mtc1  $zero, $f2
/* 0283DC 800277DC 00000000 */  nop   
.L800277E0:
/* 0283E0 800277E0 4602A102 */  mul.s $f4, $f20, $f2
/* 0283E4 800277E4 00022840 */  sll   $a1, $v0, 1
/* 0283E8 800277E8 01453021 */  addu  $a2, $t2, $a1
/* 0283EC 800277EC 4602B182 */  mul.s $f6, $f22, $f2
/* 0283F0 800277F0 46047500 */  add.s $f20, $f14, $f4
/* 0283F4 800277F4 4602C202 */  mul.s $f8, $f24, $f2
/* 0283F8 800277F8 46068580 */  add.s $f22, $f16, $f6
/* 0283FC 800277FC 46089600 */  add.s $f24, $f18, $f8
.L80027800:
/* 028400 80027800 94C20002 */  lhu   $v0, 2($a2)
/* 028404 80027804 24A50002 */  addiu $a1, $a1, 2
/* 028408 80027808 30598000 */  andi  $t9, $v0, 0x8000
/* 02840C 8002780C 13200004 */  beqz  $t9, .L80027820
/* 028410 80027810 00002025 */   move  $a0, $zero
/* 028414 80027814 304E7FFF */  andi  $t6, $v0, 0x7fff
/* 028418 80027818 01C01025 */  move  $v0, $t6
/* 02841C 8002781C 01202025 */  move  $a0, $t1
.L80027820:
/* 028420 80027820 0002C100 */  sll   $t8, $v0, 4
/* 028424 80027824 01181821 */  addu  $v1, $t0, $t8
/* 028428 80027828 C4600000 */  lwc1  $f0, ($v1)
/* 02842C 8002782C C4620004 */  lwc1  $f2, 4($v1)
/* 028430 80027830 46140282 */  mul.s $f10, $f0, $f20
/* 028434 80027834 C46C0008 */  lwc1  $f12, 8($v1)
/* 028438 80027838 C46E000C */  lwc1  $f14, 0xc($v1)
/* 02843C 8002783C 28A10006 */  slti  $at, $a1, 6
/* 028440 80027840 46161102 */  mul.s $f4, $f2, $f22
/* 028444 80027844 00000000 */  nop   
/* 028448 80027848 46186202 */  mul.s $f8, $f12, $f24
/* 02844C 8002784C 46045180 */  add.s $f6, $f10, $f4
/* 028450 80027850 46083280 */  add.s $f10, $f6, $f8
/* 028454 80027854 460E5480 */  add.s $f18, $f10, $f14
/* 028458 80027858 10800002 */  beqz  $a0, .L80027864
/* 02845C 8002785C 46009406 */   mov.s $f16, $f18
/* 028460 80027860 46009407 */  neg.s $f16, $f18
.L80027864:
/* 028464 80027864 4610D03C */  c.lt.s $f26, $f16
/* 028468 80027868 00000000 */  nop   
/* 02846C 8002786C 45000002 */  bc1f  .L80027878
/* 028470 80027870 00000000 */   nop   
/* 028474 80027874 00003825 */  move  $a3, $zero
.L80027878:
/* 028478 80027878 10200003 */  beqz  $at, .L80027888
/* 02847C 8002787C 24C60002 */   addiu $a2, $a2, 2
/* 028480 80027880 10E9FFDF */  beq   $a3, $t1, .L80027800
/* 028484 80027884 00000000 */   nop   
.L80027888:
/* 028488 80027888 8FB9004C */  lw    $t9, 0x4c($sp)
.L8002788C:
/* 02848C 8002788C 258C0004 */  addiu $t4, $t4, 4
/* 028490 80027890 0199082A */  slt   $at, $t4, $t9
/* 028494 80027894 10200004 */  beqz  $at, .L800278A8
/* 028498 80027898 25AD0004 */   addiu $t5, $t5, 4
/* 02849C 8002789C 10E0FF89 */  beqz  $a3, .L800276C4
/* 0284A0 800278A0 00000000 */   nop   
/* 0284A4 800278A4 AFBF00E4 */  sw    $ra, 0xe4($sp)
.L800278A8:
/* 0284A8 800278A8 00E01025 */  move  $v0, $a3
.L800278AC:
/* 0284AC 800278AC 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0284B0 800278B0 C7B50010 */  lwc1  $f21, 0x10($sp)
/* 0284B4 800278B4 C7B40014 */  lwc1  $f20, 0x14($sp)
/* 0284B8 800278B8 C7B70018 */  lwc1  $f23, 0x18($sp)
/* 0284BC 800278BC C7B6001C */  lwc1  $f22, 0x1c($sp)
/* 0284C0 800278C0 C7B90020 */  lwc1  $f25, 0x20($sp)
/* 0284C4 800278C4 C7B80024 */  lwc1  $f24, 0x24($sp)
/* 0284C8 800278C8 C7BB0028 */  lwc1  $f27, 0x28($sp)
/* 0284CC 800278CC C7BA002C */  lwc1  $f26, 0x2c($sp)
/* 0284D0 800278D0 C7BD0030 */  lwc1  $f29, 0x30($sp)
/* 0284D4 800278D4 C7BC0034 */  lwc1  $f28, 0x34($sp)
/* 0284D8 800278D8 C7BF0038 */  lwc1  $f31, 0x38($sp)
/* 0284DC 800278DC C7BE003C */  lwc1  $f30, 0x3c($sp)
/* 0284E0 800278E0 03E00008 */  jr    $ra
/* 0284E4 800278E4 27BD00E8 */   addiu $sp, $sp, 0xe8

