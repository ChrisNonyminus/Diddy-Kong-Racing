glabel func_8003D058
/* 03DC58 8003D058 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 03DC5C 8003D05C AFBF0014 */  sw    $ra, 0x14($sp)
/* 03DC60 8003D060 AFA5004C */  sw    $a1, 0x4c($sp)
/* 03DC64 8003D064 00803025 */  move  $a2, $a0
/* 03DC68 8003D068 8C840078 */  lw    $a0, 0x78($a0)
/* 03DC6C 8003D06C 0C006EB2 */  jal   getPlayerStruct
/* 03DC70 8003D070 AFA60048 */   sw    $a2, 0x48($sp)
/* 03DC74 8003D074 8FA60048 */  lw    $a2, 0x48($sp)
/* 03DC78 8003D078 10400088 */  beqz  $v0, .L8003D29C
/* 03DC7C 8003D07C 00401825 */   move  $v1, $v0
/* 03DC80 8003D080 8C470064 */  lw    $a3, 0x64($v0)
/* 03DC84 8003D084 00002025 */  move  $a0, $zero
/* 03DC88 8003D088 80EE0185 */  lb    $t6, 0x185($a3)
/* 03DC8C 8003D08C 00000000 */  nop   
/* 03DC90 8003D090 11C0001C */  beqz  $t6, .L8003D104
/* 03DC94 8003D094 00000000 */   nop   
/* 03DC98 8003D098 8CCF007C */  lw    $t7, 0x7c($a2)
/* 03DC9C 8003D09C 00000000 */  nop   
/* 03DCA0 8003D0A0 15E00018 */  bnez  $t7, .L8003D104
/* 03DCA4 8003D0A4 00000000 */   nop   
/* 03DCA8 8003D0A8 C4C4000C */  lwc1  $f4, 0xc($a2)
/* 03DCAC 8003D0AC C446000C */  lwc1  $f6, 0xc($v0)
/* 03DCB0 8003D0B0 C4C80010 */  lwc1  $f8, 0x10($a2)
/* 03DCB4 8003D0B4 46062001 */  sub.s $f0, $f4, $f6
/* 03DCB8 8003D0B8 C44A0010 */  lwc1  $f10, 0x10($v0)
/* 03DCBC 8003D0BC 46000102 */  mul.s $f4, $f0, $f0
/* 03DCC0 8003D0C0 460A4081 */  sub.s $f2, $f8, $f10
/* 03DCC4 8003D0C4 C4D00014 */  lwc1  $f16, 0x14($a2)
/* 03DCC8 8003D0C8 C4520014 */  lwc1  $f18, 0x14($v0)
/* 03DCCC 8003D0CC 46021182 */  mul.s $f6, $f2, $f2
/* 03DCD0 8003D0D0 46128301 */  sub.s $f12, $f16, $f18
/* 03DCD4 8003D0D4 3C01800E */  lui   $at, %hi(D_800E6180) # $at, 0x800e
/* 03DCD8 8003D0D8 C4306180 */  lwc1  $f16, %lo(D_800E6180)($at)
/* 03DCDC 8003D0DC 460C6282 */  mul.s $f10, $f12, $f12
/* 03DCE0 8003D0E0 46062200 */  add.s $f8, $f4, $f6
/* 03DCE4 8003D0E4 24180008 */  li    $t8, 8
/* 03DCE8 8003D0E8 460A4000 */  add.s $f0, $f8, $f10
/* 03DCEC 8003D0EC 4610003C */  c.lt.s $f0, $f16
/* 03DCF0 8003D0F0 00000000 */  nop   
/* 03DCF4 8003D0F4 45000003 */  bc1f  .L8003D104
/* 03DCF8 8003D0F8 00000000 */   nop   
/* 03DCFC 8003D0FC ACD8007C */  sw    $t8, 0x7c($a2)
/* 03DD00 8003D100 24040001 */  li    $a0, 1
.L8003D104:
/* 03DD04 8003D104 8CC2007C */  lw    $v0, 0x7c($a2)
/* 03DD08 8003D108 8FB9004C */  lw    $t9, 0x4c($sp)
/* 03DD0C 8003D10C 18400010 */  blez  $v0, .L8003D150
/* 03DD10 8003D110 00594023 */   subu  $t0, $v0, $t9
/* 03DD14 8003D114 1D00000E */  bgtz  $t0, .L8003D150
/* 03DD18 8003D118 ACC8007C */   sw    $t0, 0x7c($a2)
/* 03DD1C 8003D11C 80E20185 */  lb    $v0, 0x185($a3)
/* 03DD20 8003D120 240C0008 */  li    $t4, 8
/* 03DD24 8003D124 18400009 */  blez  $v0, .L8003D14C
/* 03DD28 8003D128 244AFFFF */   addiu $t2, $v0, -1
/* 03DD2C 8003D12C A0EA0185 */  sb    $t2, 0x185($a3)
/* 03DD30 8003D130 80EB0185 */  lb    $t3, 0x185($a3)
/* 03DD34 8003D134 00000000 */  nop   
/* 03DD38 8003D138 11600002 */  beqz  $t3, .L8003D144
/* 03DD3C 8003D13C 00000000 */   nop   
/* 03DD40 8003D140 24040001 */  li    $a0, 1
.L8003D144:
/* 03DD44 8003D144 10000002 */  b     .L8003D150
/* 03DD48 8003D148 ACCC007C */   sw    $t4, 0x7c($a2)
.L8003D14C:
/* 03DD4C 8003D14C ACC0007C */  sw    $zero, 0x7c($a2)
.L8003D150:
/* 03DD50 8003D150 10800053 */  beqz  $a0, .L8003D2A0
/* 03DD54 8003D154 8FBF0014 */   lw    $ra, 0x14($sp)
/* 03DD58 8003D158 444DF800 */  cfc1  $t5, $31
/* 03DD5C 8003D15C C472000C */  lwc1  $f18, 0xc($v1)
/* 03DD60 8003D160 35A10003 */  ori   $at, $t5, 3
/* 03DD64 8003D164 38210002 */  xori  $at, $at, 2
/* 03DD68 8003D168 44C1F800 */  ctc1  $at, $31
/* 03DD6C 8003D16C 240C0008 */  li    $t4, 8
/* 03DD70 8003D170 46009124 */  cvt.w.s $f4, $f18
/* 03DD74 8003D174 27A40024 */  addiu $a0, $sp, 0x24
/* 03DD78 8003D178 44CDF800 */  ctc1  $t5, $31
/* 03DD7C 8003D17C 440E2000 */  mfc1  $t6, $f4
/* 03DD80 8003D180 240D0061 */  li    $t5, 97
/* 03DD84 8003D184 444FF800 */  cfc1  $t7, $31
/* 03DD88 8003D188 A7AE0026 */  sh    $t6, 0x26($sp)
/* 03DD8C 8003D18C 35E10003 */  ori   $at, $t7, 3
/* 03DD90 8003D190 38210002 */  xori  $at, $at, 2
/* 03DD94 8003D194 44C1F800 */  ctc1  $at, $31
/* 03DD98 8003D198 C4660010 */  lwc1  $f6, 0x10($v1)
/* 03DD9C 8003D19C 24050001 */  li    $a1, 1
/* 03DDA0 8003D1A0 46003224 */  cvt.w.s $f8, $f6
/* 03DDA4 8003D1A4 44CFF800 */  ctc1  $t7, $31
/* 03DDA8 8003D1A8 44084000 */  mfc1  $t0, $f8
/* 03DDAC 8003D1AC 00000000 */  nop   
/* 03DDB0 8003D1B0 444AF800 */  cfc1  $t2, $31
/* 03DDB4 8003D1B4 2509000A */  addiu $t1, $t0, 0xa
/* 03DDB8 8003D1B8 A7A90028 */  sh    $t1, 0x28($sp)
/* 03DDBC 8003D1BC 35410003 */  ori   $at, $t2, 3
/* 03DDC0 8003D1C0 C46A0014 */  lwc1  $f10, 0x14($v1)
/* 03DDC4 8003D1C4 38210002 */  xori  $at, $at, 2
/* 03DDC8 8003D1C8 44C1F800 */  ctc1  $at, $31
/* 03DDCC 8003D1CC A3AC0025 */  sb    $t4, 0x25($sp)
/* 03DDD0 8003D1D0 46005424 */  cvt.w.s $f16, $f10
/* 03DDD4 8003D1D4 A3AD0024 */  sb    $t5, 0x24($sp)
/* 03DDD8 8003D1D8 440B8000 */  mfc1  $t3, $f16
/* 03DDDC 8003D1DC 44CAF800 */  ctc1  $t2, $31
/* 03DDE0 8003D1E0 AFA7003C */  sw    $a3, 0x3c($sp)
/* 03DDE4 8003D1E4 AFA60048 */  sw    $a2, 0x48($sp)
/* 03DDE8 8003D1E8 AFA30044 */  sw    $v1, 0x44($sp)
/* 03DDEC 8003D1EC 0C003A95 */  jal   func_8000EA54
/* 03DDF0 8003D1F0 A7AB002A */   sh    $t3, 0x2a($sp)
/* 03DDF4 8003D1F4 8FA30044 */  lw    $v1, 0x44($sp)
/* 03DDF8 8003D1F8 8FA60048 */  lw    $a2, 0x48($sp)
/* 03DDFC 8003D1FC 8FA7003C */  lw    $a3, 0x3c($sp)
/* 03DE00 8003D200 10400026 */  beqz  $v0, .L8003D29C
/* 03DE04 8003D204 3C014120 */   li    $at, 0x41200000 # 10.000000
/* 03DE08 8003D208 44811000 */  mtc1  $at, $f2
/* 03DE0C 8003D20C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 03DE10 8003D210 44819000 */  mtc1  $at, $f18
/* 03DE14 8003D214 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 03DE18 8003D218 46121102 */  mul.s $f4, $f2, $f18
/* 03DE1C 8003D21C 44814800 */  mtc1  $at, $f9
/* 03DE20 8003D220 44804000 */  mtc1  $zero, $f8
/* 03DE24 8003D224 AC40003C */  sw    $zero, 0x3c($v0)
/* 03DE28 8003D228 460021A1 */  cvt.d.s $f6, $f4
/* 03DE2C 8003D22C 00000000 */  nop   
/* 03DE30 8003D230 46283283 */  div.d $f10, $f6, $f8
/* 03DE34 8003D234 E4420020 */  swc1  $f2, 0x20($v0)
/* 03DE38 8003D238 C472000C */  lwc1  $f18, 0xc($v1)
/* 03DE3C 8003D23C C4D0000C */  lwc1  $f16, 0xc($a2)
/* 03DE40 8003D240 00000000 */  nop   
/* 03DE44 8003D244 46128101 */  sub.s $f4, $f16, $f18
/* 03DE48 8003D248 46205020 */  cvt.s.d $f0, $f10
/* 03DE4C 8003D24C 00000000 */  nop   
/* 03DE50 8003D250 46002183 */  div.s $f6, $f4, $f0
/* 03DE54 8003D254 E446001C */  swc1  $f6, 0x1c($v0)
/* 03DE58 8003D258 C46A0014 */  lwc1  $f10, 0x14($v1)
/* 03DE5C 8003D25C C4C80014 */  lwc1  $f8, 0x14($a2)
/* 03DE60 8003D260 AC47007C */  sw    $a3, 0x7c($v0)
/* 03DE64 8003D264 460A4401 */  sub.s $f16, $f8, $f10
/* 03DE68 8003D268 00000000 */  nop   
/* 03DE6C 8003D26C 46008483 */  div.s $f18, $f16, $f0
/* 03DE70 8003D270 444EF800 */  cfc1  $t6, $31
/* 03DE74 8003D274 E4520024 */  swc1  $f18, 0x24($v0)
/* 03DE78 8003D278 35C10003 */  ori   $at, $t6, 3
/* 03DE7C 8003D27C 38210002 */  xori  $at, $at, 2
/* 03DE80 8003D280 44C1F800 */  ctc1  $at, $31
/* 03DE84 8003D284 00000000 */  nop   
/* 03DE88 8003D288 46000124 */  cvt.w.s $f4, $f0
/* 03DE8C 8003D28C 440F2000 */  mfc1  $t7, $f4
/* 03DE90 8003D290 44CEF800 */  ctc1  $t6, $31
/* 03DE94 8003D294 AC4F0078 */  sw    $t7, 0x78($v0)
/* 03DE98 8003D298 00000000 */  nop   
.L8003D29C:
/* 03DE9C 8003D29C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8003D2A0:
/* 03DEA0 8003D2A0 27BD0048 */  addiu $sp, $sp, 0x48
/* 03DEA4 8003D2A4 03E00008 */  jr    $ra
/* 03DEA8 8003D2A8 00000000 */   nop   

