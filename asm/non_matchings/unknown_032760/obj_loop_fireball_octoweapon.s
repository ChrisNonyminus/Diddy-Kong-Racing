.late_rodata
glabel D_800E5FE0
.double 1.2
glabel D_800E5FE8
.double 0.1
glabel D_800E5FF0
.double 0.9

.text
glabel obj_loop_fireball_octoweapon
/* 034B60 80033F60 27BDFF78 */  addiu $sp, $sp, -0x88
/* 034B64 80033F64 44852000 */  mtc1  $a1, $f4
/* 034B68 80033F68 3C0F8000 */  lui   $t7, %hi(osTvType) # $t7, 0x8000
/* 034B6C 80033F6C 46802020 */  cvt.s.w $f0, $f4
/* 034B70 80033F70 8DEF0300 */  lw    $t7, %lo(osTvType)($t7)
/* 034B74 80033F74 AFBF002C */  sw    $ra, 0x2c($sp)
/* 034B78 80033F78 AFB00028 */  sw    $s0, 0x28($sp)
/* 034B7C 80033F7C AFA5008C */  sw    $a1, 0x8c($sp)
/* 034B80 80033F80 8C830078 */  lw    $v1, 0x78($a0)
/* 034B84 80033F84 00808025 */  move  $s0, $a0
/* 034B88 80033F88 15E00008 */  bnez  $t7, .L80033FAC
/* 034B8C 80033F8C E7A0007C */   swc1  $f0, 0x7c($sp)
/* 034B90 80033F90 3C01800E */  lui   $at, %hi(D_800E5FE0 + 4) # $at, 0x800e
/* 034B94 80033F94 C4295FE0 */  lwc1  $f9, %lo(D_800E5FE0)($at)
/* 034B98 80033F98 C4285FE4 */  lwc1  $f8, %lo(D_800E5FE0 + 4)($at)
/* 034B9C 80033F9C 460001A1 */  cvt.d.s $f6, $f0
/* 034BA0 80033FA0 46283282 */  mul.d $f10, $f6, $f8
/* 034BA4 80033FA4 46205120 */  cvt.s.d $f4, $f10
/* 034BA8 80033FA8 E7A4007C */  swc1  $f4, 0x7c($sp)
.L80033FAC:
/* 034BAC 80033FAC 86180048 */  lh    $t8, 0x48($s0)
/* 034BB0 80033FB0 24010074 */  li    $at, 116
/* 034BB4 80033FB4 17010015 */  bne   $t8, $at, .L8003400C
/* 034BB8 80033FB8 00000000 */   nop   
/* 034BBC 80033FBC 8E19007C */  lw    $t9, 0x7c($s0)
/* 034BC0 80033FC0 00000000 */  nop   
/* 034BC4 80033FC4 07210011 */  bgez  $t9, .L8003400C
/* 034BC8 80033FC8 00000000 */   nop   
/* 034BCC 80033FCC 44800000 */  mtc1  $zero, $f0
/* 034BD0 80033FD0 00000000 */  nop   
/* 034BD4 80033FD4 E600000C */  swc1  $f0, 0xc($s0)
/* 034BD8 80033FD8 E6000010 */  swc1  $f0, 0x10($s0)
/* 034BDC 80033FDC E6000014 */  swc1  $f0, 0x14($s0)
/* 034BE0 80033FE0 0C004558 */  jal   func_80011560
/* 034BE4 80033FE4 AFA30084 */   sw    $v1, 0x84($sp)
/* 034BE8 80033FE8 8FA30084 */  lw    $v1, 0x84($sp)
/* 034BEC 80033FEC 02002025 */  move  $a0, $s0
/* 034BF0 80033FF0 8C65000C */  lw    $a1, 0xc($v1)
/* 034BF4 80033FF4 8C660010 */  lw    $a2, 0x10($v1)
/* 034BF8 80033FF8 8C670014 */  lw    $a3, 0x14($v1)
/* 034BFC 80033FFC 0C00455C */  jal   func_80011570
/* 034C00 80034000 00000000 */   nop   
/* 034C04 80034004 100000AC */  b     .L800342B8
/* 034C08 80034008 8FAE008C */   lw    $t6, 0x8c($sp)
.L8003400C:
/* 034C0C 8003400C C466000C */  lwc1  $f6, 0xc($v1)
/* 034C10 80034010 C608000C */  lwc1  $f8, 0xc($s0)
/* 034C14 80034014 3C01800E */  lui   $at, %hi(D_800E5FE8 + 4) # $at, 0x800e
/* 034C18 80034018 46083281 */  sub.s $f10, $f6, $f8
/* 034C1C 8003401C C4335FE8 */  lwc1  $f19, %lo(D_800E5FE8)($at)
/* 034C20 80034020 C4325FEC */  lwc1  $f18, %lo(D_800E5FE8 + 4)($at)
/* 034C24 80034024 46005121 */  cvt.d.s $f4, $f10
/* 034C28 80034028 46322182 */  mul.d $f6, $f4, $f18
/* 034C2C 8003402C 3C014024 */  li    $at, 0x40240000 # 2.562500
/* 034C30 80034030 44814800 */  mtc1  $at, $f9
/* 034C34 80034034 44804000 */  mtc1  $zero, $f8
/* 034C38 80034038 C7A4007C */  lwc1  $f4, 0x7c($sp)
/* 034C3C 8003403C 462030A0 */  cvt.s.d $f2, $f6
/* 034C40 80034040 44805000 */  mtc1  $zero, $f10
/* 034C44 80034044 46001021 */  cvt.d.s $f0, $f2
/* 034C48 80034048 4620403C */  c.lt.d $f8, $f0
/* 034C4C 8003404C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 034C50 80034050 45000004 */  bc1f  .L80034064
/* 034C54 80034054 46002421 */   cvt.d.s $f16, $f4
/* 034C58 80034058 44811000 */  mtc1  $at, $f2
/* 034C5C 8003405C 00000000 */  nop   
/* 034C60 80034060 46001021 */  cvt.d.s $f0, $f2
.L80034064:
/* 034C64 80034064 3C01C024 */  li    $at, 0xC0240000 # -2.562500
/* 034C68 80034068 44815800 */  mtc1  $at, $f11
/* 034C6C 8003406C 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 034C70 80034070 462A003C */  c.lt.d $f0, $f10
/* 034C74 80034074 44805000 */  mtc1  $zero, $f10
/* 034C78 80034078 45000003 */  bc1f  .L80034088
/* 034C7C 8003407C 00000000 */   nop   
/* 034C80 80034080 44811000 */  mtc1  $at, $f2
/* 034C84 80034084 00000000 */  nop   
.L80034088:
/* 034C88 80034088 C60E001C */  lwc1  $f14, 0x1c($s0)
/* 034C8C 8003408C 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 034C90 80034090 460E1181 */  sub.s $f6, $f2, $f14
/* 034C94 80034094 44815800 */  mtc1  $at, $f11
/* 034C98 80034098 46003221 */  cvt.d.s $f8, $f6
/* 034C9C 8003409C 462A4102 */  mul.d $f4, $f8, $f10
/* 034CA0 800340A0 46007221 */  cvt.d.s $f8, $f14
/* 034CA4 800340A4 3C014024 */  li    $at, 0x40240000 # 2.562500
/* 034CA8 800340A8 46302182 */  mul.d $f6, $f4, $f16
/* 034CAC 800340AC 46264280 */  add.d $f10, $f8, $f6
/* 034CB0 800340B0 C6060010 */  lwc1  $f6, 0x10($s0)
/* 034CB4 800340B4 46205120 */  cvt.s.d $f4, $f10
/* 034CB8 800340B8 44813800 */  mtc1  $at, $f7
/* 034CBC 800340BC E604001C */  swc1  $f4, 0x1c($s0)
/* 034CC0 800340C0 C4680010 */  lwc1  $f8, 0x10($v1)
/* 034CC4 800340C4 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 034CC8 800340C8 46064281 */  sub.s $f10, $f8, $f6
/* 034CCC 800340CC 44803000 */  mtc1  $zero, $f6
/* 034CD0 800340D0 46005121 */  cvt.d.s $f4, $f10
/* 034CD4 800340D4 46322202 */  mul.d $f8, $f4, $f18
/* 034CD8 800340D8 44805000 */  mtc1  $zero, $f10
/* 034CDC 800340DC 462040A0 */  cvt.s.d $f2, $f8
/* 034CE0 800340E0 46001021 */  cvt.d.s $f0, $f2
/* 034CE4 800340E4 4620303C */  c.lt.d $f6, $f0
/* 034CE8 800340E8 44803000 */  mtc1  $zero, $f6
/* 034CEC 800340EC 45000004 */  bc1f  .L80034100
/* 034CF0 800340F0 00000000 */   nop   
/* 034CF4 800340F4 44811000 */  mtc1  $at, $f2
/* 034CF8 800340F8 00000000 */  nop   
/* 034CFC 800340FC 46001021 */  cvt.d.s $f0, $f2
.L80034100:
/* 034D00 80034100 3C01C024 */  li    $at, 0xC0240000 # -2.562500
/* 034D04 80034104 44815800 */  mtc1  $at, $f11
/* 034D08 80034108 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 034D0C 8003410C 462A003C */  c.lt.d $f0, $f10
/* 034D10 80034110 00000000 */  nop   
/* 034D14 80034114 45000003 */  bc1f  .L80034124
/* 034D18 80034118 00000000 */   nop   
/* 034D1C 8003411C 44811000 */  mtc1  $at, $f2
/* 034D20 80034120 00000000 */  nop   
.L80034124:
/* 034D24 80034124 C60C0020 */  lwc1  $f12, 0x20($s0)
/* 034D28 80034128 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 034D2C 8003412C 460C1101 */  sub.s $f4, $f2, $f12
/* 034D30 80034130 44813800 */  mtc1  $at, $f7
/* 034D34 80034134 46002221 */  cvt.d.s $f8, $f4
/* 034D38 80034138 46264282 */  mul.d $f10, $f8, $f6
/* 034D3C 8003413C 46006221 */  cvt.d.s $f8, $f12
/* 034D40 80034140 3C014024 */  li    $at, 0x40240000 # 2.562500
/* 034D44 80034144 46305102 */  mul.d $f4, $f10, $f16
/* 034D48 80034148 46244180 */  add.d $f6, $f8, $f4
/* 034D4C 8003414C C6040014 */  lwc1  $f4, 0x14($s0)
/* 034D50 80034150 462032A0 */  cvt.s.d $f10, $f6
/* 034D54 80034154 44812800 */  mtc1  $at, $f5
/* 034D58 80034158 E60A0020 */  swc1  $f10, 0x20($s0)
/* 034D5C 8003415C C4680014 */  lwc1  $f8, 0x14($v1)
/* 034D60 80034160 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 034D64 80034164 46044181 */  sub.s $f6, $f8, $f4
/* 034D68 80034168 44802000 */  mtc1  $zero, $f4
/* 034D6C 8003416C 460032A1 */  cvt.d.s $f10, $f6
/* 034D70 80034170 46325202 */  mul.d $f8, $f10, $f18
/* 034D74 80034174 44803000 */  mtc1  $zero, $f6
/* 034D78 80034178 462040A0 */  cvt.s.d $f2, $f8
/* 034D7C 8003417C 46001021 */  cvt.d.s $f0, $f2
/* 034D80 80034180 4620203C */  c.lt.d $f4, $f0
/* 034D84 80034184 44802000 */  mtc1  $zero, $f4
/* 034D88 80034188 45000004 */  bc1f  .L8003419C
/* 034D8C 8003418C 00000000 */   nop   
/* 034D90 80034190 44811000 */  mtc1  $at, $f2
/* 034D94 80034194 00000000 */  nop   
/* 034D98 80034198 46001021 */  cvt.d.s $f0, $f2
.L8003419C:
/* 034D9C 8003419C 3C01C024 */  li    $at, 0xC0240000 # -2.562500
/* 034DA0 800341A0 44813800 */  mtc1  $at, $f7
/* 034DA4 800341A4 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 034DA8 800341A8 4626003C */  c.lt.d $f0, $f6
/* 034DAC 800341AC 00000000 */  nop   
/* 034DB0 800341B0 45000003 */  bc1f  .L800341C0
/* 034DB4 800341B4 00000000 */   nop   
/* 034DB8 800341B8 44811000 */  mtc1  $at, $f2
/* 034DBC 800341BC 00000000 */  nop   
.L800341C0:
/* 034DC0 800341C0 C6000024 */  lwc1  $f0, 0x24($s0)
/* 034DC4 800341C4 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 034DC8 800341C8 46001281 */  sub.s $f10, $f2, $f0
/* 034DCC 800341CC 44812800 */  mtc1  $at, $f5
/* 034DD0 800341D0 46005221 */  cvt.d.s $f8, $f10
/* 034DD4 800341D4 46244182 */  mul.d $f6, $f8, $f4
/* 034DD8 800341D8 46000221 */  cvt.d.s $f8, $f0
/* 034DDC 800341DC C60E001C */  lwc1  $f14, 0x1c($s0)
/* 034DE0 800341E0 46303282 */  mul.d $f10, $f6, $f16
/* 034DE4 800341E4 462A4100 */  add.d $f4, $f8, $f10
/* 034DE8 800341E8 462021A0 */  cvt.s.d $f6, $f4
/* 034DEC 800341EC 460E7202 */  mul.s $f8, $f14, $f14
/* 034DF0 800341F0 E6060024 */  swc1  $f6, 0x24($s0)
/* 034DF4 800341F4 C6000024 */  lwc1  $f0, 0x24($s0)
/* 034DF8 800341F8 00000000 */  nop   
/* 034DFC 800341FC 46000282 */  mul.s $f10, $f0, $f0
/* 034E00 80034200 0C0326B4 */  jal   sqrtf
/* 034E04 80034204 460A4300 */   add.s $f12, $f8, $f10
/* 034E08 80034208 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 034E0C 8003420C 44812800 */  mtc1  $at, $f5
/* 034E10 80034210 44802000 */  mtc1  $zero, $f4
/* 034E14 80034214 460001A1 */  cvt.d.s $f6, $f0
/* 034E18 80034218 4626203C */  c.lt.d $f4, $f6
/* 034E1C 8003421C C7A2007C */  lwc1  $f2, 0x7c($sp)
/* 034E20 80034220 4500000C */  bc1f  .L80034254
/* 034E24 80034224 00000000 */   nop   
/* 034E28 80034228 C60C001C */  lwc1  $f12, 0x1c($s0)
/* 034E2C 8003422C C60E0024 */  lwc1  $f14, 0x24($s0)
/* 034E30 80034230 0C01C1D4 */  jal   arctan2_f
/* 034E34 80034234 00000000 */   nop   
/* 034E38 80034238 C7A2007C */  lwc1  $f2, 0x7c($sp)
/* 034E3C 8003423C A6020000 */  sh    $v0, ($s0)
/* 034E40 80034240 8FA9008C */  lw    $t1, 0x8c($sp)
/* 034E44 80034244 86080002 */  lh    $t0, 2($s0)
/* 034E48 80034248 00095240 */  sll   $t2, $t1, 9
/* 034E4C 8003424C 010A5823 */  subu  $t3, $t0, $t2
/* 034E50 80034250 A60B0002 */  sh    $t3, 2($s0)
.L80034254:
/* 034E54 80034254 C608001C */  lwc1  $f8, 0x1c($s0)
/* 034E58 80034258 C6040020 */  lwc1  $f4, 0x20($s0)
/* 034E5C 8003425C 46024282 */  mul.s $f10, $f8, $f2
/* 034E60 80034260 C6080024 */  lwc1  $f8, 0x24($s0)
/* 034E64 80034264 02002025 */  move  $a0, $s0
/* 034E68 80034268 46022182 */  mul.s $f6, $f4, $f2
/* 034E6C 8003426C 44055000 */  mfc1  $a1, $f10
/* 034E70 80034270 46024282 */  mul.s $f10, $f8, $f2
/* 034E74 80034274 44063000 */  mfc1  $a2, $f6
/* 034E78 80034278 44075000 */  mfc1  $a3, $f10
/* 034E7C 8003427C 0C00455C */  jal   func_80011570
/* 034E80 80034280 00000000 */   nop   
/* 034E84 80034284 860C004A */  lh    $t4, 0x4a($s0)
/* 034E88 80034288 2401012A */  li    $at, 298
/* 034E8C 8003428C 15810009 */  bne   $t4, $at, .L800342B4
/* 034E90 80034290 27A5004C */   addiu $a1, $sp, 0x4c
/* 034E94 80034294 C60C0010 */  lwc1  $f12, 0x10($s0)
/* 034E98 80034298 0C00AB42 */  jal   func_8002AD08
/* 034E9C 8003429C 00003025 */   move  $a2, $zero
/* 034EA0 800342A0 10400005 */  beqz  $v0, .L800342B8
/* 034EA4 800342A4 8FAE008C */   lw    $t6, 0x8c($sp)
/* 034EA8 800342A8 C7A4004C */  lwc1  $f4, 0x4c($sp)
/* 034EAC 800342AC 00000000 */  nop   
/* 034EB0 800342B0 E6040010 */  swc1  $f4, 0x10($s0)
.L800342B4:
/* 034EB4 800342B4 8FAE008C */  lw    $t6, 0x8c($sp)
.L800342B8:
/* 034EB8 800342B8 860D0018 */  lh    $t5, 0x18($s0)
/* 034EBC 800342BC 000E7880 */  sll   $t7, $t6, 2
/* 034EC0 800342C0 01EE7821 */  addu  $t7, $t7, $t6
/* 034EC4 800342C4 000F7840 */  sll   $t7, $t7, 1
/* 034EC8 800342C8 8E190064 */  lw    $t9, 0x64($s0)
/* 034ECC 800342CC 01AFC021 */  addu  $t8, $t5, $t7
/* 034ED0 800342D0 A6180018 */  sh    $t8, 0x18($s0)
/* 034ED4 800342D4 AFB90074 */  sw    $t9, 0x74($sp)
/* 034ED8 800342D8 8E02004C */  lw    $v0, 0x4c($s0)
/* 034EDC 800342DC 00000000 */  nop   
/* 034EE0 800342E0 8C440000 */  lw    $a0, ($v0)
/* 034EE4 800342E4 00000000 */  nop   
/* 034EE8 800342E8 10800032 */  beqz  $a0, .L800343B4
/* 034EEC 800342EC 00000000 */   nop   
/* 034EF0 800342F0 90490013 */  lbu   $t1, 0x13($v0)
/* 034EF4 800342F4 00000000 */  nop   
/* 034EF8 800342F8 2921003C */  slti  $at, $t1, 0x3c
/* 034EFC 800342FC 1020002D */  beqz  $at, .L800343B4
/* 034F00 80034300 00000000 */   nop   
/* 034F04 80034304 8C880040 */  lw    $t0, 0x40($a0)
/* 034F08 80034308 24050001 */  li    $a1, 1
/* 034F0C 8003430C 810A0054 */  lb    $t2, 0x54($t0)
/* 034F10 80034310 00801825 */  move  $v1, $a0
/* 034F14 80034314 14AA0027 */  bne   $a1, $t2, .L800343B4
/* 034F18 80034318 00000000 */   nop   
/* 034F1C 8003431C 8C820064 */  lw    $v0, 0x64($a0)
/* 034F20 80034320 2401FFFF */  li    $at, -1
/* 034F24 80034324 844B0000 */  lh    $t3, ($v0)
/* 034F28 80034328 00000000 */  nop   
/* 034F2C 8003432C 11610021 */  beq   $t3, $at, .L800343B4
/* 034F30 80034330 00000000 */   nop   
/* 034F34 80034334 860C0048 */  lh    $t4, 0x48($s0)
/* 034F38 80034338 2401006C */  li    $at, 108
/* 034F3C 8003433C 15810012 */  bne   $t4, $at, .L80034388
/* 034F40 80034340 240E0014 */   li    $t6, 20
/* 034F44 80034344 A0450187 */  sb    $a1, 0x187($v0)
/* 034F48 80034348 8E060014 */  lw    $a2, 0x14($s0)
/* 034F4C 8003434C C60E0010 */  lwc1  $f14, 0x10($s0)
/* 034F50 80034350 C60C000C */  lwc1  $f12, 0xc($s0)
/* 034F54 80034354 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 034F58 80034358 44813000 */  mtc1  $at, $f6
/* 034F5C 8003435C AE0E007C */  sw    $t6, 0x7c($s0)
/* 034F60 80034360 240D0011 */  li    $t5, 17
/* 034F64 80034364 AFAD0010 */  sw    $t5, 0x10($sp)
/* 034F68 80034368 AFA50018 */  sw    $a1, 0x18($sp)
/* 034F6C 8003436C 2407002C */  li    $a3, 44
/* 034F70 80034370 0C00FF11 */  jal   func_8003FC44
/* 034F74 80034374 E7A60014 */   swc1  $f6, 0x14($sp)
/* 034F78 80034378 0C003FEE */  jal   gParticlePtrList_addObject
/* 034F7C 8003437C 02002025 */   move  $a0, $s0
/* 034F80 80034380 1000000D */  b     .L800343B8
/* 034F84 80034384 86090048 */   lh    $t1, 0x48($s0)
.L80034388:
/* 034F88 80034388 8E0F007C */  lw    $t7, 0x7c($s0)
/* 034F8C 8003438C 2418003C */  li    $t8, 60
/* 034F90 80034390 19E00008 */  blez  $t7, .L800343B4
/* 034F94 80034394 2419FFC4 */   li    $t9, -60
/* 034F98 80034398 A4580204 */  sh    $t8, 0x204($v0)
/* 034F9C 8003439C AE19007C */  sw    $t9, 0x7c($s0)
/* 034FA0 800343A0 AE030078 */  sw    $v1, 0x78($s0)
/* 034FA4 800343A4 8FA50074 */  lw    $a1, 0x74($sp)
/* 034FA8 800343A8 2404024A */  li    $a0, 586
/* 034FAC 800343AC 0C000741 */  jal   play_sound_global
/* 034FB0 800343B0 24A5001C */   addiu $a1, $a1, 0x1c
.L800343B4:
/* 034FB4 800343B4 86090048 */  lh    $t1, 0x48($s0)
.L800343B8:
/* 034FB8 800343B8 2401006C */  li    $at, 108
/* 034FBC 800343BC 15210032 */  bne   $t1, $at, .L80034488
/* 034FC0 800343C0 24080001 */   li    $t0, 1
/* 034FC4 800343C4 AE080074 */  sw    $t0, 0x74($s0)
/* 034FC8 800343C8 8FA5008C */  lw    $a1, 0x8c($sp)
/* 034FCC 800343CC 0C02BF0F */  jal   func_800AFC3C
/* 034FD0 800343D0 02002025 */   move  $a0, $s0
/* 034FD4 800343D4 8E0A007C */  lw    $t2, 0x7c($s0)
/* 034FD8 800343D8 8FAB008C */  lw    $t3, 0x8c($sp)
/* 034FDC 800343DC 00000000 */  nop   
/* 034FE0 800343E0 014B6023 */  subu  $t4, $t2, $t3
/* 034FE4 800343E4 0581004E */  bgez  $t4, .L80034520
/* 034FE8 800343E8 AE0C007C */   sw    $t4, 0x7c($s0)
/* 034FEC 800343EC 860D004A */  lh    $t5, 0x4a($s0)
/* 034FF0 800343F0 2401012A */  li    $at, 298
/* 034FF4 800343F4 15A1000F */  bne   $t5, $at, .L80034434
/* 034FF8 800343F8 00000000 */   nop   
/* 034FFC 800343FC 0C003FEE */  jal   gParticlePtrList_addObject
/* 035000 80034400 02002025 */   move  $a0, $s0
/* 035004 80034404 C60C000C */  lwc1  $f12, 0xc($s0)
/* 035008 80034408 C60E0010 */  lwc1  $f14, 0x10($s0)
/* 03500C 8003440C 8E060014 */  lw    $a2, 0x14($s0)
/* 035010 80034410 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 035014 80034414 44814000 */  mtc1  $at, $f8
/* 035018 80034418 240F0011 */  li    $t7, 17
/* 03501C 8003441C 24180001 */  li    $t8, 1
/* 035020 80034420 AFB80018 */  sw    $t8, 0x18($sp)
/* 035024 80034424 AFAF0010 */  sw    $t7, 0x10($sp)
/* 035028 80034428 2407002C */  li    $a3, 44
/* 03502C 8003442C 0C00FF11 */  jal   func_8003FC44
/* 035030 80034430 E7A80014 */   swc1  $f8, 0x14($sp)
.L80034434:
/* 035034 80034434 3C01800E */  lui   $at, %hi(D_800E5FF0 + 4) # $at, 0x800e
/* 035038 80034438 C60A0008 */  lwc1  $f10, 8($s0)
/* 03503C 8003443C C4275FF0 */  lwc1  $f7, %lo(D_800E5FF0)($at)
/* 035040 80034440 C4265FF4 */  lwc1  $f6, %lo(D_800E5FF0 + 4)($at)
/* 035044 80034444 46005121 */  cvt.d.s $f4, $f10
/* 035048 80034448 46262202 */  mul.d $f8, $f4, $f6
/* 03504C 8003444C 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 035050 80034450 462042A0 */  cvt.s.d $f10, $f8
/* 035054 80034454 44804000 */  mtc1  $zero, $f8
/* 035058 80034458 E60A0008 */  swc1  $f10, 8($s0)
/* 03505C 8003445C C6040008 */  lwc1  $f4, 8($s0)
/* 035060 80034460 44814800 */  mtc1  $at, $f9
/* 035064 80034464 460021A1 */  cvt.d.s $f6, $f4
/* 035068 80034468 4628303C */  c.lt.d $f6, $f8
/* 03506C 8003446C 00000000 */  nop   
/* 035070 80034470 4500002C */  bc1f  .L80034524
/* 035074 80034474 8FBF002C */   lw    $ra, 0x2c($sp)
/* 035078 80034478 0C003FEE */  jal   gParticlePtrList_addObject
/* 03507C 8003447C 02002025 */   move  $a0, $s0
/* 035080 80034480 10000028 */  b     .L80034524
/* 035084 80034484 8FBF002C */   lw    $ra, 0x2c($sp)
.L80034488:
/* 035088 80034488 8E02007C */  lw    $v0, 0x7c($s0)
/* 03508C 8003448C 8FA8008C */  lw    $t0, 0x8c($sp)
/* 035090 80034490 0441000A */  bgez  $v0, .L800344BC
/* 035094 80034494 00485023 */   subu  $t2, $v0, $t0
/* 035098 80034498 8FB9008C */  lw    $t9, 0x8c($sp)
/* 03509C 8003449C 00000000 */  nop   
/* 0350A0 800344A0 00594821 */  addu  $t1, $v0, $t9
/* 0350A4 800344A4 AE09007C */  sw    $t1, 0x7c($s0)
/* 0350A8 800344A8 05200009 */  bltz  $t1, .L800344D0
/* 0350AC 800344AC 01201025 */   move  $v0, $t1
/* 0350B0 800344B0 AE00007C */  sw    $zero, 0x7c($s0)
/* 0350B4 800344B4 10000006 */  b     .L800344D0
/* 0350B8 800344B8 00001025 */   move  $v0, $zero
.L800344BC:
/* 0350BC 800344BC AE0A007C */  sw    $t2, 0x7c($s0)
/* 0350C0 800344C0 1D400003 */  bgtz  $t2, .L800344D0
/* 0350C4 800344C4 01401025 */   move  $v0, $t2
/* 0350C8 800344C8 AE00007C */  sw    $zero, 0x7c($s0)
/* 0350CC 800344CC 00001025 */  move  $v0, $zero
.L800344D0:
/* 0350D0 800344D0 14400014 */  bnez  $v0, .L80034524
/* 0350D4 800344D4 8FBF002C */   lw    $ra, 0x2c($sp)
/* 0350D8 800344D8 8FAB0074 */  lw    $t3, 0x74($sp)
/* 0350DC 800344DC 00000000 */  nop   
/* 0350E0 800344E0 8D64001C */  lw    $a0, 0x1c($t3)
/* 0350E4 800344E4 00000000 */  nop   
/* 0350E8 800344E8 10800003 */  beqz  $a0, .L800344F8
/* 0350EC 800344EC 00000000 */   nop   
/* 0350F0 800344F0 0C001223 */  jal   func_8000488C
/* 0350F4 800344F4 00000000 */   nop   
.L800344F8:
/* 0350F8 800344F8 8E05000C */  lw    $a1, 0xc($s0)
/* 0350FC 800344FC 8E060010 */  lw    $a2, 0x10($s0)
/* 035100 80034500 8E070014 */  lw    $a3, 0x14($s0)
/* 035104 80034504 240C0004 */  li    $t4, 4
/* 035108 80034508 AFAC0010 */  sw    $t4, 0x10($sp)
/* 03510C 8003450C AFA00014 */  sw    $zero, 0x14($sp)
/* 035110 80034510 0C002556 */  jal   func_80009558
/* 035114 80034514 24040155 */   li    $a0, 341
/* 035118 80034518 0C003FEE */  jal   gParticlePtrList_addObject
/* 03511C 8003451C 02002025 */   move  $a0, $s0
.L80034520:
/* 035120 80034520 8FBF002C */  lw    $ra, 0x2c($sp)
.L80034524:
/* 035124 80034524 8FB00028 */  lw    $s0, 0x28($sp)
/* 035128 80034528 03E00008 */  jr    $ra
/* 03512C 8003452C 27BD0088 */   addiu $sp, $sp, 0x88

