.late_rodata
glabel D_800E84D0
.double 1.1
glabel D_800E84D8
.float 1.2

.text
glabel renderTrackSelect
/* 090654 8008FA54 27BDFF80 */  addiu $sp, $sp, -0x80
/* 090658 8008FA58 3C0E8012 */  lui   $t6, %hi(D_80126478) # $t6, 0x8012
/* 09065C 8008FA5C 3C188000 */  lui   $t8, %hi(osTvType) # $t8, 0x8000
/* 090660 8008FA60 8DCE6478 */  lw    $t6, %lo(D_80126478)($t6)
/* 090664 8008FA64 8F180300 */  lw    $t8, %lo(osTvType)($t8)
/* 090668 8008FA68 AFB50038 */  sw    $s5, 0x38($sp)
/* 09066C 8008FA6C AFB40034 */  sw    $s4, 0x34($sp)
/* 090670 8008FA70 AFB2002C */  sw    $s2, 0x2c($sp)
/* 090674 8008FA74 00C09025 */  move  $s2, $a2
/* 090678 8008FA78 AFBF003C */  sw    $ra, 0x3c($sp)
/* 09067C 8008FA7C AFB30030 */  sw    $s3, 0x30($sp)
/* 090680 8008FA80 AFB10028 */  sw    $s1, 0x28($sp)
/* 090684 8008FA84 AFB00024 */  sw    $s0, 0x24($sp)
/* 090688 8008FA88 AFA40080 */  sw    $a0, 0x80($sp)
/* 09068C 8008FA8C AFA50084 */  sw    $a1, 0x84($sp)
/* 090690 8008FA90 AFA7008C */  sw    $a3, 0x8c($sp)
/* 090694 8008FA94 00001025 */  move  $v0, $zero
/* 090698 8008FA98 249400A0 */  addiu $s4, $a0, 0xa0
/* 09069C 8008FA9C 17000002 */  bnez  $t8, .L8008FAA8
/* 0906A0 8008FAA0 01C5A823 */   subu  $s5, $t6, $a1
/* 0906A4 8008FAA4 2402000C */  li    $v0, 12
.L8008FAA8:
/* 0906A8 8008FAA8 24040002 */  li    $a0, 2
/* 0906AC 8008FAAC 0C0310BB */  jal   set_text_font
/* 0906B0 8008FAB0 AFA2006C */   sw    $v0, 0x6c($sp)
/* 0906B4 8008FAB4 00002025 */  move  $a0, $zero
/* 0906B8 8008FAB8 00002825 */  move  $a1, $zero
/* 0906BC 8008FABC 00003025 */  move  $a2, $zero
/* 0906C0 8008FAC0 0C0310F3 */  jal   set_text_background_colour
/* 0906C4 8008FAC4 00003825 */   move  $a3, $zero
/* 0906C8 8008FAC8 3C02800E */  lui   $v0, %hi(gMenuDelay) # $v0, 0x800e
/* 0906CC 8008FACC 8C42F47C */  lw    $v0, %lo(gMenuDelay)($v0)
/* 0906D0 8008FAD0 241100FF */  li    $s1, 255
/* 0906D4 8008FAD4 18400008 */  blez  $v0, .L8008FAF8
/* 0906D8 8008FAD8 3C098012 */   lui   $t1, %hi(D_801269F0) # $t1, 0x8012
/* 0906DC 8008FADC 0002C900 */  sll   $t9, $v0, 4
/* 0906E0 8008FAE0 240800FF */  li    $t0, 255
/* 0906E4 8008FAE4 01198823 */  subu  $s1, $t0, $t9
/* 0906E8 8008FAE8 06210003 */  bgez  $s1, .L8008FAF8
/* 0906EC 8008FAEC 00000000 */   nop   
/* 0906F0 8008FAF0 10000001 */  b     .L8008FAF8
/* 0906F4 8008FAF4 00008825 */   move  $s1, $zero
.L8008FAF8:
/* 0906F8 8008FAF8 8D2969F0 */  lw    $t1, %lo(D_801269F0)($t1)
/* 0906FC 8008FAFC 00000000 */  nop   
/* 090700 8008FB00 1249002F */  beq   $s2, $t1, .L8008FBC0
/* 090704 8008FB04 00000000 */   nop   
/* 090708 8008FB08 0C01AC75 */  jal   get_hub_area_id
/* 09070C 8008FB0C 24040003 */   li    $a0, 3
/* 090710 8008FB10 0C01AF77 */  jal   get_level_name
/* 090714 8008FB14 00402025 */   move  $a0, $v0
/* 090718 8008FB18 16420004 */  bne   $s2, $v0, .L8008FB2C
/* 09071C 8008FB1C 00002025 */   move  $a0, $zero
/* 090720 8008FB20 0C031059 */  jal   set_kerning
/* 090724 8008FB24 24040001 */   li    $a0, 1
/* 090728 8008FB28 00002025 */  move  $a0, $zero
.L8008FB2C:
/* 09072C 8008FB2C 00002825 */  move  $a1, $zero
/* 090730 8008FB30 00003025 */  move  $a2, $zero
/* 090734 8008FB34 240700FF */  li    $a3, 255
/* 090738 8008FB38 06210003 */  bgez  $s1, .L8008FB48
/* 09073C 8008FB3C 00115043 */   sra   $t2, $s1, 1
/* 090740 8008FB40 26210001 */  addiu $at, $s1, 1
/* 090744 8008FB44 00015043 */  sra   $t2, $at, 1
.L8008FB48:
/* 090748 8008FB48 0C0310E1 */  jal   set_text_colour
/* 09074C 8008FB4C AFAA0010 */   sw    $t2, 0x10($sp)
/* 090750 8008FB50 8FAB006C */  lw    $t3, 0x6c($sp)
/* 090754 8008FB54 3C138012 */  lui   $s3, %hi(sMenuCurrDisplayList) # $s3, 0x8012
/* 090758 8008FB58 267363A0 */  addiu $s3, %lo(sMenuCurrDisplayList) # addiu $s3, $s3, 0x63a0
/* 09075C 8008FB5C 240C000C */  li    $t4, 12
/* 090760 8008FB60 02AB8023 */  subu  $s0, $s5, $t3
/* 090764 8008FB64 2606FFAB */  addiu $a2, $s0, -0x55
/* 090768 8008FB68 AFAC0010 */  sw    $t4, 0x10($sp)
/* 09076C 8008FB6C 02602025 */  move  $a0, $s3
/* 090770 8008FB70 240500A1 */  li    $a1, 161
/* 090774 8008FB74 0C031110 */  jal   draw_text
/* 090778 8008FB78 02403825 */   move  $a3, $s2
/* 09077C 8008FB7C 240400FF */  li    $a0, 255
/* 090780 8008FB80 240500FF */  li    $a1, 255
/* 090784 8008FB84 240600FF */  li    $a2, 255
/* 090788 8008FB88 00003825 */  move  $a3, $zero
/* 09078C 8008FB8C 0C0310E1 */  jal   set_text_colour
/* 090790 8008FB90 AFB10010 */   sw    $s1, 0x10($sp)
/* 090794 8008FB94 240D000C */  li    $t5, 12
/* 090798 8008FB98 AFAD0010 */  sw    $t5, 0x10($sp)
/* 09079C 8008FB9C 02602025 */  move  $a0, $s3
/* 0907A0 8008FBA0 240500A0 */  li    $a1, 160
/* 0907A4 8008FBA4 2606FFA8 */  addiu $a2, $s0, -0x58
/* 0907A8 8008FBA8 0C031110 */  jal   draw_text
/* 0907AC 8008FBAC 02403825 */   move  $a3, $s2
/* 0907B0 8008FBB0 3C018012 */  lui   $at, %hi(D_801269F0) # $at, 0x8012
/* 0907B4 8008FBB4 AC3269F0 */  sw    $s2, %lo(D_801269F0)($at)
/* 0907B8 8008FBB8 0C031059 */  jal   set_kerning
/* 0907BC 8008FBBC 00002025 */   move  $a0, $zero
.L8008FBC0:
/* 0907C0 8008FBC0 3C138012 */  lui   $s3, %hi(sMenuCurrDisplayList) # $s3, 0x8012
/* 0907C4 8008FBC4 267363A0 */  addiu $s3, %lo(sMenuCurrDisplayList) # addiu $s3, $s3, 0x63a0
/* 0907C8 8008FBC8 240400FF */  li    $a0, 255
/* 0907CC 8008FBCC 240500FF */  li    $a1, 255
/* 0907D0 8008FBD0 240600FF */  li    $a2, 255
/* 0907D4 8008FBD4 00003825 */  move  $a3, $zero
/* 0907D8 8008FBD8 0C0310E1 */  jal   set_text_colour
/* 0907DC 8008FBDC AFB10010 */   sw    $s1, 0x10($sp)
/* 0907E0 8008FBE0 8FAE006C */  lw    $t6, 0x6c($sp)
/* 0907E4 8008FBE4 8FA7008C */  lw    $a3, 0x8c($sp)
/* 0907E8 8008FBE8 240F000C */  li    $t7, 12
/* 0907EC 8008FBEC 01D53021 */  addu  $a2, $t6, $s5
/* 0907F0 8008FBF0 24C60058 */  addiu $a2, $a2, 0x58
/* 0907F4 8008FBF4 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0907F8 8008FBF8 02602025 */  move  $a0, $s3
/* 0907FC 8008FBFC 0C031110 */  jal   draw_text
/* 090800 8008FC00 02802825 */   move  $a1, $s4
/* 090804 8008FC04 8FB00090 */  lw    $s0, 0x90($sp)
/* 090808 8008FC08 3C028012 */  lui   $v0, %hi(gTrackSelectViewportY) # $v0, 0x8012
/* 09080C 8008FC0C 1A000065 */  blez  $s0, .L8008FDA4
/* 090810 8008FC10 8FAD0080 */   lw    $t5, 0x80($sp)
/* 090814 8008FC14 8C426480 */  lw    $v0, %lo(gTrackSelectViewportY)($v0)
/* 090818 8008FC18 00000000 */  nop   
/* 09081C 8008FC1C 00021883 */  sra   $v1, $v0, 2
/* 090820 8008FC20 02A3C023 */  subu  $t8, $s5, $v1
/* 090824 8008FC24 0302082A */  slt   $at, $t8, $v0
/* 090828 8008FC28 1020005D */  beqz  $at, .L8008FDA0
/* 09082C 8008FC2C 00754021 */   addu  $t0, $v1, $s5
/* 090830 8008FC30 1900005B */  blez  $t0, .L8008FDA0
/* 090834 8008FC34 3C013FA0 */   li    $at, 0x3FA00000 # 1.250000
/* 090838 8008FC38 44816000 */  mtc1  $at, $f12
/* 09083C 8008FC3C 3C198000 */  lui   $t9, %hi(osTvType) # $t9, 0x8000
/* 090840 8008FC40 8F390300 */  lw    $t9, %lo(osTvType)($t9)
/* 090844 8008FC44 46006086 */  mov.s $f2, $f12
/* 090848 8008FC48 17200007 */  bnez  $t9, .L8008FC68
/* 09084C 8008FC4C 46006006 */   mov.s $f0, $f12
/* 090850 8008FC50 3C01800F */  lui   $at, %hi(D_800E84D0 + 4) # $at, 0x800f
/* 090854 8008FC54 C42784D0 */  lwc1  $f7, %lo(D_800E84D0)($at)
/* 090858 8008FC58 C42684D4 */  lwc1  $f6, %lo(D_800E84D0 + 4)($at)
/* 09085C 8008FC5C 46006121 */  cvt.d.s $f4, $f12
/* 090860 8008FC60 46262202 */  mul.d $f8, $f4, $f6
/* 090864 8008FC64 46204020 */  cvt.s.d $f0, $f8
.L8008FC68:
/* 090868 8008FC68 8FA90098 */  lw    $t1, 0x98($sp)
/* 09086C 8008FC6C 2682FFB0 */  addiu $v0, $s4, -0x50
/* 090870 8008FC70 11200019 */  beqz  $t1, .L8008FCD8
/* 090874 8008FC74 26980050 */   addiu $t8, $s4, 0x50
/* 090878 8008FC78 27AA005C */  addiu $t2, $sp, 0x5c
/* 09087C 8008FC7C AFAA0010 */  sw    $t2, 0x10($sp)
/* 090880 8008FC80 00002025 */  move  $a0, $zero
/* 090884 8008FC84 27A50068 */  addiu $a1, $sp, 0x68
/* 090888 8008FC88 27A60064 */  addiu $a2, $sp, 0x64
/* 09088C 8008FC8C 0C019B0B */  jal   copy_viewport_frame_size_to_coords
/* 090890 8008FC90 27A70060 */   addiu $a3, $sp, 0x60
/* 090894 8008FC94 8FA20068 */  lw    $v0, 0x68($sp)
/* 090898 8008FC98 8FAB0060 */  lw    $t3, 0x60($sp)
/* 09089C 8008FC9C 8FAD005C */  lw    $t5, 0x5c($sp)
/* 0908A0 8008FCA0 8FAE0064 */  lw    $t6, 0x64($sp)
/* 0908A4 8008FCA4 01626023 */  subu  $t4, $t3, $v0
/* 0908A8 8008FCA8 448C5000 */  mtc1  $t4, $f10
/* 0908AC 8008FCAC 3C013C00 */  li    $at, 0x3C000000 # 0.007812
/* 0908B0 8008FCB0 01AE7823 */  subu  $t7, $t5, $t6
/* 0908B4 8008FCB4 46805420 */  cvt.s.w $f16, $f10
/* 0908B8 8008FCB8 44819000 */  mtc1  $at, $f18
/* 0908BC 8008FCBC 448F2000 */  mtc1  $t7, $f4
/* 0908C0 8008FCC0 3C0142C0 */  li    $at, 0x42C00000 # 96.000000
/* 0908C4 8008FCC4 468021A0 */  cvt.s.w $f6, $f4
/* 0908C8 8008FCC8 44814000 */  mtc1  $at, $f8
/* 0908CC 8008FCCC 46128082 */  mul.s $f2, $f16, $f18
/* 0908D0 8008FCD0 10000002 */  b     .L8008FCDC
/* 0908D4 8008FCD4 46083003 */   div.s $f0, $f6, $f8
.L8008FCD8:
/* 0908D8 8008FCD8 AFB80060 */  sw    $t8, 0x60($sp)
.L8008FCDC:
/* 0908DC 8008FCDC 28410140 */  slti  $at, $v0, 0x140
/* 0908E0 8008FCE0 10200018 */  beqz  $at, .L8008FD44
/* 0908E4 8008FCE4 AFA20068 */   sw    $v0, 0x68($sp)
/* 0908E8 8008FCE8 1A800016 */  blez  $s4, .L8008FD44
/* 0908EC 8008FCEC 02602025 */   move  $a0, $s3
/* 0908F0 8008FCF0 44945000 */  mtc1  $s4, $f10
/* 0908F4 8008FCF4 44958000 */  mtc1  $s5, $f16
/* 0908F8 8008FCF8 468052A0 */  cvt.s.w $f10, $f10
/* 0908FC 8008FCFC 320800FF */  andi  $t0, $s0, 0xff
/* 090900 8008FD00 2401FF00 */  li    $at, -256
/* 090904 8008FD04 46808420 */  cvt.s.w $f16, $f16
/* 090908 8008FD08 0101C825 */  or    $t9, $t0, $at
/* 09090C 8008FD0C 44065000 */  mfc1  $a2, $f10
/* 090910 8008FD10 44078000 */  mfc1  $a3, $f16
/* 090914 8008FD14 8FA5009C */  lw    $a1, 0x9c($sp)
/* 090918 8008FD18 24091000 */  li    $t1, 4096
/* 09091C 8008FD1C AFA9001C */  sw    $t1, 0x1c($sp)
/* 090920 8008FD20 AFB90018 */  sw    $t9, 0x18($sp)
/* 090924 8008FD24 E7A20010 */  swc1  $f2, 0x10($sp)
/* 090928 8008FD28 E7A00014 */  swc1  $f0, 0x14($sp)
/* 09092C 8008FD2C E7A00054 */  swc1  $f0, 0x54($sp)
/* 090930 8008FD30 0C01E340 */  jal   render_texture_rectangle_scaled
/* 090934 8008FD34 E7A20058 */   swc1  $f2, 0x58($sp)
/* 090938 8008FD38 C7A00054 */  lwc1  $f0, 0x54($sp)
/* 09093C 8008FD3C C7A20058 */  lwc1  $f2, 0x58($sp)
/* 090940 8008FD40 00000000 */  nop   
.L8008FD44:
/* 090944 8008FD44 2A810140 */  slti  $at, $s4, 0x140
/* 090948 8008FD48 10200013 */  beqz  $at, .L8008FD98
/* 09094C 8008FD4C 00000000 */   nop   
/* 090950 8008FD50 8FAA0060 */  lw    $t2, 0x60($sp)
/* 090954 8008FD54 8FA5009C */  lw    $a1, 0x9c($sp)
/* 090958 8008FD58 1940000F */  blez  $t2, .L8008FD98
/* 09095C 8008FD5C 02602025 */   move  $a0, $s3
/* 090960 8008FD60 44949000 */  mtc1  $s4, $f18
/* 090964 8008FD64 44952000 */  mtc1  $s5, $f4
/* 090968 8008FD68 468094A0 */  cvt.s.w $f18, $f18
/* 09096C 8008FD6C 320B00FF */  andi  $t3, $s0, 0xff
/* 090970 8008FD70 2401FF00 */  li    $at, -256
/* 090974 8008FD74 46802120 */  cvt.s.w $f4, $f4
/* 090978 8008FD78 01616025 */  or    $t4, $t3, $at
/* 09097C 8008FD7C 44069000 */  mfc1  $a2, $f18
/* 090980 8008FD80 44072000 */  mfc1  $a3, $f4
/* 090984 8008FD84 AFAC0018 */  sw    $t4, 0x18($sp)
/* 090988 8008FD88 E7A20010 */  swc1  $f2, 0x10($sp)
/* 09098C 8008FD8C E7A00014 */  swc1  $f0, 0x14($sp)
/* 090990 8008FD90 0C01E340 */  jal   render_texture_rectangle_scaled
/* 090994 8008FD94 AFA0001C */   sw    $zero, 0x1c($sp)
.L8008FD98:
/* 090998 8008FD98 0C01ECF4 */  jal   func_8007B3D0
/* 09099C 8008FD9C 02602025 */   move  $a0, $s3
.L8008FDA0:
/* 0909A0 8008FDA0 8FAD0080 */  lw    $t5, 0x80($sp)
.L8008FDA4:
/* 0909A4 8008FDA4 3C03800E */  lui   $v1, %hi(gMenuImageStack) # $v1, 0x800e
/* 0909A8 8008FDA8 448D3000 */  mtc1  $t5, $f6
/* 0909AC 8008FDAC 8FA40094 */  lw    $a0, 0x94($sp)
/* 0909B0 8008FDB0 2463F75C */  addiu $v1, %lo(gMenuImageStack) # addiu $v1, $v1, -0x8a4
/* 0909B4 8008FDB4 46803220 */  cvt.s.w $f8, $f6
/* 0909B8 8008FDB8 8C6E0000 */  lw    $t6, ($v1)
/* 0909BC 8008FDBC 00041140 */  sll   $v0, $a0, 5
/* 0909C0 8008FDC0 01C27821 */  addu  $t7, $t6, $v0
/* 0909C4 8008FDC4 E5E8000C */  swc1  $f8, 0xc($t7)
/* 0909C8 8008FDC8 8FB80084 */  lw    $t8, 0x84($sp)
/* 0909CC 8008FDCC 8C680000 */  lw    $t0, ($v1)
/* 0909D0 8008FDD0 44985000 */  mtc1  $t8, $f10
/* 0909D4 8008FDD4 0102C821 */  addu  $t9, $t0, $v0
/* 0909D8 8008FDD8 46805420 */  cvt.s.w $f16, $f10
/* 0909DC 8008FDDC 3C098000 */  lui   $t1, %hi(osTvType) # $t1, 0x8000
/* 0909E0 8008FDE0 3C0B800E */  lui   $t3, %hi(D_800E06C4) # $t3, 0x800e
/* 0909E4 8008FDE4 E7300010 */  swc1  $f16, 0x10($t9)
/* 0909E8 8008FDE8 8D290300 */  lw    $t1, %lo(osTvType)($t1)
/* 0909EC 8008FDEC 3C01800F */  lui   $at, %hi(D_800E84D8) # $at, 0x800f
/* 0909F0 8008FDF0 15200008 */  bnez  $t1, .L8008FE14
/* 0909F4 8008FDF4 256B06C4 */   addiu $t3, %lo(D_800E06C4) # addiu $t3, $t3, 0x6c4
/* 0909F8 8008FDF8 C43284D8 */  lwc1  $f18, %lo(D_800E84D8)($at)
/* 0909FC 8008FDFC 3C0A800E */  lui   $t2, %hi(D_800E06D4) # $t2, 0x800e
/* 090A00 8008FE00 3C01800E */  lui   $at, %hi(D_800DF454) # $at, 0x800e
/* 090A04 8008FE04 254A06D4 */  addiu $t2, %lo(D_800E06D4) # addiu $t2, $t2, 0x6d4
/* 090A08 8008FE08 AFAA0050 */  sw    $t2, 0x50($sp)
/* 090A0C 8008FE0C 10000002 */  b     .L8008FE18
/* 090A10 8008FE10 E432F454 */   swc1  $f18, %lo(D_800DF454)($at)
.L8008FE14:
/* 090A14 8008FE14 AFAB0050 */  sw    $t3, 0x50($sp)
.L8008FE18:
/* 090A18 8008FE18 0C027298 */  jal   func_8009CA60
/* 090A1C 8008FE1C 00000000 */   nop   
/* 090A20 8008FE20 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 090A24 8008FE24 44812000 */  mtc1  $at, $f4
/* 090A28 8008FE28 3C01800E */  lui   $at, %hi(D_800DF454) # $at, 0x800e
/* 090A2C 8008FE2C 00008825 */  move  $s1, $zero
/* 090A30 8008FE30 E424F454 */  swc1  $f4, %lo(D_800DF454)($at)
/* 090A34 8008FE34 8FAE00A0 */  lw    $t6, 0xa0($sp)
.L8008FE38:
/* 090A38 8008FE38 240C0001 */  li    $t4, 1
/* 090A3C 8008FE3C 022C6804 */  sllv  $t5, $t4, $s1
/* 090A40 8008FE40 01AE7824 */  and   $t7, $t5, $t6
/* 090A44 8008FE44 11E00026 */  beqz  $t7, .L8008FEE0
/* 090A48 8008FE48 02602025 */   move  $a0, $s3
/* 090A4C 8008FE4C 8FB90050 */  lw    $t9, 0x50($sp)
/* 090A50 8008FE50 00115080 */  sll   $t2, $s1, 2
/* 090A54 8008FE54 032A8021 */  addu  $s0, $t9, $t2
/* 090A58 8008FE58 860B0000 */  lh    $t3, ($s0)
/* 090A5C 8008FE5C 860C0002 */  lh    $t4, 2($s0)
/* 090A60 8008FE60 3C08800E */  lui   $t0, %hi(gMenuSelectionArrows) # $t0, 0x800e
/* 090A64 8008FE64 25080678 */  addiu $t0, %lo(gMenuSelectionArrows) # addiu $t0, $t0, 0x678
/* 090A68 8008FE68 0011C080 */  sll   $t8, $s1, 2
/* 090A6C 8008FE6C 03089021 */  addu  $s2, $t8, $t0
/* 090A70 8008FE70 8E450000 */  lw    $a1, ($s2)
/* 090A74 8008FE74 240D0080 */  li    $t5, 128
/* 090A78 8008FE78 01743021 */  addu  $a2, $t3, $s4
/* 090A7C 8008FE7C 01953821 */  addu  $a3, $t4, $s5
/* 090A80 8008FE80 24E70001 */  addiu $a3, $a3, 1
/* 090A84 8008FE84 24C60001 */  addiu $a2, $a2, 1
/* 090A88 8008FE88 AFAD001C */  sw    $t5, 0x1c($sp)
/* 090A8C 8008FE8C AFA00018 */  sw    $zero, 0x18($sp)
/* 090A90 8008FE90 AFA00014 */  sw    $zero, 0x14($sp)
/* 090A94 8008FE94 0C01E2AE */  jal   render_textured_rectangle
/* 090A98 8008FE98 AFA00010 */   sw    $zero, 0x10($sp)
/* 090A9C 8008FE9C 860E0000 */  lh    $t6, ($s0)
/* 090AA0 8008FEA0 860F0002 */  lh    $t7, 2($s0)
/* 090AA4 8008FEA4 8E450000 */  lw    $a1, ($s2)
/* 090AA8 8008FEA8 241800FF */  li    $t8, 255
/* 090AAC 8008FEAC 240800FF */  li    $t0, 255
/* 090AB0 8008FEB0 240900FF */  li    $t1, 255
/* 090AB4 8008FEB4 241900FF */  li    $t9, 255
/* 090AB8 8008FEB8 01D43021 */  addu  $a2, $t6, $s4
/* 090ABC 8008FEBC 01F53821 */  addu  $a3, $t7, $s5
/* 090AC0 8008FEC0 24E7FFFF */  addiu $a3, $a3, -1
/* 090AC4 8008FEC4 24C6FFFF */  addiu $a2, $a2, -1
/* 090AC8 8008FEC8 AFB9001C */  sw    $t9, 0x1c($sp)
/* 090ACC 8008FECC AFA90018 */  sw    $t1, 0x18($sp)
/* 090AD0 8008FED0 AFA80014 */  sw    $t0, 0x14($sp)
/* 090AD4 8008FED4 AFB80010 */  sw    $t8, 0x10($sp)
/* 090AD8 8008FED8 0C01E2AE */  jal   render_textured_rectangle
/* 090ADC 8008FEDC 02602025 */   move  $a0, $s3
.L8008FEE0:
/* 090AE0 8008FEE0 26310001 */  addiu $s1, $s1, 1
/* 090AE4 8008FEE4 24010004 */  li    $at, 4
/* 090AE8 8008FEE8 1621FFD3 */  bne   $s1, $at, .L8008FE38
/* 090AEC 8008FEEC 8FAE00A0 */   lw    $t6, 0xa0($sp)
/* 090AF0 8008FEF0 0C01ECF4 */  jal   func_8007B3D0
/* 090AF4 8008FEF4 02602025 */   move  $a0, $s3
/* 090AF8 8008FEF8 8FBF003C */  lw    $ra, 0x3c($sp)
/* 090AFC 8008FEFC 8FB00024 */  lw    $s0, 0x24($sp)
/* 090B00 8008FF00 8FB10028 */  lw    $s1, 0x28($sp)
/* 090B04 8008FF04 8FB2002C */  lw    $s2, 0x2c($sp)
/* 090B08 8008FF08 8FB30030 */  lw    $s3, 0x30($sp)
/* 090B0C 8008FF0C 8FB40034 */  lw    $s4, 0x34($sp)
/* 090B10 8008FF10 8FB50038 */  lw    $s5, 0x38($sp)
/* 090B14 8008FF14 03E00008 */  jr    $ra
/* 090B18 8008FF18 27BD0080 */   addiu $sp, $sp, 0x80

