.late_rodata
glabel jpt_800E9330
.word L800C3958, L800C3984, L800C3A30, L800C3AA8, L800C3ADC, L800C3B00, L800C3B2C, L800C3B50, L800C3B88, L800C3BA0

.text
glabel func_800C38B4
/* 0C44B4 800C38B4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0C44B8 800C38B8 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0C44BC 800C38BC 3C138013 */  lui   $s3, %hi(D_8012A7A0) # $s3, 0x8013
/* 0C44C0 800C38C0 2673A7A0 */  addiu $s3, %lo(D_8012A7A0) # addiu $s3, $s3, -0x5860
/* 0C44C4 800C38C4 8E6E0000 */  lw    $t6, ($s3)
/* 0C44C8 800C38C8 AFB00020 */  sw    $s0, 0x20($sp)
/* 0C44CC 800C38CC AFBF0044 */  sw    $ra, 0x44($sp)
/* 0C44D0 800C38D0 AFBE0040 */  sw    $fp, 0x40($sp)
/* 0C44D4 800C38D4 AFB7003C */  sw    $s7, 0x3c($sp)
/* 0C44D8 800C38D8 AFB60038 */  sw    $s6, 0x38($sp)
/* 0C44DC 800C38DC AFB50034 */  sw    $s5, 0x34($sp)
/* 0C44E0 800C38E0 AFB40030 */  sw    $s4, 0x30($sp)
/* 0C44E4 800C38E4 AFB20028 */  sw    $s2, 0x28($sp)
/* 0C44E8 800C38E8 AFB10024 */  sw    $s1, 0x24($sp)
/* 0C44EC 800C38EC 01C48021 */  addu  $s0, $t6, $a0
/* 0C44F0 800C38F0 92020000 */  lbu   $v0, ($s0)
/* 0C44F4 800C38F4 00808825 */  move  $s1, $a0
/* 0C44F8 800C38F8 28410003 */  slti  $at, $v0, 3
/* 0C44FC 800C38FC 142000B2 */  bnez  $at, .L800C3BC8
/* 0C4500 800C3900 00A09025 */   move  $s2, $a1
/* 0C4504 800C3904 2841000D */  slti  $at, $v0, 0xd
/* 0C4508 800C3908 102000AF */  beqz  $at, .L800C3BC8
/* 0C450C 800C390C 241E0004 */   li    $fp, 4
/* 0C4510 800C3910 3C178013 */  lui   $s7, %hi(D_8012A785) # $s7, 0x8013
/* 0C4514 800C3914 3C168013 */  lui   $s6, %hi(D_8012A787) # $s6, 0x8013
/* 0C4518 800C3918 3C158013 */  lui   $s5, %hi(D_8012A788) # $s5, 0x8013
/* 0C451C 800C391C 3C148013 */  lui   $s4, %hi(D_8012A786) # $s4, 0x8013
/* 0C4520 800C3920 2694A786 */  addiu $s4, %lo(D_8012A786) # addiu $s4, $s4, -0x587a
/* 0C4524 800C3924 26B5A788 */  addiu $s5, %lo(D_8012A788) # addiu $s5, $s5, -0x5878
/* 0C4528 800C3928 26D6A787 */  addiu $s6, %lo(D_8012A787) # addiu $s6, $s6, -0x5879
/* 0C452C 800C392C 26F7A785 */  addiu $s7, %lo(D_8012A785) # addiu $s7, $s7, -0x587b
/* 0C4530 800C3930 244FFFFD */  addiu $t7, $v0, -3
.L800C3934:
/* 0C4534 800C3934 2DE1000A */  sltiu $at, $t7, 0xa
/* 0C4538 800C3938 1020009E */  beqz  $at, .L800C3BB4
/* 0C453C 800C393C 000F7880 */   sll   $t7, $t7, 2
/* 0C4540 800C3940 3C01800F */  lui   $at, %hi(jpt_800E9330) # $at, 0x800f
/* 0C4544 800C3944 002F0821 */  addu  $at, $at, $t7
/* 0C4548 800C3948 8C2F9330 */  lw    $t7, %lo(jpt_800E9330)($at)
/* 0C454C 800C394C 00000000 */  nop   
/* 0C4550 800C3950 01E00008 */  jr    $t7
/* 0C4554 800C3954 00000000 */   nop   
glabel L800C3958
/* 0C4558 800C3958 92050001 */  lbu   $a1, 1($s0)
/* 0C455C 800C395C 26310002 */  addiu $s1, $s1, 2
/* 0C4560 800C3960 24040001 */  li    $a0, 1
/* 0C4564 800C3964 0C0313DF */  jal   set_dialogue_font
/* 0C4568 800C3968 AE450000 */   sw    $a1, ($s2)
/* 0C456C 800C396C 8E790000 */  lw    $t9, ($s3)
/* 0C4570 800C3970 00000000 */  nop   
/* 0C4574 800C3974 03318021 */  addu  $s0, $t9, $s1
/* 0C4578 800C3978 92020000 */  lbu   $v0, ($s0)
/* 0C457C 800C397C 1000008E */  b     .L800C3BB8
/* 0C4580 800C3980 28410003 */   slti  $at, $v0, 3
glabel L800C3984
/* 0C4584 800C3984 92090001 */  lbu   $t1, 1($s0)
/* 0C4588 800C3988 3C0E8000 */  lui   $t6, %hi(osTvType) # $t6, 0x8000
/* 0C458C 800C398C AE490004 */  sw    $t1, 4($s2)
/* 0C4590 800C3990 8E6A0000 */  lw    $t2, ($s3)
/* 0C4594 800C3994 240100F0 */  li    $at, 240
/* 0C4598 800C3998 022A5821 */  addu  $t3, $s1, $t2
/* 0C459C 800C399C 916D0002 */  lbu   $t5, 2($t3)
/* 0C45A0 800C39A0 00000000 */  nop   
/* 0C45A4 800C39A4 AE4D0008 */  sw    $t5, 8($s2)
/* 0C45A8 800C39A8 8DCE0300 */  lw    $t6, %lo(osTvType)($t6)
/* 0C45AC 800C39AC 000D7940 */  sll   $t7, $t5, 5
/* 0C45B0 800C39B0 15C00007 */  bnez  $t6, .L800C39D0
/* 0C45B4 800C39B4 01ED7821 */   addu  $t7, $t7, $t5
/* 0C45B8 800C39B8 000F78C0 */  sll   $t7, $t7, 3
/* 0C45BC 800C39BC 01E1001A */  div   $zero, $t7, $at
/* 0C45C0 800C39C0 00003012 */  mflo  $a2
/* 0C45C4 800C39C4 AE460008 */  sw    $a2, 8($s2)
/* 0C45C8 800C39C8 10000003 */  b     .L800C39D8
/* 0C45CC 800C39CC 00CD1023 */   subu  $v0, $a2, $t5
.L800C39D0:
/* 0C45D0 800C39D0 8E460008 */  lw    $a2, 8($s2)
/* 0C45D4 800C39D4 00001025 */  move  $v0, $zero
.L800C39D8:
/* 0C45D8 800C39D8 8E790000 */  lw    $t9, ($s3)
/* 0C45DC 800C39DC 8E450004 */  lw    $a1, 4($s2)
/* 0C45E0 800C39E0 02394021 */  addu  $t0, $s1, $t9
/* 0C45E4 800C39E4 910A0003 */  lbu   $t2, 3($t0)
/* 0C45E8 800C39E8 24040001 */  li    $a0, 1
/* 0C45EC 800C39EC 25470041 */  addiu $a3, $t2, 0x41
/* 0C45F0 800C39F0 AE47000C */  sw    $a3, 0xc($s2)
/* 0C45F4 800C39F4 8E6C0000 */  lw    $t4, ($s3)
/* 0C45F8 800C39F8 00000000 */  nop   
/* 0C45FC 800C39FC 022C6821 */  addu  $t5, $s1, $t4
/* 0C4600 800C3A00 91AF0004 */  lbu   $t7, 4($t5)
/* 0C4604 800C3A04 26310005 */  addiu $s1, $s1, 5
/* 0C4608 800C3A08 01E2C021 */  addu  $t8, $t7, $v0
/* 0C460C 800C3A0C AE580010 */  sw    $t8, 0x10($s2)
/* 0C4610 800C3A10 0C0313B7 */  jal   set_current_dialogue_box_coords
/* 0C4614 800C3A14 AFB80010 */   sw    $t8, 0x10($sp)
/* 0C4618 800C3A18 8E680000 */  lw    $t0, ($s3)
/* 0C461C 800C3A1C 00000000 */  nop   
/* 0C4620 800C3A20 01118021 */  addu  $s0, $t0, $s1
/* 0C4624 800C3A24 92020000 */  lbu   $v0, ($s0)
/* 0C4628 800C3A28 10000063 */  b     .L800C3BB8
/* 0C462C 800C3A2C 28410003 */   slti  $at, $v0, 3
glabel L800C3A30
/* 0C4630 800C3A30 92050001 */  lbu   $a1, 1($s0)
/* 0C4634 800C3A34 24040001 */  li    $a0, 1
/* 0C4638 800C3A38 AE450014 */  sw    $a1, 0x14($s2)
/* 0C463C 800C3A3C 8E6A0000 */  lw    $t2, ($s3)
/* 0C4640 800C3A40 00000000 */  nop   
/* 0C4644 800C3A44 022A5821 */  addu  $t3, $s1, $t2
/* 0C4648 800C3A48 91660002 */  lbu   $a2, 2($t3)
/* 0C464C 800C3A4C 240A00FF */  li    $t2, 255
/* 0C4650 800C3A50 AE460018 */  sw    $a2, 0x18($s2)
/* 0C4654 800C3A54 8E6D0000 */  lw    $t5, ($s3)
/* 0C4658 800C3A58 00000000 */  nop   
/* 0C465C 800C3A5C 022D7021 */  addu  $t6, $s1, $t5
/* 0C4660 800C3A60 91C70003 */  lbu   $a3, 3($t6)
/* 0C4664 800C3A64 00000000 */  nop   
/* 0C4668 800C3A68 AE47001C */  sw    $a3, 0x1c($s2)
/* 0C466C 800C3A6C 8E780000 */  lw    $t8, ($s3)
/* 0C4670 800C3A70 00000000 */  nop   
/* 0C4674 800C3A74 0238C821 */  addu  $t9, $s1, $t8
/* 0C4678 800C3A78 93280004 */  lbu   $t0, 4($t9)
/* 0C467C 800C3A7C 26310005 */  addiu $s1, $s1, 5
/* 0C4680 800C3A80 AE480020 */  sw    $t0, 0x20($s2)
/* 0C4684 800C3A84 AFAA0014 */  sw    $t2, 0x14($sp)
/* 0C4688 800C3A88 0C031400 */  jal   set_current_text_colour
/* 0C468C 800C3A8C AFA80010 */   sw    $t0, 0x10($sp)
/* 0C4690 800C3A90 8E6B0000 */  lw    $t3, ($s3)
/* 0C4694 800C3A94 00000000 */  nop   
/* 0C4698 800C3A98 01718021 */  addu  $s0, $t3, $s1
/* 0C469C 800C3A9C 92020000 */  lbu   $v0, ($s0)
/* 0C46A0 800C3AA0 10000045 */  b     .L800C3BB8
/* 0C46A4 800C3AA4 28410003 */   slti  $at, $v0, 3
glabel L800C3AA8
/* 0C46A8 800C3AA8 920C0001 */  lbu   $t4, 1($s0)
/* 0C46AC 800C3AAC 00000000 */  nop   
/* 0C46B0 800C3AB0 15800003 */  bnez  $t4, .L800C3AC0
/* 0C46B4 800C3AB4 00000000 */   nop   
/* 0C46B8 800C3AB8 10000002 */  b     .L800C3AC4
/* 0C46BC 800C3ABC AE5E0024 */   sw    $fp, 0x24($s2)
.L800C3AC0:
/* 0C46C0 800C3AC0 AE400024 */  sw    $zero, 0x24($s2)
.L800C3AC4:
/* 0C46C4 800C3AC4 8E6D0000 */  lw    $t5, ($s3)
/* 0C46C8 800C3AC8 26310002 */  addiu $s1, $s1, 2
/* 0C46CC 800C3ACC 01B18021 */  addu  $s0, $t5, $s1
/* 0C46D0 800C3AD0 92020000 */  lbu   $v0, ($s0)
/* 0C46D4 800C3AD4 10000038 */  b     .L800C3BB8
/* 0C46D8 800C3AD8 28410003 */   slti  $at, $v0, 3
glabel L800C3ADC
/* 0C46DC 800C3ADC 920E0001 */  lbu   $t6, 1($s0)
/* 0C46E0 800C3AE0 26310002 */  addiu $s1, $s1, 2
/* 0C46E4 800C3AE4 AE4E0028 */  sw    $t6, 0x28($s2)
/* 0C46E8 800C3AE8 8E6F0000 */  lw    $t7, ($s3)
/* 0C46EC 800C3AEC 00000000 */  nop   
/* 0C46F0 800C3AF0 01F18021 */  addu  $s0, $t7, $s1
/* 0C46F4 800C3AF4 92020000 */  lbu   $v0, ($s0)
/* 0C46F8 800C3AF8 1000002F */  b     .L800C3BB8
/* 0C46FC 800C3AFC 28410003 */   slti  $at, $v0, 3
glabel L800C3B00
/* 0C4700 800C3B00 8E58002C */  lw    $t8, 0x2c($s2)
/* 0C4704 800C3B04 92190001 */  lbu   $t9, 1($s0)
/* 0C4708 800C3B08 26310002 */  addiu $s1, $s1, 2
/* 0C470C 800C3B0C 03194021 */  addu  $t0, $t8, $t9
/* 0C4710 800C3B10 AE48002C */  sw    $t0, 0x2c($s2)
/* 0C4714 800C3B14 8E690000 */  lw    $t1, ($s3)
/* 0C4718 800C3B18 00000000 */  nop   
/* 0C471C 800C3B1C 01318021 */  addu  $s0, $t1, $s1
/* 0C4720 800C3B20 92020000 */  lbu   $v0, ($s0)
/* 0C4724 800C3B24 10000024 */  b     .L800C3BB8
/* 0C4728 800C3B28 28410003 */   slti  $at, $v0, 3
glabel L800C3B2C
/* 0C472C 800C3B2C 920A0001 */  lbu   $t2, 1($s0)
/* 0C4730 800C3B30 26310002 */  addiu $s1, $s1, 2
/* 0C4734 800C3B34 AE4A0030 */  sw    $t2, 0x30($s2)
/* 0C4738 800C3B38 8E6B0000 */  lw    $t3, ($s3)
/* 0C473C 800C3B3C 00000000 */  nop   
/* 0C4740 800C3B40 01718021 */  addu  $s0, $t3, $s1
/* 0C4744 800C3B44 92020000 */  lbu   $v0, ($s0)
/* 0C4748 800C3B48 1000001B */  b     .L800C3BB8
/* 0C474C 800C3B4C 28410003 */   slti  $at, $v0, 3
glabel L800C3B50
/* 0C4750 800C3B50 828C0000 */  lb    $t4, ($s4)
/* 0C4754 800C3B54 2404003C */  li    $a0, 60
/* 0C4758 800C3B58 15800007 */  bnez  $t4, .L800C3B78
/* 0C475C 800C3B5C 00000000 */   nop   
/* 0C4760 800C3B60 920E0001 */  lbu   $t6, 1($s0)
/* 0C4764 800C3B64 0C00322D */  jal   normalise_time
/* 0C4768 800C3B68 A28E0000 */   sb    $t6, ($s4)
/* 0C476C 800C3B6C 8E6F0000 */  lw    $t7, ($s3)
/* 0C4770 800C3B70 A2E20000 */  sb    $v0, ($s7)
/* 0C4774 800C3B74 01F18021 */  addu  $s0, $t7, $s1
.L800C3B78:
/* 0C4778 800C3B78 92020002 */  lbu   $v0, 2($s0)
/* 0C477C 800C3B7C 26310002 */  addiu $s1, $s1, 2
/* 0C4780 800C3B80 1000000C */  b     .L800C3BB4
/* 0C4784 800C3B84 26100002 */   addiu $s0, $s0, 2
glabel L800C3B88
/* 0C4788 800C3B88 92180001 */  lbu   $t8, 1($s0)
/* 0C478C 800C3B8C 26310002 */  addiu $s1, $s1, 2
/* 0C4790 800C3B90 A2D80000 */  sb    $t8, ($s6)
/* 0C4794 800C3B94 92020002 */  lbu   $v0, 2($s0)
/* 0C4798 800C3B98 10000006 */  b     .L800C3BB4
/* 0C479C 800C3B9C 26100002 */   addiu $s0, $s0, 2
glabel L800C3BA0
/* 0C47A0 800C3BA0 92190001 */  lbu   $t9, 1($s0)
/* 0C47A4 800C3BA4 26310002 */  addiu $s1, $s1, 2
/* 0C47A8 800C3BA8 A2B90000 */  sb    $t9, ($s5)
/* 0C47AC 800C3BAC 92020002 */  lbu   $v0, 2($s0)
/* 0C47B0 800C3BB0 26100002 */  addiu $s0, $s0, 2
.L800C3BB4:
/* 0C47B4 800C3BB4 28410003 */  slti  $at, $v0, 3
.L800C3BB8:
/* 0C47B8 800C3BB8 14200003 */  bnez  $at, .L800C3BC8
/* 0C47BC 800C3BBC 2841000D */   slti  $at, $v0, 0xd
/* 0C47C0 800C3BC0 1420FF5C */  bnez  $at, .L800C3934
/* 0C47C4 800C3BC4 244FFFFD */   addiu $t7, $v0, -3
.L800C3BC8:
/* 0C47C8 800C3BC8 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0C47CC 800C3BCC 02201025 */  move  $v0, $s1
/* 0C47D0 800C3BD0 8FB10024 */  lw    $s1, 0x24($sp)
/* 0C47D4 800C3BD4 8FB00020 */  lw    $s0, 0x20($sp)
/* 0C47D8 800C3BD8 8FB20028 */  lw    $s2, 0x28($sp)
/* 0C47DC 800C3BDC 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0C47E0 800C3BE0 8FB40030 */  lw    $s4, 0x30($sp)
/* 0C47E4 800C3BE4 8FB50034 */  lw    $s5, 0x34($sp)
/* 0C47E8 800C3BE8 8FB60038 */  lw    $s6, 0x38($sp)
/* 0C47EC 800C3BEC 8FB7003C */  lw    $s7, 0x3c($sp)
/* 0C47F0 800C3BF0 8FBE0040 */  lw    $fp, 0x40($sp)
/* 0C47F4 800C3BF4 03E00008 */  jr    $ra
/* 0C47F8 800C3BF8 27BD0048 */   addiu $sp, $sp, 0x48

/* 0C47FC 800C3BFC 00000000 */  nop   
