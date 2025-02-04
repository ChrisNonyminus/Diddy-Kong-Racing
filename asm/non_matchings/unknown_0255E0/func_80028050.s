glabel func_80028050
/* 028C50 80028050 27BDFEA8 */  addiu $sp, $sp, -0x158
/* 028C54 80028054 AFB10018 */  sw    $s1, 0x18($sp)
/* 028C58 80028058 AFB00014 */  sw    $s0, 0x14($sp)
/* 028C5C 8002805C 3C118012 */  lui   $s1, %hi(gSceneCurrVertexList) # $s1, 0x8012
/* 028C60 80028060 3C108012 */  lui   $s0, %hi(gSceneCurrTriList) # $s0, 0x8012
/* 028C64 80028064 AFBF0024 */  sw    $ra, 0x24($sp)
/* 028C68 80028068 8E31B0A8 */  lw    $s1, %lo(gSceneCurrVertexList)($s1)
/* 028C6C 8002806C 8E10B0AC */  lw    $s0, %lo(gSceneCurrTriList)($s0)
/* 028C70 80028070 AFB30020 */  sw    $s3, 0x20($sp)
/* 028C74 80028074 0C01A748 */  jal   func_80069D20
/* 028C78 80028078 AFB2001C */   sw    $s2, 0x1c($sp)
/* 028C7C 8002807C 3C0E800E */  lui   $t6, %hi(gCurrentLevelHeader2) # $t6, 0x800e
/* 028C80 80028080 8DCEC91C */  lw    $t6, %lo(gCurrentLevelHeader2)($t6)
/* 028C84 80028084 00409025 */  move  $s2, $v0
/* 028C88 80028088 8DC300A4 */  lw    $v1, 0xa4($t6)
/* 028C8C 8002808C 00000000 */  nop   
/* 028C90 80028090 90780001 */  lbu   $t8, 1($v1)
/* 028C94 80028094 90730000 */  lbu   $s3, ($v1)
/* 028C98 80028098 0018C940 */  sll   $t9, $t8, 5
/* 028C9C 8002809C 272CFFFF */  addiu $t4, $t9, -1
/* 028CA0 800280A0 AFAC014C */  sw    $t4, 0x14c($sp)
/* 028CA4 800280A4 84440000 */  lh    $a0, ($v0)
/* 028CA8 800280A8 00137940 */  sll   $t7, $s3, 5
/* 028CAC 800280AC 00042023 */  negu  $a0, $a0
/* 028CB0 800280B0 00046C00 */  sll   $t5, $a0, 0x10
/* 028CB4 800280B4 25F3FFFF */  addiu $s3, $t7, -1
/* 028CB8 800280B8 000D2403 */  sra   $a0, $t5, 0x10
/* 028CBC 800280BC 0C01C1F1 */  jal   cosine_s
/* 028CC0 800280C0 AFA30074 */   sw    $v1, 0x74($sp)
/* 028CC4 800280C4 E7A0010C */  swc1  $f0, 0x10c($sp)
/* 028CC8 800280C8 86440000 */  lh    $a0, ($s2)
/* 028CCC 800280CC 00000000 */  nop   
/* 028CD0 800280D0 00042023 */  negu  $a0, $a0
/* 028CD4 800280D4 00047C00 */  sll   $t7, $a0, 0x10
/* 028CD8 800280D8 0C01C1FE */  jal   sine_s
/* 028CDC 800280DC 000F2403 */   sra   $a0, $t7, 0x10
/* 028CE0 800280E0 3C0144A0 */  li    $at, 0x44A00000 # 1280.000000
/* 028CE4 800280E4 44812000 */  mtc1  $at, $f4
/* 028CE8 800280E8 44814000 */  mtc1  $at, $f8
/* 028CEC 800280EC 46040302 */  mul.s $f12, $f0, $f4
/* 028CF0 800280F0 C7A6010C */  lwc1  $f6, 0x10c($sp)
/* 028CF4 800280F4 8FA70074 */  lw    $a3, 0x74($sp)
/* 028CF8 800280F8 3C04800E */  lui   $a0, %hi(gCurrentLevelHeader2) # $a0, 0x800e
/* 028CFC 800280FC 46083082 */  mul.s $f2, $f6, $f8
/* 028D00 80028100 46006487 */  neg.s $f18, $f12
/* 028D04 80028104 8C84C91C */  lw    $a0, %lo(gCurrentLevelHeader2)($a0)
/* 028D08 80028108 46029200 */  add.s $f8, $f18, $f2
/* 028D0C 8002810C 46029281 */  sub.s $f10, $f18, $f2
/* 028D10 80028110 E7A80030 */  swc1  $f8, 0x30($sp)
/* 028D14 80028114 46026201 */  sub.s $f8, $f12, $f2
/* 028D18 80028118 E7AA0034 */  swc1  $f10, 0x34($sp)
/* 028D1C 8002811C C7A40034 */  lwc1  $f4, 0x34($sp)
/* 028D20 80028120 E7A8002C */  swc1  $f8, 0x2c($sp)
/* 028D24 80028124 C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 028D28 80028128 E7A400DC */  swc1  $f4, 0xdc($sp)
/* 028D2C 8002812C E7A400BC */  swc1  $f4, 0xbc($sp)
/* 028D30 80028130 C7AA0030 */  lwc1  $f10, 0x30($sp)
/* 028D34 80028134 46026100 */  add.s $f4, $f12, $f2
/* 028D38 80028138 E7A800E0 */  swc1  $f8, 0xe0($sp)
/* 028D3C 8002813C E7A800C0 */  swc1  $f8, 0xc0($sp)
/* 028D40 80028140 44804000 */  mtc1  $zero, $f8
/* 028D44 80028144 E7A40034 */  swc1  $f4, 0x34($sp)
/* 028D48 80028148 C7A40034 */  lwc1  $f4, 0x34($sp)
/* 028D4C 8002814C E7AA00B8 */  swc1  $f10, 0xb8($sp)
/* 028D50 80028150 E7AA00E8 */  swc1  $f10, 0xe8($sp)
/* 028D54 80028154 E7A800EC */  swc1  $f8, 0xec($sp)
/* 028D58 80028158 44805000 */  mtc1  $zero, $f10
/* 028D5C 8002815C 460C6200 */  add.s $f8, $f12, $f12
/* 028D60 80028160 E7A400E4 */  swc1  $f4, 0xe4($sp)
/* 028D64 80028164 46021400 */  add.s $f16, $f2, $f2
/* 028D68 80028168 E7A80030 */  swc1  $f8, 0x30($sp)
/* 028D6C 8002816C E7A400C4 */  swc1  $f4, 0xc4($sp)
/* 028D70 80028170 E7AA00C8 */  swc1  $f10, 0xc8($sp)
/* 028D74 80028174 46109101 */  sub.s $f4, $f18, $f16
/* 028D78 80028178 C7AA0030 */  lwc1  $f10, 0x30($sp)
/* 028D7C 8002817C E7A400F0 */  swc1  $f4, 0xf0($sp)
/* 028D80 80028180 460A1201 */  sub.s $f8, $f2, $f10
/* 028D84 80028184 46005107 */  neg.s $f4, $f10
/* 028D88 80028188 E7A800CC */  swc1  $f8, 0xcc($sp)
/* 028D8C 8002818C 46022201 */  sub.s $f8, $f4, $f2
/* 028D90 80028190 E7A4002C */  swc1  $f4, 0x2c($sp)
/* 028D94 80028194 46106281 */  sub.s $f10, $f12, $f16
/* 028D98 80028198 C7A40030 */  lwc1  $f4, 0x30($sp)
/* 028D9C 8002819C E7A800D0 */  swc1  $f8, 0xd0($sp)
/* 028DA0 800281A0 46022201 */  sub.s $f8, $f4, $f2
/* 028DA4 800281A4 E7AA00F4 */  swc1  $f10, 0xf4($sp)
/* 028DA8 800281A8 46106280 */  add.s $f10, $f12, $f16
/* 028DAC 800281AC C7A40030 */  lwc1  $f4, 0x30($sp)
/* 028DB0 800281B0 E7AA00F8 */  swc1  $f10, 0xf8($sp)
/* 028DB4 800281B4 E7A800D4 */  swc1  $f8, 0xd4($sp)
/* 028DB8 800281B8 46109280 */  add.s $f10, $f18, $f16
/* 028DBC 800281BC 46022200 */  add.s $f8, $f4, $f2
/* 028DC0 800281C0 E7AA00FC */  swc1  $f10, 0xfc($sp)
/* 028DC4 800281C4 E7A800D8 */  swc1  $f8, 0xd8($sp)
/* 028DC8 800281C8 90F90000 */  lbu   $t9, ($a3)
/* 028DCC 800281CC 908D00A0 */  lbu   $t5, 0xa0($a0)
/* 028DD0 800281D0 00196100 */  sll   $t4, $t9, 4
/* 028DD4 800281D4 018D0019 */  multu $t4, $t5
/* 028DD8 800281D8 44815000 */  mtc1  $at, $f10
/* 028DDC 800281DC 3C013E80 */  li    $at, 0x3E800000 # 0.250000
/* 028DE0 800281E0 44812000 */  mtc1  $at, $f4
/* 028DE4 800281E4 90EE0001 */  lbu   $t6, 1($a3)
/* 028DE8 800281E8 46045202 */  mul.s $f8, $f10, $f4
/* 028DEC 800281EC 909800A1 */  lbu   $t8, 0xa1($a0)
/* 028DF0 800281F0 000E7900 */  sll   $t7, $t6, 4
/* 028DF4 800281F4 E7A8003C */  swc1  $f8, 0x3c($sp)
/* 028DF8 800281F8 00002812 */  mflo  $a1
/* 028DFC 800281FC 44855000 */  mtc1  $a1, $f10
/* 028E00 80028200 00000000 */  nop   
/* 028E04 80028204 46805120 */  cvt.s.w $f4, $f10
/* 028E08 80028208 01F80019 */  multu $t7, $t8
/* 028E0C 8002820C E7A40038 */  swc1  $f4, 0x38($sp)
/* 028E10 80028210 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* 028E14 80028214 848D00A8 */  lh    $t5, 0xa8($a0)
/* 028E18 80028218 460A4103 */  div.s $f4, $f8, $f10
/* 028E1C 8002821C C64A000C */  lwc1  $f10, 0xc($s2)
/* 028E20 80028220 000D7103 */  sra   $t6, $t5, 4
/* 028E24 80028224 00003012 */  mflo  $a2
/* 028E28 80028228 46045282 */  mul.s $f10, $f10, $f4
/* 028E2C 8002822C 4459F800 */  cfc1  $t9, $31
/* 028E30 80028230 00000000 */  nop   
/* 028E34 80028234 37210003 */  ori   $at, $t9, 3
/* 028E38 80028238 38210002 */  xori  $at, $at, 2
/* 028E3C 8002823C 44C1F800 */  ctc1  $at, $31
/* 028E40 80028240 00000000 */  nop   
/* 028E44 80028244 46005124 */  cvt.w.s $f4, $f10
/* 028E48 80028248 44865000 */  mtc1  $a2, $f10
/* 028E4C 8002824C 44D9F800 */  ctc1  $t9, $31
/* 028E50 80028250 440C2000 */  mfc1  $t4, $f4
/* 028E54 80028254 46805120 */  cvt.s.w $f4, $f10
/* 028E58 80028258 018E7821 */  addu  $t7, $t4, $t6
/* 028E5C 8002825C 01F31024 */  and   $v0, $t7, $s3
/* 028E60 80028260 E7A40048 */  swc1  $f4, 0x48($sp)
/* 028E64 80028264 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* 028E68 80028268 848D00AA */  lh    $t5, 0xaa($a0)
/* 028E6C 8002826C 460A4103 */  div.s $f4, $f8, $f10
/* 028E70 80028270 C6480014 */  lwc1  $f8, 0x14($s2)
/* 028E74 80028274 8FAF014C */  lw    $t7, 0x14c($sp)
/* 028E78 80028278 000D6103 */  sra   $t4, $t5, 4
/* 028E7C 8002827C A7A20130 */  sh    $v0, 0x130($sp)
/* 028E80 80028280 46044282 */  mul.s $f10, $f8, $f4
/* 028E84 80028284 C7A40038 */  lwc1  $f4, 0x38($sp)
/* 028E88 80028288 4458F800 */  cfc1  $t8, $31
/* 028E8C 8002828C 00000000 */  nop   
/* 028E90 80028290 37010003 */  ori   $at, $t8, 3
/* 028E94 80028294 38210002 */  xori  $at, $at, 2
/* 028E98 80028298 44C1F800 */  ctc1  $at, $31
/* 028E9C 8002829C 37010003 */  ori   $at, $t8, 3
/* 028EA0 800282A0 46005224 */  cvt.w.s $f8, $f10
/* 028EA4 800282A4 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* 028EA8 800282A8 44D8F800 */  ctc1  $t8, $31
/* 028EAC 800282AC 44194000 */  mfc1  $t9, $f8
/* 028EB0 800282B0 46002382 */  mul.s $f14, $f4, $f0
/* 028EB4 800282B4 38210002 */  xori  $at, $at, 2
/* 028EB8 800282B8 032C7021 */  addu  $t6, $t9, $t4
/* 028EBC 800282BC 01CF1824 */  and   $v1, $t6, $t7
/* 028EC0 800282C0 46065002 */  mul.s $f0, $f10, $f6
/* 028EC4 800282C4 46007407 */  neg.s $f16, $f14
/* 028EC8 800282C8 E7AE00B4 */  swc1  $f14, 0xb4($sp)
/* 028ECC 800282CC E7AE00AC */  swc1  $f14, 0xac($sp)
/* 028ED0 800282D0 46008201 */  sub.s $f8, $f16, $f0
/* 028ED4 800282D4 A7A3011C */  sh    $v1, 0x11c($sp)
/* 028ED8 800282D8 44C1F800 */  ctc1  $at, $31
/* 028EDC 800282DC 00000000 */  nop   
/* 028EE0 800282E0 46004124 */  cvt.w.s $f4, $f8
/* 028EE4 800282E4 44D8F800 */  ctc1  $t8, $31
/* 028EE8 800282E8 440C2000 */  mfc1  $t4, $f4
/* 028EEC 800282EC 460E0281 */  sub.s $f10, $f0, $f14
/* 028EF0 800282F0 01827021 */  addu  $t6, $t4, $v0
/* 028EF4 800282F4 444FF800 */  cfc1  $t7, $31
/* 028EF8 800282F8 A7AE0128 */  sh    $t6, 0x128($sp)
/* 028EFC 800282FC 35E10003 */  ori   $at, $t7, 3
/* 028F00 80028300 38210002 */  xori  $at, $at, 2
/* 028F04 80028304 44C1F800 */  ctc1  $at, $31
/* 028F08 80028308 00000000 */  nop   
/* 028F0C 8002830C 460051A4 */  cvt.w.s $f6, $f10
/* 028F10 80028310 44CFF800 */  ctc1  $t7, $31
/* 028F14 80028314 44043000 */  mfc1  $a0, $f6
/* 028F18 80028318 46007201 */  sub.s $f8, $f14, $f0
/* 028F1C 8002831C 0083C821 */  addu  $t9, $a0, $v1
/* 028F20 80028320 444CF800 */  cfc1  $t4, $31
/* 028F24 80028324 A7B90114 */  sh    $t9, 0x114($sp)
/* 028F28 80028328 35810003 */  ori   $at, $t4, 3
/* 028F2C 8002832C 38210002 */  xori  $at, $at, 2
/* 028F30 80028330 44C1F800 */  ctc1  $at, $31
/* 028F34 80028334 00000000 */  nop   
/* 028F38 80028338 46004124 */  cvt.w.s $f4, $f8
/* 028F3C 8002833C 44CCF800 */  ctc1  $t4, $31
/* 028F40 80028340 44182000 */  mfc1  $t8, $f4
/* 028F44 80028344 46008281 */  sub.s $f10, $f16, $f0
/* 028F48 80028348 03026821 */  addu  $t5, $t8, $v0
/* 028F4C 8002834C 4459F800 */  cfc1  $t9, $31
/* 028F50 80028350 A7AD012A */  sh    $t5, 0x12a($sp)
/* 028F54 80028354 37210003 */  ori   $at, $t9, 3
/* 028F58 80028358 38210002 */  xori  $at, $at, 2
/* 028F5C 8002835C 44C1F800 */  ctc1  $at, $31
/* 028F60 80028360 00000000 */  nop   
/* 028F64 80028364 460051A4 */  cvt.w.s $f6, $f10
/* 028F68 80028368 44D9F800 */  ctc1  $t9, $31
/* 028F6C 8002836C 440F3000 */  mfc1  $t7, $f6
/* 028F70 80028370 46007200 */  add.s $f8, $f14, $f0
/* 028F74 80028374 01E3C021 */  addu  $t8, $t7, $v1
/* 028F78 80028378 444DF800 */  cfc1  $t5, $31
/* 028F7C 8002837C A7B80116 */  sh    $t8, 0x116($sp)
/* 028F80 80028380 35A10003 */  ori   $at, $t5, 3
/* 028F84 80028384 38210002 */  xori  $at, $at, 2
/* 028F88 80028388 44C1F800 */  ctc1  $at, $31
/* 028F8C 8002838C 00000000 */  nop   
/* 028F90 80028390 46004124 */  cvt.w.s $f4, $f8
/* 028F94 80028394 44CDF800 */  ctc1  $t5, $31
/* 028F98 80028398 44052000 */  mfc1  $a1, $f4
/* 028F9C 8002839C 46007281 */  sub.s $f10, $f14, $f0
/* 028FA0 800283A0 00A27021 */  addu  $t6, $a1, $v0
/* 028FA4 800283A4 444FF800 */  cfc1  $t7, $31
/* 028FA8 800283A8 A7AE012C */  sh    $t6, 0x12c($sp)
/* 028FAC 800283AC 35E10003 */  ori   $at, $t7, 3
/* 028FB0 800283B0 38210002 */  xori  $at, $at, 2
/* 028FB4 800283B4 44C1F800 */  ctc1  $at, $31
/* 028FB8 800283B8 00827021 */  addu  $t6, $a0, $v0
/* 028FBC 800283BC 460051A4 */  cvt.w.s $f6, $f10
/* 028FC0 800283C0 A7AE012E */  sh    $t6, 0x12e($sp)
/* 028FC4 800283C4 44CFF800 */  ctc1  $t7, $31
/* 028FC8 800283C8 00A37821 */  addu  $t7, $a1, $v1
/* 028FCC 800283CC 46000300 */  add.s $f12, $f0, $f0
/* 028FD0 800283D0 A7AF011A */  sh    $t7, 0x11a($sp)
/* 028FD4 800283D4 460C8201 */  sub.s $f8, $f16, $f12
/* 028FD8 800283D8 44193000 */  mfc1  $t9, $f6
/* 028FDC 800283DC 4458F800 */  cfc1  $t8, $31
/* 028FE0 800283E0 03236021 */  addu  $t4, $t9, $v1
/* 028FE4 800283E4 37010003 */  ori   $at, $t8, 3
/* 028FE8 800283E8 38210002 */  xori  $at, $at, 2
/* 028FEC 800283EC 44C1F800 */  ctc1  $at, $31
/* 028FF0 800283F0 A7AC0118 */  sh    $t4, 0x118($sp)
/* 028FF4 800283F4 46004124 */  cvt.w.s $f4, $f8
/* 028FF8 800283F8 44D8F800 */  ctc1  $t8, $31
/* 028FFC 800283FC 440C2000 */  mfc1  $t4, $f4
/* 029000 80028400 460E7080 */  add.s $f2, $f14, $f14
/* 029004 80028404 01827021 */  addu  $t6, $t4, $v0
/* 029008 80028408 46020281 */  sub.s $f10, $f0, $f2
/* 02900C 8002840C A7AE0132 */  sh    $t6, 0x132($sp)
/* 029010 80028410 444FF800 */  cfc1  $t7, $31
/* 029014 80028414 00000000 */  nop   
/* 029018 80028418 35E10003 */  ori   $at, $t7, 3
/* 02901C 8002841C 38210002 */  xori  $at, $at, 2
/* 029020 80028420 44C1F800 */  ctc1  $at, $31
/* 029024 80028424 00000000 */  nop   
/* 029028 80028428 460051A4 */  cvt.w.s $f6, $f10
/* 02902C 8002842C 44CFF800 */  ctc1  $t7, $31
/* 029030 80028430 44193000 */  mfc1  $t9, $f6
/* 029034 80028434 460C7201 */  sub.s $f8, $f14, $f12
/* 029038 80028438 03236021 */  addu  $t4, $t9, $v1
/* 02903C 8002843C 444EF800 */  cfc1  $t6, $31
/* 029040 80028440 A7AC011E */  sh    $t4, 0x11e($sp)
/* 029044 80028444 35C10003 */  ori   $at, $t6, 3
/* 029048 80028448 38210002 */  xori  $at, $at, 2
/* 02904C 8002844C 44C1F800 */  ctc1  $at, $31
/* 029050 80028450 00000000 */  nop   
/* 029054 80028454 46004124 */  cvt.w.s $f4, $f8
/* 029058 80028458 44CEF800 */  ctc1  $t6, $31
/* 02905C 8002845C 440D2000 */  mfc1  $t5, $f4
/* 029060 80028460 46001287 */  neg.s $f10, $f2
/* 029064 80028464 46005181 */  sub.s $f6, $f10, $f0
/* 029068 80028468 01A2C821 */  addu  $t9, $t5, $v0
/* 02906C 8002846C 444CF800 */  cfc1  $t4, $31
/* 029070 80028470 A7B90134 */  sh    $t9, 0x134($sp)
/* 029074 80028474 35810003 */  ori   $at, $t4, 3
/* 029078 80028478 38210002 */  xori  $at, $at, 2
/* 02907C 8002847C 44C1F800 */  ctc1  $at, $31
/* 029080 80028480 00000000 */  nop   
/* 029084 80028484 46003224 */  cvt.w.s $f8, $f6
/* 029088 80028488 44CCF800 */  ctc1  $t4, $31
/* 02908C 8002848C 00000000 */  nop   
/* 029090 80028490 00000000 */  nop   
/* 029094 80028494 C7AE00B4 */  lwc1  $f14, 0xb4($sp)
/* 029098 80028498 C7B000AC */  lwc1  $f16, 0xac($sp)
/* 02909C 8002849C 460C7100 */  add.s $f4, $f14, $f12
/* 0290A0 800284A0 44184000 */  mfc1  $t8, $f8
/* 0290A4 800284A4 4459F800 */  cfc1  $t9, $31
/* 0290A8 800284A8 03036821 */  addu  $t5, $t8, $v1
/* 0290AC 800284AC 37210003 */  ori   $at, $t9, 3
/* 0290B0 800284B0 38210002 */  xori  $at, $at, 2
/* 0290B4 800284B4 44C1F800 */  ctc1  $at, $31
/* 0290B8 800284B8 A7AD0120 */  sh    $t5, 0x120($sp)
/* 0290BC 800284BC 460022A4 */  cvt.w.s $f10, $f4
/* 0290C0 800284C0 3C138012 */  lui   $s3, %hi(gSceneCurrDisplayList) # $s3, 0x8012
/* 0290C4 800284C4 44D9F800 */  ctc1  $t9, $31
/* 0290C8 800284C8 440F5000 */  mfc1  $t7, $f10
/* 0290CC 800284CC 46108080 */  add.s $f2, $f16, $f16
/* 0290D0 800284D0 01E2C021 */  addu  $t8, $t7, $v0
/* 0290D4 800284D4 46001181 */  sub.s $f6, $f2, $f0
/* 0290D8 800284D8 A7B80136 */  sh    $t8, 0x136($sp)
/* 0290DC 800284DC 444DF800 */  cfc1  $t5, $31
/* 0290E0 800284E0 2673B0A0 */  addiu $s3, %lo(gSceneCurrDisplayList) # addiu $s3, $s3, -0x4f60
/* 0290E4 800284E4 35A10003 */  ori   $at, $t5, 3
/* 0290E8 800284E8 38210002 */  xori  $at, $at, 2
/* 0290EC 800284EC 44C1F800 */  ctc1  $at, $31
/* 0290F0 800284F0 3C058012 */  lui   $a1, %hi(gSceneCurrMatrix) # $a1, 0x8012
/* 0290F4 800284F4 46003224 */  cvt.w.s $f8, $f6
/* 0290F8 800284F8 24A5B0A4 */  addiu $a1, %lo(gSceneCurrMatrix) # addiu $a1, $a1, -0x4f5c
/* 0290FC 800284FC 44CDF800 */  ctc1  $t5, $31
/* 029100 80028500 440E4000 */  mfc1  $t6, $f8
/* 029104 80028504 460E6101 */  sub.s $f4, $f12, $f14
/* 029108 80028508 01C37821 */  addu  $t7, $t6, $v1
/* 02910C 8002850C 4458F800 */  cfc1  $t8, $31
/* 029110 80028510 A7AF0122 */  sh    $t7, 0x122($sp)
/* 029114 80028514 37010003 */  ori   $at, $t8, 3
/* 029118 80028518 38210002 */  xori  $at, $at, 2
/* 02911C 8002851C 44C1F800 */  ctc1  $at, $31
/* 029120 80028520 02602025 */  move  $a0, $s3
/* 029124 80028524 460022A4 */  cvt.w.s $f10, $f4
/* 029128 80028528 44D8F800 */  ctc1  $t8, $31
/* 02912C 8002852C 440C5000 */  mfc1  $t4, $f10
/* 029130 80028530 46001180 */  add.s $f6, $f2, $f0
/* 029134 80028534 01827021 */  addu  $t6, $t4, $v0
/* 029138 80028538 444FF800 */  cfc1  $t7, $31
/* 02913C 8002853C A7AE0138 */  sh    $t6, 0x138($sp)
/* 029140 80028540 35E10003 */  ori   $at, $t7, 3
/* 029144 80028544 38210002 */  xori  $at, $at, 2
/* 029148 80028548 44C1F800 */  ctc1  $at, $31
/* 02914C 8002854C 00000000 */  nop   
/* 029150 80028550 46003224 */  cvt.w.s $f8, $f6
/* 029154 80028554 44194000 */  mfc1  $t9, $f8
/* 029158 80028558 44CFF800 */  ctc1  $t7, $31
/* 02915C 8002855C 03236021 */  addu  $t4, $t9, $v1
/* 029160 80028560 0C01A102 */  jal   func_80068408
/* 029164 80028564 A7AC0124 */   sh    $t4, 0x124($sp)
/* 029168 80028568 3C04800E */  lui   $a0, %hi(gCurrentLevelHeader2) # $a0, 0x800e
/* 02916C 8002856C 8C84C91C */  lw    $a0, %lo(gCurrentLevelHeader2)($a0)
/* 029170 80028570 2403FFFF */  li    $v1, -1
/* 029174 80028574 8C8A0074 */  lw    $t2, 0x74($a0)
/* 029178 80028578 2406FFFF */  li    $a2, -1
/* 02917C 8002857C 11430007 */  beq   $t2, $v1, .L8002859C
/* 029180 80028580 24050001 */   li    $a1, 1
/* 029184 80028584 8C820078 */  lw    $v0, 0x78($a0)
/* 029188 80028588 00000000 */  nop   
/* 02918C 8002858C 14430005 */  bne   $v0, $v1, .L800285A4
/* 029190 80028590 00000000 */   nop   
/* 029194 80028594 10000003 */  b     .L800285A4
/* 029198 80028598 01401025 */   move  $v0, $t2
.L8002859C:
/* 02919C 8002859C 8FA20078 */  lw    $v0, 0x78($sp)
/* 0291A0 800285A0 00005025 */  move  $t2, $zero
.L800285A4:
/* 0291A4 800285A4 11400006 */  beqz  $t2, .L800285C0
/* 0291A8 800285A8 2407FF00 */   li    $a3, -256
/* 0291AC 800285AC 8C470010 */  lw    $a3, 0x10($v0)
/* 0291B0 800285B0 2401FF00 */  li    $at, -256
/* 0291B4 800285B4 00E17024 */  and   $t6, $a3, $at
/* 0291B8 800285B8 8D460010 */  lw    $a2, 0x10($t2)
/* 0291BC 800285BC 01C03825 */  move  $a3, $t6
.L800285C0:
/* 0291C0 800285C0 02602025 */  move  $a0, $s3
/* 0291C4 800285C4 0C01FD65 */  jal   func_8007F594
/* 0291C8 800285C8 AFAA007C */   sw    $t2, 0x7c($sp)
/* 0291CC 800285CC 3C058012 */  lui   $a1, %hi(D_8011B110) # $a1, 0x8012
/* 0291D0 800285D0 8CA5B110 */  lw    $a1, %lo(D_8011B110)($a1)
/* 0291D4 800285D4 8FA40074 */  lw    $a0, 0x74($sp)
/* 0291D8 800285D8 00057A00 */  sll   $t7, $a1, 8
/* 0291DC 800285DC 0C01ED1B */  jal   func_8007B46C
/* 0291E0 800285E0 01E02825 */   move  $a1, $t7
/* 0291E4 800285E4 8E630000 */  lw    $v1, ($s3)
/* 0291E8 800285E8 3C010700 */  lui   $at, 0x700
/* 0291EC 800285EC 24780008 */  addiu $t8, $v1, 8
/* 0291F0 800285F0 AE780000 */  sw    $t8, ($s3)
/* 0291F4 800285F4 8445000A */  lh    $a1, 0xa($v0)
/* 0291F8 800285F8 8FAA007C */  lw    $t2, 0x7c($sp)
/* 0291FC 800285FC 30AD00FF */  andi  $t5, $a1, 0xff
/* 029200 80028600 000DCC00 */  sll   $t9, $t5, 0x10
/* 029204 80028604 000570C0 */  sll   $t6, $a1, 3
/* 029208 80028608 31CFFFFF */  andi  $t7, $t6, 0xffff
/* 02920C 8002860C 03216025 */  or    $t4, $t9, $at
/* 029210 80028610 018FC025 */  or    $t8, $t4, $t7
/* 029214 80028614 AC780000 */  sw    $t8, ($v1)
/* 029218 80028618 8C4D000C */  lw    $t5, 0xc($v0)
/* 02921C 8002861C 3C098000 */  lui   $t1, 0x8000
/* 029220 80028620 3C0B8012 */  lui   $t3, %hi(gSceneCurrVertexList) # $t3, 0x8012
/* 029224 80028624 01A9C821 */  addu  $t9, $t5, $t1
/* 029228 80028628 256BB0A8 */  addiu $t3, %lo(gSceneCurrVertexList) # addiu $t3, $t3, -0x4f58
/* 02922C 8002862C AC790004 */  sw    $t9, 4($v1)
/* 029230 80028630 8D6C0000 */  lw    $t4, ($t3)
/* 029234 80028634 8E630000 */  lw    $v1, ($s3)
/* 029238 80028638 01897821 */  addu  $t7, $t4, $t1
/* 02923C 8002863C 31F80006 */  andi  $t8, $t7, 6
/* 029240 80028640 370D0040 */  ori   $t5, $t8, 0x40
/* 029244 80028644 246E0008 */  addiu $t6, $v1, 8
/* 029248 80028648 AE6E0000 */  sw    $t6, ($s3)
/* 02924C 8002864C 31B900FF */  andi  $t9, $t5, 0xff
/* 029250 80028650 00197400 */  sll   $t6, $t9, 0x10
/* 029254 80028654 3C010400 */  lui   $at, 0x400
/* 029258 80028658 01C16025 */  or    $t4, $t6, $at
/* 02925C 8002865C 358F00AA */  ori   $t7, $t4, 0xaa
/* 029260 80028660 AC6F0000 */  sw    $t7, ($v1)
/* 029264 80028664 8D780000 */  lw    $t8, ($t3)
/* 029268 80028668 3C0E0571 */  lui   $t6, (0x05710080 >> 16) # lui $t6, 0x571
/* 02926C 8002866C 03096821 */  addu  $t5, $t8, $t1
/* 029270 80028670 AC6D0004 */  sw    $t5, 4($v1)
/* 029274 80028674 8E630000 */  lw    $v1, ($s3)
/* 029278 80028678 35CE0080 */  ori   $t6, (0x05710080 & 0xFFFF) # ori $t6, $t6, 0x80
/* 02927C 8002867C 24790008 */  addiu $t9, $v1, 8
/* 029280 80028680 AE790000 */  sw    $t9, ($s3)
/* 029284 80028684 3C0C8012 */  lui   $t4, %hi(gSceneCurrTriList) # $t4, 0x8012
/* 029288 80028688 AC6E0000 */  sw    $t6, ($v1)
/* 02928C 8002868C 8D8CB0AC */  lw    $t4, %lo(gSceneCurrTriList)($t4)
/* 029290 80028690 3C0DE700 */  lui   $t5, 0xe700
/* 029294 80028694 01897821 */  addu  $t7, $t4, $t1
/* 029298 80028698 AC6F0004 */  sw    $t7, 4($v1)
/* 02929C 8002869C 8E630000 */  lw    $v1, ($s3)
/* 0292A0 800286A0 3C0EFA00 */  lui   $t6, 0xfa00
/* 0292A4 800286A4 24780008 */  addiu $t8, $v1, 8
/* 0292A8 800286A8 AE780000 */  sw    $t8, ($s3)
/* 0292AC 800286AC AC600004 */  sw    $zero, 4($v1)
/* 0292B0 800286B0 1140000E */  beqz  $t2, .L800286EC
/* 0292B4 800286B4 AC6D0000 */   sw    $t5, ($v1)
/* 0292B8 800286B8 8E630000 */  lw    $v1, ($s3)
/* 0292BC 800286BC 240CFFFF */  li    $t4, -1
/* 0292C0 800286C0 24790008 */  addiu $t9, $v1, 8
/* 0292C4 800286C4 AE790000 */  sw    $t9, ($s3)
/* 0292C8 800286C8 AC6C0004 */  sw    $t4, 4($v1)
/* 0292CC 800286CC AC6E0000 */  sw    $t6, ($v1)
/* 0292D0 800286D0 8E630000 */  lw    $v1, ($s3)
/* 0292D4 800286D4 3C18FB00 */  lui   $t8, 0xfb00
/* 0292D8 800286D8 246F0008 */  addiu $t7, $v1, 8
/* 0292DC 800286DC AE6F0000 */  sw    $t7, ($s3)
/* 0292E0 800286E0 240DFF00 */  li    $t5, -256
/* 0292E4 800286E4 AC6D0004 */  sw    $t5, 4($v1)
/* 0292E8 800286E8 AC780000 */  sw    $t8, ($v1)
.L800286EC:
/* 0292EC 800286EC 0C01ECF4 */  jal   func_8007B3D0
/* 0292F0 800286F0 02602025 */   move  $a0, $s3
/* 0292F4 800286F4 3C014340 */  li    $at, 0x43400000 # 192.000000
/* 0292F8 800286F8 44815000 */  mtc1  $at, $f10
/* 0292FC 800286FC C6440010 */  lwc1  $f4, 0x10($s2)
/* 029300 80028700 27A400DC */  addiu $a0, $sp, 0xdc
/* 029304 80028704 460A2180 */  add.s $f6, $f4, $f10
/* 029308 80028708 27A200B8 */  addiu $v0, $sp, 0xb8
/* 02930C 8002870C 4459F800 */  cfc1  $t9, $31
/* 029310 80028710 27A700DC */  addiu $a3, $sp, 0xdc
/* 029314 80028714 37210003 */  ori   $at, $t9, 3
/* 029318 80028718 38210002 */  xori  $at, $at, 2
/* 02931C 8002871C 44C1F800 */  ctc1  $at, $31
/* 029320 80028720 27A600CC */  addiu $a2, $sp, 0xcc
/* 029324 80028724 46003224 */  cvt.w.s $f8, $f6
/* 029328 80028728 240300FF */  li    $v1, 255
/* 02932C 8002872C 44054000 */  mfc1  $a1, $f8
/* 029330 80028730 44D9F800 */  ctc1  $t9, $31
/* 029334 80028734 00057400 */  sll   $t6, $a1, 0x10
/* 029338 80028738 000E2C03 */  sra   $a1, $t6, 0x10
.L8002873C:
/* 02933C 8002873C C4840000 */  lwc1  $f4, ($a0)
/* 029340 80028740 C64A000C */  lwc1  $f10, 0xc($s2)
/* 029344 80028744 A6250002 */  sh    $a1, 2($s1)
/* 029348 80028748 460A2180 */  add.s $f6, $f4, $f10
/* 02934C 8002874C 24840004 */  addiu $a0, $a0, 4
/* 029350 80028750 444FF800 */  cfc1  $t7, $31
/* 029354 80028754 00000000 */  nop   
/* 029358 80028758 35E10003 */  ori   $at, $t7, 3
/* 02935C 8002875C 38210002 */  xori  $at, $at, 2
/* 029360 80028760 44C1F800 */  ctc1  $at, $31
/* 029364 80028764 00000000 */  nop   
/* 029368 80028768 46003224 */  cvt.w.s $f8, $f6
/* 02936C 8002876C 44184000 */  mfc1  $t8, $f8
/* 029370 80028770 44CFF800 */  ctc1  $t7, $31
/* 029374 80028774 A6380000 */  sh    $t8, ($s1)
/* 029378 80028778 C64A0014 */  lwc1  $f10, 0x14($s2)
/* 02937C 8002877C C4440000 */  lwc1  $f4, ($v0)
/* 029380 80028780 A2230006 */  sb    $v1, 6($s1)
/* 029384 80028784 460A2180 */  add.s $f6, $f4, $f10
/* 029388 80028788 A2230007 */  sb    $v1, 7($s1)
/* 02938C 8002878C 444DF800 */  cfc1  $t5, $31
/* 029390 80028790 A2230008 */  sb    $v1, 8($s1)
/* 029394 80028794 35A10003 */  ori   $at, $t5, 3
/* 029398 80028798 38210002 */  xori  $at, $at, 2
/* 02939C 8002879C 44C1F800 */  ctc1  $at, $31
/* 0293A0 800287A0 0046082B */  sltu  $at, $v0, $a2
/* 0293A4 800287A4 46003224 */  cvt.w.s $f8, $f6
/* 0293A8 800287A8 24420004 */  addiu $v0, $v0, 4
/* 0293AC 800287AC 44194000 */  mfc1  $t9, $f8
/* 0293B0 800287B0 44CDF800 */  ctc1  $t5, $31
/* 0293B4 800287B4 10200003 */  beqz  $at, .L800287C4
/* 0293B8 800287B8 A6390004 */   sh    $t9, 4($s1)
/* 0293BC 800287BC 10000002 */  b     .L800287C8
/* 0293C0 800287C0 A2230009 */   sb    $v1, 9($s1)
.L800287C4:
/* 0293C4 800287C4 A2200009 */  sb    $zero, 9($s1)
.L800287C8:
/* 0293C8 800287C8 0047082B */  sltu  $at, $v0, $a3
/* 0293CC 800287CC 1420FFDB */  bnez  $at, .L8002873C
/* 0293D0 800287D0 2631000A */   addiu $s1, $s1, 0xa
/* 0293D4 800287D4 3C02800E */  lui   $v0, %hi(D_800DC92C) # $v0, 0x800e
/* 0293D8 800287D8 2442C92C */  addiu $v0, %lo(D_800DC92C) # addiu $v0, $v0, -0x36d4
/* 0293DC 800287DC 00003025 */  move  $a2, $zero
/* 0293E0 800287E0 24070008 */  li    $a3, 8
/* 0293E4 800287E4 24050040 */  li    $a1, 64
/* 0293E8 800287E8 27A40114 */  addiu $a0, $sp, 0x114
/* 0293EC 800287EC 27A30128 */  addiu $v1, $sp, 0x128
.L800287F0:
/* 0293F0 800287F0 A2050000 */  sb    $a1, ($s0)
/* 0293F4 800287F4 904E0000 */  lbu   $t6, ($v0)
/* 0293F8 800287F8 24C60002 */  addiu $a2, $a2, 2
/* 0293FC 800287FC A20E0001 */  sb    $t6, 1($s0)
/* 029400 80028800 904C0000 */  lbu   $t4, ($v0)
/* 029404 80028804 24420006 */  addiu $v0, $v0, 6
/* 029408 80028808 000C7840 */  sll   $t7, $t4, 1
/* 02940C 8002880C 006FC021 */  addu  $t8, $v1, $t7
/* 029410 80028810 870D0000 */  lh    $t5, ($t8)
/* 029414 80028814 26100020 */  addiu $s0, $s0, 0x20
/* 029418 80028818 A60DFFE4 */  sh    $t5, -0x1c($s0)
/* 02941C 8002881C 9059FFFA */  lbu   $t9, -6($v0)
/* 029420 80028820 00000000 */  nop   
/* 029424 80028824 00197040 */  sll   $t6, $t9, 1
/* 029428 80028828 008E6021 */  addu  $t4, $a0, $t6
/* 02942C 8002882C 858F0000 */  lh    $t7, ($t4)
/* 029430 80028830 00000000 */  nop   
/* 029434 80028834 A60FFFE6 */  sh    $t7, -0x1a($s0)
/* 029438 80028838 9058FFFB */  lbu   $t8, -5($v0)
/* 02943C 8002883C 00000000 */  nop   
/* 029440 80028840 A218FFE2 */  sb    $t8, -0x1e($s0)
/* 029444 80028844 904DFFFB */  lbu   $t5, -5($v0)
/* 029448 80028848 00000000 */  nop   
/* 02944C 8002884C 000DC840 */  sll   $t9, $t5, 1
/* 029450 80028850 00797021 */  addu  $t6, $v1, $t9
/* 029454 80028854 85CC0000 */  lh    $t4, ($t6)
/* 029458 80028858 00000000 */  nop   
/* 02945C 8002885C A60CFFE8 */  sh    $t4, -0x18($s0)
/* 029460 80028860 904FFFFB */  lbu   $t7, -5($v0)
/* 029464 80028864 00000000 */  nop   
/* 029468 80028868 000FC040 */  sll   $t8, $t7, 1
/* 02946C 8002886C 00986821 */  addu  $t5, $a0, $t8
/* 029470 80028870 85B90000 */  lh    $t9, ($t5)
/* 029474 80028874 00000000 */  nop   
/* 029478 80028878 A619FFEA */  sh    $t9, -0x16($s0)
/* 02947C 8002887C 904EFFFC */  lbu   $t6, -4($v0)
/* 029480 80028880 00000000 */  nop   
/* 029484 80028884 A20EFFE3 */  sb    $t6, -0x1d($s0)
/* 029488 80028888 904CFFFC */  lbu   $t4, -4($v0)
/* 02948C 8002888C 00000000 */  nop   
/* 029490 80028890 000C7840 */  sll   $t7, $t4, 1
/* 029494 80028894 006FC021 */  addu  $t8, $v1, $t7
/* 029498 80028898 870D0000 */  lh    $t5, ($t8)
/* 02949C 8002889C 00000000 */  nop   
/* 0294A0 800288A0 A60DFFEC */  sh    $t5, -0x14($s0)
/* 0294A4 800288A4 9059FFFC */  lbu   $t9, -4($v0)
/* 0294A8 800288A8 00000000 */  nop   
/* 0294AC 800288AC 00197040 */  sll   $t6, $t9, 1
/* 0294B0 800288B0 008E6021 */  addu  $t4, $a0, $t6
/* 0294B4 800288B4 858F0000 */  lh    $t7, ($t4)
/* 0294B8 800288B8 A205FFF0 */  sb    $a1, -0x10($s0)
/* 0294BC 800288BC A60FFFEE */  sh    $t7, -0x12($s0)
/* 0294C0 800288C0 9058FFFD */  lbu   $t8, -3($v0)
/* 0294C4 800288C4 00000000 */  nop   
/* 0294C8 800288C8 A218FFF1 */  sb    $t8, -0xf($s0)
/* 0294CC 800288CC 904DFFFD */  lbu   $t5, -3($v0)
/* 0294D0 800288D0 00000000 */  nop   
/* 0294D4 800288D4 000DC840 */  sll   $t9, $t5, 1
/* 0294D8 800288D8 00797021 */  addu  $t6, $v1, $t9
/* 0294DC 800288DC 85CC0000 */  lh    $t4, ($t6)
/* 0294E0 800288E0 00000000 */  nop   
/* 0294E4 800288E4 A60CFFF4 */  sh    $t4, -0xc($s0)
/* 0294E8 800288E8 904FFFFD */  lbu   $t7, -3($v0)
/* 0294EC 800288EC 00000000 */  nop   
/* 0294F0 800288F0 000FC040 */  sll   $t8, $t7, 1
/* 0294F4 800288F4 00986821 */  addu  $t5, $a0, $t8
/* 0294F8 800288F8 85B90000 */  lh    $t9, ($t5)
/* 0294FC 800288FC 00000000 */  nop   
/* 029500 80028900 A619FFF6 */  sh    $t9, -0xa($s0)
/* 029504 80028904 904EFFFE */  lbu   $t6, -2($v0)
/* 029508 80028908 00000000 */  nop   
/* 02950C 8002890C A20EFFF2 */  sb    $t6, -0xe($s0)
/* 029510 80028910 904CFFFE */  lbu   $t4, -2($v0)
/* 029514 80028914 00000000 */  nop   
/* 029518 80028918 000C7840 */  sll   $t7, $t4, 1
/* 02951C 8002891C 006FC021 */  addu  $t8, $v1, $t7
/* 029520 80028920 870D0000 */  lh    $t5, ($t8)
/* 029524 80028924 00000000 */  nop   
/* 029528 80028928 A60DFFF8 */  sh    $t5, -8($s0)
/* 02952C 8002892C 9059FFFE */  lbu   $t9, -2($v0)
/* 029530 80028930 00000000 */  nop   
/* 029534 80028934 00197040 */  sll   $t6, $t9, 1
/* 029538 80028938 008E6021 */  addu  $t4, $a0, $t6
/* 02953C 8002893C 858F0000 */  lh    $t7, ($t4)
/* 029540 80028940 00000000 */  nop   
/* 029544 80028944 A60FFFFA */  sh    $t7, -6($s0)
/* 029548 80028948 9058FFFF */  lbu   $t8, -1($v0)
/* 02954C 8002894C 00000000 */  nop   
/* 029550 80028950 A218FFF3 */  sb    $t8, -0xd($s0)
/* 029554 80028954 904DFFFF */  lbu   $t5, -1($v0)
/* 029558 80028958 00000000 */  nop   
/* 02955C 8002895C 000DC840 */  sll   $t9, $t5, 1
/* 029560 80028960 00797021 */  addu  $t6, $v1, $t9
/* 029564 80028964 85CC0000 */  lh    $t4, ($t6)
/* 029568 80028968 00000000 */  nop   
/* 02956C 8002896C A60CFFFC */  sh    $t4, -4($s0)
/* 029570 80028970 904FFFFF */  lbu   $t7, -1($v0)
/* 029574 80028974 00000000 */  nop   
/* 029578 80028978 000FC040 */  sll   $t8, $t7, 1
/* 02957C 8002897C 00986821 */  addu  $t5, $a0, $t8
/* 029580 80028980 85B90000 */  lh    $t9, ($t5)
/* 029584 80028984 14C7FF9A */  bne   $a2, $a3, .L800287F0
/* 029588 80028988 A619FFFE */   sh    $t9, -2($s0)
/* 02958C 8002898C 3C018012 */  lui   $at, %hi(gSceneCurrVertexList) # $at, 0x8012
/* 029590 80028990 AC31B0A8 */  sw    $s1, %lo(gSceneCurrVertexList)($at)
/* 029594 80028994 3C018012 */  lui   $at, %hi(gSceneCurrTriList) # $at, 0x8012
/* 029598 80028998 8FBF0024 */  lw    $ra, 0x24($sp)
/* 02959C 8002899C AC30B0AC */  sw    $s0, %lo(gSceneCurrTriList)($at)
/* 0295A0 800289A0 8FB00014 */  lw    $s0, 0x14($sp)
/* 0295A4 800289A4 8FB10018 */  lw    $s1, 0x18($sp)
/* 0295A8 800289A8 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0295AC 800289AC 8FB30020 */  lw    $s3, 0x20($sp)
/* 0295B0 800289B0 03E00008 */  jr    $ra
/* 0295B4 800289B4 27BD0158 */   addiu $sp, $sp, 0x158

