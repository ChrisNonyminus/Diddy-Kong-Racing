glabel render_magic_codes_ui
/* 08A2A4 800896A4 27BDFF80 */  addiu $sp, $sp, -0x80
/* 08A2A8 800896A8 AFBF0044 */  sw    $ra, 0x44($sp)
/* 08A2AC 800896AC AFA40080 */  sw    $a0, 0x80($sp)
/* 08A2B0 800896B0 AFBE0040 */  sw    $fp, 0x40($sp)
/* 08A2B4 800896B4 AFB7003C */  sw    $s7, 0x3c($sp)
/* 08A2B8 800896B8 AFB60038 */  sw    $s6, 0x38($sp)
/* 08A2BC 800896BC AFB50034 */  sw    $s5, 0x34($sp)
/* 08A2C0 800896C0 AFB40030 */  sw    $s4, 0x30($sp)
/* 08A2C4 800896C4 AFB3002C */  sw    $s3, 0x2c($sp)
/* 08A2C8 800896C8 AFB20028 */  sw    $s2, 0x28($sp)
/* 08A2CC 800896CC AFB10024 */  sw    $s1, 0x24($sp)
/* 08A2D0 800896D0 AFB00020 */  sw    $s0, 0x20($sp)
/* 08A2D4 800896D4 00002025 */  move  $a0, $zero
/* 08A2D8 800896D8 00002825 */  move  $a1, $zero
/* 08A2DC 800896DC 00003025 */  move  $a2, $zero
/* 08A2E0 800896E0 0C0310F3 */  jal   set_text_background_colour
/* 08A2E4 800896E4 00003825 */   move  $a3, $zero
/* 08A2E8 800896E8 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 08A2EC 800896EC 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 08A2F0 800896F0 00002825 */  move  $a1, $zero
/* 08A2F4 800896F4 00003025 */  move  $a2, $zero
/* 08A2F8 800896F8 0C0316D6 */  jal   render_dialogue_box
/* 08A2FC 800896FC 24070007 */   li    $a3, 7
/* 08A300 80089700 0C0310BB */  jal   set_text_font
/* 08A304 80089704 24040002 */   li    $a0, 2
/* 08A308 80089708 240E0080 */  li    $t6, 128
/* 08A30C 8008970C AFAE0010 */  sw    $t6, 0x10($sp)
/* 08A310 80089710 00002025 */  move  $a0, $zero
/* 08A314 80089714 00002825 */  move  $a1, $zero
/* 08A318 80089718 00003025 */  move  $a2, $zero
/* 08A31C 8008971C 0C0310E1 */  jal   set_text_colour
/* 08A320 80089720 240700FF */   li    $a3, 255
/* 08A324 80089724 3C0F800E */  lui   $t7, %hi(gMenuText) # $t7, 0x800e
/* 08A328 80089728 8DEFF4A0 */  lw    $t7, %lo(gMenuText)($t7)
/* 08A32C 8008972C 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 08A330 80089730 2418000C */  li    $t8, 12
/* 08A334 80089734 8DE70044 */  lw    $a3, 0x44($t7)
/* 08A338 80089738 AFB80010 */  sw    $t8, 0x10($sp)
/* 08A33C 8008973C 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 08A340 80089740 240500A1 */  li    $a1, 161
/* 08A344 80089744 0C031110 */  jal   draw_text
/* 08A348 80089748 24060023 */   li    $a2, 35
/* 08A34C 8008974C 241900FF */  li    $t9, 255
/* 08A350 80089750 AFB90010 */  sw    $t9, 0x10($sp)
/* 08A354 80089754 240400FF */  li    $a0, 255
/* 08A358 80089758 240500FF */  li    $a1, 255
/* 08A35C 8008975C 240600FF */  li    $a2, 255
/* 08A360 80089760 0C0310E1 */  jal   set_text_colour
/* 08A364 80089764 00003825 */   move  $a3, $zero
/* 08A368 80089768 3C09800E */  lui   $t1, %hi(gMenuText) # $t1, 0x800e
/* 08A36C 8008976C 8D29F4A0 */  lw    $t1, %lo(gMenuText)($t1)
/* 08A370 80089770 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 08A374 80089774 240A000C */  li    $t2, 12
/* 08A378 80089778 8D270044 */  lw    $a3, 0x44($t1)
/* 08A37C 8008977C AFAA0010 */  sw    $t2, 0x10($sp)
/* 08A380 80089780 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 08A384 80089784 240500A0 */  li    $a1, 160
/* 08A388 80089788 0C031110 */  jal   draw_text
/* 08A38C 8008978C 24060020 */   li    $a2, 32
/* 08A390 80089790 24130041 */  li    $s3, 65
/* 08A394 80089794 0C0310BB */  jal   set_text_font
/* 08A398 80089798 00002025 */   move  $a0, $zero
/* 08A39C 8008979C 240B00FF */  li    $t3, 255
/* 08A3A0 800897A0 AFAB0010 */  sw    $t3, 0x10($sp)
/* 08A3A4 800897A4 240400FF */  li    $a0, 255
/* 08A3A8 800897A8 240500FF */  li    $a1, 255
/* 08A3AC 800897AC 240600FF */  li    $a2, 255
/* 08A3B0 800897B0 0C0310E1 */  jal   set_text_colour
/* 08A3B4 800897B4 00003825 */   move  $a3, $zero
/* 08A3B8 800897B8 3C168012 */  lui   $s6, %hi(gCheatInputCurrentRow) # $s6, 0x8012
/* 08A3BC 800897BC 3C158012 */  lui   $s5, %hi(gCheatInputCurrentColumn) # $s5, 0x8012
/* 08A3C0 800897C0 26B56C42 */  addiu $s5, %lo(gCheatInputCurrentColumn) # addiu $s5, $s5, 0x6c42
/* 08A3C4 800897C4 26D66C40 */  addiu $s6, %lo(gCheatInputCurrentRow) # addiu $s6, $s6, 0x6c40
/* 08A3C8 800897C8 0000F025 */  move  $fp, $zero
/* 08A3CC 800897CC 2414003C */  li    $s4, 60
/* 08A3D0 800897D0 24170005 */  li    $s7, 5
.L800897D4:
/* 08A3D4 800897D4 00008025 */  move  $s0, $zero
/* 08A3D8 800897D8 24110040 */  li    $s1, 64
.L800897DC:
/* 08A3DC 800897DC 3C0C8012 */  lui   $t4, %hi(gOptionsMenuItemIndex) # $t4, 0x8012
/* 08A3E0 800897E0 858C6C46 */  lh    $t4, %lo(gOptionsMenuItemIndex)($t4)
/* 08A3E4 800897E4 00000000 */  nop   
/* 08A3E8 800897E8 16EC0018 */  bne   $s7, $t4, .L8008984C
/* 08A3EC 800897EC 2A61005B */   slti  $at, $s3, 0x5b
/* 08A3F0 800897F0 86AD0000 */  lh    $t5, ($s5)
/* 08A3F4 800897F4 00000000 */  nop   
/* 08A3F8 800897F8 160D0014 */  bne   $s0, $t5, .L8008984C
/* 08A3FC 800897FC 2A61005B */   slti  $at, $s3, 0x5b
/* 08A400 80089800 86CE0000 */  lh    $t6, ($s6)
/* 08A404 80089804 3C128012 */  lui   $s2, %hi(gOptionBlinkTimer) # $s2, 0x8012
/* 08A408 80089808 17CE000F */  bne   $fp, $t6, .L80089848
/* 08A40C 8008980C 24040080 */   li    $a0, 128
/* 08A410 80089810 8E5263BC */  lw    $s2, %lo(gOptionBlinkTimer)($s2)
/* 08A414 80089814 240500FF */  li    $a1, 255
/* 08A418 80089818 001278C0 */  sll   $t7, $s2, 3
/* 08A41C 8008981C 29E10100 */  slti  $at, $t7, 0x100
/* 08A420 80089820 14200003 */  bnez  $at, .L80089830
/* 08A424 80089824 01E09025 */   move  $s2, $t7
/* 08A428 80089828 241801FF */  li    $t8, 511
/* 08A42C 8008982C 030F9023 */  subu  $s2, $t8, $t7
.L80089830:
/* 08A430 80089830 0012C843 */  sra   $t9, $s2, 1
/* 08A434 80089834 240900FF */  li    $t1, 255
/* 08A438 80089838 27270080 */  addiu $a3, $t9, 0x80
/* 08A43C 8008983C AFA90010 */  sw    $t1, 0x10($sp)
/* 08A440 80089840 0C0310E1 */  jal   set_text_colour
/* 08A444 80089844 240600C0 */   li    $a2, 192
.L80089848:
/* 08A448 80089848 2A61005B */  slti  $at, $s3, 0x5b
.L8008984C:
/* 08A44C 8008984C 1020000C */  beqz  $at, .L80089880
/* 08A450 80089850 3C048012 */   lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 08A454 80089854 240A000C */  li    $t2, 12
/* 08A458 80089858 A3B3005C */  sb    $s3, 0x5c($sp)
/* 08A45C 8008985C A3A0005D */  sb    $zero, 0x5d($sp)
/* 08A460 80089860 AFAA0010 */  sw    $t2, 0x10($sp)
/* 08A464 80089864 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 08A468 80089868 02202825 */  move  $a1, $s1
/* 08A46C 8008986C 02803025 */  move  $a2, $s4
/* 08A470 80089870 0C031110 */  jal   draw_text
/* 08A474 80089874 27A7005C */   addiu $a3, $sp, 0x5c
/* 08A478 80089878 10000016 */  b     .L800898D4
/* 08A47C 8008987C 00000000 */   nop   
.L80089880:
/* 08A480 80089880 1617000C */  bne   $s0, $s7, .L800898B4
/* 08A484 80089884 3C048012 */   lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 08A488 80089888 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 08A48C 8008988C 3C07800F */  lui   $a3, %hi(D_800E8210) # $a3, 0x800f
/* 08A490 80089890 240B000C */  li    $t3, 12
/* 08A494 80089894 AFAB0010 */  sw    $t3, 0x10($sp)
/* 08A498 80089898 24E78210 */  addiu $a3, %lo(D_800E8210) # addiu $a3, $a3, -0x7df0
/* 08A49C 8008989C 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 08A4A0 800898A0 02202825 */  move  $a1, $s1
/* 08A4A4 800898A4 0C031110 */  jal   draw_text
/* 08A4A8 800898A8 02803025 */   move  $a2, $s4
/* 08A4AC 800898AC 10000009 */  b     .L800898D4
/* 08A4B0 800898B0 00000000 */   nop   
.L800898B4:
/* 08A4B4 800898B4 3C07800F */  lui   $a3, %hi(D_800E8214) # $a3, 0x800f
/* 08A4B8 800898B8 240C000C */  li    $t4, 12
/* 08A4BC 800898BC AFAC0010 */  sw    $t4, 0x10($sp)
/* 08A4C0 800898C0 24E78214 */  addiu $a3, %lo(D_800E8214) # addiu $a3, $a3, -0x7dec
/* 08A4C4 800898C4 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 08A4C8 800898C8 02202825 */  move  $a1, $s1
/* 08A4CC 800898CC 0C031110 */  jal   draw_text
/* 08A4D0 800898D0 02803025 */   move  $a2, $s4
.L800898D4:
/* 08A4D4 800898D4 3C0D8012 */  lui   $t5, %hi(gOptionsMenuItemIndex) # $t5, 0x8012
/* 08A4D8 800898D8 85AD6C46 */  lh    $t5, %lo(gOptionsMenuItemIndex)($t5)
/* 08A4DC 800898DC 00000000 */  nop   
/* 08A4E0 800898E0 16ED000E */  bne   $s7, $t5, .L8008991C
/* 08A4E4 800898E4 00000000 */   nop   
/* 08A4E8 800898E8 86AE0000 */  lh    $t6, ($s5)
/* 08A4EC 800898EC 00000000 */  nop   
/* 08A4F0 800898F0 160E000A */  bne   $s0, $t6, .L8008991C
/* 08A4F4 800898F4 00000000 */   nop   
/* 08A4F8 800898F8 86CF0000 */  lh    $t7, ($s6)
/* 08A4FC 800898FC 240400FF */  li    $a0, 255
/* 08A500 80089900 17CF0006 */  bne   $fp, $t7, .L8008991C
/* 08A504 80089904 240500FF */   li    $a1, 255
/* 08A508 80089908 241800FF */  li    $t8, 255
/* 08A50C 8008990C AFB80010 */  sw    $t8, 0x10($sp)
/* 08A510 80089910 240600FF */  li    $a2, 255
/* 08A514 80089914 0C0310E1 */  jal   set_text_colour
/* 08A518 80089918 00003825 */   move  $a3, $zero
.L8008991C:
/* 08A51C 8008991C 26730001 */  addiu $s3, $s3, 1
/* 08A520 80089920 26100001 */  addiu $s0, $s0, 1
/* 08A524 80089924 24010007 */  li    $at, 7
/* 08A528 80089928 327900FF */  andi  $t9, $s3, 0xff
/* 08A52C 8008992C 26310020 */  addiu $s1, $s1, 0x20
/* 08A530 80089930 1601FFAA */  bne   $s0, $at, .L800897DC
/* 08A534 80089934 03209825 */   move  $s3, $t9
/* 08A538 80089938 27DE0001 */  addiu $fp, $fp, 1
/* 08A53C 8008993C 2BC10004 */  slti  $at, $fp, 4
/* 08A540 80089940 1420FFA4 */  bnez  $at, .L800897D4
/* 08A544 80089944 26940016 */   addiu $s4, $s4, 0x16
/* 08A548 80089948 3C128012 */  lui   $s2, %hi(gOptionBlinkTimer) # $s2, 0x8012
/* 08A54C 8008994C 8E5263BC */  lw    $s2, %lo(gOptionBlinkTimer)($s2)
/* 08A550 80089950 00000000 */  nop   
/* 08A554 80089954 001248C0 */  sll   $t1, $s2, 3
/* 08A558 80089958 29210100 */  slti  $at, $t1, 0x100
/* 08A55C 8008995C 14200003 */  bnez  $at, .L8008996C
/* 08A560 80089960 01209025 */   move  $s2, $t1
/* 08A564 80089964 240A01FF */  li    $t2, 511
/* 08A568 80089968 01499023 */  subu  $s2, $t2, $t1
.L8008996C:
/* 08A56C 8008996C 0C0310BB */  jal   set_text_font
/* 08A570 80089970 00002025 */   move  $a0, $zero
/* 08A574 80089974 3C168000 */  lui   $s6, %hi(osTvType) # $s6, 0x8000
/* 08A578 80089978 26D60300 */  addiu $s6, %lo(osTvType) # addiu $s6, $s6, 0x300
/* 08A57C 8008997C 8ECB0000 */  lw    $t3, ($s6)
/* 08A580 80089980 0000F025 */  move  $fp, $zero
/* 08A584 80089984 241300A4 */  li    $s3, 164
/* 08A588 80089988 15600002 */  bnez  $t3, .L80089994
/* 08A58C 8008998C 24140010 */   li    $s4, 16
/* 08A590 80089990 24140018 */  li    $s4, 24
.L80089994:
/* 08A594 80089994 3C0C800E */  lui   $t4, %hi(gMagicCodeMenuStrings) # $t4, 0x800e
/* 08A598 80089998 8D8CFDA0 */  lw    $t4, %lo(gMagicCodeMenuStrings)($t4)
/* 08A59C 8008999C 001E6880 */  sll   $t5, $fp, 2
/* 08A5A0 800899A0 11800022 */  beqz  $t4, .L80089A2C
/* 08A5A4 800899A4 3C0E800E */   lui   $t6, %hi(gMagicCodeMenuStrings) # $t6, 0x800e
/* 08A5A8 800899A8 25CEFDA0 */  addiu $t6, %lo(gMagicCodeMenuStrings) # addiu $t6, $t6, -0x260
/* 08A5AC 800899AC 3C158012 */  lui   $s5, %hi(D_801263E0) # $s5, 0x8012
/* 08A5B0 800899B0 26B563E0 */  addiu $s5, %lo(D_801263E0) # addiu $s5, $s5, 0x63e0
/* 08A5B4 800899B4 01AE8821 */  addu  $s1, $t5, $t6
.L800899B8:
/* 08A5B8 800899B8 3C0F8012 */  lui   $t7, %hi(gOptionsMenuItemIndex) # $t7, 0x8012
/* 08A5BC 800899BC 85EF6C46 */  lh    $t7, %lo(gOptionsMenuItemIndex)($t7)
/* 08A5C0 800899C0 00008025 */  move  $s0, $zero
/* 08A5C4 800899C4 17CF0006 */  bne   $fp, $t7, .L800899E0
/* 08A5C8 800899C8 240400FF */   li    $a0, 255
/* 08A5CC 800899CC 8EB80000 */  lw    $t8, ($s5)
/* 08A5D0 800899D0 00000000 */  nop   
/* 08A5D4 800899D4 17000003 */  bnez  $t8, .L800899E4
/* 08A5D8 800899D8 241900FF */   li    $t9, 255
/* 08A5DC 800899DC 02408025 */  move  $s0, $s2
.L800899E0:
/* 08A5E0 800899E0 241900FF */  li    $t9, 255
.L800899E4:
/* 08A5E4 800899E4 AFB90010 */  sw    $t9, 0x10($sp)
/* 08A5E8 800899E8 240500FF */  li    $a1, 255
/* 08A5EC 800899EC 240600FF */  li    $a2, 255
/* 08A5F0 800899F0 0C0310E1 */  jal   set_text_colour
/* 08A5F4 800899F4 02003825 */   move  $a3, $s0
/* 08A5F8 800899F8 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 08A5FC 800899FC 8E270000 */  lw    $a3, ($s1)
/* 08A600 80089A00 2409000C */  li    $t1, 12
/* 08A604 80089A04 AFA90010 */  sw    $t1, 0x10($sp)
/* 08A608 80089A08 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 08A60C 80089A0C 24058000 */  li    $a1, -32768
/* 08A610 80089A10 0C031110 */  jal   draw_text
/* 08A614 80089A14 02603025 */   move  $a2, $s3
/* 08A618 80089A18 8E2A0004 */  lw    $t2, 4($s1)
/* 08A61C 80089A1C 27DE0001 */  addiu $fp, $fp, 1
/* 08A620 80089A20 26310004 */  addiu $s1, $s1, 4
/* 08A624 80089A24 1540FFE4 */  bnez  $t2, .L800899B8
/* 08A628 80089A28 02749821 */   addu  $s3, $s3, $s4
.L80089A2C:
/* 08A62C 80089A2C 3C158012 */  lui   $s5, %hi(D_801263E0) # $s5, 0x8012
/* 08A630 80089A30 26B563E0 */  addiu $s5, %lo(D_801263E0) # addiu $s5, $s5, 0x63e0
/* 08A634 80089A34 0C0310BB */  jal   set_text_font
/* 08A638 80089A38 00002025 */   move  $a0, $zero
/* 08A63C 80089A3C 240B00FF */  li    $t3, 255
/* 08A640 80089A40 AFAB0010 */  sw    $t3, 0x10($sp)
/* 08A644 80089A44 240400FF */  li    $a0, 255
/* 08A648 80089A48 240500FF */  li    $a1, 255
/* 08A64C 80089A4C 24060080 */  li    $a2, 128
/* 08A650 80089A50 0C0310E1 */  jal   set_text_colour
/* 08A654 80089A54 24070080 */   li    $a3, 128
/* 08A658 80089A58 00002025 */  move  $a0, $zero
/* 08A65C 80089A5C 00002825 */  move  $a1, $zero
/* 08A660 80089A60 24060080 */  li    $a2, 128
/* 08A664 80089A64 0C0310F3 */  jal   set_text_background_colour
/* 08A668 80089A68 24070080 */   li    $a3, 128
/* 08A66C 80089A6C 3C028012 */  lui   $v0, %hi(gOptionsMenuItemIndex) # $v0, 0x8012
/* 08A670 80089A70 84426C46 */  lh    $v0, %lo(gOptionsMenuItemIndex)($v0)
/* 08A674 80089A74 24010004 */  li    $at, 4
/* 08A678 80089A78 14410020 */  bne   $v0, $at, .L80089AFC
/* 08A67C 80089A7C 3C088012 */   lui   $t0, %hi(D_80126C4C) # $t0, 0x8012
/* 08A680 80089A80 85086C4C */  lh    $t0, %lo(D_80126C4C)($t0)
/* 08A684 80089A84 2401FFFF */  li    $at, -1
/* 08A688 80089A88 1501000D */  bne   $t0, $at, .L80089AC0
/* 08A68C 80089A8C 3C028012 */   lui   $v0, %hi(gCheatsAssetData) # $v0, 0x8012
/* 08A690 80089A90 3C0C800E */  lui   $t4, %hi(gMenuText) # $t4, 0x800e
/* 08A694 80089A94 8D8CF4A0 */  lw    $t4, %lo(gMenuText)($t4)
/* 08A698 80089A98 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 08A69C 80089A9C 240D000C */  li    $t5, 12
/* 08A6A0 80089AA0 8D870048 */  lw    $a3, 0x48($t4)
/* 08A6A4 80089AA4 AFAD0010 */  sw    $t5, 0x10($sp)
/* 08A6A8 80089AA8 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 08A6AC 80089AAC 24058000 */  li    $a1, -32768
/* 08A6B0 80089AB0 0C031110 */  jal   draw_text
/* 08A6B4 80089AB4 24060090 */   li    $a2, 144
/* 08A6B8 80089AB8 10000029 */  b     .L80089B60
/* 08A6BC 80089ABC 8EAC0000 */   lw    $t4, ($s5)
.L80089AC0:
/* 08A6C0 80089AC0 8C426C30 */  lw    $v0, %lo(gCheatsAssetData)($v0)
/* 08A6C4 80089AC4 00087040 */  sll   $t6, $t0, 1
/* 08A6C8 80089AC8 24430002 */  addiu $v1, $v0, 2
/* 08A6CC 80089ACC 006E7821 */  addu  $t7, $v1, $t6
/* 08A6D0 80089AD0 95F80002 */  lhu   $t8, 2($t7)
/* 08A6D4 80089AD4 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 08A6D8 80089AD8 2419000C */  li    $t9, 12
/* 08A6DC 80089ADC AFB90010 */  sw    $t9, 0x10($sp)
/* 08A6E0 80089AE0 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 08A6E4 80089AE4 24058000 */  li    $a1, -32768
/* 08A6E8 80089AE8 24060090 */  li    $a2, 144
/* 08A6EC 80089AEC 0C031110 */  jal   draw_text
/* 08A6F0 80089AF0 03023821 */   addu  $a3, $t8, $v0
/* 08A6F4 80089AF4 1000001A */  b     .L80089B60
/* 08A6F8 80089AF8 8EAC0000 */   lw    $t4, ($s5)
.L80089AFC:
/* 08A6FC 80089AFC 16E2000C */  bne   $s7, $v0, .L80089B30
/* 08A700 80089B00 24010006 */   li    $at, 6
/* 08A704 80089B04 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 08A708 80089B08 3C078012 */  lui   $a3, %hi(D_80126C58) # $a3, 0x8012
/* 08A70C 80089B0C 2409000C */  li    $t1, 12
/* 08A710 80089B10 AFA90010 */  sw    $t1, 0x10($sp)
/* 08A714 80089B14 24E76C58 */  addiu $a3, %lo(D_80126C58) # addiu $a3, $a3, 0x6c58
/* 08A718 80089B18 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 08A71C 80089B1C 24058000 */  li    $a1, -32768
/* 08A720 80089B20 0C031110 */  jal   draw_text
/* 08A724 80089B24 24060090 */   li    $a2, 144
/* 08A728 80089B28 1000000D */  b     .L80089B60
/* 08A72C 80089B2C 8EAC0000 */   lw    $t4, ($s5)
.L80089B30:
/* 08A730 80089B30 1441000A */  bne   $v0, $at, .L80089B5C
/* 08A734 80089B34 3C048012 */   lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 08A738 80089B38 3C0A800E */  lui   $t2, %hi(gMenuText) # $t2, 0x800e
/* 08A73C 80089B3C 8D4AF4A0 */  lw    $t2, %lo(gMenuText)($t2)
/* 08A740 80089B40 240B000C */  li    $t3, 12
/* 08A744 80089B44 8D47004C */  lw    $a3, 0x4c($t2)
/* 08A748 80089B48 AFAB0010 */  sw    $t3, 0x10($sp)
/* 08A74C 80089B4C 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 08A750 80089B50 24058000 */  li    $a1, -32768
/* 08A754 80089B54 0C031110 */  jal   draw_text
/* 08A758 80089B58 24060090 */   li    $a2, 144
.L80089B5C:
/* 08A75C 80089B5C 8EAC0000 */  lw    $t4, ($s5)
.L80089B60:
/* 08A760 80089B60 00000000 */  nop   
/* 08A764 80089B64 11800049 */  beqz  $t4, .L80089C8C
/* 08A768 80089B68 00000000 */   nop   
/* 08A76C 80089B6C 8ECD0000 */  lw    $t5, ($s6)
/* 08A770 80089B70 0000F025 */  move  $fp, $zero
/* 08A774 80089B74 15A00003 */  bnez  $t5, .L80089B84
/* 08A778 80089B78 24130078 */   li    $s3, 120
/* 08A77C 80089B7C 10000001 */  b     .L80089B84
/* 08A780 80089B80 24130086 */   li    $s3, 134
.L80089B84:
/* 08A784 80089B84 0C031525 */  jal   assign_dialogue_box_id
/* 08A788 80089B88 24040006 */   li    $a0, 6
/* 08A78C 80089B8C 24040006 */  li    $a0, 6
/* 08A790 80089B90 0C0313DF */  jal   set_dialogue_font
/* 08A794 80089B94 00002825 */   move  $a1, $zero
/* 08A798 80089B98 266E001C */  addiu $t6, $s3, 0x1c
/* 08A79C 80089B9C AFAE0010 */  sw    $t6, 0x10($sp)
/* 08A7A0 80089BA0 24040006 */  li    $a0, 6
/* 08A7A4 80089BA4 2405004C */  li    $a1, 76
/* 08A7A8 80089BA8 2666FFE4 */  addiu $a2, $s3, -0x1c
/* 08A7AC 80089BAC 0C0313B7 */  jal   set_current_dialogue_box_coords
/* 08A7B0 80089BB0 240700F4 */   li    $a3, 244
/* 08A7B4 80089BB4 240F00A0 */  li    $t7, 160
/* 08A7B8 80089BB8 AFAF0010 */  sw    $t7, 0x10($sp)
/* 08A7BC 80089BBC 24040006 */  li    $a0, 6
/* 08A7C0 80089BC0 00002825 */  move  $a1, $zero
/* 08A7C4 80089BC4 00003025 */  move  $a2, $zero
/* 08A7C8 80089BC8 0C0313EF */  jal   set_current_dialogue_background_colour
/* 08A7CC 80089BCC 00003825 */   move  $a3, $zero
/* 08A7D0 80089BD0 24130004 */  li    $s3, 4
/* 08A7D4 80089BD4 00008825 */  move  $s1, $zero
/* 08A7D8 80089BD8 24140003 */  li    $s4, 3
.L80089BDC:
/* 08A7DC 80089BDC 240600FF */  li    $a2, 255
/* 08A7E0 80089BE0 17C00004 */  bnez  $fp, .L80089BF4
/* 08A7E4 80089BE4 00008025 */   move  $s0, $zero
/* 08A7E8 80089BE8 00003025 */  move  $a2, $zero
/* 08A7EC 80089BEC 10000006 */  b     .L80089C08
/* 08A7F0 80089BF0 24100040 */   li    $s0, 64
.L80089BF4:
/* 08A7F4 80089BF4 8EB80000 */  lw    $t8, ($s5)
/* 08A7F8 80089BF8 00000000 */  nop   
/* 08A7FC 80089BFC 17D80003 */  bne   $fp, $t8, .L80089C0C
/* 08A800 80089C00 241900FF */   li    $t9, 255
/* 08A804 80089C04 02408025 */  move  $s0, $s2
.L80089C08:
/* 08A808 80089C08 241900FF */  li    $t9, 255
.L80089C0C:
/* 08A80C 80089C0C AFB90014 */  sw    $t9, 0x14($sp)
/* 08A810 80089C10 24040006 */  li    $a0, 6
/* 08A814 80089C14 240500FF */  li    $a1, 255
/* 08A818 80089C18 240700FF */  li    $a3, 255
/* 08A81C 80089C1C 0C031400 */  jal   set_current_text_colour
/* 08A820 80089C20 AFB00010 */   sw    $s0, 0x10($sp)
/* 08A824 80089C24 3C09800E */  lui   $t1, %hi(gMenuText) # $t1, 0x800e
/* 08A828 80089C28 8D29F4A0 */  lw    $t1, %lo(gMenuText)($t1)
/* 08A82C 80089C2C 240B0001 */  li    $t3, 1
/* 08A830 80089C30 01315021 */  addu  $t2, $t1, $s1
/* 08A834 80089C34 8D470250 */  lw    $a3, 0x250($t2)
/* 08A838 80089C38 240C0004 */  li    $t4, 4
/* 08A83C 80089C3C AFAC0014 */  sw    $t4, 0x14($sp)
/* 08A840 80089C40 AFAB0010 */  sw    $t3, 0x10($sp)
/* 08A844 80089C44 24040006 */  li    $a0, 6
/* 08A848 80089C48 24058000 */  li    $a1, -32768
/* 08A84C 80089C4C 0C03145A */  jal   render_dialogue_text
/* 08A850 80089C50 02603025 */   move  $a2, $s3
/* 08A854 80089C54 13C00003 */  beqz  $fp, .L80089C64
/* 08A858 80089C58 00000000 */   nop   
/* 08A85C 80089C5C 10000002 */  b     .L80089C68
/* 08A860 80089C60 26730010 */   addiu $s3, $s3, 0x10
.L80089C64:
/* 08A864 80089C64 26730014 */  addiu $s3, $s3, 0x14
.L80089C68:
/* 08A868 80089C68 27DE0001 */  addiu $fp, $fp, 1
/* 08A86C 80089C6C 17D4FFDB */  bne   $fp, $s4, .L80089BDC
/* 08A870 80089C70 26310004 */   addiu $s1, $s1, 4
/* 08A874 80089C74 3C048012 */  lui   $a0, %hi(sMenuCurrDisplayList) # $a0, 0x8012
/* 08A878 80089C78 248463A0 */  addiu $a0, %lo(sMenuCurrDisplayList) # addiu $a0, $a0, 0x63a0
/* 08A87C 80089C7C 00002825 */  move  $a1, $zero
/* 08A880 80089C80 00003025 */  move  $a2, $zero
/* 08A884 80089C84 0C0316D6 */  jal   render_dialogue_box
/* 08A888 80089C88 24070006 */   li    $a3, 6
.L80089C8C:
/* 08A88C 80089C8C 0C0270C3 */  jal   get_filtered_cheats
/* 08A890 80089C90 00000000 */   nop   
/* 08A894 80089C94 000268C0 */  sll   $t5, $v0, 3
/* 08A898 80089C98 05A10004 */  bgez  $t5, .L80089CAC
/* 08A89C 80089C9C 8FBF0044 */   lw    $ra, 0x44($sp)
/* 08A8A0 80089CA0 0C022B51 */  jal   calculate_and_display_rom_checksum
/* 08A8A4 80089CA4 00000000 */   nop   
/* 08A8A8 80089CA8 8FBF0044 */  lw    $ra, 0x44($sp)
.L80089CAC:
/* 08A8AC 80089CAC 8FB00020 */  lw    $s0, 0x20($sp)
/* 08A8B0 80089CB0 8FB10024 */  lw    $s1, 0x24($sp)
/* 08A8B4 80089CB4 8FB20028 */  lw    $s2, 0x28($sp)
/* 08A8B8 80089CB8 8FB3002C */  lw    $s3, 0x2c($sp)
/* 08A8BC 80089CBC 8FB40030 */  lw    $s4, 0x30($sp)
/* 08A8C0 80089CC0 8FB50034 */  lw    $s5, 0x34($sp)
/* 08A8C4 80089CC4 8FB60038 */  lw    $s6, 0x38($sp)
/* 08A8C8 80089CC8 8FB7003C */  lw    $s7, 0x3c($sp)
/* 08A8CC 80089CCC 8FBE0040 */  lw    $fp, 0x40($sp)
/* 08A8D0 80089CD0 03E00008 */  jr    $ra
/* 08A8D4 80089CD4 27BD0080 */   addiu $sp, $sp, 0x80

