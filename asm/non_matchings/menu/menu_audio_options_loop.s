glabel menu_audio_options_loop
/* 085874 80084C74 3C038012 */  lui   $v1, %hi(gOptionBlinkTimer) # $v1, 0x8012
/* 085878 80084C78 246363BC */  addiu $v1, %lo(gOptionBlinkTimer) # addiu $v1, $v1, 0x63bc
/* 08587C 80084C7C 8C6E0000 */  lw    $t6, ($v1)
/* 085880 80084C80 3C09800E */  lui   $t1, %hi(gMenuDelay) # $t1, 0x800e
/* 085884 80084C84 2529F47C */  addiu $t1, %lo(gMenuDelay) # addiu $t1, $t1, -0xb84
/* 085888 80084C88 8D220000 */  lw    $v0, ($t1)
/* 08588C 80084C8C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 085890 80084C90 01C47821 */  addu  $t7, $t6, $a0
/* 085894 80084C94 31F8003F */  andi  $t8, $t7, 0x3f
/* 085898 80084C98 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08589C 80084C9C AFB00018 */  sw    $s0, 0x18($sp)
/* 0858A0 80084CA0 AFA00030 */  sw    $zero, 0x30($sp)
/* 0858A4 80084CA4 10400009 */  beqz  $v0, .L80084CCC
/* 0858A8 80084CA8 AC780000 */   sw    $t8, ($v1)
/* 0858AC 80084CAC 18400005 */  blez  $v0, .L80084CC4
/* 0858B0 80084CB0 00445023 */   subu  $t2, $v0, $a0
/* 0858B4 80084CB4 0044C821 */  addu  $t9, $v0, $a0
/* 0858B8 80084CB8 AD390000 */  sw    $t9, ($t1)
/* 0858BC 80084CBC 10000003 */  b     .L80084CCC
/* 0858C0 80084CC0 03201025 */   move  $v0, $t9
.L80084CC4:
/* 0858C4 80084CC4 AD2A0000 */  sw    $t2, ($t1)
/* 0858C8 80084CC8 01401025 */  move  $v0, $t2
.L80084CCC:
/* 0858CC 80084CCC 2841FFED */  slti  $at, $v0, -0x13
/* 0858D0 80084CD0 14200007 */  bnez  $at, .L80084CF0
/* 0858D4 80084CD4 28410014 */   slti  $at, $v0, 0x14
/* 0858D8 80084CD8 10200005 */  beqz  $at, .L80084CF0
/* 0858DC 80084CDC 00000000 */   nop   
/* 0858E0 80084CE0 0C021215 */  jal   func_80084854
/* 0858E4 80084CE4 00000000 */   nop   
/* 0858E8 80084CE8 3C09800E */  lui   $t1, %hi(gMenuDelay) # $t1, 0x800e
/* 0858EC 80084CEC 2529F47C */  addiu $t1, %lo(gMenuDelay) # addiu $t1, $t1, -0xb84
.L80084CF0:
/* 0858F0 80084CF0 3C0B8012 */  lui   $t3, %hi(gIgnorePlayerInput) # $t3, 0x8012
/* 0858F4 80084CF4 8D6B63C4 */  lw    $t3, %lo(gIgnorePlayerInput)($t3)
/* 0858F8 80084CF8 00000000 */  nop   
/* 0858FC 80084CFC 1560012C */  bnez  $t3, .L800851B0
/* 085900 80084D00 00000000 */   nop   
/* 085904 80084D04 8D2C0000 */  lw    $t4, ($t1)
/* 085908 80084D08 00004025 */  move  $t0, $zero
/* 08590C 80084D0C 15800128 */  bnez  $t4, .L800851B0
/* 085910 80084D10 00003825 */   move  $a3, $zero
/* 085914 80084D14 3C038012 */  lui   $v1, %hi(gControllersXAxisDirection) # $v1, 0x8012
/* 085918 80084D18 3C058012 */  lui   $a1, %hi(gControllersYAxisDirection) # $a1, 0x8012
/* 08591C 80084D1C AFA00040 */  sw    $zero, 0x40($sp)
/* 085920 80084D20 00003025 */  move  $a2, $zero
/* 085924 80084D24 24A56464 */  addiu $a1, %lo(gControllersYAxisDirection) # addiu $a1, $a1, 0x6464
/* 085928 80084D28 2463645C */  addiu $v1, %lo(gControllersXAxisDirection) # addiu $v1, $v1, 0x645c
/* 08592C 80084D2C 00008025 */  move  $s0, $zero
.L80084D30:
/* 085930 80084D30 02002025 */  move  $a0, $s0
/* 085934 80084D34 AFA30028 */  sw    $v1, 0x28($sp)
/* 085938 80084D38 AFA50024 */  sw    $a1, 0x24($sp)
/* 08593C 80084D3C AFA60034 */  sw    $a2, 0x34($sp)
/* 085940 80084D40 AFA70038 */  sw    $a3, 0x38($sp)
/* 085944 80084D44 0C01A955 */  jal   get_buttons_pressed_from_player
/* 085948 80084D48 AFA8003C */   sw    $t0, 0x3c($sp)
/* 08594C 80084D4C 8FAD0040 */  lw    $t5, 0x40($sp)
/* 085950 80084D50 02002025 */  move  $a0, $s0
/* 085954 80084D54 01A27025 */  or    $t6, $t5, $v0
/* 085958 80084D58 0C01A967 */  jal   clamp_joystick_x_axis
/* 08595C 80084D5C AFAE0040 */   sw    $t6, 0x40($sp)
/* 085960 80084D60 8FA30028 */  lw    $v1, 0x28($sp)
/* 085964 80084D64 8FA50024 */  lw    $a1, 0x24($sp)
/* 085968 80084D68 8FA60034 */  lw    $a2, 0x34($sp)
/* 08596C 80084D6C 8FA70038 */  lw    $a3, 0x38($sp)
/* 085970 80084D70 8FA8003C */  lw    $t0, 0x3c($sp)
/* 085974 80084D74 806F0000 */  lb    $t7, ($v1)
/* 085978 80084D78 80B80000 */  lb    $t8, ($a1)
/* 08597C 80084D7C 26100001 */  addiu $s0, $s0, 1
/* 085980 80084D80 24010004 */  li    $at, 4
/* 085984 80084D84 24630001 */  addiu $v1, $v1, 1
/* 085988 80084D88 24A50001 */  addiu $a1, $a1, 1
/* 08598C 80084D8C 00C23021 */  addu  $a2, $a2, $v0
/* 085990 80084D90 010F4021 */  addu  $t0, $t0, $t7
/* 085994 80084D94 1601FFE6 */  bne   $s0, $at, .L80084D30
/* 085998 80084D98 00F83821 */   addu  $a3, $a3, $t8
/* 08599C 80084D9C 04C10006 */  bgez  $a2, .L80084DB8
/* 0859A0 80084DA0 3C038012 */   lui   $v1, %hi(D_801263E0) # $v1, 0x8012
/* 0859A4 80084DA4 24C60018 */  addiu $a2, $a2, 0x18
/* 0859A8 80084DA8 18C00008 */  blez  $a2, .L80084DCC
/* 0859AC 80084DAC 8FA40040 */   lw    $a0, 0x40($sp)
/* 0859B0 80084DB0 10000005 */  b     .L80084DC8
/* 0859B4 80084DB4 00003025 */   move  $a2, $zero
.L80084DB8:
/* 0859B8 80084DB8 24C6FFE8 */  addiu $a2, $a2, -0x18
/* 0859BC 80084DBC 04C10003 */  bgez  $a2, .L80084DCC
/* 0859C0 80084DC0 8FA40040 */   lw    $a0, 0x40($sp)
/* 0859C4 80084DC4 00003025 */  move  $a2, $zero
.L80084DC8:
/* 0859C8 80084DC8 8FA40040 */  lw    $a0, 0x40($sp)
.L80084DCC:
/* 0859CC 80084DCC 0006C883 */  sra   $t9, $a2, 2
/* 0859D0 80084DD0 308A9000 */  andi  $t2, $a0, 0x9000
/* 0859D4 80084DD4 03203025 */  move  $a2, $t9
/* 0859D8 80084DD8 11400008 */  beqz  $t2, .L80084DFC
/* 0859DC 80084DDC 01402025 */   move  $a0, $t2
/* 0859E0 80084DE0 3C0C8012 */  lui   $t4, %hi(gOptionsMenuItemIndex) # $t4, 0x8012
/* 0859E4 80084DE4 858C6C46 */  lh    $t4, %lo(gOptionsMenuItemIndex)($t4)
/* 0859E8 80084DE8 246363E0 */  addiu $v1, %lo(D_801263E0) # addiu $v1, $v1, 0x63e0
/* 0859EC 80084DEC 8C6B0000 */  lw    $t3, ($v1)
/* 0859F0 80084DF0 258D0001 */  addiu $t5, $t4, 1
/* 0859F4 80084DF4 116D0007 */  beq   $t3, $t5, .L80084E14
/* 0859F8 80084DF8 2418FFFF */   li    $t8, -1
.L80084DFC:
/* 0859FC 80084DFC 8FAE0040 */  lw    $t6, 0x40($sp)
/* 085A00 80084E00 3C038012 */  lui   $v1, %hi(D_801263E0) # $v1, 0x8012
/* 085A04 80084E04 31CF4000 */  andi  $t7, $t6, 0x4000
/* 085A08 80084E08 11E00011 */  beqz  $t7, .L80084E50
/* 085A0C 80084E0C 246363E0 */   addiu $v1, %lo(D_801263E0) # addiu $v1, $v1, 0x63e0
/* 085A10 80084E10 2418FFFF */  li    $t8, -1
.L80084E14:
/* 085A14 80084E14 3C01800E */  lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 085A18 80084E18 3C04800E */  lui   $a0, %hi(sMenuTransitionFadeIn) # $a0, 0x800e
/* 085A1C 80084E1C AC38F47C */  sw    $t8, %lo(gMenuDelay)($at)
/* 085A20 80084E20 0C030076 */  jal   func_800C01D8
/* 085A24 80084E24 2484F774 */   addiu $a0, %lo(sMenuTransitionFadeIn) # addiu $a0, $a0, -0x88c
/* 085A28 80084E28 3C198012 */  lui   $t9, %hi(gOpacityDecayTimer) # $t9, 0x8012
/* 085A2C 80084E2C 8F3963D8 */  lw    $t9, %lo(gOpacityDecayTimer)($t9)
/* 085A30 80084E30 00000000 */  nop   
/* 085A34 80084E34 07200004 */  bltz  $t9, .L80084E48
/* 085A38 80084E38 240A0003 */   li    $t2, 3
/* 085A3C 80084E3C 0C000326 */  jal   set_music_fade_timer
/* 085A40 80084E40 2404FF80 */   li    $a0, -128
/* 085A44 80084E44 240A0003 */  li    $t2, 3
.L80084E48:
/* 085A48 80084E48 100000AD */  b     .L80085100
/* 085A4C 80084E4C AFAA0030 */   sw    $t2, 0x30($sp)
.L80084E50:
/* 085A50 80084E50 3C028012 */  lui   $v0, %hi(gOptionsMenuItemIndex) # $v0, 0x8012
/* 085A54 80084E54 84426C46 */  lh    $v0, %lo(gOptionsMenuItemIndex)($v0)
/* 085A58 80084E58 04E1000B */  bgez  $a3, .L80084E88
/* 085A5C 80084E5C 00000000 */   nop   
/* 085A60 80084E60 8C6C0000 */  lw    $t4, ($v1)
/* 085A64 80084E64 244D0001 */  addiu $t5, $v0, 1
/* 085A68 80084E68 258BFFFF */  addiu $t3, $t4, -1
/* 085A6C 80084E6C 004B082A */  slt   $at, $v0, $t3
/* 085A70 80084E70 10200005 */  beqz  $at, .L80084E88
/* 085A74 80084E74 240E0001 */   li    $t6, 1
/* 085A78 80084E78 3C018012 */  lui   $at, %hi(gOptionsMenuItemIndex) # $at, 0x8012
/* 085A7C 80084E7C A42D6C46 */  sh    $t5, %lo(gOptionsMenuItemIndex)($at)
/* 085A80 80084E80 1000009F */  b     .L80085100
/* 085A84 80084E84 AFAE0030 */   sw    $t6, 0x30($sp)
.L80084E88:
/* 085A88 80084E88 18E00008 */  blez  $a3, .L80084EAC
/* 085A8C 80084E8C 00000000 */   nop   
/* 085A90 80084E90 18400006 */  blez  $v0, .L80084EAC
/* 085A94 80084E94 244FFFFF */   addiu $t7, $v0, -1
/* 085A98 80084E98 3C018012 */  lui   $at, %hi(gOptionsMenuItemIndex) # $at, 0x8012
/* 085A9C 80084E9C 24180001 */  li    $t8, 1
/* 085AA0 80084EA0 A42F6C46 */  sh    $t7, %lo(gOptionsMenuItemIndex)($at)
/* 085AA4 80084EA4 10000096 */  b     .L80085100
/* 085AA8 80084EA8 AFB80030 */   sw    $t8, 0x30($sp)
.L80084EAC:
/* 085AAC 80084EAC 14400021 */  bnez  $v0, .L80084F34
/* 085AB0 80084EB0 00000000 */   nop   
/* 085AB4 80084EB4 1100001F */  beqz  $t0, .L80084F34
/* 085AB8 80084EB8 00000000 */   nop   
/* 085ABC 80084EBC 05010008 */  bgez  $t0, .L80084EE0
/* 085AC0 80084EC0 3C02800E */   lui   $v0, %hi(D_800DFAC8) # $v0, 0x800e
/* 085AC4 80084EC4 3C02800E */  lui   $v0, %hi(D_800DFAC8) # $v0, 0x800e
/* 085AC8 80084EC8 2442FAC8 */  addiu $v0, %lo(D_800DFAC8) # addiu $v0, $v0, -0x538
/* 085ACC 80084ECC 8C590000 */  lw    $t9, ($v0)
/* 085AD0 80084ED0 00000000 */  nop   
/* 085AD4 80084ED4 272AFFFF */  addiu $t2, $t9, -1
/* 085AD8 80084ED8 10000006 */  b     .L80084EF4
/* 085ADC 80084EDC AC4A0000 */   sw    $t2, ($v0)
.L80084EE0:
/* 085AE0 80084EE0 2442FAC8 */  addiu $v0, %lo(D_800DFAC8) # addiu $v0, $v0, -0x538
/* 085AE4 80084EE4 8C4C0000 */  lw    $t4, ($v0)
/* 085AE8 80084EE8 00000000 */  nop   
/* 085AEC 80084EEC 258B0001 */  addiu $t3, $t4, 1
/* 085AF0 80084EF0 AC4B0000 */  sw    $t3, ($v0)
.L80084EF4:
/* 085AF4 80084EF4 8C440000 */  lw    $a0, ($v0)
/* 085AF8 80084EF8 00000000 */  nop   
/* 085AFC 80084EFC 04810004 */  bgez  $a0, .L80084F10
/* 085B00 80084F00 28810003 */   slti  $at, $a0, 3
/* 085B04 80084F04 24040002 */  li    $a0, 2
/* 085B08 80084F08 AC440000 */  sw    $a0, ($v0)
/* 085B0C 80084F0C 28810003 */  slti  $at, $a0, 3
.L80084F10:
/* 085B10 80084F10 14200003 */  bnez  $at, .L80084F20
/* 085B14 80084F14 00000000 */   nop   
/* 085B18 80084F18 AC400000 */  sw    $zero, ($v0)
/* 085B1C 80084F1C 00002025 */  move  $a0, $zero
.L80084F20:
/* 085B20 80084F20 0C0196F4 */  jal   set_stereo_pan_mode
/* 085B24 80084F24 00000000 */   nop   
/* 085B28 80084F28 240E0001 */  li    $t6, 1
/* 085B2C 80084F2C 10000074 */  b     .L80085100
/* 085B30 80084F30 AFAE0030 */   sw    $t6, 0x30($sp)
.L80084F34:
/* 085B34 80084F34 10C00047 */  beqz  $a2, .L80085054
/* 085B38 80084F38 24010001 */   li    $at, 1
/* 085B3C 80084F3C 10410002 */  beq   $v0, $at, .L80084F48
/* 085B40 80084F40 24010002 */   li    $at, 2
/* 085B44 80084F44 14410043 */  bne   $v0, $at, .L80085054
.L80084F48:
/* 085B48 80084F48 24010001 */   li    $at, 1
/* 085B4C 80084F4C 14410013 */  bne   $v0, $at, .L80084F9C
/* 085B50 80084F50 3C03800E */   lui   $v1, %hi(gSfxVolumeSliderValue) # $v1, 0x800e
/* 085B54 80084F54 2463FAC0 */  addiu $v1, %lo(gSfxVolumeSliderValue) # addiu $v1, $v1, -0x540
/* 085B58 80084F58 8C6F0000 */  lw    $t7, ($v1)
/* 085B5C 80084F5C 00000000 */  nop   
/* 085B60 80084F60 01E61021 */  addu  $v0, $t7, $a2
/* 085B64 80084F64 04410004 */  bgez  $v0, .L80084F78
/* 085B68 80084F68 AC620000 */   sw    $v0, ($v1)
/* 085B6C 80084F6C AC600000 */  sw    $zero, ($v1)
/* 085B70 80084F70 10000006 */  b     .L80084F8C
/* 085B74 80084F74 00001025 */   move  $v0, $zero
.L80084F78:
/* 085B78 80084F78 28410101 */  slti  $at, $v0, 0x101
/* 085B7C 80084F7C 14200003 */  bnez  $at, .L80084F8C
/* 085B80 80084F80 00000000 */   nop   
/* 085B84 80084F84 24020100 */  li    $v0, 256
/* 085B88 80084F88 AC620000 */  sw    $v0, ($v1)
.L80084F8C:
/* 085B8C 80084F8C 0C000C58 */  jal   set_sfx_volume_slider
/* 085B90 80084F90 00402025 */   move  $a0, $v0
/* 085B94 80084F94 1000005A */  b     .L80085100
/* 085B98 80084F98 00000000 */   nop   
.L80084F9C:
/* 085B9C 80084F9C 24010002 */  li    $at, 2
/* 085BA0 80084FA0 14410057 */  bne   $v0, $at, .L80085100
/* 085BA4 80084FA4 3C03800E */   lui   $v1, %hi(gMusicVolumeSliderValue) # $v1, 0x800e
/* 085BA8 80084FA8 2463FAC4 */  addiu $v1, %lo(gMusicVolumeSliderValue) # addiu $v1, $v1, -0x53c
/* 085BAC 80084FAC 8C6A0000 */  lw    $t2, ($v1)
/* 085BB0 80084FB0 00000000 */  nop   
/* 085BB4 80084FB4 01461021 */  addu  $v0, $t2, $a2
/* 085BB8 80084FB8 04410004 */  bgez  $v0, .L80084FCC
/* 085BBC 80084FBC AC620000 */   sw    $v0, ($v1)
/* 085BC0 80084FC0 AC600000 */  sw    $zero, ($v1)
/* 085BC4 80084FC4 10000006 */  b     .L80084FE0
/* 085BC8 80084FC8 00001025 */   move  $v0, $zero
.L80084FCC:
/* 085BCC 80084FCC 28410101 */  slti  $at, $v0, 0x101
/* 085BD0 80084FD0 14200003 */  bnez  $at, .L80084FE0
/* 085BD4 80084FD4 00000000 */   nop   
/* 085BD8 80084FD8 24020100 */  li    $v0, 256
/* 085BDC 80084FDC AC620000 */  sw    $v0, ($v1)
.L80084FE0:
/* 085BE0 80084FE0 0C00068F */  jal   set_music_volume_slider
/* 085BE4 80084FE4 00402025 */   move  $a0, $v0
/* 085BE8 80084FE8 0C000572 */  jal   music_is_playing
/* 085BEC 80084FEC 00000000 */   nop   
/* 085BF0 80084FF0 14400043 */  bnez  $v0, .L80085100
/* 085BF4 80084FF4 3C0D8012 */   lui   $t5, %hi(gOpacityDecayTimer) # $t5, 0x8012
/* 085BF8 80084FF8 8DAD63D8 */  lw    $t5, %lo(gOpacityDecayTimer)($t5)
/* 085BFC 80084FFC 00000000 */  nop   
/* 085C00 80085000 05A0000A */  bltz  $t5, .L8008502C
/* 085C04 80085004 00000000 */   nop   
/* 085C08 80085008 0C0002CA */  jal   func_80000B28
/* 085C0C 8008500C 00000000 */   nop   
/* 085C10 80085010 3C10800E */  lui   $s0, %hi(D_800DFABC) # $s0, 0x800e
/* 085C14 80085014 2610FABC */  addiu $s0, %lo(D_800DFABC) # addiu $s0, $s0, -0x544
/* 085C18 80085018 92040003 */  lbu   $a0, 3($s0)
/* 085C1C 8008501C 0C0002CD */  jal   play_music
/* 085C20 80085020 00000000 */   nop   
/* 085C24 80085024 10000036 */  b     .L80085100
/* 085C28 80085028 00000000 */   nop   
.L8008502C:
/* 085C2C 8008502C 0C0002CA */  jal   func_80000B28
/* 085C30 80085030 00000000 */   nop   
/* 085C34 80085034 0C0002F8 */  jal   set_music_player_voice_limit
/* 085C38 80085038 24040018 */   li    $a0, 24
/* 085C3C 8008503C 0C0002CD */  jal   play_music
/* 085C40 80085040 24040018 */   li    $a0, 24
/* 085C44 80085044 0C0002C6 */  jal   func_80000B18
/* 085C48 80085048 00000000 */   nop   
/* 085C4C 8008504C 1000002C */  b     .L80085100
/* 085C50 80085050 00000000 */   nop   
.L80085054:
/* 085C54 80085054 8C6E0000 */  lw    $t6, ($v1)
/* 085C58 80085058 00000000 */  nop   
/* 085C5C 8008505C 29C10005 */  slti  $at, $t6, 5
/* 085C60 80085060 14200027 */  bnez  $at, .L80085100
/* 085C64 80085064 24010003 */   li    $at, 3
/* 085C68 80085068 14410025 */  bne   $v0, $at, .L80085100
/* 085C6C 8008506C 00000000 */   nop   
/* 085C70 80085070 05010009 */  bgez  $t0, .L80085098
/* 085C74 80085074 3C10800E */   lui   $s0, %hi(D_800DFABC) # $s0, 0x800e
/* 085C78 80085078 2610FABC */  addiu $s0, %lo(D_800DFABC) # addiu $s0, $s0, -0x544
/* 085C7C 8008507C 8E030000 */  lw    $v1, ($s0)
/* 085C80 80085080 24180001 */  li    $t8, 1
/* 085C84 80085084 18600004 */  blez  $v1, .L80085098
/* 085C88 80085088 246FFFFF */   addiu $t7, $v1, -1
/* 085C8C 8008508C AE0F0000 */  sw    $t7, ($s0)
/* 085C90 80085090 1000000F */  b     .L800850D0
/* 085C94 80085094 AFB80030 */   sw    $t8, 0x30($sp)
.L80085098:
/* 085C98 80085098 3C10800E */  lui   $s0, %hi(D_800DFABC) # $s0, 0x800e
/* 085C9C 8008509C 1900000C */  blez  $t0, .L800850D0
/* 085CA0 800850A0 2610FABC */   addiu $s0, %lo(D_800DFABC) # addiu $s0, $s0, -0x544
/* 085CA4 800850A4 0C000844 */  jal   ALSeqFile_80115CF8_GetSeqCount
/* 085CA8 800850A8 AFA40028 */   sw    $a0, 0x28($sp)
/* 085CAC 800850AC 8E030000 */  lw    $v1, ($s0)
/* 085CB0 800850B0 2459FFFF */  addiu $t9, $v0, -1
/* 085CB4 800850B4 8FA40028 */  lw    $a0, 0x28($sp)
/* 085CB8 800850B8 0079082A */  slt   $at, $v1, $t9
/* 085CBC 800850BC 10200004 */  beqz  $at, .L800850D0
/* 085CC0 800850C0 246A0001 */   addiu $t2, $v1, 1
/* 085CC4 800850C4 240C0001 */  li    $t4, 1
/* 085CC8 800850C8 AE0A0000 */  sw    $t2, ($s0)
/* 085CCC 800850CC AFAC0030 */  sw    $t4, 0x30($sp)
.L800850D0:
/* 085CD0 800850D0 1080000B */  beqz  $a0, .L80085100
/* 085CD4 800850D4 00000000 */   nop   
/* 085CD8 800850D8 0C0002CA */  jal   func_80000B28
/* 085CDC 800850DC 00000000 */   nop   
/* 085CE0 800850E0 0C0002F8 */  jal   set_music_player_voice_limit
/* 085CE4 800850E4 24040018 */   li    $a0, 24
/* 085CE8 800850E8 92040003 */  lbu   $a0, 3($s0)
/* 085CEC 800850EC 0C0002CD */  jal   play_music
/* 085CF0 800850F0 00000000 */   nop   
/* 085CF4 800850F4 8E0B0000 */  lw    $t3, ($s0)
/* 085CF8 800850F8 3C018012 */  lui   $at, %hi(gOpacityDecayTimer) # $at, 0x8012
/* 085CFC 800850FC AC2B63D8 */  sw    $t3, %lo(gOpacityDecayTimer)($at)
.L80085100:
/* 085D00 80085100 3C0D8012 */  lui   $t5, %hi(gOptionsMenuItemIndex) # $t5, 0x8012
/* 085D04 80085104 85AD6C46 */  lh    $t5, %lo(gOptionsMenuItemIndex)($t5)
/* 085D08 80085108 24010001 */  li    $at, 1
/* 085D0C 8008510C 15A1000B */  bne   $t5, $at, .L8008513C
/* 085D10 80085110 3C058012 */   lui   $a1, %hi(D_801269FC) # $a1, 0x8012
/* 085D14 80085114 3C058012 */  lui   $a1, %hi(D_801269FC) # $a1, 0x8012
/* 085D18 80085118 24A569FC */  addiu $a1, %lo(D_801269FC) # addiu $a1, $a1, 0x69fc
/* 085D1C 8008511C 8CAE0000 */  lw    $t6, ($a1)
/* 085D20 80085120 00000000 */  nop   
/* 085D24 80085124 15C0000D */  bnez  $t6, .L8008515C
/* 085D28 80085128 8FAF0030 */   lw    $t7, 0x30($sp)
/* 085D2C 8008512C 0C000741 */  jal   play_sound_global
/* 085D30 80085130 2404019B */   li    $a0, 411
/* 085D34 80085134 10000009 */  b     .L8008515C
/* 085D38 80085138 8FAF0030 */   lw    $t7, 0x30($sp)
.L8008513C:
/* 085D3C 8008513C 24A569FC */  addiu $a1, %lo(D_801269FC) # addiu $a1, $a1, 0x69fc
/* 085D40 80085140 8CA40000 */  lw    $a0, ($a1)
/* 085D44 80085144 00000000 */  nop   
/* 085D48 80085148 10800004 */  beqz  $a0, .L8008515C
/* 085D4C 8008514C 8FAF0030 */   lw    $t7, 0x30($sp)
/* 085D50 80085150 0C001223 */  jal   func_8000488C
/* 085D54 80085154 00000000 */   nop   
/* 085D58 80085158 8FAF0030 */  lw    $t7, 0x30($sp)
.L8008515C:
/* 085D5C 8008515C 24010003 */  li    $at, 3
/* 085D60 80085160 15E10005 */  bne   $t7, $at, .L80085178
/* 085D64 80085164 24040241 */   li    $a0, 577
/* 085D68 80085168 0C000741 */  jal   play_sound_global
/* 085D6C 8008516C 00002825 */   move  $a1, $zero
/* 085D70 80085170 1000000F */  b     .L800851B0
/* 085D74 80085174 00000000 */   nop   
.L80085178:
/* 085D78 80085178 8FB80030 */  lw    $t8, 0x30($sp)
/* 085D7C 8008517C 24010002 */  li    $at, 2
/* 085D80 80085180 17010005 */  bne   $t8, $at, .L80085198
/* 085D84 80085184 240400EF */   li    $a0, 239
/* 085D88 80085188 0C000741 */  jal   play_sound_global
/* 085D8C 8008518C 00002825 */   move  $a1, $zero
/* 085D90 80085190 10000007 */  b     .L800851B0
/* 085D94 80085194 00000000 */   nop   
.L80085198:
/* 085D98 80085198 8FB90030 */  lw    $t9, 0x30($sp)
/* 085D9C 8008519C 24010001 */  li    $at, 1
/* 085DA0 800851A0 17210003 */  bne   $t9, $at, .L800851B0
/* 085DA4 800851A4 240400EB */   li    $a0, 235
/* 085DA8 800851A8 0C000741 */  jal   play_sound_global
/* 085DAC 800851AC 00002825 */   move  $a1, $zero
.L800851B0:
/* 085DB0 800851B0 3C09800E */  lui   $t1, %hi(gMenuDelay) # $t1, 0x800e
/* 085DB4 800851B4 2529F47C */  addiu $t1, %lo(gMenuDelay) # addiu $t1, $t1, -0xb84
/* 085DB8 800851B8 8D2A0000 */  lw    $t2, ($t1)
/* 085DBC 800851BC 00001025 */  move  $v0, $zero
/* 085DC0 800851C0 2941FFE2 */  slti  $at, $t2, -0x1e
/* 085DC4 800851C4 10200007 */  beqz  $at, .L800851E4
/* 085DC8 800851C8 00000000 */   nop   
/* 085DCC 800851CC 0C02147F */  jal   func_800851FC
/* 085DD0 800851D0 00000000 */   nop   
/* 085DD4 800851D4 0C0204F4 */  jal   menu_init
/* 085DD8 800851D8 2404000C */   li    $a0, 12
/* 085DDC 800851DC 10000003 */  b     .L800851EC
/* 085DE0 800851E0 00001025 */   move  $v0, $zero
.L800851E4:
/* 085DE4 800851E4 3C018012 */  lui   $at, %hi(gIgnorePlayerInput) # $at, 0x8012
/* 085DE8 800851E8 AC2063C4 */  sw    $zero, %lo(gIgnorePlayerInput)($at)
.L800851EC:
/* 085DEC 800851EC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 085DF0 800851F0 8FB00018 */  lw    $s0, 0x18($sp)
/* 085DF4 800851F4 03E00008 */  jr    $ra
/* 085DF8 800851F8 27BD0048 */   addiu $sp, $sp, 0x48

