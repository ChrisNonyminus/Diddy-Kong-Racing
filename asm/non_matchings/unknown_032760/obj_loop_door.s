.late_rodata
glabel D_800E6168
.double 1.2
glabel D_800E6170
.double 130.0

.text
glabel obj_loop_door
/* 03C588 8003B988 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 03C58C 8003B98C 44852000 */  mtc1  $a1, $f4
/* 03C590 8003B990 AFBF0024 */  sw    $ra, 0x24($sp)
/* 03C594 8003B994 AFB00020 */  sw    $s0, 0x20($sp)
/* 03C598 8003B998 AFA50064 */  sw    $a1, 0x64($sp)
/* 03C59C 8003B99C 3C188000 */  lui   $t8, %hi(osTvType) # $t8, 0x8000
/* 03C5A0 8003B9A0 46802020 */  cvt.s.w $f0, $f4
/* 03C5A4 8003B9A4 8C8E003C */  lw    $t6, 0x3c($a0)
/* 03C5A8 8003B9A8 8F180300 */  lw    $t8, %lo(osTvType)($t8)
/* 03C5AC 8003B9AC 00808025 */  move  $s0, $a0
/* 03C5B0 8003B9B0 46000086 */  mov.s $f2, $f0
/* 03C5B4 8003B9B4 17000007 */  bnez  $t8, .L8003B9D4
/* 03C5B8 8003B9B8 AFAE0034 */   sw    $t6, 0x34($sp)
/* 03C5BC 8003B9BC 3C01800E */  lui   $at, %hi(D_800E6168 + 4) # $at, 0x800e
/* 03C5C0 8003B9C0 C4296168 */  lwc1  $f9, %lo(D_800E6168)($at)
/* 03C5C4 8003B9C4 C428616C */  lwc1  $f8, %lo(D_800E6168 + 4)($at)
/* 03C5C8 8003B9C8 460001A1 */  cvt.d.s $f6, $f0
/* 03C5CC 8003B9CC 46283282 */  mul.d $f10, $f6, $f8
/* 03C5D0 8003B9D0 462050A0 */  cvt.s.d $f2, $f10
.L8003B9D4:
/* 03C5D4 8003B9D4 0C01BAA4 */  jal   get_settings
/* 03C5D8 8003B9D8 E7A20030 */   swc1  $f2, 0x30($sp)
/* 03C5DC 8003B9DC 904B0049 */  lbu   $t3, 0x49($v0)
/* 03C5E0 8003B9E0 8C590004 */  lw    $t9, 4($v0)
/* 03C5E4 8003B9E4 8E080064 */  lw    $t0, 0x64($s0)
/* 03C5E8 8003B9E8 000B6080 */  sll   $t4, $t3, 2
/* 03C5EC 8003B9EC 8103000E */  lb    $v1, 0xe($t0)
/* 03C5F0 8003B9F0 032C6821 */  addu  $t5, $t9, $t4
/* 03C5F4 8003B9F4 8DA50000 */  lw    $a1, ($t5)
/* 03C5F8 8003B9F8 046001E6 */  bltz  $v1, .L8003C194
/* 03C5FC 8003B9FC 00404825 */   move  $t1, $v0
/* 03C600 8003BA00 3C0E0001 */  lui   $t6, 1
/* 03C604 8003BA04 006E7804 */  sllv  $t7, $t6, $v1
/* 03C608 8003BA08 AFAF0054 */  sw    $t7, 0x54($sp)
/* 03C60C 8003BA0C 8E02004C */  lw    $v0, 0x4c($s0)
/* 03C610 8003BA10 00000000 */  nop   
/* 03C614 8003BA14 90440013 */  lbu   $a0, 0x13($v0)
/* 03C618 8003BA18 00000000 */  nop   
/* 03C61C 8003BA1C AFA40050 */  sw    $a0, 0x50($sp)
/* 03C620 8003BA20 9118000F */  lbu   $t8, 0xf($t0)
/* 03C624 8003BA24 00000000 */  nop   
/* 03C628 8003BA28 330B0001 */  andi  $t3, $t8, 1
/* 03C62C 8003BA2C 15600003 */  bnez  $t3, .L8003BA3C
/* 03C630 8003BA30 8FB90054 */   lw    $t9, 0x54($sp)
/* 03C634 8003BA34 AFA00050 */  sw    $zero, 0x50($sp)
/* 03C638 8003BA38 8FB90054 */  lw    $t9, 0x54($sp)
.L8003BA3C:
/* 03C63C 8003BA3C 00000000 */  nop   
/* 03C640 8003BA40 00B96024 */  and   $t4, $a1, $t9
/* 03C644 8003BA44 15800050 */  bnez  $t4, .L8003BB88
/* 03C648 8003BA48 AFAC0028 */   sw    $t4, 0x28($sp)
/* 03C64C 8003BA4C 910E0012 */  lbu   $t6, 0x12($t0)
/* 03C650 8003BA50 00000000 */  nop   
/* 03C654 8003BA54 008E082A */  slt   $at, $a0, $t6
/* 03C658 8003BA58 1020004B */  beqz  $at, .L8003BB88
/* 03C65C 8003BA5C 00000000 */   nop   
/* 03C660 8003BA60 8C430000 */  lw    $v1, ($v0)
/* 03C664 8003BA64 00000000 */  nop   
/* 03C668 8003BA68 10600047 */  beqz  $v1, .L8003BB88
/* 03C66C 8003BA6C 00000000 */   nop   
/* 03C670 8003BA70 8C6F0040 */  lw    $t7, 0x40($v1)
/* 03C674 8003BA74 24060001 */  li    $a2, 1
/* 03C678 8003BA78 81F80054 */  lb    $t8, 0x54($t7)
/* 03C67C 8003BA7C 00000000 */  nop   
/* 03C680 8003BA80 14D80041 */  bne   $a2, $t8, .L8003BB88
/* 03C684 8003BA84 00000000 */   nop   
/* 03C688 8003BA88 8C620064 */  lw    $v0, 0x64($v1)
/* 03C68C 8003BA8C 2401FFFF */  li    $at, -1
/* 03C690 8003BA90 844B0000 */  lh    $t3, ($v0)
/* 03C694 8003BA94 00000000 */  nop   
/* 03C698 8003BA98 11610033 */  beq   $t3, $at, .L8003BB68
/* 03C69C 8003BA9C 00000000 */   nop   
/* 03C6A0 8003BAA0 8E19005C */  lw    $t9, 0x5c($s0)
/* 03C6A4 8003BAA4 00000000 */  nop   
/* 03C6A8 8003BAA8 8F2C0100 */  lw    $t4, 0x100($t9)
/* 03C6AC 8003BAAC 00000000 */  nop   
/* 03C6B0 8003BAB0 146C002D */  bne   $v1, $t4, .L8003BB68
/* 03C6B4 8003BAB4 00000000 */   nop   
/* 03C6B8 8003BAB8 810D0013 */  lb    $t5, 0x13($t0)
/* 03C6BC 8003BABC 2401FFFF */  li    $at, -1
/* 03C6C0 8003BAC0 11A10028 */  beq   $t5, $at, .L8003BB64
/* 03C6C4 8003BAC4 240B012C */   li    $t3, 300
/* 03C6C8 8003BAC8 AFA80044 */  sw    $t0, 0x44($sp)
/* 03C6CC 8003BACC 0C030D00 */  jal   func_800C3400
/* 03C6D0 8003BAD0 AFA90040 */   sw    $t1, 0x40($sp)
/* 03C6D4 8003BAD4 8FA80044 */  lw    $t0, 0x44($sp)
/* 03C6D8 8003BAD8 8FA90040 */  lw    $t1, 0x40($sp)
/* 03C6DC 8003BADC 14400021 */  bnez  $v0, .L8003BB64
/* 03C6E0 8003BAE0 240B012C */   li    $t3, 300
/* 03C6E4 8003BAE4 850E000C */  lh    $t6, 0xc($t0)
/* 03C6E8 8003BAE8 2404FFF8 */  li    $a0, -8
/* 03C6EC 8003BAEC 15C0001D */  bnez  $t6, .L8003BB64
/* 03C6F0 8003BAF0 240B012C */   li    $t3, 300
/* 03C6F4 8003BAF4 AFA80044 */  sw    $t0, 0x44($sp)
/* 03C6F8 8003BAF8 0C000326 */  jal   set_music_fade_timer
/* 03C6FC 8003BAFC AFA90040 */   sw    $t1, 0x40($sp)
/* 03C700 8003BB00 8FA80044 */  lw    $t0, 0x44($sp)
/* 03C704 8003BB04 240F008C */  li    $t7, 140
/* 03C708 8003BB08 24040010 */  li    $a0, 16
/* 03C70C 8003BB0C 0C00030E */  jal   set_sndfx_player_voice_limit
/* 03C710 8003BB10 AD0F0008 */   sw    $t7, 8($t0)
/* 03C714 8003BB14 0C002050 */  jal   func_80008140
/* 03C718 8003BB18 00000000 */   nop   
/* 03C71C 8003BB1C 0C0006F0 */  jal   play_sequence
/* 03C720 8003BB20 24040011 */   li    $a0, 17
/* 03C724 8003BB24 8FA80044 */  lw    $t0, 0x44($sp)
/* 03C728 8003BB28 00000000 */  nop   
/* 03C72C 8003BB2C 91040010 */  lbu   $a0, 0x10($t0)
/* 03C730 8003BB30 0C030C50 */  jal   func_800C3140
/* 03C734 8003BB34 00000000 */   nop   
/* 03C738 8003BB38 8FA80044 */  lw    $t0, 0x44($sp)
/* 03C73C 8003BB3C 00000000 */  nop   
/* 03C740 8003BB40 81040013 */  lb    $a0, 0x13($t0)
/* 03C744 8003BB44 00000000 */  nop   
/* 03C748 8003BB48 309800FF */  andi  $t8, $a0, 0xff
/* 03C74C 8003BB4C 0C030C7B */  jal   func_800C31EC
/* 03C750 8003BB50 03002025 */   move  $a0, $t8
/* 03C754 8003BB54 8FA80044 */  lw    $t0, 0x44($sp)
/* 03C758 8003BB58 8FA90040 */  lw    $t1, 0x40($sp)
/* 03C75C 8003BB5C 00000000 */  nop   
/* 03C760 8003BB60 240B012C */  li    $t3, 300
.L8003BB64:
/* 03C764 8003BB64 A50B000C */  sh    $t3, 0xc($t0)
.L8003BB68:
/* 03C768 8003BB68 AFA80044 */  sw    $t0, 0x44($sp)
/* 03C76C 8003BB6C 0C030D00 */  jal   func_800C3400
/* 03C770 8003BB70 AFA90040 */   sw    $t1, 0x40($sp)
/* 03C774 8003BB74 8FA80044 */  lw    $t0, 0x44($sp)
/* 03C778 8003BB78 8FA90040 */  lw    $t1, 0x40($sp)
/* 03C77C 8003BB7C 10400002 */  beqz  $v0, .L8003BB88
/* 03C780 8003BB80 2419012C */   li    $t9, 300
/* 03C784 8003BB84 A519000C */  sh    $t9, 0xc($t0)
.L8003BB88:
/* 03C788 8003BB88 8D0C0008 */  lw    $t4, 8($t0)
/* 03C78C 8003BB8C 00000000 */  nop   
/* 03C790 8003BB90 1180001B */  beqz  $t4, .L8003BC00
/* 03C794 8003BB94 00000000 */   nop   
/* 03C798 8003BB98 AFA80044 */  sw    $t0, 0x44($sp)
/* 03C79C 8003BB9C 0C000702 */  jal   func_80001C08
/* 03C7A0 8003BBA0 AFA90040 */   sw    $t1, 0x40($sp)
/* 03C7A4 8003BBA4 8FA80044 */  lw    $t0, 0x44($sp)
/* 03C7A8 8003BBA8 8FA90040 */  lw    $t1, 0x40($sp)
/* 03C7AC 8003BBAC 14400014 */  bnez  $v0, .L8003BC00
/* 03C7B0 8003BBB0 00000000 */   nop   
/* 03C7B4 8003BBB4 8FA30064 */  lw    $v1, 0x64($sp)
/* 03C7B8 8003BBB8 8D020008 */  lw    $v0, 8($t0)
/* 03C7BC 8003BBBC 24040008 */  li    $a0, 8
/* 03C7C0 8003BBC0 0062082A */  slt   $at, $v1, $v0
/* 03C7C4 8003BBC4 10200003 */  beqz  $at, .L8003BBD4
/* 03C7C8 8003BBC8 00436823 */   subu  $t5, $v0, $v1
/* 03C7CC 8003BBCC 1000000C */  b     .L8003BC00
/* 03C7D0 8003BBD0 AD0D0008 */   sw    $t5, 8($t0)
.L8003BBD4:
/* 03C7D4 8003BBD4 AD000008 */  sw    $zero, 8($t0)
/* 03C7D8 8003BBD8 AFA90040 */  sw    $t1, 0x40($sp)
/* 03C7DC 8003BBDC 0C000326 */  jal   set_music_fade_timer
/* 03C7E0 8003BBE0 AFA80044 */   sw    $t0, 0x44($sp)
/* 03C7E4 8003BBE4 0C00030E */  jal   set_sndfx_player_voice_limit
/* 03C7E8 8003BBE8 24040006 */   li    $a0, 6
/* 03C7EC 8003BBEC 0C00205A */  jal   func_80008168
/* 03C7F0 8003BBF0 00000000 */   nop   
/* 03C7F4 8003BBF4 8FA80044 */  lw    $t0, 0x44($sp)
/* 03C7F8 8003BBF8 8FA90040 */  lw    $t1, 0x40($sp)
/* 03C7FC 8003BBFC 00000000 */  nop   
.L8003BC00:
/* 03C800 8003BC00 8502000C */  lh    $v0, 0xc($t0)
/* 03C804 8003BC04 8FA30064 */  lw    $v1, 0x64($sp)
/* 03C808 8003BC08 18400004 */  blez  $v0, .L8003BC1C
/* 03C80C 8003BC0C 24060001 */   li    $a2, 1
/* 03C810 8003BC10 00437023 */  subu  $t6, $v0, $v1
/* 03C814 8003BC14 10000002 */  b     .L8003BC20
/* 03C818 8003BC18 A50E000C */   sh    $t6, 0xc($t0)
.L8003BC1C:
/* 03C81C 8003BC1C A500000C */  sh    $zero, 0xc($t0)
.L8003BC20:
/* 03C820 8003BC20 8E02004C */  lw    $v0, 0x4c($s0)
/* 03C824 8003BC24 91180012 */  lbu   $t8, 0x12($t0)
/* 03C828 8003BC28 904F0013 */  lbu   $t7, 0x13($v0)
/* 03C82C 8003BC2C 8FAA0034 */  lw    $t2, 0x34($sp)
/* 03C830 8003BC30 01F8082A */  slt   $at, $t7, $t8
/* 03C834 8003BC34 10200018 */  beqz  $at, .L8003BC98
/* 03C838 8003BC38 00002025 */   move  $a0, $zero
/* 03C83C 8003BC3C 8C430000 */  lw    $v1, ($v0)
/* 03C840 8003BC40 00000000 */  nop   
/* 03C844 8003BC44 10600014 */  beqz  $v1, .L8003BC98
/* 03C848 8003BC48 00000000 */   nop   
/* 03C84C 8003BC4C 8C6B0040 */  lw    $t3, 0x40($v1)
/* 03C850 8003BC50 00000000 */  nop   
/* 03C854 8003BC54 81790054 */  lb    $t9, 0x54($t3)
/* 03C858 8003BC58 00000000 */  nop   
/* 03C85C 8003BC5C 14D9000E */  bne   $a2, $t9, .L8003BC98
/* 03C860 8003BC60 00000000 */   nop   
/* 03C864 8003BC64 8C620064 */  lw    $v0, 0x64($v1)
/* 03C868 8003BC68 24010002 */  li    $at, 2
/* 03C86C 8003BC6C 804401D6 */  lb    $a0, 0x1d6($v0)
/* 03C870 8003BC70 00000000 */  nop   
/* 03C874 8003BC74 10860005 */  beq   $a0, $a2, .L8003BC8C
/* 03C878 8003BC78 00000000 */   nop   
/* 03C87C 8003BC7C 10810006 */  beq   $a0, $at, .L8003BC98
/* 03C880 8003BC80 24040004 */   li    $a0, 4
/* 03C884 8003BC84 10000004 */  b     .L8003BC98
/* 03C888 8003BC88 00C02025 */   move  $a0, $a2
.L8003BC8C:
/* 03C88C 8003BC8C 10000002 */  b     .L8003BC98
/* 03C890 8003BC90 24040002 */   li    $a0, 2
/* 03C894 8003BC94 24040004 */  li    $a0, 4
.L8003BC98:
/* 03C898 8003BC98 914C0010 */  lbu   $t4, 0x10($t2)
/* 03C89C 8003BC9C 91420000 */  lbu   $v0, ($t2)
/* 03C8A0 8003BCA0 24010087 */  li    $at, 135
/* 03C8A4 8003BCA4 10410004 */  beq   $v0, $at, .L8003BCB8
/* 03C8A8 8003BCA8 008C2024 */   and   $a0, $a0, $t4
/* 03C8AC 8003BCAC 240100D7 */  li    $at, 215
/* 03C8B0 8003BCB0 1441000B */  bne   $v0, $at, .L8003BCE0
/* 03C8B4 8003BCB4 00000000 */   nop   
.L8003BCB8:
/* 03C8B8 8003BCB8 AFA4004C */  sw    $a0, 0x4c($sp)
/* 03C8BC 8003BCBC AFA80044 */  sw    $t0, 0x44($sp)
/* 03C8C0 8003BCC0 0C008D70 */  jal   func_800235C0
/* 03C8C4 8003BCC4 AFA90040 */   sw    $t1, 0x40($sp)
/* 03C8C8 8003BCC8 8FA4004C */  lw    $a0, 0x4c($sp)
/* 03C8CC 8003BCCC 8FA80044 */  lw    $t0, 0x44($sp)
/* 03C8D0 8003BCD0 8FA90040 */  lw    $t1, 0x40($sp)
/* 03C8D4 8003BCD4 10400002 */  beqz  $v0, .L8003BCE0
/* 03C8D8 8003BCD8 00000000 */   nop   
/* 03C8DC 8003BCDC AFA00050 */  sw    $zero, 0x50($sp)
.L8003BCE0:
/* 03C8E0 8003BCE0 810D0015 */  lb    $t5, 0x15($t0)
/* 03C8E4 8003BCE4 8FAA0034 */  lw    $t2, 0x34($sp)
/* 03C8E8 8003BCE8 15A00012 */  bnez  $t5, .L8003BD34
/* 03C8EC 8003BCEC 24060001 */   li    $a2, 1
/* 03C8F0 8003BCF0 91020012 */  lbu   $v0, 0x12($t0)
/* 03C8F4 8003BCF4 1480000A */  bnez  $a0, .L8003BD20
/* 03C8F8 8003BCF8 8FB80050 */   lw    $t8, 0x50($sp)
/* 03C8FC 8003BCFC 8FAE0028 */  lw    $t6, 0x28($sp)
/* 03C900 8003BD00 8FAF0050 */  lw    $t7, 0x50($sp)
/* 03C904 8003BD04 11C00005 */  beqz  $t6, .L8003BD1C
/* 03C908 8003BD08 01E2082A */   slt   $at, $t7, $v0
/* 03C90C 8003BD0C 10200004 */  beqz  $at, .L8003BD20
/* 03C910 8003BD10 8FB80050 */   lw    $t8, 0x50($sp)
/* 03C914 8003BD14 10000007 */  b     .L8003BD34
/* 03C918 8003BD18 A1060015 */   sb    $a2, 0x15($t0)
.L8003BD1C:
/* 03C91C 8003BD1C 8FB80050 */  lw    $t8, 0x50($sp)
.L8003BD20:
/* 03C920 8003BD20 244B000A */  addiu $t3, $v0, 0xa
/* 03C924 8003BD24 0178082A */  slt   $at, $t3, $t8
/* 03C928 8003BD28 10200002 */  beqz  $at, .L8003BD34
/* 03C92C 8003BD2C 2419FFFF */   li    $t9, -1
/* 03C930 8003BD30 A1190015 */  sb    $t9, 0x15($t0)
.L8003BD34:
/* 03C934 8003BD34 910C000F */  lbu   $t4, 0xf($t0)
/* 03C938 8003BD38 8FAE0028 */  lw    $t6, 0x28($sp)
/* 03C93C 8003BD3C 318D0002 */  andi  $t5, $t4, 2
/* 03C940 8003BD40 11A0005E */  beqz  $t5, .L8003BEBC
/* 03C944 8003BD44 00002825 */   move  $a1, $zero
/* 03C948 8003BD48 11C00033 */  beqz  $t6, .L8003BE18
/* 03C94C 8003BD4C 00000000 */   nop   
/* 03C950 8003BD50 914F0000 */  lbu   $t7, ($t2)
/* 03C954 8003BD54 24010019 */  li    $at, 25
/* 03C958 8003BD58 15E1002F */  bne   $t7, $at, .L8003BE18
/* 03C95C 8003BD5C 00000000 */   nop   
/* 03C960 8003BD60 814B0014 */  lb    $t3, 0x14($t2)
/* 03C964 8003BD64 8D380004 */  lw    $t8, 4($t1)
/* 03C968 8003BD68 000BC880 */  sll   $t9, $t3, 2
/* 03C96C 8003BD6C 03196021 */  addu  $t4, $t8, $t9
/* 03C970 8003BD70 8D820000 */  lw    $v0, ($t4)
/* 03C974 8003BD74 00000000 */  nop   
/* 03C978 8003BD78 304D0002 */  andi  $t5, $v0, 2
/* 03C97C 8003BD7C 11A00023 */  beqz  $t5, .L8003BE0C
/* 03C980 8003BD80 304E0004 */   andi  $t6, $v0, 4
/* 03C984 8003BD84 91220048 */  lbu   $v0, 0x48($t1)
/* 03C988 8003BD88 24010005 */  li    $at, 5
/* 03C98C 8003BD8C 10410006 */  beq   $v0, $at, .L8003BDA8
/* 03C990 8003BD90 240F0001 */   li    $t7, 1
/* 03C994 8003BD94 952E000C */  lhu   $t6, 0xc($t1)
/* 03C998 8003BD98 004F5804 */  sllv  $t3, $t7, $v0
/* 03C99C 8003BD9C 01CBC024 */  and   $t8, $t6, $t3
/* 03C9A0 8003BDA0 13000012 */  beqz  $t8, .L8003BDEC
/* 03C9A4 8003BDA4 00000000 */   nop   
.L8003BDA8:
/* 03C9A8 8003BDA8 91590015 */  lbu   $t9, 0x15($t2)
/* 03C9AC 8003BDAC 240F0002 */  li    $t7, 2
/* 03C9B0 8003BDB0 332C00FF */  andi  $t4, $t9, 0xff
/* 03C9B4 8003BDB4 2981000A */  slti  $at, $t4, 0xa
/* 03C9B8 8003BDB8 14200004 */  bnez  $at, .L8003BDCC
/* 03C9BC 8003BDBC A1190010 */   sb    $t9, 0x10($t0)
/* 03C9C0 8003BDC0 240D0003 */  li    $t5, 3
/* 03C9C4 8003BDC4 10000002 */  b     .L8003BDD0
/* 03C9C8 8003BDC8 A20D003A */   sb    $t5, 0x3a($s0)
.L8003BDCC:
/* 03C9CC 8003BDCC A20F003A */  sb    $t7, 0x3a($s0)
.L8003BDD0:
/* 03C9D0 8003BDD0 814B0014 */  lb    $t3, 0x14($t2)
/* 03C9D4 8003BDD4 8D2E0004 */  lw    $t6, 4($t1)
/* 03C9D8 8003BDD8 000BC080 */  sll   $t8, $t3, 2
/* 03C9DC 8003BDDC 01D8C821 */  addu  $t9, $t6, $t8
/* 03C9E0 8003BDE0 8F220000 */  lw    $v0, ($t9)
/* 03C9E4 8003BDE4 10000009 */  b     .L8003BE0C
/* 03C9E8 8003BDE8 304E0004 */   andi  $t6, $v0, 4
.L8003BDEC:
/* 03C9EC 8003BDEC A200003A */  sb    $zero, 0x3a($s0)
/* 03C9F0 8003BDF0 814D0014 */  lb    $t5, 0x14($t2)
/* 03C9F4 8003BDF4 8D2C0004 */  lw    $t4, 4($t1)
/* 03C9F8 8003BDF8 000D7880 */  sll   $t7, $t5, 2
/* 03C9FC 8003BDFC 018F5821 */  addu  $t3, $t4, $t7
/* 03CA00 8003BE00 8D620000 */  lw    $v0, ($t3)
/* 03CA04 8003BE04 00000000 */  nop   
/* 03CA08 8003BE08 304E0004 */  andi  $t6, $v0, 4
.L8003BE0C:
/* 03CA0C 8003BE0C 11C00002 */  beqz  $t6, .L8003BE18
/* 03CA10 8003BE10 00000000 */   nop   
/* 03CA14 8003BE14 A206003A */  sb    $a2, 0x3a($s0)
.L8003BE18:
/* 03CA18 8003BE18 81030015 */  lb    $v1, 0x15($t0)
/* 03CA1C 8003BE1C 2401FFFF */  li    $at, -1
/* 03CA20 8003BE20 14C30015 */  bne   $a2, $v1, .L8003BE78
/* 03CA24 8003BE24 00000000 */   nop   
/* 03CA28 8003BE28 3C01800E */  lui   $at, %hi(D_800E6170 + 4) # $at, 0x800e
/* 03CA2C 8003BE2C C5120000 */  lwc1  $f18, ($t0)
/* 03CA30 8003BE30 C4276170 */  lwc1  $f7, %lo(D_800E6170)($at)
/* 03CA34 8003BE34 C4266174 */  lwc1  $f6, %lo(D_800E6170 + 4)($at)
/* 03CA38 8003BE38 C6100010 */  lwc1  $f16, 0x10($s0)
/* 03CA3C 8003BE3C 46009121 */  cvt.d.s $f4, $f18
/* 03CA40 8003BE40 46262200 */  add.d $f8, $f4, $f6
/* 03CA44 8003BE44 C7AA0030 */  lwc1  $f10, 0x30($sp)
/* 03CA48 8003BE48 460080A1 */  cvt.d.s $f2, $f16
/* 03CA4C 8003BE4C 4628103C */  c.lt.d $f2, $f8
/* 03CA50 8003BE50 00000000 */  nop   
/* 03CA54 8003BE54 45000064 */  bc1f  .L8003BFE8
/* 03CA58 8003BE58 00000000 */   nop   
/* 03CA5C 8003BE5C 46005021 */  cvt.d.s $f0, $f10
/* 03CA60 8003BE60 46200400 */  add.d $f16, $f0, $f0
/* 03CA64 8003BE64 24050001 */  li    $a1, 1
/* 03CA68 8003BE68 46301480 */  add.d $f18, $f2, $f16
/* 03CA6C 8003BE6C 46209120 */  cvt.s.d $f4, $f18
/* 03CA70 8003BE70 1000005D */  b     .L8003BFE8
/* 03CA74 8003BE74 E6040010 */   swc1  $f4, 0x10($s0)
.L8003BE78:
/* 03CA78 8003BE78 1461005B */  bne   $v1, $at, .L8003BFE8
/* 03CA7C 8003BE7C 00000000 */   nop   
/* 03CA80 8003BE80 C6020010 */  lwc1  $f2, 0x10($s0)
/* 03CA84 8003BE84 C5060000 */  lwc1  $f6, ($t0)
/* 03CA88 8003BE88 C7A80030 */  lwc1  $f8, 0x30($sp)
/* 03CA8C 8003BE8C 4602303C */  c.lt.s $f6, $f2
/* 03CA90 8003BE90 00000000 */  nop   
/* 03CA94 8003BE94 45000054 */  bc1f  .L8003BFE8
/* 03CA98 8003BE98 00000000 */   nop   
/* 03CA9C 8003BE9C 46004021 */  cvt.d.s $f0, $f8
/* 03CAA0 8003BEA0 46200400 */  add.d $f16, $f0, $f0
/* 03CAA4 8003BEA4 24050001 */  li    $a1, 1
/* 03CAA8 8003BEA8 460012A1 */  cvt.d.s $f10, $f2
/* 03CAAC 8003BEAC 46305481 */  sub.d $f18, $f10, $f16
/* 03CAB0 8003BEB0 46209120 */  cvt.s.d $f4, $f18
/* 03CAB4 8003BEB4 1000004C */  b     .L8003BFE8
/* 03CAB8 8003BEB8 E6040010 */   swc1  $f4, 0x10($s0)
.L8003BEBC:
/* 03CABC 8003BEBC 91580000 */  lbu   $t8, ($t2)
/* 03CAC0 8003BEC0 240100D7 */  li    $at, 215
/* 03CAC4 8003BEC4 17010025 */  bne   $t8, $at, .L8003BF5C
/* 03CAC8 8003BEC8 24190001 */   li    $t9, 1
/* 03CACC 8003BECC A200003A */  sb    $zero, 0x3a($s0)
/* 03CAD0 8003BED0 91240048 */  lbu   $a0, 0x48($t1)
/* 03CAD4 8003BED4 9523000C */  lhu   $v1, 0xc($t1)
/* 03CAD8 8003BED8 00996804 */  sllv  $t5, $t9, $a0
/* 03CADC 8003BEDC 006D6024 */  and   $t4, $v1, $t5
/* 03CAE0 8003BEE0 1180000C */  beqz  $t4, .L8003BF14
/* 03CAE4 8003BEE4 00801025 */   move  $v0, $a0
/* 03CAE8 8003BEE8 8D2F0000 */  lw    $t7, ($t1)
/* 03CAEC 8003BEEC 00045840 */  sll   $t3, $a0, 1
/* 03CAF0 8003BEF0 01EB7021 */  addu  $t6, $t7, $t3
/* 03CAF4 8003BEF4 85D80000 */  lh    $t8, ($t6)
/* 03CAF8 8003BEF8 24010008 */  li    $at, 8
/* 03CAFC 8003BEFC 17010006 */  bne   $t8, $at, .L8003BF18
/* 03CB00 8003BF00 24590006 */   addiu $t9, $v0, 6
/* 03CB04 8003BF04 A206003A */  sb    $a2, 0x3a($s0)
/* 03CB08 8003BF08 9523000C */  lhu   $v1, 0xc($t1)
/* 03CB0C 8003BF0C 91220048 */  lbu   $v0, 0x48($t1)
/* 03CB10 8003BF10 00000000 */  nop   
.L8003BF14:
/* 03CB14 8003BF14 24590006 */  addiu $t9, $v0, 6
.L8003BF18:
/* 03CB18 8003BF18 240D0001 */  li    $t5, 1
/* 03CB1C 8003BF1C 032D6004 */  sllv  $t4, $t5, $t9
/* 03CB20 8003BF20 006C7824 */  and   $t7, $v1, $t4
/* 03CB24 8003BF24 11E00005 */  beqz  $t7, .L8003BF3C
/* 03CB28 8003BF28 24010005 */   li    $at, 5
/* 03CB2C 8003BF2C 240B0002 */  li    $t3, 2
/* 03CB30 8003BF30 A20B003A */  sb    $t3, 0x3a($s0)
/* 03CB34 8003BF34 91220048 */  lbu   $v0, 0x48($t1)
/* 03CB38 8003BF38 00000000 */  nop   
.L8003BF3C:
/* 03CB3C 8003BF3C 14410007 */  bne   $v0, $at, .L8003BF5C
/* 03CB40 8003BF40 00000000 */   nop   
/* 03CB44 8003BF44 8202003A */  lb    $v0, 0x3a($s0)
/* 03CB48 8003BF48 00000000 */  nop   
/* 03CB4C 8003BF4C 28410002 */  slti  $at, $v0, 2
/* 03CB50 8003BF50 10200002 */  beqz  $at, .L8003BF5C
/* 03CB54 8003BF54 244E0001 */   addiu $t6, $v0, 1
/* 03CB58 8003BF58 A20E003A */  sb    $t6, 0x3a($s0)
.L8003BF5C:
/* 03CB5C 8003BF5C 81030015 */  lb    $v1, 0x15($t0)
/* 03CB60 8003BF60 00001025 */  move  $v0, $zero
/* 03CB64 8003BF64 14C30008 */  bne   $a2, $v1, .L8003BF88
/* 03CB68 8003BF68 2401FFFF */   li    $at, -1
/* 03CB6C 8003BF6C 86180000 */  lh    $t8, ($s0)
/* 03CB70 8003BF70 8E0D007C */  lw    $t5, 0x7c($s0)
/* 03CB74 8003BF74 00000000 */  nop   
/* 03CB78 8003BF78 030D1023 */  subu  $v0, $t8, $t5
/* 03CB7C 8003BF7C 0002CC00 */  sll   $t9, $v0, 0x10
/* 03CB80 8003BF80 10000009 */  b     .L8003BFA8
/* 03CB84 8003BF84 00191403 */   sra   $v0, $t9, 0x10
.L8003BF88:
/* 03CB88 8003BF88 14610008 */  bne   $v1, $at, .L8003BFAC
/* 03CB8C 8003BF8C 000268C3 */   sra   $t5, $v0, 3
/* 03CB90 8003BF90 860F0000 */  lh    $t7, ($s0)
/* 03CB94 8003BF94 8E0B0078 */  lw    $t3, 0x78($s0)
/* 03CB98 8003BF98 00000000 */  nop   
/* 03CB9C 8003BF9C 01EB1023 */  subu  $v0, $t7, $t3
/* 03CBA0 8003BFA0 00027400 */  sll   $t6, $v0, 0x10
/* 03CBA4 8003BFA4 000E1403 */  sra   $v0, $t6, 0x10
.L8003BFA8:
/* 03CBA8 8003BFA8 000268C3 */  sra   $t5, $v0, 3
.L8003BFAC:
/* 03CBAC 8003BFAC 000DCC00 */  sll   $t9, $t5, 0x10
/* 03CBB0 8003BFB0 00191403 */  sra   $v0, $t9, 0x10
/* 03CBB4 8003BFB4 28410201 */  slti  $at, $v0, 0x201
/* 03CBB8 8003BFB8 86030000 */  lh    $v1, ($s0)
/* 03CBBC 8003BFBC 14200003 */  bnez  $at, .L8003BFCC
/* 03CBC0 8003BFC0 2841FE00 */   slti  $at, $v0, -0x200
/* 03CBC4 8003BFC4 24020200 */  li    $v0, 512
/* 03CBC8 8003BFC8 2841FE00 */  slti  $at, $v0, -0x200
.L8003BFCC:
/* 03CBCC 8003BFCC 10200003 */  beqz  $at, .L8003BFDC
/* 03CBD0 8003BFD0 00627823 */   subu  $t7, $v1, $v0
/* 03CBD4 8003BFD4 2402FE00 */  li    $v0, -512
/* 03CBD8 8003BFD8 00627823 */  subu  $t7, $v1, $v0
.L8003BFDC:
/* 03CBDC 8003BFDC 10400002 */  beqz  $v0, .L8003BFE8
/* 03CBE0 8003BFE0 A60F0000 */   sh    $t7, ($s0)
/* 03CBE4 8003BFE4 24050001 */  li    $a1, 1
.L8003BFE8:
/* 03CBE8 8003BFE8 10A00013 */  beqz  $a1, .L8003C038
/* 03CBEC 8003BFEC 00000000 */   nop   
/* 03CBF0 8003BFF0 8D0B0004 */  lw    $t3, 4($t0)
/* 03CBF4 8003BFF4 24040222 */  li    $a0, 546
/* 03CBF8 8003BFF8 1560001B */  bnez  $t3, .L8003C068
/* 03CBFC 8003BFFC 240E0001 */   li    $t6, 1
/* 03CC00 8003C000 8E05000C */  lw    $a1, 0xc($s0)
/* 03CC04 8003C004 8E060010 */  lw    $a2, 0x10($s0)
/* 03CC08 8003C008 8E070014 */  lw    $a3, 0x14($s0)
/* 03CC0C 8003C00C 25180004 */  addiu $t8, $t0, 4
/* 03CC10 8003C010 AFB80014 */  sw    $t8, 0x14($sp)
/* 03CC14 8003C014 AFA90040 */  sw    $t1, 0x40($sp)
/* 03CC18 8003C018 AFA80044 */  sw    $t0, 0x44($sp)
/* 03CC1C 8003C01C 0C002556 */  jal   func_80009558
/* 03CC20 8003C020 AFAE0010 */   sw    $t6, 0x10($sp)
/* 03CC24 8003C024 8FA80044 */  lw    $t0, 0x44($sp)
/* 03CC28 8003C028 8FA90040 */  lw    $t1, 0x40($sp)
/* 03CC2C 8003C02C 8FAA0034 */  lw    $t2, 0x34($sp)
/* 03CC30 8003C030 1000000E */  b     .L8003C06C
/* 03CC34 8003C034 81020014 */   lb    $v0, 0x14($t0)
.L8003C038:
/* 03CC38 8003C038 8D020004 */  lw    $v0, 4($t0)
/* 03CC3C 8003C03C A1000015 */  sb    $zero, 0x15($t0)
/* 03CC40 8003C040 10400009 */  beqz  $v0, .L8003C068
/* 03CC44 8003C044 00402025 */   move  $a0, $v0
/* 03CC48 8003C048 AFA80044 */  sw    $t0, 0x44($sp)
/* 03CC4C 8003C04C 0C0025BE */  jal   func_800096F8
/* 03CC50 8003C050 AFA90040 */   sw    $t1, 0x40($sp)
/* 03CC54 8003C054 8FA80044 */  lw    $t0, 0x44($sp)
/* 03CC58 8003C058 8FA90040 */  lw    $t1, 0x40($sp)
/* 03CC5C 8003C05C AD000004 */  sw    $zero, 4($t0)
/* 03CC60 8003C060 8FAA0034 */  lw    $t2, 0x34($sp)
/* 03CC64 8003C064 00000000 */  nop   
.L8003C068:
/* 03CC68 8003C068 81020014 */  lb    $v0, 0x14($t0)
.L8003C06C:
/* 03CC6C 8003C06C 240D0001 */  li    $t5, 1
/* 03CC70 8003C070 04400010 */  bltz  $v0, .L8003C0B4
/* 03CC74 8003C074 00000000 */   nop   
/* 03CC78 8003C078 95390008 */  lhu   $t9, 8($t1)
/* 03CC7C 8003C07C 004D2004 */  sllv  $a0, $t5, $v0
/* 03CC80 8003C080 03246024 */  and   $t4, $t9, $a0
/* 03CC84 8003C084 11800043 */  beqz  $t4, .L8003C194
/* 03CC88 8003C088 00000000 */   nop   
/* 03CC8C 8003C08C 912B0049 */  lbu   $t3, 0x49($t1)
/* 03CC90 8003C090 8D2F0004 */  lw    $t7, 4($t1)
/* 03CC94 8003C094 000B7080 */  sll   $t6, $t3, 2
/* 03CC98 8003C098 01EE1021 */  addu  $v0, $t7, $t6
/* 03CC9C 8003C09C 8C580000 */  lw    $t8, ($v0)
/* 03CCA0 8003C0A0 8FAD0054 */  lw    $t5, 0x54($sp)
/* 03CCA4 8003C0A4 00000000 */  nop   
/* 03CCA8 8003C0A8 030DC825 */  or    $t9, $t8, $t5
/* 03CCAC 8003C0AC 10000039 */  b     .L8003C194
/* 03CCB0 8003C0B0 AC590000 */   sw    $t9, ($v0)
.L8003C0B4:
/* 03CCB4 8003C0B4 814C0013 */  lb    $t4, 0x13($t2)
/* 03CCB8 8003C0B8 8D230004 */  lw    $v1, 4($t1)
/* 03CCBC 8003C0BC 1580001A */  bnez  $t4, .L8003C128
/* 03CCC0 8003C0C0 00000000 */   nop   
/* 03CCC4 8003C0C4 8D2B0000 */  lw    $t3, ($t1)
/* 03CCC8 8003C0C8 910E0010 */  lbu   $t6, 0x10($t0)
/* 03CCCC 8003C0CC 856F0000 */  lh    $t7, ($t3)
/* 03CCD0 8003C0D0 00000000 */  nop   
/* 03CCD4 8003C0D4 01EE082A */  slt   $at, $t7, $t6
/* 03CCD8 8003C0D8 1420000A */  bnez  $at, .L8003C104
/* 03CCDC 8003C0DC 00000000 */   nop   
/* 03CCE0 8003C0E0 91380049 */  lbu   $t8, 0x49($t1)
/* 03CCE4 8003C0E4 8FAC0054 */  lw    $t4, 0x54($sp)
/* 03CCE8 8003C0E8 00186880 */  sll   $t5, $t8, 2
/* 03CCEC 8003C0EC 006D1021 */  addu  $v0, $v1, $t5
/* 03CCF0 8003C0F0 8C590000 */  lw    $t9, ($v0)
/* 03CCF4 8003C0F4 00000000 */  nop   
/* 03CCF8 8003C0F8 032C5825 */  or    $t3, $t9, $t4
/* 03CCFC 8003C0FC 10000025 */  b     .L8003C194
/* 03CD00 8003C100 AC4B0000 */   sw    $t3, ($v0)
.L8003C104:
/* 03CD04 8003C104 912F0049 */  lbu   $t7, 0x49($t1)
/* 03CD08 8003C108 8FAD0054 */  lw    $t5, 0x54($sp)
/* 03CD0C 8003C10C 000F7080 */  sll   $t6, $t7, 2
/* 03CD10 8003C110 006E1021 */  addu  $v0, $v1, $t6
/* 03CD14 8003C114 8C580000 */  lw    $t8, ($v0)
/* 03CD18 8003C118 01A0C827 */  not   $t9, $t5
/* 03CD1C 8003C11C 03196024 */  and   $t4, $t8, $t9
/* 03CD20 8003C120 1000001C */  b     .L8003C194
/* 03CD24 8003C124 AC4C0000 */   sw    $t4, ($v0)
.L8003C128:
/* 03CD28 8003C128 912F0048 */  lbu   $t7, 0x48($t1)
/* 03CD2C 8003C12C 8D2B0000 */  lw    $t3, ($t1)
/* 03CD30 8003C130 000F7040 */  sll   $t6, $t7, 1
/* 03CD34 8003C134 016E6821 */  addu  $t5, $t3, $t6
/* 03CD38 8003C138 85B80000 */  lh    $t8, ($t5)
/* 03CD3C 8003C13C 91190010 */  lbu   $t9, 0x10($t0)
/* 03CD40 8003C140 00000000 */  nop   
/* 03CD44 8003C144 0319082A */  slt   $at, $t8, $t9
/* 03CD48 8003C148 1420000A */  bnez  $at, .L8003C174
/* 03CD4C 8003C14C 00000000 */   nop   
/* 03CD50 8003C150 912C0049 */  lbu   $t4, 0x49($t1)
/* 03CD54 8003C154 8FAE0054 */  lw    $t6, 0x54($sp)
/* 03CD58 8003C158 000C7880 */  sll   $t7, $t4, 2
/* 03CD5C 8003C15C 006F1021 */  addu  $v0, $v1, $t7
/* 03CD60 8003C160 8C4B0000 */  lw    $t3, ($v0)
/* 03CD64 8003C164 00000000 */  nop   
/* 03CD68 8003C168 016E6825 */  or    $t5, $t3, $t6
/* 03CD6C 8003C16C 10000009 */  b     .L8003C194
/* 03CD70 8003C170 AC4D0000 */   sw    $t5, ($v0)
.L8003C174:
/* 03CD74 8003C174 91380049 */  lbu   $t8, 0x49($t1)
/* 03CD78 8003C178 8FAF0054 */  lw    $t7, 0x54($sp)
/* 03CD7C 8003C17C 0018C880 */  sll   $t9, $t8, 2
/* 03CD80 8003C180 00791021 */  addu  $v0, $v1, $t9
/* 03CD84 8003C184 8C4C0000 */  lw    $t4, ($v0)
/* 03CD88 8003C188 01E05827 */  not   $t3, $t7
/* 03CD8C 8003C18C 018B7024 */  and   $t6, $t4, $t3
/* 03CD90 8003C190 AC4E0000 */  sw    $t6, ($v0)
.L8003C194:
/* 03CD94 8003C194 8E18004C */  lw    $t8, 0x4c($s0)
/* 03CD98 8003C198 240D00FF */  li    $t5, 255
/* 03CD9C 8003C19C A30D0013 */  sb    $t5, 0x13($t8)
/* 03CDA0 8003C1A0 8E19004C */  lw    $t9, 0x4c($s0)
/* 03CDA4 8003C1A4 00000000 */  nop   
/* 03CDA8 8003C1A8 AF200000 */  sw    $zero, ($t9)
/* 03CDAC 8003C1AC 8E02004C */  lw    $v0, 0x4c($s0)
/* 03CDB0 8003C1B0 00000000 */  nop   
/* 03CDB4 8003C1B4 844F0014 */  lh    $t7, 0x14($v0)
/* 03CDB8 8003C1B8 00000000 */  nop   
/* 03CDBC 8003C1BC 31ECFFF7 */  andi  $t4, $t7, 0xfff7
/* 03CDC0 8003C1C0 A44C0014 */  sh    $t4, 0x14($v0)
/* 03CDC4 8003C1C4 8E0B005C */  lw    $t3, 0x5c($s0)
/* 03CDC8 8003C1C8 00000000 */  nop   
/* 03CDCC 8003C1CC AD600100 */  sw    $zero, 0x100($t3)
/* 03CDD0 8003C1D0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 03CDD4 8003C1D4 8FB00020 */  lw    $s0, 0x20($sp)
/* 03CDD8 8003C1D8 03E00008 */  jr    $ra
/* 03CDDC 8003C1DC 27BD0060 */   addiu $sp, $sp, 0x60

