glabel func_8003DF08
/* 03EB08 8003DF08 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03EB0C 8003DF0C AFBF0014 */  sw    $ra, 0x14($sp)
/* 03EB10 8003DF10 AFA5001C */  sw    $a1, 0x1c($sp)
/* 03EB14 8003DF14 8C83004C */  lw    $v1, 0x4c($a0)
/* 03EB18 8003DF18 00803025 */  move  $a2, $a0
/* 03EB1C 8003DF1C 906E0013 */  lbu   $t6, 0x13($v1)
/* 03EB20 8003DF20 00000000 */  nop   
/* 03EB24 8003DF24 29C10032 */  slti  $at, $t6, 0x32
/* 03EB28 8003DF28 10200020 */  beqz  $at, .L8003DFAC
/* 03EB2C 8003DF2C 8FAE001C */   lw    $t6, 0x1c($sp)
/* 03EB30 8003DF30 8C620000 */  lw    $v0, ($v1)
/* 03EB34 8003DF34 00000000 */  nop   
/* 03EB38 8003DF38 1040001C */  beqz  $v0, .L8003DFAC
/* 03EB3C 8003DF3C 8FAE001C */   lw    $t6, 0x1c($sp)
/* 03EB40 8003DF40 8C4F0040 */  lw    $t7, 0x40($v0)
/* 03EB44 8003DF44 24010001 */  li    $at, 1
/* 03EB48 8003DF48 81F80054 */  lb    $t8, 0x54($t7)
/* 03EB4C 8003DF4C 00000000 */  nop   
/* 03EB50 8003DF50 17010016 */  bne   $t8, $at, .L8003DFAC
/* 03EB54 8003DF54 8FAE001C */   lw    $t6, 0x1c($sp)
/* 03EB58 8003DF58 8C430064 */  lw    $v1, 0x64($v0)
/* 03EB5C 8003DF5C 2401FFFF */  li    $at, -1
/* 03EB60 8003DF60 84790000 */  lh    $t9, ($v1)
/* 03EB64 8003DF64 24040036 */  li    $a0, 54
/* 03EB68 8003DF68 13210010 */  beq   $t9, $at, .L8003DFAC
/* 03EB6C 8003DF6C 8FAE001C */   lw    $t6, 0x1c($sp)
/* 03EB70 8003DF70 0C0006F0 */  jal   func_80001BC0
/* 03EB74 8003DF74 AFA60018 */   sw    $a2, 0x18($sp)
/* 03EB78 8003DF78 0C01BAA4 */  jal   get_settings
/* 03EB7C 8003DF7C 00000000 */   nop   
/* 03EB80 8003DF80 8FA40018 */  lw    $a0, 0x18($sp)
/* 03EB84 8003DF84 94480008 */  lhu   $t0, 8($v0)
/* 03EB88 8003DF88 8C890078 */  lw    $t1, 0x78($a0)
/* 03EB8C 8003DF8C 240A0001 */  li    $t2, 1
/* 03EB90 8003DF90 012A5804 */  sllv  $t3, $t2, $t1
/* 03EB94 8003DF94 010B6025 */  or    $t4, $t0, $t3
/* 03EB98 8003DF98 0C003FEE */  jal   particlePtrList_addObject
/* 03EB9C 8003DF9C A44C0008 */   sh    $t4, 8($v0)
/* 03EBA0 8003DFA0 8FA60018 */  lw    $a2, 0x18($sp)
/* 03EBA4 8003DFA4 00000000 */  nop   
/* 03EBA8 8003DFA8 8FAE001C */  lw    $t6, 0x1c($sp)
.L8003DFAC:
/* 03EBAC 8003DFAC 84CD0000 */  lh    $t5, ($a2)
/* 03EBB0 8003DFB0 000E7A00 */  sll   $t7, $t6, 8
/* 03EBB4 8003DFB4 01AFC021 */  addu  $t8, $t5, $t7
/* 03EBB8 8003DFB8 A4D80000 */  sh    $t8, ($a2)
/* 03EBBC 8003DFBC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 03EBC0 8003DFC0 27BD0018 */  addiu $sp, $sp, 0x18
/* 03EBC4 8003DFC4 03E00008 */  jr    $ra
/* 03EBC8 8003DFC8 00000000 */   nop   

