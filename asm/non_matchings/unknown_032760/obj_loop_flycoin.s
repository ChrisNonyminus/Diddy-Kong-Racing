.late_rodata
glabel D_800E6188
.double 1.2

.text
glabel obj_loop_flycoin
/* 03DEB8 8003D2B8 44852000 */  mtc1  $a1, $f4
/* 03DEBC 8003D2BC 3C0F8000 */  lui   $t7, %hi(osTvType) # $t7, 0x8000
/* 03DEC0 8003D2C0 468020A0 */  cvt.s.w $f2, $f4
/* 03DEC4 8003D2C4 8DEF0300 */  lw    $t7, %lo(osTvType)($t7)
/* 03DEC8 8003D2C8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 03DECC 8003D2CC AFB00018 */  sw    $s0, 0x18($sp)
/* 03DED0 8003D2D0 00808025 */  move  $s0, $a0
/* 03DED4 8003D2D4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 03DED8 8003D2D8 AFA5002C */  sw    $a1, 0x2c($sp)
/* 03DEDC 8003D2DC 15E00007 */  bnez  $t7, .L8003D2FC
/* 03DEE0 8003D2E0 46001006 */   mov.s $f0, $f2
/* 03DEE4 8003D2E4 3C01800E */  lui   $at, %hi(D_800E6188 + 4) # $at, 0x800e
/* 03DEE8 8003D2E8 C4296188 */  lwc1  $f9, %lo(D_800E6188)($at)
/* 03DEEC 8003D2EC C428618C */  lwc1  $f8, %lo(D_800E6188 + 4)($at)
/* 03DEF0 8003D2F0 460011A1 */  cvt.d.s $f6, $f2
/* 03DEF4 8003D2F4 46283282 */  mul.d $f10, $f6, $f8
/* 03DEF8 8003D2F8 46205020 */  cvt.s.d $f0, $f10
.L8003D2FC:
/* 03DEFC 8003D2FC 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 03DF00 8003D300 44818800 */  mtc1  $at, $f17
/* 03DF04 8003D304 44808000 */  mtc1  $zero, $f16
/* 03DF08 8003D308 460004A1 */  cvt.d.s $f18, $f0
/* 03DF0C 8003D30C 46328102 */  mul.d $f4, $f16, $f18
/* 03DF10 8003D310 C6060020 */  lwc1  $f6, 0x20($s0)
/* 03DF14 8003D314 C612001C */  lwc1  $f18, 0x1c($s0)
/* 03DF18 8003D318 46003221 */  cvt.d.s $f8, $f6
/* 03DF1C 8003D31C 02002025 */  move  $a0, $s0
/* 03DF20 8003D320 46244281 */  sub.d $f10, $f8, $f4
/* 03DF24 8003D324 46205420 */  cvt.s.d $f16, $f10
/* 03DF28 8003D328 C60A0024 */  lwc1  $f10, 0x24($s0)
/* 03DF2C 8003D32C 46009182 */  mul.s $f6, $f18, $f0
/* 03DF30 8003D330 E6100020 */  swc1  $f16, 0x20($s0)
/* 03DF34 8003D334 C6080020 */  lwc1  $f8, 0x20($s0)
/* 03DF38 8003D338 00000000 */  nop   
/* 03DF3C 8003D33C 46004102 */  mul.s $f4, $f8, $f0
/* 03DF40 8003D340 44053000 */  mfc1  $a1, $f6
/* 03DF44 8003D344 46005402 */  mul.s $f16, $f10, $f0
/* 03DF48 8003D348 44062000 */  mfc1  $a2, $f4
/* 03DF4C 8003D34C 44078000 */  mfc1  $a3, $f16
/* 03DF50 8003D350 0C00455C */  jal   func_80011570
/* 03DF54 8003D354 00000000 */   nop   
/* 03DF58 8003D358 8E180078 */  lw    $t8, 0x78($s0)
/* 03DF5C 8003D35C 8FB9002C */  lw    $t9, 0x2c($sp)
/* 03DF60 8003D360 02002025 */  move  $a0, $s0
/* 03DF64 8003D364 03194023 */  subu  $t0, $t8, $t9
/* 03DF68 8003D368 1D000017 */  bgtz  $t0, .L8003D3C8
/* 03DF6C 8003D36C AE080078 */   sw    $t0, 0x78($s0)
/* 03DF70 8003D370 8E02007C */  lw    $v0, 0x7c($s0)
/* 03DF74 8003D374 240D0001 */  li    $t5, 1
/* 03DF78 8003D378 804A0193 */  lb    $t2, 0x193($v0)
/* 03DF7C 8003D37C 00000000 */  nop   
/* 03DF80 8003D380 254B0001 */  addiu $t3, $t2, 1
/* 03DF84 8003D384 A04B0193 */  sb    $t3, 0x193($v0)
/* 03DF88 8003D388 804C0193 */  lb    $t4, 0x193($v0)
/* 03DF8C 8003D38C 00000000 */  nop   
/* 03DF90 8003D390 2981000A */  slti  $at, $t4, 0xa
/* 03DF94 8003D394 14200002 */  bnez  $at, .L8003D3A0
/* 03DF98 8003D398 00000000 */   nop   
/* 03DF9C 8003D39C A04D01D8 */  sb    $t5, 0x1d8($v0)
.L8003D3A0:
/* 03DFA0 8003D3A0 0C003FEE */  jal   gParticlePtrList_addObject
/* 03DFA4 8003D3A4 AFA20020 */   sw    $v0, 0x20($sp)
/* 03DFA8 8003D3A8 8FA20020 */  lw    $v0, 0x20($sp)
/* 03DFAC 8003D3AC 2401FFFF */  li    $at, -1
/* 03DFB0 8003D3B0 844E0000 */  lh    $t6, ($v0)
/* 03DFB4 8003D3B4 24040022 */  li    $a0, 34
/* 03DFB8 8003D3B8 11C10004 */  beq   $t6, $at, .L8003D3CC
/* 03DFBC 8003D3BC 8FB8002C */   lw    $t8, 0x2c($sp)
/* 03DFC0 8003D3C0 0C000741 */  jal   play_sound_global
/* 03DFC4 8003D3C4 00002825 */   move  $a1, $zero
.L8003D3C8:
/* 03DFC8 8003D3C8 8FB8002C */  lw    $t8, 0x2c($sp)
.L8003D3CC:
/* 03DFCC 8003D3CC 860F0018 */  lh    $t7, 0x18($s0)
/* 03DFD0 8003D3D0 0018C8C0 */  sll   $t9, $t8, 3
/* 03DFD4 8003D3D4 01F94021 */  addu  $t0, $t7, $t9
/* 03DFD8 8003D3D8 A6080018 */  sh    $t0, 0x18($s0)
/* 03DFDC 8003D3DC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 03DFE0 8003D3E0 8FB00018 */  lw    $s0, 0x18($sp)
/* 03DFE4 8003D3E4 03E00008 */  jr    $ra
/* 03DFE8 8003D3E8 27BD0028 */   addiu $sp, $sp, 0x28

