.late_rodata
glabel jpt_800E8BDC
.word L800B2250, L800B20E0, L800B2138, L800B2190, L800B21E8

.text
glabel func_800B2040
/* 0B2C40 800B2040 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B2C44 800B2044 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B2C48 800B2048 8482002C */  lh    $v0, 0x2c($a0)
/* 0B2C4C 800B204C 00802825 */  move  $a1, $a0
/* 0B2C50 800B2050 28410005 */  slti  $at, $v0, 5
/* 0B2C54 800B2054 14200005 */  bnez  $at, .L800B206C
/* 0B2C58 800B2058 24010080 */   li    $at, 128
/* 0B2C5C 800B205C 1041000C */  beq   $v0, $at, .L800B2090
/* 0B2C60 800B2060 00000000 */   nop   
/* 0B2C64 800B2064 1000007B */  b     .L800B2254
/* 0B2C68 800B2068 8FBF0014 */   lw    $ra, 0x14($sp)
.L800B206C:
/* 0B2C6C 800B206C 2C410005 */  sltiu $at, $v0, 5
/* 0B2C70 800B2070 10200077 */  beqz  $at, .L800B2250
/* 0B2C74 800B2074 00027080 */   sll   $t6, $v0, 2
/* 0B2C78 800B2078 3C01800F */  lui   $at, %hi(jpt_800E8BDC) # $at, 0x800f
/* 0B2C7C 800B207C 002E0821 */  addu  $at, $at, $t6
/* 0B2C80 800B2080 8C2E8BDC */  lw    $t6, %lo(jpt_800E8BDC)($at)
/* 0B2C84 800B2084 00000000 */  nop   
/* 0B2C88 800B2088 01C00008 */  jr    $t6
/* 0B2C8C 800B208C 00000000 */   nop   
.L800B2090:
/* 0B2C90 800B2090 3C02800E */  lui   $v0, %hi(D_800E2CB8) # $v0, 0x800e
/* 0B2C94 800B2094 8C422CB8 */  lw    $v0, %lo(D_800E2CB8)($v0)
/* 0B2C98 800B2098 00000000 */  nop   
/* 0B2C9C 800B209C 1840006D */  blez  $v0, .L800B2254
/* 0B2CA0 800B20A0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0B2CA4 800B20A4 8CA40044 */  lw    $a0, 0x44($a1)
/* 0B2CA8 800B20A8 00000000 */  nop   
/* 0B2CAC 800B20AC 10800008 */  beqz  $a0, .L800B20D0
/* 0B2CB0 800B20B0 244FFFFF */   addiu $t7, $v0, -1
/* 0B2CB4 800B20B4 0C01F32C */  jal   free_sprite
/* 0B2CB8 800B20B8 AFA50018 */   sw    $a1, 0x18($sp)
/* 0B2CBC 800B20BC 3C02800E */  lui   $v0, %hi(D_800E2CB8) # $v0, 0x800e
/* 0B2CC0 800B20C0 8C422CB8 */  lw    $v0, %lo(D_800E2CB8)($v0)
/* 0B2CC4 800B20C4 8FA50018 */  lw    $a1, 0x18($sp)
/* 0B2CC8 800B20C8 00000000 */  nop   
/* 0B2CCC 800B20CC 244FFFFF */  addiu $t7, $v0, -1
.L800B20D0:
/* 0B2CD0 800B20D0 3C01800E */  lui   $at, %hi(D_800E2CB8) # $at, 0x800e
/* 0B2CD4 800B20D4 AC2F2CB8 */  sw    $t7, %lo(D_800E2CB8)($at)
/* 0B2CD8 800B20D8 1000005D */  b     .L800B2250
/* 0B2CDC 800B20DC A4A0002C */   sh    $zero, 0x2c($a1)
glabel L800B20E0
/* 0B2CE0 800B20E0 3C02800E */  lui   $v0, %hi(D_800E2CA0) # $v0, 0x800e
/* 0B2CE4 800B20E4 8C422CA0 */  lw    $v0, %lo(D_800E2CA0)($v0)
/* 0B2CE8 800B20E8 00000000 */  nop   
/* 0B2CEC 800B20EC 18400059 */  blez  $v0, .L800B2254
/* 0B2CF0 800B20F0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0B2CF4 800B20F4 8CB80044 */  lw    $t8, 0x44($a1)
/* 0B2CF8 800B20F8 00000000 */  nop   
/* 0B2CFC 800B20FC 8F040000 */  lw    $a0, ($t8)
/* 0B2D00 800B2100 00000000 */  nop   
/* 0B2D04 800B2104 10800008 */  beqz  $a0, .L800B2128
/* 0B2D08 800B2108 2459FFFF */   addiu $t9, $v0, -1
/* 0B2D0C 800B210C 0C01ECAF */  jal   free_texture
/* 0B2D10 800B2110 AFA50018 */   sw    $a1, 0x18($sp)
/* 0B2D14 800B2114 3C02800E */  lui   $v0, %hi(D_800E2CA0) # $v0, 0x800e
/* 0B2D18 800B2118 8C422CA0 */  lw    $v0, %lo(D_800E2CA0)($v0)
/* 0B2D1C 800B211C 8FA50018 */  lw    $a1, 0x18($sp)
/* 0B2D20 800B2120 00000000 */  nop   
/* 0B2D24 800B2124 2459FFFF */  addiu $t9, $v0, -1
.L800B2128:
/* 0B2D28 800B2128 3C01800E */  lui   $at, %hi(D_800E2CA0) # $at, 0x800e
/* 0B2D2C 800B212C AC392CA0 */  sw    $t9, %lo(D_800E2CA0)($at)
/* 0B2D30 800B2130 10000047 */  b     .L800B2250
/* 0B2D34 800B2134 A4A0002C */   sh    $zero, 0x2c($a1)
glabel L800B2138
/* 0B2D38 800B2138 3C02800E */  lui   $v0, %hi(D_800E2CAC) # $v0, 0x800e
/* 0B2D3C 800B213C 8C422CAC */  lw    $v0, %lo(D_800E2CAC)($v0)
/* 0B2D40 800B2140 00000000 */  nop   
/* 0B2D44 800B2144 18400043 */  blez  $v0, .L800B2254
/* 0B2D48 800B2148 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0B2D4C 800B214C 8CA80044 */  lw    $t0, 0x44($a1)
/* 0B2D50 800B2150 00000000 */  nop   
/* 0B2D54 800B2154 8D040000 */  lw    $a0, ($t0)
/* 0B2D58 800B2158 00000000 */  nop   
/* 0B2D5C 800B215C 10800008 */  beqz  $a0, .L800B2180
/* 0B2D60 800B2160 2449FFFF */   addiu $t1, $v0, -1
/* 0B2D64 800B2164 0C01ECAF */  jal   free_texture
/* 0B2D68 800B2168 AFA50018 */   sw    $a1, 0x18($sp)
/* 0B2D6C 800B216C 3C02800E */  lui   $v0, %hi(D_800E2CAC) # $v0, 0x800e
/* 0B2D70 800B2170 8C422CAC */  lw    $v0, %lo(D_800E2CAC)($v0)
/* 0B2D74 800B2174 8FA50018 */  lw    $a1, 0x18($sp)
/* 0B2D78 800B2178 00000000 */  nop   
/* 0B2D7C 800B217C 2449FFFF */  addiu $t1, $v0, -1
.L800B2180:
/* 0B2D80 800B2180 3C01800E */  lui   $at, %hi(D_800E2CAC) # $at, 0x800e
/* 0B2D84 800B2184 AC292CAC */  sw    $t1, %lo(D_800E2CAC)($at)
/* 0B2D88 800B2188 10000031 */  b     .L800B2250
/* 0B2D8C 800B218C A4A0002C */   sh    $zero, 0x2c($a1)
glabel L800B2190
/* 0B2D90 800B2190 3C02800E */  lui   $v0, %hi(D_800E2CC4) # $v0, 0x800e
/* 0B2D94 800B2194 8C422CC4 */  lw    $v0, %lo(D_800E2CC4)($v0)
/* 0B2D98 800B2198 00000000 */  nop   
/* 0B2D9C 800B219C 1840002D */  blez  $v0, .L800B2254
/* 0B2DA0 800B21A0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0B2DA4 800B21A4 8CAA0044 */  lw    $t2, 0x44($a1)
/* 0B2DA8 800B21A8 00000000 */  nop   
/* 0B2DAC 800B21AC 8D440000 */  lw    $a0, ($t2)
/* 0B2DB0 800B21B0 00000000 */  nop   
/* 0B2DB4 800B21B4 10800008 */  beqz  $a0, .L800B21D8
/* 0B2DB8 800B21B8 244BFFFF */   addiu $t3, $v0, -1
/* 0B2DBC 800B21BC 0C01ECAF */  jal   free_texture
/* 0B2DC0 800B21C0 AFA50018 */   sw    $a1, 0x18($sp)
/* 0B2DC4 800B21C4 3C02800E */  lui   $v0, %hi(D_800E2CC4) # $v0, 0x800e
/* 0B2DC8 800B21C8 8C422CC4 */  lw    $v0, %lo(D_800E2CC4)($v0)
/* 0B2DCC 800B21CC 8FA50018 */  lw    $a1, 0x18($sp)
/* 0B2DD0 800B21D0 00000000 */  nop   
/* 0B2DD4 800B21D4 244BFFFF */  addiu $t3, $v0, -1
.L800B21D8:
/* 0B2DD8 800B21D8 3C01800E */  lui   $at, %hi(D_800E2CC4) # $at, 0x800e
/* 0B2DDC 800B21DC AC2B2CC4 */  sw    $t3, %lo(D_800E2CC4)($at)
/* 0B2DE0 800B21E0 1000001B */  b     .L800B2250
/* 0B2DE4 800B21E4 A4A0002C */   sh    $zero, 0x2c($a1)
glabel L800B21E8
/* 0B2DE8 800B21E8 3C0C800E */  lui   $t4, %hi(D_800E2CD0) # $t4, 0x800e
/* 0B2DEC 800B21EC 8D8C2CD0 */  lw    $t4, %lo(D_800E2CD0)($t4)
/* 0B2DF0 800B21F0 00A02025 */  move  $a0, $a1
/* 0B2DF4 800B21F4 19800017 */  blez  $t4, .L800B2254
/* 0B2DF8 800B21F8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0B2DFC 800B21FC 0C02C98F */  jal   func_800B263C
/* 0B2E00 800B2200 AFA50018 */   sw    $a1, 0x18($sp)
/* 0B2E04 800B2204 8FA50018 */  lw    $a1, 0x18($sp)
/* 0B2E08 800B2208 00000000 */  nop   
/* 0B2E0C 800B220C 8CAD0044 */  lw    $t5, 0x44($a1)
/* 0B2E10 800B2210 00000000 */  nop   
/* 0B2E14 800B2214 8DA40000 */  lw    $a0, ($t5)
/* 0B2E18 800B2218 00000000 */  nop   
/* 0B2E1C 800B221C 10800005 */  beqz  $a0, .L800B2234
/* 0B2E20 800B2220 00000000 */   nop   
/* 0B2E24 800B2224 0C01ECAF */  jal   free_texture
/* 0B2E28 800B2228 AFA50018 */   sw    $a1, 0x18($sp)
/* 0B2E2C 800B222C 8FA50018 */  lw    $a1, 0x18($sp)
/* 0B2E30 800B2230 00000000 */  nop   
.L800B2234:
/* 0B2E34 800B2234 3C02800E */  lui   $v0, %hi(D_800E2CD0) # $v0, 0x800e
/* 0B2E38 800B2238 24422CD0 */  addiu $v0, %lo(D_800E2CD0) # addiu $v0, $v0, 0x2cd0
/* 0B2E3C 800B223C 8C4E0000 */  lw    $t6, ($v0)
/* 0B2E40 800B2240 00000000 */  nop   
/* 0B2E44 800B2244 25CFFFFF */  addiu $t7, $t6, -1
/* 0B2E48 800B2248 AC4F0000 */  sw    $t7, ($v0)
/* 0B2E4C 800B224C A4A0002C */  sh    $zero, 0x2c($a1)
.L800B2250:
glabel L800B2250
/* 0B2E50 800B2250 8FBF0014 */  lw    $ra, 0x14($sp)
.L800B2254:
/* 0B2E54 800B2254 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B2E58 800B2258 03E00008 */  jr    $ra
/* 0B2E5C 800B225C 00000000 */   nop   

