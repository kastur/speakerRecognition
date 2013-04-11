
gmm_test_hexagon:     file format elf32-littlehexagon


Disassembly of section .start:

00000000 <_start>:
       0:	4c c0 00 58 	5800c04c     jump 98 <hexagon_start_init>
       4:	3e c0 00 58 	5800c03e     jump 80 <zebu_mutex+0x40>
       8:	42 c0 00 58 	5800c042     jump 8c <zebu_mutex+0x4c>
	...

00000020 <R0_mailbox>:
      20:	00 00 00 00 	00000000     r0 = memw (r0 + #0) ; r0 = memw (r0 + #0)

00000024 <R1_mailbox>:
      24:	00 00 00 00 	00000000     r0 = memw (r0 + #0) ; r0 = memw (r0 + #0)

00000028 <flags_mailbox>:
      28:	00 00 00 00 	00000000     r0 = memw (r0 + #0) ; r0 = memw (r0 + #0)

0000002c <poll_mailbox>:
      2c:	00 00 00 00 	00000000     r0 = memw (r0 + #0) ; r0 = memw (r0 + #0)

00000030 <isdb_secure_flag>:
      30:	00 00 00 00 	00000000     r0 = memw (r0 + #0) ; r0 = memw (r0 + #0)

00000034 <isdb_trusted_flag>:
      34:	00 00 00 00 	00000000     r0 = memw (r0 + #0) ; r0 = memw (r0 + #0)

00000038 <isdb_debug_flag>:
      38:	00 00 00 00 	00000000     r0 = memw (r0 + #0) ; r0 = memw (r0 + #0)

0000003c <ISDBToAngel>:
      3c:	00 00 00 00 	00000000     r0 = memw (r0 + #0) ; r0 = memw (r0 + #0)

00000040 <zebu_mutex>:
	...
      80:	00 c0 3c 72 	723cc000     r28.h = #0
      84:	38 db 3c 71 	713cdb38     r28.l = #6968
      88:	00 c0 9c 52 	529cc000     jumpr r28
      8c:	00 c0 3c 72 	723cc000     r28.h = #0
      90:	b4 dc 3c 71 	713cdcb4     r28.l = #7348
      94:	00 c0 9c 52 	529cc000     jumpr r28

00000098 <hexagon_start_init>:
      98:	00 c0 9d 6e 	6e9dc000     r0 = rev
      9c:	e0 df 00 76 	7600dfe0     r0 = and (r0, #255)
      a0:	40 c0 00 75 	7500c040     p0 = cmp.eq (r0, #2)
      a4:	08 c0 20 5c 	5c20c008     if !p0 jump b4 <.InitChickenCustom>
      a8:	40 c0 20 72 	7220c040     r0.h = #64
      ac:	00 c0 20 71 	7120c000     r0.l = #0
      b0:	3c c0 00 67 	6700c03c     s60 = r0

000000b4 <.InitChickenCustom>:
      b4:	00 c0 20 72 	7220c000     r0.h = #0
      b8:	00 c0 20 71 	7120c000     r0.l = #0
      bc:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
      c0:	04 c0 00 5c 	5c00c004     if (p0) jump c8 <.InitCheckS61>
      c4:	3c c0 00 67 	6700c03c     s60 = r0

000000c8 <.InitCheckS61>:
      c8:	00 c0 20 72 	7220c000     r0.h = #0
      cc:	00 c0 20 71 	7120c000     r0.l = #0
      d0:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
      d4:	04 c0 00 5c 	5c00c004     if (p0) jump dc <.InitCheckS62>
      d8:	3d c0 00 67 	6700c03d     acc0 = r0

000000dc <.InitCheckS62>:
      dc:	00 c0 20 72 	7220c000     r0.h = #0
      e0:	00 c0 20 71 	7120c000     r0.l = #0
      e4:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
      e8:	04 c0 00 5c 	5c00c004     if (p0) jump f0 <.InitCheckS63>
      ec:	3e c0 00 67 	6700c03e     acc1 = r0

000000f0 <.InitCheckS63>:
      f0:	00 c0 20 72 	7220c000     r0.h = #0
      f4:	00 c0 20 71 	7120c000     r0.l = #0
      f8:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
      fc:	04 c0 00 5c 	5c00c004     if (p0) jump 104 <.Init>
     100:	3f c0 00 67 	6700c03f     chicken = r0

00000104 <.Init>:
     104:	00 c0 00 a2 	a200c000     dckill
     108:	02 c0 c0 57 	57c0c002     isync
     10c:	00 d0 c0 56 	56c0d000     ickill
     110:	02 c0 c0 57 	57c0c002     isync

00000114 <.InitPre>:
     114:	00 c0 20 72 	7220c000     r0.h = #0
     118:	00 c0 20 71 	7120c000     r0.l = #0
     11c:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     120:	00 c0 20 51 	5120c000     if !p0 callr r0

00000124 <.InitSSR>:
     124:	00 c0 00 78 	7800c000     r0 = #0
     128:	06 c0 00 67 	6700c006     ssr = r0
     12c:	02 c0 c0 57 	57c0c002     isync

00000130 <.InitISDB>:
     130:	00 c0 20 72 	7220c000     r0.h = #0
     134:	00 c0 20 71 	7120c000     r0.l = #0
     138:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     13c:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     140:	00 c0 21 72 	7221c000     r1.h = #0
     144:	30 c0 21 71 	7121c030     r1.l = #48
     148:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     14c:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     150:	00 c0 20 72 	7220c000     r0.h = #0
     154:	00 c0 20 71 	7120c000     r0.l = #0
     158:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     15c:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     160:	00 c0 21 72 	7221c000     r1.h = #0
     164:	34 c0 21 71 	7121c034     r1.l = #52
     168:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     16c:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     170:	00 c0 20 72 	7220c000     r0.h = #0
     174:	30 c0 20 71 	7120c030     r0.l = #48
     178:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     17c:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     180:	00 c0 20 72 	7220c000     r0.h = #0
     184:	34 c0 20 71 	7120c034     r0.l = #52
     188:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     18c:	01 c0 00 75 	7500c001     p1 = cmp.eq (r0, #0)
     190:	02 c0 21 6b 	6b21c002     p2 = or (p0, p1)
     194:	00 c0 92 6e 	6e92c000     r0 = syscfg
     198:	03 c0 14 7b 	7b14c003     r3 = mux (p2, #0, #40)
     19c:	00 c3 20 f1 	f120c300     r0 = or (r0, r3)
     1a0:	12 c0 00 67 	6700c012     syscfg = r0
     1a4:	02 c0 c0 57 	57c0c002     isync
     1a8:	00 c0 20 72 	7220c000     r0.h = #0
     1ac:	00 c0 20 71 	7120c000     r0.l = #0
     1b0:	03 c0 00 75 	7500c003     p3 = cmp.eq (r0, #0)
     1b4:	e0 df e0 74 	74e0dfe0     if !p3 r0 = add (r0, #-1)
     1b8:	01 c0 21 72 	7221c001     r1.h = #1
     1bc:	38 d4 21 71 	7121d438     r1.l = #5176
     1c0:	03 c0 81 44 	4481c003     if !p3 memw (r1 + #0) = r0
     1c4:	00 d8 81 45 	4581d800     if !p3 r0 = memw (r1 + #0)
     1c8:	01 c0 20 72 	7220c001     r0.h = #1
     1cc:	38 d4 20 71 	7120d438     r0.l = #5176
     1d0:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     1d4:	03 c0 00 75 	7500c003     p3 = cmp.eq (r0, #0)
     1d8:	00 c2 23 6b 	6b23c200     p0 = or (p2, p3)
     1dc:	00 e0 00 7a 	7a00e000     r0 = mux (p0, #0, #1)
     1e0:	00 c0 21 72 	7221c000     r1.h = #0
     1e4:	3c c0 21 71 	7121c03c     r1.l = #60
     1e8:	00 c0 81 a1 	a181c000     memw (r1 + #0) = r0
     1ec:	00 c0 81 91 	9181c000     r0 = memw (r1 + #0)

000001f0 <.InitISDBEnable>:
     1f0:	00 c0 20 72 	7220c000     r0.h = #0
     1f4:	00 c0 20 71 	7120c000     r0.l = #0
     1f8:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     1fc:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     200:	00 c0 21 72 	7221c000     r1.h = #0
     204:	38 c0 21 71 	7121c038     r1.l = #56
     208:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     20c:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     210:	00 c0 20 72 	7220c000     r0.h = #0
     214:	38 c0 20 71 	7120c038     r0.l = #56
     218:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     21c:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     220:	00 c0 c0 6b 	6bc0c000     p0 = not (p0)
     224:	00 c0 40 89 	8940c000     r0 = p0
     228:	2a c0 00 67 	6700c02a     isdben = r0
     22c:	00 c0 00 7f 	7f00c000     nop
     230:	00 c0 20 6c 	6c20c000     brkpt

00000234 <.InitParams>:
     234:	00 c0 20 72 	7220c000     r0.h = #0
     238:	00 c0 20 71 	7120c000     r0.l = #0
     23c:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     240:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     244:	00 c0 21 72 	7221c000     r1.h = #0
     248:	44 cf 21 71 	7121cf44     r1.l = #3908
     24c:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     250:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     254:	00 c0 20 72 	7220c000     r0.h = #0
     258:	00 c0 20 71 	7120c000     r0.l = #0
     25c:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     260:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     264:	00 c0 21 72 	7221c000     r1.h = #0
     268:	48 cf 21 71 	7121cf48     r1.l = #3912
     26c:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     270:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     274:	00 c0 20 72 	7220c000     r0.h = #0
     278:	00 c0 20 71 	7120c000     r0.l = #0
     27c:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     280:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     284:	00 c0 21 72 	7221c000     r1.h = #0
     288:	4c cf 21 71 	7121cf4c     r1.l = #3916
     28c:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     290:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     294:	00 c0 20 72 	7220c000     r0.h = #0
     298:	00 c0 20 71 	7120c000     r0.l = #0
     29c:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     2a0:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     2a4:	00 c0 21 72 	7221c000     r1.h = #0
     2a8:	50 cf 21 71 	7121cf50     r1.l = #3920
     2ac:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     2b0:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     2b4:	00 c0 20 72 	7220c000     r0.h = #0
     2b8:	00 c0 20 71 	7120c000     r0.l = #0
     2bc:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     2c0:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     2c4:	00 c0 21 72 	7221c000     r1.h = #0
     2c8:	60 cf 21 71 	7121cf60     r1.l = #3936
     2cc:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     2d0:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     2d4:	00 c0 20 72 	7220c000     r0.h = #0
     2d8:	00 c0 20 71 	7120c000     r0.l = #0
     2dc:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     2e0:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     2e4:	00 c0 21 72 	7221c000     r1.h = #0
     2e8:	64 cf 21 71 	7121cf64     r1.l = #3940
     2ec:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     2f0:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     2f4:	00 c0 20 72 	7220c000     r0.h = #0
     2f8:	00 c0 20 71 	7120c000     r0.l = #0
     2fc:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     300:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     304:	00 c0 21 72 	7221c000     r1.h = #0
     308:	68 cf 21 71 	7121cf68     r1.l = #3944
     30c:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     310:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     314:	00 c0 20 72 	7220c000     r0.h = #0
     318:	00 c0 20 71 	7120c000     r0.l = #0
     31c:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     320:	00 c0 21 72 	7221c000     r1.h = #0
     324:	5c cf 21 71 	7121cf5c     r1.l = #3932
     328:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     32c:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     330:	00 c0 20 72 	7220c000     r0.h = #0
     334:	00 c0 20 71 	7120c000     r0.l = #0
     338:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     33c:	00 c0 21 72 	7221c000     r1.h = #0
     340:	58 cf 21 71 	7121cf58     r1.l = #3928
     344:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     348:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     34c:	00 c0 20 72 	7220c000     r0.h = #0
     350:	00 c0 20 71 	7120c000     r0.l = #0
     354:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     358:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     35c:	00 c0 21 72 	7221c000     r1.h = #0
     360:	6c cf 21 71 	7121cf6c     r1.l = #3948
     364:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     368:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     36c:	00 c0 20 72 	7220c000     r0.h = #0
     370:	00 c0 20 71 	7120c000     r0.l = #0
     374:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     378:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     37c:	00 c0 21 72 	7221c000     r1.h = #0
     380:	70 cf 21 71 	7121cf70     r1.l = #3952
     384:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     388:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     38c:	00 c0 20 72 	7220c000     r0.h = #0
     390:	00 c0 20 71 	7120c000     r0.l = #0
     394:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     398:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     39c:	00 c0 21 72 	7221c000     r1.h = #0
     3a0:	74 cf 21 71 	7121cf74     r1.l = #3956
     3a4:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     3a8:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     3ac:	00 c0 20 72 	7220c000     r0.h = #0
     3b0:	00 c0 20 71 	7120c000     r0.l = #0
     3b4:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     3b8:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     3bc:	00 c0 21 72 	7221c000     r1.h = #0
     3c0:	40 cf 21 71 	7121cf40     r1.l = #3904
     3c4:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     3c8:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     3cc:	00 c0 20 72 	7220c000     r0.h = #0
     3d0:	00 c0 20 71 	7120c000     r0.l = #0
     3d4:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     3d8:	e0 df 80 74 	7480dfe0     if !p0 r0 = add (r0, #-1)
     3dc:	00 c0 21 72 	7221c000     r1.h = #0
     3e0:	54 cf 21 71 	7121cf54     r1.l = #3924
     3e4:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     3e8:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
     3ec:	00 c0 20 72 	7220c000     r0.h = #0
     3f0:	00 c0 20 71 	7120c000     r0.l = #0
     3f4:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     3f8:	00 c0 21 72 	7221c000     r1.h = #0
     3fc:	78 cf 21 71 	7121cf78     r1.l = #3960
     400:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
     404:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)

00000408 <.InitVector>:
     408:	00 c0 20 72 	7220c000     r0.h = #0
     40c:	58 cf 20 71 	7120cf58     r0.l = #3928
     410:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     414:	10 c0 00 67 	6700c010     evb = r0

00000418 <.InitStack>:
     418:	00 c0 20 72 	7220c000     r0.h = #0
     41c:	4c da 20 71 	7120da4c     r0.l = #6732
     420:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     424:	00 c0 00 67 	6700c000     sgp0 = r0
     428:	1d c0 60 70 	7060c01d     r29 = r0

0000042c <.InitPcycle>:
     42c:	00 c0 20 72 	7220c000     r0.h = #0
     430:	6c cf 20 71 	7120cf6c     r0.l = #3948
     434:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     438:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     43c:	00 c0 c0 6b 	6bc0c000     p0 = not (p0)
     440:	01 c0 40 89 	8940c001     r1 = p0
     444:	00 c0 92 6e 	6e92c000     r0 = syscfg
     448:	c0 c1 01 8f 	8f01c1c0     r0 = insert (r1, #1, #6)
     44c:	12 c0 00 67 	6700c012     syscfg = r0

00000450 <.InitDMT>:
     450:	00 c0 20 72 	7220c000     r0.h = #0
     454:	70 cf 20 71 	7120cf70     r0.l = #3952
     458:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     45c:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     460:	00 c0 c0 6b 	6bc0c000     p0 = not (p0)
     464:	01 c0 40 89 	8940c001     r1 = p0
     468:	00 c0 92 6e 	6e92c000     r0 = syscfg
     46c:	e0 c1 21 8f 	8f21c1e0     r0 = insert (r1, #1, #15)
     470:	12 c0 00 67 	6700c012     syscfg = r0

00000474 <.InitQoS>:
     474:	00 c0 20 72 	7220c000     r0.h = #0
     478:	74 cf 20 71 	7120cf74     r0.l = #3956
     47c:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     480:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     484:	00 c0 c0 6b 	6bc0c000     p0 = not (p0)
     488:	01 c0 40 89 	8940c001     r1 = p0
     48c:	00 c0 92 6e 	6e92c000     r0 = syscfg
     490:	a0 c1 21 8f 	8f21c1a0     r0 = insert (r1, #1, #13)
     494:	12 c0 00 67 	6700c012     syscfg = r0
     498:	00 c0 9d 6e 	6e9dc000     r0 = rev
     49c:	e0 df 00 76 	7600dfe0     r0 = and (r0, #255)
     4a0:	40 c0 80 75 	7580c040     p0 = cmp.gtu (r0, #2)
     4a4:	0a c0 00 5c 	5c00c00a     if (p0) jump 4b8 <.InitQoS+0x44>
     4a8:	00 c0 92 6e 	6e92c000     r0 = syscfg
     4ac:	81 c2 40 8d 	8d40c281     r1 = extractu (r0, #2, #20)
     4b0:	00 c0 01 75 	7501c000     p0 = cmp.eq (r1, #0)
     4b4:	3e c0 00 5c 	5c00c03e     if (p0) jump 530 <.InitCache>
     4b8:	00 c0 87 6e 	6e87c000     r0 = ccr
     4bc:	03 c0 00 78 	7800c003     r3 = #0
     4c0:	00 c4 43 8f 	8f43c400     r0 = insert (r3, #4, #16)
     4c4:	07 c0 00 67 	6700c007     ccr = r0
     4c8:	00 c0 92 6e 	6e92c000     r0 = syscfg
     4cc:	00 c3 43 8f 	8f43c300     r0 = insert (r3, #3, #16)
     4d0:	00 c0 00 7f 	7f00c000     nop
     4d4:	00 c0 00 7f 	7f00c000     nop
     4d8:	00 c0 00 7f 	7f00c000     nop
     4dc:	00 c0 00 7f 	7f00c000     nop
     4e0:	02 c0 c0 57 	57c0c002     isync
     4e4:	01 c0 9d 6e 	6e9dc001     r1 = rev
     4e8:	e1 df 01 76 	7601dfe1     r1 = and (r1, #255)
     4ec:	40 c0 01 75 	7501c040     p0 = cmp.eq (r1, #2)
     4f0:	04 c0 00 5c 	5c00c004     if (p0) jump 4f8 <.SkipSyncHT>
     4f4:	00 c0 40 a8 	a840c000     syncht

000004f8 <.SkipSyncHT>:
     4f8:	12 c0 00 67 	6700c012     syscfg = r0
     4fc:	02 c0 c0 57 	57c0c002     isync
     500:	00 c0 20 a8 	a820c000     l2kill
     504:	02 c0 9d 6e 	6e9dc002     r2 = rev
     508:	82 c4 22 8d 	8d22c482     r2 = extractu (r2, #4, #12)
     50c:	6b 40 00 00 	0000406b     { immext (#6848)
     510:	82 c0 02 91 	9102c082       r2 = memb (r2 + ##6852) }
     514:	00 c0 23 72 	7223c000     r3.h = #0
     518:	40 cf 23 71 	7123cf40     r3.l = #3904
     51c:	03 c0 83 91 	9183c003     r3 = memw (r3 + #0)
     520:	03 c2 a3 d5 	d5a3c203     r3 = min (r2, r3)
     524:	00 c3 43 8f 	8f43c300     r0 = insert (r3, #3, #16)
     528:	12 c0 00 67 	6700c012     syscfg = r0
     52c:	02 c0 c0 57 	57c0c002     isync

00000530 <.InitCache>:
     530:	00 c0 21 72 	7221c000     r1.h = #0
     534:	44 cf 21 71 	7121cf44     r1.l = #3908
     538:	01 c0 81 91 	9181c001     r1 = memw (r1 + #0)
     53c:	00 c0 20 72 	7220c000     r0.h = #0
     540:	4c cf 20 71 	7120cf4c     r0.l = #3916
     544:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     548:	02 c0 92 6e 	6e92c002     r2 = syscfg
     54c:	22 c1 01 8f 	8f01c122     r2 = insert (r1, #1, #1)
     550:	42 c1 00 8f 	8f00c142     r2 = insert (r0, #1, #2)
     554:	00 c0 9d 6e 	6e9dc000     r0 = rev
     558:	e0 df 00 76 	7600dfe0     r0 = and (r0, #255)
     55c:	40 c0 00 75 	7500c040     p0 = cmp.eq (r0, #2)
     560:	14 c0 00 5c 	5c00c014     if (p0) jump 588 <.SkipParityAndWB>
     564:	00 c0 20 72 	7220c000     r0.h = #0
     568:	00 c0 20 71 	7120c000     r0.l = #0
     56c:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     570:	04 c0 00 5c 	5c00c004     if (p0) jump 578 <.CheckWB>
     574:	02 d8 c2 8c 	8cc2d802     r2 = setbit (r2, #24)

00000578 <.CheckWB>:
     578:	00 c0 21 72 	7221c000     r1.h = #0
     57c:	54 cf 21 71 	7121cf54     r1.l = #3924
     580:	01 c0 81 91 	9181c001     r1 = memw (r1 + #0)
     584:	e2 c1 41 8f 	8f41c1e2     r2 = insert (r1, #1, #23)

00000588 <.SkipParityAndWB>:
     588:	12 c0 02 67 	6702c012     syscfg = r2
     58c:	02 c0 c0 57 	57c0c002     isync
     590:	02 c0 87 6e 	6e87c002     r2 = ccr
     594:	00 c0 20 72 	7220c000     r0.h = #0
     598:	48 cf 20 71 	7120cf48     r0.l = #3912
     59c:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     5a0:	00 c0 21 72 	7221c000     r1.h = #0
     5a4:	50 cf 21 71 	7121cf50     r1.l = #3920
     5a8:	01 c0 81 91 	9181c001     r1 = memw (r1 + #0)
     5ac:	c0 c1 41 8e 	8e41c1c0     r0 |= asl (r1, #1)
     5b0:	02 c2 40 8f 	8f40c202     r2 = insert (r0, #2, #16)
     5b4:	02 d4 c2 8c 	8cc2d402     r2 = setbit (r2, #20)
     5b8:	07 c0 02 67 	6702c007     ccr = r2
     5bc:	00 c0 00 76 	7600c000     r0 = and (r0, #0)
     5c0:	00 d0 c0 8c 	8cc0d000     r0 = setbit (r0, #16)
     5c4:	08 c0 20 62 	6220c008     usr = r0
     5c8:	02 c0 c0 57 	57c0c002     isync

000005cc <.InitTLB>:
     5cc:	00 c0 20 72 	7220c000     r0.h = #0
     5d0:	60 cf 20 71 	7120cf60     r0.l = #3936
     5d4:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     5d8:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     5dc:	46 c0 00 5c 	5c00c046     if (p0) jump 668 <.InitInt>
     5e0:	00 c0 20 72 	7220c000     r0.h = #0
     5e4:	00 c0 20 71 	7120c000     r0.l = #0
     5e8:	20 c0 40 75 	7540c020     p0 = cmp.gt (r0, #1)
     5ec:	18 c0 00 5c 	5c00c018     if (p0) jump 61c <.InitTLBGlobal>
     5f0:	00 c0 20 72 	7220c000     r0.h = #0
     5f4:	68 cf 20 71 	7120cf68     r0.l = #3944
     5f8:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     5fc:	03 c0 00 75 	7500c003     p3 = cmp.eq (r0, #0)
     600:	e0 e3 9f 7b 	7b9fe3e0     r0 = mux (p3, #31, #63)
     604:	02 c0 00 7c 	7c00c002     r3:2 = combine (#0, #0)

00000608 <.InitTLBLoop>:
     608:	00 c0 02 6c 	6c02c000     tlbw (r3:2, r0)
     60c:	02 c0 c0 57 	57c0c002     isync
     610:	e0 ff e0 bf 	bfe0ffe0     r0 = add (r0, #-1)
     614:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     618:	f8 e0 ff 5c 	5cffe0f8     if !p0 jump 608 <.InitTLBLoop>

0000061c <.InitTLBGlobal>:
     61c:	00 c0 22 72 	7222c000     r2.h = #0
     620:	00 c0 22 71 	7122c000     r2.l = #0
     624:	22 cc 02 8c 	8c02cc22     r2 = lsr (r2, #12)
     628:	f0 c3 e1 72 	72e1c3f0     r1.h = #50160
     62c:	00 c0 21 71 	7121c000     r1.l = #0
     630:	00 f7 e0 72 	72e0f700     r0.h = #63232
     634:	00 c0 20 71 	7120c000     r0.l = #0
     638:	01 c2 21 f1 	f121c201     r1 = or (r1, r2)
     63c:	c0 c1 42 8e 	8e42c1c0     r0 |= asl (r2, #1)
     640:	00 c4 c0 8c 	8cc0c400     r0 = setbit (r0, #4)
     644:	00 fe 20 76 	7620fe00     r0 = and (r0, #-16)
     648:	02 c0 00 78 	7800c002     r2 = #0
     64c:	00 c3 00 6c 	6c00c300     tlbw (r1:0, r3)
     650:	00 c0 92 6e 	6e92c000     r0 = syscfg
     654:	00 c0 c0 8c 	8cc0c000     r0 = setbit (r0, #0)
     658:	01 c0 43 89 	8943c001     r1 = p3
     65c:	e0 c1 01 8f 	8f01c1e0     r0 = insert (r1, #1, #7)
     660:	12 c0 00 67 	6700c012     syscfg = r0
     664:	02 c0 c0 57 	57c0c002     isync

00000668 <.InitInt>:
     668:	00 c0 00 78 	7800c000     r0 = #0
     66c:	0a c0 00 67 	6700c00a     imask = r0
     670:	e1 ff df 78 	78dfffe1     r1 = #-1
     674:	18 c0 01 67 	6701c018     iel = r1
     678:	1a c0 01 67 	6701c01a     iahl = r1
     67c:	20 c0 01 64 	6401c020     cswi (r1)
     680:	00 c0 86 6e 	6e86c000     r0 = ssr
     684:	00 d2 c0 8c 	8cc0d200     r0 = setbit (r0, #18)
     688:	06 c0 00 67 	6700c006     ssr = r0
     68c:	00 c0 92 6e 	6e92c000     r0 = syscfg
     690:	00 c4 c0 8c 	8cc0c400     r0 = setbit (r0, #4)
     694:	12 c0 00 67 	6700c012     syscfg = r0
     698:	02 c0 c0 57 	57c0c002     isync

0000069c <.OverrideCCR>:
     69c:	00 c0 20 72 	7220c000     r0.h = #0
     6a0:	00 c0 20 71 	7120c000     r0.l = #0
     6a4:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     6a8:	06 c0 00 5c 	5c00c006     if (p0) jump 6b4 <.OverrideUSR>
     6ac:	07 c0 00 67 	6700c007     ccr = r0
     6b0:	02 c0 c0 57 	57c0c002     isync

000006b4 <.OverrideUSR>:
     6b4:	00 c0 20 72 	7220c000     r0.h = #0
     6b8:	00 c0 20 71 	7120c000     r0.l = #0
     6bc:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     6c0:	06 c0 00 5c 	5c00c006     if (p0) jump 6cc <.OverrideSYSCFG>
     6c4:	08 c0 20 62 	6220c008     usr = r0
     6c8:	02 c0 c0 57 	57c0c002     isync

000006cc <.OverrideSYSCFG>:
     6cc:	00 c0 20 72 	7220c000     r0.h = #0
     6d0:	00 c0 20 71 	7120c000     r0.l = #0
     6d4:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     6d8:	06 c0 00 5c 	5c00c006     if (p0) jump 6e4 <.FinishOverrides>
     6dc:	12 c0 00 67 	6700c012     syscfg = r0
     6e0:	02 c0 c0 57 	57c0c002     isync

000006e4 <.FinishOverrides>:
     6e4:	01 c0 20 72 	7220c001     r0.h = #1
     6e8:	38 d4 20 71 	7120d438     r0.l = #5176
     6ec:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     6f0:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
     6f4:	16 c0 00 5c 	5c00c016     if (p0) jump 720 <.PreMain>
     6f8:	01 c0 20 72 	7220c001     r0.h = #1
     6fc:	18 d0 20 71 	7120d018     r0.l = #4120
     700:	01 c4 00 78 	7800c401     r1 = #32
     704:	00 c0 3c 72 	723cc000     r28.h = #0
     708:	b0 e8 7c 71 	717ce8b0     r28.l = #26800
     70c:	00 c0 bc 50 	50bcc000     callr r28
     710:	c0 c2 00 78 	7800c2c0     r0 = #22
     714:	01 c0 21 72 	7221c001     r1.h = #1
     718:	28 d0 21 71 	7121d028     r1.l = #4136
     71c:	00 c0 00 54 	5400c000     trap0 (#0)

00000720 <.PreMain>:
     720:	00 c0 3c 72 	723cc000     r28.h = #0
     724:	38 db 3c 71 	713cdb38     r28.l = #6968
     728:	00 c0 9c 52 	529cc000     jumpr r28
     72c:	00 c0 00 7f 	7f00c000     nop

00000730 <__coredump>:
     730:	00 c0 20 72 	7220c000     r0.h = #0
     734:	78 cf 20 71 	7120cf78     r0.l = #3960
     738:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
     73c:	08 c0 c0 ab 	abc0c008     memd (r0 ++ #8) = r1:0
     740:	08 c2 c0 ab 	abc0c208     memd (r0 ++ #8) = r3:2
     744:	08 c4 c0 ab 	abc0c408     memd (r0 ++ #8) = r5:4
     748:	00 c6 c0 a1 	a1c0c600     memd (r0 + #0) = r7:6
     74c:	00 c0 00 a0 	a000c000     dccleana (r0)
     750:	00 c1 00 b0 	b000c100     r0 = add (r0, #8)
     754:	08 c8 c0 ab 	abc0c808     memd (r0 ++ #8) = r9:8
     758:	08 ca c0 ab 	abc0ca08     memd (r0 ++ #8) = r11:10
     75c:	08 cc c0 ab 	abc0cc08     memd (r0 ++ #8) = r13:12
     760:	00 ce c0 a1 	a1c0ce00     memd (r0 + #0) = r15:14
     764:	00 c0 00 a0 	a000c000     dccleana (r0)
     768:	00 c1 00 b0 	b000c100     r0 = add (r0, #8)
     76c:	08 d0 c0 ab 	abc0d008     memd (r0 ++ #8) = r17:16
     770:	08 d2 c0 ab 	abc0d208     memd (r0 ++ #8) = r19:18
     774:	08 d4 c0 ab 	abc0d408     memd (r0 ++ #8) = r21:20
     778:	00 d6 c0 a1 	a1c0d600     memd (r0 + #0) = r23:22
     77c:	00 c0 00 a0 	a000c000     dccleana (r0)
     780:	00 c1 00 b0 	b000c100     r0 = add (r0, #8)
     784:	08 d8 c0 ab 	abc0d808     memd (r0 ++ #8) = r25:24
     788:	08 da c0 ab 	abc0da08     memd (r0 ++ #8) = r27:26
     78c:	08 dc c0 ab 	abc0dc08     memd (r0 ++ #8) = r29:28
     790:	00 de c0 a1 	a1c0de00     memd (r0 + #0) = r31:30
     794:	00 c0 00 a0 	a000c000     dccleana (r0)
     798:	00 c1 00 b0 	b000c100     r0 = add (r0, #8)
     79c:	01 c0 00 6a 	6a00c001     r1 = sa0
     7a0:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     7a4:	01 c0 01 6a 	6a01c001     r1 = lc0
     7a8:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     7ac:	01 c0 02 6a 	6a02c001     r1 = sa1
     7b0:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     7b4:	01 c0 03 6a 	6a03c001     r1 = lc1
     7b8:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     7bc:	01 c0 04 6a 	6a04c001     r1 = p3:0
     7c0:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     7c4:	01 c0 06 6a 	6a06c001     r1 = m0
     7c8:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     7cc:	01 c0 07 6a 	6a07c001     r1 = m1
     7d0:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     7d4:	01 c0 08 6a 	6a08c001     r1 = usr
     7d8:	00 c1 80 a1 	a180c100     memw (r0 + #0) = r1
     7dc:	00 c0 00 a0 	a000c000     dccleana (r0)
     7e0:	80 c0 00 b0 	b000c080     r0 = add (r0, #4)
     7e4:	01 c0 09 6a 	6a09c001     r1 = pc
     7e8:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     7ec:	01 c0 0a 6a 	6a0ac001     r1 = ugp
     7f0:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     7f4:	01 c0 80 6e 	6e80c001     r1 = sgp0
     7f8:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     7fc:	01 c0 86 6e 	6e86c001     r1 = ssr
     800:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     804:	01 c0 8a 6e 	6e8ac001     r1 = imask
     808:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     80c:	01 c0 89 6e 	6e89c001     r1 = badva
     810:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     814:	01 c0 83 6e 	6e83c001     r1 = elr
     818:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     81c:	01 c0 82 6e 	6e82c001     r1 = stid
     820:	00 c1 80 a1 	a180c100     memw (r0 + #0) = r1
     824:	00 c0 00 a0 	a000c000     dccleana (r0)
     828:	80 c0 00 b0 	b000c080     r0 = add (r0, #4)
     82c:	01 c0 90 6e 	6e90c001     r1 = evb
     830:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     834:	01 c0 94 6e 	6e94c001     r1 = ipend
     838:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     83c:	01 c0 92 6e 	6e92c001     r1 = syscfg
     840:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     844:	01 c0 91 6e 	6e91c001     r1 = modectl
     848:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     84c:	01 c0 9d 6e 	6e9dc001     r1 = rev
     850:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     854:	01 c0 00 78 	7800c001     r1 = #0
     858:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     85c:	01 c0 00 78 	7800c001     r1 = #0
     860:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     864:	01 c0 00 78 	7800c001     r1 = #0
     868:	00 c1 80 a1 	a180c100     memw (r0 + #0) = r1
     86c:	00 c0 00 a0 	a000c000     dccleana (r0)
     870:	80 c0 00 b0 	b000c080     r0 = add (r0, #4)
     874:	01 c0 9c 6e 	6e9cc001     r1 = diag
     878:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     87c:	01 c0 96 6e 	6e96c001     r1 = iad
     880:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     884:	01 c0 98 6e 	6e98c001     r1 = iel
     888:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     88c:	01 c0 9a 6e 	6e9ac001     r1 = iahl
     890:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     894:	01 c0 9f 6e 	6e9fc001     r1 = pcyclehi
     898:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     89c:	01 c0 9e 6e 	6e9ec001     r1 = pcyclelo
     8a0:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     8a4:	01 c0 a0 6e 	6ea0c001     r1 = isdbst
     8a8:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     8ac:	01 c0 a1 6e 	6ea1c001     r1 = isdbcfg0
     8b0:	00 c1 80 a1 	a180c100     memw (r0 + #0) = r1
     8b4:	00 c0 00 a0 	a000c000     dccleana (r0)
     8b8:	80 c0 00 b0 	b000c080     r0 = add (r0, #4)
     8bc:	01 c0 a2 6e 	6ea2c001     r1 = isdbcfg1
     8c0:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     8c4:	01 c0 a4 6e 	6ea4c001     r1 = brkptpc0
     8c8:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     8cc:	01 c0 a5 6e 	6ea5c001     r1 = brkptcfg0
     8d0:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     8d4:	01 c0 a6 6e 	6ea6c001     r1 = brkptpc1
     8d8:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     8dc:	01 c0 a7 6e 	6ea7c001     r1 = brkptcfg1
     8e0:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     8e4:	01 c0 aa 6e 	6eaac001     r1 = isdben
     8e8:	08 c1 80 ab 	ab80c108     memw (r0 ++ #4) = r1
     8ec:	01 c0 ab 6e 	6eabc001     r1 = isdbgpr
     8f0:	00 c1 80 a1 	a180c100     memw (r0 + #0) = r1
     8f4:	00 c0 00 a0 	a000c000     dccleana (r0)
     8f8:	61 f7 80 97 	9780f761     r1 = memw (r0 + #-276)
     8fc:	00 c0 86 6e 	6e86c000     r0 = ssr
     900:	20 d0 c0 8c 	8cc0d020     r0 = clrbit (r0, #16)
     904:	20 d1 c0 8c 	8cc0d120     r0 = clrbit (r0, #17)
     908:	06 c0 00 67 	6700c006     ssr = r0
     90c:	02 c0 c0 57 	57c0c002     isync
     910:	a0 d9 00 78 	7800d9a0     r0 = #205
     914:	00 c0 00 54 	5400c000     trap0 (#0)
     918:	e0 ff df 78 	78dfffe0     r0 = #-1
     91c:	00 c0 60 64 	6460c000     stop (r0)

00000920 <event_handle_reset>:
     920:	01 c0 88 6e 	6e88c001     r1 = htid
     924:	00 40 3c 72 	723c4000     { r28.h = #0
     928:	00 40 3d 72 	723d4000       r29.h = #0
     92c:	00 c0 20 72 	7220c000       r0.h = #0 }
     930:	64 5a 3c 71 	713c5a64     { r28.l = #6756
     934:	41 42 01 8c 	8c014241       r1 = asl (r1, #2)
     938:	7c 5a 3d 71 	713d5a7c       r29.l = #6780
     93c:	94 da 20 71 	7120da94       r0.l = #6804 }
     940:	1c 41 1c f3 	f31c411c     { r28 = add (r28, r1)
     944:	1d 41 1d f3 	f31d411d       r29 = add (r29, r1)
     948:	00 c1 00 f3 	f300c100       r0 = add (r0, r1) }
     94c:	02 c0 00 78 	7800c002     r2 = #0
     950:	06 c0 02 67 	6702c006     ssr = r2
     954:	02 c0 c0 57 	57c0c002     isync
     958:	0a c0 02 67 	6702c00a     imask = r2
     95c:	00 c0 22 72 	7222c000     r2.h = #0
     960:	4c da 22 71 	7122da4c     r2.l = #6732
     964:	02 c1 02 f3 	f302c102     r2 = add (r2, r1)
     968:	02 c0 82 91 	9182c002     r2 = memw (r2 + #0)
     96c:	00 c0 02 67 	6702c000     sgp0 = r2
     970:	03 c0 22 72 	7222c003     r2.h = #3
     974:	00 c0 e2 71 	71e2c000     r2.l = #49152
     978:	0b c0 22 62 	6222c00b     gp = r2
     97c:	04 c0 22 72 	7222c004     r2.h = #4
     980:	00 c0 22 71 	7122c000     r2.l = #0
     984:	06 c0 02 67 	6702c006     ssr = r2
     988:	01 c0 22 72 	7222c001     r2.h = #1
     98c:	08 c0 22 62 	6222c008     usr = r2
     990:	13 c0 22 72 	7222c013     r2.h = #19
     994:	07 c0 02 67 	6702c007     ccr = r2
     998:	02 c0 c0 57 	57c0c002     isync
     99c:	be fa a2 72 	72a2fabe     r2.h = #47806
     9a0:	ef fe a2 71 	71a2feef     r2.l = #48879
     9a4:	23 30 21 30 	30213023     r1 = r2 ; r3 = r2
     9a8:	04 42 03 f5 	f5034204     { r5:4 = combine (r3, r2)
     9ac:	06 42 03 f5 	f5034206       r7:6 = combine (r3, r2)
     9b0:	08 42 03 f5 	f5034208       r9:8 = combine (r3, r2)
     9b4:	0a c2 03 f5 	f503c20a       r11:10 = combine (r3, r2) }
     9b8:	0c 42 03 f5 	f503420c     { r13:12 = combine (r3, r2)
     9bc:	0e 42 03 f5 	f503420e       r15:14 = combine (r3, r2)
     9c0:	10 42 03 f5 	f5034210       r17:16 = combine (r3, r2)
     9c4:	12 c2 03 f5 	f503c212       r19:18 = combine (r3, r2) }
     9c8:	14 42 03 f5 	f5034214     { r21:20 = combine (r3, r2)
     9cc:	16 42 03 f5 	f5034216       r23:22 = combine (r3, r2)
     9d0:	18 42 03 f5 	f5034218       r25:24 = combine (r3, r2)
     9d4:	1a c2 03 f5 	f503c21a       r27:26 = combine (r3, r2) }
     9d8:	00 40 3f 72 	723f4000     { r31.h = #0
     9dc:	1c 40 9c 91 	919c401c       r28 = memw (r28 + #0)
     9e0:	1d c0 9d 91 	919dc01d       r29 = memw (r29 + #0) }
     9e4:	40 51 7f 71 	717f5140     { r31.l = #20800
     9e8:	08 40 00 58 	58004008       jump 9f4 <thread_start>
     9ec:	1e 40 00 78 	7800401e       r30 = #0
     9f0:	00 c0 80 91 	9180c000       r0 = memw (r0 + #0) }

000009f4 <thread_start>:
     9f4:	00 c0 9c 52 	529cc000     jumpr r28

000009f8 <event_handle_nmi>:
     9f8:	20 c0 00 78 	7800c020     r0 = #1
     9fc:	02 c0 00 67 	6700c002     stid = r0
     a00:	98 fe ff 59 	59fffe98     jump 730 <__coredump>

00000a04 <event_handle_error>:
     a04:	40 c0 00 78 	7800c040     r0 = #2
     a08:	02 c0 00 67 	6700c002     stid = r0
     a0c:	92 fe ff 59 	59fffe92     jump 730 <__coredump>

00000a10 <event_handle_rsvd>:
     a10:	ad de e0 72 	72e0dead     r0.h = #57005
     a14:	ef fe a0 71 	71a0feef     r0.l = #48879
     a18:	02 c0 00 67 	6700c002     stid = r0
     a1c:	8a fe ff 59 	59fffe8a     jump 730 <__coredump>
     a20:	00 40 00 7f 	7f004000     { nop
     a24:	00 40 00 7f 	7f004000       nop
     a28:	00 40 00 7f 	7f004000       nop
     a2c:	00 c0 00 7f 	7f00c000       nop }
     a30:	00 40 00 7f 	7f004000     { nop
     a34:	00 40 00 7f 	7f004000       nop
     a38:	00 40 00 7f 	7f004000       nop
     a3c:	00 c0 00 7f 	7f00c000       nop }

00000a40 <event_handle_tlbmissx>:
     a40:	00 c0 1d 65 	651dc000     crswap (r29, sgp0)
     a44:	1d f8 fd bf 	bffdf81d     r29 = add (r29, #-64)
     a48:	00 c0 dd a1 	a1ddc000     memd (r29 + #0) = r1:0
     a4c:	01 c2 dd a1 	a1ddc201     memd (r29 + #8) = r3:2
     a50:	02 c4 dd a1 	a1ddc402     memd (r29 + #16) = r5:4
     a54:	03 c6 dd a1 	a1ddc603     memd (r29 + #24) = r7:6
     a58:	04 c8 dd a1 	a1ddc804     memd (r29 + #32) = r9:8
     a5c:	09 c0 04 6a 	6a04c009     r9 = p3:0
     a60:	08 c0 86 6e 	6e86c008     r8 = ssr
     a64:	07 c0 83 6e 	6e83c007     r7 = elr
     a68:	01 c0 08 85 	8508c001     p1 = tstbit (r8, #0)
     a6c:	27 4c 07 8c 	8c074c27     { r7 = lsr (r7, #12)
     a70:	08 41 20 5c 	5c204108       if !p1 jump a7c <event_handle_tlbmissx+0x3c>
     a74:	00 c0 20 72 	7220c000       r0.h = #0 }
     a78:	27 c0 07 b0 	b007c027     r7 = add (r7, #1)
     a7c:	04 5b 20 71 	71205b04     { r0.l = #6916
     a80:	c1 c0 00 78 	7800c0c1       r1 = #6 }
     a84:	06 c0 00 92 	9200c006     r6 = memw_locked (r0)
     a88:	26 40 06 b0 	b0064026     { r6 = add (r6, #1)
     a8c:	c0 cf 46 75 	7546cfc0       p0 = cmp.gt (r6, #126) }
     a90:	06 46 01 f4 	f4014606     { r6 = mux (p0, r1, r6)
     a94:	00 c0 23 72 	7223c000       r3.h = #0 }
     a98:	00 c6 a0 a0 	a0a0c600     memw_locked (r0, p0) = r6
     a9c:	f4 60 ff 5c 	5cff60f4     { if !p0 jump a84 <event_handle_tlbmissx+0x44>
     aa0:	5c cf 23 71 	7123cf5c       r3.l = #3932 }
     aa4:	27 48 07 8c 	8c074827     { r7 = lsr (r7, #8)
     aa8:	03 c0 83 91 	9183c003       r3 = memw (r3 + #0) }
     aac:	23 c3 07 c4 	c407c323     r3 = addasl (r3, r7, #1)
     ab0:	47 48 07 8c 	8c074847     { r7 = asl (r7, #8)
     ab4:	03 c0 43 91 	9143c003       r3 = memh (r3 + #0) }
     ab8:	85 cc 03 8d 	8d03cc85     r5 = extractu (r3, #12, #4)
     abc:	04 44 03 8d 	8d034404     { r4 = extractu (r3, #4, #0)
     ac0:	01 28 00 29 	29002801       r0 = #16 ; r1 = #0 }
     ac4:	44 58 04 8c 	8c045844     { r4 = asl (r4, #24)
     ac8:	00 40 e1 72 	72e14000       r1.h = #49152
     acc:	00 f0 e0 72 	72e0f000       r0.h = #61440 }
     ad0:	01 47 21 f1 	f1214701     { r1 = or (r1, r7)
     ad4:	c0 c9 45 8e 	8e45c9c0       r0 |= asl (r5, #9) }
     ad8:	00 44 20 f1 	f1204400     { r0 = or (r0, r4)
     adc:	00 c0 24 72 	7224c000       r4.h = #0 }
     ae0:	00 5b 24 71 	71245b00     { r4.l = #6912
     ae4:	25 c0 00 78 	7800c025       r5 = #1 }
     ae8:	02 c0 04 92 	9204c002     r2 = memw_locked (r4)
     aec:	00 c0 02 75 	7502c000     p0 = cmp.eq (r2, #0)
     af0:	fc e0 ff 5c 	5cffe0fc     if !p0 jump ae8 <event_handle_tlbmissx+0xa8>
     af4:	00 c5 a4 a0 	a0a4c500     memw_locked (r4, p0) = r5
     af8:	f8 e0 ff 5c 	5cffe0f8     if !p0 jump ae8 <event_handle_tlbmissx+0xa8>
     afc:	05 c0 81 6c 	6c81c005     r5 = tlbp (r1)
     b00:	00 df 05 85 	8505df00     p0 = tstbit (r5, #31)
     b04:	06 c0 20 5c 	5c20c006     if !p0 jump b10 <event_handle_tlbmissx+0xd0>
     b08:	00 c6 00 6c 	6c00c600     tlbw (r1:0, r6)
     b0c:	02 c0 c0 57 	57c0c002     isync
     b10:	01 c0 00 78 	7800c001     r1 = #0
     b14:	02 c0 04 92 	9204c002     r2 = memw_locked (r4)
     b18:	00 c1 a4 a0 	a0a4c100     memw_locked (r4, p0) = r1
     b1c:	fc e0 ff 5c 	5cffe0fc     if !p0 jump b14 <event_handle_tlbmissx+0xd4>
     b20:	04 c0 29 62 	6229c004     p3:0 = r9
     b24:	88 40 dd 91 	91dd4088     { r9:8 = memd (r29 + #32)
     b28:	66 c0 dd 91 	91ddc066       r7:6 = memd (r29 + #24) }
     b2c:	09 1e 12 3e 	3e121e09     r5:4 = memd (sp + #16) ; r3:2 = memd (sp + #8)
     b30:	1d 48 1d b0 	b01d481d     { r29 = add (r29, #64)
     b34:	00 c0 dd 91 	91ddc000       r1:0 = memd (r29 + #0) }
     b38:	00 c0 1d 65 	651dc000     crswap (r29, sgp0)
     b3c:	00 c0 e0 57 	57e0c000     rte

00000b40 <event_handle_tlbmissrw>:
     b40:	00 c0 1d 65 	651dc000     crswap (r29, sgp0)
     b44:	1d f8 fd bf 	bffdf81d     r29 = add (r29, #-64)
     b48:	00 c0 dd a1 	a1ddc000     memd (r29 + #0) = r1:0
     b4c:	01 c2 dd a1 	a1ddc201     memd (r29 + #8) = r3:2
     b50:	02 c4 dd a1 	a1ddc402     memd (r29 + #16) = r5:4
     b54:	03 c6 dd a1 	a1ddc603     memd (r29 + #24) = r7:6
     b58:	04 c8 dd a1 	a1ddc804     memd (r29 + #32) = r9:8
     b5c:	08 c0 86 6e 	6e86c008     r8 = ssr
     b60:	07 c0 89 6e 	6e89c007     r7 = badva
     b64:	09 40 04 6a 	6a044009     { r9 = p3:0
     b68:	04 5b 20 71 	71205b04       r0.l = #6916
     b6c:	c1 c0 00 78 	7800c0c1       r1 = #6 }
     b70:	27 54 07 8c 	8c075427     { r7 = lsr (r7, #20)
     b74:	00 c0 20 72 	7220c000       r0.h = #0 }
     b78:	06 c0 00 92 	9200c006     r6 = memw_locked (r0)
     b7c:	26 40 06 b0 	b0064026     { r6 = add (r6, #1)
     b80:	c0 4f 46 75 	75464fc0       p0 = cmp.gt (r6, #126)
     b84:	00 c0 23 72 	7223c000       r3.h = #0 }
     b88:	06 46 01 f4 	f4014606     { r6 = mux (p0, r1, r6)
     b8c:	5c cf 23 71 	7123cf5c       r3.l = #3932 }
     b90:	00 c6 a0 a0 	a0a0c600     memw_locked (r0, p0) = r6
     b94:	f2 e0 ff 5c 	5cffe0f2     if !p0 jump b78 <event_handle_tlbmissrw+0x38>
     b98:	03 c0 83 91 	9183c003     r3 = memw (r3 + #0)
     b9c:	04 c0 83 91 	9183c004     r4 = memw (r3 + #0)
     ba0:	c8 6d a4 61 	61a46dc8     { if (r4 == #0) jump:nt 730 <__coredump>
     ba4:	23 c3 07 c4 	c407c323       r3 = addasl (r3, r7, #1) }
     ba8:	47 48 07 8c 	8c074847     { r7 = asl (r7, #8)
     bac:	03 c0 43 91 	9143c003       r3 = memh (r3 + #0) }
     bb0:	85 cc 03 8d 	8d03cc85     r5 = extractu (r3, #12, #4)
     bb4:	04 44 03 8d 	8d034404     { r4 = extractu (r3, #4, #0)
     bb8:	01 28 00 29 	29002801       r0 = #16 ; r1 = #0 }
     bbc:	44 58 04 8c 	8c045844     { r4 = asl (r4, #24)
     bc0:	00 40 e1 72 	72e14000       r1.h = #49152
     bc4:	00 f0 e0 72 	72e0f000       r0.h = #61440 }
     bc8:	01 47 21 f1 	f1214701     { r1 = or (r1, r7)
     bcc:	c0 c9 45 8e 	8e45c9c0       r0 |= asl (r5, #9) }
     bd0:	00 44 20 f1 	f1204400     { r0 = or (r0, r4)
     bd4:	00 c0 24 72 	7224c000       r4.h = #0 }
     bd8:	00 5b 24 71 	71245b00     { r4.l = #6912
     bdc:	25 c0 00 78 	7800c025       r5 = #1 }
     be0:	02 c0 04 92 	9204c002     r2 = memw_locked (r4)
     be4:	00 c5 a4 a0 	a0a4c500     memw_locked (r4, p0) = r5
     be8:	01 c0 02 75 	7502c001     p1 = cmp.eq (r2, #0)
     bec:	fa e0 ff 5c 	5cffe0fa     if !p0 jump be0 <event_handle_tlbmissrw+0xa0>
     bf0:	f8 e1 ff 5c 	5cffe1f8     if !p1 jump be0 <event_handle_tlbmissrw+0xa0>
     bf4:	05 c0 81 6c 	6c81c005     r5 = tlbp (r1)
     bf8:	00 df 05 85 	8505df00     p0 = tstbit (r5, #31)
     bfc:	06 c0 20 5c 	5c20c006     if !p0 jump c08 <event_handle_tlbmissrw+0xc8>
     c00:	00 c6 00 6c 	6c00c600     tlbw (r1:0, r6)
     c04:	02 c0 c0 57 	57c0c002     isync
     c08:	01 c0 00 78 	7800c001     r1 = #0
     c0c:	02 c0 04 92 	9204c002     r2 = memw_locked (r4)
     c10:	00 c1 a4 a0 	a0a4c100     memw_locked (r4, p0) = r1
     c14:	fc e0 ff 5c 	5cffe0fc     if !p0 jump c0c <event_handle_tlbmissrw+0xcc>
     c18:	04 c0 29 62 	6229c004     p3:0 = r9
     c1c:	88 40 dd 91 	91dd4088     { r9:8 = memd (r29 + #32)
     c20:	66 c0 dd 91 	91ddc066       r7:6 = memd (r29 + #24) }
     c24:	09 1e 12 3e 	3e121e09     r5:4 = memd (sp + #16) ; r3:2 = memd (sp + #8)
     c28:	1d 48 1d b0 	b01d481d     { r29 = add (r29, #64)
     c2c:	00 c0 dd 91 	91ddc000       r1:0 = memd (r29 + #0) }
     c30:	00 c0 1d 65 	651dc000     crswap (r29, sgp0)
     c34:	00 c0 e0 57 	57e0c000     rte
     c38:	00 40 00 7f 	7f004000     { nop
     c3c:	00 c0 00 7f 	7f00c000       nop }

00000c40 <event_handle_trap0>:
     c40:	00 c0 1d 65 	651dc000     crswap (r29, sgp0)
     c44:	05 40 04 6a 	6a044005     { r5 = p3:0
     c48:	1d 7b fd bf 	bffd7b1d       r29 = add (r29, #-40)
     c4c:	00 48 00 75 	75004800       p0 = cmp.eq (r0, #64)
     c50:	fb e4 dd a7 	a7dde4fb       memd (r29 + #-40) = r5:4 }
     c54:	81 48 00 75 	75004881     { p1 = cmp.eq (r0, #68)
     c58:	42 4a 00 75 	75004a42       p2 = cmp.eq (r0, #82)
     c5c:	55 55 64 72 	72645555       r4.h = #21845
     c60:	01 c2 dd a1 	a1ddc201       memd (r29 + #8) = r3:2 }
     c64:	00 c0 23 72 	7223c000     r3.h = #0
     c68:	3c c0 23 71 	7123c03c     r3.l = #60
     c6c:	03 c0 83 91 	9183c003     r3 = memw (r3 + #0)
     c70:	23 40 03 75 	75034023     { p3 = cmp.eq (r3, #1)
     c74:	8e cb 00 5c 	5c00cb8e       if (p3.new) jump:nt d8c <ANGEL_call_host_poll+0x80> }
     c78:	7a 40 00 5c 	5c00407a     { if (p0) jump d6c <ANGEL_call_host_poll+0x60>
     c7c:	00 41 22 6b 	6b224100       p0 = or (p1, p2)
     c80:	55 55 64 71 	71645555       r4.l = #21845
     c84:	02 c6 dd a1 	a1ddc602       memd (r29 + #16) = r7:6 }
     c88:	72 40 00 5c 	5c004072     { if (p0) jump d6c <ANGEL_call_host_poll+0x60>
     c8c:	00 40 23 72 	72234000       r3.h = #0
     c90:	a6 59 00 78 	780059a6       r6 = #205
     c94:	03 c8 dd a1 	a1ddc803       memd (r29 + #24) = r9:8 }
     c98:	40 40 23 71 	71234040     { r3.l = #64
     c9c:	00 40 24 72 	72244000       r4.h = #0
     ca0:	02 43 00 75 	75004302       p2 = cmp.eq (r0, #24)
     ca4:	03 c6 00 f2 	f200c603       p3 = cmp.eq (r0, r6) }
     ca8:	09 40 65 70 	70654009     { r9 = r5
     cac:	03 42 23 6b 	6b234203       p3 = or (p2, p3)
     cb0:	20 40 24 71 	71244020       r4.l = #32
     cb4:	07 c0 83 91 	9183c007       r7 = memw (r3 + #0) }
     cb8:	08 40 88 6e 	6e884008     { r8 = htid
     cbc:	00 c0 00 7f 	7f00c000       nop }
     cc0:	02 40 26 72 	72264002     { r6.h = #2
     cc4:	70 43 00 5c 	5c004370       if (p3) jump da0 <ANGEL_call_host_poll+0x94>
     cc8:	00 40 07 75 	75074000       p0 = cmp.eq (r7, #0)
     ccc:	00 c0 00 7f 	7f00c000       nop }
     cd0:	00 40 07 75 	75074000     { p0 = cmp.eq (r7, #0)
     cd4:	00 40 20 5c 	5c204000       if !p0 jump cd0 <event_handle_trap0+0x90>
     cd8:	37 00 15 48 	48150037       r5 = #1 ; r7 = memw (r3 + #0) }
     cdc:	07 c0 03 92 	9203c007     r7 = memw_locked (r3)
     ce0:	01 c5 a3 a0 	a0a3c501     memw_locked (r3, p1) = r5
     ce4:	fc 61 ff 5c 	5cff61fc     { if !p1 jump cdc <event_handle_trap0+0x9c>
     ce8:	00 c0 07 75 	7507c000       p0 = cmp.eq (r7, #0) }
     cec:	f2 e0 ff 5c 	5cffe0f2     if !p0 jump cd0 <event_handle_trap0+0x90>
     cf0:	42 48 02 f4 	f4024842     { r2 = mux (p2, r2, r8)
     cf4:	00 c0 c4 a1 	a1c4c000       memd (r4 + #0) = r1:0 }
     cf8:	02 c2 84 a1 	a184c202     memw (r4 + #8) = r2
     cfc:	03 c5 84 a1 	a184c503     memw (r4 + #12) = r5
     d00:	00 c0 44 a0 	a044c000     dccleaninva (r4)
     d04:	e6 c1 04 91 	9104c1e6     r6 = memb (r4 + #15)
     d08:	00 c0 44 a0 	a044c000     dccleaninva (r4)

00000d0c <ANGEL_call_host_poll>:
     d0c:	00 c0 26 72 	7226c000     r6.h = #0
     d10:	3c c0 26 71 	7126c03c     r6.l = #60
     d14:	06 c0 86 91 	9186c006     r6 = memw (r6 + #0)
     d18:	0c 41 06 10 	1006410c     { p0 = cmp.eq (r6, #1) ; if (p0.new) jump:nt d30 <ANGEL_call_host_poll+0x24>
     d1c:	05 28 06 28 	28062805       r6 = #0 ; r5 = #0 }
     d20:	66 c0 84 91 	9184c066     r6 = memw (r4 + #12)
     d24:	00 c0 44 a0 	a044c000     dccleaninva (r4)
     d28:	05 40 00 78 	78004005     { r5 = #0
     d2c:	00 c0 c4 91 	91c4c000       r1:0 = memd (r4 + #0) }
     d30:	07 c0 03 92 	9203c007     r7 = memw_locked (r3)
     d34:	01 c5 a3 a0 	a0a3c501     memw_locked (r3, p1) = r5
     d38:	fc 61 ff 5c 	5cff61fc     { if !p1 jump d30 <ANGEL_call_host_poll+0x24>
     d3c:	84 28 60 79 	79602884       p0 = cmp.eq (r6, #0) ; memw (sp + #32) = r4 }
     d40:	10 40 20 5c 	5c204010     { if !p0 jump d60 <ANGEL_call_host_poll+0x54>
     d44:	13 1e 02 3e 	3e021e13       r5:4 = memd (sp + #0) ; r7:6 = memd (sp + #16) }
     d48:	04 40 29 62 	62294004     { p3:0 = r9
     d4c:	1d 45 1d b0 	b01d451d       r29 = add (r29, #40)
     d50:	22 40 dd 91 	91dd4022       r3:2 = memd (r29 + #8)
     d54:	68 c0 dd 91 	91ddc068       r9:8 = memd (r29 + #24) }
     d58:	00 c0 1d 65 	651dc000     crswap (r29, sgp0)
     d5c:	00 c0 e0 57 	57e0c000     rte
     d60:	20 58 00 78 	78005820     { r0 = #193
     d64:	b8 41 37 16 	163741b8       r7 = #1 ; jump cd0 <event_handle_trap0+0x90>
     d68:	04 c1 9d 91 	919dc104       r4 = memw (r29 + #32) }
     d6c:	01 c0 9f 6e 	6e9fc001     r1 = pcyclehi
     d70:	00 c0 9e 6e 	6e9ec000     r0 = pcyclelo
     d74:	0c 42 00 5c 	5c00420c     { if (p2) jump d8c <ANGEL_call_host_poll+0x80>
     d78:	02 44 40 e5 	e5404402       r3:2 = mpyu (r0, r4)
     d7c:	46 c0 dd 91 	91ddc046       r7:6 = memd (r29 + #16) }
     d80:	00 44 41 e5 	e5414400     { r1:0 = mpyu (r1, r4)
     d84:	22 e0 02 80 	8002e022       r3:2 = lsr (r3:2, #32) }
     d88:	e0 c2 00 d3 	d300c2e0     r1:0 = add (r1:0, r3:2)
     d8c:	04 40 25 62 	62254004     { p3:0 = r5
     d90:	1d 45 1d b0 	b01d451d       r29 = add (r29, #40)
     d94:	02 1e 09 3e 	3e091e02       r3:2 = memd (sp + #8) ; r5:4 = memd (sp + #0) }
     d98:	00 c0 1d 65 	651dc000     crswap (r29, sgp0)
     d9c:	00 c0 e0 57 	57e0c000     rte
     da0:	08 42 20 5c 	5c204208     { if !p2 jump db0 <ANGEL_call_host_poll+0xa4>
     da4:	26 c0 26 71 	7126c026       r6.l = #38 }
     da8:	02 46 01 f2 	f2014602     { p2 = cmp.eq (r1, r6)
     dac:	94 ff ff 59 	59ffff94       jump cd0 <event_handle_trap0+0x90> }
     db0:	00 c0 21 72 	7221c000     r1.h = #0
     db4:	78 cf 21 71 	7121cf78     r1.l = #3960
     db8:	01 c0 81 91 	9181c001     r1 = memw (r1 + #0)
     dbc:	8a ff ff 59 	59ffff8a     jump cd0 <event_handle_trap0+0x90>

00000dc0 <event_handle_trap1>:
     dc0:	20 c1 00 78 	7800c120     r0 = #9
     dc4:	02 c0 00 67 	6700c002     stid = r0
     dc8:	b4 fc ff 59 	59fffcb4     jump 730 <__coredump>

00000dcc <event_handle_int>:
     dcc:	00 c0 1d 65 	651dc000     crswap (r29, sgp0)
     dd0:	14 c0 9d a0 	a09dc014     allocframe (#160)
     dd4:	00 40 00 6a 	6a004000     { r0 = sa0
     dd8:	00 c0 dd a1 	a1ddc000       memd (r29 + #0) = r1:0 }
     ddc:	01 40 01 6a 	6a014001     { r1 = lc0
     de0:	01 c2 dd a1 	a1ddc201       memd (r29 + #8) = r3:2 }
     de4:	02 40 02 6a 	6a024002     { r2 = sa1
     de8:	02 c4 dd a1 	a1ddc402       memd (r29 + #16) = r5:4 }
     dec:	03 40 03 6a 	6a034003     { r3 = lc1
     df0:	03 c6 dd a1 	a1ddc603       memd (r29 + #24) = r7:6 }
     df4:	04 40 04 6a 	6a044004     { r4 = p3:0
     df8:	04 c8 dd a1 	a1ddc804       memd (r29 + #32) = r9:8 }
     dfc:	05 40 06 6a 	6a064005     { r5 = m0
     e00:	05 ca dd a1 	a1ddca05       memd (r29 + #40) = r11:10 }
     e04:	06 40 07 6a 	6a074006     { r6 = m1
     e08:	06 cc dd a1 	a1ddcc06       memd (r29 + #48) = r13:12 }
     e0c:	07 40 08 6a 	6a084007     { r7 = usr
     e10:	07 ce dd a1 	a1ddce07       memd (r29 + #56) = r15:14 }
     e14:	08 40 0a 6a 	6a0a4008     { r8 = ugp
     e18:	08 d0 dd a1 	a1ddd008       memd (r29 + #64) = r17:16 }
     e1c:	09 c0 83 6e 	6e83c009     r9 = elr
     e20:	09 d2 dd a1 	a1ddd209     memd (r29 + #72) = r19:18
     e24:	0a d4 dd a1 	a1ddd40a     memd (r29 + #80) = r21:20
     e28:	0b d6 dd a1 	a1ddd60b     memd (r29 + #88) = r23:22
     e2c:	0c d8 dd a1 	a1ddd80c     memd (r29 + #96) = r25:24
     e30:	0d da dd a1 	a1ddda0d     memd (r29 + #104) = r27:26
     e34:	0e c0 dd a1 	a1ddc00e     memd (r29 + #112) = r1:0
     e38:	00 c0 86 6e 	6e86c000     r0 = ssr
     e3c:	00 40 21 72 	72214000     { r1.h = #0
     e40:	07 48 40 8f 	8f404807       r7 = insert (r0, #8, #16)
     e44:	79 2a 02 70 	70022a79       r2 = r0 ; memd (sp + #120) = r3:2 }
     e48:	e0 43 00 76 	760043e0     { r0 = and (r0, #31)
     e4c:	80 4f 21 71 	71214f80       r1.l = #3968
     e50:	10 c4 dd a1 	a1ddc410       memd (r29 + #128) = r5:4 }
     e54:	41 41 00 c4 	c4004141     { r1 = addasl (r1, r0, #2)
     e58:	11 c6 dd a1 	a1ddc611       memd (r29 + #136) = r7:6 }
     e5c:	03 40 00 78 	78004003     { r3 = #0
     e60:	1f 40 7c 70 	707c401f       r31 = r28
     e64:	01 40 81 91 	91814001       r1 = memw (r1 + #0)
     e68:	12 c8 dd a1 	a1ddc812       memd (r29 + #144) = r9:8 }
     e6c:	02 43 43 8f 	8f434302     { r2 = insert (r3, #3, #16)
     e70:	00 40 01 75 	75014000       p0 = cmp.eq (r1, #0)
     e74:	13 de dd a1 	a1ddde13       memd (r29 + #152) = r31:30 }
     e78:	1e c0 00 5c 	5c00c01e     if (p0) jump eb4 <event_handle_int+0xe8>
     e7c:	06 c0 02 67 	6702c006     ssr = r2
     e80:	00 c0 1d 65 	651dc000     crswap (r29, sgp0)
     e84:	00 c0 a1 50 	50a1c000     callr r1
     e88:	00 c0 1d 65 	651dc000     crswap (r29, sgp0)
     e8c:	00 c0 86 6e 	6e86c000     r0 = ssr
     e90:	00 40 3a 72 	723a4000     { r26.h = #0
     e94:	8b 3e 61 48 	48613e8b       r1 = #6 ; r7:6 = memd (sp + #136) }
     e98:	07 40 27 70 	70274007     { r7 = asrh (r7)
     e9c:	00 43 41 8f 	8f414300       r0 = insert (r1, #3, #16)
     ea0:	01 c0 3a 71 	713ac001       r26.l = #1 }
     ea4:	e7 c3 07 76 	7607c3e7     r7 = and (r7, #31)
     ea8:	da c7 5a c6 	c65ac7da     r26 = lsl (r26, r7)
     eac:	06 c0 00 67 	6700c006     ssr = r0
     eb0:	60 c0 1a 64 	641ac060     ciad (r26)
     eb4:	7e 42 dd 91 	91dd427e     { r31:30 = memd (r29 + #152)
     eb8:	48 c2 dd 91 	91ddc248       r9:8 = memd (r29 + #144) }
     ebc:	03 c0 09 67 	6709c003     elr = r9
     ec0:	0a 40 28 62 	6228400a     { ugp = r8
     ec4:	82 1e 8b 3e 	3e8b1e82       r7:6 = memd (sp + #136) ; r5:4 = memd (sp + #128) }
     ec8:	08 40 27 62 	62274008     { usr = r7
     ecc:	1c 40 7f 70 	707f401c       r28 = r31
     ed0:	70 1e 79 3e 	3e791e70       r3:2 = memd (sp + #120) ; r1:0 = memd (sp + #112) }
     ed4:	07 40 26 62 	62264007     { m1 = r6
     ed8:	ba 41 dd 91 	91dd41ba       r27:26 = memd (r29 + #104)
     edc:	98 c1 dd 91 	91ddc198       r25:24 = memd (r29 + #96) }
     ee0:	06 40 25 62 	62254006     { m0 = r5
     ee4:	56 1e 5f 3e 	3e5f1e56       r23:22 = memd (sp + #88) ; r21:20 = memd (sp + #80) }
     ee8:	04 40 24 62 	62244004     { p3:0 = r4
     eec:	44 1e 4d 3e 	3e4d1e44       r19:18 = memd (sp + #72) ; r17:16 = memd (sp + #64) }
     ef0:	03 40 23 62 	62234003     { lc1 = r3
     ef4:	ee 40 dd 91 	91dd40ee       r15:14 = memd (r29 + #56)
     ef8:	cc c0 dd 91 	91ddc0cc       r13:12 = memd (r29 + #48) }
     efc:	02 40 22 62 	62224002     { sa1 = r2
     f00:	aa 40 dd 91 	91dd40aa       r11:10 = memd (r29 + #40)
     f04:	88 c0 dd 91 	91ddc088       r9:8 = memd (r29 + #32) }
     f08:	01 40 21 62 	62214001     { lc0 = r1
     f0c:	12 1e 1b 3e 	3e1b1e12       r7:6 = memd (sp + #24) ; r5:4 = memd (sp + #16) }
     f10:	00 40 20 62 	62204000     { sa0 = r0
     f14:	00 1e 09 3e 	3e091e00       r3:2 = memd (sp + #8) ; r1:0 = memd (sp + #0) }
     f18:	1e c0 1e 90 	901ec01e     deallocframe
     f1c:	00 c0 1d 65 	651dc000     crswap (r29, sgp0)
     f20:	00 c0 e0 57 	57e0c000     rte
     f24:	00 40 00 7f 	7f004000     { nop
     f28:	00 40 00 7f 	7f004000       nop
     f2c:	00 c0 00 7f 	7f00c000       nop }

00000f30 <.NoHandler>:
     f30:	00 c0 9f 52 	529fc000     jumpr r31
	...

00000f40 <l2CacheSize>:
     f40:	03 00 00 00 	00000003     r0 = memw (r0 + #0) ; r3 = memw (r0 + #0)

00000f44 <ICacheEnable>:
     f44:	01 00 00 00 	00000001     r0 = memw (r0 + #0) ; r1 = memw (r0 + #0)

00000f48 <ICachePrefetch>:
     f48:	01 00 00 00 	00000001     r0 = memw (r0 + #0) ; r1 = memw (r0 + #0)

00000f4c <DCacheEnable>:
     f4c:	01 00 00 00 	00000001     r0 = memw (r0 + #0) ; r1 = memw (r0 + #0)

00000f50 <DCachePrefetch>:
     f50:	01 00 00 00 	00000001     r0 = memw (r0 + #0) ; r1 = memw (r0 + #0)

00000f54 <l2WriteBack>:
     f54:	01 00 00 00 	00000001     r0 = memw (r0 + #0) ; r1 = memw (r0 + #0)

00000f58 <EventVectorBase>:
     f58:	00 40 00 00 	00004000     { immext (#0)

00000f5c <TLBMapTable>:
     f5c:	40 1d 00 00 	00001d40       r0 = memw (r0 + #0) ; r0 = memub (r4 + #13) }

00000f60 <EnableTranslation>:
     f60:	01 00 00 00 	00000001     r0 = memw (r0 + #0) ; r1 = memw (r0 + #0)

00000f64 <UseDefaultTLBMissHandler>:
     f64:	01 00 00 00 	00000001     r0 = memw (r0 + #0) ; r1 = memw (r0 + #0)

00000f68 <Enable64TLBs>:
     f68:	01 00 00 00 	00000001     r0 = memw (r0 + #0) ; r1 = memw (r0 + #0)

00000f6c <EnablePcycle>:
     f6c:	01 00 00 00 	00000001     r0 = memw (r0 + #0) ; r1 = memw (r0 + #0)

00000f70 <EnableDMT>:
     f70:	01 00 00 00 	00000001     r0 = memw (r0 + #0) ; r1 = memw (r0 + #0)

00000f74 <EnableQoS>:
     f74:	01 00 00 00 	00000001     r0 = memw (r0 + #0) ; r1 = memw (r0 + #0)

00000f78 <CoreDump>:
     f78:	00 10 00 00 	00001000     r0 = memw (r0 + #0) ; r0 = memub (r0 + #0)
     f7c:	00 00 00 00 	00000000     r0 = memw (r0 + #0) ; r0 = memw (r0 + #0)

00000f80 <__IntHandlers>:
     f80:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     f84:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     f88:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     f8c:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     f90:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     f94:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     f98:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     f9c:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fa0:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fa4:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fa8:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fac:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fb0:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fb4:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fb8:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fbc:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fc0:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fc4:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fc8:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fcc:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fd0:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fd4:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fd8:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fdc:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fe0:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fe4:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fe8:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     fec:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     ff0:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     ff4:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     ff8:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)
     ffc:	30 0f 00 00 	00000f30     r0 = memw (r0 + #0) ; r0 = memw (r3 + #60)

00001000 <RegDump>:
	...

00001120 <exc_stack_lim0>:
	...

000012a0 <exc_stack_top0>:
	...

000012a8 <exc_stack_lim1>:
	...

00001428 <exc_stack_top1>:
	...

00001430 <exc_stack_lim2>:
	...

000015b0 <exc_stack_top2>:
	...

000015b8 <exc_stack_lim3>:
	...

00001738 <exc_stack_top3>:
	...

00001740 <exc_stack_lim4>:
	...

000018c0 <exc_stack_top4>:
	...

000018c8 <exc_stack_lim5>:
	...

00001a48 <exc_stack_top5>:
    1a48:	00 00 00 00 	00000000     r0 = memw (r0 + #0) ; r0 = memw (r0 + #0)

00001a4c <exc_stack_tops>:
    1a4c:	a0 12 00 00 	000012a0     r0 = memw (r0 + #0) ; r0 = memub (r18 + #2)
    1a50:	28 14 00 00 	00001428     r0 = memw (r0 + #0) ; r16 = memub (r2 + #4)
    1a54:	b0 15 00 00 	000015b0     r0 = memw (r0 + #0) ; r0 = memub (r19 + #5)
    1a58:	38 17 00 00 	00001738     r0 = memw (r0 + #0) ; r16 = memub (r3 + #7)
    1a5c:	c0 18 00 00 	000018c0     r0 = memw (r0 + #0) ; r0 = memub (r20 + #8)
    1a60:	48 1a 00 00 	00001a48     r0 = memw (r0 + #0) ; r16 = memub (r4 + #10)

00001a64 <__start_pc>:
    1a64:	30 07 00 00 	00000730     r0 = memw (r0 + #0) ; r0 = memw (r3 + #28)
    1a68:	30 07 00 00 	00000730     r0 = memw (r0 + #0) ; r0 = memw (r3 + #28)
    1a6c:	30 07 00 00 	00000730     r0 = memw (r0 + #0) ; r0 = memw (r3 + #28)
    1a70:	30 07 00 00 	00000730     r0 = memw (r0 + #0) ; r0 = memw (r3 + #28)
    1a74:	30 07 00 00 	00000730     r0 = memw (r0 + #0) ; r0 = memw (r3 + #28)
    1a78:	30 07 00 00 	00000730     r0 = memw (r0 + #0) ; r0 = memw (r3 + #28)

00001a7c <__start_sp>:
	...

00001a94 <__start_param>:
	...

00001aac <__stack_size>:
	...

00001ac4 <v5_syscfg_l2_table>:
    1ac4:	00 02 03 00 	00030200     r3 = memw (r0 + #0) ; r0 = memw (r0 + #8)
    1ac8:	04 00 04 00 	00040004     r4 = memw (r0 + #0) ; r4 = memw (r0 + #0)
	...

00001b00 <__tlb_lock>:
    1b00:	00 00 00 00 	00000000     r0 = memw (r0 + #0) ; r0 = memw (r0 + #0)

00001b04 <__tlb_idx>:
    1b04:	05 00 00 00 	00000005     r0 = memw (r0 + #0) ; r5 = memw (r0 + #0)
    1b08:	00 c0 00 7f 	7f00c000     nop
    1b0c:	00 c0 00 7f 	7f00c000     nop
    1b10:	00 c0 00 7f 	7f00c000     nop
    1b14:	00 c0 00 7f 	7f00c000     nop
    1b18:	00 c0 00 7f 	7f00c000     nop
    1b1c:	00 c0 00 7f 	7f00c000     nop
    1b20:	00 c0 20 72 	7220c000     r0.h = #0
    1b24:	00 c0 20 71 	7120c000     r0.l = #0
    1b28:	40 c0 00 75 	7500c040     p0 = cmp.eq (r0, ##2)
    1b2c:	06 c0 00 5c 	5c00c006     if (p0) jump 1b38 <hexagon_pre_main>
    1b30:	60 c0 00 75 	7500c060     p0 = cmp.eq (r0, #3)
    1b34:	c0 c0 00 5c 	5c00c0c0     if (p0) jump 1cb4 <hexagon_start_main>

00001b38 <hexagon_pre_main>:
    1b38:	1e c0 00 78 	7800c01e     r30 = #0

00001b3c <.PreHeap>:
    1b3c:	00 c0 20 72 	7220c000     r0.h = #0
    1b40:	00 c0 20 71 	7120c000     r0.l = #0
    1b44:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
    1b48:	01 c0 21 72 	7221c001     r1.h = #1
    1b4c:	18 d0 21 71 	7121d018     r1.l = #4120
    1b50:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
    1b54:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)
    1b58:	01 c0 24 72 	7224c001     r4.h = #1
    1b5c:	18 d0 24 71 	7124d018     r4.l = #4120
    1b60:	04 c0 84 91 	9184c004     r4 = memw (r4 + #0)
    1b64:	00 c0 25 72 	7225c000     r5.h = #0
    1b68:	00 c0 25 71 	7125c000     r5.l = #0
    1b6c:	00 c0 05 75 	7505c000     p0 = cmp.eq (r5, #0)
    1b70:	00 c4 20 72 	7220c400     r0.h = #1024
    1b74:	00 c0 20 71 	7120c000     r0.l = #0
    1b78:	05 c0 00 74 	7400c005     if (p0) r5 = add (r0, #0)
    1b7c:	05 c5 04 f3 	f304c505     r5 = add (r4, r5)
    1b80:	e5 c1 05 b0 	b005c1e5     r5 = add (r5, #15)
    1b84:	05 fe 25 76 	7625fe05     r5 = and (r5, #-16)
    1b88:	01 c0 21 72 	7221c001     r1.h = #1
    1b8c:	1c d0 21 71 	7121d01c     r1.l = #4124
    1b90:	00 c5 81 a1 	a181c500     memw (r1 + #0) = r5
    1b94:	05 c0 81 91 	9181c005     r5 = memw (r1 + #0)
    1b98:	00 c0 27 72 	7227c000     r7.h = #0
    1b9c:	00 c0 27 71 	7127c000     r7.l = #0
    1ba0:	00 c0 07 75 	7507c000     p0 = cmp.eq (r7, #0)
    1ba4:	10 c0 20 72 	7220c010     r0.h = #16
    1ba8:	00 c0 20 71 	7120c000     r0.l = #0
    1bac:	07 c0 00 74 	7400c007     if (p0) r7 = add (r0, #0)
    1bb0:	06 c7 05 f3 	f305c706     r6 = add (r5, r7)
    1bb4:	06 fe 26 76 	7626fe06     r6 = and (r6, #-16)
    1bb8:	20 d0 20 71 	7120d020     r0.l = #4128
    1bbc:	01 c0 20 72 	7220c001     r0.h = #1
    1bc0:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
    1bc4:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
    1bc8:	18 c0 20 5c 	5c20c018     if !p0 jump 1bf8 <.SkipUpdate>
    1bcc:	01 c0 21 72 	7221c001     r1.h = #1
    1bd0:	20 d0 21 71 	7121d020     r1.l = #4128
    1bd4:	00 c6 81 a1 	a181c600     memw (r1 + #0) = r6
    1bd8:	06 c0 81 91 	9181c006     r6 = memw (r1 + #0)
    1bdc:	00 c0 20 72 	7220c000     r0.h = #0
    1be0:	00 c0 20 71 	7120c000     r0.l = #0
    1be4:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
    1be8:	01 c0 21 72 	7221c001     r1.h = #1
    1bec:	20 d0 21 71 	7121d020     r1.l = #4128
    1bf0:	00 c0 81 44 	4481c000     if !p0 memw (r1 + #0) = r0
    1bf4:	00 c0 81 45 	4581c000     if !p0 r0 = memw (r1 + #0)

00001bf8 <.SkipUpdate>:
    1bf8:	01 c0 26 72 	7226c001     r6.h = #1
    1bfc:	20 d0 26 71 	7126d020     r6.l = #4128
    1c00:	06 c0 86 91 	9186c006     r6 = memw (r6 + #0)
    1c04:	07 c6 27 f3 	f327c607     r7 = sub (r6, r7)
    1c08:	e7 c1 07 b0 	b007c1e7     r7 = add (r7, #15)
    1c0c:	07 fe 27 76 	7627fe07     r7 = and (r7, #-16)
    1c10:	01 c0 21 72 	7221c001     r1.h = #1
    1c14:	24 d0 21 71 	7121d024     r1.l = #4132
    1c18:	00 c7 81 a1 	a181c700     memw (r1 + #0) = r7
    1c1c:	07 c0 81 91 	9181c007     r7 = memw (r1 + #0)

00001c20 <.PreStack>:
    1c20:	00 c0 21 72 	7221c000     r1.h = #0
    1c24:	00 c0 21 71 	7121c000     r1.l = #0
    1c28:	0a e1 01 11 	1101e10a     p0 = cmp.gtu (r1, #1) ; if (p0.new) jump:t 1c3c <.PreSDA>
    1c2c:	01 c0 20 72 	7220c001     r0.h = #1
    1c30:	20 d0 20 71 	7120d020     r0.l = #4128
    1c34:	00 c0 80 91 	9180c000     r0 = memw (r0 + #0)
    1c38:	1d fe 20 76 	7620fe1d     r29 = and (r0, #-16)

00001c3c <.PreSDA>:
    1c3c:	03 c0 20 72 	7220c003     r0.h = #3
    1c40:	00 c0 e0 71 	71e0c000     r0.l = #49152
    1c44:	0b c0 20 62 	6220c00b     gp = r0
    1c48:	00 c0 3c 72 	723cc000     r28.h = #0
    1c4c:	c0 d1 7c 71 	717cd1c0     r28.l = #20928
    1c50:	01 c0 20 72 	7220c001     r0.h = #1
    1c54:	2c d0 20 71 	7120d02c     r0.l = #4140
    1c58:	01 c0 02 78 	7802c001     r1 = #1024
    1c5c:	00 c0 bc 50 	50bcc000     callr r28

00001c60 <.PreBSS>:
    1c60:	00 c0 20 72 	7220c000     r0.h = #0
    1c64:	00 c0 20 71 	7120c000     r0.l = #0
    1c68:	26 c1 80 10 	1080c126     p0 = cmp.gt (r0, #1) ; if (p0.new) jump:nt 1cb4 <hexagon_start_main>
    1c6c:	01 c0 20 72 	7220c001     r0.h = #1
    1c70:	00 db 20 71 	7120db00     r0.l = #6912
    1c74:	03 c0 22 72 	7222c003     r2.h = #3
    1c78:	00 fe a2 71 	71a2fe00     r2.l = #48640
    1c7c:	00 c0 3c 72 	723cc000     r28.h = #0
    1c80:	40 e5 7c 71 	717ce540     r28.l = #25920
    1c84:	01 40 00 78 	78004001     { r1 = #0
    1c88:	00 40 bc 50 	50bc4000       callr r28
    1c8c:	02 c2 20 f3 	f320c202       r2 = sub (r2, r0) }
    1c90:	03 c0 20 72 	7220c003     r0.h = #3
    1c94:	80 c3 e0 71 	71e0c380     r0.l = #50048
    1c98:	03 c0 22 72 	7222c003     r2.h = #3
    1c9c:	80 c3 e2 71 	71e2c380     r2.l = #50048
    1ca0:	00 c0 3c 72 	723cc000     r28.h = #0
    1ca4:	40 e5 7c 71 	717ce540     r28.l = #25920
    1ca8:	01 40 00 78 	78004001     { r1 = #0
    1cac:	00 40 bc 50 	50bc4000       callr r28
    1cb0:	02 c2 20 f3 	f320c202       r2 = sub (r2, r0) }

00001cb4 <hexagon_start_main>:
    1cb4:	00 c0 22 72 	7222c000     r2.h = #0
    1cb8:	00 c0 22 71 	7122c000     r2.l = #0
    1cbc:	01 c0 23 72 	7223c001     r3.h = #1
    1cc0:	30 d4 23 71 	7123d430     r3.l = #5168
    1cc4:	20 c0 42 75 	7542c020     p0 = cmp.gt (r2, #1)
    1cc8:	00 40 00 7e 	7e004000     { if (p0) r0 = #0
    1ccc:	01 40 00 7e 	7e004001       if (p0) r1 = #0
    1cd0:	00 c0 c3 45 	45c3c000       if !p0 r1:0 = memd (r3 + #0) }
    1cd4:	00 c0 22 72 	7222c000     r2.h = #0
    1cd8:	40 fd 22 71 	7122fd40     r2.l = #15680
    1cdc:	00 c0 23 72 	7223c000     r3.h = #0
    1ce0:	60 fa e3 71 	71e3fa60     r3.l = #64096

00001ce4 <.PreRegs>:
    1ce4:	be fa a4 72 	72a4fabe     r4.h = #47806
    1ce8:	ef fe a4 71 	71a4feef     r4.l = #48879
    1cec:	05 c0 64 70 	7064c005     r5 = r4
    1cf0:	06 44 05 f5 	f5054406     { r7:6 = combine (r5, r4)
    1cf4:	08 44 05 f5 	f5054408       r9:8 = combine (r5, r4)
    1cf8:	0a 44 05 f5 	f505440a       r11:10 = combine (r5, r4)
    1cfc:	0c c4 05 f5 	f505c40c       r13:12 = combine (r5, r4) }
    1d00:	0e 44 05 f5 	f505440e     { r15:14 = combine (r5, r4)
    1d04:	10 44 05 f5 	f5054410       r17:16 = combine (r5, r4)
    1d08:	12 44 05 f5 	f5054412       r19:18 = combine (r5, r4)
    1d0c:	14 c4 05 f5 	f505c414       r21:20 = combine (r5, r4) }
    1d10:	16 44 05 f5 	f5054416     { r23:22 = combine (r5, r4)
    1d14:	18 44 05 f5 	f5054418       r25:24 = combine (r5, r4)
    1d18:	1a c4 05 f5 	f505c41a       r27:26 = combine (r5, r4) }

00001d1c <.PreStart>:
    1d1c:	00 c0 3c 72 	723cc000     r28.h = #0
    1d20:	70 e6 7c 71 	717ce670     r28.l = #26224
    1d24:	00 c0 bc 50 	50bcc000     callr r28

00001d28 <.PrePost>:
    1d28:	00 c0 20 72 	7220c000     r0.h = #0
    1d2c:	00 c0 20 71 	7120c000     r0.l = #0
    1d30:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
    1d34:	00 c0 20 51 	5120c000     if !p0 callr r0
    1d38:	e0 c7 00 78 	7800c7e0     r0 = #63
    1d3c:	00 c0 60 64 	6460c000     stop (r0)

00001d40 <UPTE_START>:
    1d40:	07 00 17 00 	00170007     r7 = memw (r1 + #0) ; r7 = memw (r0 + #0)
    1d44:	27 00 37 00 	00370027     r7 = memw (r3 + #0) ; r7 = memw (r2 + #0)
    1d48:	47 00 57 00 	00570047     r7 = memw (r5 + #0) ; r7 = memw (r4 + #0)
    1d4c:	67 00 77 00 	00770067     r7 = memw (r7 + #0) ; r7 = memw (r6 + #0)
    1d50:	87 00 97 00 	00970087     r7 = memw (r17 + #0) ; r7 = memw (r16 + #0)
    1d54:	a7 00 b7 00 	00b700a7     r7 = memw (r19 + #0) ; r7 = memw (r18 + #0)
    1d58:	c7 00 d7 00 	00d700c7     r7 = memw (r21 + #0) ; r7 = memw (r20 + #0)
    1d5c:	e7 00 f7 00 	00f700e7     r7 = memw (r23 + #0) ; r7 = memw (r22 + #0)
    1d60:	07 01 17 01 	01170107     r7 = memw (r1 + #4) ; r7 = memw (r0 + #4)
    1d64:	27 01 37 01 	01370127     r7 = memw (r3 + #4) ; r7 = memw (r2 + #4)
    1d68:	47 01 57 01 	01570147     r7 = memw (r5 + #4) ; r7 = memw (r4 + #4)
    1d6c:	67 01 77 01 	01770167     r7 = memw (r7 + #4) ; r7 = memw (r6 + #4)
    1d70:	87 01 97 01 	01970187     r7 = memw (r17 + #4) ; r7 = memw (r16 + #4)
    1d74:	a7 01 b7 01 	01b701a7     r7 = memw (r19 + #4) ; r7 = memw (r18 + #4)
    1d78:	c7 01 d7 01 	01d701c7     r7 = memw (r21 + #4) ; r7 = memw (r20 + #4)
    1d7c:	e7 01 f7 01 	01f701e7     r7 = memw (r23 + #4) ; r7 = memw (r22 + #4)
    1d80:	07 02 17 02 	02170207     r7 = memw (r1 + #8) ; r7 = memw (r0 + #8)
    1d84:	27 02 37 02 	02370227     r7 = memw (r3 + #8) ; r7 = memw (r2 + #8)
    1d88:	47 02 57 02 	02570247     r7 = memw (r5 + #8) ; r7 = memw (r4 + #8)
    1d8c:	67 02 77 02 	02770267     r7 = memw (r7 + #8) ; r7 = memw (r6 + #8)
    1d90:	87 02 97 02 	02970287     r7 = memw (r17 + #8) ; r7 = memw (r16 + #8)
    1d94:	a7 02 b7 02 	02b702a7     r7 = memw (r19 + #8) ; r7 = memw (r18 + #8)
    1d98:	c7 02 d7 02 	02d702c7     r7 = memw (r21 + #8) ; r7 = memw (r20 + #8)
    1d9c:	e7 02 f7 02 	02f702e7     r7 = memw (r23 + #8) ; r7 = memw (r22 + #8)
    1da0:	07 03 17 03 	03170307     r7 = memw (r1 + #12) ; r7 = memw (r0 + #12)
    1da4:	27 03 37 03 	03370327     r7 = memw (r3 + #12) ; r7 = memw (r2 + #12)
    1da8:	47 03 57 03 	03570347     r7 = memw (r5 + #12) ; r7 = memw (r4 + #12)
    1dac:	67 03 77 03 	03770367     r7 = memw (r7 + #12) ; r7 = memw (r6 + #12)
    1db0:	87 03 97 03 	03970387     r7 = memw (r17 + #12) ; r7 = memw (r16 + #12)
    1db4:	a7 03 b7 03 	03b703a7     r7 = memw (r19 + #12) ; r7 = memw (r18 + #12)
    1db8:	c7 03 d7 03 	03d703c7     r7 = memw (r21 + #12) ; r7 = memw (r20 + #12)
    1dbc:	e7 03 f7 03 	03f703e7     r7 = memw (r23 + #12) ; r7 = memw (r22 + #12)
    1dc0:	07 04 17 04 	04170407     r7 = memw (r1 + #16) ; r7 = memw (r0 + #16)
    1dc4:	27 04 37 04 	04370427     r7 = memw (r3 + #16) ; r7 = memw (r2 + #16)
    1dc8:	47 04 57 04 	04570447     r7 = memw (r5 + #16) ; r7 = memw (r4 + #16)
    1dcc:	67 04 77 04 	04770467     r7 = memw (r7 + #16) ; r7 = memw (r6 + #16)
    1dd0:	87 04 97 04 	04970487     r7 = memw (r17 + #16) ; r7 = memw (r16 + #16)
    1dd4:	a7 04 b7 04 	04b704a7     r7 = memw (r19 + #16) ; r7 = memw (r18 + #16)
    1dd8:	c7 04 d7 04 	04d704c7     r7 = memw (r21 + #16) ; r7 = memw (r20 + #16)
    1ddc:	e7 04 f7 04 	04f704e7     r7 = memw (r23 + #16) ; r7 = memw (r22 + #16)
    1de0:	07 05 17 05 	05170507     r7 = memw (r1 + #20) ; r7 = memw (r0 + #20)
    1de4:	27 05 37 05 	05370527     r7 = memw (r3 + #20) ; r7 = memw (r2 + #20)
    1de8:	47 05 57 05 	05570547     r7 = memw (r5 + #20) ; r7 = memw (r4 + #20)
    1dec:	67 05 77 05 	05770567     r7 = memw (r7 + #20) ; r7 = memw (r6 + #20)
    1df0:	87 05 97 05 	05970587     r7 = memw (r17 + #20) ; r7 = memw (r16 + #20)
    1df4:	a7 05 b7 05 	05b705a7     r7 = memw (r19 + #20) ; r7 = memw (r18 + #20)
    1df8:	c7 05 d7 05 	05d705c7     r7 = memw (r21 + #20) ; r7 = memw (r20 + #20)
    1dfc:	e7 05 f7 05 	05f705e7     r7 = memw (r23 + #20) ; r7 = memw (r22 + #20)
    1e00:	07 06 17 06 	06170607     r7 = memw (r1 + #24) ; r7 = memw (r0 + #24)
    1e04:	27 06 37 06 	06370627     r7 = memw (r3 + #24) ; r7 = memw (r2 + #24)
    1e08:	47 06 57 06 	06570647     r7 = memw (r5 + #24) ; r7 = memw (r4 + #24)
    1e0c:	67 06 77 06 	06770667     r7 = memw (r7 + #24) ; r7 = memw (r6 + #24)
    1e10:	87 06 97 06 	06970687     r7 = memw (r17 + #24) ; r7 = memw (r16 + #24)
    1e14:	a7 06 b7 06 	06b706a7     r7 = memw (r19 + #24) ; r7 = memw (r18 + #24)
    1e18:	c7 06 d7 06 	06d706c7     r7 = memw (r21 + #24) ; r7 = memw (r20 + #24)
    1e1c:	e7 06 f7 06 	06f706e7     r7 = memw (r23 + #24) ; r7 = memw (r22 + #24)
    1e20:	07 07 17 07 	07170707     r7 = memw (r1 + #28) ; r7 = memw (r0 + #28)
    1e24:	27 07 37 07 	07370727     r7 = memw (r3 + #28) ; r7 = memw (r2 + #28)
    1e28:	47 07 57 07 	07570747     r7 = memw (r5 + #28) ; r7 = memw (r4 + #28)
    1e2c:	67 07 77 07 	07770767     r7 = memw (r7 + #28) ; r7 = memw (r6 + #28)
    1e30:	87 07 97 07 	07970787     r7 = memw (r17 + #28) ; r7 = memw (r16 + #28)
    1e34:	a7 07 b7 07 	07b707a7     r7 = memw (r19 + #28) ; r7 = memw (r18 + #28)
    1e38:	c7 07 d7 07 	07d707c7     r7 = memw (r21 + #28) ; r7 = memw (r20 + #28)
    1e3c:	e7 07 f7 07 	07f707e7     r7 = memw (r23 + #28) ; r7 = memw (r22 + #28)
    1e40:	07 08 17 08 	08170807     r7 = memw (r1 + #32) ; r7 = memw (r0 + #32)
    1e44:	27 08 37 08 	08370827     r7 = memw (r3 + #32) ; r7 = memw (r2 + #32)
    1e48:	47 08 57 08 	08570847     r7 = memw (r5 + #32) ; r7 = memw (r4 + #32)
    1e4c:	67 08 77 08 	08770867     r7 = memw (r7 + #32) ; r7 = memw (r6 + #32)
    1e50:	87 08 97 08 	08970887     r7 = memw (r17 + #32) ; r7 = memw (r16 + #32)
    1e54:	a7 08 b7 08 	08b708a7     r7 = memw (r19 + #32) ; r7 = memw (r18 + #32)
    1e58:	c7 08 d7 08 	08d708c7     r7 = memw (r21 + #32) ; r7 = memw (r20 + #32)
    1e5c:	e7 08 f7 08 	08f708e7     r7 = memw (r23 + #32) ; r7 = memw (r22 + #32)
    1e60:	07 09 17 09 	09170907     r7 = memw (r1 + #36) ; r7 = memw (r0 + #36)
    1e64:	27 09 37 09 	09370927     r7 = memw (r3 + #36) ; r7 = memw (r2 + #36)
    1e68:	47 09 57 09 	09570947     r7 = memw (r5 + #36) ; r7 = memw (r4 + #36)
    1e6c:	67 09 77 09 	09770967     r7 = memw (r7 + #36) ; r7 = memw (r6 + #36)
    1e70:	87 09 97 09 	09970987     r7 = memw (r17 + #36) ; r7 = memw (r16 + #36)
    1e74:	a7 09 b7 09 	09b709a7     r7 = memw (r19 + #36) ; r7 = memw (r18 + #36)
    1e78:	c7 09 d7 09 	09d709c7     r7 = memw (r21 + #36) ; r7 = memw (r20 + #36)
    1e7c:	e7 09 f7 09 	09f709e7     r7 = memw (r23 + #36) ; r7 = memw (r22 + #36)
    1e80:	07 0a 17 0a 	0a170a07     r7 = memw (r1 + #40) ; r7 = memw (r0 + #40)
    1e84:	27 0a 37 0a 	0a370a27     r7 = memw (r3 + #40) ; r7 = memw (r2 + #40)
    1e88:	47 0a 57 0a 	0a570a47     r7 = memw (r5 + #40) ; r7 = memw (r4 + #40)
    1e8c:	67 0a 77 0a 	0a770a67     r7 = memw (r7 + #40) ; r7 = memw (r6 + #40)
    1e90:	87 0a 97 0a 	0a970a87     r7 = memw (r17 + #40) ; r7 = memw (r16 + #40)
    1e94:	a7 0a b7 0a 	0ab70aa7     r7 = memw (r19 + #40) ; r7 = memw (r18 + #40)
    1e98:	c7 0a d7 0a 	0ad70ac7     r7 = memw (r21 + #40) ; r7 = memw (r20 + #40)
    1e9c:	e7 0a f7 0a 	0af70ae7     r7 = memw (r23 + #40) ; r7 = memw (r22 + #40)
    1ea0:	07 0b 17 0b 	0b170b07     r7 = memw (r1 + #44) ; r7 = memw (r0 + #44)
    1ea4:	27 0b 37 0b 	0b370b27     r7 = memw (r3 + #44) ; r7 = memw (r2 + #44)
    1ea8:	47 0b 57 0b 	0b570b47     r7 = memw (r5 + #44) ; r7 = memw (r4 + #44)
    1eac:	67 0b 77 0b 	0b770b67     r7 = memw (r7 + #44) ; r7 = memw (r6 + #44)
    1eb0:	87 0b 97 0b 	0b970b87     r7 = memw (r17 + #44) ; r7 = memw (r16 + #44)
    1eb4:	a7 0b b7 0b 	0bb70ba7     r7 = memw (r19 + #44) ; r7 = memw (r18 + #44)
    1eb8:	c7 0b d7 0b 	0bd70bc7     r7 = memw (r21 + #44) ; r7 = memw (r20 + #44)
    1ebc:	e7 0b f7 0b 	0bf70be7     r7 = memw (r23 + #44) ; r7 = memw (r22 + #44)
    1ec0:	07 0c 17 0c 	0c170c07     r7 = memw (r1 + #48) ; r7 = memw (r0 + #48)
    1ec4:	27 0c 37 0c 	0c370c27     r7 = memw (r3 + #48) ; r7 = memw (r2 + #48)
    1ec8:	47 0c 57 0c 	0c570c47     r7 = memw (r5 + #48) ; r7 = memw (r4 + #48)
    1ecc:	67 0c 77 0c 	0c770c67     r7 = memw (r7 + #48) ; r7 = memw (r6 + #48)
    1ed0:	87 0c 97 0c 	0c970c87     r7 = memw (r17 + #48) ; r7 = memw (r16 + #48)
    1ed4:	a7 0c b7 0c 	0cb70ca7     r7 = memw (r19 + #48) ; r7 = memw (r18 + #48)
    1ed8:	c7 0c d7 0c 	0cd70cc7     r7 = memw (r21 + #48) ; r7 = memw (r20 + #48)
    1edc:	e7 0c f7 0c 	0cf70ce7     r7 = memw (r23 + #48) ; r7 = memw (r22 + #48)
    1ee0:	07 0d 17 0d 	0d170d07     r7 = memw (r1 + #52) ; r7 = memw (r0 + #52)
    1ee4:	27 0d 37 0d 	0d370d27     r7 = memw (r3 + #52) ; r7 = memw (r2 + #52)
    1ee8:	47 0d 57 0d 	0d570d47     r7 = memw (r5 + #52) ; r7 = memw (r4 + #52)
    1eec:	67 0d 77 0d 	0d770d67     r7 = memw (r7 + #52) ; r7 = memw (r6 + #52)
    1ef0:	87 0d 97 0d 	0d970d87     r7 = memw (r17 + #52) ; r7 = memw (r16 + #52)
    1ef4:	a7 0d b7 0d 	0db70da7     r7 = memw (r19 + #52) ; r7 = memw (r18 + #52)
    1ef8:	c7 0d d7 0d 	0dd70dc7     r7 = memw (r21 + #52) ; r7 = memw (r20 + #52)
    1efc:	e7 0d f7 0d 	0df70de7     r7 = memw (r23 + #52) ; r7 = memw (r22 + #52)
    1f00:	07 0e 17 0e 	0e170e07     r7 = memw (r1 + #56) ; r7 = memw (r0 + #56)
    1f04:	27 0e 37 0e 	0e370e27     r7 = memw (r3 + #56) ; r7 = memw (r2 + #56)
    1f08:	47 0e 57 0e 	0e570e47     r7 = memw (r5 + #56) ; r7 = memw (r4 + #56)
    1f0c:	67 0e 77 0e 	0e770e67     r7 = memw (r7 + #56) ; r7 = memw (r6 + #56)
    1f10:	87 0e 97 0e 	0e970e87     r7 = memw (r17 + #56) ; r7 = memw (r16 + #56)
    1f14:	a7 0e b7 0e 	0eb70ea7     r7 = memw (r19 + #56) ; r7 = memw (r18 + #56)
    1f18:	c7 0e d7 0e 	0ed70ec7     r7 = memw (r21 + #56) ; r7 = memw (r20 + #56)
    1f1c:	e7 0e f7 0e 	0ef70ee7     r7 = memw (r23 + #56) ; r7 = memw (r22 + #56)
    1f20:	07 0f 17 0f 	0f170f07     r7 = memw (r1 + #60) ; r7 = memw (r0 + #60)
    1f24:	27 0f 37 0f 	0f370f27     r7 = memw (r3 + #60) ; r7 = memw (r2 + #60)
    1f28:	47 0f 57 0f 	0f570f47     r7 = memw (r5 + #60) ; r7 = memw (r4 + #60)
    1f2c:	67 0f 77 0f 	0f770f67     r7 = memw (r7 + #60) ; r7 = memw (r6 + #60)
    1f30:	87 0f 97 0f 	0f970f87     r7 = memw (r17 + #60) ; r7 = memw (r16 + #60)
    1f34:	a7 0f b7 0f 	0fb70fa7     r7 = memw (r19 + #60) ; r7 = memw (r18 + #60)
    1f38:	c7 0f d7 0f 	0fd70fc7     r7 = memw (r21 + #60) ; r7 = memw (r20 + #60)
    1f3c:	e7 0f f7 0f 	0ff70fe7     r7 = memw (r23 + #60) ; r7 = memw (r22 + #60)
    1f40:	07 10 17 10 	10171007     r7 = memub (r1 + #0) ; r7 = memub (r0 + #0)
    1f44:	27 10 37 10 	10371027     r7 = memub (r3 + #0) ; r7 = memub (r2 + #0)
    1f48:	47 10 57 10 	10571047     r7 = memub (r5 + #0) ; r7 = memub (r4 + #0)
    1f4c:	67 10 77 10 	10771067     r7 = memub (r7 + #0) ; r7 = memub (r6 + #0)
    1f50:	87 10 97 10 	10971087     r7 = memub (r17 + #0) ; r7 = memub (r16 + #0)
    1f54:	a7 10 b7 10 	10b710a7     r7 = memub (r19 + #0) ; r7 = memub (r18 + #0)
    1f58:	c7 10 d7 10 	10d710c7     r7 = memub (r21 + #0) ; r7 = memub (r20 + #0)
    1f5c:	e7 10 f7 10 	10f710e7     r7 = memub (r23 + #0) ; r7 = memub (r22 + #0)
    1f60:	07 11 17 11 	11171107     r7 = memub (r1 + #1) ; r7 = memub (r0 + #1)
    1f64:	27 11 37 11 	11371127     r7 = memub (r3 + #1) ; r7 = memub (r2 + #1)
    1f68:	47 11 57 11 	11571147     r7 = memub (r5 + #1) ; r7 = memub (r4 + #1)
    1f6c:	67 11 77 11 	11771167     r7 = memub (r7 + #1) ; r7 = memub (r6 + #1)
    1f70:	87 11 97 11 	11971187     r7 = memub (r17 + #1) ; r7 = memub (r16 + #1)
    1f74:	a7 11 b7 11 	11b711a7     r7 = memub (r19 + #1) ; r7 = memub (r18 + #1)
    1f78:	c7 11 d7 11 	11d711c7     r7 = memub (r21 + #1) ; r7 = memub (r20 + #1)
    1f7c:	e7 11 f7 11 	11f711e7     r7 = memub (r23 + #1) ; r7 = memub (r22 + #1)
    1f80:	07 12 17 12 	12171207     r7 = memub (r1 + #2) ; r7 = memub (r0 + #2)
    1f84:	27 12 37 12 	12371227     r7 = memub (r3 + #2) ; r7 = memub (r2 + #2)
    1f88:	47 12 57 12 	12571247     r7 = memub (r5 + #2) ; r7 = memub (r4 + #2)
    1f8c:	67 12 77 12 	12771267     r7 = memub (r7 + #2) ; r7 = memub (r6 + #2)
    1f90:	87 12 97 12 	12971287     r7 = memub (r17 + #2) ; r7 = memub (r16 + #2)
    1f94:	a7 12 b7 12 	12b712a7     r7 = memub (r19 + #2) ; r7 = memub (r18 + #2)
    1f98:	c7 12 d7 12 	12d712c7     r7 = memub (r21 + #2) ; r7 = memub (r20 + #2)
    1f9c:	e7 12 f7 12 	12f712e7     r7 = memub (r23 + #2) ; r7 = memub (r22 + #2)
    1fa0:	07 13 17 13 	13171307     r7 = memub (r1 + #3) ; r7 = memub (r0 + #3)
    1fa4:	27 13 37 13 	13371327     r7 = memub (r3 + #3) ; r7 = memub (r2 + #3)
    1fa8:	47 13 57 13 	13571347     r7 = memub (r5 + #3) ; r7 = memub (r4 + #3)
    1fac:	67 13 77 13 	13771367     r7 = memub (r7 + #3) ; r7 = memub (r6 + #3)
    1fb0:	87 13 97 13 	13971387     r7 = memub (r17 + #3) ; r7 = memub (r16 + #3)
    1fb4:	a7 13 b7 13 	13b713a7     r7 = memub (r19 + #3) ; r7 = memub (r18 + #3)
    1fb8:	c7 13 d7 13 	13d713c7     r7 = memub (r21 + #3) ; r7 = memub (r20 + #3)
    1fbc:	e7 13 f7 13 	13f713e7     r7 = memub (r23 + #3) ; r7 = memub (r22 + #3)
    1fc0:	07 14 17 14 	14171407     r7 = memub (r1 + #4) ; r7 = memub (r0 + #4)
    1fc4:	27 14 37 14 	14371427     r7 = memub (r3 + #4) ; r7 = memub (r2 + #4)
    1fc8:	47 14 57 14 	14571447     r7 = memub (r5 + #4) ; r7 = memub (r4 + #4)
    1fcc:	67 14 77 14 	14771467     r7 = memub (r7 + #4) ; r7 = memub (r6 + #4)
    1fd0:	87 14 97 14 	14971487     r7 = memub (r17 + #4) ; r7 = memub (r16 + #4)
    1fd4:	a7 14 b7 14 	14b714a7     r7 = memub (r19 + #4) ; r7 = memub (r18 + #4)
    1fd8:	c7 14 d7 14 	14d714c7     r7 = memub (r21 + #4) ; r7 = memub (r20 + #4)
    1fdc:	e7 14 f7 14 	14f714e7     r7 = memub (r23 + #4) ; r7 = memub (r22 + #4)
    1fe0:	07 15 17 15 	15171507     r7 = memub (r1 + #5) ; r7 = memub (r0 + #5)
    1fe4:	27 15 37 15 	15371527     r7 = memub (r3 + #5) ; r7 = memub (r2 + #5)
    1fe8:	47 15 57 15 	15571547     r7 = memub (r5 + #5) ; r7 = memub (r4 + #5)
    1fec:	67 15 77 15 	15771567     r7 = memub (r7 + #5) ; r7 = memub (r6 + #5)
    1ff0:	87 15 97 15 	15971587     r7 = memub (r17 + #5) ; r7 = memub (r16 + #5)
    1ff4:	a7 15 b7 15 	15b715a7     r7 = memub (r19 + #5) ; r7 = memub (r18 + #5)
    1ff8:	c7 15 d7 15 	15d715c7     r7 = memub (r21 + #5) ; r7 = memub (r20 + #5)
    1ffc:	e7 15 f7 15 	15f715e7     r7 = memub (r23 + #5) ; r7 = memub (r22 + #5)
    2000:	07 16 17 16 	16171607     r7 = memub (r1 + #6) ; r7 = memub (r0 + #6)
    2004:	27 16 37 16 	16371627     r7 = memub (r3 + #6) ; r7 = memub (r2 + #6)
    2008:	47 16 57 16 	16571647     r7 = memub (r5 + #6) ; r7 = memub (r4 + #6)
    200c:	67 16 77 16 	16771667     r7 = memub (r7 + #6) ; r7 = memub (r6 + #6)
    2010:	87 16 97 16 	16971687     r7 = memub (r17 + #6) ; r7 = memub (r16 + #6)
    2014:	a7 16 b7 16 	16b716a7     r7 = memub (r19 + #6) ; r7 = memub (r18 + #6)
    2018:	c7 16 d7 16 	16d716c7     r7 = memub (r21 + #6) ; r7 = memub (r20 + #6)
    201c:	e7 16 f7 16 	16f716e7     r7 = memub (r23 + #6) ; r7 = memub (r22 + #6)
    2020:	07 17 17 17 	17171707     r7 = memub (r1 + #7) ; r7 = memub (r0 + #7)
    2024:	27 17 37 17 	17371727     r7 = memub (r3 + #7) ; r7 = memub (r2 + #7)
    2028:	47 17 57 17 	17571747     r7 = memub (r5 + #7) ; r7 = memub (r4 + #7)
    202c:	67 17 77 17 	17771767     r7 = memub (r7 + #7) ; r7 = memub (r6 + #7)
    2030:	87 17 97 17 	17971787     r7 = memub (r17 + #7) ; r7 = memub (r16 + #7)
    2034:	a7 17 b7 17 	17b717a7     r7 = memub (r19 + #7) ; r7 = memub (r18 + #7)
    2038:	c7 17 d7 17 	17d717c7     r7 = memub (r21 + #7) ; r7 = memub (r20 + #7)
    203c:	e7 17 f7 17 	17f717e7     r7 = memub (r23 + #7) ; r7 = memub (r22 + #7)
    2040:	07 18 17 18 	18171807     r7 = memub (r1 + #8) ; r7 = memub (r0 + #8)
    2044:	27 18 37 18 	18371827     r7 = memub (r3 + #8) ; r7 = memub (r2 + #8)
    2048:	47 18 57 18 	18571847     r7 = memub (r5 + #8) ; r7 = memub (r4 + #8)
    204c:	67 18 77 18 	18771867     r7 = memub (r7 + #8) ; r7 = memub (r6 + #8)
    2050:	87 18 97 18 	18971887     r7 = memub (r17 + #8) ; r7 = memub (r16 + #8)
    2054:	a7 18 b7 18 	18b718a7     r7 = memub (r19 + #8) ; r7 = memub (r18 + #8)
    2058:	c7 18 d7 18 	18d718c7     r7 = memub (r21 + #8) ; r7 = memub (r20 + #8)
    205c:	e7 18 f7 18 	18f718e7     r7 = memub (r23 + #8) ; r7 = memub (r22 + #8)
    2060:	07 19 17 19 	19171907     r7 = memub (r1 + #9) ; r7 = memub (r0 + #9)
    2064:	27 19 37 19 	19371927     r7 = memub (r3 + #9) ; r7 = memub (r2 + #9)
    2068:	47 19 57 19 	19571947     r7 = memub (r5 + #9) ; r7 = memub (r4 + #9)
    206c:	67 19 77 19 	19771967     r7 = memub (r7 + #9) ; r7 = memub (r6 + #9)
    2070:	87 19 97 19 	19971987     r7 = memub (r17 + #9) ; r7 = memub (r16 + #9)
    2074:	a7 19 b7 19 	19b719a7     r7 = memub (r19 + #9) ; r7 = memub (r18 + #9)
    2078:	c7 19 d7 19 	19d719c7     r7 = memub (r21 + #9) ; r7 = memub (r20 + #9)
    207c:	e7 19 f7 19 	19f719e7     r7 = memub (r23 + #9) ; r7 = memub (r22 + #9)
    2080:	07 1a 17 1a 	1a171a07     r7 = memub (r1 + #10) ; r7 = memub (r0 + #10)
    2084:	27 1a 37 1a 	1a371a27     r7 = memub (r3 + #10) ; r7 = memub (r2 + #10)
    2088:	47 1a 57 1a 	1a571a47     r7 = memub (r5 + #10) ; r7 = memub (r4 + #10)
    208c:	67 1a 77 1a 	1a771a67     r7 = memub (r7 + #10) ; r7 = memub (r6 + #10)
    2090:	87 1a 97 1a 	1a971a87     r7 = memub (r17 + #10) ; r7 = memub (r16 + #10)
    2094:	a7 1a b7 1a 	1ab71aa7     r7 = memub (r19 + #10) ; r7 = memub (r18 + #10)
    2098:	c7 1a d7 1a 	1ad71ac7     r7 = memub (r21 + #10) ; r7 = memub (r20 + #10)
    209c:	e7 1a f7 1a 	1af71ae7     r7 = memub (r23 + #10) ; r7 = memub (r22 + #10)
    20a0:	07 1b 17 1b 	1b171b07     r7 = memub (r1 + #11) ; r7 = memub (r0 + #11)
    20a4:	27 1b 37 1b 	1b371b27     r7 = memub (r3 + #11) ; r7 = memub (r2 + #11)
    20a8:	47 1b 57 1b 	1b571b47     r7 = memub (r5 + #11) ; r7 = memub (r4 + #11)
    20ac:	67 1b 77 1b 	1b771b67     r7 = memub (r7 + #11) ; r7 = memub (r6 + #11)
    20b0:	87 1b 97 1b 	1b971b87     r7 = memub (r17 + #11) ; r7 = memub (r16 + #11)
    20b4:	a7 1b b7 1b 	1bb71ba7     r7 = memub (r19 + #11) ; r7 = memub (r18 + #11)
    20b8:	c7 1b d7 1b 	1bd71bc7     r7 = memub (r21 + #11) ; r7 = memub (r20 + #11)
    20bc:	e7 1b f7 1b 	1bf71be7     r7 = memub (r23 + #11) ; r7 = memub (r22 + #11)
    20c0:	07 1c 17 1c 	1c171c07     r7 = memub (r1 + #12) ; r7 = memub (r0 + #12)
    20c4:	27 1c 37 1c 	1c371c27     r7 = memub (r3 + #12) ; r7 = memub (r2 + #12)
    20c8:	47 1c 57 1c 	1c571c47     r7 = memub (r5 + #12) ; r7 = memub (r4 + #12)
    20cc:	67 1c 77 1c 	1c771c67     r7 = memub (r7 + #12) ; r7 = memub (r6 + #12)
    20d0:	87 1c 97 1c 	1c971c87     r7 = memub (r17 + #12) ; r7 = memub (r16 + #12)
    20d4:	a7 1c b7 1c 	1cb71ca7     r7 = memub (r19 + #12) ; r7 = memub (r18 + #12)
    20d8:	c7 1c d7 1c 	1cd71cc7     r7 = memub (r21 + #12) ; r7 = memub (r20 + #12)
    20dc:	e7 1c f7 1c 	1cf71ce7     r7 = memub (r23 + #12) ; r7 = memub (r22 + #12)
    20e0:	07 1d 17 1d 	1d171d07     r7 = memub (r1 + #13) ; r7 = memub (r0 + #13)
    20e4:	27 1d 37 1d 	1d371d27     r7 = memub (r3 + #13) ; r7 = memub (r2 + #13)
    20e8:	47 1d 57 1d 	1d571d47     r7 = memub (r5 + #13) ; r7 = memub (r4 + #13)
    20ec:	67 1d 77 1d 	1d771d67     r7 = memub (r7 + #13) ; r7 = memub (r6 + #13)
    20f0:	87 1d 97 1d 	1d971d87     r7 = memub (r17 + #13) ; r7 = memub (r16 + #13)
    20f4:	a7 1d b7 1d 	1db71da7     r7 = memub (r19 + #13) ; r7 = memub (r18 + #13)
    20f8:	c7 1d d7 1d 	1dd71dc7     r7 = memub (r21 + #13) ; r7 = memub (r20 + #13)
    20fc:	e7 1d f7 1d 	1df71de7     r7 = memub (r23 + #13) ; r7 = memub (r22 + #13)
    2100:	07 1e 17 1e 	1e171e07     r7 = memub (r1 + #14) ; r7 = memub (r0 + #14)
    2104:	27 1e 37 1e 	1e371e27     r7 = memub (r3 + #14) ; r7 = memub (r2 + #14)
    2108:	47 1e 57 1e 	1e571e47     r7 = memub (r5 + #14) ; r7 = memub (r4 + #14)
    210c:	67 1e 77 1e 	1e771e67     r7 = memub (r7 + #14) ; r7 = memub (r6 + #14)
    2110:	87 1e 97 1e 	1e971e87     r7 = memub (r17 + #14) ; r7 = memub (r16 + #14)
    2114:	a7 1e b7 1e 	1eb71ea7     r7 = memub (r19 + #14) ; r7 = memub (r18 + #14)
    2118:	c7 1e d7 1e 	1ed71ec7     r7 = memub (r21 + #14) ; r7 = memub (r20 + #14)
    211c:	e7 1e f7 1e 	1ef71ee7     r7 = memub (r23 + #14) ; r7 = memub (r22 + #14)
    2120:	07 1f 17 1f 	1f171f07     r7 = memub (r1 + #15) ; r7 = memub (r0 + #15)
    2124:	27 1f 37 1f 	1f371f27     r7 = memub (r3 + #15) ; r7 = memub (r2 + #15)
    2128:	47 1f 57 1f 	1f571f47     r7 = memub (r5 + #15) ; r7 = memub (r4 + #15)
    212c:	67 1f 77 1f 	1f771f67     r7 = memub (r7 + #15) ; r7 = memub (r6 + #15)
    2130:	87 1f 97 1f 	1f971f87     r7 = memub (r17 + #15) ; r7 = memub (r16 + #15)
    2134:	a7 1f b7 1f 	1fb71fa7     r7 = memub (r19 + #15) ; r7 = memub (r18 + #15)
    2138:	c7 1f d7 1f 	1fd71fc7     r7 = memub (r21 + #15) ; r7 = memub (r20 + #15)
    213c:	e7 1f f7 1f 	1ff71fe7     r7 = memub (r23 + #15) ; r7 = memub (r22 + #15)
    2140:	07 20 17 20 	20172007     r7 = add (r7, #1) ; r7 = add (r7, #0)
    2144:	27 20 37 20 	20372027     r7 = add (r7, #3) ; r7 = add (r7, #2)
    2148:	47 20 57 20 	20572047     r7 = add (r7, #5) ; r7 = add (r7, #4)
    214c:	67 20 77 20 	20772067     r7 = add (r7, #7) ; r7 = add (r7, #6)
    2150:	87 20 97 20 	20972087     r7 = add (r7, #9) ; r7 = add (r7, #8)
    2154:	a7 20 b7 20 	20b720a7     r7 = add (r7, #11) ; r7 = add (r7, #10)
    2158:	c7 20 d7 20 	20d720c7     r7 = add (r7, #13) ; r7 = add (r7, #12)
    215c:	e7 20 f7 20 	20f720e7     r7 = add (r7, #15) ; r7 = add (r7, #14)
    2160:	07 21 17 21 	21172107     r7 = add (r7, #17) ; r7 = add (r7, #16)
    2164:	27 21 37 21 	21372127     r7 = add (r7, #19) ; r7 = add (r7, #18)
    2168:	47 21 57 21 	21572147     r7 = add (r7, #21) ; r7 = add (r7, #20)
    216c:	67 21 77 21 	21772167     r7 = add (r7, #23) ; r7 = add (r7, #22)
    2170:	87 21 97 21 	21972187     r7 = add (r7, #25) ; r7 = add (r7, #24)
    2174:	a7 21 b7 21 	21b721a7     r7 = add (r7, #27) ; r7 = add (r7, #26)
    2178:	c7 21 d7 21 	21d721c7     r7 = add (r7, #29) ; r7 = add (r7, #28)
    217c:	e7 21 f7 21 	21f721e7     r7 = add (r7, #31) ; r7 = add (r7, #30)
    2180:	07 22 17 22 	22172207     r7 = add (r7, #33) ; r7 = add (r7, #32)
    2184:	27 22 37 22 	22372227     r7 = add (r7, #35) ; r7 = add (r7, #34)
    2188:	47 22 57 22 	22572247     r7 = add (r7, #37) ; r7 = add (r7, #36)
    218c:	67 22 77 22 	22772267     r7 = add (r7, #39) ; r7 = add (r7, #38)
    2190:	87 22 97 22 	22972287     r7 = add (r7, #41) ; r7 = add (r7, #40)
    2194:	a7 22 b7 22 	22b722a7     r7 = add (r7, #43) ; r7 = add (r7, #42)
    2198:	c7 22 d7 22 	22d722c7     r7 = add (r7, #45) ; r7 = add (r7, #44)
    219c:	e7 22 f7 22 	22f722e7     r7 = add (r7, #47) ; r7 = add (r7, #46)
    21a0:	07 23 17 23 	23172307     r7 = add (r7, #49) ; r7 = add (r7, #48)
    21a4:	27 23 37 23 	23372327     r7 = add (r7, #51) ; r7 = add (r7, #50)
    21a8:	47 23 57 23 	23572347     r7 = add (r7, #53) ; r7 = add (r7, #52)
    21ac:	67 23 77 23 	23772367     r7 = add (r7, #55) ; r7 = add (r7, #54)
    21b0:	87 23 97 23 	23972387     r7 = add (r7, #57) ; r7 = add (r7, #56)
    21b4:	a7 23 b7 23 	23b723a7     r7 = add (r7, #59) ; r7 = add (r7, #58)
    21b8:	c7 23 d7 23 	23d723c7     r7 = add (r7, #61) ; r7 = add (r7, #60)
    21bc:	e7 23 f7 23 	23f723e7     r7 = add (r7, #63) ; r7 = add (r7, #62)
    21c0:	07 24 17 24 	24172407     r7 = add (r7, #-63) ; r7 = add (r7, #-64)
    21c4:	27 24 37 24 	24372427     r7 = add (r7, #-61) ; r7 = add (r7, #-62)
    21c8:	47 24 57 24 	24572447     r7 = add (r7, #-59) ; r7 = add (r7, #-60)
    21cc:	67 24 77 24 	24772467     r7 = add (r7, #-57) ; r7 = add (r7, #-58)
    21d0:	87 24 97 24 	24972487     r7 = add (r7, #-55) ; r7 = add (r7, #-56)
    21d4:	a7 24 b7 24 	24b724a7     r7 = add (r7, #-53) ; r7 = add (r7, #-54)
    21d8:	c7 24 d7 24 	24d724c7     r7 = add (r7, #-51) ; r7 = add (r7, #-52)
    21dc:	e7 24 f7 24 	24f724e7     r7 = add (r7, #-49) ; r7 = add (r7, #-50)
    21e0:	07 25 17 25 	25172507     r7 = add (r7, #-47) ; r7 = add (r7, #-48)
    21e4:	27 25 37 25 	25372527     r7 = add (r7, #-45) ; r7 = add (r7, #-46)
    21e8:	47 25 57 25 	25572547     r7 = add (r7, #-43) ; r7 = add (r7, #-44)
    21ec:	67 25 77 25 	25772567     r7 = add (r7, #-41) ; r7 = add (r7, #-42)
    21f0:	87 25 97 25 	25972587     r7 = add (r7, #-39) ; r7 = add (r7, #-40)
    21f4:	a7 25 b7 25 	25b725a7     r7 = add (r7, #-37) ; r7 = add (r7, #-38)
    21f8:	c7 25 d7 25 	25d725c7     r7 = add (r7, #-35) ; r7 = add (r7, #-36)
    21fc:	e7 25 f7 25 	25f725e7     r7 = add (r7, #-33) ; r7 = add (r7, #-34)
    2200:	07 26 17 26 	26172607     r7 = add (r7, #-31) ; r7 = add (r7, #-32)
    2204:	27 26 37 26 	26372627     r7 = add (r7, #-29) ; r7 = add (r7, #-30)
    2208:	47 26 57 26 	26572647     r7 = add (r7, #-27) ; r7 = add (r7, #-28)
    220c:	67 26 77 26 	26772667     r7 = add (r7, #-25) ; r7 = add (r7, #-26)
    2210:	87 26 97 26 	26972687     r7 = add (r7, #-23) ; r7 = add (r7, #-24)
    2214:	a7 26 b7 26 	26b726a7     r7 = add (r7, #-21) ; r7 = add (r7, #-22)
    2218:	c7 26 d7 26 	26d726c7     r7 = add (r7, #-19) ; r7 = add (r7, #-20)
    221c:	e7 26 f7 26 	26f726e7     r7 = add (r7, #-17) ; r7 = add (r7, #-18)
    2220:	07 27 17 27 	27172707     r7 = add (r7, #-15) ; r7 = add (r7, #-16)
    2224:	27 27 37 27 	27372727     r7 = add (r7, #-13) ; r7 = add (r7, #-14)
    2228:	47 27 57 27 	27572747     r7 = add (r7, #-11) ; r7 = add (r7, #-12)
    222c:	67 27 77 27 	27772767     r7 = add (r7, #-9) ; r7 = add (r7, #-10)
    2230:	87 27 97 27 	27972787     r7 = add (r7, #-7) ; r7 = add (r7, #-8)
    2234:	a7 27 b7 27 	27b727a7     r7 = add (r7, #-5) ; r7 = add (r7, #-6)
    2238:	c7 27 d7 27 	27d727c7     r7 = add (r7, #-3) ; r7 = add (r7, #-4)
    223c:	e7 27 f7 27 	27f727e7     r7 = add (r7, #-1) ; r7 = add (r7, #-2)
    2240:	07 28 17 28 	28172807     r7 = #1 ; r7 = #0
    2244:	27 28 37 28 	28372827     r7 = #3 ; r7 = #2
    2248:	47 28 57 28 	28572847     r7 = #5 ; r7 = #4
    224c:	67 28 77 28 	28772867     r7 = #7 ; r7 = #6
    2250:	87 28 97 28 	28972887     r7 = #9 ; r7 = #8
    2254:	a7 28 b7 28 	28b728a7     r7 = #11 ; r7 = #10
    2258:	c7 28 d7 28 	28d728c7     r7 = #13 ; r7 = #12
    225c:	e7 28 f7 28 	28f728e7     r7 = #15 ; r7 = #14
    2260:	07 29 17 29 	29172907     r7 = #17 ; r7 = #16
    2264:	27 29 37 29 	29372927     r7 = #19 ; r7 = #18
    2268:	47 29 57 29 	29572947     r7 = #21 ; r7 = #20
    226c:	67 29 77 29 	29772967     r7 = #23 ; r7 = #22
    2270:	87 29 97 29 	29972987     r7 = #25 ; r7 = #24
    2274:	a7 29 b7 29 	29b729a7     r7 = #27 ; r7 = #26
    2278:	c7 29 d7 29 	29d729c7     r7 = #29 ; r7 = #28
    227c:	e7 29 f7 29 	29f729e7     r7 = #31 ; r7 = #30
    2280:	07 2a 17 2a 	2a172a07     r7 = #33 ; r7 = #32
    2284:	27 2a 37 2a 	2a372a27     r7 = #35 ; r7 = #34
    2288:	47 2a 57 2a 	2a572a47     r7 = #37 ; r7 = #36
    228c:	67 2a 77 2a 	2a772a67     r7 = #39 ; r7 = #38
    2290:	87 2a 97 2a 	2a972a87     r7 = #41 ; r7 = #40
    2294:	a7 2a b7 2a 	2ab72aa7     r7 = #43 ; r7 = #42
    2298:	c7 2a d7 2a 	2ad72ac7     r7 = #45 ; r7 = #44
    229c:	e7 2a f7 2a 	2af72ae7     r7 = #47 ; r7 = #46
    22a0:	07 2b 17 2b 	2b172b07     r7 = #49 ; r7 = #48
    22a4:	27 2b 37 2b 	2b372b27     r7 = #51 ; r7 = #50
    22a8:	47 2b 57 2b 	2b572b47     r7 = #53 ; r7 = #52
    22ac:	67 2b 77 2b 	2b772b67     r7 = #55 ; r7 = #54
    22b0:	87 2b 97 2b 	2b972b87     r7 = #57 ; r7 = #56
    22b4:	a7 2b b7 2b 	2bb72ba7     r7 = #59 ; r7 = #58
    22b8:	c7 2b d7 2b 	2bd72bc7     r7 = #61 ; r7 = #60
    22bc:	e7 2b f7 2b 	2bf72be7     r7 = #63 ; r7 = #62
    22c0:	07 2c 17 2c 	2c172c07     r7 = add (sp, #4) ; r7 = add (sp, #0)
    22c4:	27 2c 37 2c 	2c372c27     r7 = add (sp, #12) ; r7 = add (sp, #8)
    22c8:	47 2c 57 2c 	2c572c47     r7 = add (sp, #20) ; r7 = add (sp, #16)
    22cc:	67 2c 77 2c 	2c772c67     r7 = add (sp, #28) ; r7 = add (sp, #24)
    22d0:	87 2c 97 2c 	2c972c87     r7 = add (sp, #36) ; r7 = add (sp, #32)
    22d4:	a7 2c b7 2c 	2cb72ca7     r7 = add (sp, #44) ; r7 = add (sp, #40)
    22d8:	c7 2c d7 2c 	2cd72cc7     r7 = add (sp, #52) ; r7 = add (sp, #48)
    22dc:	e7 2c f7 2c 	2cf72ce7     r7 = add (sp, #60) ; r7 = add (sp, #56)
    22e0:	07 2d 17 2d 	2d172d07     r7 = add (sp, #68) ; r7 = add (sp, #64)
    22e4:	27 2d 37 2d 	2d372d27     r7 = add (sp, #76) ; r7 = add (sp, #72)
    22e8:	47 2d 57 2d 	2d572d47     r7 = add (sp, #84) ; r7 = add (sp, #80)
    22ec:	67 2d 77 2d 	2d772d67     r7 = add (sp, #92) ; r7 = add (sp, #88)
    22f0:	87 2d 97 2d 	2d972d87     r7 = add (sp, #100) ; r7 = add (sp, #96)
    22f4:	a7 2d b7 2d 	2db72da7     r7 = add (sp, #108) ; r7 = add (sp, #104)
    22f8:	c7 2d d7 2d 	2dd72dc7     r7 = add (sp, #116) ; r7 = add (sp, #112)
    22fc:	e7 2d f7 2d 	2df72de7     r7 = add (sp, #124) ; r7 = add (sp, #120)
    2300:	07 2e 17 2e 	2e172e07     r7 = add (sp, #132) ; r7 = add (sp, #128)
    2304:	27 2e 37 2e 	2e372e27     r7 = add (sp, #140) ; r7 = add (sp, #136)
    2308:	47 2e 57 2e 	2e572e47     r7 = add (sp, #148) ; r7 = add (sp, #144)
    230c:	67 2e 77 2e 	2e772e67     r7 = add (sp, #156) ; r7 = add (sp, #152)
    2310:	87 2e 97 2e 	2e972e87     r7 = add (sp, #164) ; r7 = add (sp, #160)
    2314:	a7 2e b7 2e 	2eb72ea7     r7 = add (sp, #172) ; r7 = add (sp, #168)
    2318:	c7 2e d7 2e 	2ed72ec7     r7 = add (sp, #180) ; r7 = add (sp, #176)
    231c:	e7 2e f7 2e 	2ef72ee7     r7 = add (sp, #188) ; r7 = add (sp, #184)
    2320:	07 2f 17 2f 	2f172f07     r7 = add (sp, #196) ; r7 = add (sp, #192)
    2324:	27 2f 37 2f 	2f372f27     r7 = add (sp, #204) ; r7 = add (sp, #200)
    2328:	47 2f 57 2f 	2f572f47     r7 = add (sp, #212) ; r7 = add (sp, #208)
    232c:	67 2f 77 2f 	2f772f67     r7 = add (sp, #220) ; r7 = add (sp, #216)
    2330:	87 2f 97 2f 	2f972f87     r7 = add (sp, #228) ; r7 = add (sp, #224)
    2334:	a7 2f b7 2f 	2fb72fa7     r7 = add (sp, #236) ; r7 = add (sp, #232)
    2338:	c7 2f d7 2f 	2fd72fc7     r7 = add (sp, #244) ; r7 = add (sp, #240)
    233c:	e7 2f f7 2f 	2ff72fe7     r7 = add (sp, #252) ; r7 = add (sp, #248)
    2340:	07 30 17 30 	30173007     r7 = r1 ; r7 = r0
    2344:	27 30 37 30 	30373027     r7 = r3 ; r7 = r2
    2348:	47 30 57 30 	30573047     r7 = r5 ; r7 = r4
    234c:	67 30 77 30 	30773067     r7 = r7 ; r7 = r6
    2350:	87 30 97 30 	30973087     r7 = r17 ; r7 = r16
    2354:	a7 30 b7 30 	30b730a7     r7 = r19 ; r7 = r18
    2358:	c7 30 d7 30 	30d730c7     r7 = r21 ; r7 = r20
    235c:	e7 30 f7 30 	30f730e7     r7 = r23 ; r7 = r22
    2360:	07 31 17 31 	31173107     r7 = add (r1, #1) ; r7 = add (r0, #1)
    2364:	27 31 37 31 	31373127     r7 = add (r3, #1) ; r7 = add (r2, #1)
    2368:	47 31 57 31 	31573147     r7 = add (r5, #1) ; r7 = add (r4, #1)
    236c:	67 31 77 31 	31773167     r7 = add (r7, #1) ; r7 = add (r6, #1)
    2370:	87 31 97 31 	31973187     r7 = add (r17, #1) ; r7 = add (r16, #1)
    2374:	a7 31 b7 31 	31b731a7     r7 = add (r19, #1) ; r7 = add (r18, #1)
    2378:	c7 31 d7 31 	31d731c7     r7 = add (r21, #1) ; r7 = add (r20, #1)
    237c:	e7 31 f7 31 	31f731e7     r7 = add (r23, #1) ; r7 = add (r22, #1)
    2380:	07 32 17 32 	32173207     r7 = and (r1, #1) ; r7 = and (r0, #1)
    2384:	27 32 37 32 	32373227     r7 = and (r3, #1) ; r7 = and (r2, #1)
    2388:	47 32 57 32 	32573247     r7 = and (r5, #1) ; r7 = and (r4, #1)
    238c:	67 32 77 32 	32773267     r7 = and (r7, #1) ; r7 = and (r6, #1)
    2390:	87 32 97 32 	32973287     r7 = and (r17, #1) ; r7 = and (r16, #1)
    2394:	a7 32 b7 32 	32b732a7     r7 = and (r19, #1) ; r7 = and (r18, #1)
    2398:	c7 32 d7 32 	32d732c7     r7 = and (r21, #1) ; r7 = and (r20, #1)
    239c:	e7 32 f7 32 	32f732e7     r7 = and (r23, #1) ; r7 = and (r22, #1)
    23a0:	07 33 17 33 	33173307     r7 = add (r1, #-1) ; r7 = add (r0, #-1)
    23a4:	27 33 37 33 	33373327     r7 = add (r3, #-1) ; r7 = add (r2, #-1)
    23a8:	47 33 57 33 	33573347     r7 = add (r5, #-1) ; r7 = add (r4, #-1)
    23ac:	67 33 77 33 	33773367     r7 = add (r7, #-1) ; r7 = add (r6, #-1)
    23b0:	87 33 97 33 	33973387     r7 = add (r17, #-1) ; r7 = add (r16, #-1)
    23b4:	a7 33 b7 33 	33b733a7     r7 = add (r19, #-1) ; r7 = add (r18, #-1)
    23b8:	c7 33 d7 33 	33d733c7     r7 = add (r21, #-1) ; r7 = add (r20, #-1)
    23bc:	e7 33 f7 33 	33f733e7     r7 = add (r23, #-1) ; r7 = add (r22, #-1)
    23c0:	07 34 17 34 	34173407     r7 = sxth (r1) ; r7 = sxth (r0)
    23c4:	27 34 37 34 	34373427     r7 = sxth (r3) ; r7 = sxth (r2)
    23c8:	47 34 57 34 	34573447     r7 = sxth (r5) ; r7 = sxth (r4)
    23cc:	67 34 77 34 	34773467     r7 = sxth (r7) ; r7 = sxth (r6)
    23d0:	87 34 97 34 	34973487     r7 = sxth (r17) ; r7 = sxth (r16)
    23d4:	a7 34 b7 34 	34b734a7     r7 = sxth (r19) ; r7 = sxth (r18)
    23d8:	c7 34 d7 34 	34d734c7     r7 = sxth (r21) ; r7 = sxth (r20)
    23dc:	e7 34 f7 34 	34f734e7     r7 = sxth (r23) ; r7 = sxth (r22)
    23e0:	07 35 17 35 	35173507     r7 = sxtb (r1) ; r7 = sxtb (r0)
    23e4:	27 35 37 35 	35373527     r7 = sxtb (r3) ; r7 = sxtb (r2)
    23e8:	47 35 57 35 	35573547     r7 = sxtb (r5) ; r7 = sxtb (r4)
    23ec:	67 35 77 35 	35773567     r7 = sxtb (r7) ; r7 = sxtb (r6)
    23f0:	87 35 97 35 	35973587     r7 = sxtb (r17) ; r7 = sxtb (r16)
    23f4:	a7 35 b7 35 	35b735a7     r7 = sxtb (r19) ; r7 = sxtb (r18)
    23f8:	c7 35 d7 35 	35d735c7     r7 = sxtb (r21) ; r7 = sxtb (r20)
    23fc:	e7 35 f7 35 	35f735e7     r7 = sxtb (r23) ; r7 = sxtb (r22)
    2400:	07 36 17 36 	36173607     r7 = zxth (r1) ; r7 = zxth (r0)
    2404:	27 36 37 36 	36373627     r7 = zxth (r3) ; r7 = zxth (r2)
    2408:	47 36 57 36 	36573647     r7 = zxth (r5) ; r7 = zxth (r4)
    240c:	67 36 77 36 	36773667     r7 = zxth (r7) ; r7 = zxth (r6)
    2410:	87 36 97 36 	36973687     r7 = zxth (r17) ; r7 = zxth (r16)
    2414:	a7 36 b7 36 	36b736a7     r7 = zxth (r19) ; r7 = zxth (r18)
    2418:	c7 36 d7 36 	36d736c7     r7 = zxth (r21) ; r7 = zxth (r20)
    241c:	e7 36 f7 36 	36f736e7     r7 = zxth (r23) ; r7 = zxth (r22)
    2420:	07 37 17 37 	37173707     r7 = and (r1, #255) ; r7 = and (r0, #255)
    2424:	27 37 37 37 	37373727     r7 = and (r3, #255) ; r7 = and (r2, #255)
    2428:	47 37 57 37 	37573747     r7 = and (r5, #255) ; r7 = and (r4, #255)
    242c:	67 37 77 37 	37773767     r7 = and (r7, #255) ; r7 = and (r6, #255)
    2430:	87 37 97 37 	37973787     r7 = and (r17, #255) ; r7 = and (r16, #255)
    2434:	a7 37 b7 37 	37b737a7     r7 = and (r19, #255) ; r7 = and (r18, #255)
    2438:	c7 37 d7 37 	37d737c7     r7 = and (r21, #255) ; r7 = and (r20, #255)
    243c:	e7 37 f7 37 	37f737e7     r7 = and (r23, #255) ; r7 = and (r22, #255)
    2440:	07 38 17 38 	38173807     r7 = add (r1, r7) ; r7 = add (r0, r7)
    2444:	27 38 37 38 	38373827     r7 = add (r3, r7) ; r7 = add (r2, r7)
    2448:	47 38 57 38 	38573847     r7 = add (r5, r7) ; r7 = add (r4, r7)
    244c:	67 38 77 38 	38773867     r7 = add (r7, r7) ; r7 = add (r6, r7)
    2450:	87 38 97 38 	38973887     r7 = add (r17, r7) ; r7 = add (r16, r7)
    2454:	a7 38 b7 38 	38b738a7     r7 = add (r19, r7) ; r7 = add (r18, r7)
    2458:	c7 38 d7 38 	38d738c7     r7 = add (r21, r7) ; r7 = add (r20, r7)
    245c:	e7 38 f7 38 	38f738e7     r7 = add (r23, r7) ; r7 = add (r22, r7)
    2460:	07 39 17 39 	39173907     p0 = cmp.eq (r1, #3) ; p0 = cmp.eq (r0, #3)
    2464:	27 39 37 39 	39373927     p0 = cmp.eq (r3, #3) ; p0 = cmp.eq (r2, #3)
    2468:	47 39 57 39 	39573947     p0 = cmp.eq (r5, #3) ; p0 = cmp.eq (r4, #3)
    246c:	67 39 77 39 	39773967     p0 = cmp.eq (r7, #3) ; p0 = cmp.eq (r6, #3)
    2470:	87 39 97 39 	39973987     p0 = cmp.eq (r17, #3) ; p0 = cmp.eq (r16, #3)
    2474:	a7 39 b7 39 	39b739a7     p0 = cmp.eq (r19, #3) ; p0 = cmp.eq (r18, #3)
    2478:	c7 39 d7 39 	39d739c7     p0 = cmp.eq (r21, #3) ; p0 = cmp.eq (r20, #3)
    247c:	e7 39 f7 39 	39f739e7     p0 = cmp.eq (r23, #3) ; p0 = cmp.eq (r22, #3)
    2480:	07 3a 17 3a 	3a173a07     r7 = #-1 ; r7 = #-1
    2484:	27 3a 37 3a 	3a373a27     r7 = #-1 ; r7 = #-1
    2488:	47 3a 57 3a 	3a573a47     <unknown>
    248c:	67 3a 77 3a 	3a773a67     <unknown>
    2490:	87 3a 97 3a 	3a973a87     r7 = #-1 ; r7 = #-1
    2494:	a7 3a b7 3a 	3ab73aa7     r7 = #-1 ; r7 = #-1
    2498:	c7 3a d7 3a 	3ad73ac7     <unknown>
    249c:	e7 3a f7 3a 	3af73ae7     <unknown>
    24a0:	07 3b 17 3b 	3b173b07     r7 = #-1 ; r7 = #-1
    24a4:	27 3b 37 3b 	3b373b27     r7 = #-1 ; r7 = #-1
    24a8:	47 3b 57 3b 	3b573b47     <unknown>
    24ac:	67 3b 77 3b 	3b773b67     <unknown>
    24b0:	87 3b 97 3b 	3b973b87     r7 = #-1 ; r7 = #-1
    24b4:	a7 3b b7 3b 	3bb73ba7     r7 = #-1 ; r7 = #-1
    24b8:	c7 3b d7 3b 	3bd73bc7     <unknown>
    24bc:	e7 3b f7 3b 	3bf73be7     <unknown>
    24c0:	07 3c 17 3c 	3c173c07     <unknown>
    24c4:	27 3c 37 3c 	3c373c27     <unknown>
    24c8:	47 3c 57 3c 	3c573c47     <unknown>
    24cc:	67 3c 77 3c 	3c773c67     <unknown>
    24d0:	87 3c 97 3c 	3c973c87     <unknown>
    24d4:	a7 3c b7 3c 	3cb73ca7     <unknown>
    24d8:	c7 3c d7 3c 	3cd73cc7     <unknown>
    24dc:	e7 3c f7 3c 	3cf73ce7     <unknown>
    24e0:	07 3d 17 3d 	3d173d07     r23:22 = combine (#0, r1) ; r23:22 = combine (#0, r0)
    24e4:	27 3d 37 3d 	3d373d27     r23:22 = combine (#0, r3) ; r23:22 = combine (#0, r2)
    24e8:	47 3d 57 3d 	3d573d47     r23:22 = combine (#0, r5) ; r23:22 = combine (#0, r4)
    24ec:	67 3d 77 3d 	3d773d67     r23:22 = combine (#0, r7) ; r23:22 = combine (#0, r6)
    24f0:	87 3d 97 3d 	3d973d87     r23:22 = combine (#0, r17) ; r23:22 = combine (#0, r16)
    24f4:	a7 3d b7 3d 	3db73da7     r23:22 = combine (#0, r19) ; r23:22 = combine (#0, r18)
    24f8:	c7 3d d7 3d 	3dd73dc7     r23:22 = combine (#0, r21) ; r23:22 = combine (#0, r20)
    24fc:	e7 3d f7 3d 	3df73de7     r23:22 = combine (#0, r23) ; r23:22 = combine (#0, r22)
    2500:	07 3e 17 3e 	3e173e07     <unknown>
    2504:	27 3e 37 3e 	3e373e27     <unknown>
    2508:	47 3e 57 3e 	3e573e47     <unknown>
    250c:	67 3e 77 3e 	3e773e67     <unknown>
    2510:	87 3e 97 3e 	3e973e87     <unknown>
    2514:	a7 3e b7 3e 	3eb73ea7     <unknown>
    2518:	c7 3e d7 3e 	3ed73ec7     <unknown>
    251c:	e7 3e f7 3e 	3ef73ee7     <unknown>
    2520:	07 3f 17 3f 	3f173f07     r23:22 = combine (#0, r1) ; r23:22 = combine (#0, r0)
    2524:	27 3f 37 3f 	3f373f27     r23:22 = combine (#0, r3) ; r23:22 = combine (#0, r2)
    2528:	47 3f 57 3f 	3f573f47     r23:22 = combine (#0, r5) ; r23:22 = combine (#0, r4)
    252c:	67 3f 77 3f 	3f773f67     r23:22 = combine (#0, r7) ; r23:22 = combine (#0, r6)
    2530:	87 3f 97 3f 	3f973f87     r23:22 = combine (#0, r17) ; r23:22 = combine (#0, r16)
    2534:	a7 3f b7 3f 	3fb73fa7     r23:22 = combine (#0, r19) ; r23:22 = combine (#0, r18)
    2538:	c7 3f d7 3f 	3fd73fc7     r23:22 = combine (#0, r21) ; r23:22 = combine (#0, r20)
    253c:	e7 3f f7 3f 	3ff73fe7     r23:22 = combine (#0, r23) ; r23:22 = combine (#0, r22)
    2540:	07 40 17 40 	40174007     <unknown>
    2544:	27 40 37 40 	40374027     <unknown>
    2548:	47 40 57 40 	40574047     <unknown>
    254c:	67 40 77 40 	40774067     <unknown>
    2550:	87 40 97 40 	40974087     <unknown>
    2554:	a7 40 b7 40 	40b740a7     <unknown>
    2558:	c7 40 d7 40 	40d740c7     <unknown>
    255c:	e7 40 f7 40 	40f740e7     <unknown>
    2560:	07 41 17 41 	41174107     { if (p0) r7 = memb (r23 + #8)
    2564:	27 41 37 41 	41374127       if (p0) r7 = memub (r23 + #9)
    2568:	47 41 57 41 	41574147       if (p0) r7 = memh (r23 + #20)
    256c:	67 41 77 41 	41774167       if (p0) r7 = memuh (r23 + #22)
    2570:	87 41 97 41 	41974187       if (p0) r7 = memw (r23 + #48)
    2574:	a7 41 b7 41 	41b741a7     <unknown>
    2578:	c7 41 d7 41 	41d741c7       if (p0) r8:7 = memd (r23 + #112)
    257c:	e7 41 f7 41 	41f741e7     <unknown>
    2580:	07 42 17 42 	42174207     <unknown>
    2584:	27 42 37 42 	42374227     <unknown>
    2588:	47 42 57 42 	42574247     <unknown>
    258c:	67 42 77 42 	42774267     <unknown>
    2590:	87 42 97 42 	42974287     <unknown>
    2594:	a7 42 b7 42 	42b742a7     <unknown>
    2598:	c7 42 d7 42 	42d742c7     <unknown>
    259c:	e7 42 f7 42 	42f742e7     <unknown>
    25a0:	07 43 17 43 	43174307       if (p0.new) r7 = memb (r23 + #24)
    25a4:	27 43 37 43 	43374327       if (p0.new) r7 = memub (r23 + #25)
    25a8:	47 43 57 43 	43574347       if (p0.new) r7 = memh (r23 + #52)
    25ac:	67 43 77 43 	43774367       if (p0.new) r7 = memuh (r23 + #54)
    25b0:	87 43 97 43 	43974387       if (p0.new) r7 = memw (r23 + #112)
    25b4:	a7 43 b7 43 	43b743a7     <unknown>
    25b8:	c7 43 d7 43 	43d743c7       if (p0.new) r8:7 = memd (r23 + #240)
    25bc:	e7 43 f7 43 	43f743e7     <unknown>
    25c0:	07 44 17 44 	44174407     <unknown>
    25c4:	27 44 37 44 	44374427     <unknown>
    25c8:	47 44 57 44 	44574447     <unknown>
    25cc:	67 44 77 44 	44774467     <unknown>
    25d0:	87 44 97 44 	44974487     <unknown>
    25d4:	a7 44 b7 44 	44b744a7     <unknown>
    25d8:	c7 44 d7 44 	44d744c7     <unknown>
    25dc:	e7 44 f7 44 	44f744e7     <unknown>
    25e0:	07 45 17 45 	45174507       if !p0 r7 = memb (r23 + #40)
    25e4:	27 45 37 45 	45374527       if !p0 r7 = memub (r23 + #41)
    25e8:	47 45 57 45 	45574547       if !p0 r7 = memh (r23 + #84)
    25ec:	67 45 77 45 	45774567       if !p0 r7 = memuh (r23 + #86)
    25f0:	87 45 97 45 	45974587       if !p0 r7 = memw (r23 + #176)
    25f4:	a7 45 b7 45 	45b745a7     <unknown>
    25f8:	c7 45 d7 45 	45d745c7       if !p0 r8:7 = memd (r23 + #368)
    25fc:	e7 45 f7 45 	45f745e7     <unknown>
    2600:	07 46 17 46 	46174607     <unknown>
    2604:	27 46 37 46 	46374627     <unknown>
    2608:	47 46 57 46 	46574647     <unknown>
    260c:	67 46 77 46 	46774667     <unknown>
    2610:	87 46 97 46 	46974687     <unknown>
    2614:	a7 46 b7 46 	46b746a7     <unknown>
    2618:	c7 46 d7 46 	46d746c7     <unknown>
    261c:	e7 46 f7 46 	46f746e7     <unknown>
    2620:	07 47 17 47 	47174707       if !p0.new r7 = memb (r23 + #56)
    2624:	27 47 37 47 	47374727       if !p0.new r7 = memub (r23 + #57)
    2628:	47 47 57 47 	47574747       if !p0.new r7 = memh (r23 + #116)
    262c:	67 47 77 47 	47774767       if !p0.new r7 = memuh (r23 + #118)
    2630:	87 47 97 47 	47974787       if !p0.new r7 = memw (r23 + #240)
    2634:	a7 47 b7 47 	47b747a7     <unknown>
    2638:	c7 47 d7 47 	47d747c7       if !p0.new r8:7 = memd (r23 + #496)
    263c:	e7 47 f7 47 	47f747e7     <unknown>
    2640:	07 48 17 48 	48174807       memb (gp + #11783) = r8
    2644:	27 48 37 48 	48374827     <unknown>
    2648:	47 48 57 48 	48574847       memh (gp + #23694) = r8
    264c:	67 48 77 48 	48774867       memh (gp + #23758) = r8.h
    2650:	87 48 97 48 	48974887       memw (gp + #47644) = r8
    2654:	a7 48 b7 48 	48b748a7       memh (gp + #23886) = r8.new
    2658:	c7 48 d7 48 	48d748c7       memd (gp + #95800) = r9:8
    265c:	e7 48 f7 48 	48f748e7     <unknown>
    2660:	07 49 17 49 	49174907       r7 = memb (gp + #11848)
    2664:	27 49 37 49 	49374927       r7 = memub (gp + #11849)
    2668:	47 49 57 49 	49574947       r7 = memh (gp + #23700)
    266c:	67 49 77 49 	49774967       r7 = memuh (gp + #23702)
    2670:	87 49 97 49 	49974987       r7 = memw (gp + #47408)
    2674:	a7 49 b7 49 	49b749a7     <unknown>
    2678:	c7 49 d7 49 	49d749c7       r8:7 = memd (gp + #94832)
    267c:	e7 49 f7 49 	49f749e7     <unknown>
    2680:	07 4a 17 4a 	4a174a07       memb (gp + #28167) = r10
    2684:	27 4a 37 4a 	4a374a27     <unknown>
    2688:	47 4a 57 4a 	4a574a47       memh (gp + #56462) = r10
    268c:	67 4a 77 4a 	4a774a67       memh (gp + #56526) = r10.h
    2690:	87 4a 97 4a 	4a974a87       memw (gp + #113180) = r10
    2694:	a7 4a b7 4a 	4ab74aa7       memh (gp + #56654) = r8.new
    2698:	c7 4a d7 4a 	4ad74ac7       memd (gp + #226872) = r11:10
    269c:	e7 4a f7 4a 	4af74ae7     <unknown>
    26a0:	07 4b 17 4b 	4b174b07       r7 = memb (gp + #28248)
    26a4:	27 4b 37 4b 	4b374b27       r7 = memub (gp + #28249)
    26a8:	47 4b 57 4b 	4b574b47       r7 = memh (gp + #56500)
    26ac:	67 4b 77 4b 	4b774b67       r7 = memuh (gp + #56502)
    26b0:	87 4b 97 4b 	4b974b87       r7 = memw (gp + #113008)
    26b4:	a7 4b b7 4b 	4bb74ba7     <unknown>
    26b8:	c7 4b d7 4b 	4bd74bc7       r8:7 = memd (gp + #226032)
    26bc:	e7 4b f7 4b 	4bf74be7     <unknown>
    26c0:	07 4c 17 4c 	4c174c07       memb (gp + #44551) = r12
    26c4:	27 4c 37 4c 	4c374c27     <unknown>
    26c8:	47 4c 57 4c 	4c574c47       memh (gp + #89230) = r12
    26cc:	67 4c 77 4c 	4c774c67       memh (gp + #89294) = r12.h
    26d0:	87 4c 97 4c 	4c974c87       memw (gp + #178716) = r12
    26d4:	a7 4c b7 4c 	4cb74ca7       memh (gp + #89422) = r0.new
    26d8:	c7 4c d7 4c 	4cd74cc7       memd (gp + #357944) = r13:12
    26dc:	e7 4c f7 4c 	4cf74ce7     <unknown>
    26e0:	07 4d 17 4d 	4d174d07       r7 = memb (gp + #44648)
    26e4:	27 4d 37 4d 	4d374d27       r7 = memub (gp + #44649)
    26e8:	47 4d 57 4d 	4d574d47       r7 = memh (gp + #89300)
    26ec:	67 4d 77 4d 	4d774d67       r7 = memuh (gp + #89302)
    26f0:	87 4d 97 4d 	4d974d87       r7 = memw (gp + #178608)
    26f4:	a7 4d b7 4d 	4db74da7     <unknown>
    26f8:	c7 4d d7 4d 	4dd74dc7       r8:7 = memd (gp + #357232)
    26fc:	e7 4d f7 4d 	4df74de7     <unknown>
    2700:	07 4e 17 4e 	4e174e07       memb (gp + #60935) = r14
    2704:	27 4e 37 4e 	4e374e27     <unknown>
    2708:	47 4e 57 4e 	4e574e47       memh (gp + #121998) = r14
    270c:	67 4e 77 4e 	4e774e67       memh (gp + #122062) = r14.h
    2710:	87 4e 97 4e 	4e974e87       memw (gp + #244252) = r14
    2714:	a7 4e b7 4e 	4eb74ea7       memh (gp + #122190) = r0.new
    2718:	c7 4e d7 4e 	4ed74ec7       memd (gp + #489016) = r15:14
    271c:	e7 4e f7 4e 	4ef74ee7     <unknown>
    2720:	07 4f 17 4f 	4f174f07       r7 = memb (gp + #61048)
    2724:	27 4f 37 4f 	4f374f27       r7 = memub (gp + #61049)
    2728:	47 4f 57 4f 	4f574f47       r7 = memh (gp + #122100)
    272c:	67 4f 77 4f 	4f774f67       r7 = memuh (gp + #122102)
    2730:	87 4f 97 4f 	4f974f87       r7 = memw (gp + #244208)
    2734:	a7 4f b7 4f 	4fb74fa7     <unknown>
    2738:	c7 4f d7 4f 	4fd74fc7       r8:7 = memd (gp + #488432)
    273c:	e7 4f f7 4f 	4ff74fe7     <unknown>
    2740:	07 50 17 50 	50175007     <unknown>
    2744:	27 50 37 50 	50375027     <unknown>
    2748:	47 50 57 50 	50575047     <unknown>
    274c:	67 50 77 50 	50775067     <unknown>
    2750:	87 50 97 50 	50975087     <unknown>
    2754:	a7 50 b7 50 	50b750a7       callr r23
    2758:	c7 50 d7 50 	50d750c7     <unknown>
    275c:	e7 50 f7 50 	50f750e7     <unknown>
    2760:	07 51 17 51 	51175107       if (p1) callr r23
    2764:	27 51 37 51 	51375127       if !p1 callr r23
    2768:	47 51 57 51 	51575147     <unknown>
    276c:	67 51 77 51 	51775167     <unknown>
    2770:	87 51 97 51 	51975187     <unknown>
    2774:	a7 51 b7 51 	51b751a7     <unknown>
    2778:	c7 51 d7 51 	51d751c7     <unknown>
    277c:	e7 51 f7 51 	51f751e7     <unknown>
    2780:	07 52 17 52 	52175207     <unknown>
    2784:	27 52 37 52 	52375227     <unknown>
    2788:	47 52 57 52 	52575247     <unknown>
    278c:	67 52 77 52 	52775267     <unknown>
    2790:	87 52 97 52 	52975287       jumpr r23
    2794:	a7 52 b7 52 	52b752a7       hintjr (r23)
    2798:	c7 52 d7 52 	52d752c7     <unknown>
    279c:	e7 52 f7 52 	52f752e7     <unknown>
    27a0:	07 53 17 53 	53175307     <unknown>
    27a4:	27 53 37 53 	53375327     <unknown>
    27a8:	47 53 57 53 	53575347       if (p3) jumpr r23
    27ac:	67 53 77 53 	53775367       if !p3 jumpr r23
    27b0:	87 53 97 53 	53975387     <unknown>
    27b4:	a7 53 b7 53 	53b753a7     <unknown>
    27b8:	c7 53 d7 53 	53d753c7     <unknown>
    27bc:	e7 53 f7 53 	53f753e7     <unknown>
    27c0:	07 54 17 54 	54175407       trap0 (#161)
    27c4:	27 54 37 54 	54375427       trap0 (#161)
    27c8:	47 54 57 54 	54575447       pause (#161)
    27cc:	67 54 77 54 	54775467       pause (#161)
    27d0:	87 54 97 54 	54975487       trap1 (#161)
    27d4:	a7 54 b7 54 	54b754a7       trap1 (#161)
    27d8:	c7 54 d7 54 	54d754c7     <unknown>
    27dc:	e7 54 f7 54 	54f754e7     <unknown>
    27e0:	07 55 17 55 	55175507     <unknown>
    27e4:	27 55 37 55 	55375527     <unknown>
    27e8:	47 55 57 55 	55575547     <unknown>
    27ec:	67 55 77 55 	55775567     <unknown>
    27f0:	87 55 97 55 	55975587     <unknown>
    27f4:	a7 55 b7 55 	55b755a7       r7 = icdatar (r23)
    27f8:	c7 55 d7 55 	55d755c7       ictagw (r23, r21)
    27fc:	e7 55 f7 55 	55f755e7       r7 = ictagr (r23)
    2800:	07 56 17 56 	56175607     <unknown>
    2804:	27 56 37 56 	56375627     <unknown>
    2808:	47 56 57 56 	56575647     <unknown>
    280c:	67 56 77 56 	56775667     <unknown>
    2810:	87 56 97 56 	56975687     <unknown>
    2814:	a7 56 b7 56 	56b756a7     <unknown>
    2818:	c7 56 d7 56 	56d756c7       ickill
    281c:	e7 56 f7 56 	56f756e7     <unknown>
    2820:	07 57 17 57 	57175707     <unknown>
    2824:	27 57 37 57 	57375727     <unknown>
    2828:	47 57 57 57 	57575747     <unknown>
    282c:	67 57 77 57 	57775767     <unknown>
    2830:	87 57 97 57 	57975787     <unknown>
    2834:	a7 57 b7 57 	57b757a7     <unknown>
    2838:	c7 57 d7 57 	57d757c7     <unknown>
    283c:	e7 57 f7 57 	57f757e7     <unknown>
    2840:	07 58 17 58 	58175807       jump bd56c <end+0x811ec>
    2844:	27 58 37 58 	58375827       jump 1bd5ac <DEFAULT_STACK_SIZE+0xbd5ac>
    2848:	47 58 57 58 	58575847       jump 2bd5ec <DEFAULT_STACK_SIZE+0x1bd5ec>
    284c:	67 58 77 58 	58775867       jump 3bd62c <DEFAULT_STACK_SIZE+0x2bd62c>
    2850:	87 58 97 58 	58975887       jump 4bd66c <DEFAULT_STACK_SIZE+0x3bd66c>
    2854:	a7 58 b7 58 	58b758a7       jump 5bd6ac <DEFAULT_STACK_SIZE+0x4bd6ac>
    2858:	c7 58 d7 58 	58d758c7       jump 6bd6ec <DEFAULT_STACK_SIZE+0x5bd6ec>
    285c:	e7 58 f7 58 	58f758e7       jump 7bd72c <DEFAULT_STACK_SIZE+0x6bd72c>
    2860:	07 59 17 59 	59175907       jump ff8bd76c <DEFAULT_HEAP_SIZE+0xfb8bd76c>
    2864:	27 59 37 59 	59375927       jump ff9bd7ac <DEFAULT_HEAP_SIZE+0xfb9bd7ac>
    2868:	47 59 57 59 	59575947       jump ffabd7ec <DEFAULT_HEAP_SIZE+0xfbabd7ec>
    286c:	67 59 77 59 	59775967       jump ffbbd82c <DEFAULT_HEAP_SIZE+0xfbbbd82c>
    2870:	87 59 97 59 	59975987       jump ffcbd86c <DEFAULT_HEAP_SIZE+0xfbcbd86c>
    2874:	a7 59 b7 59 	59b759a7       jump ffdbd8ac <DEFAULT_HEAP_SIZE+0xfbdbd8ac>
    2878:	c7 59 d7 59 	59d759c7       jump ffebd8ec <DEFAULT_HEAP_SIZE+0xfbebd8ec>
    287c:	e7 59 f7 59 	59f759e7       jump fffbd92c <DEFAULT_HEAP_SIZE+0xfbfbd92c>
    2880:	07 5a 17 5a 	5a175a07     <unknown>
    2884:	27 5a 37 5a 	5a375a27     <unknown>
    2888:	47 5a 57 5a 	5a575a47     <unknown>
    288c:	67 5a 77 5a 	5a775a67     <unknown>
    2890:	87 5a 97 5a 	5a975a87     <unknown>
    2894:	a7 5a b7 5a 	5ab75aa7     <unknown>
    2898:	c7 5a d7 5a 	5ad75ac7     <unknown>
    289c:	e7 5a f7 5a 	5af75ae7     <unknown>
    28a0:	07 5b 17 5b 	5b175b07     <unknown>
    28a4:	27 5b 37 5b 	5b375b27     <unknown>
    28a8:	47 5b 57 5b 	5b575b47     <unknown>
    28ac:	67 5b 77 5b 	5b775b67     <unknown>
    28b0:	87 5b 97 5b 	5b975b87     <unknown>
    28b4:	a7 5b b7 5b 	5bb75ba7     <unknown>
    28b8:	c7 5b d7 5b 	5bd75bc7     <unknown>
    28bc:	e7 5b f7 5b 	5bf75be7     <unknown>
    28c0:	07 5c 17 5c 	5c175c07       if (p0.new) jump:t 816c <_Xp_invx+0x3c>
    28c4:	27 5c 37 5c 	5c375c27       if !p0.new jump:t 81ac <_Xp_invx+0x7c>
    28c8:	47 5c 57 5c 	5c575c47       if (p0.new) jump:t 101ec <fbit.2465+0x4>
    28cc:	67 5c 77 5c 	5c775c67       if !p0.new jump:t 1022c <fbit.2465+0x44>
    28d0:	87 5c 97 5c 	5c975c87       if (p0.new) jump:t ffff826c <DEFAULT_HEAP_SIZE+0xfbff826c>
    28d4:	a7 5c b7 5c 	5cb75ca7       if !p0.new jump:t ffff82ac <DEFAULT_HEAP_SIZE+0xfbff82ac>
    28d8:	c7 5c d7 5c 	5cd75cc7       if (p0.new) jump:t 2ec <.InitParams+0xb8>
    28dc:	e7 5c f7 5c 	5cf75ce7       if !p0.new jump:t 32c <.InitParams+0xf8>
    28e0:	07 5d 17 5d 	5d175d07     <unknown>
    28e4:	27 5d 37 5d 	5d375d27     <unknown>
    28e8:	47 5d 57 5d 	5d575d47     <unknown>
    28ec:	67 5d 77 5d 	5d775d67     <unknown>
    28f0:	87 5d 97 5d 	5d975d87     <unknown>
    28f4:	a7 5d b7 5d 	5db75da7     <unknown>
    28f8:	c7 5d d7 5d 	5dd75dc7     <unknown>
    28fc:	e7 5d f7 5d 	5df75de7     <unknown>
    2900:	07 5e 17 5e 	5e175e07     <unknown>
    2904:	27 5e 37 5e 	5e375e27     <unknown>
    2908:	47 5e 57 5e 	5e575e47     <unknown>
    290c:	67 5e 77 5e 	5e775e67     <unknown>
    2910:	87 5e 97 5e 	5e975e87     <unknown>
    2914:	a7 5e b7 5e 	5eb75ea7     <unknown>
    2918:	c7 5e d7 5e 	5ed75ec7     <unknown>
    291c:	e7 5e f7 5e 	5ef75ee7     <unknown>
    2920:	07 5f 17 5f 	5f175f07     <unknown>
    2924:	27 5f 37 5f 	5f375f27     <unknown>
    2928:	47 5f 57 5f 	5f575f47     <unknown>
    292c:	67 5f 77 5f 	5f775f67     <unknown>
    2930:	87 5f 97 5f 	5f975f87     <unknown>
    2934:	a7 5f b7 5f 	5fb75fa7     <unknown>
    2938:	c7 5f d7 5f 	5fd75fc7     <unknown>
    293c:	e7 5f f7 5f 	5ff75fe7     <unknown>
    2940:	07 60 17 60 	60176007       loop0 (2560 <UPTE_START+0x820>, r23)
    2944:	27 60 37 60 	60376027       loop1 (2560 <UPTE_START+0x820>, r23)
    2948:	47 60 57 60 	60576047     <unknown>
    294c:	67 60 77 60 	60776067     <unknown>
    2950:	87 60 97 60 	60976087     <unknown>
    2954:	a7 60 b7 60 	60b760a7       p3 = sp1loop0 (2560 <UPTE_START+0x820>, r23)
    2958:	c7 60 d7 60 	60d760c7       p3 = sp2loop0 (2560 <UPTE_START+0x820>, r23)
    295c:	e7 60 f7 60 	60f760e7       p3 = sp3loop0 (2560 <UPTE_START+0x820>, r23)
    2960:	07 61 17 61 	61176107       if (r23 != #0) jump:nt 476c <b_repmat+0x2c>
    2964:	27 61 37 61 	61376127       if (r23 != #0) jump:nt 7ac <__coredump+0x7c>
    2968:	47 61 57 61 	61576147       if (r23 >= #0) jump:nt 47ec <rtGetNaN+0xc>
    296c:	67 61 77 61 	61776167       if (r23 >= #0) jump:nt 82c <__coredump+0xfc>
    2970:	87 61 97 61 	61976187       if (r23 == #0) jump:nt 486c <rtIsNaNF+0xc>
    2974:	a7 61 b7 61 	61b761a7       if (r23 == #0) jump:nt 8ac <__coredump+0x17c>
    2978:	c7 61 d7 61 	61d761c7       if (r23 <= #0) jump:nt 48ec <b_sum+0x3c>
    297c:	e7 61 f7 61 	61f761e7       if (r23 <= #0) jump:nt 92c <event_handle_reset+0xc>
    2980:	07 62 17 62 	control register not found: 762176207     
    2984:	27 62 37 62 	62376227       m1 = r23
    2988:	47 62 57 62 	62576247       trace (r23)
    298c:	67 62 77 62 	62776267     <unknown>
    2990:	87 62 97 62 	62976287     <unknown>
    2994:	a7 62 b7 62 	62b762a7     <unknown>
    2998:	c7 62 d7 62 	62d762c7     <unknown>
    299c:	e7 62 f7 62 	62f762e7     <unknown>
    29a0:	07 63 17 63 	63176307       g8:7 = r24:23
    29a4:	27 63 37 63 	63376327       c8:7 = r24:23
    29a8:	47 63 57 63 	63576347     <unknown>
    29ac:	67 63 77 63 	63776367     <unknown>
    29b0:	87 63 97 63 	63976387     <unknown>
    29b4:	a7 63 b7 63 	63b763a7     <unknown>
    29b8:	c7 63 d7 63 	63d763c7     <unknown>
    29bc:	e7 63 f7 63 	63f763e7     <unknown>
    29c0:	07 64 17 64 	64176407       swi (r23)
    29c4:	27 64 37 64 	64376427     <unknown>
    29c8:	47 64 57 64 	64576447     <unknown>
    29cc:	67 64 77 64 	64776467     <unknown>
    29d0:	87 64 97 64 	64976487     <unknown>
    29d4:	a7 64 b7 64 	64b764a7     <unknown>
    29d8:	c7 64 d7 64 	64d764c7     <unknown>
    29dc:	e7 64 f7 64 	64f764e7     <unknown>
    29e0:	07 65 17 65 	65176507       crswap (r23, sgp0)
    29e4:	27 65 37 65 	65376527       crswap (r23, sgp1)
    29e8:	47 65 57 65 	65576547     <unknown>
    29ec:	67 65 77 65 	65776567     <unknown>
    29f0:	87 65 97 65 	65976587     <unknown>
    29f4:	a7 65 b7 65 	65b765a7     <unknown>
    29f8:	c7 65 d7 65 	65d765c7     <unknown>
    29fc:	e7 65 f7 65 	65f765e7     <unknown>
    2a00:	07 66 17 66 	66176607       r7 = getimask (r23)
    2a04:	27 66 37 66 	66376627     <unknown>
    2a08:	47 66 57 66 	66576647     <unknown>
    2a0c:	67 66 77 66 	66776667       r7 = iassignr (r23)
    2a10:	87 66 97 66 	66976687     <unknown>
    2a14:	a7 66 b7 66 	66b766a7     <unknown>
    2a18:	c7 66 d7 66 	66d766c7     <unknown>
    2a1c:	e7 66 f7 66 	66f766e7     <unknown>
    2a20:	07 67 17 67 	67176707       ccr = r23
    2a24:	27 67 37 67 	67376727       brkptcfg1 = r23
    2a28:	47 67 57 67 	67576747     <unknown>
    2a2c:	67 67 77 67 	67776767     <unknown>
    2a30:	87 67 97 67 	67976787     <unknown>
    2a34:	a7 67 b7 67 	67b767a7     <unknown>
    2a38:	c7 67 d7 67 	67d767c7     <unknown>
    2a3c:	e7 67 f7 67 	67f767e7     <unknown>
    2a40:	07 68 17 68 	68176807       r8:7 = c24:23
    2a44:	27 68 37 68 	68376827       r8:7 = g24:23
    2a48:	47 68 57 68 	68576847     <unknown>
    2a4c:	67 68 77 68 	68776867     <unknown>
    2a50:	87 68 97 68 	68976887     <unknown>
    2a54:	a7 68 b7 68 	68b768a7     <unknown>
    2a58:	c7 68 d7 68 	68d768c7     <unknown>
    2a5c:	e7 68 f7 68 	68f768e7     <unknown>
    2a60:	07 69 17 69 	69176907       loop0 (25f0 <UPTE_START+0x8b0>, #739)
    2a64:	27 69 37 69 	69376927       loop1 (25f0 <UPTE_START+0x8b0>, #743)
    2a68:	47 69 57 69 	69576947     <unknown>
    2a6c:	67 69 77 69 	69776967     <unknown>
    2a70:	87 69 97 69 	69976987     <unknown>
    2a74:	a7 69 b7 69 	69b769a7       p3 = sp1loop0 (25f0 <UPTE_START+0x8b0>, #759)
    2a78:	c7 69 d7 69 	69d769c7       p3 = sp2loop0 (25f0 <UPTE_START+0x8b0>, #763)
    2a7c:	e7 69 f7 69 	69f769e7       p3 = sp3loop0 (25f0 <UPTE_START+0x8b0>, #767)
    2a80:	07 6a 17 6a 	control register not found: 236a176a07     
    2a84:	27 6a 37 6a 	control register not found: 236a376a27     
    2a88:	47 6a 57 6a 	6a576a47     <unknown>
    2a8c:	67 6a 77 6a 	6a776a67     <unknown>
    2a90:	87 6a 97 6a 	6a976a87     <unknown>
    2a94:	a7 6a b7 6a 	6ab76aa7     <unknown>
    2a98:	c7 6a d7 6a 	6ad76ac7     <unknown>
    2a9c:	e7 6a f7 6a 	6af76ae7     <unknown>
    2aa0:	07 6b 17 6b 	6b176b07     <unknown>
    2aa4:	27 6b 37 6b 	6b376b27     <unknown>
    2aa8:	47 6b 57 6b 	6b576b47     <unknown>
    2aac:	67 6b 77 6b 	6b776b67     <unknown>
    2ab0:	87 6b 97 6b 	6b976b87     <unknown>
    2ab4:	a7 6b b7 6b 	6bb76ba7     <unknown>
    2ab8:	c7 6b d7 6b 	6bd76bc7     <unknown>
    2abc:	e7 6b f7 6b 	6bf76be7     <unknown>
    2ac0:	07 6c 17 6c 	6c176c07     <unknown>
    2ac4:	27 6c 37 6c 	6c376c27       tlblock
    2ac8:	47 6c 57 6c 	6c576c47       r8:7 = tlbr (r23)
    2acc:	67 6c 77 6c 	6c776c67     <unknown>
    2ad0:	87 6c 97 6c 	6c976c87       r7 = tlbp (r23)
    2ad4:	a7 6c b7 6c 	6cb76ca7       tlbinvasid (r23)
    2ad8:	c7 6c d7 6c 	6cd76cc7     <unknown>
    2adc:	e7 6c f7 6c 	6cf76ce7       r7 = tlboc (r24:23)
    2ae0:	07 6d 17 6d 	6d176d07       s8:7 = r24:23
    2ae4:	27 6d 37 6d 	6d376d27       s40:39 = r24:23
    2ae8:	47 6d 57 6d 	6d576d47       s8:7 = r24:23
    2aec:	67 6d 77 6d 	6d776d67       s40:39 = r24:23
    2af0:	87 6d 97 6d 	6d976d87     <unknown>
    2af4:	a7 6d b7 6d 	6db76da7     <unknown>
    2af8:	c7 6d d7 6d 	6dd76dc7     <unknown>
    2afc:	e7 6d f7 6d 	6df76de7     <unknown>
    2b00:	07 6e 17 6e 	6e176e07     <unknown>
    2b04:	27 6e 37 6e 	6e376e27     <unknown>
    2b08:	47 6e 57 6e 	6e576e47     <unknown>
    2b0c:	67 6e 77 6e 	6e776e67     <unknown>
    2b10:	87 6e 97 6e 	6e976e87       r7 = s23
    2b14:	a7 6e b7 6e 	6eb76ea7       r7 = s55
    2b18:	c7 6e d7 6e 	6ed76ec7       r7 = s23
    2b1c:	e7 6e f7 6e 	6ef76ee7       r7 = s55
    2b20:	07 6f 17 6f 	6f176f07       r8:7 = s24:23
    2b24:	27 6f 37 6f 	6f376f27       r8:7 = s56:55
    2b28:	47 6f 57 6f 	6f576f47       r8:7 = s24:23
    2b2c:	67 6f 77 6f 	6f776f67       r8:7 = s56:55
    2b30:	87 6f 97 6f 	6f976f87       r8:7 = s24:23
    2b34:	a7 6f b7 6f 	6fb76fa7       r8:7 = s56:55
    2b38:	c7 6f d7 6f 	6fd76fc7       r8:7 = s24:23
    2b3c:	e7 6f f7 6f 	6ff76fe7       r8:7 = s56:55
    2b40:	07 70 17 70 	70177007       if (p0) r7 = aslh (r23)
    2b44:	27 70 37 70 	70377027       if (p0) r7 = asrh (r23)
    2b48:	47 70 57 70 	70577047     <unknown>
    2b4c:	67 70 77 70 	70777067     <unknown>
    2b50:	87 70 97 70 	70977087       if (p0) r7 = zxtb (r23)
    2b54:	a7 70 b7 70 	70b770a7       if (p0) r7 = sxtb (r23)
    2b58:	c7 70 d7 70 	70d770c7       if (p0) r7 = zxth (r23)
    2b5c:	e7 70 f7 70 	70f770e7       if (p0) r7 = sxth (r23)
    2b60:	07 71 17 71 	71177107     <unknown>
    2b64:	27 71 37 71 	71377127       r23.l = #12583
    2b68:	47 71 57 71 	71577147     <unknown>
    2b6c:	67 71 77 71 	71777167       r23.l = #29031
    2b70:	87 71 97 71 	71977187     <unknown>
    2b74:	a7 71 b7 71 	71b771a7       r23.l = #45479
    2b78:	c7 71 d7 71 	71d771c7     <unknown>
    2b7c:	e7 71 f7 71 	71f771e7       r23.l = #61927
    2b80:	07 72 17 72 	72177207     <unknown>
    2b84:	27 72 37 72 	72377227       r23.h = #12839
    2b88:	47 72 57 72 	72577247     <unknown>
    2b8c:	67 72 77 72 	72777267       r23.h = #29287
    2b90:	87 72 97 72 	72977287     <unknown>
    2b94:	a7 72 b7 72 	72b772a7       r23.h = #45735
    2b98:	c7 72 d7 72 	72d772c7     <unknown>
    2b9c:	e7 72 f7 72 	72f772e7       r23.h = #62183
    2ba0:	07 73 17 73 	73177307       r8:7 = combine (r23, #-104)
    2ba4:	27 73 37 73 	73377327       r8:7 = combine (#-103, r23)
    2ba8:	47 73 57 73 	73577347       r7 = cmp.eq (r23, #-102)
    2bac:	67 73 77 73 	73777367       r7 = !cmp.eq (r23, #-101)
    2bb0:	87 73 97 73 	73977387       r8:7 = combine (r23, #-100)
    2bb4:	a7 73 b7 73 	73b773a7       r8:7 = combine (#-99, r23)
    2bb8:	c7 73 d7 73 	73d773c7       r7 = cmp.eq (r23, #-98)
    2bbc:	e7 73 f7 73 	73f773e7       r7 = !cmp.eq (r23, #-97)
    2bc0:	07 74 17 74 	74177407       if (p0.new) r7 = add (r23, #-96)
    2bc4:	27 74 37 74 	74377427       if (p1.new) r7 = add (r23, #-95)
    2bc8:	47 74 57 74 	74577447       if (p2.new) r7 = add (r23, #-94)
    2bcc:	67 74 77 74 	74777467       if (p3.new) r7 = add (r23, #-93)
    2bd0:	87 74 97 74 	74977487       if !p0.new r7 = add (r23, #-92)
    2bd4:	a7 74 b7 74 	74b774a7       if !p1.new r7 = add (r23, #-91)
    2bd8:	c7 74 d7 74 	74d774c7       if !p2.new r7 = add (r23, #-90)
    2bdc:	e7 74 f7 74 	74f774e7       if !p3.new r7 = add (r23, #-89)
    2be0:	07 75 17 75 	75177507     <unknown>
    2be4:	27 75 37 75 	75377527     <unknown>
    2be8:	47 75 57 75 	75577547     <unknown>
    2bec:	67 75 77 75 	75777567     <unknown>
    2bf0:	87 75 97 75 	75977587     <unknown>
    2bf4:	a7 75 b7 75 	75b775a7     <unknown>
    2bf8:	c7 75 d7 75 	75d775c7     <unknown>
    2bfc:	e7 75 f7 75 	75f775e7     <unknown>
    2c00:	07 76 17 76 	76177607       r7 = and (r23, #432)
    2c04:	27 76 37 76 	76377627       r7 = and (r23, #-79)
    2c08:	47 76 57 76 	76577647       r7 = sub (#434, r23)
    2c0c:	67 76 77 76 	76777667       r7 = sub (#-77, r23)
    2c10:	87 76 97 76 	76977687       r7 = or (r23, #436)
    2c14:	a7 76 b7 76 	76b776a7       r7 = or (r23, #-75)
    2c18:	c7 76 d7 76 	76d776c7     <unknown>
    2c1c:	e7 76 f7 76 	76f776e7     <unknown>
    2c20:	07 77 17 77 	77177707     <unknown>
    2c24:	27 77 37 77 	77377727     <unknown>
    2c28:	47 77 57 77 	77577747     <unknown>
    2c2c:	67 77 77 77 	77777767     <unknown>
    2c30:	87 77 97 77 	77977787     <unknown>
    2c34:	a7 77 b7 77 	77b777a7     <unknown>
    2c38:	c7 77 d7 77 	77d777c7     <unknown>
    2c3c:	e7 77 f7 77 	77f777e7     <unknown>
    2c40:	07 78 17 78 	78177807       r7 = #12224
    2c44:	27 78 37 78 	78377827       r7 = #12225
    2c48:	47 78 57 78 	78577847       r7 = #28610
    2c4c:	67 78 77 78 	78777867       r7 = #28611
    2c50:	87 78 97 78 	78977887       r7 = #-20540
    2c54:	a7 78 b7 78 	78b778a7       r7 = #-20539
    2c58:	c7 78 d7 78 	78d778c7       r7 = #-4154
    2c5c:	e7 78 f7 78 	78f778e7       r7 = #-4153
    2c60:	07 79 17 79 	79177907     <unknown>
    2c64:	27 79 37 79 	79377927     <unknown>
    2c68:	47 79 57 79 	79577947     <unknown>
    2c6c:	67 79 77 79 	79777967     <unknown>
    2c70:	87 79 97 79 	79977987     <unknown>
    2c74:	a7 79 b7 79 	79b779a7     <unknown>
    2c78:	c7 79 d7 79 	79d779c7     <unknown>
    2c7c:	e7 79 f7 79 	79f779e7     <unknown>
    2c80:	07 7a 17 7a 	7a177a07       r7 = mux (p0, #-48, #47)
    2c84:	27 7a 37 7a 	7a377a27       r7 = mux (p0, #-47, #111)
    2c88:	47 7a 57 7a 	7a577a47       r7 = mux (p0, #-46, #-81)
    2c8c:	67 7a 77 7a 	7a777a67       r7 = mux (p0, #-45, #-17)
    2c90:	87 7a 97 7a 	7a977a87       r7 = mux (p1, #-44, #47)
    2c94:	a7 7a b7 7a 	7ab77aa7       r7 = mux (p1, #-43, #111)
    2c98:	c7 7a d7 7a 	7ad77ac7       r7 = mux (p1, #-42, #-81)
    2c9c:	e7 7a f7 7a 	7af77ae7       r7 = mux (p1, #-41, #-17)
    2ca0:	07 7b 17 7b 	7b177b07       r7 = mux (p2, #-40, #47)
    2ca4:	27 7b 37 7b 	7b377b27       r7 = mux (p2, #-39, #111)
    2ca8:	47 7b 57 7b 	7b577b47       r7 = mux (p2, #-38, #-81)
    2cac:	67 7b 77 7b 	7b777b67       r7 = mux (p2, #-37, #-17)
    2cb0:	87 7b 97 7b 	7b977b87       r7 = mux (p3, #-36, #47)
    2cb4:	a7 7b b7 7b 	7bb77ba7       r7 = mux (p3, #-35, #111)
    2cb8:	c7 7b d7 7b 	7bd77bc7       r7 = mux (p3, #-34, #-81)
    2cbc:	e7 7b f7 7b 	7bf77be7       r7 = mux (p3, #-33, #-17)
    2cc0:	07 7c 17 7c 	7c177c07       r8:7 = combine (#-32, #47)
    2cc4:	27 7c 37 7c 	7c377c27       r8:7 = combine (#-31, #111)
    2cc8:	47 7c 57 7c 	7c577c47       r8:7 = combine (#-30, #-81)
    2ccc:	67 7c 77 7c 	7c777c67       r8:7 = combine (#-29, #-17)
    2cd0:	87 7c 97 7c 	7c977c87       r8:7 = combine (#-28, #47)
    2cd4:	a7 7c b7 7c 	7cb77ca7       r8:7 = combine (#-27, #47)
    2cd8:	c7 7c d7 7c 	7cd77cc7       r8:7 = combine (#-26, #47)
    2cdc:	e7 7c f7 7c 	7cf77ce7       r8:7 = combine (#-25, #47)
    2ce0:	07 7d 17 7d 	7d177d07     <unknown>
    2ce4:	27 7d 37 7d 	7d377d27     <unknown>
    2ce8:	47 7d 57 7d 	7d577d47     <unknown>
    2cec:	67 7d 77 7d 	7d777d67     <unknown>
    2cf0:	87 7d 97 7d 	7d977d87     <unknown>
    2cf4:	a7 7d b7 7d 	7db77da7     <unknown>
    2cf8:	c7 7d d7 7d 	7dd77dc7     <unknown>
    2cfc:	e7 7d f7 7d 	7df77de7     <unknown>
    2d00:	07 7e 17 7e 	7e177e07     <unknown>
    2d04:	27 7e 37 7e 	7e377e27     <unknown>
    2d08:	47 7e 57 7e 	7e577e47     <unknown>
    2d0c:	67 7e 77 7e 	7e777e67     <unknown>
    2d10:	87 7e 97 7e 	7e977e87     <unknown>
    2d14:	a7 7e b7 7e 	7eb77ea7     <unknown>
    2d18:	c7 7e d7 7e 	7ed77ec7     <unknown>
    2d1c:	e7 7e f7 7e 	7ef77ee7     <unknown>
    2d20:	07 7f 17 7f 	7f177f07       nop
    2d24:	27 7f 37 7f 	7f377f27       nop
    2d28:	47 7f 57 7f 	7f577f47       nop
    2d2c:	67 7f 77 7f 	7f777f67       nop
    2d30:	87 7f 97 7f 	7f977f87       nop
    2d34:	a7 7f b7 7f 	7fb77fa7       nop
    2d38:	c7 7f d7 7f 	7fd77fc7       nop
    2d3c:	e7 7f f7 7f 	7ff77fe7       nop
    2d40:	07 80 17 80 	80178007       r8:7 = asr (r24:23, #0)
    2d44:	27 80 37 80 	80378027     <unknown>
    2d48:	47 80 57 80 	80578047       r8:7 = vaslw (r24:23, #0)
    2d4c:	67 80 77 80 	80778067     <unknown>
    2d50:	87 80 97 80 	80978087       r8:7 = not (r24:23)
    2d54:	a7 80 b7 80 	80b780a7     <unknown>
    2d58:	c7 80 d7 80 	80d780c7       r8:7 = brev (r24:23)
    2d5c:	e7 80 f7 80 	80f780e7       r8:7 = convert_df2ud (r24:23):chop
    2d60:	07 81 17 81 	81178107       r8:7 = extractu (r24:23, #1, #0)
    2d64:	27 81 37 81 	81378127       r8:7 = extractu (r24:23, #1, #9)
    2d68:	47 81 57 81 	81578147       r8:7 = extractu (r24:23, #1, #18)
    2d6c:	67 81 77 81 	81778167       r8:7 = extractu (r24:23, #1, #27)
    2d70:	87 81 97 81 	81978187       r8:7 = extractu (r24:23, #1, #36)
    2d74:	a7 81 b7 81 	81b781a7       r8:7 = extractu (r24:23, #1, #45)
    2d78:	c7 81 d7 81 	81d781c7       r8:7 = extractu (r24:23, #1, #54)
    2d7c:	e7 81 f7 81 	81f781e7       r8:7 = extractu (r24:23, #1, #63)
    2d80:	07 82 17 82 	82178207       r8:7 -= asr (r24:23, #2)
    2d84:	27 82 37 82 	82378227       r8:7 -= lsr (r24:23, #2)
    2d88:	47 82 57 82 	82578247       r8:7 &= asl (r24:23, #2)
    2d8c:	67 82 77 82 	82778267     <unknown>
    2d90:	87 82 97 82 	82978287     <unknown>
    2d94:	a7 82 b7 82 	82b782a7     <unknown>
    2d98:	c7 82 d7 82 	82d782c7     <unknown>
    2d9c:	e7 82 f7 82 	82f782e7     <unknown>
    2da0:	07 83 17 83 	83178307       r8:7 = insert (r24:23, #3, #0)
    2da4:	27 83 37 83 	83378327       r8:7 = insert (r24:23, #3, #9)
    2da8:	47 83 57 83 	83578347       r8:7 = insert (r24:23, #3, #18)
    2dac:	67 83 77 83 	83778367       r8:7 = insert (r24:23, #3, #27)
    2db0:	87 83 97 83 	83978387       r8:7 = insert (r24:23, #3, #36)
    2db4:	a7 83 b7 83 	83b783a7       r8:7 = insert (r24:23, #3, #45)
    2db8:	c7 83 d7 83 	83d783c7       r8:7 = insert (r24:23, #3, #54)
    2dbc:	e7 83 f7 83 	83f783e7       r8:7 = insert (r24:23, #3, #63)
    2dc0:	07 84 17 84 	84178407       r8:7 = vsxtbh (r23)
    2dc4:	27 84 37 84 	84378427       r8:7 = vsxtbh (r23)
    2dc8:	47 84 57 84 	84578447       r8:7 = vsplath (r23)
    2dcc:	67 84 77 84 	84778467       r8:7 = vsplath (r23)
    2dd0:	87 84 97 84 	84978487       r8:7 = convert_sf2d (r23)
    2dd4:	a7 84 b7 84 	84b784a7       r8:7 = convert_sf2ud (r23):chop
    2dd8:	c7 84 d7 84 	84d784c7       r8:7 = convert_sf2d (r23):chop
    2ddc:	e7 84 f7 84 	84f784e7     <unknown>
    2de0:	07 85 17 85 	85178507       p3 = tstbit (r23, #5)
    2de4:	27 85 37 85 	85378527       p3 = !tstbit (r23, #5)
    2de8:	47 85 57 85 	85578547       p3 = r23
    2dec:	67 85 77 85 	85778567     <unknown>
    2df0:	87 85 97 85 	85978587       p3 = bitsclr (r23, #5)
    2df4:	a7 85 b7 85 	85b785a7       p3 = !bitsclr (r23, #5)
    2df8:	c7 85 d7 85 	85d785c7     <unknown>
    2dfc:	e7 85 f7 85 	85f785e7       p3 = sfclass (r23, #5)
    2e00:	07 86 17 86 	86178607       r8:7 = mask (p2)
    2e04:	27 86 37 86 	86378627       r8:7 = mask (p2)
    2e08:	47 86 57 86 	86578647       r8:7 = mask (p2)
    2e0c:	67 86 77 86 	86778667       r8:7 = mask (p2)
    2e10:	87 86 97 86 	86978687       r8:7 = mask (p2)
    2e14:	a7 86 b7 86 	86b786a7       r8:7 = mask (p2)
    2e18:	c7 86 d7 86 	86d786c7       r8:7 = mask (p2)
    2e1c:	e7 86 f7 86 	86f786e7       r8:7 = mask (p2)
    2e20:	07 87 17 87 	87178707       r7 = tableidxb (r23, #0, #7):raw
    2e24:	27 87 37 87 	87378727       r7 = tableidxb (r23, #9, #7):raw
    2e28:	47 87 57 87 	87578747       r7 = tableidxh (r23, #2, #7):raw
    2e2c:	67 87 77 87 	87778767       r7 = tableidxh (r23, #11, #7):raw
    2e30:	87 87 97 87 	87978787       r7 = tableidxw (r23, #4, #7):raw
    2e34:	a7 87 b7 87 	87b787a7       r7 = tableidxw (r23, #13, #7):raw
    2e38:	c7 87 d7 87 	87d787c7       r7 = tableidxd (r23, #6, #7):raw
    2e3c:	e7 87 f7 87 	87f787e7       r7 = tableidxd (r23, #15, #7):raw
    2e40:	07 88 17 88 	88178807       r7 = vsathub (r24:23)
    2e44:	27 88 37 88 	88378827       r7 = convert_ud2sf (r24:23)
    2e48:	47 88 57 88 	88578847       r7 = cl0 (r24:23)
    2e4c:	67 88 77 88 	88778867       r7 = popcount (r24:23)
    2e50:	87 88 97 88 	88978887       r7 = vrndwh (r24:23)
    2e54:	a7 88 b7 88 	88b788a7     <unknown>
    2e58:	c7 88 d7 88 	88d788c7     <unknown>
    2e5c:	e7 88 f7 88 	88f788e7     <unknown>
    2e60:	07 89 17 89 	89178907       r7 = vitpack (p3, p1)
    2e64:	27 89 37 89 	89378927     <unknown>
    2e68:	47 89 57 89 	89578947       r7 = p3
    2e6c:	67 89 77 89 	89778967       r7 = p3
    2e70:	87 89 97 89 	89978987       r7 = vitpack (p3, p1)
    2e74:	a7 89 b7 89 	89b789a7     <unknown>
    2e78:	c7 89 d7 89 	89d789c7       r7 = p3
    2e7c:	e7 89 f7 89 	89f789e7       r7 = p3
    2e80:	07 8a 17 8a 	8a178a07       r8:7 = extract (r24:23, #10, #0)
    2e84:	27 8a 37 8a 	8a378a27       r8:7 = extract (r24:23, #10, #9)
    2e88:	47 8a 57 8a 	8a578a47       r8:7 = extract (r24:23, #10, #18)
    2e8c:	67 8a 77 8a 	8a778a67       r8:7 = extract (r24:23, #10, #27)
    2e90:	87 8a 97 8a 	8a978a87       r8:7 = extract (r24:23, #10, #36)
    2e94:	a7 8a b7 8a 	8ab78aa7       r8:7 = extract (r24:23, #10, #45)
    2e98:	c7 8a d7 8a 	8ad78ac7       r8:7 = extract (r24:23, #10, #54)
    2e9c:	e7 8a f7 8a 	8af78ae7       r8:7 = extract (r24:23, #10, #63)
    2ea0:	07 8b 17 8b 	8b178b07     <unknown>
    2ea4:	27 8b 37 8b 	8b378b27     <unknown>
    2ea8:	47 8b 57 8b 	8b578b47     <unknown>
    2eac:	67 8b 77 8b 	8b778b67     <unknown>
    2eb0:	87 8b 97 8b 	8b978b87     <unknown>
    2eb4:	a7 8b b7 8b 	8bb78ba7     <unknown>
    2eb8:	c7 8b d7 8b 	8bd78bc7     <unknown>
    2ebc:	e7 8b f7 8b 	8bf78be7     <unknown>
    2ec0:	07 8c 17 8c 	8c178c07       r7 = asr (r23, #12)
    2ec4:	27 8c 37 8c 	8c378c27     <unknown>
    2ec8:	47 8c 57 8c 	8c578c47       r7 = asl (r23, #12):sat
    2ecc:	67 8c 77 8c 	8c778c67     <unknown>
    2ed0:	87 8c 97 8c 	8c978c87       r7 = abs (r23)
    2ed4:	a7 8c b7 8c 	8cb78ca7     <unknown>
    2ed8:	c7 8c d7 8c 	8cd78cc7       r7 = satub (r23)
    2edc:	e7 8c f7 8c 	8cf78ce7       r7 = round (r23, #12):sat
    2ee0:	07 8d 17 8d 	8d178d07       r7 = extractu (r23, #13, #0)
    2ee4:	27 8d 37 8d 	8d378d27       r7 = extractu (r23, #13, #9)
    2ee8:	47 8d 57 8d 	8d578d47       r7 = extractu (r23, #13, #18)
    2eec:	67 8d 77 8d 	8d778d67       r7 = extractu (r23, #13, #27)
    2ef0:	87 8d 97 8d 	8d978d87       r7 = extract (r23, #13, #4)
    2ef4:	a7 8d b7 8d 	8db78da7       r7 = extract (r23, #13, #13)
    2ef8:	c7 8d d7 8d 	8dd78dc7       r7 = extract (r23, #13, #22)
    2efc:	e7 8d f7 8d 	8df78de7       r7 = extract (r23, #13, #31)
    2f00:	07 8e 17 8e 	8e178e07       r7 -= asr (r23, #14)
    2f04:	27 8e 37 8e 	8e378e27       r7 -= lsr (r23, #14)
    2f08:	47 8e 57 8e 	8e578e47       r7 &= asl (r23, #14)
    2f0c:	67 8e 77 8e 	8e778e67     <unknown>
    2f10:	87 8e 97 8e 	8e978e87     <unknown>
    2f14:	a7 8e b7 8e 	8eb78ea7     <unknown>
    2f18:	c7 8e d7 8e 	8ed78ec7     <unknown>
    2f1c:	e7 8e f7 8e 	8ef78ee7     <unknown>
    2f20:	07 8f 17 8f 	8f178f07       r7 = insert (r23, #15, #0)
    2f24:	27 8f 37 8f 	8f378f27       r7 = insert (r23, #15, #9)
    2f28:	47 8f 57 8f 	8f578f47       r7 = insert (r23, #15, #18)
    2f2c:	67 8f 77 8f 	8f778f67       r7 = insert (r23, #15, #27)
    2f30:	87 8f 97 8f 	8f978f87     <unknown>
    2f34:	a7 8f b7 8f 	8fb78fa7     <unknown>
    2f38:	c7 8f d7 8f 	8fd78fc7     <unknown>
    2f3c:	e7 8f f7 8f 	8ff78fe7     <unknown>
    2f40:	07 90 17 90 	90179007     <unknown>
    2f44:	27 90 37 90 	90379027       r7 = membh (r23 + #258)
    2f48:	47 90 57 90 	90579047       r8:7 = memh_fifo (r23 + #260)
    2f4c:	67 90 77 90 	90779067       r7 = memubh (r23 + #262)
    2f50:	87 90 97 90 	90979087       r8:7 = memb_fifo (r23 + #132)
    2f54:	a7 90 b7 90 	90b790a7       r8:7 = memubh (r23 + #532)
    2f58:	c7 90 d7 90 	90d790c7     <unknown>
    2f5c:	e7 90 f7 90 	90f790e7       r8:7 = membh (r23 + #540)
    2f60:	07 91 17 91 	91179107       r7 = memb (r23 + #136)
    2f64:	27 91 37 91 	91379127       r7 = memub (r23 + #137)
    2f68:	47 91 57 91 	91579147       r7 = memh (r23 + #276)
    2f6c:	67 91 77 91 	91779167       r7 = memuh (r23 + #278)
    2f70:	87 91 97 91 	91979187       r7 = memw (r23 + #560)
    2f74:	a7 91 b7 91 	91b791a7     <unknown>
    2f78:	c7 91 d7 91 	91d791c7       r8:7 = memd (r23 + #1136)
    2f7c:	e7 91 f7 91 	91f791e7     <unknown>
    2f80:	07 92 17 92 	92179207       r8:7 = memd_locked (r23)
    2f84:	27 92 37 92 	92379227       r7 = membh (r23 + #1314)
    2f88:	47 92 57 92 	92579247       r8:7 = memh_fifo (r23 + #1316)
    2f8c:	67 92 77 92 	92779267       r7 = memubh (r23 + #1318)
    2f90:	87 92 97 92 	92979287       r8:7 = memb_fifo (r23 + #660)
    2f94:	a7 92 b7 92 	92b792a7       r8:7 = memubh (r23 + #2644)
    2f98:	c7 92 d7 92 	92d792c7     <unknown>
    2f9c:	e7 92 f7 92 	92f792e7       r8:7 = membh (r23 + #2652)
    2fa0:	07 93 17 93 	93179307       r7 = memb (r23 + #664)
    2fa4:	27 93 37 93 	93379327       r7 = memub (r23 + #665)
    2fa8:	47 93 57 93 	93579347       r7 = memh (r23 + #1332)
    2fac:	67 93 77 93 	93779367       r7 = memuh (r23 + #1334)
    2fb0:	87 93 97 93 	93979387       r7 = memw (r23 + #2672)
    2fb4:	a7 93 b7 93 	93b793a7     <unknown>
    2fb8:	c7 93 d7 93 	93d793c7       r8:7 = memd (r23 + #5360)
    2fbc:	e7 93 f7 93 	93f793e7     <unknown>
    2fc0:	07 94 17 94 	94179407       dcfetch (r23 + #8248)
    2fc4:	27 94 37 94 	94379427       r7 = membh (r23 + #-1726)
    2fc8:	47 94 57 94 	94579447       r8:7 = memh_fifo (r23 + #-1724)
    2fcc:	67 94 77 94 	94779467       r7 = memubh (r23 + #-1722)
    2fd0:	87 94 97 94 	94979487       r8:7 = memb_fifo (r23 + #-860)
    2fd4:	a7 94 b7 94 	94b794a7       r8:7 = memubh (r23 + #-3436)
    2fd8:	c7 94 d7 94 	94d794c7     <unknown>
    2fdc:	e7 94 f7 94 	94f794e7       r8:7 = membh (r23 + #-3428)
    2fe0:	07 95 17 95 	95179507       r7 = memb (r23 + #-856)
    2fe4:	27 95 37 95 	95379527       r7 = memub (r23 + #-855)
    2fe8:	47 95 57 95 	95579547       r7 = memh (r23 + #-1708)
    2fec:	67 95 77 95 	95779567       r7 = memuh (r23 + #-1706)
    2ff0:	87 95 97 95 	95979587       r7 = memw (r23 + #-3408)
    2ff4:	a7 95 b7 95 	95b795a7     <unknown>
    2ff8:	c7 95 d7 95 	95d795c7       r8:7 = memd (r23 + #-6800)
    2ffc:	e7 95 f7 95 	95f795e7     <unknown>
    3000:	07 96 17 96 	96179607     <unknown>
    3004:	27 96 37 96 	96379627       r7 = membh (r23 + #-670)
    3008:	47 96 57 96 	96579647       r8:7 = memh_fifo (r23 + #-668)
    300c:	67 96 77 96 	96779667       r7 = memubh (r23 + #-666)
    3010:	87 96 97 96 	96979687       r8:7 = memb_fifo (r23 + #-332)
    3014:	a7 96 b7 96 	96b796a7       r8:7 = memubh (r23 + #-1324)
    3018:	c7 96 d7 96 	96d796c7     <unknown>
    301c:	e7 96 f7 96 	96f796e7       r8:7 = membh (r23 + #-1316)
    3020:	07 97 17 97 	97179707       r7 = memb (r23 + #-328)
    3024:	27 97 37 97 	97379727       r7 = memub (r23 + #-327)
    3028:	47 97 57 97 	97579747       r7 = memh (r23 + #-652)
    302c:	67 97 77 97 	97779767       r7 = memuh (r23 + #-650)
    3030:	87 97 97 97 	97979787       r7 = memw (r23 + #-1296)
    3034:	a7 97 b7 97 	97b797a7     <unknown>
    3038:	c7 97 d7 97 	97d797c7       r8:7 = memd (r23 + #-2576)
    303c:	e7 97 f7 97 	97f797e7     <unknown>
    3040:	07 98 17 98 	98179807     <unknown>
    3044:	27 98 37 98 	98379827     <unknown>
    3048:	47 98 57 98 	98579847     <unknown>
    304c:	67 98 77 98 	98779867     <unknown>
    3050:	87 98 97 98 	98979887     <unknown>
    3054:	a7 98 b7 98 	98b798a7     <unknown>
    3058:	c7 98 d7 98 	98d798c7     <unknown>
    305c:	e7 98 f7 98 	98f798e7     <unknown>
    3060:	07 99 17 99 	99179907     <unknown>
    3064:	27 99 37 99 	99379927     <unknown>
    3068:	47 99 57 99 	99579947     <unknown>
    306c:	67 99 77 99 	99779967     <unknown>
    3070:	87 99 97 99 	99979987     <unknown>
    3074:	a7 99 b7 99 	99b799a7     <unknown>
    3078:	c7 99 d7 99 	99d799c7     <unknown>
    307c:	e7 99 f7 99 	99f799e7     <unknown>
    3080:	07 9a 17 9a 	9a179a07     <unknown>
    3084:	27 9a 37 9a 	9a379a27       r7 = membh (r23 = #41)
    3088:	47 9a 57 9a 	9a579a47       r8:7 = memh_fifo (r23 = #42)
    308c:	67 9a 77 9a 	9a779a67       r7 = memubh (r23 = #43)
    3090:	87 9a 97 9a 	9a979a87       r8:7 = memb_fifo (r23 = #40)
    3094:	a7 9a b7 9a 	9ab79aa7       r8:7 = memubh (r23 = #41)
    3098:	c7 9a d7 9a 	9ad79ac7     <unknown>
    309c:	e7 9a f7 9a 	9af79ae7       r8:7 = membh (r23 = #43)
    30a0:	07 9b 17 9b 	9b179b07       r7 = memb (r23 = #44)
    30a4:	27 9b 37 9b 	9b379b27       r7 = memub (r23 = #45)
    30a8:	47 9b 57 9b 	9b579b47       r7 = memh (r23 = #46)
    30ac:	67 9b 77 9b 	9b779b67       r7 = memuh (r23 = #47)
    30b0:	87 9b 97 9b 	9b979b87       r7 = memw (r23 = #44)
    30b4:	a7 9b b7 9b 	9bb79ba7     <unknown>
    30b8:	c7 9b d7 9b 	9bd79bc7       r8:7 = memd (r23 = #46)
    30bc:	e7 9b f7 9b 	9bf79be7     <unknown>
    30c0:	07 9c 17 9c 	9c179c07     <unknown>
    30c4:	27 9c 37 9c 	9c379c27       r7 = membh (r23 << #0 + #49)
    30c8:	47 9c 57 9c 	9c579c47       r8:7 = memh_fifo (r23 << #0 + #50)
    30cc:	67 9c 77 9c 	9c779c67       r7 = memubh (r23 << #0 + #51)
    30d0:	87 9c 97 9c 	9c979c87       r8:7 = memb_fifo (r23 << #1 + #48)
    30d4:	a7 9c b7 9c 	9cb79ca7       r8:7 = memubh (r23 << #1 + #49)
    30d8:	c7 9c d7 9c 	9cd79cc7     <unknown>
    30dc:	e7 9c f7 9c 	9cf79ce7       r8:7 = membh (r23 << #1 + #51)
    30e0:	07 9d 17 9d 	9d179d07       r7 = memb (r23 << #0 + #52)
    30e4:	27 9d 37 9d 	9d379d27       r7 = memub (r23 << #0 + #53)
    30e8:	47 9d 57 9d 	9d579d47       r7 = memh (r23 << #0 + #54)
    30ec:	67 9d 77 9d 	9d779d67       r7 = memuh (r23 << #0 + #55)
    30f0:	87 9d 97 9d 	9d979d87       r7 = memw (r23 << #1 + #52)
    30f4:	a7 9d b7 9d 	9db79da7     <unknown>
    30f8:	c7 9d d7 9d 	9dd79dc7       r8:7 = memd (r23 << #1 + #54)
    30fc:	e7 9d f7 9d 	9df79de7     <unknown>
    3100:	07 9e 17 9e 	9e179e07     <unknown>
    3104:	27 9e 37 9e 	9e379e27     <unknown>
    3108:	47 9e 57 9e 	9e579e47     <unknown>
    310c:	67 9e 77 9e 	9e779e67     <unknown>
    3110:	87 9e 97 9e 	9e979e87     <unknown>
    3114:	a7 9e b7 9e 	9eb79ea7     <unknown>
    3118:	c7 9e d7 9e 	9ed79ec7     <unknown>
    311c:	e7 9e f7 9e 	9ef79ee7     <unknown>
    3120:	07 9f 17 9f 	9f179f07     <unknown>
    3124:	27 9f 37 9f 	9f379f27     <unknown>
    3128:	47 9f 57 9f 	9f579f47     <unknown>
    312c:	67 9f 77 9f 	9f779f67     <unknown>
    3130:	87 9f 97 9f 	9f979f87     <unknown>
    3134:	a7 9f b7 9f 	9fb79fa7     <unknown>
    3138:	c7 9f d7 9f 	9fd79fc7     <unknown>
    313c:	e7 9f f7 9f 	9ff79fe7     <unknown>
    3140:	07 a0 17 a0 	a017a007       dccleana (r23)
    3144:	27 a0 37 a0 	a037a027       dcinva (r23)
    3148:	47 a0 57 a0 	a057a047       dccleaninva (r23)
    314c:	67 a0 77 a0 	a077a067     <unknown>
    3150:	87 a0 97 a0 	a097a087     <unknown>
    3154:	a7 a0 b7 a0 	a0b7a0a7       memw_locked (r23, p3) = r0
    3158:	c7 a0 d7 a0 	a0d7a0c7     <unknown>
    315c:	e7 a0 f7 a0 	a0f7a0e7       memd_locked (r23, p3) = r1:0
    3160:	07 a1 17 a1 	a117a107       memb (r23 + #263) = r1
    3164:	27 a1 37 a1 	a137a127     <unknown>
    3168:	47 a1 57 a1 	a157a147       memh (r23 + #654) = r1
    316c:	67 a1 77 a1 	a177a167       memh (r23 + #718) = r1.h
    3170:	87 a1 97 a1 	a197a187       memw (r23 + #1564) = r1
    3174:	a7 a1 b7 a1 	a1b7a1a7       memb (r23 + #423) = r7.new
    3178:	c7 a1 d7 a1 	a1d7a1c7       memd (r23 + #3640) = r2:1
    317c:	e7 a1 f7 a1 	a1f7a1e7     <unknown>
    3180:	07 a2 17 a2 	a217a207       dckill
    3184:	27 a2 37 a2 	a237a227       dccleanidx (r23)
    3188:	47 a2 57 a2 	a257a247       dcinvidx (r23)
    318c:	67 a2 77 a2 	a277a267       dccleaninvidx (r23)
    3190:	87 a2 97 a2 	a297a287     <unknown>
    3194:	a7 a2 b7 a2 	a2b7a2a7     <unknown>
    3198:	c7 a2 d7 a2 	a2d7a2c7     <unknown>
    319c:	e7 a2 f7 a2 	a2f7a2e7     <unknown>
    31a0:	07 a3 17 a3 	a317a307       memb (r23 + #775) = r3
    31a4:	27 a3 37 a3 	a337a327     <unknown>
    31a8:	47 a3 57 a3 	a357a347       memh (r23 + #1678) = r3
    31ac:	67 a3 77 a3 	a377a367       memh (r23 + #1742) = r3.h
    31b0:	87 a3 97 a3 	a397a387       memw (r23 + #3612) = r3
    31b4:	a7 a3 b7 a3 	a3b7a3a7       memb (r23 + #935) = r7.new
    31b8:	c7 a3 d7 a3 	a3d7a3c7       memd (r23 + #7736) = r4:3
    31bc:	e7 a3 f7 a3 	a3f7a3e7     <unknown>
    31c0:	07 a4 17 a4 	a417a407       dctagw (r23, r4)
    31c4:	27 a4 37 a4 	a437a427       r7 = dctagr (r23)
    31c8:	47 a4 57 a4 	a457a447     <unknown>
    31cc:	67 a4 77 a4 	a477a467       r7 = l2tagr (r23)
    31d0:	87 a4 97 a4 	a497a487     <unknown>
    31d4:	a7 a4 b7 a4 	a4b7a4a7     <unknown>
    31d8:	c7 a4 d7 a4 	a4d7a4c7     <unknown>
    31dc:	e7 a4 f7 a4 	a4f7a4e7     <unknown>
    31e0:	07 a5 17 a5 	a517a507       memb (r23 + #-761) = r5
    31e4:	27 a5 37 a5 	a537a527     <unknown>
    31e8:	47 a5 57 a5 	a557a547       memh (r23 + #-1394) = r5
    31ec:	67 a5 77 a5 	a577a567       memh (r23 + #-1330) = r5.h
    31f0:	87 a5 97 a5 	a597a587       memw (r23 + #-2532) = r5
    31f4:	a7 a5 b7 a5 	a5b7a5a7       memb (r23 + #-601) = r1.new
    31f8:	c7 a5 d7 a5 	a5d7a5c7       memd (r23 + #-4552) = r6:5
    31fc:	e7 a5 f7 a5 	a5f7a5e7     <unknown>
    3200:	07 a6 17 a6 	a617a607       l2fetch (r23, r6)
    3204:	27 a6 37 a6 	a637a627       l2cleanidx (r23)
    3208:	47 a6 57 a6 	a657a647       l2invidx (r23)
    320c:	67 a6 77 a6 	a677a667     <unknown>
    3210:	87 a6 97 a6 	a697a687       l2fetch (r23, r7:6)
    3214:	a7 a6 b7 a6 	a6b7a6a7     <unknown>
    3218:	c7 a6 d7 a6 	a6d7a6c7     <unknown>
    321c:	e7 a6 f7 a6 	a6f7a6e7     <unknown>
    3220:	07 a7 17 a7 	a717a707       memb (r23 + #-249) = r7
    3224:	27 a7 37 a7 	a737a727     <unknown>
    3228:	47 a7 57 a7 	a757a747       memh (r23 + #-370) = r7
    322c:	67 a7 77 a7 	a777a767       memh (r23 + #-306) = r7.h
    3230:	87 a7 97 a7 	a797a787       memw (r23 + #-484) = r7
    3234:	a7 a7 b7 a7 	a7b7a7a7       memb (r23 + #-89) = r1.new
    3238:	c7 a7 d7 a7 	a7d7a7c7       memd (r23 + #-456) = r8:7
    323c:	e7 a7 f7 a7 	a7f7a7e7     <unknown>
    3240:	07 a8 17 a8 	a817a807       barrier
    3244:	27 a8 37 a8 	a837a827       l2kill
    3248:	47 a8 57 a8 	a857a847       syncht
    324c:	67 a8 77 a8 	a877a867       l2cleaninvidx (r23)
    3250:	87 a8 97 a8 	a897a887     <unknown>
    3254:	a7 a8 b7 a8 	a8b7a8a7     <unknown>
    3258:	c7 a8 d7 a8 	a8d7a8c7     <unknown>
    325c:	e7 a8 f7 a8 	a8f7a8e7     <unknown>
    3260:	07 a9 17 a9 	a917a907       memb (r23 ++I:circ (m1)) = r9
    3264:	27 a9 37 a9 	a937a927     <unknown>
    3268:	47 a9 57 a9 	a957a947       memh (r23 ++I:circ (m1)) = r9
    326c:	67 a9 77 a9 	a977a967       memh (r23 ++I:circ (m1)) = r9.h
    3270:	87 a9 97 a9 	a997a987     <unknown>
    3274:	a7 a9 b7 a9 	a9b7a9a7     <unknown>
    3278:	c7 a9 d7 a9 	a9d7a9c7     <unknown>
    327c:	e7 a9 f7 a9 	a9f7a9e7     <unknown>
    3280:	07 aa 17 aa 	aa17aa07     <unknown>
    3284:	27 aa 37 aa 	aa37aa27     <unknown>
    3288:	47 aa 57 aa 	aa57aa47     <unknown>
    328c:	67 aa 77 aa 	aa77aa67     <unknown>
    3290:	87 aa 97 aa 	aa97aa87     <unknown>
    3294:	a7 aa b7 aa 	aab7aaa7     <unknown>
    3298:	c7 aa d7 aa 	aad7aac7     <unknown>
    329c:	e7 aa f7 aa 	aaf7aae7     <unknown>
    32a0:	07 ab 17 ab 	ab17ab07       if !p3 memb (r23 ++ #0) = r11
    32a4:	27 ab 37 ab 	ab37ab27     <unknown>
    32a8:	47 ab 57 ab 	ab57ab47       if !p3 memh (r23 ++ #-16) = r11
    32ac:	67 ab 77 ab 	ab77ab67       if !p3 memh (r23 ++ #-8) = r11.h
    32b0:	87 ab 97 ab 	ab97ab87       if !p3.new memw (r23 ++ #0) = r11
    32b4:	a7 ab b7 ab 	abb7aba7       if !p3.new memh (r23 ++ #8) = r7.new
    32b8:	c7 ab d7 ab 	abd7abc7       if !p3.new memd (r23 ++ #-64) = r12:11
    32bc:	e7 ab f7 ab 	abf7abe7     <unknown>
    32c0:	07 ac 17 ac 	ac17ac07     <unknown>
    32c4:	27 ac 37 ac 	ac37ac27     <unknown>
    32c8:	47 ac 57 ac 	ac57ac47     <unknown>
    32cc:	67 ac 77 ac 	ac77ac67     <unknown>
    32d0:	87 ac 97 ac 	ac97ac87     <unknown>
    32d4:	a7 ac b7 ac 	acb7aca7     <unknown>
    32d8:	c7 ac d7 ac 	acd7acc7     <unknown>
    32dc:	e7 ac f7 ac 	acf7ace7     <unknown>
    32e0:	07 ad 17 ad 	ad17ad07       memb (r23 ++ m1) = r13
    32e4:	27 ad 37 ad 	ad37ad27     <unknown>
    32e8:	47 ad 57 ad 	ad57ad47       memh (r23 ++ m1) = r13
    32ec:	67 ad 77 ad 	ad77ad67       memh (r23 ++ m1) = r13.h
    32f0:	87 ad 97 ad 	ad97ad87       memw (r23 << #2 + #7) = r13
    32f4:	a7 ad b7 ad 	adb7ada7       memh (r23 << #2 + #39) = r1.new
    32f8:	c7 ad d7 ad 	add7adc7       memd (r23 << #3 + #7) = r14:13
    32fc:	e7 ad f7 ad 	adf7ade7     <unknown>
    3300:	07 ae 17 ae 	ae17ae07     <unknown>
    3304:	27 ae 37 ae 	ae37ae27     <unknown>
    3308:	47 ae 57 ae 	ae57ae47     <unknown>
    330c:	67 ae 77 ae 	ae77ae67     <unknown>
    3310:	87 ae 97 ae 	ae97ae87     <unknown>
    3314:	a7 ae b7 ae 	aeb7aea7     <unknown>
    3318:	c7 ae d7 ae 	aed7aec7     <unknown>
    331c:	e7 ae f7 ae 	aef7aee7     <unknown>
    3320:	07 af 17 af 	af17af07       memb (r23 ++ m1:brev) = r15
    3324:	27 af 37 af 	af37af27     <unknown>
    3328:	47 af 57 af 	af57af47       memh (r23 ++ m1:brev) = r15
    332c:	67 af 77 af 	af77af67       memh (r23 ++ m1:brev) = r15.h
    3330:	87 af 97 af 	af97af87       if !p3.new memw (#48) = r15
    3334:	a7 af b7 af 	afb7afa7       if !p3.new memh (#52) = r1.new
    3338:	c7 af d7 af 	afd7afc7       if !p3.new memd (#56) = r16:15
    333c:	e7 af f7 af 	aff7afe7     <unknown>
    3340:	07 b0 17 b0 	b017b007       r7 = add (r23, #384)
    3344:	27 b0 37 b0 	b037b027       r7 = add (r23, #897)
    3348:	47 b0 57 b0 	b057b047       r7 = add (r23, #1410)
    334c:	67 b0 77 b0 	b077b067       r7 = add (r23, #1923)
    3350:	87 b0 97 b0 	b097b087       r7 = add (r23, #2436)
    3354:	a7 b0 b7 b0 	b0b7b0a7       r7 = add (r23, #2949)
    3358:	c7 b0 d7 b0 	b0d7b0c7       r7 = add (r23, #3462)
    335c:	e7 b0 f7 b0 	b0f7b0e7       r7 = add (r23, #3975)
    3360:	07 b1 17 b1 	b117b107       r7 = add (r23, #4488)
    3364:	27 b1 37 b1 	b137b127       r7 = add (r23, #5001)
    3368:	47 b1 57 b1 	b157b147       r7 = add (r23, #5514)
    336c:	67 b1 77 b1 	b177b167       r7 = add (r23, #6027)
    3370:	87 b1 97 b1 	b197b187       r7 = add (r23, #6540)
    3374:	a7 b1 b7 b1 	b1b7b1a7       r7 = add (r23, #7053)
    3378:	c7 b1 d7 b1 	b1d7b1c7       r7 = add (r23, #7566)
    337c:	e7 b1 f7 b1 	b1f7b1e7       r7 = add (r23, #8079)
    3380:	07 b2 17 b2 	b217b207       r7 = add (r23, #8592)
    3384:	27 b2 37 b2 	b237b227       r7 = add (r23, #9105)
    3388:	47 b2 57 b2 	b257b247       r7 = add (r23, #9618)
    338c:	67 b2 77 b2 	b277b267       r7 = add (r23, #10131)
    3390:	87 b2 97 b2 	b297b287       r7 = add (r23, #10644)
    3394:	a7 b2 b7 b2 	b2b7b2a7       r7 = add (r23, #11157)
    3398:	c7 b2 d7 b2 	b2d7b2c7       r7 = add (r23, #11670)
    339c:	e7 b2 f7 b2 	b2f7b2e7       r7 = add (r23, #12183)
    33a0:	07 b3 17 b3 	b317b307       r7 = add (r23, #12696)
    33a4:	27 b3 37 b3 	b337b327       r7 = add (r23, #13209)
    33a8:	47 b3 57 b3 	b357b347       r7 = add (r23, #13722)
    33ac:	67 b3 77 b3 	b377b367       r7 = add (r23, #14235)
    33b0:	87 b3 97 b3 	b397b387       r7 = add (r23, #14748)
    33b4:	a7 b3 b7 b3 	b3b7b3a7       r7 = add (r23, #15261)
    33b8:	c7 b3 d7 b3 	b3d7b3c7       r7 = add (r23, #15774)
    33bc:	e7 b3 f7 b3 	b3f7b3e7       r7 = add (r23, #16287)
    33c0:	07 b4 17 b4 	b417b407       r7 = add (r23, #16800)
    33c4:	27 b4 37 b4 	b437b427       r7 = add (r23, #17313)
    33c8:	47 b4 57 b4 	b457b447       r7 = add (r23, #17826)
    33cc:	67 b4 77 b4 	b477b467       r7 = add (r23, #18339)
    33d0:	87 b4 97 b4 	b497b487       r7 = add (r23, #18852)
    33d4:	a7 b4 b7 b4 	b4b7b4a7       r7 = add (r23, #19365)
    33d8:	c7 b4 d7 b4 	b4d7b4c7       r7 = add (r23, #19878)
    33dc:	e7 b4 f7 b4 	b4f7b4e7       r7 = add (r23, #20391)
    33e0:	07 b5 17 b5 	b517b507       r7 = add (r23, #20904)
    33e4:	27 b5 37 b5 	b537b527       r7 = add (r23, #21417)
    33e8:	47 b5 57 b5 	b557b547       r7 = add (r23, #21930)
    33ec:	67 b5 77 b5 	b577b567       r7 = add (r23, #22443)
    33f0:	87 b5 97 b5 	b597b587       r7 = add (r23, #22956)
    33f4:	a7 b5 b7 b5 	b5b7b5a7       r7 = add (r23, #23469)
    33f8:	c7 b5 d7 b5 	b5d7b5c7       r7 = add (r23, #23982)
    33fc:	e7 b5 f7 b5 	b5f7b5e7       r7 = add (r23, #24495)
    3400:	07 b6 17 b6 	b617b607       r7 = add (r23, #25008)
    3404:	27 b6 37 b6 	b637b627       r7 = add (r23, #25521)
    3408:	47 b6 57 b6 	b657b647       r7 = add (r23, #26034)
    340c:	67 b6 77 b6 	b677b667       r7 = add (r23, #26547)
    3410:	87 b6 97 b6 	b697b687       r7 = add (r23, #27060)
    3414:	a7 b6 b7 b6 	b6b7b6a7       r7 = add (r23, #27573)
    3418:	c7 b6 d7 b6 	b6d7b6c7       r7 = add (r23, #28086)
    341c:	e7 b6 f7 b6 	b6f7b6e7       r7 = add (r23, #28599)
    3420:	07 b7 17 b7 	b717b707       r7 = add (r23, #29112)
    3424:	27 b7 37 b7 	b737b727       r7 = add (r23, #29625)
    3428:	47 b7 57 b7 	b757b747       r7 = add (r23, #30138)
    342c:	67 b7 77 b7 	b777b767       r7 = add (r23, #30651)
    3430:	87 b7 97 b7 	b797b787       r7 = add (r23, #31164)
    3434:	a7 b7 b7 b7 	b7b7b7a7       r7 = add (r23, #31677)
    3438:	c7 b7 d7 b7 	b7d7b7c7       r7 = add (r23, #32190)
    343c:	e7 b7 f7 b7 	b7f7b7e7       r7 = add (r23, #32703)
    3440:	07 b8 17 b8 	b817b807       r7 = add (r23, #-32320)
    3444:	27 b8 37 b8 	b837b827       r7 = add (r23, #-31807)
    3448:	47 b8 57 b8 	b857b847       r7 = add (r23, #-31294)
    344c:	67 b8 77 b8 	b877b867       r7 = add (r23, #-30781)
    3450:	87 b8 97 b8 	b897b887       r7 = add (r23, #-30268)
    3454:	a7 b8 b7 b8 	b8b7b8a7       r7 = add (r23, #-29755)
    3458:	c7 b8 d7 b8 	b8d7b8c7       r7 = add (r23, #-29242)
    345c:	e7 b8 f7 b8 	b8f7b8e7       r7 = add (r23, #-28729)
    3460:	07 b9 17 b9 	b917b907       r7 = add (r23, #-28216)
    3464:	27 b9 37 b9 	b937b927       r7 = add (r23, #-27703)
    3468:	47 b9 57 b9 	b957b947       r7 = add (r23, #-27190)
    346c:	67 b9 77 b9 	b977b967       r7 = add (r23, #-26677)
    3470:	87 b9 97 b9 	b997b987       r7 = add (r23, #-26164)
    3474:	a7 b9 b7 b9 	b9b7b9a7       r7 = add (r23, #-25651)
    3478:	c7 b9 d7 b9 	b9d7b9c7       r7 = add (r23, #-25138)
    347c:	e7 b9 f7 b9 	b9f7b9e7       r7 = add (r23, #-24625)
    3480:	07 ba 17 ba 	ba17ba07       r7 = add (r23, #-24112)
    3484:	27 ba 37 ba 	ba37ba27       r7 = add (r23, #-23599)
    3488:	47 ba 57 ba 	ba57ba47       r7 = add (r23, #-23086)
    348c:	67 ba 77 ba 	ba77ba67       r7 = add (r23, #-22573)
    3490:	87 ba 97 ba 	ba97ba87       r7 = add (r23, #-22060)
    3494:	a7 ba b7 ba 	bab7baa7       r7 = add (r23, #-21547)
    3498:	c7 ba d7 ba 	bad7bac7       r7 = add (r23, #-21034)
    349c:	e7 ba f7 ba 	baf7bae7       r7 = add (r23, #-20521)
    34a0:	07 bb 17 bb 	bb17bb07       r7 = add (r23, #-20008)
    34a4:	27 bb 37 bb 	bb37bb27       r7 = add (r23, #-19495)
    34a8:	47 bb 57 bb 	bb57bb47       r7 = add (r23, #-18982)
    34ac:	67 bb 77 bb 	bb77bb67       r7 = add (r23, #-18469)
    34b0:	87 bb 97 bb 	bb97bb87       r7 = add (r23, #-17956)
    34b4:	a7 bb b7 bb 	bbb7bba7       r7 = add (r23, #-17443)
    34b8:	c7 bb d7 bb 	bbd7bbc7       r7 = add (r23, #-16930)
    34bc:	e7 bb f7 bb 	bbf7bbe7       r7 = add (r23, #-16417)
    34c0:	07 bc 17 bc 	bc17bc07       r7 = add (r23, #-15904)
    34c4:	27 bc 37 bc 	bc37bc27       r7 = add (r23, #-15391)
    34c8:	47 bc 57 bc 	bc57bc47       r7 = add (r23, #-14878)
    34cc:	67 bc 77 bc 	bc77bc67       r7 = add (r23, #-14365)
    34d0:	87 bc 97 bc 	bc97bc87       r7 = add (r23, #-13852)
    34d4:	a7 bc b7 bc 	bcb7bca7       r7 = add (r23, #-13339)
    34d8:	c7 bc d7 bc 	bcd7bcc7       r7 = add (r23, #-12826)
    34dc:	e7 bc f7 bc 	bcf7bce7       r7 = add (r23, #-12313)
    34e0:	07 bd 17 bd 	bd17bd07       r7 = add (r23, #-11800)
    34e4:	27 bd 37 bd 	bd37bd27       r7 = add (r23, #-11287)
    34e8:	47 bd 57 bd 	bd57bd47       r7 = add (r23, #-10774)
    34ec:	67 bd 77 bd 	bd77bd67       r7 = add (r23, #-10261)
    34f0:	87 bd 97 bd 	bd97bd87       r7 = add (r23, #-9748)
    34f4:	a7 bd b7 bd 	bdb7bda7       r7 = add (r23, #-9235)
    34f8:	c7 bd d7 bd 	bdd7bdc7       r7 = add (r23, #-8722)
    34fc:	e7 bd f7 bd 	bdf7bde7       r7 = add (r23, #-8209)
    3500:	07 be 17 be 	be17be07       r7 = add (r23, #-7696)
    3504:	27 be 37 be 	be37be27       r7 = add (r23, #-7183)
    3508:	47 be 57 be 	be57be47       r7 = add (r23, #-6670)
    350c:	67 be 77 be 	be77be67       r7 = add (r23, #-6157)
    3510:	87 be 97 be 	be97be87       r7 = add (r23, #-5644)
    3514:	a7 be b7 be 	beb7bea7       r7 = add (r23, #-5131)
    3518:	c7 be d7 be 	bed7bec7       r7 = add (r23, #-4618)
    351c:	e7 be f7 be 	bef7bee7       r7 = add (r23, #-4105)
    3520:	07 bf 17 bf 	bf17bf07       r7 = add (r23, #-3592)
    3524:	27 bf 37 bf 	bf37bf27       r7 = add (r23, #-3079)
    3528:	47 bf 57 bf 	bf57bf47       r7 = add (r23, #-2566)
    352c:	67 bf 77 bf 	bf77bf67       r7 = add (r23, #-2053)
    3530:	87 bf 97 bf 	bf97bf87       r7 = add (r23, #-1540)
    3534:	a7 bf b7 bf 	bfb7bfa7       r7 = add (r23, #-1027)
    3538:	c7 bf d7 bf 	bfd7bfc7       r7 = add (r23, #-514)
    353c:	e7 bf f7 bf 	bff7bfe7       r7 = add (r23, #-1)
    3540:	07 c0 17 c0 	c017c007       r8:7 = valignb (r1:0, r24:23, #0) }
    3544:	27 c0 37 c0 	c037c027     r8:7 = valignb (r1:0, r24:23, #1)
    3548:	47 c0 57 c0 	c057c047     r8:7 = valignb (r1:0, r24:23, #2)
    354c:	67 c0 77 c0 	c077c067     r8:7 = valignb (r1:0, r24:23, #3)
    3550:	87 c0 97 c0 	c097c087     r8:7 = vspliceb (r24:23, r1:0, #4)
    3554:	a7 c0 b7 c0 	c0b7c0a7     r8:7 = vspliceb (r24:23, r1:0, #5)
    3558:	c7 c0 d7 c0 	c0d7c0c7     r8:7 = vspliceb (r24:23, r1:0, #6)
    355c:	e7 c0 f7 c0 	c0f7c0e7     r8:7 = vspliceb (r24:23, r1:0, #7)
    3560:	07 c1 17 c1 	c117c107     r8:7 = extractu (r24:23, r2:1)
    3564:	27 c1 37 c1 	c137c127     r8:7 = extractu (r24:23, r2:1)
    3568:	47 c1 57 c1 	c157c147     r8:7 = vxsubaddw (r24:23, r2:1):sat
    356c:	67 c1 77 c1 	c177c167     <unknown>
    3570:	87 c1 97 c1 	c197c187     r8:7 = vtrunowh (r24:23, r2:1)
    3574:	a7 c1 b7 c1 	c1b7c1a7     r8:7 = vtrunowh (r24:23, r2:1)
    3578:	c7 c1 d7 c1 	c1d7c1c7     r8:7 = decbin (r24:23, r2:1)
    357c:	e7 c1 f7 c1 	c1f7c1e7     r8:7 = decbin (r24:23, r2:1)
    3580:	07 c2 17 c2 	c217c207     r8:7 = valignb (r3:2, r24:23, p0)
    3584:	27 c2 37 c2 	c237c227     r8:7 = valignb (r3:2, r24:23, p1)
    3588:	47 c2 57 c2 	c257c247     r8:7 = valignb (r3:2, r24:23, p2)
    358c:	67 c2 77 c2 	c277c267     r8:7 = valignb (r3:2, r24:23, p3)
    3590:	87 c2 97 c2 	c297c287     r8:7 = vspliceb (r24:23, r3:2, p0)
    3594:	a7 c2 b7 c2 	c2b7c2a7     r8:7 = vspliceb (r24:23, r3:2, p1)
    3598:	c7 c2 d7 c2 	c2d7c2c7     r8:7 = add (r24:23, r3:2, p2):carry
    359c:	e7 c2 f7 c2 	c2f7c2e7     r8:7 = sub (r24:23, r3:2, p3):carry
    35a0:	07 c3 17 c3 	c317c307     r8:7 = vasrw (r24:23, r3)
    35a4:	27 c3 37 c3 	c337c327     r8:7 = vasrw (r24:23, r3)
    35a8:	47 c3 57 c3 	c357c347     r8:7 = vlsrh (r24:23, r3)
    35ac:	67 c3 77 c3 	c377c367     r8:7 = vlsrh (r24:23, r3)
    35b0:	87 c3 97 c3 	c397c387     r8:7 = asl (r24:23, r3)
    35b4:	a7 c3 b7 c3 	c3b7c3a7     r8:7 = asl (r24:23, r3)
    35b8:	c7 c3 d7 c3 	c3d7c3c7     r8:7 = vrcrotate (r24:23, r3, #0)
    35bc:	e7 c3 f7 c3 	c3f7c3e7     r8:7 = vrcrotate (r24:23, r3, #1)
    35c0:	07 c4 17 c4 	c417c407     r7 = addasl (r4, r23, #0)
    35c4:	27 c4 37 c4 	c437c427     <unknown>
    35c8:	47 c4 57 c4 	c457c447     <unknown>
    35cc:	67 c4 77 c4 	c477c467     <unknown>
    35d0:	87 c4 97 c4 	c497c487     <unknown>
    35d4:	a7 c4 b7 c4 	c4b7c4a7     <unknown>
    35d8:	c7 c4 d7 c4 	c4d7c4c7     <unknown>
    35dc:	e7 c4 f7 c4 	c4f7c4e7     <unknown>
    35e0:	07 c5 17 c5 	c517c507     <unknown>
    35e4:	27 c5 37 c5 	c537c527     <unknown>
    35e8:	47 c5 57 c5 	c557c547     r7 = vasrw (r24:23, r5)
    35ec:	67 c5 77 c5 	c577c567     r7 = vasrw (r24:23, r5)
    35f0:	87 c5 97 c5 	c597c587     r7 = cmpyiwh (r24:23, r5):<<1:rnd:sat
    35f4:	a7 c5 b7 c5 	c5b7c5a7     r7 = cmpyiwh (r24:23, r5 *):<<1:rnd:sat
    35f8:	c7 c5 d7 c5 	c5d7c5c7     r7 = cmpyrwh (r24:23, r5):<<1:rnd:sat
    35fc:	e7 c5 f7 c5 	c5f7c5e7     r7 = cmpyrwh (r24:23, r5 *):<<1:rnd:sat
    3600:	07 c6 17 c6 	c617c607     r7 = asr (r23, r6):sat
    3604:	27 c6 37 c6 	c637c627     r7 = asr (r23, r6):sat
    3608:	47 c6 57 c6 	c657c647     r7 = lsr (r23, r6)
    360c:	67 c6 77 c6 	c677c667     r7 = lsr (r23, r6)
    3610:	87 c6 97 c6 	c697c687     r7 = togglebit (r23, r6)
    3614:	a7 c6 b7 c6 	c6b7c6a7     r7 = togglebit (r23, r6)
    3618:	c7 c6 d7 c6 	c6d7c6c7     r7 = round (r23, r6):sat
    361c:	e7 c6 f7 c6 	c6f7c6e7     r7 = round (r23, r6):sat
    3620:	07 c7 17 c7 	c717c707     p3 = tstbit (r23, r7)
    3624:	27 c7 37 c7 	c737c727     p3 = !tstbit (r23, r7)
    3628:	47 c7 57 c7 	c757c747     p3 = bitsset (r23, r7)
    362c:	67 c7 77 c7 	c777c767     p3 = !bitsset (r23, r7)
    3630:	87 c7 97 c7 	c797c787     p3 = bitsclr (r23, r7)
    3634:	a7 c7 b7 c7 	c7b7c7a7     p3 = !bitsclr (r23, r7)
    3638:	c7 c7 d7 c7 	c7d7c7c7     p3 = cmpb.eq (r23, r7)
    363c:	e7 c7 f7 c7 	c7f7c7e7     <unknown>
    3640:	07 c8 17 c8 	c817c807     r7 = insert (r23, r9:8)
    3644:	27 c8 37 c8 	c837c827     r7 = insert (r23, r9:8)
    3648:	47 c8 57 c8 	c857c847     r7 = insert (r23, r9:8)
    364c:	67 c8 77 c8 	c877c867     r7 = insert (r23, r9:8)
    3650:	87 c8 97 c8 	c897c887     r7 = insert (r23, r9:8)
    3654:	a7 c8 b7 c8 	c8b7c8a7     r7 = insert (r23, r9:8)
    3658:	c7 c8 d7 c8 	c8d7c8c7     r7 = insert (r23, r9:8)
    365c:	e7 c8 f7 c8 	c8f7c8e7     r7 = insert (r23, r9:8)
    3660:	07 c9 17 c9 	c917c907     r7 = extractu (r23, r10:9)
    3664:	27 c9 37 c9 	c937c927     r7 = extractu (r23, r10:9)
    3668:	47 c9 57 c9 	c957c947     <unknown>
    366c:	67 c9 77 c9 	c977c967     <unknown>
    3670:	87 c9 97 c9 	c997c987     <unknown>
    3674:	a7 c9 b7 c9 	c9b7c9a7     <unknown>
    3678:	c7 c9 d7 c9 	c9d7c9c7     <unknown>
    367c:	e7 c9 f7 c9 	c9f7c9e7     <unknown>
    3680:	07 ca 17 ca 	ca17ca07     r8:7 = insert (r24:23, r11:10)
    3684:	27 ca 37 ca 	ca37ca27     r8:7 = insert (r24:23, r11:10)
    3688:	47 ca 57 ca 	ca57ca47     r8:7 = insert (r24:23, r11:10)
    368c:	67 ca 77 ca 	ca77ca67     r8:7 = insert (r24:23, r11:10)
    3690:	87 ca 97 ca 	ca97ca87     r8:7 ^= xor (r24:23, r11:10)
    3694:	a7 ca b7 ca 	cab7caa7     r8:7 ^= xor (r24:23, r11:10)
    3698:	c7 ca d7 ca 	cad7cac7     r8:7 ^= xor (r24:23, r11:10)
    369c:	e7 ca f7 ca 	caf7cae7     r8:7 ^= xor (r24:23, r11:10)
    36a0:	07 cb 17 cb 	cb17cb07     r8:7 |= asr (r24:23, r11)
    36a4:	27 cb 37 cb 	cb37cb27     r12:11 = vrmaxh (r24:23, r7)
    36a8:	47 cb 57 cb 	cb57cb47     r8:7 &= lsr (r24:23, r11)
    36ac:	67 cb 77 cb 	cb77cb67     r8:7 ^= lsr (r24:23, r11)
    36b0:	87 cb 97 cb 	cb97cb87     r8:7 -= asl (r24:23, r11)
    36b4:	a7 cb b7 cb 	cbb7cba7     r8:7 += vrcrotate (r24:23, r11, #1)
    36b8:	c7 cb d7 cb 	cbd7cbc7     r8:7 += lsl (r24:23, r11)
    36bc:	e7 cb f7 cb 	cbf7cbe7     <unknown>
    36c0:	07 cc 17 cc 	cc17cc07     r7 |= asr (r23, r12)
    36c4:	27 cc 37 cc 	cc37cc27     r7 |= asr (r23, r12)
    36c8:	47 cc 57 cc 	cc57cc47     r7 &= lsr (r23, r12)
    36cc:	67 cc 77 cc 	cc77cc67     r7 &= lsr (r23, r12)
    36d0:	87 cc 97 cc 	cc97cc87     r7 -= asl (r23, r12)
    36d4:	a7 cc b7 cc 	ccb7cca7     r7 -= asl (r23, r12)
    36d8:	c7 cc d7 cc 	ccd7ccc7     r7 += lsl (r23, r12)
    36dc:	e7 cc f7 cc 	ccf7cce7     r7 += lsl (r23, r12)
    36e0:	07 cd 17 cd 	cd17cd07     <unknown>
    36e4:	27 cd 37 cd 	cd37cd27     <unknown>
    36e8:	47 cd 57 cd 	cd57cd47     <unknown>
    36ec:	67 cd 77 cd 	cd77cd67     <unknown>
    36f0:	87 cd 97 cd 	cd97cd87     <unknown>
    36f4:	a7 cd b7 cd 	cdb7cda7     <unknown>
    36f8:	c7 cd d7 cd 	cdd7cdc7     <unknown>
    36fc:	e7 cd f7 cd 	cdf7cde7     <unknown>
    3700:	07 ce 17 ce 	ce17ce07     <unknown>
    3704:	27 ce 37 ce 	ce37ce27     <unknown>
    3708:	47 ce 57 ce 	ce57ce47     <unknown>
    370c:	67 ce 77 ce 	ce77ce67     <unknown>
    3710:	87 ce 97 ce 	ce97ce87     <unknown>
    3714:	a7 ce b7 ce 	ceb7cea7     <unknown>
    3718:	c7 ce d7 ce 	ced7cec7     <unknown>
    371c:	e7 ce f7 ce 	cef7cee7     <unknown>
    3720:	07 cf 17 cf 	cf17cf07     r8:7 = userinsn (r24:23, r16:15, #0)
    3724:	27 cf 37 cf 	cf37cf27     r8:7 = userinsn (r24:23, r16:15, #17)
    3728:	47 cf 57 cf 	cf57cf47     r8:7 = userinsn (r24:23, r16:15, #34)
    372c:	67 cf 77 cf 	cf77cf67     r8:7 = userinsn (r24:23, r16:15, #51)
    3730:	87 cf 97 cf 	cf97cf87     r8:7 = userinsn (r24:23, r16:15, #68)
    3734:	a7 cf b7 cf 	cfb7cfa7     r8:7 = userinsn (r24:23, r16:15, #85)
    3738:	c7 cf d7 cf 	cfd7cfc7     r8:7 = userinsn (r24:23, r16:15, #102)
    373c:	e7 cf f7 cf 	cff7cfe7     r8:7 = userinsn (r24:23, r16:15, #119)
    3740:	07 d0 17 d0 	d017d007     r7 = parity (r24:23, r17:16)
    3744:	27 d0 37 d0 	d037d027     r7 = parity (r24:23, r17:16)
    3748:	47 d0 57 d0 	d057d047     r7 = parity (r24:23, r17:16)
    374c:	67 d0 77 d0 	d077d067     r7 = parity (r24:23, r17:16)
    3750:	87 d0 97 d0 	d097d087     r7 = parity (r24:23, r17:16)
    3754:	a7 d0 b7 d0 	d0b7d0a7     r7 = parity (r24:23, r17:16)
    3758:	c7 d0 d7 d0 	d0d7d0c7     r7 = parity (r24:23, r17:16)
    375c:	e7 d0 f7 d0 	d0f7d0e7     r7 = parity (r24:23, r17:16)
    3760:	07 d1 17 d1 	d117d107     r8:7 = vmux (p0, r24:23, r18:17)
    3764:	27 d1 37 d1 	d137d127     r8:7 = vmux (p1, r24:23, r18:17)
    3768:	47 d1 57 d1 	d157d147     r8:7 = vmux (p2, r24:23, r18:17)
    376c:	67 d1 77 d1 	d177d167     r8:7 = vmux (p3, r24:23, r18:17)
    3770:	87 d1 97 d1 	d197d187     r8:7 = vmux (p0, r24:23, r18:17)
    3774:	a7 d1 b7 d1 	d1b7d1a7     r8:7 = vmux (p1, r24:23, r18:17)
    3778:	c7 d1 d7 d1 	d1d7d1c7     r8:7 = vmux (p2, r24:23, r18:17)
    377c:	e7 d1 f7 d1 	d1f7d1e7     r8:7 = vmux (p3, r24:23, r18:17)
    3780:	07 d2 17 d2 	d217d207     p3 = vcmpw.eq (r24:23, r19:18)
    3784:	27 d2 37 d2 	d237d227     p3 = vcmpw.gt (r24:23, r19:18)
    3788:	47 d2 57 d2 	d257d247     p3 = vcmpw.gtu (r24:23, r19:18)
    378c:	67 d2 77 d2 	d277d267     p3 = vcmph.eq (r24:23, r19:18)
    3790:	87 d2 97 d2 	d297d287     p3 = cmp.gtu (r24:23, r19:18)
    3794:	a7 d2 b7 d2 	d2b7d2a7     <unknown>
    3798:	c7 d2 d7 d2 	d2d7d2c7     <unknown>
    379c:	e7 d2 f7 d2 	d2f7d2e7     <unknown>
    37a0:	07 d3 17 d3 	d317d307     r8:7 = vaddub (r24:23, r20:19)
    37a4:	27 d3 37 d3 	d337d327     r8:7 = vsubub (r20:19, r24:23):sat
    37a8:	47 d3 57 d3 	d357d347     r8:7 = vavgh (r24:23, r20:19)
    37ac:	67 d3 77 d3 	d377d367     r8:7 = vavguw (r24:23, r20:19)
    37b0:	87 d3 97 d3 	d397d387     r8:7 = vnavgw (r20:19, r24:23):rnd:sat
    37b4:	a7 d3 b7 d3 	d3b7d3a7     r8:7 = vmaxuw (r20:19, r24:23)
    37b8:	c7 d3 d7 d3 	d3d7d3c7     r8:7 = vmaxb (r20:19, r24:23)
    37bc:	e7 d3 f7 d3 	d3f7d3e7     r7 = modwrap (r23, r19)
    37c0:	07 d4 17 d4 	d417d407     r8:7 = packhl (r23, r20):deprecated
    37c4:	27 d4 37 d4 	d437d427     r8:7 = bitsplit (r23, r20)
    37c8:	47 d4 57 d4 	d457d447     r8:7 = packhl (r23, r20):deprecated
    37cc:	67 d4 77 d4 	d477d467     r8:7 = bitsplit (r23, r20)
    37d0:	87 d4 97 d4 	d497d487     r8:7 = packhl (r23, r20):deprecated
    37d4:	a7 d4 b7 d4 	d4b7d4a7     r8:7 = bitsplit (r23, r20)
    37d8:	c7 d4 d7 d4 	d4d7d4c7     r8:7 = packhl (r23, r20):deprecated
    37dc:	e7 d4 f7 d4 	d4f7d4e7     r8:7 = bitsplit (r23, r20)
    37e0:	07 d5 17 d5 	d517d507     r7 = add (r21.l, r23.l)
    37e4:	27 d5 37 d5 	d537d527     r7 = sub (r21.l, r23.l)
    37e8:	47 d5 57 d5 	d557d547     r7 = add (r21.h, r23.l):<<16
    37ec:	67 d5 77 d5 	d577d567     r7 = sub (r21.h, r23.h):<<16
    37f0:	87 d5 97 d5 	d597d587     r7 = sub (r21, r23):sat:deprecated
    37f4:	a7 d5 b7 d5 	d5b7d5a7     r7 = minu (r21, r23)
    37f8:	c7 d5 d7 d5 	d5d7d5c7     r7 = maxu (r23, r21)
    37fc:	e7 d5 f7 d5 	d5f7d5e7     r7 = parity (r23, r21)
    3800:	07 d6 17 d6 	d617d607     r7 = sfmake (#176):pos
    3804:	27 d6 37 d6 	d637d627     r7 = sfmake (#689):pos
    3808:	47 d6 57 d6 	d657d647     r7 = sfmake (#178):neg
    380c:	67 d6 77 d6 	d677d667     r7 = sfmake (#691):neg
    3810:	87 d6 97 d6 	d697d687     <unknown>
    3814:	a7 d6 b7 d6 	d6b7d6a7     <unknown>
    3818:	c7 d6 d7 d6 	d6d7d6c7     <unknown>
    381c:	e7 d6 f7 d6 	d6f7d6e7     <unknown>
    3820:	07 d7 17 d7 	d717d707     r7 = add (#0, mpyi (r23, r23))
    3824:	27 d7 37 d7 	d737d727     r7 = add (#17, mpyi (r23, r23))
    3828:	47 d7 57 d7 	d757d747     r7 = add (#34, mpyi (r23, r23))
    382c:	67 d7 77 d7 	d777d767     r7 = add (#51, mpyi (r23, r23))
    3830:	87 d7 97 d7 	d797d787     <unknown>
    3834:	a7 d7 b7 d7 	d7b7d7a7     <unknown>
    3838:	c7 d7 d7 d7 	d7d7d7c7     <unknown>
    383c:	e7 d7 f7 d7 	d7f7d7e7     <unknown>
    3840:	07 d8 17 d8 	d817d807     r24 = add (#0, mpyi (r23, #7))
    3844:	27 d8 37 d8 	d837d827     r24 = add (#17, mpyi (r23, #7))
    3848:	47 d8 57 d8 	d857d847     r24 = add (#34, mpyi (r23, #7))
    384c:	67 d8 77 d8 	d877d867     r24 = add (#51, mpyi (r23, #7))
    3850:	87 d8 97 d8 	d897d887     r24 = add (#4, mpyi (r23, #39))
    3854:	a7 d8 b7 d8 	d8b7d8a7     r24 = add (#21, mpyi (r23, #39))
    3858:	c7 d8 d7 d8 	d8d7d8c7     r24 = add (#38, mpyi (r23, #39))
    385c:	e7 d8 f7 d8 	d8f7d8e7     r24 = add (#55, mpyi (r23, #39))
    3860:	07 d9 17 d9 	d917d907     r8:7 = dfmake (#200):pos
    3864:	27 d9 37 d9 	d937d927     r8:7 = dfmake (#713):pos
    3868:	47 d9 57 d9 	d957d947     r8:7 = dfmake (#202):neg
    386c:	67 d9 77 d9 	d977d967     r8:7 = dfmake (#715):neg
    3870:	87 d9 97 d9 	d997d987     <unknown>
    3874:	a7 d9 b7 d9 	d9b7d9a7     <unknown>
    3878:	c7 d9 d7 d9 	d9d7d9c7     <unknown>
    387c:	e7 d9 f7 d9 	d9f7d9e7     <unknown>
    3880:	07 da 17 da 	da17da07     r7 |= and (r23, #208)
    3884:	27 da 37 da 	da37da27     r7 |= and (r23, #-303)
    3888:	47 da 57 da 	da57da47     r23 = or (r7, and (r23, #210))
    388c:	67 da 77 da 	da77da67     r23 = or (r7, and (r23, #-301))
    3890:	87 da 97 da 	da97da87     r7 |= or (r23, #212)
    3894:	a7 da b7 da 	dab7daa7     r7 |= or (r23, #-299)
    3898:	c7 da d7 da 	dad7dac7     <unknown>
    389c:	e7 da f7 da 	daf7dae7     <unknown>
    38a0:	07 db 17 db 	db17db07     r27 = add (r23, add (r7, #0))
    38a4:	27 db 37 db 	db37db27     r27 = add (r23, add (r7, #17))
    38a8:	47 db 57 db 	db57db47     r27 = add (r23, add (r7, #-30))
    38ac:	67 db 77 db 	db77db67     r27 = add (r23, add (r7, #-13))
    38b0:	87 db 97 db 	db97db87     r27 = add (r23, sub (#4, r7))
    38b4:	a7 db b7 db 	dbb7dba7     r27 = add (r23, sub (#21, r7))
    38b8:	c7 db d7 db 	dbd7dbc7     r27 = add (r23, sub (#-26, r7))
    38bc:	e7 db f7 db 	dbf7dbe7     r27 = add (r23, sub (#-9, r7))
    38c0:	07 dc 17 dc 	dc17dc07     p3 = vcmpb.eq (r24:23, #224)
    38c4:	27 dc 37 dc 	dc37dc27     p3 = vcmpb.gt (r24:23, #-31)
    38c8:	47 dc 57 dc 	dc57dc47     <unknown>
    38cc:	67 dc 77 dc 	dc77dc67     <unknown>
    38d0:	87 dc 97 dc 	dc97dc87     <unknown>
    38d4:	a7 dc b7 dc 	dcb7dca7     <unknown>
    38d8:	c7 dc d7 dc 	dcd7dcc7     <unknown>
    38dc:	e7 dc f7 dc 	dcf7dce7     <unknown>
    38e0:	07 dd 17 dd 	dd17dd07     p3 = cmpb.eq (r23, #232)
    38e4:	27 dd 37 dd 	dd37dd27     p3 = cmpb.gt (r23, #-23)
    38e8:	47 dd 57 dd 	dd57dd47     <unknown>
    38ec:	67 dd 77 dd 	dd77dd67     <unknown>
    38f0:	87 dd 97 dd 	dd97dd87     p3 = cmpb.eq (r23, #236)
    38f4:	a7 dd b7 dd 	ddb7dda7     p3 = cmpb.gt (r23, #-19)
    38f8:	c7 dd d7 dd 	ddd7ddc7     <unknown>
    38fc:	e7 dd f7 dd 	ddf7dde7     <unknown>
    3900:	07 de 17 de 	de17de07     r23 = sub (#0, asl (r23, #30))
    3904:	27 de 37 de 	de37de27     r23 = sub (#34, asl (r23, #30))
    3908:	47 de 57 de 	de57de47     r23 = sub (#68, asl (r23, #30))
    390c:	67 de 77 de 	de77de67     r23 = sub (#102, asl (r23, #30))
    3910:	87 de 97 de 	de97de87     r23 = sub (#136, asl (r23, #30))
    3914:	a7 de b7 de 	deb7dea7     r23 = sub (#170, asl (r23, #30))
    3918:	c7 de d7 de 	ded7dec7     r23 = sub (#204, asl (r23, #30))
    391c:	e7 de f7 de 	def7dee7     r23 = sub (#238, asl (r23, #30))
    3920:	07 df 17 df 	df17df07     r31 = add (r7, mpyi (#0, r23))
    3924:	27 df 37 df 	df37df27     r31 = add (r7, mpyi (#68, r23))
    3928:	47 df 57 df 	df57df47     r31 = add (r7, mpyi (#136, r23))
    392c:	67 df 77 df 	df77df67     r31 = add (r7, mpyi (#204, r23))
    3930:	87 df 97 df 	df97df87     r31 = add (r7, mpyi (r23, #4))
    3934:	a7 df b7 df 	dfb7dfa7     r31 = add (r7, mpyi (r23, #21))
    3938:	c7 df d7 df 	dfd7dfc7     r31 = add (r7, mpyi (r23, #38))
    393c:	e7 df f7 df 	dff7dfe7     r31 = add (r7, mpyi (r23, #55))
    3940:	07 e0 17 e0 	e017e007     <unknown>
    3944:	27 e0 37 e0 	e037e027     <unknown>
    3948:	47 e0 57 e0 	e057e047     <unknown>
    394c:	67 e0 77 e0 	e077e067     <unknown>
    3950:	87 e0 97 e0 	e097e087     <unknown>
    3954:	a7 e0 b7 e0 	e0b7e0a7     <unknown>
    3958:	c7 e0 d7 e0 	e0d7e0c7     <unknown>
    395c:	e7 e0 f7 e0 	e0f7e0e7     <unknown>
    3960:	07 e1 17 e1 	e117e107     <unknown>
    3964:	27 e1 37 e1 	e137e127     <unknown>
    3968:	47 e1 57 e1 	e157e147     <unknown>
    396c:	67 e1 77 e1 	e177e167     <unknown>
    3970:	87 e1 97 e1 	e197e187     <unknown>
    3974:	a7 e1 b7 e1 	e1b7e1a7     <unknown>
    3978:	c7 e1 d7 e1 	e1d7e1c7     <unknown>
    397c:	e7 e1 f7 e1 	e1f7e1e7     <unknown>
    3980:	07 e2 17 e2 	e217e207     <unknown>
    3984:	27 e2 37 e2 	e237e227     <unknown>
    3988:	47 e2 57 e2 	e257e247     <unknown>
    398c:	67 e2 77 e2 	e277e267     <unknown>
    3990:	87 e2 97 e2 	e297e287     <unknown>
    3994:	a7 e2 b7 e2 	e2b7e2a7     <unknown>
    3998:	c7 e2 d7 e2 	e2d7e2c7     <unknown>
    399c:	e7 e2 f7 e2 	e2f7e2e7     <unknown>
    39a0:	07 e3 17 e3 	e317e307     r3 = add (r7, mpyi (r3, r23))
    39a4:	27 e3 37 e3 	e337e327     <unknown>
    39a8:	47 e3 57 e3 	e357e347     <unknown>
    39ac:	67 e3 77 e3 	e377e367     <unknown>
    39b0:	87 e3 97 e3 	e397e387     <unknown>
    39b4:	a7 e3 b7 e3 	e3b7e3a7     <unknown>
    39b8:	c7 e3 d7 e3 	e3d7e3c7     <unknown>
    39bc:	e7 e3 f7 e3 	e3f7e3e7     <unknown>
    39c0:	07 e4 17 e4 	e417e407     r8:7 = mpy (r23.l, r4.l)
    39c4:	27 e4 37 e4 	e437e427     r8:7 = mpy (r23.l, r4.h):rnd
    39c8:	47 e4 57 e4 	e457e447     r8:7 = mpyu (r23.h, r4.l)
    39cc:	67 e4 77 e4 	e477e467     <unknown>
    39d0:	87 e4 97 e4 	e497e487     r8:7 = mpy (r23.l, r4.l):<<1
    39d4:	a7 e4 b7 e4 	e4b7e4a7     r8:7 = mpy (r23.l, r4.h):<<1:rnd
    39d8:	c7 e4 d7 e4 	e4d7e4c7     r8:7 = mpyu (r23.h, r4.l):<<1
    39dc:	e7 e4 f7 e4 	e4f7e4e7     <unknown>
    39e0:	07 e5 17 e5 	e517e507     <unknown>
    39e4:	27 e5 37 e5 	e537e527     <unknown>
    39e8:	47 e5 57 e5 	e557e547     <unknown>
    39ec:	67 e5 77 e5 	e577e567     <unknown>
    39f0:	87 e5 97 e5 	e597e587     <unknown>
    39f4:	a7 e5 b7 e5 	e5b7e5a7     <unknown>
    39f8:	c7 e5 d7 e5 	e5d7e5c7     <unknown>
    39fc:	e7 e5 f7 e5 	e5f7e5e7     <unknown>
    3a00:	07 e6 17 e6 	e617e607     r8:7 += mpy (r23.l, r6.l)
    3a04:	27 e6 37 e6 	e637e627     r8:7 -= mpy (r23.l, r6.h)
    3a08:	47 e6 57 e6 	e657e647     r8:7 += mpyu (r23.h, r6.l)
    3a0c:	67 e6 77 e6 	e677e667     r8:7 -= mpyu (r23.h, r6.h)
    3a10:	87 e6 97 e6 	e697e687     <unknown>
    3a14:	a7 e6 b7 e6 	e6b7e6a7     <unknown>
    3a18:	c7 e6 d7 e6 	e6d7e6c7     <unknown>
    3a1c:	e7 e6 f7 e6 	e6f7e6e7     <unknown>
    3a20:	07 e7 17 e7 	e717e707     <unknown>
    3a24:	27 e7 37 e7 	e737e727     <unknown>
    3a28:	47 e7 57 e7 	e757e747     <unknown>
    3a2c:	67 e7 77 e7 	e777e767     <unknown>
    3a30:	87 e7 97 e7 	e797e787     <unknown>
    3a34:	a7 e7 b7 e7 	e7b7e7a7     <unknown>
    3a38:	c7 e7 d7 e7 	e7d7e7c7     <unknown>
    3a3c:	e7 e7 f7 e7 	e7f7e7e7     <unknown>
    3a40:	07 e8 17 e8 	e817e807     <unknown>
    3a44:	27 e8 37 e8 	e837e827     <unknown>
    3a48:	47 e8 57 e8 	e857e847     <unknown>
    3a4c:	67 e8 77 e8 	e877e867     <unknown>
    3a50:	87 e8 97 e8 	e897e887     <unknown>
    3a54:	a7 e8 b7 e8 	e8b7e8a7     <unknown>
    3a58:	c7 e8 d7 e8 	e8d7e8c7     <unknown>
    3a5c:	e7 e8 f7 e8 	e8f7e8e7     <unknown>
    3a60:	07 e9 17 e9 	e917e907     <unknown>
    3a64:	27 e9 37 e9 	e937e927     <unknown>
    3a68:	47 e9 57 e9 	e957e947     <unknown>
    3a6c:	67 e9 77 e9 	e977e967     <unknown>
    3a70:	87 e9 97 e9 	e997e987     <unknown>
    3a74:	a7 e9 b7 e9 	e9b7e9a7     <unknown>
    3a78:	c7 e9 d7 e9 	e9d7e9c7     <unknown>
    3a7c:	e7 e9 f7 e9 	e9f7e9e7     <unknown>
    3a80:	07 ea 17 ea 	ea17ea07     <unknown>
    3a84:	27 ea 37 ea 	ea37ea27     <unknown>
    3a88:	47 ea 57 ea 	ea57ea47     <unknown>
    3a8c:	67 ea 77 ea 	ea77ea67     <unknown>
    3a90:	87 ea 97 ea 	ea97ea87     <unknown>
    3a94:	a7 ea b7 ea 	eab7eaa7     <unknown>
    3a98:	c7 ea d7 ea 	ead7eac7     <unknown>
    3a9c:	e7 ea f7 ea 	eaf7eae7     <unknown>
    3aa0:	07 eb 17 eb 	eb17eb07     <unknown>
    3aa4:	27 eb 37 eb 	eb37eb27     <unknown>
    3aa8:	47 eb 57 eb 	eb57eb47     <unknown>
    3aac:	67 eb 77 eb 	eb77eb67     <unknown>
    3ab0:	87 eb 97 eb 	eb97eb87     <unknown>
    3ab4:	a7 eb b7 eb 	ebb7eba7     <unknown>
    3ab8:	c7 eb d7 eb 	ebd7ebc7     <unknown>
    3abc:	e7 eb f7 eb 	ebf7ebe7     <unknown>
    3ac0:	07 ec 17 ec 	ec17ec07     r7 = mpy (r23.l, r12.l)
    3ac4:	27 ec 37 ec 	ec37ec27     r7 = mpy (r23.l, r12.h):rnd
    3ac8:	47 ec 57 ec 	ec57ec47     r7 = mpyu (r23.h, r12.l)
    3acc:	67 ec 77 ec 	ec77ec67     <unknown>
    3ad0:	87 ec 97 ec 	ec97ec87     r7 = mpy (r23.l, r12.l):<<1:sat
    3ad4:	a7 ec b7 ec 	ecb7eca7     r7 = mpy (r23.l, r12.h):<<1:rnd:sat
    3ad8:	c7 ec d7 ec 	ecd7ecc7     <unknown>
    3adc:	e7 ec f7 ec 	ecf7ece7     <unknown>
    3ae0:	07 ed 17 ed 	ed17ed07     <unknown>
    3ae4:	27 ed 37 ed 	ed37ed27     <unknown>
    3ae8:	47 ed 57 ed 	ed57ed47     <unknown>
    3aec:	67 ed 77 ed 	ed77ed67     <unknown>
    3af0:	87 ed 97 ed 	ed97ed87     <unknown>
    3af4:	a7 ed b7 ed 	edb7eda7     <unknown>
    3af8:	c7 ed d7 ed 	edd7edc7     <unknown>
    3afc:	e7 ed f7 ed 	edf7ede7     <unknown>
    3b00:	07 ee 17 ee 	ee17ee07     r7 += mpy (r23.l, r14.l)
    3b04:	27 ee 37 ee 	ee37ee27     r7 -= mpy (r23.l, r14.h)
    3b08:	47 ee 57 ee 	ee57ee47     r7 += mpyu (r23.h, r14.l)
    3b0c:	67 ee 77 ee 	ee77ee67     r7 -= mpyu (r23.h, r14.h)
    3b10:	87 ee 97 ee 	ee97ee87     r7 += mpy (r23.l, r14.l):<<1:sat
    3b14:	a7 ee b7 ee 	eeb7eea7     r7 -= mpy (r23.l, r14.h):<<1:sat
    3b18:	c7 ee d7 ee 	eed7eec7     <unknown>
    3b1c:	e7 ee f7 ee 	eef7eee7     <unknown>
    3b20:	07 ef 17 ef 	ef17ef07     <unknown>
    3b24:	27 ef 37 ef 	ef37ef27     <unknown>
    3b28:	47 ef 57 ef 	ef57ef47     <unknown>
    3b2c:	67 ef 77 ef 	ef77ef67     <unknown>
    3b30:	87 ef 97 ef 	ef97ef87     <unknown>
    3b34:	a7 ef b7 ef 	efb7efa7     <unknown>
    3b38:	c7 ef d7 ef 	efd7efc7     <unknown>
    3b3c:	e7 ef f7 ef 	eff7efe7     <unknown>
    3b40:	07 f0 17 f0 	f017f007     <unknown>
    3b44:	27 f0 37 f0 	f037f027     <unknown>
    3b48:	47 f0 57 f0 	f057f047     <unknown>
    3b4c:	67 f0 77 f0 	f077f067     <unknown>
    3b50:	87 f0 97 f0 	f097f087     <unknown>
    3b54:	a7 f0 b7 f0 	f0b7f0a7     <unknown>
    3b58:	c7 f0 d7 f0 	f0d7f0c7     <unknown>
    3b5c:	e7 f0 f7 f0 	f0f7f0e7     <unknown>
    3b60:	07 f1 17 f1 	f117f107     r7 = and (r23, r17)
    3b64:	27 f1 37 f1 	f137f127     r7 = or (r23, r17)
    3b68:	47 f1 57 f1 	f157f147     <unknown>
    3b6c:	67 f1 77 f1 	f177f167     r7 = xor (r23, r17)
    3b70:	87 f1 97 f1 	f197f187     r7 = and (r17, ~ r23)
    3b74:	a7 f1 b7 f1 	f1b7f1a7     r7 = or (r17, ~ r23)
    3b78:	c7 f1 d7 f1 	f1d7f1c7     <unknown>
    3b7c:	e7 f1 f7 f1 	f1f7f1e7     <unknown>
    3b80:	07 f2 17 f2 	f217f207     <unknown>
    3b84:	27 f2 37 f2 	f237f227     <unknown>
    3b88:	47 f2 57 f2 	f257f247     <unknown>
    3b8c:	67 f2 77 f2 	f277f267     <unknown>
    3b90:	87 f2 97 f2 	f297f287     <unknown>
    3b94:	a7 f2 b7 f2 	f2b7f2a7     <unknown>
    3b98:	c7 f2 d7 f2 	f2d7f2c7     <unknown>
    3b9c:	e7 f2 f7 f2 	f2f7f2e7     <unknown>
    3ba0:	07 f3 17 f3 	f317f307     r7 = add (r23, r19)
    3ba4:	27 f3 37 f3 	f337f327     r7 = sub (r19, r23)
    3ba8:	47 f3 57 f3 	f357f347     r7 = cmp.eq (r23, r19)
    3bac:	67 f3 77 f3 	f377f367     r7 = !cmp.eq (r23, r19)
    3bb0:	87 f3 97 f3 	f397f387     r7 = combine (r19.h, r23.h)
    3bb4:	a7 f3 b7 f3 	f3b7f3a7     r7 = combine (r19.h, r23.l)
    3bb8:	c7 f3 d7 f3 	f3d7f3c7     r7 = combine (r19.l, r23.h)
    3bbc:	e7 f3 f7 f3 	f3f7f3e7     r7 = combine (r19.l, r23.l)
    3bc0:	07 f4 17 f4 	f417f407     r7 = mux (p0, r23, r20)
    3bc4:	27 f4 37 f4 	f437f427     r7 = mux (p1, r23, r20)
    3bc8:	47 f4 57 f4 	f457f447     r7 = mux (p2, r23, r20)
    3bcc:	67 f4 77 f4 	f477f467     r7 = mux (p3, r23, r20)
    3bd0:	87 f4 97 f4 	f497f487     r7 = mux (p0, r23, r20)
    3bd4:	a7 f4 b7 f4 	f4b7f4a7     r7 = mux (p1, r23, r20)
    3bd8:	c7 f4 d7 f4 	f4d7f4c7     r7 = mux (p2, r23, r20)
    3bdc:	e7 f4 f7 f4 	f4f7f4e7     r7 = mux (p3, r23, r20)
    3be0:	07 f5 17 f5 	f517f507     r8:7 = combine (r23, r21)
    3be4:	27 f5 37 f5 	f537f527     r8:7 = combine (r23, r21)
    3be8:	47 f5 57 f5 	f557f547     r8:7 = combine (r23, r21)
    3bec:	67 f5 77 f5 	f577f567     r8:7 = combine (r23, r21)
    3bf0:	87 f5 97 f5 	f597f587     r8:7 = packhl (r23, r21)
    3bf4:	a7 f5 b7 f5 	f5b7f5a7     r8:7 = packhl (r23, r21)
    3bf8:	c7 f5 d7 f5 	f5d7f5c7     r8:7 = packhl (r23, r21)
    3bfc:	e7 f5 f7 f5 	f5f7f5e7     r8:7 = packhl (r23, r21)
    3c00:	07 f6 17 f6 	f617f607     r7 = vaddh (r23, r22)
    3c04:	27 f6 37 f6 	f637f627     r7 = vaddh (r23, r22):sat
    3c08:	47 f6 57 f6 	f657f647     r7 = add (r23, r22):sat
    3c0c:	67 f6 77 f6 	f677f667     r7 = vadduh (r23, r22):sat
    3c10:	87 f6 97 f6 	f697f687     r7 = vsubh (r22, r23)
    3c14:	a7 f6 b7 f6 	f6b7f6a7     r7 = vsubh (r22, r23):sat
    3c18:	c7 f6 d7 f6 	f6d7f6c7     r7 = sub (r22, r23):sat
    3c1c:	e7 f6 f7 f6 	f6f7f6e7     r7 = vsubuh (r22, r23):sat
    3c20:	07 f7 17 f7 	f717f707     r7 = vavgh (r23, r23)
    3c24:	27 f7 37 f7 	f737f727     r7 = vavgh (r23, r23):rnd
    3c28:	47 f7 57 f7 	f757f747     <unknown>
    3c2c:	67 f7 77 f7 	f777f767     r7 = vnavgh (r23, r23)
    3c30:	87 f7 97 f7 	f797f787     r7 = vavgh (r23, r23)
    3c34:	a7 f7 b7 f7 	f7b7f7a7     r7 = vavgh (r23, r23):rnd
    3c38:	c7 f7 d7 f7 	f7d7f7c7     <unknown>
    3c3c:	e7 f7 f7 f7 	f7f7f7e7     r7 = vnavgh (r23, r23)
    3c40:	07 f8 17 f8 	f817f807     <unknown>
    3c44:	27 f8 37 f8 	f837f827     <unknown>
    3c48:	47 f8 57 f8 	f857f847     <unknown>
    3c4c:	67 f8 77 f8 	f877f867     <unknown>
    3c50:	87 f8 97 f8 	f897f887     <unknown>
    3c54:	a7 f8 b7 f8 	f8b7f8a7     <unknown>
    3c58:	c7 f8 d7 f8 	f8d7f8c7     <unknown>
    3c5c:	e7 f8 f7 f8 	f8f7f8e7     <unknown>
    3c60:	07 f9 17 f9 	f917f907     if (p0.new) r7 = and (r23, r25)
    3c64:	27 f9 37 f9 	f937f927     if (p1.new) r7 = or (r23, r25)
    3c68:	47 f9 57 f9 	f957f947     <unknown>
    3c6c:	67 f9 77 f9 	f977f967     if (p3.new) r7 = xor (r23, r25)
    3c70:	87 f9 97 f9 	f997f987     if !p0.new r7 = and (r23, r25)
    3c74:	a7 f9 b7 f9 	f9b7f9a7     if !p1.new r7 = or (r23, r25)
    3c78:	c7 f9 d7 f9 	f9d7f9c7     <unknown>
    3c7c:	e7 f9 f7 f9 	f9f7f9e7     if !p3.new r7 = xor (r23, r25)
    3c80:	07 fa 17 fa 	fa17fa07     <unknown>
    3c84:	27 fa 37 fa 	fa37fa27     <unknown>
    3c88:	47 fa 57 fa 	fa57fa47     <unknown>
    3c8c:	67 fa 77 fa 	fa77fa67     <unknown>
    3c90:	87 fa 97 fa 	fa97fa87     <unknown>
    3c94:	a7 fa b7 fa 	fab7faa7     <unknown>
    3c98:	c7 fa d7 fa 	fad7fac7     <unknown>
    3c9c:	e7 fa f7 fa 	faf7fae7     <unknown>
    3ca0:	07 fb 17 fb 	fb17fb07     if (p0.new) r7 = add (r23, r27)
    3ca4:	27 fb 37 fb 	fb37fb27     if (p1.new) r7 = sub (r27, r23)
    3ca8:	47 fb 57 fb 	fb57fb47     if (p2.new) r7 = add (r23, r27)
    3cac:	67 fb 77 fb 	fb77fb67     if (p3.new) r7 = sub (r27, r23)
    3cb0:	87 fb 97 fb 	fb97fb87     <unknown>
    3cb4:	a7 fb b7 fb 	fbb7fba7     <unknown>
    3cb8:	c7 fb d7 fb 	fbd7fbc7     <unknown>
    3cbc:	e7 fb f7 fb 	fbf7fbe7     <unknown>
    3cc0:	07 fc 17 fc 	fc17fc07     <unknown>
    3cc4:	27 fc 37 fc 	fc37fc27     <unknown>
    3cc8:	47 fc 57 fc 	fc57fc47     <unknown>
    3ccc:	67 fc 77 fc 	fc77fc67     <unknown>
    3cd0:	87 fc 97 fc 	fc97fc87     <unknown>
    3cd4:	a7 fc b7 fc 	fcb7fca7     <unknown>
    3cd8:	c7 fc d7 fc 	fcd7fcc7     <unknown>
    3cdc:	e7 fc f7 fc 	fcf7fce7     <unknown>
    3ce0:	07 fd 17 fd 	fd17fd07     if (p0.new) r8:7 = combine (r23, r29)
    3ce4:	27 fd 37 fd 	fd37fd27     if (p1.new) r8:7 = combine (r23, r29)
    3ce8:	47 fd 57 fd 	fd57fd47     if (p2.new) r8:7 = combine (r23, r29)
    3cec:	67 fd 77 fd 	fd77fd67     if (p3.new) r8:7 = combine (r23, r29)
    3cf0:	87 fd 97 fd 	fd97fd87     if !p0.new r8:7 = combine (r23, r29)
    3cf4:	a7 fd b7 fd 	fdb7fda7     if !p1.new r8:7 = combine (r23, r29)
    3cf8:	c7 fd d7 fd 	fdd7fdc7     if !p2.new r8:7 = combine (r23, r29)
    3cfc:	e7 fd f7 fd 	fdf7fde7     if !p3.new r8:7 = combine (r23, r29)
    3d00:	07 fe 17 fe 	fe17fe07     <unknown>
    3d04:	27 fe 37 fe 	fe37fe27     <unknown>
    3d08:	47 fe 57 fe 	fe57fe47     <unknown>
    3d0c:	67 fe 77 fe 	fe77fe67     <unknown>
    3d10:	87 fe 97 fe 	fe97fe87     <unknown>
    3d14:	a7 fe b7 fe 	feb7fea7     <unknown>
    3d18:	c7 fe d7 fe 	fed7fec7     <unknown>
    3d1c:	e7 fe f7 fe 	fef7fee7     <unknown>
    3d20:	07 ff 17 ff 	ff17ff07     <unknown>
    3d24:	27 ff 37 ff 	ff37ff27     <unknown>
    3d28:	47 ff 57 ff 	ff57ff47     <unknown>
    3d2c:	67 ff 77 ff 	ff77ff67     <unknown>
    3d30:	87 ff 97 ff 	ff97ff87     <unknown>
    3d34:	a7 ff b7 ff 	ffb7ffa7     <unknown>
    3d38:	c7 ff d7 ff 	ffd7ffc7     <unknown>
    3d3c:	e7 ff f7 ff 	fff7ffe7     <unknown>

Disassembly of section .init:

00003d40 <_init>:
    3d40:	01 c0 9d a0 	a09dc001     allocframe (#8)
    3d44:	00 db 9d a1 	a19ddb00     memw (r29 + #0) = r27
    3d48:	01 c0 20 72 	7220c001     r0.h = #1
    3d4c:	60 cd 20 71 	7120cd60     r0.l = #3424
    3d50:	01 c0 80 91 	9180c001     r1 = memw (r0 + #0)
    3d54:	0c c0 01 10 	1001c00c     p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt 3d6c <_init+0x2c>
    3d58:	02 40 00 78 	78004002     { r2 = #0
    3d5c:	01 28 03 28 	28032801       r3 = #0 ; r1 = #0 }
    3d60:	00 c0 3c 72 	723cc000     r28.h = #0
    3d64:	d0 e9 7c 71 	717ce9d0     r28.l = #27088
    3d68:	00 c0 bc 50 	50bcc000     callr r28
    3d6c:	01 c0 3b 72 	723bc001     r27.h = #1
    3d70:	08 d0 3b 71 	713bd008     r27.l = #4104
    3d74:	9b ff fb bf 	bffbff9b     r27 = add (r27, #-4)
    3d78:	00 c0 9b 91 	919bc000     r0 = memw (r27 + #0)
    3d7c:	06 c0 00 10 	1000c006     p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 3d88 <_init+0x48>
    3d80:	00 c0 a0 50 	50a0c000     callr r0
    3d84:	f8 ff ff 59 	59fffff8     jump 3d74 <_init+0x34>
    3d88:	1b 40 9d 91 	919d401b     { r27 = memw (r29 + #0)
    3d8c:	1e c0 1e 90 	901ec01e       deallocframe }
    3d90:	00 c0 9f 52 	529fc000     jumpr r31

Disassembly of section .text:

00004000 <.EventVectors>:
    4000:	90 e4 ff 59 	59ffe490     jump 920 <event_handle_reset>
    4004:	fa e4 ff 59 	59ffe4fa     jump 9f8 <event_handle_nmi>
    4008:	fe e4 ff 59 	59ffe4fe     jump a04 <event_handle_error>
    400c:	02 e5 ff 59 	59ffe502     jump a10 <event_handle_rsvd>
    4010:	18 e5 ff 59 	59ffe518     jump a40 <event_handle_tlbmissx>
    4014:	fe e4 ff 59 	59ffe4fe     jump a10 <event_handle_rsvd>
    4018:	94 e5 ff 59 	59ffe594     jump b40 <event_handle_tlbmissrw>
    401c:	fa e4 ff 59 	59ffe4fa     jump a10 <event_handle_rsvd>
    4020:	10 e6 ff 59 	59ffe610     jump c40 <event_handle_trap0>
    4024:	ce e6 ff 59 	59ffe6ce     jump dc0 <event_handle_trap1>
    4028:	f4 e4 ff 59 	59ffe4f4     jump a10 <event_handle_rsvd>
    402c:	f2 e4 ff 59 	59ffe4f2     jump a10 <event_handle_rsvd>
    4030:	f0 e4 ff 59 	59ffe4f0     jump a10 <event_handle_rsvd>
    4034:	ee e4 ff 59 	59ffe4ee     jump a10 <event_handle_rsvd>
    4038:	ec e4 ff 59 	59ffe4ec     jump a10 <event_handle_rsvd>
    403c:	ea e4 ff 59 	59ffe4ea     jump a10 <event_handle_rsvd>
    4040:	c6 e6 ff 59 	59ffe6c6     jump dcc <event_handle_int>
    4044:	c4 e6 ff 59 	59ffe6c4     jump dcc <event_handle_int>
    4048:	c2 e6 ff 59 	59ffe6c2     jump dcc <event_handle_int>
    404c:	c0 e6 ff 59 	59ffe6c0     jump dcc <event_handle_int>
    4050:	be e6 ff 59 	59ffe6be     jump dcc <event_handle_int>
    4054:	bc e6 ff 59 	59ffe6bc     jump dcc <event_handle_int>
    4058:	ba e6 ff 59 	59ffe6ba     jump dcc <event_handle_int>
    405c:	b8 e6 ff 59 	59ffe6b8     jump dcc <event_handle_int>
    4060:	b6 e6 ff 59 	59ffe6b6     jump dcc <event_handle_int>
    4064:	b4 e6 ff 59 	59ffe6b4     jump dcc <event_handle_int>
    4068:	b2 e6 ff 59 	59ffe6b2     jump dcc <event_handle_int>
    406c:	b0 e6 ff 59 	59ffe6b0     jump dcc <event_handle_int>
    4070:	ae e6 ff 59 	59ffe6ae     jump dcc <event_handle_int>
    4074:	ac e6 ff 59 	59ffe6ac     jump dcc <event_handle_int>
    4078:	aa e6 ff 59 	59ffe6aa     jump dcc <event_handle_int>
    407c:	a8 e6 ff 59 	59ffe6a8     jump dcc <event_handle_int>
    4080:	a6 e6 ff 59 	59ffe6a6     jump dcc <event_handle_int>
    4084:	a4 e6 ff 59 	59ffe6a4     jump dcc <event_handle_int>
    4088:	a2 e6 ff 59 	59ffe6a2     jump dcc <event_handle_int>
    408c:	a0 e6 ff 59 	59ffe6a0     jump dcc <event_handle_int>
    4090:	9e e6 ff 59 	59ffe69e     jump dcc <event_handle_int>
    4094:	9c e6 ff 59 	59ffe69c     jump dcc <event_handle_int>
    4098:	9a e6 ff 59 	59ffe69a     jump dcc <event_handle_int>
    409c:	98 e6 ff 59 	59ffe698     jump dcc <event_handle_int>
    40a0:	96 e6 ff 59 	59ffe696     jump dcc <event_handle_int>
    40a4:	94 e6 ff 59 	59ffe694     jump dcc <event_handle_int>
    40a8:	92 e6 ff 59 	59ffe692     jump dcc <event_handle_int>
    40ac:	90 e6 ff 59 	59ffe690     jump dcc <event_handle_int>
    40b0:	8e e6 ff 59 	59ffe68e     jump dcc <event_handle_int>
    40b4:	8c e6 ff 59 	59ffe68c     jump dcc <event_handle_int>
    40b8:	8a e6 ff 59 	59ffe68a     jump dcc <event_handle_int>
    40bc:	88 e6 ff 59 	59ffe688     jump dcc <event_handle_int>

000040c0 <b_exp>:
    40c0:	10 60 00 73 	73006010     { r17:16 = combine (r0, #0)
    40c4:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    40c8:	f2 7b 02 78 	78027bf2     { r18 = #1503
    40cc:	00 d2 dd a1 	a1ddd200       memd (r29 + #0) = r19:18 }
    40d0:	30 40 10 b0 	b0104030     { r16 = add (r16, #1)
    40d4:	a0 48 00 5a 	5a0048a0       call 5210 <exp>
    40d8:	00 c0 d1 91 	91d1c000       r1:0 = memd (r17 + #0) }
    40dc:	fa 6a 78 14 	14786afa     { p0 = cmp.eq (r16, r18) ; if (!p0.new) jump:t 40d0 <b_exp+0x10>
    40e0:	08 c0 d1 ab 	abd1c008       memd (r17 ++ #8) = r1:0 }
    40e4:	0c 1e 05 3e 	3e051e0c     r19:18 = memd (sp + #0) ; r17:16 = memd (sp + #8)
    40e8:	1e c0 1e 96 	961ec01e     dealloc_return
    40ec:	00 c0 00 7f 	7f00c000     nop

000040f0 <gaussmixp>:
    40f0:	b5 75 ff 0f 	0fff75b5     { immext (#4294798656)
    40f4:	1c 46 00 78 	7800461c       r28 = ##-168592
    40f8:	ff c7 9d a0 	a09dc7ff       allocframe (#16376) }
    40fc:	1d 5c 1d f3 	f31d5c1d     { r29 = add (r29, r28)
    4100:	62 d3 01 5a 	5a01d362       call e7c0 <__save_r16_through_r27> }
    4104:	14 42 03 f5 	f5034214     { r21:20 = combine (r3, r2)
    4108:	4e 44 00 5a 	5a00444e       call 49a0 <voicebox>
    410c:	18 40 01 f5 	f5014018       r25:24 = combine (r1, r0)
    4110:	03 c4 9d a1 	a19dc403       memw (r29 + #12) = r4 }
    4114:	39 4b 00 00 	00004b39     { immext (#183872)
    4118:	17 45 1d b0 	b01d4517       r23 = add (r29, ##183912)
    411c:	02 67 02 78 	78026702       r2 = #1336
    4120:	01 c0 00 78 	7800c001       r1 = #0 }
    4124:	0e 52 00 5a 	5a00520e     { call 6540 <memset>
    4128:	60 c0 9d 91 	919dc060       r0 = memw (r29 + #12) }
    412c:	2c 4b 00 00 	00004b2c     { immext (#183040)
    4130:	13 41 1d b0 	b01d4113       r19 = add (r29, ##183048)
    4134:	00 d4 17 f5 	f517d400       r1:0 = combine (r23, r20) }
    4138:	48 4b 00 00 	00004b48     { immext (#184832)
    413c:	1a 42 1d b0 	b01d421a       r26 = add (r29, ##184848)
    4140:	cc c2 00 5a 	5a00c2cc       call 46d0 <power> }
    4144:	12 40 7a 70 	707a4012     { r18 = r26
    4148:	11 40 7a 70 	707a4011       r17 = r26
    414c:	02 6c 01 78 	78016c02       r2 = #864
    4150:	01 c0 74 70 	7074c001       r1 = r20 }
    4154:	00 40 73 70 	70734000     { r0 = r19
    4158:	7e d0 00 5a 	5a00d07e       call 6250 <memcpy> }
    415c:	47 4b 00 00 	00004b47     { immext (#184768)
    4160:	10 41 1d b0 	b01d4110       r16 = add (r29, ##184776)
    4164:	ea 41 00 5a 	5a0041ea       call 4530 <c_log>
    4168:	00 c0 73 70 	7073c000       r0 = r19 }
    416c:	00 53 1a f5 	f51a5300     { r1:0 = combine (r26, r19)
    4170:	f2 c3 00 5a 	5a00c3f2       call 4950 <sum> }
    4174:	01 40 75 70 	70754001     { r1 = r21
    4178:	02 49 00 78 	78004902       r2 = #72
    417c:	47 4b 00 00 	00004b47       immext (#184768)
    4180:	00 c1 1d b0 	b01dc100       r0 = add (r29, ##184776) }
    4184:	76 d3 01 5a 	5a01d376     call e870 <__hexagon_memcpy_likely_aligned_min32bytes_mult8bytes>
    4188:	47 4b 00 00 	00004b47     { immext (#184768)
    418c:	00 41 1d b0 	b01d4100       r0 = add (r29, ##184776)
    4190:	ec c1 00 5a 	5a00c1ec       call 4560 <b_log> }
    4194:	26 57 01 5a 	5a015726     { call efe0 <__hexagon_muldf3>
    4198:	62 44 c0 49 	49c04462       r3:2 = memd (gp + #280)
    419c:	20 c0 d1 9b 	9bd1c020       r1:0 = memd (r17 ++ #8) }
    41a0:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    41a4:	90 54 01 5a 	5a015490       call eac0 <__hexagon_adddf3>
    41a8:	00 c0 d0 91 	91d0c000       r1:0 = memd (r16 + #0) }
    41ac:	00 40 00 7f 	7f004000     { nop
    41b0:	08 c0 d0 ab 	abd0c008       memd (r16 ++ #8) = r1:0 }
    41b4:	00 50 1a f2 	f21a5000     { p0 = cmp.eq (r26, r16)
    41b8:	f0 78 ff 5c 	5cff78f0       if !p0.new jump:t 4194 <gaussmixp+0xa4>
    41bc:	17 4b 00 00 	00004b17       immext (#181696)
    41c0:	00 c2 1d b0 	b01dc200       r0 = add (r29, ##181712) }
    41c4:	10 40 00 78 	78004010     { r16 = #0
    41c8:	11 40 60 70 	70604011       r17 = r0
    41cc:	20 08 10 e8 	e8100820       memw (sp + #4) = r0 ; memw (sp + #8) = r0 }
    41d0:	40 40 90 84 	84904040     { r1:0 = convert_w2df (r16)
    41d4:	78 54 01 5a 	5a015478       call eac0 <__hexagon_adddf3>
    41d8:	30 40 10 b0 	b0104030       r16 = add (r16, #1)
    41dc:	82 c4 c0 49 	49c0c482       r3:2 = memd (gp + #288) }
    41e0:	e0 54 10 75 	751054e0     { p0 = cmp.eq (r16, #167)
    41e4:	f8 78 ff 5c 	5cff78f8       if !p0.new jump:t 41d0 <gaussmixp+0xe0>
    41e8:	10 60 00 7e 	7e006010       if (p0.new) r16 = #0
    41ec:	08 c0 d1 ab 	abd1c008       memd (r17 ++ #8) = r1:0 }
    41f0:	46 4a 00 00 	00004a46     { immext (#168320)
    41f4:	13 44 1d b0 	b01d4413       r19 = add (r29, ##168352)
    41f8:	17 4b 00 00 	00004b17       immext (#181696)
    41fc:	00 c2 1d b0 	b01dc200       r0 = add (r29, ##181712) }
    4200:	01 40 73 70 	70734001     { r1 = r19
    4204:	b8 42 00 5a 	5a0042b8       call 4770 <repmat>
    4208:	00 40 00 7f 	7f004000       nop
    420c:	00 c0 00 7f 	7f00c000       nop }
    4210:	40 40 90 84 	84904040     { r1:0 = convert_w2df (r16)
    4214:	58 54 01 5a 	5a015458       call eac0 <__hexagon_adddf3>
    4218:	30 40 10 b0 	b0104030       r16 = add (r16, #1)
    421c:	82 c4 c0 49 	49c0c482       r3:2 = memd (gp + #288) }
    4220:	00 40 7a 70 	707a4000     { r0 = r26
    4224:	f8 69 78 10 	107869f8       p0 = cmp.eq (r16, #9) ; if (!p0.new) jump:t 4210 <gaussmixp+0x120>
    4228:	00 40 00 7f 	7f004000       nop
    422c:	08 c0 d2 ab 	abd2c008       memd (r18 ++ #8) = r1:0 }
    4230:	8a 49 00 00 	0000498a     { immext (#156288)
    4234:	1b 45 1d b0 	b01d451b       r27 = add (r29, ##156328)
    4238:	14 40 00 7c 	7c004014       r21:20 = combine (#0, #0)
    423c:	00 c0 00 7f 	7f00c000       nop }
    4240:	01 40 7b 70 	707b4001     { r1 = r27
    4244:	80 42 00 5a 	5a004280       call 4740 <b_repmat>
    4248:	02 4b 00 00 	00004b02       immext (#180352)
    424c:	16 c3 1d b0 	b01dc316       r22 = add (r29, ##180376) }
    4250:	04 49 00 78 	78004904     { r4 = #72
    4254:	10 40 73 70 	70734010       r16 = r19
    4258:	11 c0 7b 70 	707bc011       r17 = r27 }
    425c:	6c 44 00 00 	0000446c     { immext (#72448)
    4260:	12 c4 14 d7 	d714c412       r18 = add (##72448, mpyi (r20, r4)) }
    4264:	20 40 d0 9b 	9bd04020     { r1:0 = memd (r16 ++ #8)
    4268:	22 c0 d1 9b 	9bd1c022       r3:2 = memd (r17 ++ #8) }
    426c:	20 40 e0 88 	88e04020     { r0 = convert_df2w (r1:0):chop
    4270:	22 c0 e2 88 	88e2c022       r2 = convert_df2w (r3:2):chop }
    4274:	e0 60 74 db 	db7460e0     { r0 = add (r20, add (r0, #-1))
    4278:	e2 e2 75 db 	db75e2e2       r2 = add (r21, add (r2, #-1)) }
    427c:	74 54 01 5a 	5a015474     { call eb64 <__hexagon_subdf3>
    4280:	80 60 d8 3a 	3ad86080       r1:0 = memd (r24 + r0 << #3)
    4284:	82 e2 d9 3a 	3ad9e282       r3:2 = memd (r25 + r2 << #3) }
    4288:	35 61 15 74 	74156135     { if (p0.new) r21 = add (r21, #9)
    428c:	ee 68 7e 14 	147e68ee       p0 = cmp.eq (r22, r16) ; if (!p0.new) jump:t 4264 <gaussmixp+0x174>
    4290:	08 c0 d2 ab 	abd2c008       memd (r18 ++ #8) = r1:0 }
    4294:	f4 d4 14 b0 	b014d4f4     r20 = add (r20, #167)
    4298:	1f 40 00 00 	0000401f     { immext (#1984)
    429c:	80 42 14 75 	75144280       p0 = cmp.eq (r20, ##2004)
    42a0:	dc 78 ff 5c 	5cff78dc       if !p0.new jump:t 4250 <gaussmixp+0x160>
    42a4:	19 e2 1d 74 	741de219       if (p0.new) r25 = add (r29, #16) }
    42a8:	14 60 7f 7c 	7c7f6014     { r21:20 = combine (#0, #-1)
    42ac:	98 4e 43 78 	78434e98       r24 = #18036
    42b0:	6c 44 00 00 	0000446c       immext (#72448)
    42b4:	00 e0 19 73 	7319e000       r1:0 = combine (r25, ##72448) }
    42b8:	2c 42 00 5a 	5a00422c     { call 4710 <b_power>
    42bc:	00 c0 00 7f 	7f00c000       nop }
    42c0:	51 43 15 8c 	8c154351     { r17 = asl (r21, #3)
    42c4:	6c 44 00 00 	0000446c       immext (#72448)
    42c8:	12 40 00 78 	78004012       r18 = ##72448
    42cc:	10 c0 7b 70 	707bc010       r16 = r27 }
    42d0:	12 51 12 f3 	f3125112     { r18 = add (r18, r17)
    42d4:	11 d1 19 f3 	f319d111       r17 = add (r25, r17) }
    42d8:	20 40 d0 9b 	9bd04020     { r1:0 = memd (r16 ++ #8)
    42dc:	62 c4 c0 49 	49c0c462       r3:2 = memd (gp + #280) }
    42e0:	20 c0 e0 88 	88e0c020     r0 = convert_df2w (r1:0):chop
    42e4:	00 d4 00 f3 	f300d400     r0 = add (r0, r20)
    42e8:	7c 56 01 5a 	5a01567c     { call efe0 <__hexagon_muldf3>
    42ec:	80 e0 d7 3a 	3ad7e080       r1:0 = memd (r23 + r0 << #3) }
    42f0:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    42f4:	78 56 01 5a 	5a015678       call efe0 <__hexagon_muldf3>
    42f8:	20 c0 d1 9b 	9bd1c020       r1:0 = memd (r17 ++ #8) }
    42fc:	34 61 14 74 	74146134     { if (p0.new) r20 = add (r20, #9)
    4300:	ee 68 7b 14 	147b68ee       p0 = cmp.eq (r19, r16) ; if (!p0.new) jump:t 42d8 <gaussmixp+0x1e8>
    4304:	08 c0 d2 ab 	abd2c008       memd (r18 ++ #8) = r1:0 }
    4308:	f5 7b 55 b0 	b0557bf5     { r21 = add (r21, #1503)
    430c:	dc d8 73 20 	2073d8dc       if (!cmp.eq (r21.new, r24)) jump:nt 42c0 <gaussmixp+0x1d0> }
    4310:	ce 48 00 00 	000048ce     { immext (#144256)
    4314:	10 46 1d b0 	b01d4610       r16 = add (r29, ##144304)
    4318:	17 40 00 00 	00004017       immext (#1472)
    431c:	f4 c3 00 7c 	7c00c3f4       r21:20 = combine (##1503, #0) }
    4320:	6c 44 00 00 	0000446c     { immext (#72448)
    4324:	00 60 10 73 	73106000       r1:0 = combine (r16, ##72448)
    4328:	c8 42 00 5a 	5a0042c8       call 48b0 <b_sum>
    432c:	00 c0 00 7f 	7f00c000       nop }
    4330:	00 53 10 f5 	f5105300     { r1:0 = combine (r16, r19)
    4334:	90 4f 00 5a 	5a004f90       call 6250 <memcpy>
    4338:	02 5f 17 78 	78175f02       r2 = #12024
    433c:	00 c0 00 7f 	7f00c000       nop }
    4340:	51 43 14 8c 	8c144351     { r17 = asl (r20, #3)
    4344:	47 4b 00 00 	00004b47       immext (#184768)
    4348:	10 c1 1d b0 	b01dc110       r16 = add (r29, ##184776) }
    434c:	12 51 1b f3 	f31b5112     { r18 = add (r27, r17)
    4350:	11 d1 13 f3 	f313d111       r17 = add (r19, r17) }
    4354:	b6 53 01 5a 	5a0153b6     { call eac0 <__hexagon_adddf3>
    4358:	22 40 d0 9b 	9bd04022       r3:2 = memd (r16 ++ #8)
    435c:	20 c0 d1 9b 	9bd1c020       r1:0 = memd (r17 ++ #8) }
    4360:	00 50 1a f2 	f21a5000     { p0 = cmp.eq (r26, r16)
    4364:	fa 78 ff 5c 	5cff78fa       if !p0.new jump:t 4354 <gaussmixp+0x264>
    4368:	34 61 14 74 	74146134       if (p0.new) r20 = add (r20, #9)
    436c:	08 c0 d2 ab 	abd2c008       memd (r18 ++ #8) = r1:0 }
    4370:	12 49 1b b0 	b01b4912     { r18 = add (r27, #72)
    4374:	e8 4d 7c 14 	147c4de8       p0 = cmp.eq (r20, r21) ; if (!p0.new) jump:nt 4340 <gaussmixp+0x250>
    4378:	18 ff 04 7c 	7c04ff18       r25:24 = combine (#-8, #9) }
    437c:	17 4b 00 00 	00004b17     { immext (#181696)
    4380:	1a c2 1d b0 	b01dc21a       r26 = add (r29, ##181712) }
    4384:	39 41 19 b0 	b0194139     { r25 = add (r25, #9)
    4388:	f0 fe d2 97 	97d2fef0       r17:16 = memd (r18 + #-72) }
    438c:	00 50 11 f5 	f5115000     { r1:0 = combine (r17, r16)
    4390:	62 c2 00 5a 	5a00c262       call 4850 <rtIsNaN> }
    4394:	75 5b 19 c4 	c4195b75     { r21 = addasl (r27, r25, #3)
    4398:	1c 40 00 10 	1000401c       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 43cc <gaussmixp+0x2dc>
    439c:	17 e0 19 74 	7419e017       if (p0.new) r23 = add (r25, #0) }
    43a0:	14 40 79 70 	70794014     { r20 = r25
    43a4:	00 40 00 7f 	7f004000       nop
    43a8:	00 40 00 7f 	7f004000       nop
    43ac:	00 c0 00 7f 	7f00c000       nop }
    43b0:	37 40 14 b0 	b0144037     { r23 = add (r20, #1)
    43b4:	50 42 00 5a 	5a004250       call 4850 <rtIsNaN>
    43b8:	15 41 15 b0 	b0154115       r21 = add (r21, #8)
    43bc:	00 c0 d5 91 	91d5c000       r1:0 = memd (r21 + #0) }
    43c0:	14 60 97 74 	74976014     { if !p0.new r20 = add (r23, #0)
    43c4:	76 40 40 10 	10404076       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 44ac <gaussmixp+0x3bc>
    43c8:	90 f4 db 32 	32dbf490       if (p0.new) r17:16 = memd (r27 + r20 << #3) }
    43cc:	00 57 58 f2 	f2585700     { p0 = cmp.gt (r24, r23)
    43d0:	12 c8 20 5c 	5c20c812       if !p0.new jump:nt 43f0 <gaussmixp+0x300> }
    43d4:	77 db 17 c4 	c417db77     r23 = addasl (r27, r23, #3)
    43d8:	17 41 17 b0 	b0174117     { r23 = add (r23, #8)
    43dc:	00 c0 d7 91 	91d7c000       r1:0 = memd (r23 + #0) }
    43e0:	21 50 e0 d2 	d2e05021     { p1 = dfcmp.gt (r1:0, r17:16)
    43e4:	00 d2 17 f2 	f217d200       p0 = cmp.eq (r23, r18) }
    43e8:	30 40 01 fd 	fd014030     { if (p1) r17:16 = combine (r1, r0)
    43ec:	f8 e0 ff 5c 	5cffe0f8       if !p0 jump 43d8 <gaussmixp+0x2e8> }
    43f0:	17 40 00 00 	00004017     { immext (#1472)
    43f4:	e0 42 19 75 	751942e0       p0 = cmp.eq (r25, ##1495)
    43f8:	38 41 18 b0 	b0184138       r24 = add (r24, #9)
    43fc:	08 d0 da ab 	abdad008       memd (r26 ++ #8) = r17:16 }
    4400:	12 49 12 b0 	b0124912     { r18 = add (r18, #72)
    4404:	c2 60 ff 5c 	5cff60c2       if !p0 jump 4384 <gaussmixp+0x294>
    4408:	00 40 00 7f 	7f004000       nop
    440c:	00 c0 00 7f 	7f00c000       nop }
    4410:	17 4b 00 00 	00004b17     { immext (#181696)
    4414:	18 42 1d b0 	b01d4218       r24 = add (r29, ##181712)
    4418:	17 40 00 78 	78004017       r23 = #0
    441c:	f9 fb 02 78 	7802fbf9       r25 = #1503 }
    4420:	51 43 17 8c 	8c174351     { r17 = asl (r23, #3)
    4424:	10 40 00 78 	78004010       r16 = #0
    4428:	00 40 00 7f 	7f004000       nop
    442c:	14 c0 d8 91 	91d8c014       r21:20 = memd (r24 + #0) }
    4430:	12 51 13 f3 	f3135112     { r18 = add (r19, r17)
    4434:	11 51 1b f3 	f31b5111       r17 = add (r27, r17)
    4438:	00 40 00 7f 	7f004000       nop
    443c:	00 c0 00 7f 	7f00c000       nop }
    4440:	02 54 15 f5 	f5155402     { r3:2 = combine (r21, r20)
    4444:	92 53 01 5a 	5a015392       call eb64 <__hexagon_subdf3>
    4448:	30 40 10 b0 	b0104030       r16 = add (r16, #1)
    444c:	20 c0 d1 9b 	9bd1c020       r1:0 = memd (r17 ++ #8) }
    4450:	18 61 18 74 	74186118     { if (p0.new) r24 = add (r24, #8)
    4454:	f8 69 78 10 	107869f8       p0 = cmp.eq (r16, #9) ; if (!p0.new) jump:t 4440 <gaussmixp+0x350>
    4458:	08 c0 d2 ab 	abd2c008       memd (r18 ++ #8) = r1:0 }
    445c:	37 41 17 b0 	b0174137     { r23 = add (r23, #9)
    4460:	00 40 73 70 	70734000       r0 = r19
    4464:	e2 d9 75 20 	2075d9e2       if (!cmp.eq (r23.new, r25)) jump:nt 4420 <gaussmixp+0x330> }
    4468:	2c 7e ff 5b 	5bff7e2c     { call 40c0 <b_exp>
    446c:	39 3c e8 50 	50e83c39       r16 = r22 ; r17 = memw (sp + #12) }
    4470:	00 53 16 f5 	f5165300     { r1:0 = combine (r22, r19)
    4474:	48 c2 00 5a 	5a00c248       call 4900 <c_sum> }
    4478:	00 40 76 70 	70764000     { r0 = r22
    447c:	44 c0 00 5a 	5a00c044       call 4500 <d_log> }
    4480:	44 40 9d 91 	919d4044     { r4 = memw (r29 + #8)
    4484:	20 c0 d0 9b 	9bd0c020       r1:0 = memd (r16 ++ #8) }
    4488:	22 c0 c4 9b 	9bc4c022     r3:2 = memd (r4 ++ #8)
    448c:	1a 53 01 5a 	5a01531a     { call eac0 <__hexagon_adddf3>
    4490:	02 c4 9d a1 	a19dc402       memw (r29 + #8) = r4 }
    4494:	68 53 01 5a 	5a015368     { call eb64 <__hexagon_subdf3>
    4498:	a2 c4 c0 49 	49c0c4a2       r3:2 = memd (gp + #296) }
    449c:	22 40 9d 91 	919d4022     { r2 = memw (r29 + #4)
    44a0:	08 c0 d1 ab 	abd1c008       memd (r17 ++ #8) = r1:0 }
    44a4:	ee c8 72 14 	1472c8ee     p0 = cmp.eq (r2, r16) ; if (!p0.new) jump:nt 4480 <gaussmixp+0x390>
    44a8:	cc d1 01 58 	5801d1cc     jump e840 <__restore_r16_through_r27_and_deallocframe>
    44ac:	00 58 17 f2 	f2175800     { p0 = cmp.eq (r23, r24)
    44b0:	82 78 ff 5c 	5cff7882       if !p0.new jump:t 43b0 <gaussmixp+0x2c0>
    44b4:	38 61 18 74 	74186138       if (p0.new) r24 = add (r24, #9)
    44b8:	88 f0 da ab 	abdaf088       if (p0.new) memd (r26 ++ #8) = r17:16 }
    44bc:	17 40 00 00 	00004017     { immext (#1472)
    44c0:	e0 42 19 75 	751942e0       p0 = cmp.eq (r25, ##1495)
    44c4:	64 78 ff 5c 	5cff7864       if !p0.new jump:t 4384 <gaussmixp+0x294>
    44c8:	12 c9 12 b0 	b012c912       r18 = add (r18, #72) }
    44cc:	a2 ff ff 59 	59ffffa2     jump 4410 <gaussmixp+0x320>

000044d0 <gaussmixp_initialize>:
    44d0:	d0 41 00 5a 	5a0041d0     { call 4870 <rt_InitInfAndNaN>
    44d4:	00 3c 80 68 	68803c00       r0 = #8 ; allocframe (#0) }
    44d8:	00 40 00 78 	78004000     { r0 = #0
    44dc:	19 c2 a0 48 	48a0c219       memb (gp + #25) = r0.new }
    44e0:	1e c0 1e 96 	961ec01e     dealloc_return
    44e4:	00 c0 00 7f 	7f00c000     nop
    44e8:	00 c0 00 7f 	7f00c000     nop
    44ec:	00 c0 00 7f 	7f00c000     nop

000044f0 <gaussmixp_terminate>:
    44f0:	00 c0 9f 52 	529fc000     jumpr r31
    44f4:	00 c0 00 7f 	7f00c000     nop
    44f8:	00 c0 00 7f 	7f00c000     nop
    44fc:	00 c0 00 7f 	7f00c000     nop

00004500 <d_log>:
    4500:	10 60 00 73 	73006010     { r17:16 = combine (r0, #0)
    4504:	00 40 00 7f 	7f004000       nop
    4508:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    450c:	00 c0 00 7f 	7f00c000     nop
    4510:	02 40 00 78 	78004002     { r2 = #0
    4514:	f8 57 00 5a 	5a0057f8       call 7500 <_Log>
    4518:	30 40 10 b0 	b0104030       r16 = add (r16, #1)
    451c:	00 c0 d1 91 	91d1c000       r1:0 = memd (r17 + #0) }
    4520:	e0 54 10 75 	751054e0     { p0 = cmp.eq (r16, #167)
    4524:	f8 78 ff 5c 	5cff78f8       if !p0.new jump:t 4510 <d_log+0x10>
    4528:	08 c0 d1 ab 	abd1c008       memd (r17 ++ #8) = r1:0 }
    452c:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return

00004530 <c_log>:
    4530:	10 60 00 73 	73006010     { r17:16 = combine (r0, #0)
    4534:	00 40 00 7f 	7f004000       nop
    4538:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    453c:	00 c0 00 7f 	7f00c000     nop
    4540:	02 40 00 78 	78004002     { r2 = #0
    4544:	e0 57 00 5a 	5a0057e0       call 7500 <_Log>
    4548:	30 40 10 b0 	b0104030       r16 = add (r16, #1)
    454c:	00 c0 d1 91 	91d1c000       r1:0 = memd (r17 + #0) }
    4550:	80 4d 10 75 	75104d80     { p0 = cmp.eq (r16, #108)
    4554:	f8 78 ff 5c 	5cff78f8       if !p0.new jump:t 4540 <c_log+0x10>
    4558:	08 c0 d1 ab 	abd1c008       memd (r17 ++ #8) = r1:0 }
    455c:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return

00004560 <b_log>:
    4560:	10 60 00 73 	73006010     { r17:16 = combine (r0, #0)
    4564:	00 40 00 7f 	7f004000       nop
    4568:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    456c:	00 c0 00 7f 	7f00c000     nop
    4570:	02 40 00 78 	78004002     { r2 = #0
    4574:	c8 57 00 5a 	5a0057c8       call 7500 <_Log>
    4578:	30 40 10 b0 	b0104030       r16 = add (r16, #1)
    457c:	00 c0 d1 91 	91d1c000       r1:0 = memd (r17 + #0) }
    4580:	f8 69 78 10 	107869f8     { p0 = cmp.eq (r16, #9) ; if (!p0.new) jump:t 4570 <b_log+0x10>
    4584:	08 c0 d1 ab 	abd1c008       memd (r17 ++ #8) = r1:0 }
    4588:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return
    458c:	00 c0 00 7f 	7f00c000     nop

00004590 <rt_powd_snf>:
    4590:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    4594:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    4598:	12 42 03 f5 	f5034212     { r19:18 = combine (r3, r2)
    459c:	5c 41 00 5a 	5a00415c       call 4850 <rtIsNaN>
    45a0:	00 d2 dd a1 	a1ddd200       memd (r29 + #0) = r19:18 }
    45a4:	00 52 13 f5 	f5135200     { r1:0 = combine (r19, r18)
    45a8:	0a c0 00 10 	1000c00a       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 45b8 <rt_powd_snf+0x28> }
    45ac:	20 c4 c0 49 	49c0c420     r1:0 = memd (gp + #264)
    45b0:	0c 1e 05 3e 	3e051e0c     r19:18 = memd (sp + #0) ; r17:16 = memd (sp + #8)
    45b4:	1e c0 1e 96 	961ec01e     dealloc_return
    45b8:	4c c1 00 5a 	5a00c14c     call 4850 <rtIsNaN>
    45bc:	f8 60 70 10 	107060f8     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:t 45ac <rt_powd_snf+0x1c>
    45c0:	2a 41 00 5a 	5a00412a       call 4810 <rtIsInf>
    45c4:	00 d2 13 f5 	f513d200       r1:0 = combine (r19, r18) }
    45c8:	00 40 70 70 	70704000     { r0 = r16
    45cc:	1a 40 00 10 	1000401a       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 45fc <rt_powd_snf+0x6c>
    45d0:	82 c4 c0 49 	49c0c482       r3:2 = memd (gp + #288) }
    45d4:	21 df d1 8c 	8cd1df21     r1 = clrbit (r17, #31)
    45d8:	00 c2 e0 d2 	d2e0c200     p0 = dfcmp.eq (r1:0, r3:2)
    45dc:	e8 e0 df 5c 	5cdfe0e8     if (p0) jump 45ac <rt_powd_snf+0x1c>
    45e0:	20 42 e0 d2 	d2e04220     { p0 = dfcmp.gt (r1:0, r3:2)
    45e4:	c0 c4 c0 49 	49c0c4c0       r1:0 = memd (gp + #304) }
    45e8:	5c c0 20 5c 	5c20c05c     if !p0 jump 46a0 <rt_powd_snf+0x110>
    45ec:	20 c0 f2 d2 	d2f2c020     p0 = dfcmp.gt (r19:18, r1:0)
    45f0:	e0 e0 ff 5c 	5cffe0e0     if !p0 jump 45b0 <rt_powd_snf+0x20>
    45f4:	de 7f ff 59 	59ff7fde     { jump 45b0 <rt_powd_snf+0x20>
    45f8:	00 c4 c0 49 	49c0c400       r1:0 = memd (gp + #256) }
    45fc:	c2 c4 c0 49 	49c0c4c2     r3:2 = memd (gp + #304)
    4600:	04 42 03 f5 	f5034204     { r5:4 = combine (r3, r2)
    4604:	23 5f d3 8c 	8cd35f23       r3 = clrbit (r19, #31)
    4608:	02 c0 72 70 	7072c002       r2 = r18 }
    460c:	00 44 e2 d2 	d2e24400     { p0 = dfcmp.eq (r3:2, r5:4)
    4610:	80 c4 c0 49 	49c0c480       r1:0 = memd (gp + #288) }
    4614:	12 c0 00 5c 	5c00c012     if (p0) jump 4638 <rt_powd_snf+0xa8>
    4618:	00 c0 e2 d2 	d2e2c000     p0 = dfcmp.eq (r3:2, r1:0)
    461c:	12 c0 20 5c 	5c20c012     if !p0 jump 4640 <rt_powd_snf+0xb0>
    4620:	20 c4 f2 d2 	d2f2c420     p0 = dfcmp.gt (r19:18, r5:4)
    4624:	c6 60 df 5c 	5cdf60c6     { if (p0) jump 45b0 <rt_powd_snf+0x20>
    4628:	8e 53 01 5a 	5a01538e       call ed40 <__hexagon_divdf3>
    462c:	00 50 11 fd 	fd115000       if (p0) r1:0 = combine (r17, r16)
    4630:	02 d0 11 f5 	f511d002       r3:2 = combine (r17, r16) }
    4634:	be ff ff 59 	59ffffbe     jump 45b0 <rt_powd_snf+0x20>
    4638:	bc 7f ff 59 	59ff7fbc     { jump 45b0 <rt_powd_snf+0x20>
    463c:	80 c4 c0 49 	49c0c480       r1:0 = memd (gp + #288) }
    4640:	e0 c4 c0 49 	49c0c4e0     r1:0 = memd (gp + #312)
    4644:	00 40 f2 d2 	d2f24000     { p0 = dfcmp.eq (r19:18, r1:0)
    4648:	02 50 11 f5 	f5115002       r3:2 = combine (r17, r16)
    464c:	00 c5 c0 49 	49c0c500       r1:0 = memd (gp + #320) }
    4650:	30 c0 00 5c 	5c00c030     if (p0) jump 46b0 <rt_powd_snf+0x120>
    4654:	00 c0 f2 d2 	d2f2c000     p0 = dfcmp.eq (r19:18, r1:0)
    4658:	0c c0 20 5c 	5c20c00c     if !p0 jump 4670 <rt_powd_snf+0xe0>
    465c:	40 44 f0 d2 	d2f04440     { p0 = dfcmp.ge (r17:16, r5:4)
    4660:	00 d0 11 f5 	f511d000       r1:0 = combine (r17, r16) }
    4664:	2c 40 00 5c 	5c00402c     { if (p0) jump 46bc <rt_powd_snf+0x12c>
    4668:	12 40 dd 41 	41dd4012       if (p0) r19:18 = memd (r29 + #0)
    466c:	30 c0 dd 41 	41ddc030       if (p0) r17:16 = memd (r29 + #8) }
    4670:	c0 c4 c0 49 	49c0c4c0     r1:0 = memd (gp + #304)
    4674:	20 50 e0 d2 	d2e05020     { p0 = dfcmp.gt (r1:0, r17:16)
    4678:	00 d2 13 f5 	f513d200       r1:0 = combine (r19, r18) }
    467c:	08 40 20 5c 	5c204008     { if !p0 jump 468c <rt_powd_snf+0xfc>
    4680:	7a c7 00 5a 	5a00c77a       call 5570 <floor> }
    4684:	20 c0 f2 d2 	d2f2c020     p0 = dfcmp.gt (r19:18, r1:0)
    4688:	92 e0 df 5c 	5cdfe092     if (p0) jump 45ac <rt_powd_snf+0x1c>
    468c:	00 50 11 f5 	f5115000     { r1:0 = combine (r17, r16)
    4690:	02 52 13 f5 	f5135202       r3:2 = combine (r19, r18)
    4694:	05 1e 0c 3e 	3e0c1e05       r17:16 = memd (sp + #8) ; r19:18 = memd (sp + #0) }
    4698:	64 4d 00 58 	58004d64     { jump 6160 <pow>
    469c:	1e c0 1e 90 	901ec01e       deallocframe }
    46a0:	c0 c4 c0 49 	49c0c4c0     r1:0 = memd (gp + #304)
    46a4:	20 c0 f2 d2 	d2f2c020     p0 = dfcmp.gt (r19:18, r1:0)
    46a8:	84 60 df 5c 	5cdf6084     { if (p0) jump 45b0 <rt_powd_snf+0x20>
    46ac:	a6 ff ff 59 	59ffffa6       jump 45f4 <rt_powd_snf+0x64> }
    46b0:	00 50 11 f5 	f5115000     { r1:0 = combine (r17, r16)
    46b4:	98 d4 01 5a 	5a01d498       call efe0 <__hexagon_muldf3> }
    46b8:	7c ff ff 59 	59ffff7c     jump 45b0 <rt_powd_snf+0x20>
    46bc:	9a 51 00 58 	5800519a     { jump 69f0 <sqrt>
    46c0:	1e c0 1e 90 	901ec01e       deallocframe }
    46c4:	00 40 00 7f 	7f004000     { nop
    46c8:	00 40 00 7f 	7f004000       nop
    46cc:	00 c0 00 7f 	7f00c000       nop }

000046d0 <power>:
    46d0:	10 60 01 73 	73016010     { r17:16 = combine (r1, #0)
    46d4:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    46d8:	00 40 00 7f 	7f004000     { nop
    46dc:	05 2a 0a 70 	700a2a05       r18 = r0 ; memd (sp + #0) = r19:18 }
    46e0:	30 40 10 b0 	b0104030     { r16 = add (r16, #1)
    46e4:	58 7f ff 5b 	5bff7f58       call 4590 <rt_powd_snf>
    46e8:	20 40 d2 9b 	9bd24020       r1:0 = memd (r18 ++ #8)
    46ec:	22 c5 c0 49 	49c0c522       r3:2 = memd (gp + #328) }
    46f0:	80 4d 10 75 	75104d80     { p0 = cmp.eq (r16, #108)
    46f4:	f8 78 ff 5c 	5cff78f8       if !p0.new jump:t 46e0 <power+0x10>
    46f8:	08 c0 d1 ab 	abd1c008       memd (r17 ++ #8) = r1:0 }
    46fc:	0c 1e 05 3e 	3e051e0c     r19:18 = memd (sp + #0) ; r17:16 = memd (sp + #8)
    4700:	1e c0 1e 96 	961ec01e     dealloc_return
    4704:	00 40 00 7f 	7f004000     { nop
    4708:	00 40 00 7f 	7f004000       nop
    470c:	00 c0 00 7f 	7f00c000       nop }

00004710 <b_power>:
    4710:	10 60 01 73 	73016010     { r17:16 = combine (r1, #0)
    4714:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    4718:	93 4e 43 78 	78434e93     { r19 = #18036
    471c:	05 2a 0a 70 	700a2a05       r18 = r0 ; memd (sp + #0) = r19:18 }
    4720:	30 40 10 b0 	b0104030     { r16 = add (r16, #1)
    4724:	38 7f ff 5b 	5bff7f38       call 4590 <rt_powd_snf>
    4728:	20 40 d2 9b 	9bd24020       r1:0 = memd (r18 ++ #8)
    472c:	e2 c4 c0 49 	49c0c4e2       r3:2 = memd (gp + #312) }
    4730:	f8 6b 78 14 	14786bf8     { p0 = cmp.eq (r16, r19) ; if (!p0.new) jump:t 4720 <b_power+0x10>
    4734:	08 c0 d1 ab 	abd1c008       memd (r17 ++ #8) = r1:0 }
    4738:	0c 1e 05 3e 	3e051e0c     r19:18 = memd (sp + #0) ; r17:16 = memd (sp + #8)
    473c:	1e c0 1e 96 	961ec01e     dealloc_return

00004740 <b_repmat>:
    4740:	17 40 00 00 	00004017     { immext (#1472)
    4744:	e4 c3 00 7c 	7c00c3e4       r5:4 = combine (##1503, #0) }
    4748:	51 40 00 69 	69004051     { loop0 (4750 <b_repmat+0x10>, #9)
    474c:	02 c1 00 f5 	f500c102       r3:2 = combine (r0, r1) }
    4750:	26 c0 c3 9b 	9bc3c026     r7:6 = memd (r3 ++ #8)
    4754:	00 80 00 7f 	7f008000     { nop
    4758:	08 c6 c2 ab 	abc2c608       memd (r2 ++ #8) = r7:6 }:endloop0
    475c:	01 49 01 b0 	b0014901     { r1 = add (r1, #72)
    4760:	24 41 04 b0 	b0044124       r4 = add (r4, #9)
    4764:	f6 c5 72 20 	2072c5f6       if (!cmp.eq (r4.new, r5)) jump:nt 4748 <b_repmat+0x8> }
    4768:	00 c0 9f 52 	529fc000     jumpr r31
    476c:	00 c0 00 7f 	7f00c000     nop

00004770 <repmat>:
    4770:	03 40 00 78 	78004003     { r3 = #0
    4774:	e4 fb 02 78 	7802fbe4       r4 = #1503 }
    4778:	51 40 00 69 	69004051     { loop0 (4780 <repmat+0x10>, #9)
    477c:	02 c0 61 70 	7061c002       r2 = r1 }
    4780:	06 c0 c0 91 	91c0c006     r7:6 = memd (r0 + #0)
    4784:	00 80 00 7f 	7f008000     { nop
    4788:	08 c6 c2 ab 	abc2c608       memd (r2 ++ #8) = r7:6 }:endloop0
    478c:	01 49 01 b0 	b0014901     { r1 = add (r1, #72)
    4790:	93 20 80 20 	20802093       r0 = add (r0, #8) ; r3 = add (r3, #9) }
    4794:	f2 c4 73 14 	1473c4f2     p0 = cmp.eq (r3, r4) ; if (!p0.new) jump:nt 4778 <repmat+0x8>
    4798:	00 c0 9f 52 	529fc000     jumpr r31
    479c:	00 c0 00 7f 	7f00c000     nop

000047a0 <rtGetInf>:
    47a0:	1d 7f fd bf 	bffd7f1d     { r29 = add (r29, #-8)
    47a4:	40 c5 c0 49 	49c0c540       r1:0 = memd (gp + #336) }
    47a8:	1d 41 1d b0 	b01d411d     { r29 = add (r29, #8)
    47ac:	00 c0 9f 52 	529fc000       jumpr r31 }

000047b0 <rtGetInfF>:
    47b0:	00 40 f8 07 	07f84000     { immext (#2139095040)
    47b4:	c0 3f 00 48 	48003fc0       r0 = ##2139095040 ; jumpr lr }
    47b8:	00 40 00 7f 	7f004000     { nop
    47bc:	00 c0 00 7f 	7f00c000       nop }

000047c0 <rtGetMinusInf>:
    47c0:	1d 7f fd bf 	bffd7f1d     { r29 = add (r29, #-8)
    47c4:	60 c5 c0 49 	49c0c560       r1:0 = memd (gp + #344) }
    47c8:	1d 41 1d b0 	b01d411d     { r29 = add (r29, #8)
    47cc:	00 c0 9f 52 	529fc000       jumpr r31 }

000047d0 <rtGetMinusInfF>:
    47d0:	00 40 f8 0f 	0ff84000     { immext (#4286578688)
    47d4:	c0 3f 00 48 	48003fc0       r0 = ##4286578688 ; jumpr lr }
    47d8:	00 c0 00 7f 	7f00c000     nop
    47dc:	00 c0 00 7f 	7f00c000     nop

000047e0 <rtGetNaN>:
    47e0:	1d 7f fd bf 	bffd7f1d     { r29 = add (r29, #-8)
    47e4:	80 c5 c0 49 	49c0c580       r1:0 = memd (gp + #352) }
    47e8:	1d 41 1d b0 	b01d411d     { r29 = add (r29, #8)
    47ec:	00 c0 9f 52 	529fc000       jumpr r31 }

000047f0 <rtGetNaNF>:
    47f0:	1d 7f fd bf 	bffd7f1d     { r29 = add (r29, #-8)
    47f4:	00 40 fc 0f 	0ffc4000       immext (#4290772992)
    47f8:	00 c0 00 78 	7800c000       r0 = ##-4194304 }
    47fc:	1d 41 1d b0 	b01d411d     { r29 = add (r29, #8)
    4800:	00 c0 9f 52 	529fc000       jumpr r31 }
    4804:	00 c0 00 7f 	7f00c000     nop
    4808:	00 c0 00 7f 	7f00c000     nop
    480c:	00 c0 00 7f 	7f00c000     nop

00004810 <rtIsInf>:
    4810:	02 c4 c0 49 	49c0c402     r3:2 = memd (gp + #256)
    4814:	00 c2 e0 d2 	d2e0c200     p0 = dfcmp.eq (r1:0, r3:2)
    4818:	20 40 00 7e 	7e004020     { if (p0) r0 = #1
    481c:	00 40 5f 53 	535f4000       if (p0) jumpr r31
    4820:	42 c4 c0 49 	49c0c442       r3:2 = memd (gp + #272) }
    4824:	00 c2 e0 d2 	d2e0c200     p0 = dfcmp.eq (r1:0, r3:2)
    4828:	20 40 00 7a 	7a004020     { r0 = mux (p0, #1, #0)
    482c:	00 c0 9f 52 	529fc000       jumpr r31 }

00004830 <rtIsInfF>:
    4830:	41 c5 80 49 	4980c541     r1 = memw (gp + #168)
    4834:	60 c1 e0 c7 	c7e0c160     p0 = sfcmp.eq (r0, r1)
    4838:	20 40 00 7e 	7e004020     { if (p0) r0 = #1
    483c:	00 40 5f 53 	535f4000       if (p0) jumpr r31
    4840:	61 c5 80 49 	4980c561       r1 = memw (gp + #172) }
    4844:	60 c1 e0 c7 	c7e0c160     p0 = sfcmp.eq (r0, r1)
    4848:	20 40 00 7a 	7a004020     { r0 = mux (p0, #1, #0)
    484c:	00 c0 9f 52 	529fc000       jumpr r31 }

00004850 <rtIsNaN>:
    4850:	00 c0 e0 d2 	d2e0c000     p0 = dfcmp.eq (r1:0, r1:0)
    4854:	00 60 00 7a 	7a006000     { r0 = mux (p0, #0, #1)
    4858:	00 c0 9f 52 	529fc000       jumpr r31 }
    485c:	00 c0 00 7f 	7f00c000     nop

00004860 <rtIsNaNF>:
    4860:	60 c0 e0 c7 	c7e0c060     p0 = sfcmp.eq (r0, r0)
    4864:	00 60 00 7a 	7a006000     { r0 = mux (p0, #0, #1)
    4868:	00 c0 9f 52 	529fc000       jumpr r31 }
    486c:	00 c0 00 7f 	7f00c000     nop

00004870 <rt_InitInfAndNaN>:
    4870:	b8 7f ff 5b 	5bff7fb8     { call 47e0 <rtGetNaN>
    4874:	00 c0 9d a0 	a09dc000       allocframe (#0) }
    4878:	bc 7f ff 5b 	5bff7fbc     { call 47f0 <rtGetNaNF>
    487c:	21 c0 c0 48 	48c0c021       memd (gp + #264) = r1:0 }
    4880:	90 7f ff 5b 	5bff7f90     { call 47a0 <rtGetInf>
    4884:	29 c0 80 48 	4880c029       memw (gp + #164) = r0 }
    4888:	94 7f ff 5b 	5bff7f94     { call 47b0 <rtGetInfF>
    488c:	20 c0 c0 48 	48c0c020       memd (gp + #256) = r1:0 }
    4890:	98 7f ff 5b 	5bff7f98     { call 47c0 <rtGetMinusInf>
    4894:	2a c0 80 48 	4880c02a       memw (gp + #168) = r0 }
    4898:	9c 7f ff 5b 	5bff7f9c     { call 47d0 <rtGetMinusInfF>
    489c:	22 c0 c0 48 	48c0c022       memd (gp + #272) = r1:0 }
    48a0:	2b c0 80 48 	4880c02b     memw (gp + #172) = r0
    48a4:	1e c0 1e 96 	961ec01e     dealloc_return
    48a8:	00 c0 00 7f 	7f00c000     nop
    48ac:	00 c0 00 7f 	7f00c000     nop

000048b0 <b_sum>:
    48b0:	9c 4f 01 5a 	5a014f9c     { call e7e8 <__save_r16_through_r21>
    48b4:	03 c0 9d a0 	a09dc003       allocframe (#24) }
    48b8:	14 40 61 70 	70614014     { r20 = r1
    48bc:	d5 7b 02 78 	78027bd5       r21 = #1502
    48c0:	0b 3a 0a 30 	300a3a0b       r18 = r0 ; r19 = #-1 }
    48c4:	11 5f f2 b2 	b2f25f11     { r17 = add (r18, #12024)
    48c8:	10 40 00 78 	78004010       r16 = #0
    48cc:	00 c0 d2 91 	91d2c000       r1:0 = memd (r18 + #0) }
    48d0:	30 40 10 b0 	b0104030     { r16 = add (r16, #1)
    48d4:	f8 50 01 5a 	5a0150f8       call eac0 <__hexagon_adddf3>
    48d8:	11 5f f1 b2 	b2f15f11       r17 = add (r17, #12024)
    48dc:	02 c0 d1 91 	91d1c002       r3:2 = memd (r17 + #0) }
    48e0:	12 61 12 74 	74126112     { if (p0.new) r18 = add (r18, #8)
    48e4:	f8 6b 78 10 	10786bf8       p0 = cmp.eq (r16, #11) ; if (!p0.new) jump:t 48d0 <b_sum+0x20>
    48e8:	88 e0 d4 ab 	abd4e088       if (p0.new) memd (r20 ++ #8) = r1:0 }
    48ec:	33 40 13 b0 	b0134033     { r19 = add (r19, #1)
    48f0:	ec d5 73 20 	2073d5ec       if (!cmp.eq (r19.new, r21)) jump:nt 48c4 <b_sum+0x14> }
    48f4:	ae cf 01 58 	5801cfae     jump e850 <__restore_r16_through_r21_and_deallocframe>
    48f8:	00 40 00 7f 	7f004000     { nop
    48fc:	00 c0 00 7f 	7f00c000       nop }

00004900 <c_sum>:
    4900:	74 4f 01 5a 	5a014f74     { call e7e8 <__save_r16_through_r21>
    4904:	03 c0 9d a0 	a09dc003       allocframe (#24) }
    4908:	12 41 00 b0 	b0004112     { r18 = add (r0, #8)
    490c:	d5 7b 02 78 	78027bd5       r21 = #1502
    4910:	0b 3a 1c 30 	301c3a0b       r20 = r1 ; r19 = #-1 }
    4914:	10 60 12 73 	73126010     { r17:16 = combine (r18, #0)
    4918:	00 40 00 7f 	7f004000       nop
    491c:	e0 ff d2 97 	97d2ffe0       r1:0 = memd (r18 + #-8) }
    4920:	30 40 10 b0 	b0104030     { r16 = add (r16, #1)
    4924:	d0 50 01 5a 	5a0150d0       call eac0 <__hexagon_adddf3>
    4928:	22 c0 d1 9b 	9bd1c022       r3:2 = memd (r17 ++ #8) }
    492c:	12 69 12 74 	74126912     { if (p0.new) r18 = add (r18, #72)
    4930:	fa 68 78 10 	107868fa       p0 = cmp.eq (r16, #8) ; if (!p0.new) jump:t 4920 <c_sum+0x20>
    4934:	88 e0 d4 ab 	abd4e088       if (p0.new) memd (r20 ++ #8) = r1:0 }
    4938:	33 41 13 b0 	b0134133     { r19 = add (r19, #9)
    493c:	ee d5 73 20 	2073d5ee       if (!cmp.eq (r19.new, r21)) jump:nt 4914 <c_sum+0x14> }
    4940:	88 cf 01 58 	5801cf88     jump e850 <__restore_r16_through_r21_and_deallocframe>
    4944:	00 40 00 7f 	7f004000     { nop
    4948:	00 40 00 7f 	7f004000       nop
    494c:	00 c0 00 7f 	7f00c000       nop }

00004950 <sum>:
    4950:	4c 4f 01 5a 	5a014f4c     { call e7e8 <__save_r16_through_r21>
    4954:	03 c0 9d a0 	a09dc003       allocframe (#24) }
    4958:	14 40 61 70 	70614014     { r20 = r1
    495c:	0b 3a 0a 30 	300a3a0b       r18 = r0 ; r19 = #-1 }
    4960:	11 49 12 b0 	b0124911     { r17 = add (r18, #72)
    4964:	10 40 00 78 	78004010       r16 = #0
    4968:	00 40 00 7f 	7f004000       nop
    496c:	00 c0 d2 91 	91d2c000       r1:0 = memd (r18 + #0) }
    4970:	30 40 10 b0 	b0104030     { r16 = add (r16, #1)
    4974:	a8 50 01 5a 	5a0150a8       call eac0 <__hexagon_adddf3>
    4978:	11 49 11 b0 	b0114911       r17 = add (r17, #72)
    497c:	02 c0 d1 91 	91d1c002       r3:2 = memd (r17 + #0) }
    4980:	12 61 12 74 	74126112     { if (p0.new) r18 = add (r18, #8)
    4984:	f8 6b 78 10 	10786bf8       p0 = cmp.eq (r16, #11) ; if (!p0.new) jump:t 4970 <sum+0x20>
    4988:	88 e0 d4 ab 	abd4e088       if (p0.new) memd (r20 ++ #8) = r1:0 }
    498c:	33 40 13 b0 	b0134033     { r19 = add (r19, #1)
    4990:	ea c8 73 24 	2473c8ea       if (!cmp.eq (r19.new, #8)) jump:nt 4960 <sum+0x10> }
    4994:	5e cf 01 58 	5801cf5e     jump e850 <__restore_r16_through_r21_and_deallocframe>
    4998:	00 c0 00 7f 	7f00c000     nop
    499c:	00 c0 00 7f 	7f00c000     nop

000049a0 <voicebox>:
    49a0:	20 c3 20 49 	4920c320     r0 = memub (gp + #25)
    49a4:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    49a8:	00 48 7f 53 	537f4800       if !p0.new jumpr:nt r31
    49ac:	3c 4d 00 00 	00004d3c       immext (#216832)
    49b0:	80 f8 c0 9f 	9fc0f880       if !p0.new r1:0 = memd (##216832) }
    49b4:	2b 41 00 69 	6900412b     { loop0 (49c8 <voicebox+0x28>, #7)
    49b8:	3a 4d 00 00 	00004d3a       immext (#216704)
    49bc:	03 c4 00 78 	7800c403       r3 = ##216736 }
    49c0:	00 4f 00 00 	00004f00     { immext (#245760)
    49c4:	00 e0 23 73 	7323e000       r1:0 = combine (##245760, r3) }
    49c8:	22 80 01 9b 	9b018022     { r2 = memb (r1 ++ #1)
    49cc:	08 c2 a0 ab 	aba0c208       memb (r0 ++ #1) = r2.new }:endloop0
    49d0:	82 42 00 69 	69004282     { loop0 (49f0 <voicebox+0x50>, #18)
    49d4:	00 44 00 00 	00004400       immext (#65536)
    49d8:	10 28 02 28 	28022810       r2 = ##65536 ; r0 = #1 }
    49dc:	00 44 00 00 	00004400     { immext (#65536)
    49e0:	01 43 00 78 	78004301       r1 = ##65560
    49e4:	19 c0 00 48 	4800c019       memb (gp + #25) = r0 }
    49e8:	3a 4d 00 00 	00004d3a     { immext (#216704)
    49ec:	e0 c4 00 78 	7800c4e0       r0 = ##216743 }
    49f0:	25 40 02 9b 	9b024025     { r5 = memb (r2 ++ #1)
    49f4:	24 c0 01 9b 	9b01c024       r4 = memb (r1 ++ #1) }
    49f8:	20 80 00 b0 	b0008020     { r0 = add (r0, #1)
    49fc:	00 45 00 a1 	a1004500       memb (r0 + #0) = r5
    4a00:	12 c4 00 a1 	a100c412       memb (r0 + #18) = r4 }:endloop0
    4a04:	00 44 00 00 	00004400     { immext (#65536)
    4a08:	01 46 00 78 	78004601       r1 = ##65584
    4a0c:	3b 4d 00 00 	00004d3b       immext (#216768)
    4a10:	60 c1 00 78 	7800c160       r0 = ##216779 }
    4a14:	6b c0 00 69 	6900c06b     loop0 (4a18 <voicebox+0x78>, #15)
    4a18:	22 80 01 9b 	9b018022     { r2 = memb (r1 ++ #1)
    4a1c:	08 c2 a0 ab 	aba0c208       memb (r0 ++ #1) = r2.new }:endloop0
    4a20:	01 44 00 00 	00004401     { immext (#65600)
    4a24:	01 40 00 78 	78004001       r1 = ##65600
    4a28:	3b 4d 00 00 	00004d3b       immext (#216768)
    4a2c:	40 c3 00 78 	7800c340       r0 = ##216794 }
    4a30:	e8 c0 00 69 	6900c0e8     loop0 (4a34 <voicebox+0x94>, #28)
    4a34:	22 80 01 9b 	9b018022     { r2 = memb (r1 ++ #1)
    4a38:	08 c2 a0 ab 	aba0c208       memb (r0 ++ #1) = r2.new }:endloop0
    4a3c:	a0 4c 00 78 	78004ca0     { r0 = #101
    4a40:	01 4f 00 78 	78004f01       r1 = #120
    4a44:	c2 45 00 78 	780045c2       r2 = #46
    4a48:	a4 c5 c0 49 	49c0c5a4       r5:4 = memd (gp + #360) }
    4a4c:	c4 45 c0 49 	49c045c4     { r5:4 = memd (gp + #368)
    4a50:	0c c4 c3 a1 	a1c3c40c       memd (r3 + #96) = r5:4 }
    4a54:	e4 45 c0 49 	49c045e4     { r5:4 = memd (gp + #376)
    4a58:	0d c4 c3 a1 	a1c3c40d       memd (r3 + #104) = r5:4 }
    4a5c:	58 41 03 a1 	a1034158     { memb (r3 + #88) = r1
    4a60:	0e c4 c3 a1 	a1c3c40e       memd (r3 + #112) = r5:4 }
    4a64:	59 40 03 a1 	a1034059     { memb (r3 + #89) = r0
    4a68:	57 c0 03 a1 	a103c057       memb (r3 + #87) = r0 }
    4a6c:	84 44 c0 49 	49c04484     { r5:4 = memd (gp + #288)
    4a70:	00 c6 c0 49 	49c0c600       r1:0 = memd (gp + #384) }
    4a74:	0f 40 c3 a1 	a1c3400f     { memd (r3 + #120) = r1:0
    4a78:	10 c4 c3 a1 	a1c3c410       memd (r3 + #128) = r5:4 }
    4a7c:	20 46 c0 49 	49c04620     { r1:0 = memd (gp + #392)
    4a80:	44 c6 c0 49 	49c0c644       r5:4 = memd (gp + #400) }
    4a84:	11 40 c3 a1 	a1c34011     { memd (r3 + #136) = r1:0
    4a88:	12 c4 c3 a1 	a1c3c412       memd (r3 + #144) = r5:4 }
    4a8c:	60 46 c0 49 	49c04660     { r1:0 = memd (gp + #408)
    4a90:	84 c6 c0 49 	49c0c684       r5:4 = memd (gp + #416) }
    4a94:	13 40 c3 a1 	a1c34013     { memd (r3 + #152) = r1:0
    4a98:	14 c4 c3 a1 	a1c3c414       memd (r3 + #160) = r5:4 }
    4a9c:	a0 46 c0 49 	49c046a0     { r1:0 = memd (gp + #424)
    4aa0:	c4 c6 c0 49 	49c0c6c4       r5:4 = memd (gp + #432) }
    4aa4:	15 40 c3 a1 	a1c34015     { memd (r3 + #168) = r1:0
    4aa8:	16 c4 c3 a1 	a1c3c416       memd (r3 + #176) = r5:4 }
    4aac:	e0 46 c0 49 	49c046e0     { r1:0 = memd (gp + #440)
    4ab0:	44 c6 c0 49 	49c0c644       r5:4 = memd (gp + #400) }
    4ab4:	17 40 c3 a1 	a1c34017     { memd (r3 + #184) = r1:0
    4ab8:	18 c4 c3 a1 	a1c3c418       memd (r3 + #192) = r5:4 }
    4abc:	00 47 c0 49 	49c04700     { r1:0 = memd (gp + #448)
    4ac0:	e4 c4 c0 49 	49c0c4e4       r5:4 = memd (gp + #312) }
    4ac4:	19 40 c3 a1 	a1c34019     { memd (r3 + #200) = r1:0
    4ac8:	1a c4 c3 a1 	a1c3c41a       memd (r3 + #208) = r5:4 }
    4acc:	60 46 c0 49 	49c04660     { r1:0 = memd (gp + #408)
    4ad0:	24 c7 c0 49 	49c0c724       r5:4 = memd (gp + #456) }
    4ad4:	1b 40 c3 a1 	a1c3401b     { memd (r3 + #216) = r1:0
    4ad8:	1c c4 c3 a1 	a1c3c41c       memd (r3 + #224) = r5:4 }
    4adc:	40 47 c0 49 	49c04740     { r1:0 = memd (gp + #464)
    4ae0:	c4 c6 c0 49 	49c0c6c4       r5:4 = memd (gp + #432) }
    4ae4:	1d 40 c3 a1 	a1c3401d     { memd (r3 + #232) = r1:0
    4ae8:	1e c4 c3 a1 	a1c3c41e       memd (r3 + #240) = r5:4 }
    4aec:	e0 45 c0 49 	49c045e0     { r1:0 = memd (gp + #376)
    4af0:	c4 c5 c0 49 	49c0c5c4       r5:4 = memd (gp + #368) }
    4af4:	1f 40 c3 a1 	a1c3401f     { memd (r3 + #248) = r1:0
    4af8:	20 c4 c3 a1 	a1c3c420       memd (r3 + #256) = r5:4 }
    4afc:	00 45 c0 49 	49c04500     { r1:0 = memd (gp + #320)
    4b00:	64 c7 c0 49 	49c0c764       r5:4 = memd (gp + #472) }
    4b04:	21 40 c3 a1 	a1c34021     { memd (r3 + #264) = r1:0
    4b08:	22 c4 c3 a1 	a1c3c422       memd (r3 + #272) = r5:4 }
    4b0c:	80 47 c0 49 	49c04780     { r1:0 = memd (gp + #480)
    4b10:	24 c7 c0 49 	49c0c724       r5:4 = memd (gp + #456) }
    4b14:	23 40 c3 a1 	a1c34023     { memd (r3 + #280) = r1:0
    4b18:	24 c4 c3 a1 	a1c3c424       memd (r3 + #288) = r5:4 }
    4b1c:	c0 46 c0 49 	49c046c0     { r1:0 = memd (gp + #432)
    4b20:	a4 c6 c0 49 	49c0c6a4       r5:4 = memd (gp + #424) }
    4b24:	25 40 c3 a1 	a1c34025     { memd (r3 + #296) = r1:0
    4b28:	26 c4 c3 a1 	a1c3c426       memd (r3 + #304) = r5:4 }
    4b2c:	20 47 c0 49 	49c04720     { r1:0 = memd (gp + #456)
    4b30:	a4 c7 c0 49 	49c0c7a4       r5:4 = memd (gp + #488) }
    4b34:	27 40 c3 a1 	a1c34027     { memd (r3 + #312) = r1:0
    4b38:	28 c4 c3 a1 	a1c3c428       memd (r3 + #320) = r5:4 }
    4b3c:	c0 47 c0 49 	49c047c0     { r1:0 = memd (gp + #496)
    4b40:	56 c2 03 a1 	a103c256       memb (r3 + #86) = r2 }
    4b44:	e4 47 c0 49 	49c047e4     { r5:4 = memd (gp + #504)
    4b48:	29 c0 c3 a1 	a1c3c029       memd (r3 + #328) = r1:0 }
    4b4c:	c0 45 c0 49 	49c045c0     { r1:0 = memd (gp + #368)
    4b50:	39 c4 c3 a1 	a1c3c439       memd (r3 + #456) = r5:4 }
    4b54:	04 47 c0 49 	49c04704     { r5:4 = memd (gp + #448)
    4b58:	2a c0 c3 a1 	a1c3c02a       memd (r3 + #336) = r1:0 }
    4b5c:	2b 40 c3 a1 	a1c3402b     { memd (r3 + #344) = r1:0
    4b60:	2c c4 c3 a1 	a1c3c42c       memd (r3 + #352) = r5:4 }
    4b64:	a0 47 c0 49 	49c047a0     { r1:0 = memd (gp + #488)
    4b68:	04 c5 c0 49 	49c0c504       r5:4 = memd (gp + #320) }
    4b6c:	2d 40 c3 a1 	a1c3402d     { memd (r3 + #360) = r1:0
    4b70:	2e c4 c3 a1 	a1c3c42e       memd (r3 + #368) = r5:4 }
    4b74:	c0 44 c0 49 	49c044c0     { r1:0 = memd (gp + #304)
    4b78:	2f c4 c3 a1 	a1c3c42f       memd (r3 + #376) = r5:4 }
    4b7c:	04 48 c0 49 	49c04804     { r5:4 = memd (gp + #512)
    4b80:	30 c0 c3 a1 	a1c3c030       memd (r3 + #384) = r1:0 }
    4b84:	31 44 c3 a1 	a1c34431     { memd (r3 + #392) = r5:4
    4b88:	32 c0 c3 a1 	a1c3c032       memd (r3 + #400) = r1:0 }
    4b8c:	64 46 c0 49 	49c04664     { r5:4 = memd (gp + #408)
    4b90:	e0 c4 c0 49 	49c0c4e0       r1:0 = memd (gp + #312) }
    4b94:	33 40 c3 a1 	a1c34033     { memd (r3 + #408) = r1:0
    4b98:	34 c4 c3 a1 	a1c3c434       memd (r3 + #416) = r5:4 }
    4b9c:	20 48 c0 49 	49c04820     { r1:0 = memd (gp + #520)
    4ba0:	44 c8 c0 49 	49c0c844       r5:4 = memd (gp + #528) }
    4ba4:	35 40 c3 a1 	a1c34035     { memd (r3 + #424) = r1:0
    4ba8:	36 c4 c3 a1 	a1c3c436       memd (r3 + #432) = r5:4 }
    4bac:	00 47 c0 49 	49c04700     { r1:0 = memd (gp + #448)
    4bb0:	64 c8 c0 49 	49c0c864       r5:4 = memd (gp + #536) }
    4bb4:	37 40 c3 a1 	a1c34037     { memd (r3 + #440) = r1:0
    4bb8:	38 c4 c3 a1 	a1c3c438       memd (r3 + #448) = r5:4 }
    4bbc:	00 40 9f 52 	529f4000     { jumpr r31
    4bc0:	a0 c5 c0 49 	49c0c5a0       r1:0 = memd (gp + #360) }
    4bc4:	00 c0 00 7f 	7f00c000     nop
    4bc8:	00 c0 00 7f 	7f00c000     nop
    4bcc:	00 c0 00 7f 	7f00c000     nop

00004bd0 <load_speaker_gmm>:
    4bd0:	fc 4d 01 5a 	5a014dfc     { call e7c8 <__save_r16_through_r23>
    4bd4:	01 44 00 00 	00004401       immext (#65600)
    4bd8:	20 3d c0 69 	69c03d20       r0 = ##65628 ; allocframe (#144) }
    4bdc:	12 41 1d b0 	b01d4112     { r18 = add (r29, #8)
    4be0:	02 cb 00 5a 	5a00cb02       call 61e0 <puts> }
    4be4:	69 4e 00 00 	00004e69     { immext (#236096)
    4be8:	11 40 00 78 	78004011       r17 = ##236096
    4bec:	01 28 0b 28 	280b2801       r19 = #0 ; r1 = #0 }
    4bf0:	02 6f 11 78 	78116f02     { r2 = #9080
    4bf4:	a8 4c 00 5a 	5a004ca8       call 6540 <memset>
    4bf8:	00 40 71 70 	70714000       r0 = r17
    4bfc:	14 e3 03 78 	7803e314       r20 = #1816 }
    4c00:	82 4c 00 78 	78004c82     { r2 = #100
    4c04:	a0 4c 00 5a 	5a004ca0       call 6540 <memset>
    4c08:	00 e0 32 73 	7332e000       r1:0 = combine (#0, r18) }
    4c0c:	10 44 00 00 	00004410     { immext (#66560)
    4c10:	a1 42 00 78 	780042a1       r1 = ##66581
    4c14:	01 44 00 00 	00004401       immext (#65600)
    4c18:	00 c6 00 78 	7800c600       r0 = ##65648 }
    4c1c:	ca c4 00 5a 	5a00c4ca     call 55b0 <fopen>
    4c20:	10 40 60 70 	70604010     { r16 = r0
    4c24:	80 ec 32 73 	7332ec80       r1:0 = combine (#100, r18) }
    4c28:	02 40 70 70 	70704002     { r2 = r16
    4c2c:	fc c3 00 5a 	5a00c3fc       call 5420 <fgets> }
    4c30:	82 4c 00 78 	78004c82     { r2 = #100
    4c34:	88 4c 00 5a 	5a004c88       call 6540 <memset>
    4c38:	a0 30 01 28 	280130a0       r1 = #0 ; r0 = r18 }
    4c3c:	80 6c 32 73 	73326c80     { r1:0 = combine (#100, r18)
    4c40:	f2 43 00 5a 	5a0043f2       call 5420 <fgets>
    4c44:	02 c0 70 70 	7070c002       r2 = r16 }
    4c48:	00 40 72 70 	70724000     { r0 = r18
    4c4c:	e4 cd 00 5a 	5a00cde4       call 6810 <strlen> }
    4c50:	e2 7f e0 bf 	bfe07fe2     { r2 = add (r0, #-1)
    4c54:	00 d3 12 f5 	f512d300       r1:0 = combine (r18, r19) }
    4c58:	11 40 14 e3 	e3144011     { r0 = add (r17, mpyi (r0, r20))
    4c5c:	24 cf 00 5a 	5a00cf24       call 6aa0 <strncpy> }
    4c60:	00 60 32 73 	73326000     { r1:0 = combine (#0, r18)
    4c64:	70 4c 00 5a 	5a004c70       call 6540 <memset>
    4c68:	82 cc 00 78 	7800cc82       r2 = #100 }
    4c6c:	80 6c 32 73 	73326c80     { r1:0 = combine (#100, r18)
    4c70:	da 43 00 5a 	5a0043da       call 5420 <fgets>
    4c74:	02 c0 70 70 	7070c002       r2 = r16 }
    4c78:	01 44 00 00 	00004401     { immext (#65600)
    4c7c:	e0 67 32 73 	733267e0       r1:0 = combine (##65663, r18)
    4c80:	f4 4e 00 5a 	5a004ef4       call 6a60 <strncmp>
    4c84:	42 c0 00 78 	7800c042       r2 = #2 }
    4c88:	76 5c 13 e0 	e0135c76     { r22 = + mpyi (r19, #227)
    4c8c:	18 40 40 10 	10404018       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 4cb8 <load_speaker_gmm+0xe8>
    4c90:	15 c0 00 78 	7800c015       r21 = #0 }
    4c94:	56 42 15 db 	db154256     { r2 = add (r21, add (r22, #2))
    4c98:	04 44 00 00 	00004404       immext (#65792)
    4c9c:	80 30 31 28 	28313080       r1 = ##65795 ; r0 = r16 }
    4ca0:	62 51 02 c4 	c4025162     { r2 = addasl (r17, r2, #3)
    4ca4:	60 45 00 5a 	5a004560       call 5760 <fscanf>
    4ca8:	35 40 15 b0 	b0154035       r21 = add (r21, #1)
    4cac:	00 d6 bd a1 	a1bdd600       memw (r29 + #0) = r2.new }
    4cb0:	80 4d 15 75 	75154d80     { p0 = cmp.eq (r21, #108)
    4cb4:	f2 f8 ff 5c 	5cfff8f2       if !p0.new jump:t 4c94 <load_speaker_gmm+0xc4> }
    4cb8:	82 4c 00 78 	78004c82     { r2 = #100
    4cbc:	44 4c 00 5a 	5a004c44       call 6540 <memset>
    4cc0:	a0 30 01 28 	280130a0       r1 = #0 ; r0 = r18 }
    4cc4:	80 6c 32 73 	73326c80     { r1:0 = combine (#100, r18)
    4cc8:	ae 43 00 5a 	5a0043ae       call 5420 <fgets>
    4ccc:	02 c0 70 70 	7070c002       r2 = r16 }
    4cd0:	02 44 00 00 	00004402     { immext (#65664)
    4cd4:	40 60 32 73 	73326040       r1:0 = combine (##65666, r18)
    4cd8:	c8 4e 00 5a 	5a004ec8       call 6a60 <strncmp>
    4cdc:	42 c0 00 78 	7800c042       r2 = #2 }
    4ce0:	76 5c 13 e0 	e0135c76     { r22 = + mpyi (r19, #227)
    4ce4:	1c 40 40 10 	1040401c       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 4d18 <load_speaker_gmm+0x148>
    4ce8:	15 40 00 78 	78004015       r21 = #0
    4cec:	00 c0 00 7f 	7f00c000       nop }
    4cf0:	01 40 00 00 	00004001     { immext (#64)
    4cf4:	d6 62 55 db 	db5562d6       r2 = add (r21, add (r22, ##110))
    4cf8:	dd 31 80 30 	308031dd       r0 = r16 ; r21 = add (r21, #1) }
    4cfc:	62 51 02 c4 	c4025162     { r2 = addasl (r17, r2, #3)
    4d00:	04 44 00 00 	00004404       immext (#65792)
    4d04:	61 40 00 78 	78004061       r1 = ##65795
    4d08:	00 d4 bd a1 	a1bdd400       memw (r29 + #0) = r2.new }
    4d0c:	2a c5 00 5a 	5a00c52a     call 5760 <fscanf>
    4d10:	80 4d 15 75 	75154d80     { p0 = cmp.eq (r21, #108)
    4d14:	f0 f8 ff 5c 	5cfff8f0       if !p0.new jump:t 4cf0 <load_speaker_gmm+0x120> }
    4d18:	82 4c 00 78 	78004c82     { r2 = #100
    4d1c:	14 4c 00 5a 	5a004c14       call 6540 <memset>
    4d20:	a0 30 01 28 	280130a0       r1 = #0 ; r0 = r18 }
    4d24:	80 6c 32 73 	73326c80     { r1:0 = combine (#100, r18)
    4d28:	7e 43 00 5a 	5a00437e       call 5420 <fgets>
    4d2c:	02 c0 70 70 	7070c002       r2 = r16 }
    4d30:	02 44 00 00 	00004402     { immext (#65664)
    4d34:	a0 60 32 73 	733260a0       r1:0 = combine (##65669, r18)
    4d38:	98 4e 00 5a 	5a004e98       call 6a60 <strncmp>
    4d3c:	42 c0 00 78 	7800c042       r2 = #2 }
    4d40:	76 5c 13 e0 	e0135c76     { r22 = + mpyi (r19, #227)
    4d44:	1a 40 40 10 	1040401a       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 4d74 <load_speaker_gmm+0x1a4>
    4d48:	15 40 00 78 	78004015       r21 = #0
    4d4c:	00 c0 00 7f 	7f00c000       nop }
    4d50:	03 40 00 00 	00004003     { immext (#192)
    4d54:	56 62 35 db 	db356256       r2 = add (r21, add (r22, ##218))
    4d58:	dd 31 80 30 	308031dd       r0 = r16 ; r21 = add (r21, #1) }
    4d5c:	62 51 02 c4 	c4025162     { r2 = addasl (r17, r2, #3)
    4d60:	04 44 00 00 	00004404       immext (#65792)
    4d64:	61 40 00 78 	78004061       r1 = ##65795
    4d68:	00 d4 bd a1 	a1bdd400       memw (r29 + #0) = r2.new }
    4d6c:	fa c4 00 5a 	5a00c4fa     call 5760 <fscanf>
    4d70:	f0 e9 7d 10 	107de9f0     p0 = cmp.eq (r21, #9) ; if (!p0.new) jump:t 4d50 <load_speaker_gmm+0x180>
    4d74:	33 40 13 b0 	b0134033     { r19 = add (r19, #1)
    4d78:	5e c5 73 24 	2473c55e       if (!cmp.eq (r19.new, #5)) jump:nt 4c30 <load_speaker_gmm+0x60> }
    4d7c:	02 44 00 00 	00004402     { immext (#65664)
    4d80:	00 41 00 78 	78004100       r0 = ##65672
    4d84:	32 ca 00 5a 	5a00ca32       call 61e0 <puts> }
    4d88:	00 40 70 70 	70704000     { r0 = r16
    4d8c:	6c c2 00 5a 	5a00c26c       call 5260 <fclose> }
    4d90:	50 cd 01 58 	5801cd50     jump e830 <__restore_r16_through_r23_and_deallocframe>
    4d94:	00 40 00 7f 	7f004000     { nop
    4d98:	00 40 00 7f 	7f004000       nop
    4d9c:	00 c0 00 7f 	7f00c000       nop }

00004da0 <load_test_sample>:
    4da0:	02 44 00 00 	00004402     { immext (#65664)
    4da4:	a0 43 00 78 	780043a0       r0 = ##65693
    4da8:	00 1d f4 eb 	ebf41d00       memd (sp + #-16) = r17:16 ; allocframe (#128) }
    4dac:	1a 4a 00 5a 	5a004a1a     { call 61e0 <puts>
    4db0:	0e d2 dd a1 	a1ddd20e       memd (r29 + #112) = r19:18 }
    4db4:	10 44 00 00 	00004410     { immext (#66560)
    4db8:	2b 2c 51 29 	29512c2b       r1 = ##66581 ; r19 = add (sp, #8) }
    4dbc:	02 44 00 00 	00004402     { immext (#65664)
    4dc0:	20 46 00 78 	78004620       r0 = ##65713
    4dc4:	fa c3 00 5a 	5a00c3fa       call 55b0 <fopen> }
    4dc8:	6e 4d 00 00 	00004d6e     { immext (#220032)
    4dcc:	10 44 00 78 	78004410       r16 = ##220064
    4dd0:	11 40 60 70 	70604011       r17 = r0
    4dd4:	ff ed 5d 3c 	3c5dedff       memw (r29 + #108) = #-1 }
    4dd8:	82 4c 00 78 	78004c82     { r2 = #100
    4ddc:	b4 4b 00 5a 	5a004bb4       call 6540 <memset>
    4de0:	b0 30 01 28 	280130b0       r1 = #0 ; r0 = r19 }
    4de4:	12 54 f0 b3 	b3f05412     { r18 = add (r16, #16032)
    4de8:	81 4c 00 78 	78004c81       r1 = #100
    4dec:	92 30 b0 30 	30b03092       r0 = r19 ; r2 = r17 }
    4df0:	18 c3 00 5a 	5a00c318     call 5420 <fgets>
    4df4:	82 4d 1d b0 	b01d4d82     { r2 = add (r29, #108)
    4df8:	03 44 00 00 	00004403       immext (#65728)
    4dfc:	20 60 31 73 	73316020       r1:0 = combine (##65729, r17)
    4e00:	00 d4 bd a1 	a1bdd400       memw (r29 + #0) = r2.new }
    4e04:	ae c4 00 5a 	5a00c4ae     call 5760 <fscanf>
    4e08:	00 c0 00 7c 	7c00c000     r1:0 = combine (#0, #0)
    4e0c:	03 44 00 00 	00004403     { immext (#65728)
    4e10:	80 60 31 73 	73316080       r1:0 = combine (##65732, r17)
    4e14:	f6 4e 00 00 	00004ef6       immext (#245120)
    4e18:	b8 c0 d3 ab 	abd3c0b8       memd (r19 = ##245176) = r1:0 }
    4e1c:	a2 44 00 5a 	5a0044a2     { call 5760 <fscanf>
    4e20:	00 42 33 3c 	3c334200       memh (r19 + #8) = #0
    4e24:	00 d3 9d a1 	a19dd300       memw (r29 + #0) = r19 }
    4e28:	03 44 00 00 	00004403     { immext (#65728)
    4e2c:	e0 40 00 78 	780040e0       r0 = ##65735
    4e30:	1b 28 b1 dd 	ddb1281b       r1 = memw (sp + #108) ; memw (sp + #4) = r19 }
    4e34:	9e 49 00 5a 	5a00499e     { call 6170 <printf>
    4e38:	00 40 00 7f 	7f004000       nop
    4e3c:	00 c1 9d a1 	a19dc100       memw (r29 + #0) = r1 }
    4e40:	03 44 00 00 	00004403     { immext (#65728)
    4e44:	40 63 31 73 	73316340       r1:0 = combine (##65754, r17)
    4e48:	08 28 88 60 	60882808       r16 = add (r16, #8) ; memw (sp + #0) = r16 }
    4e4c:	8a c4 00 5a 	5a00c48a     call 5760 <fscanf>
    4e50:	f8 6a 78 14 	14786af8     { p0 = cmp.eq (r16, r18) ; if (!p0.new) jump:t 4e40 <load_test_sample+0xa0>
    4e54:	08 42 00 5a 	5a004208       call 5260 <fclose>
    4e58:	00 c0 71 70 	7071c000       r0 = r17 }
    4e5c:	7c 1e 75 3e 	3e751e7c     r19:18 = memd (sp + #112) ; r17:16 = memd (sp + #120)
    4e60:	1e c0 1e 96 	961ec01e     dealloc_return
    4e64:	00 40 00 7f 	7f004000     { nop
    4e68:	00 40 00 7f 	7f004000       nop
    4e6c:	00 c0 00 7f 	7f00c000       nop }

00004e70 <main>:
    4e70:	a8 4c 01 5a 	5a014ca8     { call e7c0 <__save_r16_through_r27>
    4e74:	92 c1 9d a0 	a09dc192       allocframe (#3216) }
    4e78:	ac fe ff 5b 	5bfffeac     call 4bd0 <load_speaker_gmm>
    4e7c:	1b 40 7d 70 	707d401b     { r27 = r29
    4e80:	92 ff ff 5b 	5bffff92       call 4da0 <load_test_sample> }
    4e84:	03 44 00 00 	00004403     { immext (#65728)
    4e88:	c0 43 00 78 	780043c0       r0 = ##65758
    4e8c:	ae c9 00 5a 	5a00c9ae       call 61e0 <puts> }
    4e90:	1d fa fd bf 	bffdfa1d     r29 = add (r29, #-48)
    4e94:	39 40 00 69 	69004039     { loop0 (4ea0 <main+0x30>, #5)
    4e98:	01 3c 4c 2c 	2c4c3c01       r20 = add (sp, #16) ; r3:2 = combine (#0, #0) }
    4e9c:	00 c0 74 70 	7074c000     r0 = r20
    4ea0:	69 8e 00 00 	00008e69     { immext (#236096)
    4ea4:	12 40 00 78 	78004012       r18 = ##236096
    4ea8:	08 c2 c0 ab 	abc0c208       memd (r0 ++ #8) = r3:2 }:endloop0
    4eac:	e2 c0 00 5a 	5a00c0e2     call 5070 <hexagon_sim_init_timer>
    4eb0:	13 40 74 70 	70744013     { r19 = r20
    4eb4:	a0 40 00 5a 	5a0040a0       call 4ff0 <hexagon_sim_start_timer>
    4eb8:	1a ef 32 b2 	b232ef1a       r26 = add (r18, #9080) }
    4ebc:	19 70 3e bf 	bf3e7019     { r25 = add (r30, #-3200)
    4ec0:	18 72 3e bf 	bf3e7218       r24 = add (r30, #-3184)
    4ec4:	17 5e 7e bf 	bf7e5e17       r23 = add (r30, #-2320)
    4ec8:	16 ca be bf 	bfbeca16       r22 = add (r30, #-1456) }
    4ecc:	15 53 be bf 	bfbe5315     { r21 = add (r30, #-1384)
    4ed0:	11 fa fe bf 	bffefa11       r17 = add (r30, #-48) }
    4ed4:	02 63 03 78 	78036302     { r2 = #1816
    4ed8:	00 40 79 70 	70794000       r0 = r25
    4edc:	d8 30 a1 30 	30a130d8       r1 = r18 ; r16 = r21 }
    4ee0:	b8 c9 00 5a 	5a00c9b8     call 6250 <memcpy>
    4ee4:	02 57 16 f5 	f5165702     { r3:2 = combine (r22, r23)
    4ee8:	04 40 75 70 	70754004       r4 = r21
    4eec:	c0 c4 c0 49 	49c0c4c0       r1:0 = memd (gp + #304) }
    4ef0:	6e 4d 00 00 	00004d6e     { immext (#220032)
    4ef4:	00 64 18 73 	73186400       r1:0 = combine (r24, ##220064)
    4ef8:	00 79 ff 5b 	5bff7900       call 40f0 <gaussmixp>
    4efc:	00 c0 d3 a1 	a1d3c000       memd (r19 + #0) = r1:0 }
    4f00:	00 c0 d3 91 	91d3c000     r1:0 = memd (r19 + #0)
    4f04:	de 4d 01 5a 	5a014dde     { call eac0 <__hexagon_adddf3>
    4f08:	22 c0 d0 9b 	9bd0c022       r3:2 = memd (r16 ++ #8) }
    4f0c:	fc 69 78 14 	147869fc     { p0 = cmp.eq (r16, r17) ; if (!p0.new) jump:t 4f04 <main+0x94>
    4f10:	88 e0 d3 ab 	abd3e088       if (p0.new) memd (r19 ++ #8) = r1:0 }
    4f14:	12 63 72 b0 	b0726312     { r18 = add (r18, #1816)
    4f18:	82 48 c0 49 	49c04882       r3:2 = memd (gp + #544)
    4f1c:	e0 da 74 20 	2074dae0       if (!cmp.eq (r18.new, r26)) jump:nt 4ed4 <main+0x64> }
    4f20:	31 44 00 69 	69004431     { loop0 (4f68 <main+0xf8>, #5)
    4f24:	0a 3a 00 28 	28003a0a       r0 = #0 ; r18 = #-1 }
    4f28:	14 41 14 b0 	b0144114     { r20 = add (r20, #8)
    4f2c:	10 c0 d4 91 	91d4c010       r17:16 = memd (r20 + #0) }
    4f30:	20 c2 f0 d2 	d2f0c220     p0 = dfcmp.gt (r17:16, r3:2)
    4f34:	12 80 00 74 	74008012     { if (p0) r18 = add (r0, #0)
    4f38:	90 42 03 fd 	fd034290       if !p0 r17:16 = combine (r3, r2)
    4f3c:	20 c0 00 b0 	b000c020       r0 = add (r0, #1) }:endloop0
    4f40:	68 c0 00 5a 	5a00c068     call 5010 <hexagon_sim_end_timer>
    4f44:	9e 40 00 5a 	5a00409e     { call 5080 <hexagon_sim_show_timer>
    4f48:	65 44 00 00 	00004465       immext (#72000)
    4f4c:	aa 31 00 2a 	2a0031aa       r0 = ##72032 ; r18 = add (r18, #1) }
    4f50:	03 44 00 00 	00004403     { immext (#65728)
    4f54:	c0 44 00 78 	780044c0       r0 = ##65766
    4f58:	0a 08 0c ea 	ea0c080a       memd (sp + #8) = r17:16 ; memw (sp + #0) = r18 }
    4f5c:	0a c9 00 5a 	5a00c90a     call 6170 <printf>
    4f60:	1d c0 7b 70 	707bc01d     r29 = r27
    4f64:	6e cc 01 58 	5801cc6e     jump e840 <__restore_r16_through_r27_and_deallocframe>
    4f68:	02 50 11 f5 	f5115002     { r3:2 = combine (r17, r16)
    4f6c:	e0 ff ff 59 	59ffffe0       jump 4f28 <main+0xb8> }

00004f70 <hexagon_sim_read_cycles>:
    4f70:	00 c8 00 78 	7800c800     r0 = #64
    4f74:	00 c0 00 54 	5400c000     trap0 (#0)
    4f78:	02 c0 01 f5 	f501c002     r3:2 = combine (r1, r0)
    4f7c:	00 42 03 f5 	f5034200     { r1:0 = combine (r3, r2)
    4f80:	00 c0 9f 52 	529fc000       jumpr r31 }
    4f84:	00 40 00 7f 	7f004000     { nop
    4f88:	00 40 00 7f 	7f004000       nop
    4f8c:	00 c0 00 7f 	7f00c000       nop }

00004f90 <hexagon_sim_read_tcycles>:
    4f90:	02 c0 60 70 	7060c002     r2 = r0
    4f94:	80 c8 00 78 	7800c880     r0 = #68
    4f98:	01 c0 62 70 	7062c001     r1 = r2
    4f9c:	00 c0 00 54 	5400c000     trap0 (#0)
    4fa0:	02 c0 01 f5 	f501c002     r3:2 = combine (r1, r0)
    4fa4:	00 42 03 f5 	f5034200     { r1:0 = combine (r3, r2)
    4fa8:	00 c0 9f 52 	529fc000       jumpr r31 }
    4fac:	00 c0 00 7f 	7f00c000     nop

00004fb0 <hexagon_sim_read_pcycles>:
    4fb0:	40 ca 00 78 	7800ca40     r0 = #82
    4fb4:	00 c0 00 54 	5400c000     trap0 (#0)
    4fb8:	02 c0 01 f5 	f501c002     r3:2 = combine (r1, r0)
    4fbc:	00 42 03 f5 	f5034200     { r1:0 = combine (r3, r2)
    4fc0:	00 c0 9f 52 	529fc000       jumpr r31 }
    4fc4:	00 40 00 7f 	7f004000     { nop
    4fc8:	00 40 00 7f 	7f004000       nop
    4fcc:	00 c0 00 7f 	7f00c000       nop }

00004fd0 <hexagon_sim_prof_on>:
    4fd0:	20 c8 00 78 	7800c820     r0 = #65
    4fd4:	00 c0 00 54 	5400c000     trap0 (#0)
    4fd8:	00 c0 9f 52 	529fc000     jumpr r31
    4fdc:	00 c0 00 7f 	7f00c000     nop

00004fe0 <hexagon_sim_prof_off>:
    4fe0:	40 c8 00 78 	7800c840     r0 = #66
    4fe4:	00 c0 00 54 	5400c000     trap0 (#0)
    4fe8:	00 c0 9f 52 	529fc000     jumpr r31
    4fec:	00 c0 00 7f 	7f00c000     nop

00004ff0 <hexagon_sim_start_timer>:
    4ff0:	00 c8 00 78 	7800c800     r0 = #64
    4ff4:	00 c0 00 54 	5400c000     trap0 (#0)
    4ff8:	02 c0 01 f5 	f501c002     r3:2 = combine (r1, r0)
    4ffc:	1b c2 c0 48 	48c0c21b     memd (gp + #216) = r3:2
    5000:	20 c8 00 78 	7800c820     r0 = #65
    5004:	00 c0 00 54 	5400c000     trap0 (#0)
    5008:	00 c0 9f 52 	529fc000     jumpr r31
    500c:	00 c0 00 7f 	7f00c000     nop

00005010 <hexagon_sim_end_timer>:
    5010:	40 c8 00 78 	7800c840     r0 = #66
    5014:	00 c0 00 54 	5400c000     trap0 (#0)
    5018:	00 c8 00 78 	7800c800     r0 = #64
    501c:	00 c0 00 54 	5400c000     trap0 (#0)
    5020:	02 c0 01 f5 	f501c002     r3:2 = combine (r1, r0)
    5024:	01 4f 00 00 	00004f01     { immext (#245824)
    5028:	04 40 00 78 	78004004       r4 = ##245824
    502c:	60 43 c0 49 	49c04360       r1:0 = memd (gp + #216)
    5030:	88 c3 c0 49 	49c0c388       r9:8 = memd (gp + #224) }
    5034:	e0 42 20 d3 	d32042e0     { r1:0 = sub (r3:2, r1:0)
    5038:	aa 43 c0 49 	49c043aa       r11:10 = memd (gp + #232)
    503c:	e6 c2 c0 49 	49c0c2e6       r7:6 = memd (gp + #184) }
    5040:	e6 46 a0 d3 	d3a046e6     { r7:6 = minu (r7:6, r1:0)
    5044:	e8 40 08 d3 	d30840e8       r9:8 = add (r9:8, r1:0)
    5048:	01 c0 44 3f 	3f44c001       memw (r4 + #0) += #1 }
    504c:	a0 40 ca d3 	d3ca40a0     { r1:0 = maxu (r11:10, r1:0)
    5050:	1c 48 c0 48 	48c0481c       memd (gp + #224) = r9:8
    5054:	17 c6 c0 48 	48c0c617       memd (gp + #184) = r7:6 }
    5058:	00 40 9f 52 	529f4000     { jumpr r31
    505c:	1d 40 c0 48 	48c0401d       memd (gp + #232) = r1:0
    5060:	1a c2 c0 48 	48c0c21a       memd (gp + #208) = r3:2 }
    5064:	00 40 00 7f 	7f004000     { nop
    5068:	00 40 00 7f 	7f004000       nop
    506c:	00 c0 00 7f 	7f00c000       nop }

00005070 <hexagon_sim_init_timer>:
    5070:	40 c8 00 78 	7800c840     r0 = #66
    5074:	00 c0 00 54 	5400c000     trap0 (#0)
    5078:	00 c0 9f 52 	529fc000     jumpr r31
    507c:	00 c0 00 7f 	7f00c000     nop

00005080 <hexagon_sim_show_timer>:
    5080:	04 44 00 00 	00004404     { immext (#65792)
    5084:	01 41 00 78 	78004101       r1 = ##65800
    5088:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    508c:	10 40 60 70 	70604010     { r16 = r0
    5090:	b2 42 00 5a 	5a0042b2       call 55f0 <fprintf>
    5094:	02 42 80 49 	49804202       r2 = memw (gp + #64)
    5098:	00 d2 bd a1 	a1bdd200       memw (r29 + #0) = r2.new }
    509c:	80 c3 c0 49 	49c0c380     r1:0 = memd (gp + #224)
    50a0:	04 44 00 00 	00004404     { immext (#65792)
    50a4:	80 62 30 73 	73306280       r1:0 = combine (##65812, r16)
    50a8:	a8 42 00 5a 	5a0042a8       call 55f0 <fprintf>
    50ac:	00 c0 dd a1 	a1ddc000       memd (r29 + #0) = r1:0 }
    50b0:	a0 c3 c0 49 	49c0c3a0     r1:0 = memd (gp + #232)
    50b4:	04 44 00 00 	00004404     { immext (#65792)
    50b8:	e0 64 30 73 	733064e0       r1:0 = combine (##65831, r16)
    50bc:	9e 42 00 5a 	5a00429e       call 55f0 <fprintf>
    50c0:	00 c0 dd a1 	a1ddc000       memd (r29 + #0) = r1:0 }
    50c4:	e0 c2 c0 49 	49c0c2e0     r1:0 = memd (gp + #184)
    50c8:	04 44 00 00 	00004404     { immext (#65792)
    50cc:	00 67 30 73 	73306700       r1:0 = combine (##65848, r16)
    50d0:	94 42 00 5a 	5a004294       call 55f0 <fprintf>
    50d4:	00 c0 dd a1 	a1ddc000       memd (r29 + #0) = r1:0 }
    50d8:	03 40 00 78 	78004003     { r3 = #0
    50dc:	6c 4c 01 5a 	5a014c6c       call e9b0 <__hexagon_udivdi3>
    50e0:	80 43 c0 49 	49c04380       r1:0 = memd (gp + #224)
    50e4:	02 c2 80 49 	4980c202       r2 = memw (gp + #64) }
    50e8:	05 44 00 00 	00004405     { immext (#65856)
    50ec:	20 61 30 73 	73306120       r1:0 = combine (##65865, r16)
    50f0:	84 42 00 5a 	5a004284       call 55f0 <fprintf>
    50f4:	00 c0 dd a1 	a1ddc000       memd (r29 + #0) = r1:0 }
    50f8:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    50fc:	00 c0 00 7f 	7f00c000     nop

00005100 <thread_create>:
    5100:	00 40 24 72 	72244000     { r4.h = #0
    5104:	47 42 02 8c 	8c024247       r7 = asl (r2, #2)
    5108:	00 40 25 72 	72254000       r5.h = #0
    510c:	00 c0 26 72 	7226c000       r6.h = #0 }
    5110:	64 5a 24 71 	71245a64     { r4.l = #6756
    5114:	7c 5a 25 71 	71255a7c       r5.l = #6780
    5118:	94 5a 26 71 	71265a94       r6.l = #6804
    511c:	28 c0 00 78 	7800c028       r8 = #1 }
    5120:	05 45 07 f3 	f3074505     { r5 = add (r7, r5)
    5124:	88 42 48 c6 	c6484288       r8 = asl (r8, r2)
    5128:	76 38 74 38 	38743876       r4 = add (r7, r4) ; r6 = add (r7, r6) }
    512c:	00 c0 84 a1 	a184c000     memw (r4 + #0) = r0
    5130:	00 c1 85 a1 	a185c100     memw (r5 + #0) = r1
    5134:	00 c3 86 a1 	a186c300     memw (r6 + #0) = r3
    5138:	20 c0 68 64 	6468c020     start (r8)
    513c:	00 c0 9f 52 	529fc000     jumpr r31

00005140 <thread_stop>:
    5140:	00 40 88 6e 	6e884000     { r0 = htid
    5144:	21 c0 00 78 	7800c021       r1 = #1 }
    5148:	c1 c0 41 c6 	c641c0c1     r1 = lsl (r1, r0)
    514c:	00 c0 61 64 	6461c000     stop (r1)
    5150:	00 c0 3c 72 	723cc000     r28.h = #0
    5154:	30 c7 3c 71 	713cc730     r28.l = #1840
    5158:	00 c0 9c 52 	529cc000     jumpr r28
    515c:	00 c0 00 7f 	7f00c000     nop

00005160 <thread_join>:
    5160:	01 40 88 6e 	6e884001     { r1 = htid
    5164:	23 c0 00 78 	7800c023       r3 = #1 }
    5168:	81 c1 43 c6 	c643c181     r1 = asl (r3, r1)
    516c:	e1 ff 61 76 	7661ffe1     r1 = sub (#-1, r1)
    5170:	00 c1 00 f1 	f100c100     r0 = and (r0, r1)
    5174:	00 c0 e0 f3 	f3e0c000     r0 = combine (r0.l, r0.l)
    5178:	02 c0 91 6e 	6e91c002     r2 = modectl
    517c:	02 c2 00 f1 	f100c202     r2 = and (r0, r2)
    5180:	c6 3f 20 59 	59203fc6     p0 = cmp.eq (r2, #0) ; if (p0.new) jumpr:nt lr
    5184:	04 c0 40 54 	5440c004     pause (#1)
    5188:	f8 ff ff 59 	59fffff8     jump 5178 <thread_join+0x18>
    518c:	00 c0 00 7f 	7f00c000     nop

00005190 <thread_get_tnum>:
    5190:	00 40 88 6e 	6e884000     { r0 = htid
    5194:	00 c0 9f 52 	529fc000       jumpr r31 }
    5198:	00 40 00 7f 	7f004000     { nop
    519c:	00 c0 00 7f 	7f00c000       nop }

000051a0 <thread_stack_size>:
    51a0:	00 c0 22 72 	7222c000     r2.h = #0
    51a4:	ac 5a 22 71 	71225aac     { r2.l = #6828
    51a8:	43 c2 00 8c 	8c00c243       r3 = asl (r0, #2) }
    51ac:	04 c3 02 f3 	f302c304     r4 = add (r2, r3)
    51b0:	00 c1 84 a1 	a184c100     memw (r4 + #0) = r1
    51b4:	00 c0 9f 52 	529fc000     jumpr r31
    51b8:	00 c0 00 7f 	7f00c000     nop
    51bc:	00 c0 00 7f 	7f00c000     nop

000051c0 <__sys_get_cmdline>:
    51c0:	50 44 00 00 	00004450     { immext (#70656)
    51c4:	02 c7 80 49 	4980c702       r2 = memw (gp + ##70712) }
    51c8:	00 40 02 75 	75024000     { p0 = cmp.eq (r2, #0)
    51cc:	10 60 00 7e 	7e006010       if (p0.new) r16 = #0
    51d0:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    51d4:	14 40 00 5c 	5c004014     { if (p0) jump 51fc <__sys_get_cmdline+0x3c>
    51d8:	6e 4b 00 5a 	5a004b6e       call 68b0 <hexagon_cache_cleaninv>
    51dc:	00 40 9d 44 	449d4000       if !p0 memw (r29 + #0) = r0
    51e0:	08 c1 9d 44 	449dc108       if !p0 memw (r29 + #4) = r1 }
    51e4:	00 61 3d 73 	733d6100     { r1:0 = combine (#8, r29)
    51e8:	66 cb 00 5a 	5a00cb66       call 68b0 <hexagon_cache_cleaninv> }
    51ec:	a0 c2 00 78 	7800c2a0     r0 = #21
    51f0:	01 c0 7d 70 	707dc001     r1 = r29
    51f4:	00 c0 00 54 	5400c000     trap0 (#0)
    51f8:	10 c0 60 70 	7060c010     r16 = r0
    51fc:	00 40 70 70 	70704000     { r0 = r16
    5200:	40 1f 0c 3e 	3e0c1f40       r17:16 = memd (sp + #8) ; dealloc_return }
    5204:	00 c0 00 7f 	7f00c000     nop
    5208:	00 c0 00 7f 	7f00c000     nop
    520c:	00 c0 00 7f 	7f00c000     nop

00005210 <exp>:
    5210:	20 1c f4 eb 	ebf41c20     memd (sp + #-16) = r17:16 ; allocframe (#16)
    5214:	00 40 7d 70 	707d4000     { r0 = r29
    5218:	36 4d 00 5a 	5a004d36       call 6c80 <_Dtest>
    521c:	00 c0 dd a1 	a1ddc000       memd (r29 + #0) = r1:0 }
    5220:	18 c1 00 10 	1000c118     p0 = cmp.eq (r0, #1) ; if (p0.new) jump:nt 5250 <exp+0x40>
    5224:	12 c2 00 10 	1000c212     p0 = cmp.eq (r0, #2) ; if (p0.new) jump:nt 5248 <exp+0x38>
    5228:	08 40 40 10 	10404008     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 5238 <exp+0x28>
    522c:	80 44 c0 49 	49c04480       r1:0 = memd (gp + #288)
    5230:	30 c0 dd 91 	91ddc030       r17:16 = memd (r29 + #8) }
    5234:	1e c0 1e 96 	961ec01e     dealloc_return
    5238:	00 40 7d 70 	707d4000     { r0 = r29
    523c:	ac 4d 00 5a 	5a004dac       call 6d90 <_Exp>
    5240:	04 40 00 78 	78004004       r4 = #0
    5244:	82 c4 c0 49 	49c0c482       r3:2 = memd (gp + #288) }
    5248:	00 c0 dd 91 	91ddc000     r1:0 = memd (r29 + #0)
    524c:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    5250:	60 40 5d 91 	915d4060     { r0 = memh (r29 + #6)
    5254:	fc c0 b2 26 	26b2c0fc       if (cmp.gt (r0.new, #-1)) jump:nt 5248 <exp+0x38> }
    5258:	fa 7f ff 59 	59ff7ffa     { jump 524c <exp+0x3c>
    525c:	c0 c4 c0 49 	49c0c4c0       r1:0 = memd (gp + #304) }

00005260 <fclose>:
    5260:	10 40 60 70 	70604010     { r16 = r0
    5264:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    5268:	01 c0 60 91 	9160c001     r1 = memuh (r0 + #0)
    526c:	61 40 01 76 	76014061     { r1 = and (r1, #3)
    5270:	42 c0 03 24 	2403c042       if (cmp.eq (r1.new, #0)) jump:nt 52f0 <fclose+0x90> }
    5274:	21 40 80 91 	91804021     { r1 = memw (r0 + #4)
    5278:	3e c0 c3 26 	26c3c03e       if (!cmp.gt (r1.new, #-1)) jump:nt 52f0 <fclose+0x90> }
    527c:	52 c0 00 5a 	5a00c052     call 5320 <fflush>
    5280:	58 61 00 5a 	5a006158     { call 9530 <_Locksyslock>
    5284:	09 30 20 28 	28203009       r0 = #2 ; r17 = r0 }
    5288:	00 c0 70 91 	9170c000     r0 = memuh (r16 + #0)
    528c:	00 46 20 85 	85204600     { p0 = !tstbit (r0, #6)
    5290:	2e 48 20 5c 	5c20482e       if !p0.new jump:nt 52e8 <fclose+0x88>
    5294:	40 c0 90 47 	4790c040       if !p0.new r0 = memw (r16 + #8) }
    5298:	d4 47 00 5a 	5a0047d4     { call 6240 <close>
    529c:	82 10 80 c1 	c1801082       r0 = memw (r16 + #4) ; memw (r16 + #8) = #0 }
    52a0:	01 40 00 75 	75004001     { p1 = cmp.eq (r0, #0)
    52a4:	01 c2 90 91 	9190c201       r1 = memw (r16 + #64) }
    52a8:	f1 5f af 7e 	7eaf5ff1     { if !p1 r17 = #-1
    52ac:	12 40 01 10 	10014012       p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt 52cc <fclose+0x6c>
    52b0:	00 c0 61 70 	7061c000       r0 = r1 }
    52b4:	96 cb 00 5a 	5a00cb96     call 69e0 <remove>
    52b8:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    52bc:	dc 41 00 5a 	5a0041dc       call 5670 <free>
    52c0:	f1 7f 8f 7e 	7e8f7ff1       if !p0.new r17 = #-1
    52c4:	00 c2 90 91 	9190c200       r0 = memw (r16 + #64) }
    52c8:	00 c8 50 3c 	3c50c800     memw (r16 + #64) = #0
    52cc:	00 40 70 70 	70704000     { r0 = r16
    52d0:	ca ce 00 5a 	5a00ceca       call 7060 <_Fofree> }
    52d4:	40 40 00 78 	78004040     { r0 = #2
    52d8:	de 60 00 5a 	5a0060de       call 9490 <_Unlocksyslock>
    52dc:	00 c0 00 7f 	7f00c000       nop }
    52e0:	00 40 71 70 	70714000     { r0 = r17
    52e4:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    52e8:	c4 c1 00 5a 	5a00c1c4     call 5670 <free>
    52ec:	d6 ff ff 59 	59ffffd6     jump 5298 <fclose+0x38>
    52f0:	20 61 00 5a 	5a006120     { call 9530 <_Locksyslock>
    52f4:	09 3a 20 28 	28203a09       r0 = #2 ; r17 = #-1 }
    52f8:	00 40 70 70 	70704000     { r0 = r16
    52fc:	b4 ce 00 5a 	5a00ceb4       call 7060 <_Fofree> }
    5300:	40 40 00 78 	78004040     { r0 = #2
    5304:	c8 e0 00 5a 	5a00e0c8       call 9490 <_Unlocksyslock> }
    5308:	84 e3 00 5a 	5a00e384     call 9a10 <_Geterrno>
    530c:	ea 7f ff 59 	59ff7fea     { jump 52e0 <fclose+0x80>
    5310:	09 c0 40 3c 	3c40c009       memw (r0 + #0) = #9 }
    5314:	00 c0 00 7f 	7f00c000     nop
    5318:	00 c0 00 7f 	7f00c000     nop
    531c:	00 c0 00 7f 	7f00c000     nop

00005320 <fflush>:
    5320:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    5324:	11 40 60 70 	70604011       r17 = r0
    5328:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    532c:	40 40 00 7e 	7e004040     { if (p0) r0 = #2
    5330:	58 40 00 5c 	5c004058       if (p0) jump 53dc <fflush+0xbc>
    5334:	05 2a 0a 68 	680a2a05       r18 = #0 ; memd (sp + #0) = r19:18 }
    5338:	34 e1 00 5a 	5a00e134     call 95a0 <_Lockfilelock>
    533c:	00 c0 71 91 	9171c000     r0 = memuh (r17 + #0)
    5340:	00 4d 20 85 	85204d00     { p0 = !tstbit (r0, #13)
    5344:	44 48 00 5c 	5c004844       if (p0.new) jump:nt 53c8 <fflush+0xa8>
    5348:	41 40 91 47 	47914041       if !p0.new r1 = memw (r17 + #8)
    534c:	82 c0 91 47 	4791c082       if !p0.new r2 = memw (r17 + #16) }
    5350:	06 61 02 15 	15026106     { p0 = cmp.gtu (r2, r1) ; if (p0.new) jump:t 535c <fflush+0x3c>
    5354:	28 c8 01 17 	1701c828       r16 = r1 ; jump 53a0 <fflush+0x80> }
    5358:	22 c8 42 15 	1542c822     p0 = cmp.gtu (r2, r16) ; if (!p0.new) jump:nt 539c <fflush+0x7c>
    535c:	02 42 30 f3 	f3304202     { r2 = sub (r2, r16)
    5360:	9a 4a 00 5a 	5a004a9a       call 6890 <write>
    5364:	90 01 81 50 	50810190       r1 = r16 ; r0 = memw (r17 + #4) }
    5368:	10 40 10 f3 	f3104010     { r16 = add (r16, r0)
    536c:	f8 60 b0 10 	10b060f8       p0 = cmp.gt (r0, #0) ; if (p0.new) jump:t 5358 <fflush+0x38>
    5370:	82 c0 91 43 	4391c082       if (p0.new) r2 = memw (r17 + #16) }
    5374:	00 40 71 70 	70714000     { r0 = r17
    5378:	f2 7f df 78 	78df7ff2       r18 = #-1
    537c:	41 40 91 91 	91914041       r1 = memw (r17 + #8)
    5380:	69 c0 31 3f 	3f31c069       memh (r17 + #0) = setbit (#9) }
    5384:	91 04 91 ad 	ad910491     memw (r17 + #52) = r1 ; memw (r17 + #16) = r1
    5388:	94 60 00 5a 	5a006094     { call 94b0 <_Unlockfilelock>
    538c:	06 c1 91 a1 	a191c106       memw (r17 + #24) = r1 }
    5390:	00 40 72 70 	70724000     { r0 = r18
    5394:	05 1e 0c 3e 	3e0c1e05       r17:16 = memd (sp + #8) ; r19:18 = memd (sp + #0) }
    5398:	1e c0 1e 96 	961ec01e     dealloc_return
    539c:	41 c0 91 91 	9191c041     r1 = memw (r17 + #8)
    53a0:	00 40 71 70 	70714000     { r0 = r17
    53a4:	12 40 00 78 	78004012       r18 = #0
    53a8:	91 04 91 ad 	ad910491       memw (r17 + #52) = r1 ; memw (r17 + #16) = r1 }
    53ac:	7f 43 00 00 	0000437f     { immext (#57280)
    53b0:	91 06 f1 6b 	6bf10691       r1 = ##57343 ; memw (r17 + #24) = r1 }
    53b4:	7e 60 00 5a 	5a00607e     { call 94b0 <_Unlockfilelock>
    53b8:	41 c0 31 3e 	3e31c041       memh (r17 + #0) &= r1 }
    53bc:	00 40 72 70 	70724000     { r0 = r18
    53c0:	05 1e 0c 3e 	3e0c1e05       r17:16 = memd (sp + #8) ; r19:18 = memd (sp + #0) }
    53c4:	1e c0 1e 96 	961ec01e     dealloc_return
    53c8:	74 60 00 5a 	5a006074     { call 94b0 <_Unlockfilelock>
    53cc:	90 30 0a 28 	280a3090       r18 = #0 ; r0 = r17 }
    53d0:	00 40 72 70 	70724000     { r0 = r18
    53d4:	05 1e 0c 3e 	3e0c1e05       r17:16 = memd (sp + #8) ; r19:18 = memd (sp + #0) }
    53d8:	1e c0 1e 96 	961ec01e     dealloc_return
    53dc:	63 44 00 00 	00004463     { immext (#71872)
    53e0:	10 40 00 78 	78004010       r16 = ##71872
    53e4:	aa e0 00 5a 	5a00e0aa       call 9530 <_Locksyslock> }
    53e8:	11 ca 10 b0 	b010ca11     r17 = add (r16, #80)
    53ec:	81 00 48 40 	40480081     r16 = add (r16, #4) ; r1 = memw (r16 + #0)
    53f0:	0a 40 01 10 	1001400a     { p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt 5404 <fflush+0xe4>
    53f4:	98 7f ff 5b 	5bff7f98       call 5320 <fflush>
    53f8:	00 c0 61 70 	7061c000       r0 = r1 }
    53fc:	e0 7f 60 75 	75607fe0     { p0 = cmp.gt (r0, #-1)
    5400:	f2 ff 8f 7e 	7e8ffff2       if !p0.new r18 = #-1 }
    5404:	f4 69 78 14 	147869f4     { p0 = cmp.eq (r16, r17) ; if (!p0.new) jump:t 53ec <fflush+0xcc>
    5408:	46 60 00 5a 	5a006046       call 9490 <_Unlocksyslock>
    540c:	40 c0 00 78 	7800c040       r0 = #2 }
    5410:	00 40 72 70 	70724000     { r0 = r18
    5414:	05 1e 0c 3e 	3e0c1e05       r17:16 = memd (sp + #8) ; r19:18 = memd (sp + #0) }
    5418:	1e c0 1e 96 	961ec01e     dealloc_return
    541c:	00 c0 00 7f 	7f00c000     nop

00005420 <fgets>:
    5420:	20 40 41 75 	75414020     { p0 = cmp.gt (r1, #1)
    5424:	e4 49 01 5a 	5a0149e4       call e7e8 <__save_r16_through_r21>
    5428:	03 c0 9d a0 	a09dc003       allocframe (#24) }
    542c:	28 30 0d 30 	300d3028     r21 = r0 ; r16 = r2
    5430:	00 40 62 70 	70624000     { r0 = r2
    5434:	72 40 20 5c 	5c204072       if !p0 jump 5514 <fgets+0xf4>
    5438:	7d 3a 19 33 	33193a7d       r17 = add (r1, #-1) ; if (!p0) r21 = #0 }
    543c:	b2 e0 00 5a 	5a00e0b2     call 95a0 <_Lockfilelock>
    5440:	00 c0 70 91 	9170c000     r0 = memuh (r16 + #0)
    5444:	00 4e 20 85 	85204e00     { p0 = !tstbit (r0, #14)
    5448:	6c 48 20 5c 	5c20486c       if !p0.new jump:nt 551c <fgets+0xfc>
    544c:	12 60 15 74 	74156012       if (p0.new) r18 = add (r21, #0)
    5450:	80 c0 90 43 	4390c080       if (p0.new) r0 = memw (r16 + #16) }
    5454:	62 c1 90 91 	9190c162     r2 = memw (r16 + #44)
    5458:	00 40 02 75 	75024000     { p0 = cmp.eq (r2, #0)
    545c:	a2 40 90 43 	439040a2       if (p0.new) r2 = memw (r16 + #20)
    5460:	28 c2 90 46 	4690c228       if !p0.new memw (r16 + #20) = r2 }
    5464:	00 60 90 74 	74906000     { if !p0.new r0 = add (r16, #0)
    5468:	16 40 02 15 	15024016       p0 = cmp.gtu (r2, r0) ; if (p0.new) jump:nt 5490 <fgets+0x70>
    546c:	80 c5 d0 38 	38d0c580       if !p0 memw (r16 + #44) = #0 }
    5470:	00 cf 00 5a 	5a00cf00     call 7270 <_Frprep>
    5474:	76 41 c0 11 	11c04176     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 5560 <fgets+0x140>
    5478:	5d 3a 80 30 	30803a5d       r0 = r16 ; if (!p0.new) r21 = #0 }
    547c:	00 c0 70 91 	9170c000     r0 = memuh (r16 + #0)
    5480:	00 48 20 85 	85204800     { p0 = !tstbit (r0, #8)
    5484:	40 48 20 5c 	5c204840       if !p0.new jump:nt 5500 <fgets+0xe0>
    5488:	a2 40 90 43 	439040a2       if (p0.new) r2 = memw (r16 + #20)
    548c:	80 c0 90 43 	4390c080       if (p0.new) r0 = memw (r16 + #16) }
    5490:	41 41 00 78 	78004141     { r1 = #10
    5494:	00 43 00 5a 	5a004300       call 5a90 <memchr>
    5498:	02 c2 20 f3 	f320c202       r2 = sub (r2, r0) }
    549c:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    54a0:	33 60 80 74 	74806033       if !p0.new r19 = add (r0, #1)
    54a4:	81 40 90 91 	91904081       r1 = memw (r16 + #16)
    54a8:	b3 c0 90 43 	4390c0b3       if (p0.new) r19 = memw (r16 + #20) }
    54ac:	34 40 00 7a 	7a004034     { r20 = mux (p0, #1, #0)
    54b0:	13 53 21 f3 	f3215313       r19 = sub (r19, r1)
    54b4:	00 c0 72 70 	7072c000       r0 = r18 }
    54b8:	18 c9 0b 15 	150bc918     p0 = cmp.gtu (r19, r17) ; if (p0.new) jump:nt 54e8 <fgets+0xc8>
    54bc:	02 40 73 70 	70734002     { r2 = r19
    54c0:	ca 46 00 5a 	5a0046ca       call 6250 <memcpy>
    54c4:	ba 38 a0 30 	30a038ba       r0 = r18 ; r18 = add (r19, r18) }
    54c8:	00 40 14 85 	85144000     { p0 = tstbit (r20, #0)
    54cc:	80 c0 90 91 	9190c080       r0 = memw (r16 + #16) }
    54d0:	00 53 00 f3 	f3005300     { r0 = add (r0, r19)
    54d4:	18 40 20 5c 	5c204018       if !p0 jump 5500 <fgets+0xe0>
    54d8:	11 51 33 fb 	fb335111       if (p0) r17 = sub (r17, r19)
    54dc:	04 d6 b0 a1 	a1b0d604       memw (r16 + #16) = r0.new }
    54e0:	ba c0 b9 10 	10b9c0ba     p0 = cmp.gt (r17, #0) ; if (p0.new) jump:nt 5454 <fgets+0x34>
    54e4:	0e c0 00 58 	5800c00e     jump 5500 <fgets+0xe0>
    54e8:	b4 46 00 5a 	5a0046b4     { call 6250 <memcpy>
    54ec:	9a 38 92 30 	3092389a       r2 = r17 ; r18 = add (r17, r18) }
    54f0:	00 40 00 7f 	7f004000     { nop
    54f4:	00 40 00 7f 	7f004000       nop
    54f8:	00 40 00 7f 	7f004000       nop
    54fc:	11 c2 50 3e 	3e50c211       memw (r16 + #16) += r17 }
    5500:	00 55 12 f2 	f2125500     { p0 = cmp.eq (r18, r21)
    5504:	00 40 70 70 	70704000       r0 = r16
    5508:	15 60 00 7e 	7e006015       if (p0.new) r21 = #0
    550c:	00 c0 92 39 	3992c000       if !p0.new memb (r18 + #0) = #0 }
    5510:	d0 df 00 5a 	5a00dfd0     call 94b0 <_Unlockfilelock>
    5514:	4c 42 00 00 	0000424c     { immext (#37632)
    5518:	78 c0 0d 17 	170dc078       r0 = r21 ; jump e850 <__restore_r16_through_r21_and_deallocframe> }
    551c:	82 49 10 b0 	b0104982     { r2 = add (r16, #76)
    5520:	80 07 da 50 	50da0780       r18 = r21 ; r0 = memw (r16 + #28) }
    5524:	18 40 42 15 	15424018     { p0 = cmp.gtu (r2, r0) ; if (!p0.new) jump:nt 5554 <fgets+0x134>
    5528:	00 40 00 7f 	7f004000       nop
    552c:	00 c0 00 7f 	7f00c000       nop }
    5530:	f1 7f f1 bf 	bff17ff1     { r17 = add (r17, #-1)
    5534:	21 40 00 9b 	9b004021       r1 = memb (r0 ++ #1)
    5538:	00 c3 b2 a1 	a1b2c300       memb (r18 + #0) = r1.new }
    553c:	01 40 11 75 	75114001     { p1 = cmp.eq (r17, #0)
    5540:	07 c0 90 a1 	a190c007       memw (r16 + #28) = r0 }
    5544:	21 40 32 9b 	9b324021     { r1 = memub (r18 ++ #1)
    5548:	de ca 33 24 	2433cade       if (cmp.eq (r1.new, #10)) jump:nt 5500 <fgets+0xe0> }
    554c:	da 61 df 5c 	5cdf61da     { if (p1) jump 5500 <fgets+0xe0>
    5550:	f2 e0 32 15 	1532e0f2       p0 = cmp.gtu (r2, r0) ; if (p0.new) jump:t 5530 <fgets+0x110> }
    5554:	d6 40 f9 10 	10f940d6     { p0 = cmp.gt (r17, #0) ; if (!p0.new) jump:nt 5500 <fgets+0xe0>
    5558:	80 7f ff 59 	59ff7f80       jump 5454 <fgets+0x34>
    555c:	80 c0 90 43 	4390c080       if (p0.new) r0 = memw (r16 + #16) }
    5560:	a8 df 00 5a 	5a00dfa8     call 94b0 <_Unlockfilelock>
    5564:	d8 ff ff 59 	59ffffd8     jump 5514 <fgets+0xf4>
    5568:	00 c0 00 7f 	7f00c000     nop
    556c:	00 c0 00 7f 	7f00c000     nop

00005570 <floor>:
    5570:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    5574:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    5578:	00 60 3d 73 	733d6000     { r1:0 = combine (#0, r29)
    557c:	fc 4a 00 5a 	5a004afc       call 6b70 <_Dint>
    5580:	00 d0 dd a1 	a1ddd000       memd (r29 + #0) = r17:16 }
    5584:	08 41 c0 11 	11c04108     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 5594 <floor+0x24>
    5588:	c0 c4 c0 49 	49c0c4c0       r1:0 = memd (gp + #304) }
    558c:	0c 1e 00 3e 	3e001e0c     r1:0 = memd (sp + #0) ; r17:16 = memd (sp + #8)
    5590:	1e c0 1e 96 	961ec01e     dealloc_return
    5594:	20 50 e0 d2 	d2e05020     { p0 = dfcmp.gt (r1:0, r17:16)
    5598:	00 40 dd 91 	91dd4000       r1:0 = memd (r29 + #0)
    559c:	82 c4 c0 49 	49c0c482       r3:2 = memd (gp + #288) }
    55a0:	f6 60 ff 5c 	5cff60f6     { if !p0 jump 558c <floor+0x1c>
    55a4:	e2 ca 01 5a 	5a01cae2       call eb64 <__hexagon_subdf3> }
    55a8:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    55ac:	00 c0 00 7f 	7f00c000     nop

000055b0 <fopen>:
    55b0:	10 40 60 70 	70604010     { r16 = r0
    55b4:	40 40 00 78 	78004040       r0 = #2
    55b8:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    55bc:	ba 5f 00 5a 	5a005fba     { call 9530 <_Locksyslock>
    55c0:	01 c1 9d a1 	a19dc101       memw (r29 + #4) = r1 }
    55c4:	86 cd 00 5a 	5a00cd86     call 70d0 <_Fofind>
    55c8:	00 40 70 70 	70704000     { r0 = r16
    55cc:	e3 7f df 78 	78df7fe3       r3 = #-1
    55d0:	11 3c 02 50 	50023c11       r2 = r0 ; r1 = memw (sp + #4) }
    55d4:	ae cd 00 5a 	5a00cdae     call 7130 <_Foprep>
    55d8:	5c 5f 00 5a 	5a005f5c     { call 9490 <_Unlocksyslock>
    55dc:	08 30 20 28 	28203008       r0 = #2 ; r16 = r0 }
    55e0:	00 40 70 70 	70704000     { r0 = r16
    55e4:	40 1f 0c 3e 	3e0c1f40       r17:16 = memd (sp + #8) ; dealloc_return }
    55e8:	00 c0 00 7f 	7f00c000     nop
    55ec:	00 c0 00 7f 	7f00c000     nop

000055f0 <fprintf>:
    55f0:	65 44 00 00 	00004465     { immext (#72000)
    55f4:	10 44 00 78 	78004410       r16 = ##72032
    55f8:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    55fc:	12 40 60 70 	70604012     { r18 = r0
    5600:	00 40 70 70 	70704000       r0 = r16
    5604:	05 2a 19 70 	70192a05       r17 = r1 ; memd (sp + #0) = r19:18 }
    5608:	cc df 00 5a 	5a00dfcc     call 95a0 <_Lockfilelock>
    560c:	02 40 71 70 	70714002     { r2 = r17
    5610:	a1 30 63 2c 	2c6330a1       r3 = add (sp, #24) ; r1 = r18 }
    5614:	59 41 00 00 	00004159     { immext (#22080)
    5618:	00 40 00 78 	78004000       r0 = ##22080
    561c:	16 d6 00 5a 	5a00d616       call 8240 <_Printf> }
    5620:	48 5f 00 5a 	5a005f48     { call 94b0 <_Unlockfilelock>
    5624:	80 30 09 30 	30093080       r17 = r0 ; r0 = r16 }
    5628:	00 40 71 70 	70714000     { r0 = r17
    562c:	0c 1e 05 3e 	3e051e0c       r19:18 = memd (sp + #0) ; r17:16 = memd (sp + #8) }
    5630:	1e c0 1e 96 	961ec01e     dealloc_return
    5634:	00 40 00 7f 	7f004000     { nop
    5638:	00 40 00 7f 	7f004000       nop
    563c:	00 c0 00 7f 	7f00c000       nop }

00005640 <prout>:
    5640:	10 40 60 70 	70604010     { r16 = r0
    5644:	20 60 21 73 	73216020       r1:0 = combine (#1, r1)
    5648:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    564c:	ba 40 00 5a 	5a0040ba     { call 57c0 <fwrite>
    5650:	29 30 83 30 	30833029       r3 = r16 ; r17 = r2 }
    5654:	00 51 00 f2 	f2005100     { p0 = cmp.eq (r0, r17)
    5658:	10 e0 80 7e 	7e80e010       if !p0.new r16 = #0 }
    565c:	00 40 70 70 	70704000     { r0 = r16
    5660:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    5664:	00 c0 00 7f 	7f00c000     nop
    5668:	00 c0 00 7f 	7f00c000     nop
    566c:	00 c0 00 7f 	7f00c000     nop

00005670 <free>:
    5670:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    5674:	10 40 60 70 	70604010       r16 = r0
    5678:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    567c:	11 7f f0 bf 	bff07f11     { r17 = add (r16, #-8)
    5680:	0e 40 00 5c 	5c00400e       if (p0) jump 5698 <free+0x28>
    5684:	ff 7f ff 0f 	0fff7fff       immext (#4294967232)
    5688:	00 c7 80 45 	4580c700       if !p0 r0 = memw (r0 + ##4294967288) }
    568c:	06 c7 40 11 	1140c706     p0 = cmp.gtu (r0, #7) ; if (!p0.new) jump:nt 5698 <free+0x28>
    5690:	e0 40 00 76 	760040e0     { r0 = and (r0, #7)
    5694:	06 c0 02 24 	2402c006       if (cmp.eq (r0.new, #0)) jump:nt 569c <free+0x2c> }
    5698:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return
    569c:	20 40 00 78 	78004020     { r0 = #1
    56a0:	4a df 00 5a 	5a00df4a       call 9530 <_Locksyslock> }
    56a4:	40 c2 80 49 	4980c240     r0 = memw (gp + #72)
    56a8:	04 40 00 10 	10004004     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 56b0 <free+0x40>
    56ac:	1c d9 40 15 	1540d91c       p1 = cmp.gtu (r0, r17) ; if (!p1.new) jump:nt 56e0 <free+0x70> }
    56b0:	01 40 91 a1 	a1914001     { memw (r17 + #4) = r0
    56b4:	12 d1 80 48 	4880d112       memw (gp + #72) = r17 }
    56b8:	0c 40 00 5c 	5c00400c     { if (p0) jump 56d0 <free+0x60>
    56bc:	01 c0 91 45 	4591c001       if !p0 r1 = memw (r17 + #0) }
    56c0:	02 c1 11 f3 	f311c102     r2 = add (r17, r1)
    56c4:	32 42 00 14 	14004232     { p0 = cmp.eq (r0, r2) ; if (p0.new) jump:nt 5728 <free+0xb8>
    56c8:	03 40 80 43 	43804003       if (p0.new) r3 = memw (r0 + #0)
    56cc:	20 c0 91 43 	4391c020       if (p0.new) r0 = memw (r17 + #4) }
    56d0:	f7 40 00 00 	000040f7     { immext (#15808)
    56d4:	00 41 00 16 	16004100       r0 = #1 ; jump 9490 <_Unlocksyslock>
    56d8:	00 1f 04 3e 	3e041f00       r17:16 = memd (sp + #0) ; deallocframe }
    56dc:	08 c1 20 5c 	5c20c108     if !p1 jump 56ec <free+0x7c>
    56e0:	00 01 01 50 	50010100     r1 = r0 ; r0 = memw (r0 + #4)
    56e4:	01 40 71 f2 	f2714001     { p1 = cmp.gtu (r17, r0)
    56e8:	fc e0 70 10 	1070e0fc       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:t 56dc <free+0x6c> }
    56ec:	03 c0 81 91 	9181c003     r3 = memw (r1 + #0)
    56f0:	02 43 01 f3 	f3014302     { r2 = add (r1, r3)
    56f4:	f0 d1 32 21 	2132d1f0       if (cmp.gtu (r2.new, r17)) jump:nt 56d0 <free+0x60> }
    56f8:	26 59 02 14 	14025926     { p1 = cmp.eq (r2, r17) ; if (p1.new) jump:nt 5744 <free+0xd4>
    56fc:	ff 7f ff 0f 	0fff7fff       immext (#4294967232)
    5700:	02 cf 90 43 	4390cf02       if (p1.new) r2 = memw (r16 + ##4294967288) }
    5704:	0a 40 00 5c 	5c00400a     { if (p0) jump 5718 <free+0xa8>
    5708:	ff 7f ff 0f 	0fff7fff       immext (#4294967232)
    570c:	02 c7 90 45 	4590c702       if !p0 r2 = memw (r16 + ##4294967288) }
    5710:	02 42 11 f3 	f3114202     { r2 = add (r17, r2)
    5714:	e0 c0 32 21 	2132c0e0       if (cmp.gtu (r2.new, r0)) jump:nt 56d0 <free+0x60> }
    5718:	19 01 90 a1 	a1900119     memw (r17 + #4) = r0 ; memw (r1 + #4) = r17
    571c:	20 c0 91 91 	9191c020     r0 = memw (r17 + #4)
    5720:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    5724:	cc ff ff 59 	59ffffcc       jump 56b8 <free+0x48> }
    5728:	01 41 03 f3 	f3034101     { r1 = add (r3, r1)
    572c:	01 4f 00 00 	00004f01       immext (#245824)
    5730:	00 01 42 48 	48420100       r2 = ##245828 ; r0 = memw (r0 + #4) }
    5734:	00 40 42 3c 	3c424000     { memw (r2 + #0) = #0
    5738:	01 c0 91 a1 	a191c001       memw (r17 + #4) = r0 }
    573c:	ca 7f ff 59 	59ff7fca     { jump 56d0 <free+0x60>
    5740:	00 c1 91 a1 	a191c100       memw (r17 + #0) = r1 }
    5744:	11 40 61 70 	70614011     { r17 = r1
    5748:	10 01 23 58 	58230110       r3 = add (r2, r3) ; r0 = memw (r1 + #4) }
    574c:	b6 7f ff 59 	59ff7fb6     { jump 56b8 <free+0x48>
    5750:	13 00 00 79 	79000013       p0 = cmp.eq (r0, #0) ; memw (r1 + #0) = r3 }
    5754:	00 c0 00 7f 	7f00c000     nop
    5758:	00 c0 00 7f 	7f00c000     nop
    575c:	00 c0 00 7f 	7f00c000     nop

00005760 <fscanf>:
    5760:	66 44 00 00 	00004466     { immext (#72064)
    5764:	10 46 00 78 	78004610       r16 = ##72112
    5768:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    576c:	12 40 60 70 	70604012     { r18 = r0
    5770:	00 40 70 70 	70704000       r0 = r16
    5774:	05 2a 19 70 	70192a05       r17 = r1 ; memd (sp + #0) = r19:18 }
    5778:	14 df 00 5a 	5a00df14     call 95a0 <_Lockfilelock>
    577c:	02 40 71 70 	70714002     { r2 = r17
    5780:	03 43 1d b0 	b01d4303       r3 = add (r29, #24)
    5784:	a1 30 04 28 	280430a1       r4 = #0 ; r1 = r18 }
    5788:	5e 41 00 00 	0000415e     { immext (#22400)
    578c:	00 46 00 78 	78004600       r0 = ##22448
    5790:	e4 db 00 5a 	5a00dbe4       call 8f50 <_Scanf> }
    5794:	8e 5e 00 5a 	5a005e8e     { call 94b0 <_Unlockfilelock>
    5798:	80 30 09 30 	30093080       r17 = r0 ; r0 = r16 }
    579c:	00 40 71 70 	70714000     { r0 = r17
    57a0:	0c 1e 05 3e 	3e051e0c       r19:18 = memd (sp + #0) ; r17:16 = memd (sp + #8) }
    57a4:	1e c0 1e 96 	961ec01e     dealloc_return
    57a8:	00 40 00 7f 	7f004000     { nop
    57ac:	00 c0 00 7f 	7f00c000       nop }

000057b0 <scin>:
    57b0:	06 40 42 10 	10424006     { p0 = cmp.eq (r2, #0) ; if (!p0.new) jump:nt 57bc <scin+0xc>
    57b4:	98 49 00 58 	58004998       jump 6ae0 <ungetc>
    57b8:	00 e1 00 fd 	fd00e100       if (p0.new) r1:0 = combine (r0, r1) }
    57bc:	ea e1 00 58 	5800e1ea     jump 9b90 <fgetc>

000057c0 <fwrite>:
    57c0:	10 48 01 5a 	5a014810     { call e7e0 <__save_r16_through_r25>
    57c4:	05 c0 9d a0 	a09dc005       allocframe (#40) }
    57c8:	18 41 02 ed 	ed024118     { r24 = mpyi (r2, r1)
    57cc:	0b 30 18 30 	3018300b       r16 = r1 ; r19 = r0 }
    57d0:	00 40 18 75 	75184000     { p0 = cmp.eq (r24, #0)
    57d4:	0c 48 00 5c 	5c00480c       if (p0.new) jump:nt 57e8 <fwrite+0x28>
    57d8:	42 3a 39 30 	30393a42       r17 = r3 ; if (p0.new) r2 = #0 }
    57dc:	00 40 63 70 	70634000     { r0 = r3
    57e0:	0a 40 41 10 	1041400a       p0 = cmp.eq (r1, #0) ; if (!p0.new) jump:nt 57f0 <fwrite+0x30>
    57e4:	14 c0 78 70 	7078c014       r20 = r24 }
    57e8:	41 42 00 00 	00004241     { immext (#36928)
    57ec:	38 c0 02 17 	1702c038       r0 = r2 ; jump e844 <__restore_r16_through_r25_and_deallocframe> }
    57f0:	17 40 02 78 	78024017     { r23 = #1024
    57f4:	d8 de 00 5a 	5a00ded8       call 95a0 <_Lockfilelock> }
    57f8:	20 40 00 58 	58004020     { jump 5838 <fwrite+0x78>
    57fc:	00 c0 00 7f 	7f00c000       nop }
    5800:	02 40 72 70 	70724002     { r2 = r18
    5804:	14 54 32 f3 	f3325414       r20 = sub (r20, r18)
    5808:	ab 38 b1 30 	30b138ab       r1 = r19 ; r19 = add (r18, r19) }
    580c:	22 c5 00 5a 	5a00c522     call 6250 <memcpy>
    5810:	00 40 16 75 	75164000     { p0 = cmp.eq (r22, #0)
    5814:	91 02 90 04 	04900291       r0 = memw (r17 + #16) ; r1 = memw (r17 + #8) }
    5818:	00 52 00 f3 	f3005200     { r0 = add (r0, r18)
    581c:	04 d2 b1 a1 	a1b1d204       memw (r17 + #16) = r0.new }
    5820:	0a 40 00 5c 	5c00400a     { if (p0) jump 5834 <fwrite+0x74>
    5824:	80 7d ff 5b 	5bff7d80       call 5320 <fflush>
    5828:	12 40 21 f3 	f3214012       r18 = sub (r0, r1)
    582c:	00 c0 71 70 	7071c000       r0 = r17 }
    5830:	68 c0 40 10 	1040c068     p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 5900 <fwrite+0x140>
    5834:	22 c0 0c 10 	100cc022     p0 = cmp.eq (r20, #0) ; if (p0.new) jump:nt 5878 <fwrite+0xb8>
    5838:	91 06 90 04 	04900691     r0 = memw (r17 + #16) ; r1 = memw (r17 + #24)
    583c:	44 c0 41 15 	1541c044     p0 = cmp.gtu (r1, r0) ; if (!p0.new) jump:nt 58c4 <fwrite+0x104>
    5840:	00 c0 71 91 	9171c000     r0 = memuh (r17 + #0)
    5844:	00 57 80 c7 	c7805700     { p0 = bitsclr (r0, r23)
    5848:	50 48 20 5c 	5c204850       if !p0.new jump:nt 58e4 <fwrite+0x124>
    584c:	12 60 14 74 	74146012       if (p0.new) r18 = add (r20, #0)
    5850:	16 e0 00 7e 	7e00e016       if (p0.new) r22 = #0 }
    5854:	9d 06 90 04 	0490069d     r0 = memw (r17 + #16) ; r21 = memw (r17 + #24)
    5858:	15 d5 20 f3 	f320d515     r21 = sub (r21, r0)
    585c:	d2 4d 7a 15 	157a4dd2     { p0 = cmp.gtu (r18, r21) ; if (!p0.new) jump:nt 5800 <fwrite+0x40>
    5860:	d2 30 b1 30 	30b130d2       r1 = r19 ; r2 = r21 }
    5864:	14 54 35 f3 	f3355414     { r20 = sub (r20, r21)
    5868:	f6 44 00 5a 	5a0044f6       call 6250 <memcpy>
    586c:	13 d5 13 f3 	f313d513       r19 = add (r19, r21) }
    5870:	e4 60 7c 10 	107c60e4     { p0 = cmp.eq (r20, #0) ; if (!p0.new) jump:t 5838 <fwrite+0x78>
    5874:	15 c2 51 3e 	3e51c215       memw (r17 + #16) += r21 }
    5878:	12 c0 00 78 	7800c012     r18 = #0
    587c:	00 c0 71 91 	9171c000     r0 = memuh (r17 + #0)
    5880:	00 4b 20 85 	85204b00     { p0 = !tstbit (r0, #11)
    5884:	10 48 00 5c 	5c004810       if (p0.new) jump:nt 58a0 <fwrite+0xe0>
    5888:	00 40 71 70 	70714000       r0 = r17
    588c:	52 c0 91 47 	4791c052       if !p0.new r18 = memw (r17 + #8) }
    5890:	48 7d ff 5b 	5bff7d48     { call 5320 <fflush>
    5894:	93 c0 91 91 	9191c093       r19 = memw (r17 + #16) }
    5898:	92 73 32 fb 	fb327392     { if !p0.new r18 = sub (r19, r18)
    589c:	4a 3a 00 39 	39003a4a       p0 = cmp.eq (r0, #0) ; if (p0.new) r18 = #0 }
    58a0:	00 40 71 70 	70714000     { r0 = r17
    58a4:	08 de 00 5a 	5a00de08       call 94b0 <_Unlockfilelock> }
    58a8:	00 40 78 70 	70784000     { r0 = r24
    58ac:	01 c0 70 70 	7070c001       r1 = r16 }
    58b0:	20 52 94 ef 	ef945220     { r0 -= add (r20, r18)
    58b4:	b0 c8 01 5a 	5a01c8b0       call ea10 <__hexagon_udivsi3> }
    58b8:	02 c0 60 70 	7060c002     r2 = r0
    58bc:	3e 42 00 00 	0000423e     { immext (#36736)
    58c0:	10 c0 02 17 	1702c010       r0 = r2 ; jump e844 <__restore_r16_through_r25_and_deallocframe> }
    58c4:	00 40 71 70 	70714000     { r0 = r17
    58c8:	5e cd 00 5a 	5a00cd5e       call 7380 <_Fwprep> }
    58cc:	d6 c1 f0 11 	11f0c1d6     p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 5878 <fwrite+0xb8>
    58d0:	00 c0 71 91 	9171c000     r0 = memuh (r17 + #0)
    58d4:	00 57 80 c7 	c7805700     { p0 = bitsclr (r0, r23)
    58d8:	c0 78 df 5c 	5cdf78c0       if (p0.new) jump:t 5854 <fwrite+0x94>
    58dc:	12 60 14 74 	74146012       if (p0.new) r18 = add (r20, #0)
    58e0:	16 e0 00 7e 	7e00e016       if (p0.new) r22 = #0 }
    58e4:	40 61 33 73 	73336140     { r1:0 = combine (#10, r19)
    58e8:	d6 40 00 5a 	5a0040d6       call 5a90 <memchr>
    58ec:	02 c0 74 70 	7074c002       r2 = r20 }
    58f0:	33 52 80 db 	db805233     { r18 = add (r0, sub (#1, r19))
    58f4:	0e 40 00 10 	1000400e       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 590c <fwrite+0x14c>
    58f8:	16 c0 60 70 	7060c016       r22 = r0 }
    58fc:	ac ff ff 59 	59ffffac     jump 5854 <fwrite+0x94>
    5900:	d0 68 df 5c 	5cdf68d0     { if (p0.new) jump:nt 58a0 <fwrite+0xe0>
    5904:	be 7f ff 59 	59ff7fbe       jump 587c <fwrite+0xbc>
    5908:	10 c0 12 75 	7512c010       p0 = !cmp.eq (r18, #0) }
    590c:	a4 ca 3c 17 	173ccaa4     r18 = r20 ; jump 5854 <fwrite+0x94>

00005910 <malloc>:
    5910:	10 40 60 70 	70604010     { r16 = r0
    5914:	20 40 00 78 	78004020       r0 = #1
    5918:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    591c:	f1 41 10 b0 	b01041f1     { r17 = add (r16, #15)
    5920:	0a de 00 5a 	5a00de0a       call 9530 <_Locksyslock> }
    5924:	11 7f 31 76 	76317f11     { r17 = and (r17, #-8)
    5928:	22 42 80 49 	49804222       r2 = memw (gp + #68)
    592c:	9c d0 45 21 	2145d09c       if (!cmp.gtu (r17.new, r16)) jump:nt 5a5c <malloc+0x14c> }
    5930:	e0 40 91 75 	759140e0     { p0 = cmp.gtu (r17, #7)
    5934:	11 e1 80 7e 	7e80e111       if !p0.new r17 = #8 }
    5938:	4a 40 02 10 	1002404a     { p0 = cmp.eq (r2, #0) ; if (p0.new) jump:nt 59cc <malloc+0xbc>
    593c:	00 c0 00 7f 	7f00c000       nop }
    5940:	03 40 82 91 	91824003     { r3 = memw (r2 + #0)
    5944:	18 c0 03 24 	2403c018       if (cmp.eq (r3.new, #0)) jump:nt 5970 <malloc+0x60> }
    5948:	00 c0 83 91 	9183c000     r0 = memw (r3 + #0)
    594c:	00 60 03 74 	74036000     { if (p0.new) r0 = add (r3, #0)
    5950:	5a 40 49 15 	1549405a       p0 = cmp.gtu (r17, r0) ; if (!p0.new) jump:nt 5a00 <malloc+0xf0>
    5954:	10 c0 63 70 	7063c010       r16 = r3 }
    5958:	04 c0 00 58 	5800c004     jump 5960 <malloc+0x50>
    595c:	4e c1 49 15 	1549c14e     p0 = cmp.gtu (r17, r1) ; if (!p0.new) jump:nt 59f8 <malloc+0xe8>
    5960:	82 40 00 b0 	b0004082     { r2 = add (r0, #4)
    5964:	20 c0 80 91 	9180c020       r0 = memw (r0 + #4) }
    5968:	fa 60 70 10 	107060fa     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:t 595c <malloc+0x4c>
    596c:	01 c0 80 47 	4780c001       if !p0.new r1 = memw (r0 + #0) }
    5970:	50 c2 80 49 	4980c250     r16 = memw (gp + #72)
    5974:	12 48 03 14 	14034812     { p0 = cmp.eq (r3, r16) ; if (p0.new) jump:nt 5998 <malloc+0x88>
    5978:	00 c0 90 47 	4790c000       if !p0.new r0 = memw (r16 + #0) }
    597c:	06 60 09 15 	15096006     { p0 = cmp.gtu (r17, r0) ; if (p0.new) jump:t 5988 <malloc+0x78>
    5980:	78 c0 00 58 	5800c078       jump 5a6c <malloc+0x15c> }
    5984:	3a c0 49 15 	1549c03a     p0 = cmp.gtu (r17, r0) ; if (!p0.new) jump:nt 59f8 <malloc+0xe8>
    5988:	82 40 10 b0 	b0104082     { r2 = add (r16, #4)
    598c:	30 c0 90 91 	9190c030       r16 = memw (r16 + #4) }
    5990:	fa 68 73 14 	147368fa     { p0 = cmp.eq (r3, r16) ; if (!p0.new) jump:t 5984 <malloc+0x74>
    5994:	00 c0 90 47 	4790c000       if !p0.new r0 = memw (r16 + #0) }
    5998:	06 40 00 58 	58004006     { jump 59a4 <malloc+0x94>
    599c:	10 c1 80 49 	4980c110       r16 = memw (gp + #32) }
    59a0:	5e c1 00 5c 	5c00c15e     if (p1) jump 5a5c <malloc+0x14c>
    59a4:	90 d1 d0 d5 	d5d0d190     r16 = maxu (r16, r17)
    59a8:	00 40 70 70 	70704000     { r0 = r16
    59ac:	64 cd 00 5a 	5a00cd64       call 7470 <_Getmem> }
    59b0:	30 41 10 8c 	8c104130     { r16 = lsr (r16, #1)
    59b4:	f8 60 30 10 	103060f8       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:t 59a0 <malloc+0x90>
    59b8:	01 d0 11 f2 	f211d001       p1 = cmp.eq (r17, r16) }
    59bc:	00 41 00 b0 	b0004100     { r0 = add (r0, #8)
    59c0:	5a fe ff 5b 	5bfffe5a       call 5670 <free> }
    59c4:	22 42 80 49 	49804222     { r2 = memw (gp + #68)
    59c8:	be c0 72 24 	2472c0be       if (!cmp.eq (r2.new, #0)) jump:nt 5940 <malloc+0x30> }
    59cc:	50 42 80 49 	49804250     { r16 = memw (gp + #72)
    59d0:	e6 c0 32 24 	2432c0e6       if (cmp.eq (r16.new, #0)) jump:nt 5998 <malloc+0x88> }
    59d4:	00 c0 90 91 	9190c000     r0 = memw (r16 + #0)
    59d8:	06 60 09 15 	15096006     { p0 = cmp.gtu (r17, r0) ; if (p0.new) jump:t 59e4 <malloc+0xd4>
    59dc:	4a c0 00 58 	5800c04a       jump 5a6c <malloc+0x15c> }
    59e0:	0c c0 49 15 	1549c00c     p0 = cmp.gtu (r17, r0) ; if (!p0.new) jump:nt 59f8 <malloc+0xe8>
    59e4:	82 40 10 b0 	b0104082     { r2 = add (r16, #4)
    59e8:	30 c0 90 91 	9190c030       r16 = memw (r16 + #4) }
    59ec:	fa 60 78 10 	107860fa     { p0 = cmp.eq (r16, #0) ; if (!p0.new) jump:t 59e0 <malloc+0xd0>
    59f0:	d6 7f ff 59 	59ff7fd6       jump 5998 <malloc+0x88>
    59f4:	00 c0 90 47 	4790c000       if !p0.new r0 = memw (r16 + #0) }
    59f8:	10 c0 82 91 	9182c010     r16 = memw (r2 + #0)
    59fc:	00 c0 90 91 	9190c000     r0 = memw (r16 + #0)
    5a00:	00 ff e0 bf 	bfe0ff00     r0 = add (r0, #-8)
    5a04:	18 40 49 15 	15494018     { p0 = cmp.gtu (r17, r0) ; if (!p0.new) jump:nt 5a34 <malloc+0x124>
    5a08:	21 40 90 43 	43904021       if (p0.new) r1 = memw (r16 + #4)
    5a0c:	00 d3 a2 42 	42a2d300       if (p0.new) memw (r2 + #0) = r1.new }
    5a10:	24 c0 01 10 	1001c024     p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt 5a58 <malloc+0x148>
    5a14:	20 c0 81 91 	9181c020     r0 = memw (r1 + #4)
    5a18:	81 60 81 74 	74816081     { if !p0.new r1 = add (r1, #4)
    5a1c:	20 c0 00 10 	1000c020       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 5a58 <malloc+0x148> }
    5a20:	20 40 00 78 	78004020     { r0 = #1
    5a24:	38 5d 00 5a 	5a005d38       call 9490 <_Unlocksyslock>
    5a28:	11 c1 80 48 	4880c111       memw (gp + #68) = r1 }
    5a2c:	00 41 10 b0 	b0104100     { r0 = add (r16, #8)
    5a30:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    5a34:	00 51 10 f3 	f3105100     { r0 = add (r16, r17)
    5a38:	03 40 90 91 	91904003       r3 = memw (r16 + #0)
    5a3c:	00 d4 a2 a1 	a1a2d400       memw (r2 + #0) = r0.new }
    5a40:	03 43 31 f3 	f3314303     { r3 = sub (r3, r17)
    5a44:	21 40 90 91 	91904021       r1 = memw (r16 + #4)
    5a48:	01 d3 a0 a1 	a1a0d301       memw (r0 + #4) = r1.new }
    5a4c:	01 c0 82 91 	9182c001     r1 = memw (r2 + #0)
    5a50:	e2 60 71 10 	107160e2     { p0 = cmp.eq (r1, #0) ; if (!p0.new) jump:t 5a14 <malloc+0x104>
    5a54:	89 00 13 a0 	a0130089       memw (r1 + #0) = r3 ; memw (r16 + #0) = r17 }
    5a58:	e4 c0 31 16 	1631c0e4     r1 = #0 ; jump 5a20 <malloc+0x110>
    5a5c:	20 40 00 78 	78004020     { r0 = #1
    5a60:	1a dd 00 5a 	5a00dd1a       call 9490 <_Unlocksyslock> }
    5a64:	00 40 00 78 	78004000     { r0 = #0
    5a68:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    5a6c:	01 4f 00 00 	00004f01     { immext (#245824)
    5a70:	02 41 00 78 	78004102       r2 = ##245832
    5a74:	ca ff ff 59 	59ffffca       jump 5a00 <malloc+0xf0> }
    5a78:	00 40 00 7f 	7f004000     { nop
    5a7c:	00 c0 00 7f 	7f00c000       nop }

00005a80 <dkw_malloc_init>:
    5a80:	20 c1 81 db 	db81c120     r1 = add (r1, sub (#1, r0))
    5a84:	21 43 01 8c 	8c014321     { r1 = lsr (r1, #3)
    5a88:	f6 7d ff 59 	59ff7df6       jump 5670 <free>
    5a8c:	10 d5 a0 ab 	aba0d510       memw (r0 ++ #8) = r1.new }

00005a90 <memchr>:
    5a90:	14 c0 02 10 	1002c014     p0 = cmp.eq (r2, #0) ; if (p0.new) jump:nt 5ab8 <memchr+0x28>
    5a94:	03 10 11 57 	57111003     r1 = and (r1, #255) ; r3 = memub (r0 + #0)
    5a98:	0a c1 43 14 	1443c10a     p0 = cmp.eq (r3, r1) ; if (!p0.new) jump:nt 5aac <memchr+0x1c>
    5a9c:	00 c0 9f 52 	529fc000     jumpr r31
    5aa0:	03 c0 20 91 	9120c003     r3 = memub (r0 + #0)
    5aa4:	00 41 03 f2 	f2034100     { p0 = cmp.eq (r3, r1)
    5aa8:	00 c8 5f 53 	535fc800       if (p0.new) jumpr:nt r31 }
    5aac:	20 40 00 b0 	b0004020     { r0 = add (r0, #1)
    5ab0:	e2 7f e2 bf 	bfe27fe2       r2 = add (r2, #-1)
    5ab4:	fa c0 72 24 	2472c0fa       if (!cmp.eq (r2.new, #0)) jump:nt 5aa0 <memchr+0x10> }
    5ab8:	c0 3f 00 48 	48003fc0     r0 = #0 ; jumpr lr
    5abc:	00 c0 00 7f 	7f00c000     nop

00005ac0 <_Pow>:
    5ac0:	80 46 01 5a 	5a014680     { call e7c0 <__save_r16_through_r27>
    5ac4:	20 c0 9d a0 	a09dc020       allocframe (#256) }
    5ac8:	12 40 64 70 	70644012     { r18 = r4
    5acc:	16 58 1d b0 	b01d5816       r22 = add (r29, #192)
    5ad0:	20 2a 88 6c 	6c882a20       r16 = add (sp, #32) ; memd (sp + #32) = r1:0 }
    5ad4:	01 40 70 70 	70704001     { r1 = r16
    5ad8:	c0 59 1d b0 	b01d59c0       r0 = add (r29, #206)
    5adc:	c1 0a 19 ea 	ea190ac1       memd (sp + #24) = r3:2 ; memd (sp + #192) = r3:2 }
    5ae0:	08 c9 00 5a 	5a00c908     call 6cf0 <_Dunscale>
    5ae4:	11 40 60 70 	70604011     { r17 = r0
    5ae8:	e0 3d a0 39 	39a03de0       p0 = cmp.eq (r18, #0) ; r1:0 = combine (#0, r22) }
    5aec:	33 40 00 7a 	7a004033     { r19 = mux (p0, #1, #0)
    5af0:	42 c8 00 5a 	5a00c842       call 6b70 <_Dint> }
    5af4:	00 40 13 85 	85134000     { p0 = tstbit (r19, #0)
    5af8:	00 c0 b2 39 	39b2c000       if !p0.new memh (r18 + #0) = #0 }
    5afc:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
    5b00:	34 40 00 7a 	7a004034     { r20 = mux (p0, #1, #0)
    5b04:	0c 40 20 5c 	5c20400c       if !p0 jump 5b18 <_Pow+0x58>
    5b08:	c2 44 c0 49 	49c044c2       r3:2 = memd (gp + #304)
    5b0c:	64 c0 dd 91 	91ddc064       r5:4 = memd (r29 + #24) }
    5b10:	00 c2 e4 d2 	d2e4c200     p0 = dfcmp.eq (r5:4, r3:2)
    5b14:	38 c0 00 5c 	5c00c038     if (p0) jump 5b84 <_Pow+0xc4>
    5b18:	22 c1 c9 11 	11c9c122     p0 = cmp.gt (r17, #-1) ; if (!p0.new) jump:nt 5b5c <_Pow+0x9c>
    5b1c:	48 c0 c0 12 	12c0c048     p1 = cmp.gt (r0, #0) ; if (!p1.new) jump:nt 5bac <_Pow+0xec>
    5b20:	1c 42 09 10 	1009421c     { p0 = cmp.eq (r17, #2) ; if (p0.new) jump:nt 5b58 <_Pow+0x98>
    5b24:	80 c0 dd 43 	43ddc080       if (p0.new) r1:0 = memd (r29 + #32) }
    5b28:	18 42 00 10 	10004218     { p0 = cmp.eq (r0, #2) ; if (p0.new) jump:nt 5b58 <_Pow+0x98>
    5b2c:	60 c0 dd 43 	43ddc060       if (p0.new) r1:0 = memd (r29 + #24) }
    5b30:	2e c1 09 10 	1009c12e     p0 = cmp.eq (r17, #1) ; if (p0.new) jump:nt 5b8c <_Pow+0xcc>
    5b34:	12 40 00 00 	00004012     { immext (#1152)
    5b38:	30 41 00 10 	10004130       p0 = cmp.eq (r0, #1) ; if (p0.new) jump:nt 5fcc <_Pow+0x50c>
    5b3c:	e0 c1 5d 91 	915dc1e0       r0 = memh (r29 + #30) }
    5b40:	16 40 00 00 	00004016     { immext (#1408)
    5b44:	18 c1 c0 11 	11c0c118       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 60cc <_Pow+0x60c> }
    5b48:	e0 7f 36 73 	73367fe0     { r1:0 = combine (#-1, r22)
    5b4c:	12 40 00 00 	00004012       immext (#1152)
    5b50:	38 c3 8c 11 	118cc338       p0 = tstbit (r20, #0) ; if (p0.new) jump:nt 5fe4 <_Pow+0x524> }
    5b54:	c0 c4 c0 49 	49c0c4c0     r1:0 = memd (gp + #304)
    5b58:	74 c6 01 58 	5801c674     jump e840 <__restore_r16_through_r27_and_deallocframe>
    5b5c:	e1 4c 5d 91 	915d4ce1     { r1 = memh (r29 + #206)
    5b60:	e0 c1 73 24 	2473c1e0       if (!cmp.eq (r1.new, #1)) jump:nt 5b1c <_Pow+0x5c> }
    5b64:	82 40 dd 91 	91dd4082     { r3:2 = memd (r29 + #32)
    5b68:	04 c5 c0 49 	49c0c504       r5:4 = memd (gp + #320) }
    5b6c:	01 c4 e2 d2 	d2e2c401     p1 = dfcmp.eq (r3:2, r5:4)
    5b70:	0a c1 00 5c 	5c00c10a     if (p1) jump 5b84 <_Pow+0xc4>
    5b74:	d4 61 70 12 	127061d4     { p1 = cmp.eq (r0, #1) ; if (!p1.new) jump:t 5b1c <_Pow+0x5c>
    5b78:	64 c4 c0 49 	49c0c464       r5:4 = memd (gp + #280) }
    5b7c:	00 c4 e2 d2 	d2e2c400     p0 = dfcmp.eq (r3:2, r5:4)
    5b80:	d8 e0 ff 5c 	5cffe0d8     if !p0 jump 5b30 <_Pow+0x70>
    5b84:	5e 46 01 58 	5801465e     { jump e840 <__restore_r16_through_r27_and_deallocframe>
    5b88:	80 c4 c0 49 	49c0c480       r1:0 = memd (gp + #288) }
    5b8c:	60 40 50 91 	91504060     { r0 = memh (r16 + #6)
    5b90:	14 40 00 00 	00004014       immext (#1280)
    5b94:	28 c0 c2 26 	26c2c028       if (!cmp.gt (r0.new, #-1)) jump:nt 60a0 <_Pow+0x5e0> }
    5b98:	e0 41 5d 91 	915d41e0     { r0 = memh (r29 + #30)
    5b9c:	de c0 f2 26 	26f2c0de       if (!cmp.gt (r0.new, #-1)) jump:nt 5b54 <_Pow+0x94> }
    5ba0:	50 46 01 58 	58014650     { jump e840 <__restore_r16_through_r27_and_deallocframe>
    5ba4:	68 44 00 00 	00004468       immext (#72192)
    5ba8:	00 c6 c0 49 	49c0c600       r1:0 = memd (gp + ##72240) }
    5bac:	ba e0 df 5c 	5cdfe0ba     if (p0) jump 5b20 <_Pow+0x60>
    5bb0:	60 40 50 91 	91504060     { r0 = memh (r16 + #6)
    5bb4:	8a c0 d2 26 	26d2c08a       if (!cmp.gt (r0.new, #-1)) jump:nt 5ec4 <_Pow+0x404> }
    5bb8:	94 40 dd 91 	91dd4094     { r21:20 = memd (r29 + #32)
    5bbc:	c0 c4 c0 49 	49c0c4c0       r1:0 = memd (gp + #304) }
    5bc0:	20 c0 f4 d2 	d2f4c020     p0 = dfcmp.gt (r21:20, r1:0)
    5bc4:	42 5f d5 8c 	8cd55f42     { r2 = togglebit (r21, #31)
    5bc8:	5e 60 20 5c 	5c20605e       if !p0 jump 5e80 <_Pow+0x3c0>
    5bcc:	11 40 00 7e 	7e004011       if (p0) r17 = #0
    5bd0:	e0 cc 5d 91 	915dcce0       r0 = memh (r29 + #206) }
    5bd4:	64 41 10 10 	10104164     { p0 = cmp.eq (r0, #1) ; if (p0.new) jump:nt 5e9c <_Pow+0x3dc>
    5bd8:	00 40 00 7f 	7f004000       nop
    5bdc:	00 c0 00 7f 	7f00c000       nop }
    5be0:	00 54 15 f5 	f5155400     { r1:0 = combine (r21, r20)
    5be4:	00 4a 01 5a 	5a014a00       call efe0 <__hexagon_muldf3>
    5be8:	a2 c8 c0 49 	49c0c8a2       r3:2 = memd (gp + #552) }
    5bec:	6a 47 01 5a 	5a01476a     { call eac0 <__hexagon_adddf3>
    5bf0:	02 c5 c0 49 	49c0c502       r3:2 = memd (gp + #320) }
    5bf4:	36 40 e0 88 	88e04036     { r22 = convert_df2w (r1:0):chop
    5bf8:	c2 c8 c0 49 	49c0c8c2       r3:2 = memd (gp + #560) }
    5bfc:	16 fc f6 bf 	bff6fc16     r22 = add (r22, #-32)
    5c00:	40 40 96 84 	84964040     { r1:0 = convert_w2df (r22)
    5c04:	56 c5 16 8c 	8c16c556       r22 = asl (r22, #5) }
    5c08:	ec c9 01 5a 	5a01c9ec     call efe0 <__hexagon_muldf3>
    5c0c:	5a 47 01 5a 	5a01475a     { call eac0 <__hexagon_adddf3>
    5c10:	02 c5 c0 49 	49c0c502       r3:2 = memd (gp + #320) }
    5c14:	18 40 01 f5 	f5014018     { r25:24 = combine (r1, r0)
    5c18:	00 40 00 7f 	7f004000       nop
    5c1c:	00 c0 00 7f 	7f00c000       nop }
    5c20:	02 58 19 f5 	f5195802     { r3:2 = combine (r25, r24)
    5c24:	00 54 15 f5 	f5155400       r1:0 = combine (r21, r20)
    5c28:	51 44 00 00 	00004451       immext (#70720)
    5c2c:	17 c0 00 78 	7800c017       r23 = ##70720 }
    5c30:	9a c7 01 5a 	5a01c79a     call eb64 <__hexagon_subdf3>
    5c34:	02 54 15 f5 	f5155402     { r3:2 = combine (r21, r20)
    5c38:	46 47 01 5a 	5a014746       call eac0 <__hexagon_adddf3>
    5c3c:	00 58 19 f5 	f5195800       r1:0 = combine (r25, r24)
    5c40:	04 c0 dd a1 	a1ddc004       memd (r29 + #32) = r1:0 }
    5c44:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    5c48:	7e 48 01 5a 	5a01487e       call ed40 <__hexagon_divdf3>
    5c4c:	80 c0 dd 91 	91ddc080       r1:0 = memd (r29 + #32) }
    5c50:	04 56 17 f3 	f3175604     { r4 = add (r23, r22)
    5c54:	02 40 01 f5 	f5014002       r3:2 = combine (r1, r0)
    5c58:	1a 40 01 f5 	f501401a       r27:26 = combine (r1, r0)
    5c5c:	05 d6 bd a1 	a1bdd605       memw (r29 + #20) = r4.new }
    5c60:	c0 c9 01 5a 	5a01c9c0     call efe0 <__hexagon_muldf3>
    5c64:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    5c68:	01 c0 9d a1 	a19dc001       memw (r29 + #4) = r0 }
    5c6c:	12 4c 00 5a 	5a004c12     { call 7490 <_Logpoly>
    5c70:	00 c3 9d a1 	a19dc300       memw (r29 + #0) = r3 }
    5c74:	26 1e 12 3c 	3c121e26     r2 = memw (sp + #4) ; r21:20 = memd (sp + #32)
    5c78:	b4 49 01 5a 	5a0149b4     { call efe0 <__hexagon_muldf3>
    5c7c:	03 c0 9d 91 	919dc003       r3 = memw (r29 + #0) }
    5c80:	02 54 15 f5 	f5155402     { r3:2 = combine (r21, r20)
    5c84:	72 c7 01 5a 	5a01c772       call eb64 <__hexagon_subdf3> }
    5c88:	04 40 01 f5 	f5014004     { r5:4 = combine (r1, r0)
    5c8c:	02 58 19 f5 	f5195802       r3:2 = combine (r25, r24)
    5c90:	80 c4 c0 49 	49c0c480       r1:0 = memd (gp + #288) }
    5c94:	68 47 01 5a 	5a014768     { call eb64 <__hexagon_subdf3>
    5c98:	15 08 04 e8 	e8040815       memw (sp + #0) = r4 ; memw (sp + #4) = r5 }
    5c9c:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    5ca0:	12 c7 01 5a 	5a01c712       call eac0 <__hexagon_adddf3> }
    5ca4:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    5ca8:	15 1c 04 3c 	3c041c15       r4 = memw (sp + #0) ; r5 = memw (sp + #4) }
    5cac:	00 44 05 f5 	f5054400     { r1:0 = combine (r5, r4)
    5cb0:	0a c7 01 5a 	5a01c70a       call eac0 <__hexagon_adddf3> }
    5cb4:	02 5a 1b f5 	f51b5a02     { r3:2 = combine (r27, r26)
    5cb8:	96 c9 01 5a 	5a01c996       call efe0 <__hexagon_muldf3> }
    5cbc:	18 40 01 f5 	f5014018     { r25:24 = combine (r1, r0)
    5cc0:	00 d4 15 f5 	f515d400       r1:0 = combine (r21, r20) }
    5cc4:	02 58 19 f5 	f5195802     { r3:2 = combine (r25, r24)
    5cc8:	fe c6 01 5a 	5a01c6fe       call eac0 <__hexagon_adddf3> }
    5ccc:	3a 48 01 5a 	5a01483a     { call ed40 <__hexagon_divdf3>
    5cd0:	e2 48 c0 49 	49c048e2       r3:2 = memd (gp + #568)
    5cd4:	01 c0 dd a1 	a1ddc001       memd (r29 + #8) = r1:0 }
    5cd8:	04 40 01 f5 	f5014004     { r5:4 = combine (r1, r0)
    5cdc:	fa cc 5d 91 	915dccfa       r26 = memh (r29 + #206) }
    5ce0:	5a 40 9a 84 	849a405a     { r27:26 = convert_w2df (r26)
    5ce4:	02 56 d7 3a 	3ad75602       r3:2 = memd (r23 + r22 << #0)
    5ce8:	00 c4 9d a1 	a19dc400       memw (r29 + #0) = r4 }
    5cec:	00 5a 1b f5 	f51b5a00     { r1:0 = combine (r27, r26)
    5cf0:	ea 46 01 5a 	5a0146ea       call eac0 <__hexagon_adddf3>
    5cf4:	01 c5 9d a1 	a19dc501       memw (r29 + #4) = r5 }
    5cf8:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    5cfc:	15 1c 04 3c 	3c041c15       r4 = memw (sp + #0) ; r5 = memw (sp + #4) }
    5d00:	00 44 05 f5 	f5054400     { r1:0 = combine (r5, r4)
    5d04:	e0 c6 01 5a 	5a01c6e0       call eac0 <__hexagon_adddf3> }
    5d08:	76 c0 dd 91 	91ddc076     r23:22 = memd (r29 + #24)
    5d0c:	02 56 17 f5 	f5175602     { r3:2 = combine (r23, r22)
    5d10:	6a 49 01 5a 	5a01496a       call efe0 <__hexagon_muldf3>
    5d14:	18 c0 dd a1 	a1ddc018       memd (r29 + #192) = r1:0 }
    5d18:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    5d1c:	04 49 c0 49 	49c04904       r5:4 = memd (gp + #576)
    5d20:	17 c0 dd a1 	a1ddc017       memd (r29 + #184) = r1:0 }
    5d24:	20 40 e4 d2 	d2e44020     { p0 = dfcmp.gt (r5:4, r1:0)
    5d28:	24 c9 c0 49 	49c0c924       r5:4 = memd (gp + #584) }
    5d2c:	16 c0 20 5c 	5c20c016     if !p0 jump 5d58 <_Pow+0x298>
    5d30:	00 41 00 78 	78004100     { r0 = #8
    5d34:	c2 c4 c0 49 	49c0c4c2       r3:2 = memd (gp + #304) }
    5d38:	7c 49 00 5a 	5a00497c     { call 7030 <_Feraise>
    5d3c:	17 c2 dd a1 	a1ddc217       memd (r29 + #184) = r3:2 }
    5d40:	0c 40 39 10 	1039400c     { p0 = cmp.eq (r17, #0) ; if (p0.new) jump:nt 5b58 <_Pow+0x98>
    5d44:	e0 42 dd 43 	43dd42e0       if (p0.new) r1:0 = memd (r29 + #184)
    5d48:	e2 c5 9d 91 	919dc5e2       r2 = memw (r29 + #188) }
    5d4c:	41 5f c2 8c 	8cc25f41     { r1 = togglebit (r2, #31)
    5d50:	7a 45 01 58 	5801457a       jump e840 <__restore_r16_through_r27_and_deallocframe>
    5d54:	c0 c5 9d 91 	919dc5c0       r0 = memw (r29 + #184) }
    5d58:	40 44 e0 d2 	d2e04440     { p0 = dfcmp.ge (r1:0, r5:4)
    5d5c:	44 c9 c0 49 	49c0c944       r5:4 = memd (gp + #592) }
    5d60:	7a c0 20 5c 	5c20c07a     if !p0 jump 5e54 <_Pow+0x394>
    5d64:	40 40 e4 d2 	d2e44040     { p0 = dfcmp.ge (r5:4, r1:0)
    5d68:	64 c9 c0 49 	49c0c964       r5:4 = memd (gp + #600) }
    5d6c:	74 c0 20 5c 	5c20c074     if !p0 jump 5e54 <_Pow+0x394>
    5d70:	20 44 f6 d2 	d2f64420     { p0 = dfcmp.gt (r23:22, r5:4)
    5d74:	84 c9 c0 49 	49c0c984       r5:4 = memd (gp + #608) }
    5d78:	6e c0 20 5c 	5c20c06e     if !p0 jump 5e54 <_Pow+0x394>
    5d7c:	20 56 e4 d2 	d2e45620     { p0 = dfcmp.gt (r5:4, r23:22)
    5d80:	c4 c4 c0 49 	49c0c4c4       r5:4 = memd (gp + #304) }
    5d84:	68 c0 20 5c 	5c20c068     if !p0 jump 5e54 <_Pow+0x394>
    5d88:	20 40 e4 d2 	d2e44020     { p0 = dfcmp.gt (r5:4, r1:0)
    5d8c:	02 c5 c0 49 	49c0c502       r3:2 = memd (gp + #320) }
    5d90:	cc 60 20 5c 	5c2060cc     { if !p0 jump 6128 <_Pow+0x668>
    5d94:	ea c6 01 5a 	5a01c6ea       call eb64 <__hexagon_subdf3> }
    5d98:	24 40 e0 88 	88e04024     { r4 = convert_df2w (r1:0):chop
    5d9c:	00 c0 00 7f 	7f00c000       nop }
    5da0:	02 56 17 f5 	f5175602     { r3:2 = combine (r23, r22)
    5da4:	20 49 01 5a 	5a014920       call efe0 <__hexagon_muldf3>
    5da8:	04 28 08 de 	de082804       r1:0 = memd (sp + #8) ; memw (sp + #0) = r4 }
    5dac:	14 40 01 f5 	f5014014     { r21:20 = combine (r1, r0)
    5db0:	a5 c0 9d 91 	919dc0a5       r5 = memw (r29 + #20) }
    5db4:	86 46 01 5a 	5a014686     { call eac0 <__hexagon_adddf3>
    5db8:	42 40 c5 91 	91c54042       r3:2 = memd (r5 + #16)
    5dbc:	20 c0 c5 91 	91c5c020       r1:0 = memd (r5 + #8) }
    5dc0:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    5dc4:	10 49 01 5a 	5a014910       call efe0 <__hexagon_muldf3>
    5dc8:	00 d6 17 f5 	f517d600       r1:0 = combine (r23, r22) }
    5dcc:	0a 49 01 5a 	5a01490a     { call efe0 <__hexagon_muldf3>
    5dd0:	e2 c8 c0 49 	49c0c8e2       r3:2 = memd (gp + #568) }
    5dd4:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    5dd8:	76 46 01 5a 	5a014676       call eac0 <__hexagon_adddf3>
    5ddc:	00 d4 15 f5 	f515d400       r1:0 = combine (r21, r20) }
    5de0:	14 40 01 f5 	f5014014     { r21:20 = combine (r1, r0)
    5de4:	00 5a 1b f5 	f51b5a00       r1:0 = combine (r27, r26)
    5de8:	a6 c0 9d 91 	919dc0a6       r6 = memw (r29 + #20) }
    5dec:	6a 46 01 5a 	5a01466a     { call eac0 <__hexagon_adddf3>
    5df0:	02 c0 c6 91 	91c6c002       r3:2 = memd (r6 + #0) }
    5df4:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    5df8:	f6 48 01 5a 	5a0148f6       call efe0 <__hexagon_muldf3>
    5dfc:	00 d6 17 f5 	f517d600       r1:0 = combine (r23, r22) }
    5e00:	04 c0 9d 91 	919dc004     r4 = memw (r29 + #0)
    5e04:	42 40 84 84 	84844042     { r3:2 = convert_w2df (r4)
    5e08:	b0 c6 01 5a 	5a01c6b0       call eb64 <__hexagon_subdf3> }
    5e0c:	ea 48 01 5a 	5a0148ea     { call efe0 <__hexagon_muldf3>
    5e10:	e2 c8 c0 49 	49c0c8e2       r3:2 = memd (gp + #568) }
    5e14:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    5e18:	56 46 01 5a 	5a014656       call eac0 <__hexagon_adddf3>
    5e1c:	00 54 15 f5 	f5155400       r1:0 = combine (r21, r20)
    5e20:	00 c0 00 7f 	7f00c000       nop }
    5e24:	00 40 00 7f 	7f004000     { nop
    5e28:	00 40 00 7f 	7f004000       nop
    5e2c:	b8 2a 04 dc 	dc042ab8       r4 = memw (sp + #0) ; memd (sp + #184) = r1:0 }
    5e30:	00 40 13 85 	85134000     { p0 = tstbit (r19, #0)
    5e34:	00 57 1d b0 	b01d5700       r0 = add (r29, #184)
    5e38:	82 44 c0 49 	49c04482       r3:2 = memd (gp + #288)
    5e3c:	00 c4 52 46 	4652c400       if !p0.new memh (r18 + #0) = r4 }
    5e40:	04 40 80 7e 	7e804004     { if !p0 r4 = #0
    5e44:	a8 c7 00 5a 	5a00c7a8       call 6d90 <_Exp> }
    5e48:	74 c0 30 10 	1030c074     p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 5d30 <_Pow+0x270>
    5e4c:	7a 61 70 10 	1070617a     { p0 = cmp.eq (r0, #1) ; if (!p0.new) jump:t 5d40 <_Pow+0x280>
    5e50:	0e c0 00 58 	5800c00e       jump 5e68 <_Pow+0x3a8> }
    5e54:	a0 c9 c0 49 	49c0c9a0     r1:0 = memd (gp + #616)
    5e58:	20 40 e2 d2 	d2e24020     { p0 = dfcmp.gt (r3:2, r1:0)
    5e5c:	02 54 15 f5 	f5155402       r3:2 = combine (r21, r20)
    5e60:	2f 2e 41 28 	28412e2f       r1 = #4 ; r23 = add (sp, #136) }
    5e64:	3c c0 20 5c 	5c20c03c     if !p0 jump 5edc <_Pow+0x41c>
    5e68:	80 40 00 78 	78004080     { r0 = #4
    5e6c:	68 44 00 00 	00004468       immext (#72192)
    5e70:	04 c6 c0 49 	49c0c604       r5:4 = memd (gp + ##72240) }
    5e74:	de 48 00 5a 	5a0048de     { call 7030 <_Feraise>
    5e78:	17 c4 dd a1 	a1ddc417       memd (r29 + #184) = r5:4 }
    5e7c:	62 ff ff 59 	59ffff62     jump 5d40 <_Pow+0x280>
    5e80:	e0 7f 36 73 	73367fe0     { r1:0 = combine (#-1, r22)
    5e84:	78 46 00 5a 	5a004678       call 6b70 <_Dint>
    5e88:	92 08 8c e8 	e88c0892       memw (sp + #32) = r20 ; memw (sp + #36) = r2 }
    5e8c:	11 40 60 70 	70604011     { r17 = r0
    5e90:	94 40 dd 91 	91dd4094       r21:20 = memd (r29 + #32)
    5e94:	e0 cc 5d 91 	915dcce0       r0 = memh (r29 + #206) }
    5e98:	a4 e1 60 10 	1060e1a4     p0 = cmp.eq (r0, #1) ; if (!p0.new) jump:t 5be0 <_Pow+0x120>
    5e9c:	c0 c9 c0 49 	49c0c9c0     r1:0 = memd (gp + #624)
    5ea0:	20 54 e0 d2 	d2e05420     { p0 = dfcmp.gt (r1:0, r21:20)
    5ea4:	00 54 15 f5 	f5155400       r1:0 = combine (r21, r20)
    5ea8:	02 54 15 f5 	f5155402       r3:2 = combine (r21, r20)
    5eac:	16 c0 00 78 	7800c016       r22 = #0 }
    5eb0:	98 c0 ff 5c 	5cffc098     if !p0 jump 5be0 <_Pow+0x120>
    5eb4:	06 46 01 5a 	5a014606     { call eac0 <__hexagon_adddf3>
    5eb8:	98 c4 c0 49 	49c0c498       r25:24 = memd (gp + #288) }
    5ebc:	14 40 01 f5 	f5014014     { r21:20 = combine (r1, r0)
    5ec0:	b2 fe ff 59 	59fffeb2       jump 5c20 <_Pow+0x160> }
    5ec4:	20 40 00 78 	78004020     { r0 = #1
    5ec8:	7a e3 ac 11 	11ace37a       p0 = tstbit (r20, #0) ; if (p0.new) jump:t 5bb8 <_Pow+0xf8> }
    5ecc:	b2 c8 00 5a 	5a00c8b2     call 7030 <_Feraise>
    5ed0:	b8 44 01 58 	580144b8     { jump e840 <__restore_r16_through_r27_and_deallocframe>
    5ed4:	68 44 00 00 	00004468       immext (#72192)
    5ed8:	00 c4 c0 49 	49c0c400       r1:0 = memd (gp + ##72224) }
    5edc:	1a 55 1d b0 	b01d551a     { r26 = add (r29, #168)
    5ee0:	22 50 00 5a 	5a005022       call 7f20 <_Xp_setw>
    5ee4:	00 40 77 70 	70774000       r0 = r23
    5ee8:	d4 c4 c0 49 	49c0c4d4       r21:20 = memd (gp + #304) }
    5eec:	02 58 19 f5 	f5195802     { r3:2 = combine (r25, r24)
    5ef0:	1a 50 00 5a 	5a00501a       call 7f20 <_Xp_setw>
    5ef4:	40 e0 3a 73 	733ae040       r1:0 = combine (#2, r26) }
    5ef8:	80 60 37 73 	73376080     { r1:0 = combine (#4, r23)
    5efc:	b4 4e 00 5a 	5a004eb4       call 7c60 <_Xp_addx>
    5f00:	42 e0 3a 73 	733ae042       r3:2 = combine (#2, r26) }
    5f04:	20 c2 dd 91 	91ddc220     r1:0 = memd (r29 + #136)
    5f08:	00 54 e0 d2 	d2e05400     { p0 = dfcmp.eq (r1:0, r21:20)
    5f0c:	16 4d 1d b0 	b01d4d16       r22 = add (r29, #104)
    5f10:	02 54 15 f5 	f5155402       r3:2 = combine (r21, r20)
    5f14:	18 c5 1d b0 	b01dc518       r24 = add (r29, #40) }
    5f18:	7e c0 20 5c 	5c20c07e     if !p0 jump 6014 <_Pow+0x554>
    5f1c:	80 60 36 73 	73366080     { r1:0 = combine (#4, r22)
    5f20:	02 d0 00 5a 	5a00d002       call 7f20 <_Xp_setw> }
    5f24:	81 40 00 78 	78004081     { r1 = #4
    5f28:	63 40 00 78 	78004063       r3 = #3
    5f2c:	52 3c e0 50 	50e03c52       r0 = r22 ; r2 = memw (sp + #20) }
    5f30:	98 ce 00 5a 	5a00ce98     call 7c60 <_Xp_addx>
    5f34:	14 49 1d b0 	b01d4914     { r20 = add (r29, #72)
    5f38:	80 60 36 73 	73366080       r1:0 = combine (#4, r22)
    5f3c:	e2 cc 5d 91 	915dcce2       r2 = memh (r29 + #206) }
    5f40:	42 40 82 84 	84824042     { r3:2 = convert_w2df (r2)
    5f44:	98 cc 00 5a 	5a00cc98       call 7870 <_Xp_addh> }
    5f48:	41 40 00 78 	78004041     { r1 = #2
    5f4c:	ec 4f 00 5a 	5a004fec       call 7f20 <_Xp_setw>
    5f50:	19 3e f0 50 	50f03e19       r0 = r23 ; r3:2 = memd (sp + #24) }
    5f54:	02 44 00 78 	78004402     { r2 = #32
    5f58:	7e 41 00 5a 	5a00417e       call 6250 <memcpy>
    5f5c:	c0 30 e1 30 	30e130c0       r1 = r22 ; r0 = r20 }
    5f60:	80 60 34 73 	73346080     { r1:0 = combine (#4, r20)
    5f64:	a8 4e 00 5a 	5a004ea8       call 7cb0 <_Xp_mulh>
    5f68:	22 c2 dd 91 	91ddc222       r3:2 = memd (r29 + #136) }
    5f6c:	c0 44 c0 49 	49c044c0     { r1:0 = memd (gp + #304)
    5f70:	22 c0 d7 91 	91d7c022       r3:2 = memd (r23 + #8) }
    5f74:	00 40 e2 d2 	d2e24000     { p0 = dfcmp.eq (r3:2, r1:0)
    5f78:	18 45 1d b0 	b01d4518       r24 = add (r29, #40)
    5f7c:	e1 30 02 2a 	2a0230e1       r2 = #32 ; r1 = r22 }
    5f80:	be c0 20 5c 	5c20c0be     if !p0 jump 60fc <_Pow+0x63c>
    5f84:	9e 45 01 5a 	5a01459e     { call eac0 <__hexagon_adddf3>
    5f88:	22 40 d4 91 	91d44022       r3:2 = memd (r20 + #8)
    5f8c:	20 c1 dd 91 	91ddc120       r1:0 = memd (r29 + #72) }
    5f90:	98 45 01 5a 	5a014598     { call eac0 <__hexagon_adddf3>
    5f94:	42 c0 d4 91 	91d4c042       r3:2 = memd (r20 + #16) }
    5f98:	ec 45 00 5a 	5a0045ec     { call 6b70 <_Dint>
    5f9c:	20 2a 80 7d 	7d802a20       r1:0 = combine (#0, r16) ; memd (sp + #32) = r1:0 }
    5fa0:	80 60 34 73 	73346080     { r1:0 = combine (#4, r20)
    5fa4:	82 1c 94 3c 	3c941c82       r4 = memw (sp + #36) ; r2 = memw (sp + #32) }
    5fa8:	43 5f c4 8c 	8cc45f43     { r3 = togglebit (r4, #31)
    5fac:	64 cc 00 5a 	5a00cc64       call 7870 <_Xp_addh> }
    5fb0:	80 60 34 73 	73346080     { r1:0 = combine (#4, r20)
    5fb4:	e0 cb 00 5a 	5a00cbe0       call 7770 <_Xp_getw> }
    5fb8:	14 48 01 5a 	5a014814     { call efe0 <__hexagon_muldf3>
    5fbc:	e2 c8 c0 49 	49c0c8e2       r3:2 = memd (gp + #568) }
    5fc0:	b8 2a 22 de 	de222ab8     r5:4 = memd (sp + #32) ; memd (sp + #184) = r1:0
    5fc4:	24 40 e4 88 	88e44024     { r4 = convert_df2w (r5:4):chop
    5fc8:	36 ff ff 59 	59ffff36       jump 5e30 <_Pow+0x370> }
    5fcc:	e0 41 5d 91 	915d41e0     { r0 = memh (r29 + #30)
    5fd0:	60 c0 c2 26 	26c2c060       if (!cmp.gt (r0.new, #-1)) jump:nt 608c <_Pow+0x5cc> }
    5fd4:	e0 4c 5d 91 	915d4ce0     { r0 = memh (r29 + #206)
    5fd8:	ef 7f ff 0f 	0fff7fef       immext (#4294966208)
    5fdc:	18 c0 82 24 	2482c018       if (cmp.gt (r0.new, #0)) jump:nt 5ba0 <_Pow+0xe0> }
    5fe0:	ba fd ff 59 	59fffdba     jump 5b54 <_Pow+0x94>
    5fe4:	c6 c5 00 5a 	5a00c5c6     call 6b70 <_Dint>
    5fe8:	ed 7f ff 0f 	0fff7fed     { immext (#4294966080)
    5fec:	58 e1 80 11 	1180e158       p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t 5b54 <_Pow+0x94> }
    5ff0:	00 40 00 7f 	7f004000     { nop
    5ff4:	60 40 50 91 	91504060       r0 = memh (r16 + #6)
    5ff8:	ed 7f ff 0f 	0fff7fed       immext (#4294966080)
    5ffc:	48 c0 82 26 	2682c048       if (cmp.gt (r0.new, #-1)) jump:nt 5b54 <_Pow+0x94> }
    6000:	03 4f 00 00 	00004f03     { immext (#245952)
    6004:	00 dc 82 9b 	9b82dc00       r0 = memw (r2 = ##246000) }
    6008:	22 c0 82 91 	9182c022     r2 = memw (r2 + #4)
    600c:	41 5f c2 8c 	8cc25f41     { r1 = togglebit (r2, #31)
    6010:	1a c4 01 58 	5801c41a       jump e840 <__restore_r16_through_r27_and_deallocframe> }
    6014:	05 44 00 00 	00004405     { immext (#65856)
    6018:	01 44 00 78 	78004401       r1 = ##65888
    601c:	00 40 00 7f 	7f004000       nop
    6020:	ae 2d 02 2a 	2a022dae       r2 = #32 ; r22 = add (sp, #104) }
    6024:	16 41 00 5a 	5a004116     { call 6250 <memcpy>
    6028:	00 40 00 7f 	7f004000       nop
    602c:	e0 30 4c 2e 	2e4c30e0       r20 = add (sp, #144) ; r0 = r22 }
    6030:	80 60 36 73 	73366080     { r1:0 = combine (#4, r22)
    6034:	40 4e 00 5a 	5a004e40       call 7cb0 <_Xp_mulh>
    6038:	00 40 00 7f 	7f004000       nop
    603c:	22 c2 dd 91 	91ddc222       r3:2 = memd (r29 + #136) }
    6040:	05 44 00 00 	00004405     { immext (#65856)
    6044:	01 44 00 78 	78004401       r1 = ##65888
    6048:	04 40 d4 91 	91d44004       r5:4 = memd (r20 + #0)
    604c:	c6 c4 c0 49 	49c0c4c6       r7:6 = memd (gp + #304) }
    6050:	00 46 e4 d2 	d2e44600     { p0 = dfcmp.eq (r5:4, r7:6)
    6054:	02 44 00 78 	78004402       r2 = #32
    6058:	00 c0 78 70 	7078c000       r0 = r24 }
    605c:	64 60 df 5c 	5cdf6064     { if (p0) jump 5f24 <_Pow+0x464>
    6060:	fa c0 00 5a 	5a00c0fa       call 6250 <memcpy> }
    6064:	81 40 00 78 	78004081     { r1 = #4
    6068:	26 4e 00 5a 	5a004e26       call 7cb0 <_Xp_mulh>
    606c:	00 40 78 70 	70784000       r0 = r24
    6070:	22 c0 d4 9b 	9bd4c022       r3:2 = memd (r20 ++ #8) }
    6074:	80 60 36 73 	73366080     { r1:0 = combine (#4, r22)
    6078:	f6 4d 00 5a 	5a004df6       call 7c60 <_Xp_addx>
    607c:	82 e0 38 73 	7338e082       r3:2 = combine (#4, r24) }
    6080:	e0 78 ff 5c 	5cff78e0     { if !p0.new jump:t 6040 <_Pow+0x580>
    6084:	52 7f ff 59 	59ff7f52       jump 5f24 <_Pow+0x464>
    6088:	00 d4 1a f2 	f21ad400       p0 = cmp.eq (r26, r20) }
    608c:	e0 4c 5d 91 	915d4ce0     { r0 = memh (r29 + #206)
    6090:	ec 7f ff 0f 	0fff7fec       immext (#4294966016)
    6094:	28 c0 c2 24 	24c2c028       if (!cmp.gt (r0.new, #0)) jump:nt 5ba0 <_Pow+0xe0> }
    6098:	60 7d ff 59 	59ff7d60     { jump 5b58 <_Pow+0x98>
    609c:	c0 c4 c0 49 	49c0c4c0       r1:0 = memd (gp + #304) }
    60a0:	e0 41 5d 91 	915d41e0     { r0 = memh (r29 + #30)
    60a4:	4c c0 c2 26 	26c2c04c       if (!cmp.gt (r0.new, #-1)) jump:nt 6138 <_Pow+0x678> }
    60a8:	e0 7f 36 73 	73367fe0     { r1:0 = combine (#-1, r22)
    60ac:	eb 7f ff 0f 	0fff7feb       immext (#4294965952)
    60b0:	70 e3 cc 11 	11cce370       p0 = tstbit (r20, #0) ; if (!p0.new) jump:t 5ba0 <_Pow+0xe0> }
    60b4:	5e c5 00 5a 	5a00c55e     call 6b70 <_Dint>
    60b8:	eb 7f ff 0f 	0fff7feb     { immext (#4294965952)
    60bc:	50 e1 80 11 	1180e150       p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t 5ba0 <_Pow+0xe0> }
    60c0:	a4 7f ff 59 	59ff7fa4     { jump 6008 <_Pow+0x548>
    60c4:	68 44 00 00 	00004468       immext (#72192)
    60c8:	00 dc 82 9b 	9b82dc00       r0 = memw (r2 = ##72240) }
    60cc:	40 40 00 78 	78004040     { r0 = #2
    60d0:	b2 c7 00 5a 	5a00c7b2       call 7030 <_Feraise> }
    60d4:	e0 7f 36 73 	73367fe0     { r1:0 = combine (#-1, r22)
    60d8:	eb 7f ff 0f 	0fff7feb       immext (#4294965952)
    60dc:	18 e3 cc 11 	11cce318       p0 = tstbit (r20, #0) ; if (!p0.new) jump:t 5ba0 <_Pow+0xe0> }
    60e0:	48 c5 00 5a 	5a00c548     call 6b70 <_Dint>
    60e4:	ea 7f ff 0f 	0fff7fea     { immext (#4294965888)
    60e8:	78 e1 80 11 	1180e178       p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t 5ba0 <_Pow+0xe0> }
    60ec:	60 40 50 91 	91504060     { r0 = memh (r16 + #6)
    60f0:	ea 7f ff 0f 	0fff7fea       immext (#4294965888)
    60f4:	68 c0 82 26 	2682c068       if (cmp.gt (r0.new, #-1)) jump:nt 5ba0 <_Pow+0xe0> }
    60f8:	e4 ff ff 59 	59ffffe4     jump 60c0 <_Pow+0x600>
    60fc:	00 40 78 70 	70784000     { r0 = r24
    6100:	aa c0 00 5a 	5a00c0aa       call 6250 <memcpy> }
    6104:	00 40 78 70 	70784000     { r0 = r24
    6108:	d6 4d 00 5a 	5a004dd6       call 7cb0 <_Xp_mulh>
    610c:	81 40 00 78 	78004081       r1 = #4
    6110:	22 c0 d7 91 	91d7c022       r3:2 = memd (r23 + #8) }
    6114:	02 40 78 70 	70784002     { r2 = r24
    6118:	81 40 00 78 	78004081       r1 = #4
    611c:	c0 30 43 28 	284330c0       r3 = #4 ; r0 = r20 }
    6120:	a0 cd 00 5a 	5a00cda0     call 7c60 <_Xp_addx>
    6124:	30 ff ff 59 	59ffff30     jump 5f84 <_Pow+0x4c4>
    6128:	cc 44 01 5a 	5a0144cc     { call eac0 <__hexagon_adddf3>
    612c:	02 c5 c0 49 	49c0c502       r3:2 = memd (gp + #320) }
    6130:	24 40 e0 88 	88e04024     { r4 = convert_df2w (r1:0):chop
    6134:	38 fe ff 59 	59fffe38       jump 5da0 <_Pow+0x2e0> }
    6138:	e0 7f 36 73 	73367fe0     { r1:0 = combine (#-1, r22)
    613c:	e8 7f ff 0f 	0fff7fe8       immext (#4294965760)
    6140:	38 e3 cc 11 	11cce338       p0 = tstbit (r20, #0) ; if (!p0.new) jump:t 5b54 <_Pow+0x94> }
    6144:	16 c5 00 5a 	5a00c516     call 6b70 <_Dint>
    6148:	5c 41 f0 11 	11f0415c     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 6000 <_Pow+0x540>
    614c:	08 7d ff 59 	59ff7d08       jump 5b58 <_Pow+0x98>
    6150:	c0 c4 c0 49 	49c0c4c0       r1:0 = memd (gp + #304) }
    6154:	00 40 00 7f 	7f004000     { nop
    6158:	00 40 00 7f 	7f004000       nop
    615c:	00 c0 00 7f 	7f00c000       nop }

00006160 <pow>:
    6160:	e5 7f ff 0f 	0fff7fe5     { immext (#4294965568)
    6164:	40 c0 04 16 	1604c040       r4 = #0 ; jump 5ac0 <_Pow> }
    6168:	00 c0 00 7f 	7f00c000     nop
    616c:	00 c0 00 7f 	7f00c000     nop

00006170 <printf>:
    6170:	65 44 00 00 	00004465     { immext (#72000)
    6174:	10 64 00 73 	73006410       r17:16 = combine (r0, ##72032)
    6178:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    617c:	00 40 70 70 	70704000     { r0 = r16
    6180:	12 da 00 5a 	5a00da12       call 95a0 <_Lockfilelock> }
    6184:	01 40 70 70 	70704001     { r1 = r16
    6188:	92 30 43 2c 	2c433092       r3 = add (sp, #16) ; r2 = r17 }
    618c:	86 41 00 00 	00004186     { immext (#24960)
    6190:	00 46 00 78 	78004600       r0 = ##25008
    6194:	5a d0 00 5a 	5a00d05a       call 8240 <_Printf> }
    6198:	8c 59 00 5a 	5a00598c     { call 94b0 <_Unlockfilelock>
    619c:	80 30 09 30 	30093080       r17 = r0 ; r0 = r16 }
    61a0:	00 40 71 70 	70714000     { r0 = r17
    61a4:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    61a8:	00 40 00 7f 	7f004000     { nop
    61ac:	00 c0 00 7f 	7f00c000       nop }

000061b0 <prout>:
    61b0:	10 40 60 70 	70604010     { r16 = r0
    61b4:	20 60 21 73 	73216020       r1:0 = combine (#1, r1)
    61b8:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    61bc:	02 7b ff 5b 	5bff7b02     { call 57c0 <fwrite>
    61c0:	29 30 83 30 	30833029       r3 = r16 ; r17 = r2 }
    61c4:	00 51 00 f2 	f2005100     { p0 = cmp.eq (r0, r17)
    61c8:	10 e0 80 7e 	7e80e010       if !p0.new r16 = #0 }
    61cc:	00 40 70 70 	70704000     { r0 = r16
    61d0:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    61d4:	00 c0 00 7f 	7f00c000     nop
    61d8:	00 c0 00 7f 	7f00c000     nop
    61dc:	00 c0 00 7f 	7f00c000     nop

000061e0 <puts>:
    61e0:	10 40 60 70 	70604010     { r16 = r0
    61e4:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    61e8:	65 44 00 00 	00004465     { immext (#72000)
    61ec:	00 44 00 78 	78004400       r0 = ##72032
    61f0:	dc d9 00 5a 	5a00d9dc       call 95a0 <_Lockfilelock> }
    61f4:	65 44 00 00 	00004465     { immext (#72000)
    61f8:	00 64 30 73 	73306400       r1:0 = combine (##72032, r16)
    61fc:	56 dd 00 5a 	5a00dd56       call 9ca0 <fputs> }
    6200:	65 44 00 00 	00004465     { immext (#72000)
    6204:	00 44 05 7c 	7c054400       r1:0 = combine (##72032, #10)
    6208:	12 c1 80 11 	1180c112       p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:nt 6224 <puts+0x44> }
    620c:	f0 ff df 78 	78dffff0     r16 = #-1
    6210:	65 44 00 00 	00004465     { immext (#72000)
    6214:	00 44 00 78 	78004400       r0 = ##72032
    6218:	50 d9 00 5a 	5a00d950       call 94b0 <_Unlockfilelock> }
    621c:	00 40 70 70 	70704000     { r0 = r16
    6220:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    6224:	fe dc 00 5a 	5a00dcfe     call 9c20 <fputc>
    6228:	f4 61 b0 11 	11b061f4     { p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t 6210 <puts+0x30>
    622c:	f2 7f ff 59 	59ff7ff2       jump 620c <puts+0x2c>
    6230:	10 e0 00 7e 	7e00e010       if (p0.new) r16 = #0 }
    6234:	00 c0 00 7f 	7f00c000     nop
    6238:	00 c0 00 7f 	7f00c000     nop
    623c:	00 c0 00 7f 	7f00c000     nop

00006240 <close>:
    6240:	20 c9 01 58 	5801c920     jump f480 <__sys_close>
    6244:	00 c0 00 7f 	7f00c000     nop
    6248:	00 c0 00 7f 	7f00c000     nop
    624c:	00 c0 00 7f 	7f00c000     nop

00006250 <memcpy>:
    6250:	02 40 02 75 	75024002     { p2 = cmp.eq (r2, #0)
    6254:	0e 40 21 f1 	f121400e       r14 = or (r1, r0)
    6258:	e0 42 82 75 	758242e0       p0 = cmp.gtu (r2, #23)
    625c:	01 c0 01 f2 	f201c001       p1 = cmp.eq (r1, r0) }
    6260:	01 42 21 6b 	6b214201     { p1 = or (p2, p1)
    6264:	29 43 02 8c 	8c024329       r9 = lsr (r2, #3)
    6268:	e3 4b 82 75 	75824be3       p3 = cmp.gtu (r2, #95)
    626c:	0e c2 2e f1 	f12ec20e       r14 = or (r14, r2) }
    6270:	02 47 8e 85 	858e4702     { p2 = bitsclr (r14, #7)
    6274:	00 41 5f 53 	535f4100       if (p1) jumpr r31
    6278:	00 c0 01 94 	9401c000       dcfetch (r1 + #0) }
    627c:	02 42 63 6b 	6b634202     { p2 = and (p2, !p3)
    6280:	4a 6a 00 5c 	5c006a4a       if (p2.new) jump:nt 6510 <memcpy+0x2c0>
    6284:	02 ff 42 74 	7442ff02       if (p2.new) r2 = add (r2, #-8) }
    6288:	36 60 20 5c 	5c206036     { if !p0 jump 64f4 <memcpy+0x2a4>
    628c:	ff 7f e8 71 	71e87fff       r8.l = #65535
    6290:	0f c0 40 76 	7640c00f       r15 = sub (#0, r0) }
    6294:	ff 7f 68 72 	72687fff     { r8.h = #32767
    6298:	a7 40 02 8c 	8c0240a7       r7 = cl0 (r2)
    629c:	05 44 01 b0 	b0014405       r5 = add (r1, #32)
    62a0:	03 c0 9d a0 	a09dc003       allocframe (#24) }
    62a4:	28 65 7f 71 	717f6528     { r31.l = #25896
    62a8:	4f 47 48 cc 	cc48474f       r15 &= lsr (r8, r7)
    62ac:	e9 40 01 76 	760140e9       r9 = and (r1, #7)
    62b0:	00 d0 dd a1 	a1ddd000       memd (r29 + #0) = r17:16 }
    62b4:	13 40 21 f3 	f3214013     { r19 = sub (r0, r1)
    62b8:	00 40 3f 72 	723f4000       r31.h = #0
    62bc:	03 40 49 75 	75494003       p3 = cmp.gt (r9, #0)
    62c0:	01 d2 dd a1 	a1ddd201       memd (r29 + #8) = r19:18 }
    62c4:	14 41 02 f3 	f3024114     { r20 = add (r2, r1)
    62c8:	07 49 02 f3 	f3024907       r7 = add (r2, r9)
    62cc:	16 2a 2d 70 	702d2a16       r21 = r2 ; memd (sp + #16) = r21:20 }
    62d0:	00 47 8f 85 	858f4700     { p0 = bitsclr (r15, #7)
    62d4:	ef 43 0f 76 	760f43ef       r15 = and (r15, #31)
    62d8:	05 44 05 b0 	b0054405       r5 = add (r5, #32)
    62dc:	00 c0 05 94 	9405c000       dcfetch (r5 + #0) }
    62e0:	04 42 2f f3 	f32f4204     { r4 = sub (r2, r15)
    62e4:	48 43 0f 8c 	8c0f4348       r8 = asl (r15, #3)
    62e8:	f0 40 0f 76 	760f40f0       r16 = and (r15, #7)
    62ec:	01 ff 21 76 	7621ff01       r1 = and (r1, #-8) }
    62f0:	2f 43 0f 8c 	8c0f432f     { r15 = lsr (r15, #3)
    62f4:	e3 43 04 76 	760443e3       r3 = and (r4, #31)
    62f8:	11 4f 00 f3 	f3004f11       r17 = add (r0, r15)
    62fc:	f4 c0 14 76 	7614c0f4       r20 = and (r20, #7) }
    6300:	03 40 54 75 	75544003     { p3 = cmp.gt (r20, #0)
    6304:	75 c1 14 ef 	ef14c175       r21 += sub (r1, r20) }
    6308:	15 c1 75 74 	7475c115     if (p3) r21 = add (r21, #8)
    630c:	03 41 87 75 	75874103     { p3 = cmp.gtu (r7, #8)
    6310:	24 45 04 8c 	8c044524       r4 = lsr (r4, #5)
    6314:	05 44 05 b0 	b0054405       r5 = add (r5, #32)
    6318:	00 c0 05 94 	9405c000       dcfetch (r5 + #0) }
    631c:	01 40 0f 75 	750f4001     { p1 = cmp.eq (r15, #0)
    6320:	2f 60 af 74 	74af602f       if !p1.new r15 = add (r15, #1)
    6324:	05 44 05 b0 	b0054405       r5 = add (r5, #32)
    6328:	00 c0 05 94 	9405c000       dcfetch (r5 + #0) }
    632c:	01 40 04 75 	75044001     { p1 = cmp.eq (r4, #0)
    6330:	05 44 05 b0 	b0054405       r5 = add (r5, #32)
    6334:	0e 41 08 76 	7608410e       r14 = and (r8, #8)
    6338:	00 c0 05 94 	9405c000       dcfetch (r5 + #0) }
    633c:	05 44 05 b0 	b0054405     { r5 = add (r5, #32)
    6340:	10 41 00 5c 	5c004110       if (p1) jump 635c <memcpy+0x10c>
    6344:	22 40 04 75 	75044022       p2 = cmp.eq (r4, #1)
    6348:	00 c0 05 94 	9405c000       dcfetch (r5 + #0) }
    634c:	11 44 d1 74 	74d14411     { if !p2 r17 = add (r17, #32)
    6350:	00 c0 d1 a0 	a0d1c000       dczeroa (r17) }
    6354:	f3 43 13 76 	761343f3     { r19 = and (r19, #31)
    6358:	00 c0 d1 a0 	a0d1c000       dczeroa (r17) }
    635c:	26 40 00 5c 	5c004026     { if (p0) jump 63a8 <memcpy+0x158>
    6360:	02 40 49 85 	85494002       p2 = r9
    6364:	4c 40 c1 9b 	9bc1404c       r13:12 = memd (r1 ++ #16)
    6368:	2a d8 c1 41 	41c1d82a       if (p3) r11:10 = memd (r1 + #8) }
    636c:	46 4a 0c c2 	c20c4a46     { r7:6 = valignb (r11:10, r13:12, p2)
    6370:	00 43 08 85 	85084300       p0 = tstbit (r8, #3)
    6374:	09 d0 09 f3 	f309d009       r9 = add (r9, r16) }
    6378:	46 4e 86 c3 	c3864e46     { r7:6 = lsr (r7:6, r14)
    637c:	00 44 08 85 	85084400       p0 = tstbit (r8, #4)
    6380:	0e 42 08 76 	7608420e       r14 = and (r8, #16)
    6384:	08 e6 00 ab 	ab00e608       if (p0) memb (r0 ++ #1) = r6 }
    6388:	46 4e 86 c3 	c3864e46     { r7:6 = lsr (r7:6, r14)
    638c:	00 45 08 85 	85084500       p0 = tstbit (r8, #5)
    6390:	e2 40 89 75 	758940e2       p2 = cmp.gtu (r9, #7)
    6394:	08 e6 40 ab 	ab40e608       if (p0) memh (r0 ++ #2) = r6 }
    6398:	4c 4a 0b fd 	fd0b4a4c     { if (p2) r13:12 = combine (r11, r10)
    639c:	02 40 49 85 	85494002       p2 = r9
    63a0:	2a 64 c1 9b 	9bc1642a       if (p2) r11:10 = memd (r1 ++ #8)
    63a4:	08 e6 80 ab 	ab80e608       if (p0) memw (r0 ++ #4) = r6 }
    63a8:	08 c0 af 60 	60afc008     p3 = sp1loop0 (63ac <memcpy+0x15c>, r15)
    63ac:	46 4a 0c c2 	c20c4a46     { r7:6 = valignb (r11:10, r13:12, p2)
    63b0:	00 41 55 f2 	f2554100       p0 = cmp.gt (r21, r1)
    63b4:	0b e6 c0 ab 	abc0e60b       if (p3) memd (r0 ++ #8) = r7:6 }
    63b8:	0c 8a 0b f5 	f50b8a0c     { r13:12 = combine (r11, r10)
    63bc:	2a e0 c1 9b 	9bc1e02a       if (p0) r11:10 = memd (r1 ++ #8) }:endloop0
    63c0:	03 40 84 75 	75844003     { p3 = cmp.gtu (r4, #0)
    63c4:	e4 7f 64 74 	74647fe4       if (p3.new) r4 = add (r4, #-1)
    63c8:	03 e4 63 74 	7463e403       if (p3.new) r3 = add (r3, #32) }
    63cc:	5e 40 04 12 	1204405e     { p1 = cmp.eq (r4, #0) ; if (p1.new) jump:nt 6488 <memcpy+0x238>
    63d0:	0e 64 7f 7c 	7c7f640e       r15:14 = combine (#32, #-1)
    63d4:	03 c3 93 75 	7593c303       p3 = cmp.gtu (r19, #24) }
    63d8:	30 c3 00 5c 	5c00c330     if (p3) jump 6438 <memcpy+0x1e8>
    63dc:	18 40 04 60 	60044018     { loop0 (63e8 <memcpy+0x198>, r4)
    63e0:	20 40 84 75 	75844020       p0 = cmp.gtu (r4, #1)
    63e4:	08 c0 64 70 	7064c008       r8 = r4 }
    63e8:	11 44 11 74 	74114411     { if (p0) r17 = add (r17, #32)
    63ec:	00 c0 05 94 	9405c000       dcfetch (r5 + #0) }
    63f0:	03 48 04 f2 	f2044803     { p3 = cmp.eq (r4, r8)
    63f4:	00 c0 d1 a0 	a0d1c000       dczeroa (r17) }
    63f8:	a4 4e 04 d3 	d3044ea4     { r5:4 = vaddw (r5:4, r15:14)
    63fc:	52 4a 0c c2 	c20c4a52       r19:18 = valignb (r11:10, r13:12, p2)
    6400:	2c 40 c1 9b 	9bc1402c       r13:12 = memd (r1 ++ #8)
    6404:	0f f2 c0 ab 	abc0f20f       if !p3 memd (r0 ++ #8) = r19:18 }
    6408:	46 4c 0a c2 	c20a4c46     { r7:6 = valignb (r13:12, r11:10, p2)
    640c:	2a 40 c1 9b 	9bc1402a       r11:10 = memd (r1 ++ #8)
    6410:	08 c6 c0 ab 	abc0c608       memd (r0 ++ #8) = r7:6 }
    6414:	52 4a 0c c2 	c20c4a52     { r19:18 = valignb (r11:10, r13:12, p2)
    6418:	2c 40 c1 9b 	9bc1402c       r13:12 = memd (r1 ++ #8)
    641c:	08 d2 c0 ab 	abc0d208       memd (r0 ++ #8) = r19:18 }
    6420:	46 8c 0a c2 	c20a8c46     { r7:6 = valignb (r13:12, r11:10, p2)
    6424:	20 40 84 75 	75844020       p0 = cmp.gtu (r4, #1)
    6428:	2a 40 c1 9b 	9bc1402a       r11:10 = memd (r1 ++ #8)
    642c:	08 c6 c0 ab 	abc0c608       memd (r0 ++ #8) = r7:6 }:endloop0
    6430:	2c 40 00 58 	5800402c     { jump 6488 <memcpy+0x238>
    6434:	08 d2 c0 ab 	abc0d208       memd (r0 ++ #8) = r19:18 }
    6438:	18 40 04 60 	60044018     { loop0 (6444 <memcpy+0x1f4>, r4)
    643c:	20 40 84 75 	75844020       p0 = cmp.gtu (r4, #1)
    6440:	e8 ff e4 bf 	bfe4ffe8       r8 = add (r4, #-1) }
    6444:	a4 4e 04 d3 	d3044ea4     { r5:4 = vaddw (r5:4, r15:14)
    6448:	11 44 11 74 	74114411       if (p0) r17 = add (r17, #32)
    644c:	00 c0 05 94 	9405c000       dcfetch (r5 + #0) }
    6450:	00 c0 d1 a0 	a0d1c000     dczeroa (r17)
    6454:	46 4a 0c c2 	c20c4a46     { r7:6 = valignb (r11:10, r13:12, p2)
    6458:	2c 40 c1 9b 	9bc1402c       r13:12 = memd (r1 ++ #8)
    645c:	08 c6 c0 ab 	abc0c608       memd (r0 ++ #8) = r7:6 }
    6460:	46 4c 0a c2 	c20a4c46     { r7:6 = valignb (r13:12, r11:10, p2)
    6464:	2a 40 c1 9b 	9bc1402a       r11:10 = memd (r1 ++ #8)
    6468:	08 c6 c0 ab 	abc0c608       memd (r0 ++ #8) = r7:6 }
    646c:	46 4a 0c c2 	c20c4a46     { r7:6 = valignb (r11:10, r13:12, p2)
    6470:	2c 40 c1 9b 	9bc1402c       r13:12 = memd (r1 ++ #8)
    6474:	08 c6 c0 ab 	abc0c608       memd (r0 ++ #8) = r7:6 }
    6478:	46 8c 0a c2 	c20a8c46     { r7:6 = valignb (r13:12, r11:10, p2)
    647c:	20 40 84 75 	75844020       p0 = cmp.gtu (r4, #1)
    6480:	2a 40 c1 9b 	9bc1402a       r11:10 = memd (r1 ++ #8)
    6484:	08 c6 c0 ab 	abc0c608       memd (r0 ++ #8) = r7:6 }:endloop0
    6488:	00 40 03 75 	75034000     { p0 = cmp.eq (r3, #0)
    648c:	2f 43 03 8c 	8c03432f       r15 = lsr (r3, #3)
    6490:	e4 c0 03 76 	7603c0e4       r4 = and (r3, #7) }
    6494:	45 43 03 8c 	8c034345     { r5 = asl (r3, #3)
    6498:	00 40 5f 53 	535f4000       if (p0) jumpr r31
    649c:	00 40 22 fb 	fb224000       if (p0) r0 = sub (r0, r2)
    64a0:	03 c0 0f 75 	750fc003       p3 = cmp.eq (r15, #0) }
    64a4:	00 42 03 85 	85034200     { p0 = tstbit (r3, #2)
    64a8:	12 43 00 5c 	5c004312       if (p3) jump 64c8 <memcpy+0x278>
    64ac:	0e c4 05 76 	7605c40e       r14 = and (r5, #32) }
    64b0:	08 c0 0f 60 	600fc008     loop0 (64b4 <memcpy+0x264>, r15)
    64b4:	46 4a 0c c2 	c20c4a46     { r7:6 = valignb (r11:10, r13:12, p2)
    64b8:	03 41 55 f2 	f2554103       p3 = cmp.gt (r21, r1)
    64bc:	08 c6 c0 ab 	abc0c608       memd (r0 ++ #8) = r7:6 }
    64c0:	0c 8a 0b f5 	f50b8a0c     { r13:12 = combine (r11, r10)
    64c4:	2a e6 c1 9b 	9bc1e62a       if (p3) r11:10 = memd (r1 ++ #8) }:endloop0
    64c8:	46 4e 86 c3 	c3864e46     { r7:6 = lsr (r7:6, r14)
    64cc:	00 41 03 85 	85034100       p0 = tstbit (r3, #1)
    64d0:	0e 42 05 76 	7605420e       r14 = and (r5, #16)
    64d4:	08 e6 80 ab 	ab80e608       if (p0) memw (r0 ++ #4) = r6 }
    64d8:	46 4e 86 c3 	c3864e46     { r7:6 = lsr (r7:6, r14)
    64dc:	00 40 03 85 	85034000       p0 = tstbit (r3, #0)
    64e0:	e2 7f 02 74 	74027fe2       if (p0.new) r2 = add (r2, #-1)
    64e4:	08 e6 40 ab 	ab40e608       if (p0) memh (r0 ++ #2) = r6 }
    64e8:	00 40 22 f3 	f3224000     { r0 = sub (r0, r2)
    64ec:	00 40 9f 52 	529f4000       jumpr r31
    64f0:	00 c6 00 40 	4000c600       if (p0) memb (r0 + #0) = r6 }
    64f4:	10 40 a2 60 	60a24010     { p3 = sp1loop0 (64fc <memcpy+0x2ac>, r2)
    64f8:	e2 ff e2 bf 	bfe2ffe2       r2 = add (r2, #-1) }
    64fc:	26 80 01 9b 	9b018026     { r6 = memb (r1 ++ #1)
    6500:	0b e6 00 ab 	ab00e60b       if (p3) memb (r0 ++ #1) = r6 }:endloop0
    6504:	00 40 22 f3 	f3224000     { r0 = sub (r0, r2)
    6508:	00 40 9f 52 	529f4000       jumpr r31
    650c:	00 c6 00 a1 	a100c600       memb (r0 + #0) = r6 }
    6510:	08 c0 a9 60 	60a9c008     p3 = sp1loop0 (6514 <memcpy+0x2c4>, r9)
    6514:	26 80 c1 9b 	9bc18026     { r7:6 = memd (r1 ++ #8)
    6518:	0b e6 c0 ab 	abc0e60b       if (p3) memd (r0 ++ #8) = r7:6 }:endloop0
    651c:	00 40 22 f3 	f3224000     { r0 = sub (r0, r2)
    6520:	00 40 9f 52 	529f4000       jumpr r31
    6524:	00 c6 c0 a1 	a1c0c600       memd (r0 + #0) = r7:6 }
    6528:	54 c0 dd 91 	91ddc054     r21:20 = memd (r29 + #16)
    652c:	04 1e 0d 3e 	3e0d1e04     r19:18 = memd (sp + #8) ; r17:16 = memd (sp + #0)
    6530:	1e c0 1e 90 	901ec01e     deallocframe
    6534:	00 c0 9f 52 	529fc000     jumpr r31
    6538:	00 c0 00 7f 	7f00c000     nop
    653c:	00 c0 00 7f 	7f00c000     nop

00006540 <memset>:
    6540:	80 40 82 61 	61824080     { if (r2 == #0) jump:nt 6640 <memset+0x100>
    6544:	e7 40 41 8c 	8c4140e7       r7 = vsplatb (r1)
    6548:	06 c0 60 70 	7060c006       r6 = r0 }
    654c:	04 47 07 f5 	f5074704     { r5:4 = combine (r7, r7)
    6550:	10 c8 02 11 	1102c810       p0 = cmp.gtu (r2, #8) ; if (p0.new) jump:nt 656c <memset+0x2c> }
    6554:	18 40 02 60 	60024018     { loop0 (6560 <memset+0x20>, r2)
    6558:	03 40 60 70 	70604003       r3 = r0
    655c:	00 c0 00 7f 	7f00c000       nop }
    6560:	00 80 00 7f 	7f008000     { nop
    6564:	08 c1 03 ab 	ab03c108       memb (r3 ++ #1) = r1 }:endloop0
    6568:	00 c0 9f 52 	529fc000     jumpr r31
    656c:	0a 43 c0 11 	11c0430a     { p0 = tstbit (r0, #0) ; if (!p0.new) jump:nt 6580 <memset+0x40>
    6570:	21 c0 02 75 	7502c021       p1 = cmp.eq (r2, #1) }
    6574:	e2 7f e2 bf 	bfe27fe2     { r2 = add (r2, #-1)
    6578:	66 41 00 5c 	5c004166       if (p1) jump 6640 <memset+0x100>
    657c:	01 10 06 71 	71061001       r6 = add (r0, #1) ; memb (r0 + #0) = r1 }
    6580:	00 41 06 85 	85064100     { p0 = tstbit (r6, #1)
    6584:	0a c8 20 5c 	5c20c80a       if !p0.new jump:nt 6594 <memset+0x54> }
    6588:	c2 7f e2 bf 	bfe27fc2     { r2 = add (r2, #-2)
    658c:	5c 42 02 10 	1002425c       p0 = cmp.eq (r2, #2) ; if (p0.new) jump:nt 6640 <memset+0x100>
    6590:	08 c7 46 ab 	ab46c708       memh (r6 ++ #2) = r7 }
    6594:	00 42 06 85 	85064200     { p0 = tstbit (r6, #2)
    6598:	0a c8 20 5c 	5c20c80a       if !p0.new jump:nt 65a8 <memset+0x68> }
    659c:	82 7f e2 bf 	bfe27f82     { r2 = add (r2, #-4)
    65a0:	52 44 02 10 	10024452       p0 = cmp.eq (r2, #4) ; if (p0.new) jump:nt 6640 <memset+0x100>
    65a4:	08 c7 86 ab 	ab86c708       memw (r6 ++ #4) = r7 }
    65a8:	e0 4f 82 75 	75824fe0     { p0 = cmp.gtu (r2, #127)
    65ac:	2c c8 20 5c 	5c20c82c       if !p0.new jump:nt 6600 <memset+0xc0> }
    65b0:	e3 c3 06 76 	7606c3e3     r3 = and (r6, #31)
    65b4:	16 c0 83 61 	6183c016     if (r3 == #0) jump:nt 65e0 <memset+0xa0>
    65b8:	02 7f e2 bf 	bfe27f02     { r2 = add (r2, #-8)
    65bc:	08 c4 c6 ab 	abc6c408       memd (r6 ++ #8) = r5:4 }
    65c0:	e3 c3 06 76 	7606c3e3     r3 = and (r6, #31)
    65c4:	0e c0 83 61 	6183c00e     if (r3 == #0) jump:nt 65e0 <memset+0xa0>
    65c8:	02 7f e2 bf 	bfe27f02     { r2 = add (r2, #-8)
    65cc:	08 c4 c6 ab 	abc6c408       memd (r6 ++ #8) = r5:4 }
    65d0:	e3 c3 06 76 	7606c3e3     r3 = and (r6, #31)
    65d4:	06 c0 83 61 	6183c006     if (r3 == #0) jump:nt 65e0 <memset+0xa0>
    65d8:	02 7f e2 bf 	bfe27f02     { r2 = add (r2, #-8)
    65dc:	08 c4 c6 ab 	abc6c408       memd (r6 ++ #8) = r5:4 }
    65e0:	32 40 01 61 	61014032     { if (r1 != #0) jump:nt 6644 <memset+0x104>
    65e4:	23 c5 02 8c 	8c02c523       r3 = lsr (r2, #5) }
    65e8:	18 40 03 60 	60034018     { loop0 (65f4 <memset+0xb4>, r3)
    65ec:	08 40 63 70 	70634008       r8 = r3
    65f0:	03 c0 66 70 	7066c003       r3 = r6 }
    65f4:	06 84 06 b0 	b0068406     { r6 = add (r6, #32)
    65f8:	02 7c e2 bf 	bfe27c02       r2 = add (r2, #-32)
    65fc:	00 c0 c6 a0 	a0c6c000       dczeroa (r6) }:endloop0
    6600:	0c 47 42 11 	1142470c     { p0 = cmp.gtu (r2, #7) ; if (!p0.new) jump:nt 6618 <memset+0xd8>
    6604:	28 c3 02 8c 	8c02c328       r8 = lsr (r2, #3) }
    6608:	10 40 08 60 	60084010     { loop0 (6610 <memset+0xd0>, r8)
    660c:	00 c0 00 7f 	7f00c000       nop }
    6610:	02 bf e2 bf 	bfe2bf02     { r2 = add (r2, #-8)
    6614:	08 c4 c6 ab 	abc6c408       memd (r6 ++ #8) = r5:4 }:endloop0
    6618:	00 42 02 85 	85024200     { p0 = tstbit (r2, #2)
    661c:	08 c8 20 5c 	5c20c808       if !p0.new jump:nt 6628 <memset+0xe8> }
    6620:	82 7f e2 bf 	bfe27f82     { r2 = add (r2, #-4)
    6624:	08 c7 86 ab 	ab86c708       memw (r6 ++ #4) = r7 }
    6628:	00 41 02 85 	85024100     { p0 = tstbit (r2, #1)
    662c:	08 c8 20 5c 	5c20c808       if !p0.new jump:nt 6638 <memset+0xf8> }
    6630:	c2 7f e2 bf 	bfe27fc2     { r2 = add (r2, #-2)
    6634:	08 c7 46 ab 	ab46c708       memh (r6 ++ #2) = r7 }
    6638:	20 c0 02 75 	7502c020     p0 = cmp.eq (r2, #1)
    663c:	00 c1 06 40 	4006c100     if (p0) memb (r6 + #0) = r1
    6640:	00 c0 9f 52 	529fc000     jumpr r31
    6644:	08 c0 03 60 	6003c008     loop0 (6648 <memset+0x108>, r3)
    6648:	00 c0 c6 a0 	a0c6c000     dczeroa (r6)
    664c:	02 7c e2 bf 	bfe27c02     { r2 = add (r2, #-32)
    6650:	08 c4 c6 ab 	abc6c408       memd (r6 ++ #8) = r5:4 }
    6654:	08 c4 c6 ab 	abc6c408     memd (r6 ++ #8) = r5:4
    6658:	08 c4 c6 ab 	abc6c408     memd (r6 ++ #8) = r5:4
    665c:	00 80 00 7f 	7f008000     { nop
    6660:	08 c4 c6 ab 	abc6c408       memd (r6 ++ #8) = r5:4 }:endloop0
    6664:	ce ff ff 59 	59ffffce     jump 6600 <memset+0xc0>
    6668:	00 c0 00 7f 	7f00c000     nop
    666c:	00 c0 00 7f 	7f00c000     nop

00006670 <__libc_start_main>:
    6670:	ca 41 c1 11 	11c141ca     { p0 = cmp.gt (r1, #-1) ; if (!p0.new) jump:nt 6804 <__libc_start_main+0x194>
    6674:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    6678:	ca c0 c1 10 	10c1c0ca     p0 = cmp.gt (r1, #0) ; if (!p0.new) jump:nt 680c <__libc_start_main+0x19c>
    667c:	c8 c0 00 10 	1000c0c8     p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 680c <__libc_start_main+0x19c>
    6680:	04 40 20 91 	91204004     { r4 = memub (r0 + #0)
    6684:	0a c0 02 24 	2402c00a       if (cmp.eq (r4.new, #0)) jump:nt 6694 <__libc_start_main+0x24> }
    6688:	0c c9 04 10 	1004c90c     p0 = cmp.eq (r4, #9) ; if (p0.new) jump:nt 66a0 <__libc_start_main+0x30>
    668c:	00 44 04 75 	75044400     { p0 = cmp.eq (r4, #32)
    6690:	0a c8 00 5c 	5c00c80a       if (p0.new) jump:nt 66a0 <__libc_start_main+0x30> }
    6694:	05 c0 60 70 	7060c005     r5 = r0
    6698:	18 40 00 58 	58004018     { jump 66c8 <__libc_start_main+0x58>
    669c:	04 c0 25 91 	9125c004       r4 = memub (r5 + #0) }
    66a0:	e1 7f e1 bf 	bfe17fe1     { r1 = add (r1, #-1)
    66a4:	20 40 00 b0 	b0004020       r0 = add (r0, #1)
    66a8:	b6 c0 02 24 	2402c0b6       if (cmp.eq (r0.new, #0)) jump:nt 680c <__libc_start_main+0x19c> }
    66ac:	b0 c0 c1 10 	10c1c0b0     p0 = cmp.gt (r1, #0) ; if (!p0.new) jump:nt 680c <__libc_start_main+0x19c>
    66b0:	04 40 20 91 	91204004     { r4 = memub (r0 + #0)
    66b4:	0a c0 02 24 	2402c00a       if (cmp.eq (r4.new, #0)) jump:nt 66c4 <__libc_start_main+0x54> }
    66b8:	f4 c9 34 10 	1034c9f4     p0 = cmp.eq (r4, #9) ; if (p0.new) jump:nt 66a0 <__libc_start_main+0x30>
    66bc:	00 44 04 75 	75044400     { p0 = cmp.eq (r4, #32)
    66c0:	f2 e8 df 5c 	5cdfe8f2       if (p0.new) jump:nt 66a0 <__libc_start_main+0x30> }
    66c4:	05 c0 60 70 	7060c005     r5 = r0
    66c8:	41 4d 00 00 	00004d41     { immext (#217152)
    66cc:	08 46 00 78 	78004608       r8 = ##217200
    66d0:	03 3c 08 28 	28083c03       r16 = #0 ; r7:6 = combine (#0, #0) }
    66d4:	1a c0 00 58 	5800c01a     jump 6708 <__libc_start_main+0x98>
    66d8:	1e c1 00 5c 	5c00c11e     if (p1) jump 6714 <__libc_start_main+0xa4>
    66dc:	1c c9 04 12 	1204c91c     p1 = cmp.eq (r4, #9) ; if (p1.new) jump:nt 6714 <__libc_start_main+0xa4>
    66e0:	40 44 04 75 	75044440     { p0 = cmp.eq (r4, #34)
    66e4:	68 48 00 5c 	5c004868       if (p0.new) jump:nt 67b0 <__libc_start_main+0x140>
    66e8:	20 60 80 74 	74806020       if !p0.new r0 = add (r0, #1)
    66ec:	25 e0 00 74 	7400e025       if (p0.new) r5 = add (r0, #1) }
    66f0:	e1 7f e1 bf 	bfe17fe1     { r1 = add (r1, #-1)
    66f4:	38 c0 c3 24 	24c3c038       if (!cmp.gt (r1.new, #0)) jump:nt 6760 <__libc_start_main+0xf0> }
    66f8:	34 c0 00 10 	1000c034     p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 6760 <__libc_start_main+0xf0>
    66fc:	60 4c 50 75 	75504c60     { p0 = cmp.gt (r16, #99)
    6700:	32 c8 00 5c 	5c00c832       if (p0.new) jump:nt 6760 <__libc_start_main+0xf0> }
    6704:	04 c0 20 91 	9120c004     r4 = memub (r0 + #0)
    6708:	10 40 04 75 	75044010     { p0 = !cmp.eq (r4, #0)
    670c:	e8 68 df 5c 	5cdf68e8       if (p0.new) jump:nt 66d8 <__libc_start_main+0x68>
    6710:	01 c4 04 75 	7504c401       p1 = cmp.eq (r4, #32) }
    6714:	04 60 00 7a 	7a006004     { r4 = mux (p0, #0, #1)
    6718:	48 40 46 12 	12464048       p1 = cmp.eq (r6, #0) ; if (!p1.new) jump:nt 67a4 <__libc_start_main+0x134>
    671c:	20 c0 00 39 	3900c020       if (p1.new) memb (r0 + #0) = #0 }
    6720:	27 40 80 7e 	7e804027     { if !p0 r7 = #1
    6724:	62 55 00 14 	14005562       p1 = cmp.eq (r0, r5) ; if (p1.new) jump:nt 67e4 <__libc_start_main+0x174>
    6728:	00 c0 04 75 	7504c000       p0 = cmp.eq (r4, #0) }
    672c:	04 c0 25 91 	9125c004     r4 = memub (r5 + #0)
    6730:	00 40 04 75 	75044000     { p0 = cmp.eq (r4, #0)
    6734:	00 40 a2 52 	52a24000       hintjr (r2)
    6738:	30 60 90 74 	74906030       if !p0.new r16 = add (r16, #1)
    673c:	05 f0 88 37 	3788f005       if !p0.new memw (r8 + r16 << #2) = r5 }
    6740:	e1 7f 01 74 	74017fe1     { if (p0.new) r1 = add (r1, #-1)
    6744:	10 40 47 10 	10474010       p0 = cmp.eq (r7, #0) ; if (!p0.new) jump:nt 6760 <__libc_start_main+0xf0>
    6748:	25 40 00 b0 	b0004025       r5 = add (r0, #1)
    674c:	00 c0 00 7f 	7f00c000       nop }
    6750:	00 40 65 70 	70654000     { r0 = r5
    6754:	d4 60 b1 10 	10b160d4       p0 = cmp.gt (r1, #0) ; if (p0.new) jump:t 66f8 <__libc_start_main+0x88>
    6758:	00 40 00 7f 	7f004000       nop
    675c:	00 c0 00 7f 	7f00c000       nop }
    6760:	00 40 00 78 	78004000     { r0 = #0
    6764:	00 40 02 75 	75024000       p0 = cmp.eq (r2, #0)
    6768:	41 4d 00 00 	00004d41       immext (#217152)
    676c:	b0 f4 b0 ad 	adb0f4b0       memw (r16 << #2 + ##217200) = r0.new }
    6770:	08 40 00 5c 	5c004008     { if (p0) jump 6780 <__libc_start_main+0x110>
    6774:	08 c3 9d 44 	449dc308       if !p0 memw (r29 + #4) = r3 }
    6778:	00 c0 a2 50 	50a2c000     callr r2
    677c:	23 c0 9d 91 	919dc023     r3 = memw (r29 + #4)
    6780:	06 40 03 10 	10034006     { p0 = cmp.eq (r3, #0) ; if (p0.new) jump:nt 678c <__libc_start_main+0x11c>
    6784:	50 59 00 5a 	5a005950       call 9a20 <atexit>
    6788:	00 c0 63 70 	7063c000       r0 = r3 }
    678c:	41 4d 00 00 	00004d41     { immext (#217152)
    6790:	00 66 30 73 	73306600       r1:0 = combine (##217200, r16)
    6794:	00 4f 00 00 	00004f00       immext (#245760)
    6798:	02 c5 00 78 	7800c502       r2 = ##245800 }
    679c:	6a f3 ff 5b 	5bfff36a     call 4e70 <main>
    67a0:	70 d9 00 5a 	5a00d970     call 9a80 <exit>
    67a4:	de 60 ff 5c 	5cff60de     { if !p0 jump 6760 <__libc_start_main+0xf0>
    67a8:	05 31 06 28 	28063105       r6 = #0 ; r5 = add (r0, #1) }
    67ac:	a2 c0 35 17 	1735c0a2     r0 = r5 ; jump 66f0 <__libc_start_main+0x80>
    67b0:	04 11 11 53 	53111104     r1 = add (r1, #-1) ; r4 = memub (r0 + #1)
    67b4:	40 44 04 75 	75044440     { p0 = cmp.eq (r4, #34)
    67b8:	14 48 00 5c 	5c004814       if (p0.new) jump:nt 67dc <__libc_start_main+0x16c>
    67bc:	00 e0 05 74 	7405e000       if (p0.new) r0 = add (r5, #0) }
    67c0:	18 40 04 10 	10044018     { p0 = cmp.eq (r4, #0) ; if (p0.new) jump:nt 67f0 <__libc_start_main+0x180>
    67c4:	06 c0 05 17 	1705c006       r0 = r5 ; jump 67cc <__libc_start_main+0x15c> }
    67c8:	14 c0 04 10 	1004c014     p0 = cmp.eq (r4, #0) ; if (p0.new) jump:nt 67f0 <__libc_start_main+0x180>
    67cc:	11 33 00 31 	31003311     r0 = add (r0, #1) ; r1 = add (r1, #-1)
    67d0:	04 c0 20 91 	9120c004     r4 = memub (r0 + #0)
    67d4:	40 44 04 75 	75044440     { p0 = cmp.eq (r4, #34)
    67d8:	fa f8 ff 5c 	5cfff8fa       if !p0.new jump:t 67c8 <__libc_start_main+0x158> }
    67dc:	a8 7f ff 59 	59ff7fa8     { jump 672c <__libc_start_main+0xbc>
    67e0:	00 32 16 68 	68163200       r6 = #1 ; memb (r0 + #0) = #0 }
    67e4:	ae 60 ff 5c 	5cff60ae     { if !p0 jump 6740 <__libc_start_main+0xd0>
    67e8:	86 7f ff 59 	59ff7f86       jump 66f0 <__libc_start_main+0x80>
    67ec:	20 c0 05 74 	7405c020       if (p0) r0 = add (r5, #1) }
    67f0:	06 44 00 00 	00004406     { immext (#65920)
    67f4:	00 40 00 78 	78004000       r0 = ##65920
    67f8:	f8 fc ff 5b 	5bfffcf8       call 61e0 <puts> }
    67fc:	00 40 00 78 	78004000     { r0 = #0
    6800:	42 d9 00 5a 	5a00d942       call 9a80 <exit> }
    6804:	20 40 00 78 	78004020     { r0 = #1
    6808:	40 1f 0c 3e 	3e0c1f40       r17:16 = memd (sp + #8) ; dealloc_return }
    680c:	aa c0 38 16 	1638c0aa     r16 = #0 ; jump 6760 <__libc_start_main+0xf0>

00006810 <strlen>:
    6810:	01 47 80 85 	85804701     { p1 = bitsclr (r0, #7)
    6814:	28 49 20 5c 	5c204928       if !p1.new jump:nt 6860 <strlen+0x50>
    6818:	04 10 02 48 	48021004       r2 = #0 ; r4 = memub (r0 + #0) }
    681c:	1e c0 04 10 	1004c01e     p0 = cmp.eq (r4, #0) ; if (p0.new) jump:nt 6858 <strlen+0x48>
    6820:	06 40 00 7c 	7c004006     { r7:6 = combine (#0, #0)
    6824:	02 41 82 74 	74824102       if !p0 r2 = add (r2, #8)
    6828:	00 40 00 7f 	7f004000       nop
    682c:	04 c2 c0 31 	31c0c204       if !p0 r5:4 = memd (r0 + r2 << #0) }
    6830:	00 66 04 d2 	d2046600     { p0 = any8 (vcmpb.eq (r5:4, r7:6))
    6834:	00 58 20 5c 	5c205800       if !p0.new jump:t 6830 <strlen+0x20>
    6838:	02 61 82 74 	74826102       if !p0.new r2 = add (r2, #8)
    683c:	04 c2 c0 33 	33c0c204       if !p0.new r5:4 = memd (r0 + r2 << #0) }
    6840:	c0 c6 04 d2 	d204c6c0     p0 = vcmpb.eq (r5:4, r7:6)
    6844:	04 c0 40 89 	8940c004     r4 = p0
    6848:	84 40 44 8c 	8c444084     { r4 = ct0 (r4)
    684c:	02 ff e2 bf 	bfe2ff02       r2 = add (r2, #-8) }
    6850:	00 44 02 f3 	f3024400     { r0 = add (r2, r4)
    6854:	00 c0 9f 52 	529fc000       jumpr r31 }
    6858:	00 40 00 7f 	7f004000     { nop
    685c:	c0 3f 00 48 	48003fc0       r0 = #0 ; jumpr lr }
    6860:	01 42 00 f3 	f3004201     { r1 = add (r0, r2)
    6864:	14 c0 04 12 	1204c014       p1 = cmp.eq (r4, #0) ; if (p1.new) jump:nt 6888 <strlen+0x78> }
    6868:	00 47 81 85 	85814700     { p0 = bitsclr (r1, #7)
    686c:	fc 68 ff 5c 	5cff68fc       if !p0.new jump:nt 6860 <strlen+0x50>
    6870:	22 60 82 74 	74826022       if !p0.new r2 = add (r2, #1)
    6874:	24 c0 21 47 	4721c024       if !p0.new r4 = memub (r1 + #1) }
    6878:	06 40 00 7c 	7c004006     { r7:6 = combine (#0, #0)
    687c:	dc 7f ff 59 	59ff7fdc       jump 6830 <strlen+0x20>
    6880:	02 41 02 b0 	b0024102       r2 = add (r2, #8)
    6884:	04 c2 c0 3a 	3ac0c204       r5:4 = memd (r0 + r2 << #0) }
    6888:	c0 3f 20 50 	50203fc0     r0 = r2 ; jumpr lr
    688c:	00 c0 00 7f 	7f00c000     nop

00006890 <write>:
    6890:	10 40 62 70 	70624010     { r16 = r2
    6894:	a8 48 01 5a 	5a0148a8       call f9e0 <__sys_write>
    6898:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    689c:	00 50 20 f3 	f3205000     { r0 = sub (r16, r0)
    68a0:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    68a4:	00 c0 00 7f 	7f00c000     nop
    68a8:	00 c0 00 7f 	7f00c000     nop
    68ac:	00 c0 00 7f 	7f00c000     nop

000068b0 <hexagon_cache_cleaninv>:
    68b0:	e2 c3 00 76 	7600c3e2     r2 = and (r0, #31)
    68b4:	e2 e2 21 db 	db21e2e2     r2 = add (r1, add (r2, #31))
    68b8:	22 45 02 8c 	8c024522     { r2 = lsr (r2, #5)
    68bc:	01 40 60 70 	70604001       r1 = r0
    68c0:	12 c0 04 24 	2404c012       if (cmp.eq (r2.new, #0)) jump:nt 68dc <hexagon_cache_cleaninv+0x2c> }
    68c4:	10 40 02 60 	60024010     { loop0 (68cc <hexagon_cache_cleaninv+0x1c>, r2)
    68c8:	03 c0 00 78 	7800c003       r3 = #0 }
    68cc:	00 c0 41 a0 	a041c000     dccleaninva (r1)
    68d0:	00 80 00 7f 	7f008000     { nop
    68d4:	33 31 01 22 	22013133       r1 = add (r1, #32) ; r3 = add (r3, #1) }:endloop0
    68d8:	a0 c0 03 c4 	c403c0a0     r0 = addasl (r0, r3, #5)
    68dc:	00 fc e0 bf 	bfe0fc00     r0 = add (r0, #-32)
    68e0:	01 c0 00 91 	9100c001     r1 = memb (r0 + #0)
    68e4:	00 c0 40 a0 	a040c000     dccleaninva (r0)
    68e8:	00 c0 9f 52 	529fc000     jumpr r31
    68ec:	00 c0 00 7f 	7f00c000     nop

000068f0 <hexagon_cache_inva>:
    68f0:	e2 c3 00 76 	7600c3e2     r2 = and (r0, #31)
    68f4:	e2 e2 21 db 	db21e2e2     r2 = add (r1, add (r2, #31))
    68f8:	22 c5 02 8c 	8c02c522     r2 = lsr (r2, #5)
    68fc:	c6 3f 20 59 	59203fc6     p0 = cmp.eq (r2, #0) ; if (p0.new) jumpr:nt lr
    6900:	08 c0 02 60 	6002c008     loop0 (6904 <hexagon_cache_inva+0x14>, r2)
    6904:	00 c0 20 a0 	a020c000     dcinva (r0)
    6908:	00 84 00 b0 	b0008400     { r0 = add (r0, #32)
    690c:	00 c0 00 7f 	7f00c000       nop }:endloop0
    6910:	00 c0 9f 52 	529fc000     jumpr r31
    6914:	00 c0 00 7f 	7f00c000     nop
    6918:	00 c0 00 7f 	7f00c000     nop
    691c:	00 c0 00 7f 	7f00c000     nop

00006920 <__deregister_frame_info_bases>:
    6920:	1e 48 00 5c 	5c00481e     { if (p0.new) jump:nt 695c <__deregister_frame_info_bases+0x3c>
    6924:	00 3c 00 79 	79003c00       p0 = cmp.eq (r0, #0) ; allocframe (#0) }
    6928:	01 40 80 91 	91804001     { r1 = memw (r0 + #0)
    692c:	1a c0 03 24 	2403c01a       if (cmp.eq (r1.new, #0)) jump:nt 695c <__deregister_frame_info_bases+0x3c> }
    6930:	82 45 80 49 	49804582     { r2 = memw (gp + #176)
    6934:	16 c0 02 24 	2402c016       if (cmp.eq (r2.new, #0)) jump:nt 695c <__deregister_frame_info_bases+0x3c> }
    6938:	21 c0 82 91 	9182c021     r1 = memw (r2 + #4)
    693c:	0a e1 40 14 	1440e10a     p0 = cmp.eq (r0, r1) ; if (!p0.new) jump:t 6950 <__deregister_frame_info_bases+0x30>
    6940:	02 4f 00 00 	00004f02     { immext (#245888)
    6944:	01 46 00 78 	78004601       r1 = ##245936
    6948:	10 c0 00 58 	5800c010       jump 6960 <__deregister_frame_info_bases+0x40> }
    694c:	0a c3 00 14 	1400c30a     p0 = cmp.eq (r0, r3) ; if (p0.new) jump:nt 6960 <__deregister_frame_info_bases+0x40>
    6950:	22 00 21 50 	50210022     r1 = r2 ; r2 = memw (r2 + #0)
    6954:	fc 60 72 10 	107260fc     { p0 = cmp.eq (r2, #0) ; if (!p0.new) jump:t 694c <__deregister_frame_info_bases+0x2c>
    6958:	23 c0 82 47 	4782c023       if !p0.new r3 = memw (r2 + #4) }
    695c:	40 3f 00 48 	48003f40     r0 = #0 ; dealloc_return
    6960:	00 40 62 70 	70624000     { r0 = r2
    6964:	88 76 ff 5b 	5bff7688       call 5670 <free>
    6968:	03 40 82 91 	91824003       r3 = memw (r2 + #0)
    696c:	00 d3 a1 a1 	a1a1d300       memw (r1 + #0) = r3.new }
    6970:	40 3f 00 48 	48003f40     r0 = #0 ; dealloc_return
    6974:	00 40 00 7f 	7f004000     { nop
    6978:	00 40 00 7f 	7f004000       nop
    697c:	00 c0 00 7f 	7f00c000       nop }

00006980 <__registerx>:
    6980:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    6984:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    6988:	06 40 08 10 	10084006     { p0 = cmp.eq (r16, #0) ; if (p0.new) jump:nt 6994 <__registerx+0x14>
    698c:	00 c0 90 47 	4790c000       if !p0.new r0 = memw (r16 + #0) }
    6990:	04 c0 40 10 	1040c004     p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 6998 <__registerx+0x18>
    6994:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    6998:	00 63 00 7c 	7c006300     { r1:0 = combine (#24, #1)
    699c:	d4 57 00 5a 	5a0057d4       call 9940 <calloc>
    69a0:	04 08 13 e8 	e8130804       memw (sp + #4) = r3 ; memw (sp + #0) = r4 }
    69a4:	12 40 00 10 	10004012     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 69c8 <__registerx+0x48>
    69a8:	04 1c 13 3c 	3c131c04       r3 = memw (sp + #4) ; r4 = memw (sp + #0) }
    69ac:	81 45 80 49 	49804581     { r1 = memw (gp + #176)
    69b0:	01 d0 80 a1 	a180d001       memw (r0 + #4) = r16 }
    69b4:	09 02 01 a0 	a0010209     memw (r0 + #0) = r1 ; memw (r0 + #8) = r17
    69b8:	03 03 04 a4 	a4040303     memw (r0 + #16) = r4 ; memw (r0 + #12) = r3
    69bc:	2c 40 80 48 	4880402c     { memw (gp + #176) = r0
    69c0:	80 c2 40 3c 	3c40c280       memw (r0 + #20) = #0 }
    69c4:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    69c8:	b4 d7 00 5a 	5a00d7b4     call 9930 <abort>
    69cc:	00 c0 00 7f 	7f00c000     nop

000069d0 <__register_frame_info_bases>:
    69d0:	04 43 02 f5 	f5024304     { r5:4 = combine (r2, r3)
    69d4:	16 30 01 28 	28013016       r1 = #0 ; r6 = r1 }
    69d8:	02 46 05 f5 	f5054602     { r3:2 = combine (r5, r6)
    69dc:	d4 ff ff 59 	59ffffd4       jump 6980 <__registerx> }

000069e0 <remove>:
    69e0:	a0 c6 01 58 	5801c6a0     jump f720 <__sys_remove>
    69e4:	00 c0 00 7f 	7f00c000     nop
    69e8:	00 c0 00 7f 	7f00c000     nop
    69ec:	00 c0 00 7f 	7f00c000     nop

000069f0 <sqrt>:
    69f0:	40 1c f4 eb 	ebf41c40     memd (sp + #-16) = r17:16 ; allocframe (#32)
    69f4:	12 40 01 f5 	f5014012     { r19:18 = combine (r1, r0)
    69f8:	c0 41 1d b0 	b01d41c0       r0 = add (r29, #14)
    69fc:	15 0a 00 ea 	ea000a15       memd (sp + #0) = r1:0 ; memd (sp + #16) = r19:18 }
    6a00:	01 40 7d 70 	707d4001     { r1 = r29
    6a04:	78 c1 00 5a 	5a00c178       call 6cf0 <_Dunscale> }
    6a08:	1e c1 00 10 	1000c11e     p0 = cmp.eq (r0, #1) ; if (p0.new) jump:nt 6a44 <sqrt+0x54>
    6a0c:	04 c2 00 10 	1000c204     p0 = cmp.eq (r0, #2) ; if (p0.new) jump:nt 6a14 <sqrt+0x24>
    6a10:	0a c0 40 10 	1040c00a     p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 6a24 <sqrt+0x34>
    6a14:	00 52 13 f5 	f5135200     { r1:0 = combine (r19, r18)
    6a18:	36 c4 01 5a 	5a01c436       call f280 <__hexagon_sqrt> }
    6a1c:	1c 1e 15 3e 	3e151e1c     r19:18 = memd (sp + #16) ; r17:16 = memd (sp + #24)
    6a20:	1e c0 1e 96 	961ec01e     dealloc_return
    6a24:	60 40 5d 91 	915d4060     { r0 = memh (r29 + #6)
    6a28:	f8 c0 b2 26 	26b2c0f8       if (cmp.gt (r0.new, #-1)) jump:nt 6a14 <sqrt+0x24> }
    6a2c:	20 40 00 78 	78004020     { r0 = #1
    6a30:	02 c3 00 5a 	5a00c302       call 7030 <_Feraise> }
    6a34:	00 52 13 f5 	f5135200     { r1:0 = combine (r19, r18)
    6a38:	26 c4 01 5a 	5a01c426       call f280 <__hexagon_sqrt> }
    6a3c:	1c 1e 15 3e 	3e151e1c     r19:18 = memd (sp + #16) ; r17:16 = memd (sp + #24)
    6a40:	1e c0 1e 96 	961ec01e     dealloc_return
    6a44:	60 40 5d 91 	915d4060     { r0 = memh (r29 + #6)
    6a48:	e8 c0 b2 26 	26b2c0e8       if (cmp.gt (r0.new, #-1)) jump:nt 6a14 <sqrt+0x24> }
    6a4c:	20 40 00 78 	78004020     { r0 = #1
    6a50:	f2 c2 00 5a 	5a00c2f2       call 7030 <_Feraise> }
    6a54:	f0 ff ff 59 	59fffff0     jump 6a34 <sqrt+0x44>
    6a58:	00 c0 00 7f 	7f00c000     nop
    6a5c:	00 c0 00 7f 	7f00c000     nop

00006a60 <strncmp>:
    6a60:	16 c0 02 10 	1002c016     p0 = cmp.eq (r2, #0) ; if (p0.new) jump:nt 6a8c <strncmp+0x2c>
    6a64:	03 10 14 10 	10141003     r4 = memub (r1 + #0) ; r3 = memub (r0 + #0)
    6a68:	14 c4 43 14 	1443c414     p0 = cmp.eq (r3, r4) ; if (!p0.new) jump:nt 6a90 <strncmp+0x30>
    6a6c:	0a 60 43 10 	1043600a     { p0 = cmp.eq (r3, #0) ; if (!p0.new) jump:t 6a80 <strncmp+0x20>
    6a70:	10 c0 00 58 	5800c010       jump 6a8c <strncmp+0x2c> }
    6a74:	14 10 03 10 	10031014     r3 = memub (r0 + #0) ; r4 = memub (r1 + #0)
    6a78:	0c 44 43 14 	1443440c     { p0 = cmp.eq (r3, r4) ; if (!p0.new) jump:nt 6a90 <strncmp+0x30>
    6a7c:	0a c0 03 12 	1203c00a       p1 = cmp.eq (r3, #0) ; if (p1.new) jump:nt 6a8c <strncmp+0x2c> }
    6a80:	21 40 01 b0 	b0014021     { r1 = add (r1, #1)
    6a84:	22 33 00 31 	31003322       r0 = add (r0, #1) ; r2 = add (r2, #-1) }
    6a88:	f6 c0 72 10 	1072c0f6     p0 = cmp.eq (r2, #0) ; if (!p0.new) jump:nt 6a74 <strncmp+0x14>
    6a8c:	c0 3f 00 48 	48003fc0     r0 = #0 ; jumpr lr
    6a90:	00 c3 64 f2 	f264c300     p0 = cmp.gtu (r4, r3)
    6a94:	e0 7f 00 7a 	7a007fe0     { r0 = mux (p0, #-1, #1)
    6a98:	00 c0 9f 52 	529fc000       jumpr r31 }
    6a9c:	00 c0 00 7f 	7f00c000     nop

00006aa0 <strncpy>:
    6aa0:	c6 3f 20 59 	59203fc6     p0 = cmp.eq (r2, #0) ; if (p0.new) jumpr:nt lr
    6aa4:	03 40 60 70 	70604003     { r3 = r0
    6aa8:	04 40 21 91 	91214004       r4 = memub (r1 + #0)
    6aac:	1c c0 02 24 	2402c01c       if (cmp.eq (r4.new, #0)) jump:nt 6adc <strncpy+0x3c> }
    6ab0:	21 40 01 b0 	b0014021     { r1 = add (r1, #1)
    6ab4:	23 40 03 b0 	b0034023       r3 = add (r3, #1)
    6ab8:	34 10 22 73 	73221034       r2 = add (r2, #-1) ; memb (r3 + #0) = r4 }
    6abc:	c6 3f 20 59 	59203fc6     p0 = cmp.eq (r2, #0) ; if (p0.new) jumpr:nt lr
    6ac0:	04 40 21 91 	91214004     { r4 = memub (r1 + #0)
    6ac4:	f8 c0 72 24 	2472c0f8       if (!cmp.eq (r4.new, #0)) jump:nt 6ab0 <strncpy+0x10> }
    6ac8:	10 40 02 60 	60024010     { loop0 (6ad0 <strncpy+0x30>, r2)
    6acc:	00 c0 00 7f 	7f00c000       nop }
    6ad0:	00 80 00 7f 	7f008000     { nop
    6ad4:	30 32 33 71 	71333230       r3 = add (r3, #1) ; memb (r3 + #0) = #0 }:endloop0
    6ad8:	00 c0 9f 52 	529fc000     jumpr r31
    6adc:	f6 c3 30 17 	1730c3f6     r3 = r0 ; jump 6ac8 <strncpy+0x28>

00006ae0 <ungetc>:
    6ae0:	10 41 00 f5 	f5004110     { r17:16 = combine (r0, r1)
    6ae4:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    6ae8:	00 40 70 70 	70704000     { r0 = r16
    6aec:	5c d5 00 5a 	5a00d55c       call 95a0 <_Lockfilelock> }
    6af0:	81 48 10 b0 	b0104881     { r1 = add (r16, #68)
    6af4:	10 40 c9 11 	11c94010       p0 = cmp.eq (r17, #-1) ; if (!p0.new) jump:nt 6b10 <ungetc+0x30>
    6af8:	00 40 00 7f 	7f004000       nop
    6afc:	e0 c0 90 47 	4790c0e0       if !p0.new r0 = memw (r16 + #28) }
    6b00:	00 40 70 70 	70704000     { r0 = r16
    6b04:	d8 d4 00 5a 	5a00d4d8       call 94b0 <_Unlockfilelock> }
    6b08:	00 40 71 70 	70714000     { r0 = r17
    6b0c:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    6b10:	06 c1 00 15 	1500c106     p0 = cmp.gtu (r0, r1) ; if (p0.new) jump:nt 6b1c <ungetc+0x3c>
    6b14:	f1 7f df 78 	78df7ff1     { r17 = #-1
    6b18:	f6 ff ff 59 	59fffff6       jump 6b00 <ungetc+0x20> }
    6b1c:	01 c0 70 91 	9170c001     r1 = memuh (r16 + #0)
    6b20:	80 42 00 00 	00004280     { immext (#40960)
    6b24:	22 40 01 76 	76014022       r2 = and (r1, ##40961)
    6b28:	fa c1 72 24 	2472c1fa       if (!cmp.eq (r2.new, #1)) jump:nt 6b14 <ungetc+0x34> }
    6b2c:	03 40 48 78 	78484003     { r3 = #20480
    6b30:	62 c1 90 91 	9190c162       r2 = memw (r16 + #44) }
    6b34:	bb 42 00 00 	000042bb     { immext (#44736)
    6b38:	e3 47 41 da 	da4147e3       r1 = or (r3, and (r1, ##44799))
    6b3c:	00 40 02 75 	75024000       p0 = cmp.eq (r2, #0)
    6b40:	00 cd b0 a1 	a1b0cd00       memh (r16 + #0) = r1.new }
    6b44:	41 40 90 41 	41904041     { if (p0) r1 = memw (r16 + #8)
    6b48:	a2 c0 90 41 	4190c0a2       if (p0) r2 = memw (r16 + #20) }
    6b4c:	e1 7f e0 bf 	bfe07fe1     { r1 = add (r0, #-1)
    6b50:	28 41 90 40 	40904128       if (p0) memw (r16 + #20) = r1
    6b54:	58 c2 90 40 	4090c258       if (p0) memw (r16 + #44) = r2 }
    6b58:	d4 7f ff 59 	59ff7fd4     { jump 6b00 <ungetc+0x20>
    6b5c:	07 41 90 a1 	a1904107       memw (r16 + #28) = r1
    6b60:	ff f1 00 a7 	a700f1ff       memb (r0 + #-1) = r17 }
    6b64:	00 c0 00 7f 	7f00c000     nop
    6b68:	00 c0 00 7f 	7f00c000     nop
    6b6c:	00 c0 00 7f 	7f00c000     nop

00006b70 <_Dint>:
    6b70:	62 c0 60 91 	9160c062     r2 = memuh (r0 + #6)
    6b74:	83 cb 02 8d 	8d02cb83     r3 = extractu (r2, #11, #4)
    6b78:	1f 40 00 00 	0000401f     { immext (#1984)
    6b7c:	e0 47 03 75 	750347e0       p0 = cmp.eq (r3, ##2047)
    6b80:	64 c8 00 5c 	5c00c864       if (p0.new) jump:nt 6c40 <_Dint+0xd0> }
    6b84:	ff 41 00 00 	000041ff     { immext (#32704)
    6b88:	e4 47 02 76 	760247e4       r4 = and (r2, ##32767)
    6b8c:	38 c0 02 24 	2402c038       if (cmp.eq (r4.new, #0)) jump:nt 6bf4 <_Dint+0x84> }
    6b90:	10 40 00 00 	00004010     { immext (#1024)
    6b94:	61 c6 41 76 	7641c661       r1 = sub (##1075, r1) }
    6b98:	01 41 23 d5 	d5234101     { r1 = sub (r1.l, r3.l)
    6b9c:	2c c0 c3 24 	24c3c02c       if (!cmp.gt (r1.new, #0)) jump:nt 6bf0 <_Dint+0x80> }
    6ba0:	80 46 41 75 	75414680     { p0 = cmp.gt (r1, #52)
    6ba4:	64 48 00 5c 	5c004864       if (p0.new) jump:nt 6c68 <_Dint+0xf8>
    6ba8:	00 40 20 39 	39204000       if (p0.new) memh (r0 + #0) = #0
    6bac:	00 c1 20 39 	3920c100       if (p0.new) memh (r0 + #4) = #0 }
    6bb0:	02 44 01 8c 	8c014402     { r2 = asr (r1, #4)
    6bb4:	e1 c1 01 76 	7601c1e1       r1 = and (r1, #15) }
    6bb8:	07 44 00 00 	00004407     { immext (#65984)
    6bbc:	03 70 82 9d 	9d827003       r3 = memw (r2 << #2 + ##65984)
    6bc0:	06 44 00 00 	00004406       immext (#65920)
    6bc4:	81 d8 61 9d 	9d61d881       r1 = memuh (r1 << #1 + ##65952) }
    6bc8:	40 40 02 75 	75024040     { p0 = cmp.eq (r2, #2)
    6bcc:	84 c3 60 3a 	3a60c384       r4 = memuh (r0 + r3 << #1) }
    6bd0:	01 c1 04 f1 	f104c101     r1 = and (r4, r1)
    6bd4:	04 44 61 f1 	f1614404     { r4 = xor (r1, r4)
    6bd8:	24 40 00 5c 	5c004024       if (p0) jump 6c1c <_Dint+0xac>
    6bdc:	8c c3 a0 3b 	3ba0c38c       memh (r0 + r3 << #1) = r4.new }
    6be0:	18 c3 02 10 	1002c318     p0 = cmp.eq (r2, #3) ; if (p0.new) jump:nt 6c10 <_Dint+0xa0>
    6be4:	22 c1 02 10 	1002c122     p0 = cmp.eq (r2, #1) ; if (p0.new) jump:nt 6c28 <_Dint+0xb8>
    6be8:	e0 7f 8f 7e 	7e8f7fe0     { if !p0.new r0 = #-1
    6bec:	c7 3f 10 59 	59103fc7       p0 = cmp.eq (r1, #0) ; if (!p0.new) jumpr:nt lr }
    6bf0:	c0 3f 00 48 	48003fc0     r0 = #0 ; jumpr lr
    6bf4:	44 40 60 91 	91604044     { r4 = memuh (r0 + #4)
    6bf8:	ce c0 72 24 	2472c0ce       if (!cmp.eq (r4.new, #0)) jump:nt 6b90 <_Dint+0x20> }
    6bfc:	24 40 60 91 	91604024     { r4 = memuh (r0 + #2)
    6c00:	ca c0 72 24 	2472c0ca       if (!cmp.eq (r4.new, #0)) jump:nt 6b90 <_Dint+0x20> }
    6c04:	04 40 60 91 	91604004     { r4 = memuh (r0 + #0)
    6c08:	c6 c0 72 24 	2472c0c6       if (!cmp.eq (r4.new, #0)) jump:nt 6b90 <_Dint+0x20> }
    6c0c:	f2 ff ff 59 	59fffff2     jump 6bf0 <_Dint+0x80>
    6c10:	42 40 60 91 	91604042     { r2 = memuh (r0 + #4)
    6c14:	00 c1 20 3c 	3c20c100       memh (r0 + #4) = #0 }
    6c18:	01 c1 22 f1 	f122c101     r1 = or (r2, r1)
    6c1c:	22 40 60 91 	91604022     { r2 = memuh (r0 + #2)
    6c20:	80 c0 20 3c 	3c20c080       memh (r0 + #2) = #0 }
    6c24:	01 c1 22 f1 	f122c101     r1 = or (r2, r1)
    6c28:	02 40 60 91 	91604002     { r2 = memuh (r0 + #0)
    6c2c:	00 c0 20 3c 	3c20c000       memh (r0 + #0) = #0 }
    6c30:	01 c1 22 f1 	f122c101     r1 = or (r2, r1)
    6c34:	e0 7f 8f 7e 	7e8f7fe0     { if !p0.new r0 = #-1
    6c38:	c7 3f 10 59 	59103fc7       p0 = cmp.eq (r1, #0) ; if (!p0.new) jumpr:nt lr }
    6c3c:	da ff ff 59 	59ffffda     jump 6bf0 <_Dint+0x80>
    6c40:	e2 41 02 76 	760241e2     { r2 = and (r2, #15)
    6c44:	12 c0 42 24 	2442c012       if (!cmp.eq (r2.new, #0)) jump:nt 6c64 <_Dint+0xf4> }
    6c48:	41 40 60 91 	91604041     { r1 = memuh (r0 + #4)
    6c4c:	0e c0 43 24 	2443c00e       if (!cmp.eq (r1.new, #0)) jump:nt 6c64 <_Dint+0xf4> }
    6c50:	21 40 60 91 	91604021     { r1 = memuh (r0 + #2)
    6c54:	0a c0 43 24 	2443c00a       if (!cmp.eq (r1.new, #0)) jump:nt 6c64 <_Dint+0xf4> }
    6c58:	00 c0 60 91 	9160c000     r0 = memuh (r0 + #0)
    6c5c:	20 60 00 7e 	7e006020     { if (p0.new) r0 = #1
    6c60:	c6 3f 00 59 	59003fc6       p0 = cmp.eq (r0, #0) ; if (p0.new) jumpr:nt lr }
    6c64:	c0 3f 20 48 	48203fc0     r0 = #2 ; jumpr lr
    6c68:	00 42 00 00 	00004200     { immext (#32768)
    6c6c:	02 40 02 76 	76024002       r2 = and (r2, ##32768)
    6c70:	03 ca a0 a1 	a1a0ca03       memh (r0 + #6) = r2.new }
    6c74:	e0 7f df 78 	78df7fe0     { r0 = #-1
    6c78:	00 40 9f 52 	529f4000       jumpr r31
    6c7c:	80 c0 20 3c 	3c20c080       memh (r0 + #2) = #0 }

00006c80 <_Dtest>:
    6c80:	02 7e 5f 78 	785f7e02     { r2 = #32752
    6c84:	61 c0 60 91 	9160c061       r1 = memuh (r0 + #6) }
    6c88:	03 42 01 f1 	f1014203     { r3 = and (r1, r2)
    6c8c:	1e c2 03 20 	2003c21e       if (cmp.eq (r3.new, r2)) jump:nt 6cc4 <_Dtest+0x44> }
    6c90:	ff 41 00 00 	000041ff     { immext (#32704)
    6c94:	e1 47 01 76 	760147e1       r1 = and (r1, ##32767)
    6c98:	0c c0 03 24 	2403c00c       if (cmp.eq (r1.new, #0)) jump:nt 6ca8 <_Dtest+0x28> }
    6c9c:	00 c0 03 75 	7503c000     p0 = cmp.eq (r3, #0)
    6ca0:	c0 7f 7f 7a 	7a7f7fc0     { r0 = mux (p0, #-2, #-1)
    6ca4:	00 c0 9f 52 	529fc000       jumpr r31 }
    6ca8:	41 40 60 91 	91604041     { r1 = memuh (r0 + #4)
    6cac:	fa c0 73 24 	2473c0fa       if (!cmp.eq (r1.new, #0)) jump:nt 6c9c <_Dtest+0x1c> }
    6cb0:	21 40 60 91 	91604021     { r1 = memuh (r0 + #2)
    6cb4:	f6 c0 73 24 	2473c0f6       if (!cmp.eq (r1.new, #0)) jump:nt 6c9c <_Dtest+0x1c> }
    6cb8:	00 40 60 91 	91604000     { r0 = memuh (r0 + #0)
    6cbc:	f2 c0 72 24 	2472c0f2       if (!cmp.eq (r0.new, #0)) jump:nt 6c9c <_Dtest+0x1c> }
    6cc0:	00 c0 9f 52 	529fc000     jumpr r31
    6cc4:	e1 41 01 76 	760141e1     { r1 = and (r1, #15)
    6cc8:	14 c0 43 24 	2443c014       if (!cmp.eq (r1.new, #0)) jump:nt 6cec <_Dtest+0x6c> }
    6ccc:	41 40 60 91 	91604041     { r1 = memuh (r0 + #4)
    6cd0:	10 c0 43 24 	2443c010       if (!cmp.eq (r1.new, #0)) jump:nt 6cec <_Dtest+0x6c> }
    6cd4:	21 40 60 91 	91604021     { r1 = memuh (r0 + #2)
    6cd8:	0c c0 43 24 	2443c00c       if (!cmp.eq (r1.new, #0)) jump:nt 6cec <_Dtest+0x6c> }
    6cdc:	00 c0 60 91 	9160c000     r0 = memuh (r0 + #0)
    6ce0:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    6ce4:	00 58 5f 53 	535f5800       if (p0.new) jumpr:t r31
    6ce8:	20 e0 00 7e 	7e00e020       if (p0.new) r0 = #1 }
    6cec:	c0 3f 20 48 	48203fc0     r0 = #2 ; jumpr lr

00006cf0 <_Dunscale>:
    6cf0:	10 40 60 70 	70604010     { r16 = r0
    6cf4:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    6cf8:	62 c0 61 91 	9161c062     r2 = memuh (r1 + #6)
    6cfc:	80 cb 02 8d 	8d02cb80     r0 = extractu (r2, #11, #4)
    6d00:	1f 40 00 00 	0000401f     { immext (#1984)
    6d04:	e0 47 00 75 	750047e0       p0 = cmp.eq (r0, ##2047)
    6d08:	1a 48 00 5c 	5c00481a       if (p0.new) jump:nt 6d34 <_Dunscale+0x44>
    6d0c:	00 c0 30 39 	3930c000       if (p0.new) memh (r16 + #0) = #0 }
    6d10:	00 60 01 74 	74016000     { if (p0.new) r0 = add (r1, #0)
    6d14:	2c 40 40 10 	1040402c       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 6d68 <_Dunscale+0x78>
    6d18:	08 c1 9d 42 	429dc108       if (p0.new) memw (r29 + #4) = r1 }
    6d1c:	1a da 00 5a 	5a00da1a     call a150 <_Dnorm>
    6d20:	22 40 c0 10 	10c04022     { p0 = cmp.gt (r0, #0) ; if (!p0.new) jump:nt 6d64 <_Dunscale+0x74>
    6d24:	21 40 9d 91 	919d4021       r1 = memw (r29 + #4)
    6d28:	00 c0 30 39 	3930c000       if (p0.new) memh (r16 + #0) = #0 }
    6d2c:	00 c0 00 78 	7800c000     r0 = #0
    6d30:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    6d34:	60 c0 61 91 	9161c060     r0 = memuh (r1 + #6)
    6d38:	e0 41 00 76 	760041e0     { r0 = and (r0, #15)
    6d3c:	12 c0 42 24 	2442c012       if (!cmp.eq (r0.new, #0)) jump:nt 6d5c <_Dunscale+0x6c> }
    6d40:	40 40 61 91 	91614040     { r0 = memuh (r1 + #4)
    6d44:	0e c0 42 24 	2442c00e       if (!cmp.eq (r0.new, #0)) jump:nt 6d5c <_Dunscale+0x6c> }
    6d48:	20 40 61 91 	91614020     { r0 = memuh (r1 + #2)
    6d4c:	0a c0 42 24 	2442c00a       if (!cmp.eq (r0.new, #0)) jump:nt 6d5c <_Dunscale+0x6c> }
    6d50:	00 c0 61 91 	9161c000     r0 = memuh (r1 + #0)
    6d54:	20 60 00 7e 	7e006020     { if (p0.new) r0 = #1
    6d58:	ee e0 30 10 	1030e0ee       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:t 6d30 <_Dunscale+0x40> }
    6d5c:	40 40 00 78 	78004040     { r0 = #2
    6d60:	40 1f 0c 3e 	3e0c1f40       r17:16 = memd (sp + #8) ; dealloc_return }
    6d64:	62 c0 61 91 	9161c062     r2 = memuh (r1 + #6)
    6d68:	04 7c 1f 78 	781f7c04     { r4 = #16352
    6d6c:	43 40 c0 bf 	bfc04043       r3 = add (r0, #-1022)
    6d70:	e0 ff df 78 	78dfffe0       r0 = #-1 }
    6d74:	00 42 00 00 	00004200     { immext (#32768)
    6d78:	e4 41 42 da 	da4241e4       r2 = or (r4, and (r2, ##32783))
    6d7c:	03 ca a1 a1 	a1a1ca03       memh (r1 + #6) = r2.new }
    6d80:	00 c3 50 a1 	a150c300     memh (r16 + #0) = r3
    6d84:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    6d88:	00 c0 00 7f 	7f00c000     nop
    6d8c:	00 c0 00 7f 	7f00c000     nop

00006d90 <_Exp>:
    6d90:	28 7d 00 5a 	5a007d28     { call e7e0 <__save_r16_through_r25>
    6d94:	06 c0 9d a0 	a09dc006       allocframe (#48) }
    6d98:	11 40 60 70 	70604011     { r17 = r0
    6d9c:	74 7f ff 5b 	5bff7f74       call 6c80 <_Dtest>
    6da0:	01 2a 4a 70 	704a2a01       r18 = r4 ; memd (sp + #0) = r3:2 }
    6da4:	10 40 60 70 	70604010     { r16 = r0
    6da8:	6e 7f ff 5b 	5bff7f6e       call 6c80 <_Dtest>
    6dac:	00 c0 7d 70 	707dc000       r0 = r29 }
    6db0:	3c c1 c0 11 	11c0c13c     p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 6e28 <_Exp+0x98>
    6db4:	30 c2 08 10 	1008c230     p0 = cmp.eq (r16, #2) ; if (p0.new) jump:nt 6e14 <_Exp+0x84>
    6db8:	50 60 00 7e 	7e006050     { if (p0.new) r16 = #2
    6dbc:	32 42 00 10 	10004232       p0 = cmp.eq (r0, #2) ; if (p0.new) jump:nt 6e1c <_Exp+0x8c>
    6dc0:	00 c0 dd 43 	43ddc000       if (p0.new) r1:0 = memd (r29 + #0) }
    6dc4:	9a 40 00 10 	1000409a     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 6ef8 <_Exp+0x168>
    6dc8:	02 c0 d1 43 	43d1c002       if (p0.new) r3:2 = memd (r17 + #0) }
    6dcc:	18 41 10 10 	10104118     { p0 = cmp.eq (r0, #1) ; if (p0.new) jump:nt 6ffc <_Exp+0x26c>
    6dd0:	68 44 00 00 	00004468       immext (#72192)
    6dd4:	00 dc 84 9b 	9b84dc00       r0 = memw (r4 = ##72240) }
    6dd8:	22 40 18 10 	10184022     { p0 = cmp.eq (r16, #0) ; if (p0.new) jump:nt 701c <_Exp+0x28c>
    6ddc:	00 40 d1 47 	47d14000       if !p0.new r1:0 = memd (r17 + #0)
    6de0:	00 c0 dd 43 	43ddc000       if (p0.new) r1:0 = memd (r29 + #0) }
    6de4:	68 44 00 00 	00004468     { immext (#72192)
    6de8:	02 c6 c0 49 	49c0c602       r3:2 = memd (gp + ##72240) }
    6dec:	00 c2 e0 d2 	d2e0c200     p0 = dfcmp.eq (r1:0, r3:2)
    6df0:	96 40 00 5c 	5c004096     { if (p0) jump 6f1c <_Exp+0x18c>
    6df4:	00 40 00 7f 	7f004000       nop
    6df8:	00 40 00 7f 	7f004000       nop
    6dfc:	00 c0 00 7f 	7f00c000       nop }
    6e00:	10 40 00 78 	78004010     { r16 = #0
    6e04:	f0 40 01 5a 	5a0140f0       call efe0 <__hexagon_muldf3>
    6e08:	00 40 dd 91 	91dd4000       r1:0 = memd (r29 + #0)
    6e0c:	c2 c4 c0 49 	49c0c4c2       r3:2 = memd (gp + #304) }
    6e10:	00 c0 d1 a1 	a1d1c000     memd (r17 + #0) = r1:0
    6e14:	e8 41 00 00 	000041e8     { immext (#31232)
    6e18:	60 c0 08 17 	1708c060       r0 = r16 ; jump e844 <__restore_r16_through_r25_and_deallocframe> }
    6e1c:	00 40 70 70 	70704000     { r0 = r16
    6e20:	00 c0 d1 a1 	a1d1c000       memd (r17 + #0) = r1:0 }
    6e24:	10 fd 00 58 	5800fd10     jump e844 <__restore_r16_through_r25_and_deallocframe>
    6e28:	c6 61 b8 11 	11b861c6     { p0 = cmp.gt (r16, #-1) ; if (p0.new) jump:t 6db4 <_Exp+0x24>
    6e2c:	14 c0 d1 47 	47d1c014       if !p0.new r21:20 = memd (r17 + #0) }
    6e30:	e0 c9 c0 49 	49c0c9e0     r1:0 = memd (gp + #632)
    6e34:	20 54 e0 d2 	d2e05420     { p0 = dfcmp.gt (r1:0, r21:20)
    6e38:	00 ca c0 49 	49c0ca00       r1:0 = memd (gp + #640) }
    6e3c:	e2 e0 df 5c 	5cdfe0e2     if (p0) jump 6e00 <_Exp+0x70>
    6e40:	20 40 f4 d2 	d2f44020     { p0 = dfcmp.gt (r21:20, r1:0)
    6e44:	00 54 15 f5 	f5155400       r1:0 = combine (r21, r20)
    6e48:	22 ca c0 49 	49c0ca22       r3:2 = memd (gp + #648) }
    6e4c:	64 40 00 5c 	5c004064     { if (p0) jump 6f14 <_Exp+0x184>
    6e50:	ca c0 01 5a 	5a01c0ca       call efe0 <__hexagon_muldf3> }
    6e54:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    6e58:	c0 c4 c0 49 	49c0c4c0       r1:0 = memd (gp + #304) }
    6e5c:	20 42 e0 d2 	d2e04220     { p0 = dfcmp.gt (r1:0, r3:2)
    6e60:	60 c4 c0 49 	49c0c460       r1:0 = memd (gp + #280) }
    6e64:	04 c0 00 5c 	5c00c004     if (p0) jump 6e6c <_Exp+0xdc>
    6e68:	00 c5 c0 49 	49c0c500     r1:0 = memd (gp + #320)
    6e6c:	2a fe 00 5a 	5a00fe2a     call eac0 <__hexagon_adddf3>
    6e70:	30 40 e0 88 	88e04030     { r16 = convert_df2w (r1:0):chop
    6e74:	42 ca c0 49 	49c0ca42       r3:2 = memd (gp + #656) }
    6e78:	56 c0 90 84 	8490c056     r23:22 = convert_w2df (r16)
    6e7c:	00 56 17 f5 	f5175600     { r1:0 = combine (r23, r22)
    6e80:	b2 c0 01 5a 	5a01c0b2       call efe0 <__hexagon_muldf3> }
    6e84:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    6e88:	1e 7e 00 5a 	5a007e1e       call eac0 <__hexagon_adddf3>
    6e8c:	00 d4 15 f5 	f515d400       r1:0 = combine (r21, r20) }
    6e90:	14 40 01 f5 	f5014014     { r21:20 = combine (r1, r0)
    6e94:	a8 40 01 5a 	5a0140a8       call efe0 <__hexagon_muldf3>
    6e98:	00 56 17 f5 	f5175600       r1:0 = combine (r23, r22)
    6e9c:	62 ca c0 49 	49c0ca62       r3:2 = memd (gp + #664) }
    6ea0:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    6ea4:	10 7e 00 5a 	5a007e10       call eac0 <__hexagon_adddf3>
    6ea8:	00 d4 15 f5 	f515d400       r1:0 = combine (r21, r20) }
    6eac:	14 40 01 f5 	f5014014     { r21:20 = combine (r1, r0)
    6eb0:	69 44 00 00 	00004469       immext (#72256)
    6eb4:	02 c2 c0 49 	49c0c202       r3:2 = memd (gp + ##72272) }
    6eb8:	00 40 62 70 	70624000     { r0 = r2
    6ebc:	41 df c3 8c 	8cc3df41       r1 = togglebit (r3, #31) }
    6ec0:	20 c0 f4 d2 	d2f4c020     p0 = dfcmp.gt (r21:20, r1:0)
    6ec4:	36 c0 20 5c 	5c20c036     if !p0 jump 6f30 <_Exp+0x1a0>
    6ec8:	20 d4 e2 d2 	d2e2d420     p0 = dfcmp.gt (r3:2, r21:20)
    6ecc:	00 c0 dd 41 	41ddc000     if (p0) r1:0 = memd (r29 + #0)
    6ed0:	30 40 20 5c 	5c204030     { if !p0 jump 6f30 <_Exp+0x1a0>
    6ed4:	00 c0 d1 40 	40d1c000       if (p0) memd (r17 + #0) = r1:0 }
    6ed8:	01 52 10 f3 	f3105201     { r1 = add (r16, r18)
    6edc:	00 c0 71 70 	7071c000       r0 = r17 }
    6ee0:	d0 d9 00 5a 	5a00d9d0     call a280 <_Dscale>
    6ee4:	10 40 60 70 	70604010     { r16 = r0
    6ee8:	84 40 40 10 	10404084       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 6fec <_Exp+0x25c>
    6eec:	00 e1 00 7e 	7e00e100       if (p0.new) r0 = #8 }
    6ef0:	a0 c0 00 5a 	5a00c0a0     call 7030 <_Feraise>
    6ef4:	90 ff ff 59 	59ffff90     jump 6e14 <_Exp+0x84>
    6ef8:	68 44 00 00 	00004468     { immext (#72192)
    6efc:	00 c6 c0 49 	49c0c600       r1:0 = memd (gp + ##72240) }
    6f00:	00 40 e2 d2 	d2e24000     { p0 = dfcmp.eq (r3:2, r1:0)
    6f04:	00 3e 08 48 	48083e00       r16 = #0 ; r1:0 = memd (sp + #0) }
    6f08:	66 c0 00 5c 	5c00c066     if (p0) jump 6fd4 <_Exp+0x244>
    6f0c:	84 7f ff 59 	59ff7f84     { jump 6e14 <_Exp+0x84>
    6f10:	00 c0 d1 a1 	a1d1c000       memd (r17 + #0) = r1:0 }
    6f14:	68 44 00 00 	00004468     { immext (#72192)
    6f18:	00 c6 c0 49 	49c0c600       r1:0 = memd (gp + ##72240) }
    6f1c:	62 40 01 5a 	5a014062     { call efe0 <__hexagon_muldf3>
    6f20:	01 3e 18 48 	48183e01       r16 = #1 ; r3:2 = memd (sp + #0) }
    6f24:	00 40 70 70 	70704000     { r0 = r16
    6f28:	00 c0 d1 a1 	a1d1c000       memd (r17 + #0) = r1:0 }
    6f2c:	8c fc 00 58 	5800fc8c     jump e844 <__restore_r16_through_r25_and_deallocframe>
    6f30:	02 54 15 f5 	f5155402     { r3:2 = combine (r21, r20)
    6f34:	58 40 01 5a 	5a014058       call efe0 <__hexagon_muldf3>
    6f38:	00 d4 15 f5 	f515d400       r1:0 = combine (r21, r20) }
    6f3c:	16 40 01 f5 	f5014016     { r23:22 = combine (r1, r0)
    6f40:	52 40 01 5a 	5a014052       call efe0 <__hexagon_muldf3>
    6f44:	82 ca c0 49 	49c0ca82       r3:2 = memd (gp + #672) }
    6f48:	bc 7d 00 5a 	5a007dbc     { call eac0 <__hexagon_adddf3>
    6f4c:	a2 ca c0 49 	49c0caa2       r3:2 = memd (gp + #680) }
    6f50:	02 56 17 f5 	f5175602     { r3:2 = combine (r23, r22)
    6f54:	48 c0 01 5a 	5a01c048       call efe0 <__hexagon_muldf3> }
    6f58:	18 40 01 f5 	f5014018     { r25:24 = combine (r1, r0)
    6f5c:	44 40 01 5a 	5a014044       call efe0 <__hexagon_muldf3>
    6f60:	00 56 17 f5 	f5175600       r1:0 = combine (r23, r22)
    6f64:	c2 ca c0 49 	49c0cac2       r3:2 = memd (gp + #688) }
    6f68:	ac 7d 00 5a 	5a007dac     { call eac0 <__hexagon_adddf3>
    6f6c:	e2 ca c0 49 	49c0cae2       r3:2 = memd (gp + #696) }
    6f70:	02 56 17 f5 	f5175602     { r3:2 = combine (r23, r22)
    6f74:	38 c0 01 5a 	5a01c038       call efe0 <__hexagon_muldf3> }
    6f78:	a4 7d 00 5a 	5a007da4     { call eac0 <__hexagon_adddf3>
    6f7c:	02 c5 c0 49 	49c0c502       r3:2 = memd (gp + #320) }
    6f80:	02 54 15 f5 	f5155402     { r3:2 = combine (r21, r20)
    6f84:	30 c0 01 5a 	5a01c030       call efe0 <__hexagon_muldf3> }
    6f88:	14 40 01 f5 	f5014014     { r21:20 = combine (r1, r0)
    6f8c:	00 d8 19 f5 	f519d800       r1:0 = combine (r25, r24) }
    6f90:	02 54 15 f5 	f5155402     { r3:2 = combine (r21, r20)
    6f94:	98 fd 00 5a 	5a00fd98       call eac0 <__hexagon_adddf3> }
    6f98:	94 7d 00 5a 	5a007d94     { call eac0 <__hexagon_adddf3>
    6f9c:	82 c4 c0 49 	49c0c482       r3:2 = memd (gp + #288) }
    6fa0:	16 40 01 f5 	f5014016     { r23:22 = combine (r1, r0)
    6fa4:	e2 7d 00 5a 	5a007de2       call eb64 <__hexagon_subdf3>
    6fa8:	02 54 15 f5 	f5155402       r3:2 = combine (r21, r20)
    6fac:	00 d8 19 f5 	f519d800       r1:0 = combine (r25, r24) }
    6fb0:	88 7d 00 5a 	5a007d88     { call eac0 <__hexagon_adddf3>
    6fb4:	82 c4 c0 49 	49c0c482       r3:2 = memd (gp + #288) }
    6fb8:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    6fbc:	c4 7e 00 5a 	5a007ec4       call ed40 <__hexagon_divdf3>
    6fc0:	00 d6 17 f5 	f517d600       r1:0 = combine (r23, r22) }
    6fc4:	0e 40 01 5a 	5a01400e     { call efe0 <__hexagon_muldf3>
    6fc8:	02 c0 dd 91 	91ddc002       r3:2 = memd (r29 + #0) }
    6fcc:	86 7f ff 59 	59ff7f86     { jump 6ed8 <_Exp+0x148>
    6fd0:	00 c0 d1 a1 	a1d1c000       memd (r17 + #0) = r1:0 }
    6fd4:	2e 40 00 5a 	5a00402e     { call 7030 <_Feraise>
    6fd8:	28 28 10 28 	28102828       r0 = #1 ; r16 = #2 }
    6fdc:	68 44 00 00 	00004468     { immext (#72192)
    6fe0:	00 c4 c0 49 	49c0c400       r1:0 = memd (gp + ##72224) }
    6fe4:	18 7f ff 59 	59ff7f18     { jump 6e14 <_Exp+0x84>
    6fe8:	00 c0 d1 a1 	a1d1c000       memd (r17 + #0) = r1:0 }
    6fec:	14 61 70 10 	10706114     { p0 = cmp.eq (r0, #1) ; if (!p0.new) jump:t 6e14 <_Exp+0x84>
    6ff0:	22 40 00 5a 	5a004022       call 7030 <_Feraise>
    6ff4:	80 c0 00 78 	7800c080       r0 = #4 }
    6ff8:	0e ff ff 59 	59ffff0e     jump 6e14 <_Exp+0x84>
    6ffc:	02 40 d1 91 	91d14002     { r3:2 = memd (r17 + #0)
    7000:	24 c0 84 91 	9184c024       r4 = memw (r4 + #4) }
    7004:	41 df c4 8c 	8cc4df41     r1 = togglebit (r4, #31)
    7008:	00 40 e2 d2 	d2e24000     { p0 = dfcmp.eq (r3:2, r1:0)
    700c:	00 3e 18 48 	48183e00       r16 = #1 ; r1:0 = memd (sp + #0) }
    7010:	e2 e0 df 5c 	5cdfe0e2     if (p0) jump 6fd4 <_Exp+0x244>
    7014:	00 7f ff 59 	59ff7f00     { jump 6e14 <_Exp+0x84>
    7018:	00 c0 d1 a1 	a1d1c000       memd (r17 + #0) = r1:0 }
    701c:	00 51 12 f5 	f5125100     { r1:0 = combine (r18, r17)
    7020:	62 7f ff 59 	59ff7f62       jump 6ee0 <_Exp+0x150>
    7024:	00 c0 d1 a1 	a1d1c000       memd (r17 + #0) = r1:0 }
    7028:	00 c0 00 7f 	7f00c000     nop
    702c:	00 c0 00 7f 	7f00c000     nop

00007030 <_Feraise>:
    7030:	61 40 00 76 	76004061     { r1 = and (r0, #3)
    7034:	00 c0 9d a0 	a09dc000       allocframe (#0) }
    7038:	0c c0 41 10 	1041c00c     p0 = cmp.eq (r1, #0) ; if (!p0.new) jump:nt 7050 <_Feraise+0x20>
    703c:	00 4c 80 85 	85804c00     { p0 = bitsclr (r0, #12)
    7040:	1e d8 1e 96 	961ed81e       if (p0.new) dealloc_return:t }
    7044:	e6 d4 00 5a 	5a00d4e6     call 9a10 <_Geterrno>
    7048:	22 c0 40 3c 	3c40c022     memw (r0 + #0) = #34
    704c:	1e c0 1e 96 	961ec01e     dealloc_return
    7050:	e0 d4 00 5a 	5a00d4e0     call 9a10 <_Geterrno>
    7054:	21 c0 40 3c 	3c40c021     memw (r0 + #0) = #33
    7058:	1e c0 1e 96 	961ec01e     dealloc_return
    705c:	00 c0 00 7f 	7f00c000     nop

00007060 <_Fofree>:
    7060:	01 c0 60 91 	9160c001     r1 = memuh (r0 + #0)
    7064:	00 47 21 85 	85214700     { p0 = !tstbit (r1, #7)
    7068:	1c 48 00 5c 	5c00481c       if (p0.new) jump:nt 709c <_Fofree+0x3c>
    706c:	63 44 00 00 	00004463       immext (#71872)
    7070:	04 c0 00 78 	7800c004       r4 = ##71872 }
    7074:	b8 40 00 69 	690040b8     { loop0 (7080 <_Fofree+0x20>, #20)
    7078:	02 c0 00 78 	7800c002       r2 = #0 }
    707c:	01 c0 64 70 	7064c001     r1 = r4
    7080:	13 00 41 40 	40410013     r1 = add (r1, #4) ; r3 = memw (r1 + #0)
    7084:	22 60 82 74 	74826022     { if !p0.new r2 = add (r2, #1)
    7088:	1e 40 03 14 	1403401e       p0 = cmp.eq (r3, r0) ; if (p0.new) jump:nt 70c0 <_Fofree+0x60>
    708c:	01 e0 00 7e 	7e00e001       if (p0.new) r1 = #0 }
    7090:	00 80 00 7f 	7f008000     { nop
    7094:	00 c0 00 7f 	7f00c000       nop }:endloop0
    7098:	ec f2 ff 59 	59fff2ec     jump 5670 <free>
    709c:	81 49 00 b0 	b0004981     { r1 = add (r0, #76)
    70a0:	82 45 00 b0 	b0004582       r2 = add (r0, #44)
    70a4:	00 40 20 3c 	3c204000       memh (r0 + #0) = #0
    70a8:	ff e0 40 3c 	3c40e0ff       memw (r0 + #4) = #-1 }
    70ac:	01 07 02 a8 	a8020701     memw (r0 + #32) = r2 ; memw (r0 + #28) = r1
    70b0:	01 04 01 a2 	a2010401     memw (r0 + #8) = r1 ; memw (r0 + #16) = r1
    70b4:	01 0c 01 a5 	a5010c01     memw (r0 + #20) = r1 ; memw (r0 + #48) = r1
    70b8:	00 40 9f 52 	529f4000     { jumpr r31
    70bc:	01 0d 01 a6 	a6010d01       memw (r0 + #24) = r1 ; memw (r0 + #52) = r1 }
    70c0:	d8 72 ff 59 	59ff72d8     { jump 5670 <free>
    70c4:	01 e2 84 3b 	3b84e201       memw (r4 + r2 << #2) = r1 }
    70c8:	00 40 00 7f 	7f004000     { nop
    70cc:	00 c0 00 7f 	7f00c000       nop }

000070d0 <_Fofind>:
    70d0:	63 44 00 00 	00004463     { immext (#71872)
    70d4:	10 40 00 7c 	7c004010       r17:16 = combine (##71872, #0)
    70d8:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    70dc:	b0 40 00 69 	690040b0     { loop0 (70e4 <_Fofind+0x14>, #20)
    70e0:	01 c0 71 70 	7071c001       r1 = r17 }
    70e4:	10 00 41 40 	40410010     r1 = add (r1, #4) ; r0 = memw (r1 + #0)
    70e8:	30 60 90 74 	74906030     { if !p0.new r16 = add (r16, #1)
    70ec:	10 40 00 10 	10004010       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 7108 <_Fofind+0x38>
    70f0:	00 ea 00 7e 	7e00ea00       if (p0.new) r0 = #80 }
    70f4:	02 40 60 91 	91604002     { r2 = memuh (r0 + #0)
    70f8:	18 c0 02 24 	2402c018       if (cmp.eq (r2.new, #0)) jump:nt 7124 <_Fofind+0x54> }
    70fc:	00 80 00 78 	78008000     { r0 = #0
    7100:	00 c0 00 7f 	7f00c000       nop }:endloop0
    7104:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return
    7108:	04 f4 ff 5b 	5bfff404     call 5910 <malloc>
    710c:	fc 40 30 10 	103040fc     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 7104 <_Fofind+0x34>
    7110:	00 70 91 37 	37917000       if !p0.new memw (r17 + r16 << #2) = r0
    7114:	10 d0 00 46 	4600d010       if !p0.new memb (r0 + #2) = r16 }
    7118:	02 40 00 00 	00004002     { immext (#128)
    711c:	00 c0 20 3c 	3c20c000       memh (r0 + #0) = ##128 }
    7120:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return
    7124:	fd 7f ff 0f 	0fff7ffd     { immext (#4294967104)
    7128:	3f c0 20 3c 	3c20c03f       memh (r0 + #0) = ##-129 }
    712c:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return

00007130 <_Foprep>:
    7130:	5c 7b 00 5a 	5a007b5c     { call e7e8 <__save_r16_through_r21>
    7134:	30 3c 20 79 	79203c30       p0 = cmp.eq (r2, #0) ; allocframe (#24) }
    7138:	12 40 60 70 	70604012     { r18 = r0
    713c:	10 40 61 70 	70614010       r16 = r1
    7140:	3d 30 29 30 	3029303d       r17 = r2 ; r21 = r3 }
    7144:	00 60 22 73 	73226000     { r1:0 = combine (#0, r2)
    7148:	66 40 00 5c 	5c004066       if (p0) jump 7210 <_Foprep+0xe0>
    714c:	02 ca 80 7e 	7e80ca02       if !p0 r2 = #80 }
    7150:	f8 79 ff 5b 	5bff79f8     { call 6540 <memset>
    7154:	9b 28 9c 12 	129c289b       r20 = memub (r17 + #2) ; r19 = memuh (r17 + #0) }
    7158:	80 49 11 b0 	b0114980     { r0 = add (r17, #76)
    715c:	81 45 11 b0 	b0114581       r1 = add (r17, #44)
    7160:	02 54 11 a1 	a1115402       memb (r17 + #2) = r20
    7164:	ff e0 51 3c 	3c51e0ff       memw (r17 + #4) = #-1 }
    7168:	91 08 90 a7 	a7900891     memw (r17 + #28) = r0 ; memw (r17 + #32) = r1
    716c:	90 04 90 a2 	a2900490     memw (r17 + #8) = r0 ; memw (r17 + #16) = r0
    7170:	90 0c 90 a5 	a5900c90     memw (r17 + #20) = r0 ; memw (r17 + #48) = r0
    7174:	90 0d 90 a6 	a6900d90     memw (r17 + #24) = r0 ; memw (r17 + #52) = r0
    7178:	00 c0 30 91 	9130c000     r0 = memub (r16 + #0)
    717c:	40 4e 00 75 	75004e40     { p0 = cmp.eq (r0, #114)
    7180:	10 48 00 5c 	5c004810       if (p0.new) jump:nt 719c <_Foprep+0x6c>
    7184:	20 e0 00 7e 	7e00e020       if (p0.new) r0 = #1 }
    7188:	e0 4e 00 75 	75004ee0     { p0 = cmp.eq (r0, #119)
    718c:	0a 48 00 5c 	5c00480a       if (p0.new) jump:nt 719c <_Foprep+0x6c>
    7190:	40 e3 00 7e 	7e00e340       if (p0.new) r0 = #26 }
    7194:	20 cc 00 75 	7500cc20     p0 = cmp.eq (r0, #97)
    7198:	c0 c2 00 7a 	7a00c2c0     r0 = mux (p0, #22, #0)
    719c:	00 50 53 da 	da535000     { r19 = or (r0, and (r19, #128))
    71a0:	00 cb b1 a1 	a1b1cb00       memh (r17 + #0) = r19.new }
    71a4:	60 40 13 76 	76134060     { r0 = and (r19, #3)
    71a8:	54 c0 02 24 	2402c054       if (cmp.eq (r0.new, #0)) jump:nt 724c <_Foprep+0x11c> }
    71ac:	30 c0 10 b0 	b010c030     r16 = add (r16, #1)
    71b0:	00 c0 30 91 	9130c000     r0 = memub (r16 + #0)
    71b4:	40 4c 00 75 	75004c40     { p0 = cmp.eq (r0, #98)
    71b8:	1c 48 00 5c 	5c00481c       if (p0.new) jump:nt 71ec <_Foprep+0xbc>
    71bc:	61 c5 00 75 	7500c561       p1 = cmp.eq (r0, #43) }
    71c0:	2c c1 20 5c 	5c20c12c     if !p1 jump 7218 <_Foprep+0xe8>
    71c4:	00 c0 71 91 	9171c000     r0 = memuh (r17 + #0)
    71c8:	61 40 00 76 	76004061     { r1 = and (r0, #3)
    71cc:	60 c0 80 76 	7680c060       r0 = or (r0, #3) }
    71d0:	30 60 90 74 	74906030     { if !p0.new r16 = add (r16, #1)
    71d4:	24 43 01 10 	10014324       p0 = cmp.eq (r1, #3) ; if (p0.new) jump:nt 7218 <_Foprep+0xe8>
    71d8:	00 c0 51 46 	4651c000       if !p0.new memh (r17 + #0) = r0 }
    71dc:	00 c0 30 91 	9130c000     r0 = memub (r16 + #0)
    71e0:	40 4c 00 75 	75004c40     { p0 = cmp.eq (r0, #98)
    71e4:	f0 78 ff 5c 	5cff78f0       if !p0.new jump:t 71c0 <_Foprep+0x90>
    71e8:	61 c5 00 75 	7500c561       p1 = cmp.eq (r0, #43) }
    71ec:	00 c0 71 91 	9171c000     r0 = memuh (r17 + #0)
    71f0:	00 45 20 85 	85204500     { p0 = !tstbit (r0, #5)
    71f4:	14 48 20 5c 	5c204814       if !p0.new jump:nt 7218 <_Foprep+0xe8>
    71f8:	01 44 80 76 	76804401       r1 = or (r0, #32)
    71fc:	00 cb b1 42 	42b1cb00       if (p0.new) memh (r17 + #0) = r1.new }
    7200:	d6 ff ff 59 	59ffffd6     jump 71ac <_Foprep+0x7c>
    7204:	2e 41 cd 11 	11cd412e     { p0 = cmp.gt (r21, #-1) ; if (!p0.new) jump:nt 7260 <_Foprep+0x130>
    7208:	08 d5 91 42 	4291d508       if (p0.new) memw (r17 + #4) = r21 }
    720c:	7a d4 00 5a 	5a00d47a     call 9b00 <_Closreg>
    7210:	d9 41 00 00 	000041d9     { immext (#30272)
    7214:	00 c0 09 17 	1709c000       r0 = r17 ; jump e850 <__restore_r16_through_r21_and_deallocframe> }
    7218:	f6 40 3a 10 	103a40f6     { p0 = cmp.eq (r18, #0) ; if (p0.new) jump:nt 7204 <_Foprep+0xd4>
    721c:	82 30 a0 30 	30a03082       r0 = r18 ; r2 = r16 }
    7220:	70 59 00 5a 	5a005970     { call a500 <_Fopen>
    7224:	01 c0 71 91 	9171c001       r1 = memuh (r17 + #0) }
    7228:	f2 61 b0 11 	11b061f2     { p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t 720c <_Foprep+0xdc>
    722c:	f4 53 00 5a 	5a0053f4       call 9a10 <_Geterrno>
    7230:	01 c0 91 a1 	a191c001       memw (r17 + #4) = r0 }
    7234:	00 40 71 70 	70714000     { r0 = r17
    7238:	16 70 ff 5b 	5bff7016       call 5260 <fclose>
    723c:	08 00 09 48 	48090008       r17 = #0 ; r16 = memw (r0 + #0) }
    7240:	e8 d3 00 5a 	5a00d3e8     call 9a10 <_Geterrno>
    7244:	e6 7f ff 59 	59ff7fe6     { jump 7210 <_Foprep+0xe0>
    7248:	00 d0 80 a1 	a180d000       memw (r0 + #0) = r16 }
    724c:	0a 70 ff 5b 	5bff700a     { call 5260 <fclose>
    7250:	90 30 09 28 	28093090       r17 = #0 ; r0 = r17 }
    7254:	de d3 00 5a 	5a00d3de     call 9a10 <_Geterrno>
    7258:	dc 7f ff 59 	59ff7fdc     { jump 7210 <_Foprep+0xe0>
    725c:	16 c0 40 3c 	3c40c016       memw (r0 + #0) = #22 }
    7260:	d8 d3 00 5a 	5a00d3d8     call 9a10 <_Geterrno>
    7264:	fe 6f ff 5b 	5bff6ffe     { call 5260 <fclose>
    7268:	90 30 09 28 	28093090       r17 = #0 ; r0 = r17 }
    726c:	d2 ff ff 59 	59ffffd2     jump 7210 <_Foprep+0xe0>

00007270 <_Frprep>:
    7270:	10 40 60 70 	70604010     { r16 = r0
    7274:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    7278:	00 04 81 05 	05810400     r1 = memw (r16 + #20) ; r0 = memw (r0 + #16)
    727c:	20 60 00 7e 	7e006020     { if (p0.new) r0 = #1
    7280:	3e c0 01 15 	1501c03e       p0 = cmp.gtu (r1, r0) ; if (p0.new) jump:nt 72f8 <_Frprep+0x88> }
    7284:	00 c0 70 91 	9170c000     r0 = memuh (r16 + #0)
    7288:	00 48 20 85 	85204800     { p0 = !tstbit (r0, #8)
    728c:	38 48 20 5c 	5c204838       if !p0.new jump:nt 72f8 <_Frprep+0x88>
    7290:	00 e0 80 7e 	7e80e000       if !p0.new r0 = #0 }
    7294:	80 42 00 00 	00004280     { immext (#40960)
    7298:	21 40 00 76 	76004021       r1 = and (r0, ##40961)
    729c:	56 c1 43 24 	2443c156       if (!cmp.eq (r1.new, #1)) jump:nt 7340 <_Frprep+0xd0> }
    72a0:	00 4b 20 85 	85204b00     { p0 = !tstbit (r0, #11)
    72a4:	51 c0 90 47 	4790c051       if !p0.new r17 = memw (r16 + #8) }
    72a8:	00 40 91 74 	74914000     { if !p0 r0 = add (r17, #0)
    72ac:	2a 40 00 5c 	5c00402a       if (p0) jump 72fc <_Frprep+0x8c>
    72b0:	80 49 10 74 	74104980       if (p0) r0 = add (r16, #76)
    72b4:	51 c0 90 41 	4190c051       if (p0) r17 = memw (r16 + #8) }
    72b8:	01 40 71 70 	70714001     { r1 = r17
    72bc:	80 04 82 83 	83820480       r2 = memw (r16 + #12) ; memw (r16 + #16) = r0 }
    72c0:	02 42 31 f3 	f3314202     { r2 = sub (r2, r17)
    72c4:	89 06 89 a5 	a5890689       memw (r16 + #20) = r17 ; memw (r16 + #24) = r17 }
    72c8:	d4 55 00 5a 	5a0055d4     { call 9e70 <read>
    72cc:	20 c0 90 91 	9190c020       r0 = memw (r16 + #4) }
    72d0:	08 41 00 00 	00004108     { immext (#16896)
    72d4:	00 60 80 7e 	7e806000       if !p0.new r0 = ##16896
    72d8:	48 c1 c0 11 	11c0c148       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 7360 <_Frprep+0xf0> }
    72dc:	01 60 40 78 	78406001     { r1 = #16640
    72e0:	2a 40 00 10 	1000402a       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 7330 <_Frprep+0xc0>
    72e4:	02 c0 50 43 	4350c002       if (p0.new) r2 = memh (r16 + #0) }
    72e8:	40 41 00 00 	00004140     { immext (#20480)
    72ec:	00 60 00 7c 	7c006000       r1:0 = combine (##20480, #1)
    72f0:	80 c2 50 3e 	3e50c280       memw (r16 + #20) += r0 }
    72f4:	61 c0 30 3e 	3e30c061     memh (r16 + #0) |= r1
    72f8:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return
    72fc:	00 60 91 74 	74916000     { if !p0.new r0 = add (r17, #0)
    7300:	de e0 79 14 	1479e0de       p0 = cmp.eq (r17, r0) ; if (!p0.new) jump:t 72b8 <_Frprep+0x48> }
    7304:	08 40 00 00 	00004008     { immext (#512)
    7308:	00 40 10 7c 	7c104000       r1:0 = combine (##512, #32)
    730c:	7e d5 00 5a 	5a00d57e       call 9e00 <memalign> }
    7310:	01 40 20 b0 	b0204001     { r1 = add (r0, #512)
    7314:	2e 48 00 5c 	5c00482e       if (p0.new) jump:nt 736c <_Frprep+0xfc>
    7318:	80 02 00 79 	79000280       p0 = cmp.eq (r0, #0) ; memw (r16 + #8) = r0 }
    731c:	11 40 60 70 	70604011     { r17 = r0
    7320:	66 c0 30 3f 	3f30c066       memh (r16 + #0) = setbit (#6) }
    7324:	80 0c 81 a3 	a3810c80     memw (r16 + #12) = r1 ; memw (r16 + #48) = r0
    7328:	c8 7f ff 59 	59ff7fc8     { jump 72b8 <_Frprep+0x48>
    732c:	0d c0 90 a1 	a190c00d       memw (r16 + #52) = r0 }
    7330:	bb 7e ff 0f 	0fff7ebb     { immext (#4294946496)
    7334:	e1 47 02 da 	da0247e1       r1 |= and (r2, ##-20737)
    7338:	00 cb b0 a1 	a1b0cb00       memh (r16 + #0) = r1.new }
    733c:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return
    7340:	03 40 41 78 	78414003     { r3 = #16896
    7344:	00 3a 01 34 	34013a00       r1 = sxth (r0) ; r0 = #-1 }
    7348:	e0 ff 61 75 	7561ffe0     p0 = cmp.gt (r1, #-1)
    734c:	08 40 00 00 	00004008     { immext (#512)
    7350:	02 c0 03 73 	7303c002       r2 = mux (p0, r3, ##512) }
    7354:	01 41 22 f1 	f1224101     { r1 = or (r2, r1)
    7358:	d2 7f ff 59 	59ff7fd2       jump 72f8 <_Frprep+0x88>
    735c:	00 cd b0 a1 	a1b0cd00       memh (r16 + #0) = r1.new }
    7360:	e0 7f df 78 	78df7fe0     { r0 = #-1
    7364:	cc 7f ff 59 	59ff7fcc       jump 72f8 <_Frprep+0x88>
    7368:	60 c0 30 3e 	3e30c060       memh (r16 + #0) |= r0 }
    736c:	a1 49 10 b0 	b01049a1     { r1 = add (r16, #77)
    7370:	89 02 90 70 	70900289       r0 = r17 ; memw (r16 + #8) = r17 }
    7374:	a2 7f ff 59 	59ff7fa2     { jump 72b8 <_Frprep+0x48>
    7378:	03 c1 90 a1 	a190c103       memw (r16 + #12) = r1 }
    737c:	00 c0 00 7f 	7f00c000     nop

00007380 <_Fwprep>:
    7380:	10 40 60 70 	70604010     { r16 = r0
    7384:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    7388:	01 06 02 04 	04020601     r2 = memw (r0 + #16) ; r1 = memw (r0 + #24)
    738c:	00 60 00 7e 	7e006000     { if (p0.new) r0 = #0
    7390:	2e c2 01 15 	1501c22e       p0 = cmp.gtu (r1, r2) ; if (p0.new) jump:nt 73e8 <_Fwprep+0x68> }
    7394:	01 c0 70 91 	9170c001     r1 = memuh (r16 + #0)
    7398:	40 42 00 00 	00004240     { immext (#36864)
    739c:	43 40 01 76 	76014043       r3 = and (r1, ##36866)
    73a0:	4c c2 43 24 	2443c24c       if (!cmp.eq (r3.new, #2)) jump:nt 7430 <_Fwprep+0xb0> }
    73a4:	03 40 50 78 	78504003     { r3 = #24576
    73a8:	00 40 00 7f 	7f004000       nop
    73ac:	00 c0 00 7f 	7f00c000       nop }
    73b0:	00 43 41 c7 	c7414300     { p0 = bitsset (r1, r3)
    73b4:	34 48 00 5c 	5c004834       if (p0.new) jump:nt 7418 <_Fwprep+0x98>
    73b8:	00 40 00 7f 	7f004000       nop
    73bc:	63 c0 90 43 	4390c063       if (p0.new) r3 = memw (r16 + #12) }
    73c0:	00 4b 21 85 	85214b00     { p0 = !tstbit (r1, #11)
    73c4:	16 48 00 5c 	5c004816       if (p0.new) jump:nt 73ec <_Fwprep+0x6c>
    73c8:	80 49 10 b0 	b0104980       r0 = add (r16, #76)
    73cc:	51 c0 90 43 	4390c051       if (p0.new) r17 = memw (r16 + #8) }
    73d0:	51 c0 90 91 	9190c051     r17 = memw (r16 + #8)
    73d4:	00 40 00 78 	78004000     { r0 = #0
    73d8:	89 05 81 83 	83810589       r1 = memw (r16 + #12) ; memw (r16 + #20) = r17 }
    73dc:	01 40 50 78 	78504001     { r1 = #24576
    73e0:	06 c1 90 a1 	a190c106       memw (r16 + #24) = r1 }
    73e4:	61 c0 30 3e 	3e30c061     memh (r16 + #0) |= r1
    73e8:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return
    73ec:	f4 c0 79 14 	1479c0f4     p0 = cmp.eq (r17, r0) ; if (!p0.new) jump:nt 73d4 <_Fwprep+0x54>
    73f0:	00 40 01 78 	78014000     { r0 = #512
    73f4:	90 f2 ff 5b 	5bfff290       call 5910 <malloc> }
    73f8:	01 40 20 b0 	b0204001     { r1 = add (r0, #512)
    73fc:	2c 48 00 5c 	5c00482c       if (p0.new) jump:nt 7450 <_Fwprep+0xd0>
    7400:	80 02 00 79 	79000280       p0 = cmp.eq (r0, #0) ; memw (r16 + #8) = r0 }
    7404:	80 04 80 ad 	ad800480     memw (r16 + #52) = r0 ; memw (r16 + #16) = r0
    7408:	80 0c 81 a3 	a3810c80     memw (r16 + #12) = r1 ; memw (r16 + #48) = r0
    740c:	7a 53 00 5a 	5a00537a     { call 9b00 <_Closreg>
    7410:	66 c0 30 3f 	3f30c066       memh (r16 + #0) = setbit (#6) }
    7414:	de ff ff 59 	59ffffde     jump 73d0 <_Fwprep+0x50>
    7418:	d4 c2 33 15 	1533c2d4     p0 = cmp.gtu (r3, r2) ; if (p0.new) jump:nt 73c0 <_Fwprep+0x40>
    741c:	82 ef ff 5b 	5bffef82     call 5320 <fflush>
    7420:	e0 7f 8f 7e 	7e8f7fe0     { if !p0.new r0 = #-1
    7424:	e4 c0 70 10 	1070c0e4       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 73e8 <_Fwprep+0x68> }
    7428:	cc 7f ff 59 	59ff7fcc     { jump 73c0 <_Fwprep+0x40>
    742c:	01 c0 70 91 	9170c001       r1 = memuh (r16 + #0) }
    7430:	03 40 41 78 	78414003     { r3 = #16896
    7434:	00 3a 11 34 	34113a00       r1 = sxth (r1) ; r0 = #-1 }
    7438:	e0 ff 61 75 	7561ffe0     p0 = cmp.gt (r1, #-1)
    743c:	08 40 00 00 	00004008     { immext (#512)
    7440:	02 c0 03 73 	7303c002       r2 = mux (p0, r3, ##512) }
    7444:	01 41 22 f1 	f1224101     { r1 = or (r2, r1)
    7448:	d2 7f ff 59 	59ff7fd2       jump 73e8 <_Fwprep+0x68>
    744c:	00 cd b0 a1 	a1b0cd00       memh (r16 + #0) = r1.new }
    7450:	a0 49 10 b0 	b01049a0     { r0 = add (r16, #77)
    7454:	89 02 89 a4 	a4890289       memw (r16 + #16) = r17 ; memw (r16 + #8) = r17 }
    7458:	54 53 00 5a 	5a005354     { call 9b00 <_Closreg>
    745c:	03 c0 90 a1 	a190c003       memw (r16 + #12) = r0 }
    7460:	ba 7f ff 59 	59ff7fba     { jump 73d4 <_Fwprep+0x54>
    7464:	51 c0 90 91 	9190c051       r17 = memw (r16 + #8) }
    7468:	00 c0 00 7f 	7f00c000     nop
    746c:	00 c0 00 7f 	7f00c000     nop

00007470 <_Getmem>:
    7470:	06 40 80 10 	10804006     { p0 = cmp.gt (r0, #0) ; if (p0.new) jump:nt 747c <_Getmem+0xc>
    7474:	00 c0 9d a0 	a09dc000       allocframe (#0) }
    7478:	40 3f 00 48 	48003f40     r0 = #0 ; dealloc_return
    747c:	92 c1 01 5a 	5a01c192     call f7a0 <__sys_sbrk>
    7480:	e0 7f 20 75 	75207fe0     { p0 = cmp.eq (r0, #-1)
    7484:	1e f8 1e 96 	961ef81e       if !p0.new dealloc_return:t }
    7488:	f8 ff ff 59 	59fffff8     jump 7478 <_Getmem+0x8>
    748c:	00 c0 00 7f 	7f00c000     nop

00007490 <_Logpoly>:
    7490:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    7494:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    7498:	a4 7d 00 5a 	5a007da4     { call efe0 <__hexagon_muldf3>
    749c:	02 cb c0 49 	49c0cb02       r3:2 = memd (gp + #704) }
    74a0:	10 7b 00 5a 	5a007b10     { call eac0 <__hexagon_adddf3>
    74a4:	22 cb c0 49 	49c0cb22       r3:2 = memd (gp + #712) }
    74a8:	02 50 11 f5 	f5115002     { r3:2 = combine (r17, r16)
    74ac:	9c fd 00 5a 	5a00fd9c       call efe0 <__hexagon_muldf3> }
    74b0:	08 7b 00 5a 	5a007b08     { call eac0 <__hexagon_adddf3>
    74b4:	42 cb c0 49 	49c0cb42       r3:2 = memd (gp + #720) }
    74b8:	02 50 11 f5 	f5115002     { r3:2 = combine (r17, r16)
    74bc:	94 fd 00 5a 	5a00fd94       call efe0 <__hexagon_muldf3> }
    74c0:	00 7b 00 5a 	5a007b00     { call eac0 <__hexagon_adddf3>
    74c4:	62 cb c0 49 	49c0cb62       r3:2 = memd (gp + #728) }
    74c8:	02 50 11 f5 	f5115002     { r3:2 = combine (r17, r16)
    74cc:	8c fd 00 5a 	5a00fd8c       call efe0 <__hexagon_muldf3> }
    74d0:	f8 7a 00 5a 	5a007af8     { call eac0 <__hexagon_adddf3>
    74d4:	82 cb c0 49 	49c0cb82       r3:2 = memd (gp + #736) }
    74d8:	02 50 11 f5 	f5115002     { r3:2 = combine (r17, r16)
    74dc:	84 fd 00 5a 	5a00fd84       call efe0 <__hexagon_muldf3> }
    74e0:	f0 7a 00 5a 	5a007af0     { call eac0 <__hexagon_adddf3>
    74e4:	a2 cb c0 49 	49c0cba2       r3:2 = memd (gp + #744) }
    74e8:	02 50 11 f5 	f5115002     { r3:2 = combine (r17, r16)
    74ec:	7c fd 00 5a 	5a00fd7c       call efe0 <__hexagon_muldf3> }
    74f0:	e8 7a 00 5a 	5a007ae8     { call eac0 <__hexagon_adddf3>
    74f4:	c2 cb c0 49 	49c0cbc2       r3:2 = memd (gp + #752) }
    74f8:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return
    74fc:	00 c0 00 7f 	7f00c000     nop

00007500 <_Log>:
    7500:	70 79 00 5a 	5a007970     { call e7e0 <__save_r16_through_r25>
    7504:	07 c0 9d a0 	a09dc007       allocframe (#56) }
    7508:	c0 41 1d b0 	b01d41c0     { r0 = add (r29, #14)
    750c:	01 40 7d 70 	707d4001       r1 = r29
    7510:	00 2a 2a 70 	702a2a00       r18 = r2 ; memd (sp + #0) = r1:0 }
    7514:	ee fb ff 5b 	5bfffbee     call 6cf0 <_Dunscale>
    7518:	a8 c1 00 10 	1000c1a8     p0 = cmp.eq (r0, #1) ; if (p0.new) jump:nt 7668 <_Log+0x168>
    751c:	aa c2 00 10 	1000c2aa     p0 = cmp.eq (r0, #2) ; if (p0.new) jump:nt 7670 <_Log+0x170>
    7520:	40 40 00 78 	78004040     { r0 = #2
    7524:	98 c0 00 10 	1000c098       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 7650 <_Log+0x150> }
    7528:	60 40 5d 91 	915d4060     { r0 = memh (r29 + #6)
    752c:	ee c0 c2 26 	26c2c0ee       if (!cmp.gt (r0.new, #-1)) jump:nt 7704 <_Log+0x204> }
    7530:	10 40 dd 91 	91dd4010     { r17:16 = memd (r29 + #0)
    7534:	c0 c9 c0 49 	49c0c9c0       r1:0 = memd (gp + #624) }
    7538:	20 50 e0 d2 	d2e05020     { p0 = dfcmp.gt (r1:0, r17:16)
    753c:	00 50 11 f5 	f5115000       r1:0 = combine (r17, r16)
    7540:	02 50 11 f5 	f5115002       r3:2 = combine (r17, r16)
    7544:	f8 c0 5d 91 	915dc0f8       r24 = memh (r29 + #14) }
    7548:	98 40 00 5c 	5c004098     { if (p0) jump 7678 <_Log+0x178>
    754c:	00 c0 00 7f 	7f00c000       nop }
    7550:	58 40 98 84 	84984058     { r25:24 = convert_w2df (r24)
    7554:	0a 7b 00 5a 	5a007b0a       call eb64 <__hexagon_subdf3>
    7558:	00 50 11 f5 	f5115000       r1:0 = combine (r17, r16)
    755c:	82 c4 c0 49 	49c0c482       r3:2 = memd (gp + #288) }
    7560:	14 40 01 f5 	f5014014     { r21:20 = combine (r1, r0)
    7564:	b0 7a 00 5a 	5a007ab0       call eac0 <__hexagon_adddf3>
    7568:	00 50 11 f5 	f5115000       r1:0 = combine (r17, r16)
    756c:	82 c4 c0 49 	49c0c482       r3:2 = memd (gp + #288) }
    7570:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    7574:	e8 7b 00 5a 	5a007be8       call ed40 <__hexagon_divdf3>
    7578:	00 d4 15 f5 	f515d400       r1:0 = combine (r21, r20) }
    757c:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    7580:	32 7d 00 5a 	5a007d32       call efe0 <__hexagon_muldf3>
    7584:	16 c0 01 f5 	f501c016       r23:22 = combine (r1, r0) }
    7588:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    758c:	2c 7d 00 5a 	5a007d2c       call efe0 <__hexagon_muldf3>
    7590:	02 cb c0 49 	49c0cb02       r3:2 = memd (gp + #704) }
    7594:	96 7a 00 5a 	5a007a96     { call eac0 <__hexagon_adddf3>
    7598:	22 cb c0 49 	49c0cb22       r3:2 = memd (gp + #712) }
    759c:	02 50 11 f5 	f5115002     { r3:2 = combine (r17, r16)
    75a0:	22 fd 00 5a 	5a00fd22       call efe0 <__hexagon_muldf3> }
    75a4:	8e 7a 00 5a 	5a007a8e     { call eac0 <__hexagon_adddf3>
    75a8:	42 cb c0 49 	49c0cb42       r3:2 = memd (gp + #720) }
    75ac:	02 50 11 f5 	f5115002     { r3:2 = combine (r17, r16)
    75b0:	1a fd 00 5a 	5a00fd1a       call efe0 <__hexagon_muldf3> }
    75b4:	86 7a 00 5a 	5a007a86     { call eac0 <__hexagon_adddf3>
    75b8:	62 cb c0 49 	49c0cb62       r3:2 = memd (gp + #728) }
    75bc:	02 50 11 f5 	f5115002     { r3:2 = combine (r17, r16)
    75c0:	12 fd 00 5a 	5a00fd12       call efe0 <__hexagon_muldf3> }
    75c4:	7e 7a 00 5a 	5a007a7e     { call eac0 <__hexagon_adddf3>
    75c8:	82 cb c0 49 	49c0cb82       r3:2 = memd (gp + #736) }
    75cc:	02 50 11 f5 	f5115002     { r3:2 = combine (r17, r16)
    75d0:	0a fd 00 5a 	5a00fd0a       call efe0 <__hexagon_muldf3> }
    75d4:	76 7a 00 5a 	5a007a76     { call eac0 <__hexagon_adddf3>
    75d8:	a2 cb c0 49 	49c0cba2       r3:2 = memd (gp + #744) }
    75dc:	02 50 11 f5 	f5115002     { r3:2 = combine (r17, r16)
    75e0:	02 fd 00 5a 	5a00fd02       call efe0 <__hexagon_muldf3> }
    75e4:	6e 7a 00 5a 	5a007a6e     { call eac0 <__hexagon_adddf3>
    75e8:	c2 cb c0 49 	49c0cbc2       r3:2 = memd (gp + #752) }
    75ec:	02 50 11 f5 	f5115002     { r3:2 = combine (r17, r16)
    75f0:	fa fc 00 5a 	5a00fcfa       call efe0 <__hexagon_muldf3> }
    75f4:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    75f8:	b8 7a 00 5a 	5a007ab8       call eb64 <__hexagon_subdf3>
    75fc:	00 d4 15 f5 	f515d400       r1:0 = combine (r21, r20) }
    7600:	02 56 17 f5 	f5175602     { r3:2 = combine (r23, r22)
    7604:	f0 fc 00 5a 	5a00fcf0       call efe0 <__hexagon_muldf3> }
    7608:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    760c:	44 40 4a 10 	104a4044       p0 = cmp.eq (r18, #0) ; if (!p0.new) jump:nt 7690 <_Log+0x190>
    7610:	e2 cb c0 49 	49c0cbe2       r3:2 = memd (gp + #760) }
    7614:	00 58 19 f5 	f5195800     { r1:0 = combine (r25, r24)
    7618:	e6 fc 00 5a 	5a00fce6       call efe0 <__hexagon_muldf3> }
    761c:	02 50 11 f5 	f5115002     { r3:2 = combine (r17, r16)
    7620:	52 fa 00 5a 	5a00fa52       call eac0 <__hexagon_adddf3> }
    7624:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    7628:	a0 7a 00 5a 	5a007aa0       call eb64 <__hexagon_subdf3>
    762c:	00 d4 15 f5 	f515d400       r1:0 = combine (r21, r20) }
    7630:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    7634:	00 58 19 f5 	f5195800       r1:0 = combine (r25, r24)
    7638:	02 cc c0 49 	49c0cc02       r3:2 = memd (gp + #768) }
    763c:	d2 fc 00 5a 	5a00fcd2     call efe0 <__hexagon_muldf3>
    7640:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    7644:	40 7a 00 5a 	5a007a40       call eac0 <__hexagon_adddf3>
    7648:	00 d0 11 f5 	f511d000       r1:0 = combine (r17, r16) }
    764c:	fc f8 00 58 	5800f8fc     jump e844 <__restore_r16_through_r25_and_deallocframe>
    7650:	f0 fc ff 5b 	5bfffcf0     call 7030 <_Feraise>
    7654:	68 44 00 00 	00004468     { immext (#72192)
    7658:	00 dc 82 9b 	9b82dc00       r0 = memw (r2 = ##72240) }
    765c:	22 c0 82 91 	9182c022     r2 = memw (r2 + #4)
    7660:	41 5f c2 8c 	8cc25f41     { r1 = togglebit (r2, #31)
    7664:	f2 f8 00 58 	5800f8f2       jump e844 <__restore_r16_through_r25_and_deallocframe> }
    7668:	60 40 5d 91 	915d4060     { r0 = memh (r29 + #6)
    766c:	4e c0 c2 26 	26c2c04e       if (!cmp.gt (r0.new, #-1)) jump:nt 7704 <_Log+0x204> }
    7670:	ea 78 00 58 	580078ea     { jump e844 <__restore_r16_through_r25_and_deallocframe>
    7674:	00 c0 dd 91 	91ddc000       r1:0 = memd (r29 + #0) }
    7678:	24 fa 00 5a 	5a00fa24     call eac0 <__hexagon_adddf3>
    767c:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    7680:	f8 c0 5d 91 	915dc0f8       r24 = memh (r29 + #14) }
    7684:	f8 ff f8 bf 	bff8fff8     r24 = add (r24, #-1)
    7688:	18 40 f8 70 	70f84018     { r24 = sxth (r24)
    768c:	64 ff ff 59 	59ffff64       jump 7550 <_Log+0x50> }
    7690:	00 54 15 f5 	f5155400     { r1:0 = combine (r21, r20)
    7694:	44 40 ca 10 	10ca4044       p0 = cmp.gt (r18, #0) ; if (!p0.new) jump:nt 7718 <_Log+0x218>
    7698:	22 cc c0 49 	49c0cc22       r3:2 = memd (gp + #776) }
    769c:	a2 fc 00 5a 	5a00fca2     call efe0 <__hexagon_muldf3>
    76a0:	12 40 01 f5 	f5014012     { r19:18 = combine (r1, r0)
    76a4:	a0 7c 00 5a 	5a007ca0       call efe0 <__hexagon_muldf3>
    76a8:	00 54 15 f5 	f5155400       r1:0 = combine (r21, r20)
    76ac:	42 cc c0 49 	49c0cc42       r3:2 = memd (gp + #784) }
    76b0:	14 40 01 f5 	f5014014     { r21:20 = combine (r1, r0)
    76b4:	98 7c 00 5a 	5a007c98       call efe0 <__hexagon_muldf3>
    76b8:	00 50 11 f5 	f5115000       r1:0 = combine (r17, r16)
    76bc:	62 cc c0 49 	49c0cc62       r3:2 = memd (gp + #792) }
    76c0:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    76c4:	90 7c 00 5a 	5a007c90       call efe0 <__hexagon_muldf3>
    76c8:	00 58 19 f5 	f5195800       r1:0 = combine (r25, r24)
    76cc:	82 cc c0 49 	49c0cc82       r3:2 = memd (gp + #800) }
    76d0:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    76d4:	f8 79 00 5a 	5a0079f8       call eac0 <__hexagon_adddf3>
    76d8:	00 d0 11 f5 	f511d000       r1:0 = combine (r17, r16) }
    76dc:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    76e0:	44 7a 00 5a 	5a007a44       call eb64 <__hexagon_subdf3>
    76e4:	00 d4 15 f5 	f515d400       r1:0 = combine (r21, r20) }
    76e8:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    76ec:	ec 79 00 5a 	5a0079ec       call eac0 <__hexagon_adddf3>
    76f0:	00 d2 13 f5 	f513d200       r1:0 = combine (r19, r18) }
    76f4:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    76f8:	a4 7f ff 59 	59ff7fa4       jump 763c <_Log+0x13c>
    76fc:	00 58 19 f5 	f5195800       r1:0 = combine (r25, r24)
    7700:	a2 cc c0 49 	49c0cca2       r3:2 = memd (gp + #808) }
    7704:	20 40 00 78 	78004020     { r0 = #1
    7708:	96 fc ff 5b 	5bfffc96       call 7030 <_Feraise> }
    770c:	9c 78 00 58 	5800789c     { jump e844 <__restore_r16_through_r25_and_deallocframe>
    7710:	68 44 00 00 	00004468       immext (#72192)
    7714:	00 c4 c0 49 	49c0c400       r1:0 = memd (gp + ##72224) }
    7718:	00 54 15 f5 	f5155400     { r1:0 = combine (r21, r20)
    771c:	64 7c 00 5a 	5a007c64       call efe0 <__hexagon_muldf3>
    7720:	c2 cc c0 49 	49c0ccc2       r3:2 = memd (gp + #816) }
    7724:	12 40 01 f5 	f5014012     { r19:18 = combine (r1, r0)
    7728:	5e 7c 00 5a 	5a007c5e       call efe0 <__hexagon_muldf3>
    772c:	00 54 15 f5 	f5155400       r1:0 = combine (r21, r20)
    7730:	e2 cc c0 49 	49c0cce2       r3:2 = memd (gp + #824) }
    7734:	14 40 01 f5 	f5014014     { r21:20 = combine (r1, r0)
    7738:	56 7c 00 5a 	5a007c56       call efe0 <__hexagon_muldf3>
    773c:	00 50 11 f5 	f5115000       r1:0 = combine (r17, r16)
    7740:	02 cd c0 49 	49c0cd02       r3:2 = memd (gp + #832) }
    7744:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    7748:	be 79 00 5a 	5a0079be       call eac0 <__hexagon_adddf3>
    774c:	00 d4 15 f5 	f515d400       r1:0 = combine (r21, r20) }
    7750:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    7754:	b8 79 00 5a 	5a0079b8       call eac0 <__hexagon_adddf3>
    7758:	00 d2 13 f5 	f513d200       r1:0 = combine (r19, r18) }
    775c:	02 58 19 f5 	f5195802     { r3:2 = combine (r25, r24)
    7760:	b2 f9 00 5a 	5a00f9b2       call eac0 <__hexagon_adddf3> }
    7764:	70 f8 00 58 	5800f870     jump e844 <__restore_r16_through_r25_and_deallocframe>
    7768:	00 c0 00 7f 	7f00c000     nop
    776c:	00 c0 00 7f 	7f00c000     nop

00007770 <_Xp_getw>:
    7770:	00 40 01 75 	75014000     { p0 = cmp.eq (r1, #0)
    7774:	03 40 60 70 	70604003       r3 = r0
    7778:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    777c:	30 c0 00 5c 	5c00c030     if (p0) jump 77dc <_Xp_getw+0x6c>
    7780:	2a 41 01 10 	1001412a     { p0 = cmp.eq (r1, #1) ; if (p0.new) jump:nt 77d4 <_Xp_getw+0x64>
    7784:	10 40 c0 43 	43c04010       if (p0.new) r17:16 = memd (r0 + #0)
    7788:	10 c0 c0 47 	47c0c010       if !p0.new r17:16 = memd (r0 + #0) }
    778c:	c6 c4 c0 49 	49c0c4c6     r7:6 = memd (gp + #304)
    7790:	00 c6 f0 d2 	d2f0c600     p0 = dfcmp.eq (r17:16, r7:6)
    7794:	20 c0 00 5c 	5c00c020     if (p0) jump 77d4 <_Xp_getw+0x64>
    7798:	10 41 c1 10 	10c14110     { p0 = cmp.gt (r1, #1) ; if (!p0.new) jump:nt 77b8 <_Xp_getw+0x48>
    779c:	24 40 c0 43 	43c04024       if (p0.new) r5:4 = memd (r0 + #8)
    77a0:	24 c0 c0 47 	47c0c024       if !p0.new r5:4 = memd (r0 + #8) }
    77a4:	00 c6 e4 d2 	d2e4c600     p0 = dfcmp.eq (r5:4, r7:6)
    77a8:	16 c0 00 5c 	5c00c016     if (p0) jump 77d4 <_Xp_getw+0x64>
    77ac:	00 70 11 fd 	fd117000     { if (p0.new) r1:0 = combine (r17, r16)
    77b0:	10 42 01 10 	10014210       p0 = cmp.eq (r1, #2) ; if (p0.new) jump:nt 77cc <_Xp_getw+0x5c>
    77b4:	02 e4 05 fd 	fd05e402       if (p0.new) r3:2 = combine (r5, r4) }
    77b8:	00 44 05 f5 	f5054400     { r1:0 = combine (r5, r4)
    77bc:	84 79 00 5a 	5a007984       call eac0 <__hexagon_adddf3>
    77c0:	42 c0 c3 91 	91c3c042       r3:2 = memd (r3 + #16) }
    77c4:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    77c8:	00 d0 11 f5 	f511d000       r1:0 = combine (r17, r16) }
    77cc:	7a f9 00 5a 	5a00f97a     call eac0 <__hexagon_adddf3>
    77d0:	10 c0 01 f5 	f501c010     r17:16 = combine (r1, r0)
    77d4:	00 50 11 f5 	f5115000     { r1:0 = combine (r17, r16)
    77d8:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    77dc:	d0 c4 c0 49 	49c0c4d0     r17:16 = memd (gp + #304)
    77e0:	00 50 11 f5 	f5115000     { r1:0 = combine (r17, r16)
    77e4:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    77e8:	00 40 00 7f 	7f004000     { nop
    77ec:	00 c0 00 7f 	7f00c000       nop }

000077f0 <_Xp_ldexpx>:
    77f0:	00 40 41 75 	75414000     { p0 = cmp.gt (r1, #0)
    77f4:	ec 77 00 5a 	5a0077ec       call e7c8 <__save_r16_through_r23>
    77f8:	04 c0 9d a0 	a09dc004       allocframe (#32) }
    77fc:	16 40 60 70 	70604016     { r22 = r0
    7800:	20 40 20 5c 	5c204020       if !p0 jump 783c <_Xp_ldexpx+0x4c>
    7804:	2b 30 1a 30 	301a302b       r18 = r1 ; r19 = r2 }
    7808:	10 60 20 73 	73206010     { r17:16 = combine (#0, r0)
    780c:	08 40 00 58 	58004008       jump 7818 <_Xp_ldexpx+0x28>
    7810:	d4 c4 c0 49 	49c0c4d4       r21:20 = memd (gp + #304) }
    7814:	14 c1 20 5c 	5c20c114     if !p1 jump 783c <_Xp_ldexpx+0x4c>
    7818:	02 40 73 70 	70734002     { r2 = r19
    781c:	bc 52 00 5a 	5a0052bc       call 9d90 <ldexp>
    7820:	31 40 11 b0 	b0114031       r17 = add (r17, #1)
    7824:	00 c0 d0 91 	91d0c000       r1:0 = memd (r16 + #0) }
    7828:	00 54 e0 d2 	d2e05400     { p0 = dfcmp.eq (r1:0, r21:20)
    782c:	01 51 52 f2 	f2525101       p1 = cmp.gt (r18, r17)
    7830:	10 41 10 b0 	b0104110       r16 = add (r16, #8)
    7834:	00 c0 d0 a1 	a1d0c000       memd (r16 + #0) = r1:0 }
    7838:	ee e0 ff 5c 	5cffe0ee     if !p0 jump 7814 <_Xp_ldexpx+0x24>
    783c:	bf 41 00 00 	000041bf     { immext (#28608)
    7840:	68 c0 0e 17 	170ec068       r0 = r22 ; jump e830 <__restore_r16_through_r23_and_deallocframe> }
    7844:	00 40 00 7f 	7f004000     { nop
    7848:	00 40 00 7f 	7f004000       nop
    784c:	00 c0 00 7f 	7f00c000       nop }

00007850 <_Xp_movx>:
    7850:	43 43 01 8c 	8c014343     { r3 = asl (r1, #3)
    7854:	01 40 62 70 	70624001       r1 = r2
    7858:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    785c:	fa 74 ff 5b 	5bff74fa     { call 6250 <memcpy>
    7860:	08 30 32 30 	30323008       r2 = r3 ; r16 = r0 }
    7864:	00 40 70 70 	70704000     { r0 = r16
    7868:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    786c:	00 c0 00 7f 	7f00c000     nop

00007870 <_Xp_addh>:
    7870:	a8 77 00 5a 	5a0077a8     { call e7c0 <__save_r16_through_r27>
    7874:	0c c0 9d a0 	a09dc00c       allocframe (#96) }
    7878:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    787c:	02 c2 dd a1 	a1ddc202       memd (r29 + #16) = r3:2 }
    7880:	d7 45 1d b0 	b01d45d7     { r23 = add (r29, #46)
    7884:	0c 40 49 10 	1049400c       p0 = cmp.eq (r17, #0) ; if (!p0.new) jump:nt 7898 <_Xp_addh+0x28>
    7888:	18 44 1d b0 	b01d4418       r24 = add (r29, #32)
    788c:	00 c0 00 7f 	7f00c000       nop }
    7890:	be 41 00 00 	000041be     { immext (#28544)
    7894:	60 c0 08 17 	1708c060       r0 = r16 ; jump e840 <__restore_r16_through_r27_and_deallocframe> }
    7898:	00 57 18 f5 	f5185700     { r1:0 = combine (r24, r23)
    789c:	2c 7a ff 5b 	5bff7a2c       call 6cf0 <_Dunscale>
    78a0:	04 c2 dd a1 	a1ddc204       memd (r29 + #32) = r3:2 }
    78a4:	32 c0 c0 10 	10c0c032     p0 = cmp.gt (r0, #0) ; if (!p0.new) jump:nt 7908 <_Xp_addh+0x98>
    78a8:	28 42 00 10 	10004228     { p0 = cmp.eq (r0, #2) ; if (p0.new) jump:nt 78f8 <_Xp_addh+0x88>
    78ac:	ec 79 ff 5b 	5bff79ec       call 6c80 <_Dtest>
    78b0:	00 c0 70 70 	7070c000       r0 = r16 }
    78b4:	22 c0 c0 10 	10c0c022     p0 = cmp.gt (r0, #0) ; if (!p0.new) jump:nt 78f8 <_Xp_addh+0x88>
    78b8:	ec 42 30 10 	103042ec     { p0 = cmp.eq (r0, #2) ; if (p0.new) jump:nt 7890 <_Xp_addh+0x20>
    78bc:	61 c1 7d 91 	917dc161       r1 = memuh (r29 + #22) }
    78c0:	00 42 00 00 	00004200     { immext (#32768)
    78c4:	82 2b 00 48 	48002b82       r0 = ##32768 ; r2 = memuh (r16 + #6) }
    78c8:	40 41 42 ef 	ef424140     { r0 &= xor (r2, r1)
    78cc:	e4 c0 32 24 	2432c0e4       if (cmp.eq (r0.new, #0)) jump:nt 7890 <_Xp_addh+0x20> }
    78d0:	20 40 00 78 	78004020     { r0 = #1
    78d4:	b0 fb ff 5b 	5bfffbb0       call 7030 <_Feraise> }
    78d8:	20 40 51 75 	75514020     { p0 = cmp.gt (r17, #1)
    78dc:	68 44 00 00 	00004468       immext (#72192)
    78e0:	02 c4 c0 49 	49c0c402       r3:2 = memd (gp + ##72224) }
    78e4:	d6 60 ff 5c 	5cff60d6     { if !p0 jump 7890 <_Xp_addh+0x20>
    78e8:	c4 44 c0 49 	49c044c4       r5:4 = memd (gp + #304)
    78ec:	00 c2 d0 a1 	a1d0c200       memd (r16 + #0) = r3:2 }
    78f0:	d0 7f ff 59 	59ff7fd0     { jump 7890 <_Xp_addh+0x20>
    78f4:	01 c4 d0 a1 	a1d0c401       memd (r16 + #8) = r5:4 }
    78f8:	40 c0 dd 91 	91ddc040     r1:0 = memd (r29 + #16)
    78fc:	00 40 70 70 	70704000     { r0 = r16
    7900:	00 c0 d0 a1 	a1d0c000       memd (r16 + #0) = r1:0 }
    7904:	9e f7 00 58 	5800f79e     jump e840 <__restore_r16_through_r27_and_deallocframe>
    7908:	c4 e0 30 10 	1030e0c4     p0 = cmp.eq (r0, #0) ; if (p0.new) jump:t 7890 <_Xp_addh+0x20>
    790c:	c2 40 f9 10 	10f940c2     { p0 = cmp.gt (r17, #0) ; if (!p0.new) jump:nt 7890 <_Xp_addh+0x20>
    7910:	95 33 0a 28 	280a3395       r18 = #0 ; r5 = add (r17, #-1) }
    7914:	19 40 04 78 	78044019     { r25 = #2048
    7918:	60 50 05 c4 	c4055060       r0 = addasl (r16, r5, #3)
    791c:	9a 45 1d b0 	b01d459a       r26 = add (r29, #44)
    7920:	03 c5 9d a1 	a19dc503       memw (r29 + #12) = r5 }
    7924:	1b 43 1d b0 	b01d431b     { r27 = add (r29, #24)
    7928:	d4 44 c0 49 	49c044d4       r21:20 = memd (gp + #304)
    792c:	02 c0 9d a1 	a19dc002       memw (r29 + #8) = r0 }
    7930:	00 5a 1b f5 	f51b5a00     { r1:0 = combine (r27, r26)
    7934:	53 43 12 8c 	8c124353       r19 = asl (r18, #3)
    7938:	82 f2 d0 3a 	3ad0f282       r3:2 = memd (r16 + r18 << #3) }
    793c:	16 53 10 f3 	f3105316     { r22 = add (r16, r19)
    7940:	da 79 ff 5b 	5bff79da       call 6cf0 <_Dunscale>
    7944:	03 c2 dd a1 	a1ddc203       memd (r29 + #24) = r3:2 }
    7948:	a4 c0 b0 10 	10b0c0a4     p0 = cmp.gt (r0, #0) ; if (p0.new) jump:nt 7890 <_Xp_addh+0x20>
    794c:	42 40 10 10 	10104042     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 7bd0 <_Xp_addh+0x360>
    7950:	c2 42 5d 91 	915d42c2       r2 = memh (r29 + #44)
    7954:	e0 c2 5d 91 	915dc2e0       r0 = memh (r29 + #46) }
    7958:	00 c2 20 f3 	f320c200     r0 = sub (r2, r0)
    795c:	c0 7c 60 75 	75607cc0     { p0 = cmp.gt (r0, #-26)
    7960:	54 48 00 5c 	5c004854       if (p0.new) jump:nt 7a04 <_Xp_addh+0x194>
    7964:	42 c0 dd 47 	47ddc042       if !p0.new r3:2 = memd (r29 + #16) }
    7968:	00 54 e2 d2 	d2e25400     { p0 = dfcmp.eq (r3:2, r21:20)
    796c:	00 42 03 f5 	f5034200       r1:0 = combine (r3, r2)
    7970:	24 c0 12 b0 	b012c024       r4 = add (r18, #1) }
    7974:	01 40 92 74 	74924001     { if !p0 r1 = add (r18, #0)
    7978:	54 40 00 5c 	5c004054       if (p0) jump 7a1c <_Xp_addh+0x1ac>
    797c:	80 d1 32 fb 	fb32d180       if !p0 r0 = sub (r17, r18) }
    7980:	64 50 04 c4 	c4045064     { r4 = addasl (r16, r4, #3)
    7984:	38 c9 94 14 	1494c938       p0 = cmp.gt (r4, r17) ; if (p0.new) jump:nt 7bf0 <_Xp_addh+0x380> }
    7988:	00 40 00 08 	08004000     { immext (#2147483648)
    798c:	00 40 11 75 	75114000       p0 = cmp.eq (r17, ##-2147483648)
    7990:	34 e8 00 5c 	5c00e834       if (p0.new) jump:nt 7bf0 <_Xp_addh+0x380> }
    7994:	18 c5 00 60 	6000c518     loop0 (79f0 <_Xp_addh+0x180>, r0)
    7998:	20 80 01 b0 	b0018020     { r0 = add (r1, #1)
    799c:	00 c0 00 7f 	7f00c000       nop }:endloop0
    79a0:	64 40 9d 91 	919d4064     { r4 = memw (r29 + #12)
    79a4:	12 c0 d2 20 	20d2c012       if (!cmp.gt (r4.new, r0)) jump:nt 7bc4 <_Xp_addh+0x354> }
    79a8:	21 40 00 b0 	b0004021     { r1 = add (r0, #1)
    79ac:	00 c0 00 7f 	7f00c000       nop }
    79b0:	e0 7f e1 bf 	bfe17fe0     { r0 = add (r1, #-1)
    79b4:	12 ca c1 14 	14c1ca12       p0 = cmp.gt (r1, r18) ; if (!p0.new) jump:nt 79d4 <_Xp_addh+0x164> }
    79b8:	61 50 01 c4 	c4015061     { r1 = addasl (r16, r1, #3)
    79bc:	32 c4 80 db 	db80c432       r4 = add (r0, sub (#1, r18)) }
    79c0:	10 40 04 60 	60044010     { loop0 (79c8 <_Xp_addh+0x158>, r4)
    79c4:	60 d0 00 c4 	c400d060       r0 = addasl (r16, r0, #3) }
    79c8:	e4 c1 c0 9b 	9bc0c1e4     r5:4 = memd (r0 ++ #-8)
    79cc:	00 80 00 7f 	7f008000     { nop
    79d0:	78 c4 c1 ab 	abc1c478       memd (r1 ++ #-8) = r5:4 }:endloop0
    79d4:	02 40 79 70 	70794002     { r2 = r25
    79d8:	c0 44 c0 49 	49c044c0       r1:0 = memd (gp + #304)
    79dc:	02 d3 d0 3b 	3bd0d302       memd (r16 + r19 << #0) = r3:2 }
    79e0:	02 c0 dd a1 	a1ddc002     memd (r29 + #16) = r1:0
    79e4:	56 4a f9 14 	14f94a56     { p0 = cmp.gt (r17, r18) ; if (!p0.new) jump:nt 7890 <_Xp_addh+0x20>
    79e8:	a6 7f ff 59 	59ff7fa6       jump 7930 <_Xp_addh+0xc0>
    79ec:	19 c0 62 70 	7062c019       r25 = r2 }
    79f0:	26 c0 c4 9b 	9bc4c026     r7:6 = memd (r4 ++ #8)
    79f4:	00 d4 e6 d2 	d2e6d400     p0 = dfcmp.eq (r7:6, r21:20)
    79f8:	d4 60 df 5c 	5cdf60d4     { if (p0) jump 79a0 <_Xp_addh+0x130>
    79fc:	d0 7f ff 59 	59ff7fd0       jump 7998 <_Xp_addh+0x128>
    7a00:	01 c0 80 74 	7480c001       if !p0 r1 = add (r0, #0) }
    7a04:	0c 59 c0 10 	10c0590c     { p0 = cmp.gt (r0, #25) ; if (!p0.new) jump:nt 7a1c <_Xp_addh+0x1ac>
    7a08:	40 40 dd 47 	47dd4040       if !p0.new r1:0 = memd (r29 + #16)
    7a0c:	40 c0 dd 43 	43ddc040       if (p0.new) r1:0 = memd (r29 + #16) }
    7a10:	00 d4 e0 d2 	d2e0d400     p0 = dfcmp.eq (r1:0, r21:20)
    7a14:	32 40 92 74 	74924032     { if !p0 r18 = add (r18, #1)
    7a18:	e8 e0 ff 5c 	5cffe0e8       if !p0 jump 79e4 <_Xp_addh+0x174> }
    7a1c:	52 78 00 5a 	5a007852     { call eac0 <__hexagon_adddf3>
    7a20:	02 d3 d0 3a 	3ad0d302       r3:2 = memd (r16 + r19 << #0) }
    7a24:	00 54 e0 d2 	d2e05400     { p0 = dfcmp.eq (r1:0, r21:20)
    7a28:	02 40 01 f5 	f5014002       r3:2 = combine (r1, r0)
    7a2c:	00 d3 d0 3b 	3bd0d300       memd (r16 + r19 << #0) = r1:0 }
    7a30:	23 40 12 74 	74124023     { if (p0) r3 = add (r18, #1)
    7a34:	2c 40 20 5c 	5c20402c       if !p0 jump 7a88 <_Xp_addh+0x218>
    7a38:	02 40 16 74 	74164002       if (p0) r2 = add (r22, #0)
    7a3c:	00 d1 32 f3 	f332d100       r0 = sub (r17, r18) }
    7a40:	63 50 03 c4 	c4035063     { r3 = addasl (r16, r3, #3)
    7a44:	d4 c9 83 14 	1483c9d4       p0 = cmp.gt (r3, r17) ; if (p0.new) jump:nt 7be8 <_Xp_addh+0x378> }
    7a48:	00 40 00 08 	08004000     { immext (#2147483648)
    7a4c:	00 40 11 75 	75114000       p0 = cmp.eq (r17, ##-2147483648)
    7a50:	d0 c8 00 5c 	5c00c8d0       if (p0.new) jump:nt 7be8 <_Xp_addh+0x378> }
    7a54:	01 c0 60 70 	7060c001     r1 = r0
    7a58:	01 40 21 62 	62214001     { lc0 = r1
    7a5c:	00 c0 21 72 	7221c000       r1.h = #0 }
    7a60:	04 fb 61 71 	7161fb04     r1.l = #31492
    7a64:	00 c0 21 62 	6221c000     sa0 = r1
    7a68:	00 80 00 7f 	7f008000     { nop
    7a6c:	00 c0 00 7f 	7f00c000       nop }:endloop0
    7a70:	c2 44 c0 49 	49c044c2     { r3:2 = memd (gp + #304)
    7a74:	44 c0 9d 91 	919dc044       r4 = memw (r29 + #8) }
    7a78:	00 c2 c4 a1 	a1c4c200     memd (r4 + #0) = r3:2
    7a7c:	02 d3 d0 3a 	3ad0d302     r3:2 = memd (r16 + r19 << #0)
    7a80:	00 d4 e2 d2 	d2e2d400     p0 = dfcmp.eq (r3:2, r21:20)
    7a84:	06 e0 df 5c 	5cdfe006     if (p0) jump 7890 <_Xp_addh+0x20>
    7a88:	00 40 77 70 	70774000     { r0 = r23
    7a8c:	34 79 ff 5b 	5bff7934       call 6cf0 <_Dunscale>
    7a90:	11 2a 41 6c 	6c412a11       r1 = add (sp, #16) ; memd (sp + #16) = r3:2 }
    7a94:	c1 7c f9 bf 	bff97cc1     { r1 = add (r25, #-26)
    7a98:	e0 c2 5d 91 	915dc2e0       r0 = memh (r29 + #46) }
    7a9c:	3e c1 80 14 	1480c13e     p0 = cmp.gt (r0, r1) ; if (p0.new) jump:nt 7b18 <_Xp_addh+0x2a8>
    7aa0:	32 40 12 b0 	b0124032     { r18 = add (r18, #1)
    7aa4:	00 5a 16 f5 	f5165a00       r1:0 = combine (r22, r26)
    7aa8:	f8 d1 24 20 	2024d1f8       if (cmp.eq (r18.new, r17)) jump:nt 7890 <_Xp_addh+0x20> }
    7aac:	02 d3 d0 3a 	3ad0d302     r3:2 = memd (r16 + r19 << #0)
    7ab0:	20 79 ff 5b 	5bff7920     { call 6cf0 <_Dunscale>
    7ab4:	02 c2 dd a1 	a1ddc202       memd (r29 + #16) = r3:2 }
    7ab8:	40 63 36 73 	73366340     { r1:0 = combine (#26, r22)
    7abc:	5c f8 ff 5b 	5bfff85c       call 6b70 <_Dint> }
    7ac0:	00 40 76 70 	70764000     { r0 = r22
    7ac4:	e0 53 00 5a 	5a0053e0       call a280 <_Dscale>
    7ac8:	c1 c2 5d 91 	915dc2c1       r1 = memh (r29 + #44) }
    7acc:	4c 78 00 5a 	5a00784c     { call eb64 <__hexagon_subdf3>
    7ad0:	02 53 d0 3a 	3ad05302       r3:2 = memd (r16 + r19 << #0)
    7ad4:	40 c0 dd 91 	91ddc040       r1:0 = memd (r29 + #16) }
    7ad8:	04 40 01 f5 	f5014004     { r5:4 = combine (r1, r0)
    7adc:	00 54 e0 d2 	d2e05400       p0 = dfcmp.eq (r1:0, r21:20)
    7ae0:	c2 42 5d 91 	915d42c2       r2 = memh (r29 + #44)
    7ae4:	02 c0 dd a1 	a1ddc002       memd (r29 + #16) = r1:0 }
    7ae8:	00 57 18 f5 	f5185700     { r1:0 = combine (r24, r23)
    7aec:	04 53 d0 30 	30d05304       if (p0) r5:4 = memd (r16 + r19 << #0)
    7af0:	01 c2 9d a1 	a19dc201       memw (r29 + #4) = r2 }
    7af4:	fe 78 ff 5b 	5bff78fe     { call 6cf0 <_Dunscale>
    7af8:	04 c4 dd a1 	a1ddc404       memd (r29 + #32) = r5:4 }
    7afc:	74 7f ff 59 	59ff7f74     { jump 79e4 <_Xp_addh+0x174>
    7b00:	22 c0 9d 91 	919dc022       r2 = memw (r29 + #4) }
    7b04:	20 c0 c3 9b 	9bc3c020     r1:0 = memd (r3 ++ #8)
    7b08:	00 54 e0 d2 	d2e05400     { p0 = dfcmp.eq (r1:0, r21:20)
    7b0c:	08 c0 c2 ab 	abc2c008       memd (r2 ++ #8) = r1:0 }
    7b10:	ac 60 ff 5c 	5cff60ac     { if !p0 jump 7a68 <_Xp_addh+0x1f8>
    7b14:	b0 ff ff 59 	59ffffb0       jump 7a70 <_Xp_addh+0x200> }
    7b18:	59 79 a0 db 	dba07959     { r25 = add (r0, sub (#26, r25))
    7b1c:	00 c2 1d b0 	b01dc200       r0 = add (r29, #16) }
    7b20:	01 40 f9 70 	70f94001     { r1 = sxth (r25)
    7b24:	28 f8 ff 5b 	5bfff828       call 6b70 <_Dint> }
    7b28:	00 42 1d b0 	b01d4200     { r0 = add (r29, #16)
    7b2c:	ac 53 00 5a 	5a0053ac       call a280 <_Dscale>
    7b30:	e1 c2 5d 91 	915dc2e1       r1 = memh (r29 + #46) }
    7b34:	18 78 00 5a 	5a007818     { call eb64 <__hexagon_subdf3>
    7b38:	00 53 d0 3a 	3ad05300       r1:0 = memd (r16 + r19 << #0)
    7b3c:	42 c0 dd 91 	91ddc042       r3:2 = memd (r29 + #16) }
    7b40:	00 54 e0 d2 	d2e05400     { p0 = dfcmp.eq (r1:0, r21:20)
    7b44:	22 40 12 b0 	b0124022       r2 = add (r18, #1)
    7b48:	00 51 32 f3 	f3325100       r0 = sub (r17, r18)
    7b4c:	00 d3 d0 3b 	3bd0d300       memd (r16 + r19 << #0) = r1:0 }
    7b50:	1a c0 20 5c 	5c20c01a     if !p0 jump 7b84 <_Xp_addh+0x314>
    7b54:	62 50 02 c4 	c4025062     { r2 = addasl (r16, r2, #3)
    7b58:	4c c9 82 14 	1482c94c       p0 = cmp.gt (r2, r17) ; if (p0.new) jump:nt 7bec <_Xp_addh+0x37c> }
    7b5c:	00 40 00 08 	08004000     { immext (#2147483648)
    7b60:	00 40 11 75 	75114000       p0 = cmp.eq (r17, ##-2147483648)
    7b64:	48 c8 00 5c 	5c00c848       if (p0.new) jump:nt 7bec <_Xp_addh+0x37c> }
    7b68:	10 44 00 60 	60004410     { loop0 (7bb0 <_Xp_addh+0x340>, r0)
    7b6c:	00 c0 00 7f 	7f00c000       nop }
    7b70:	00 80 00 7f 	7f008000     { nop
    7b74:	00 c0 00 7f 	7f00c000       nop }:endloop0
    7b78:	c0 44 c0 49 	49c044c0     { r1:0 = memd (gp + #304)
    7b7c:	42 c0 9d 91 	919dc042       r2 = memw (r29 + #8) }
    7b80:	00 c0 c2 a1 	a1c2c000     memd (r2 + #0) = r1:0
    7b84:	f2 ff f2 bf 	bff2fff2     r18 = add (r18, #-1)
    7b88:	20 40 00 00 	00004020     { immext (#2048)
    7b8c:	19 60 00 7e 	7e006019       if (p0.new) r25 = ##2048
    7b90:	d4 e0 2a 10 	102ae0d4       p0 = cmp.eq (r18, #0) ; if (p0.new) jump:t 7930 <_Xp_addh+0xc0> }
    7b94:	e2 7f f2 bf 	bff27fe2     { r2 = add (r18, #-1)
    7b98:	00 da 18 f5 	f518da00       r1:0 = combine (r24, r26) }
    7b9c:	84 e2 d0 3a 	3ad0e284     r5:4 = memd (r16 + r2 << #3)
    7ba0:	a8 78 ff 5b 	5bff78a8     { call 6cf0 <_Dunscale>
    7ba4:	04 c4 dd a1 	a1ddc404       memd (r29 + #32) = r5:4 }
    7ba8:	1e 7f ff 59 	59ff7f1e     { jump 79e4 <_Xp_addh+0x174>
    7bac:	c2 c2 5d 91 	915dc2c2       r2 = memh (r29 + #44) }
    7bb0:	20 c0 c2 9b 	9bc2c020     r1:0 = memd (r2 ++ #8)
    7bb4:	00 54 e0 d2 	d2e05400     { p0 = dfcmp.eq (r1:0, r21:20)
    7bb8:	08 c0 d6 ab 	abd6c008       memd (r22 ++ #8) = r1:0 }
    7bbc:	da 60 ff 5c 	5cff60da     { if !p0 jump 7b70 <_Xp_addh+0x300>
    7bc0:	de ff ff 59 	59ffffde       jump 7b78 <_Xp_addh+0x308> }
    7bc4:	00 51 00 f2 	f2005100     { p0 = cmp.eq (r0, r17)
    7bc8:	f6 7e ff 59 	59ff7ef6       jump 79b0 <_Xp_addh+0x140>
    7bcc:	01 e0 80 74 	7480e001       if !p0.new r1 = add (r0, #0) }
    7bd0:	12 3e aa 51 	51aa3e12     r18 = add (r18, #1) ; r5:4 = memd (sp + #16)
    7bd4:	5e 4a e9 14 	14e94a5e     { p0 = cmp.gt (r17, r18) ; if (!p0.new) jump:nt 7890 <_Xp_addh+0x20>
    7bd8:	c0 44 c0 49 	49c044c0       r1:0 = memd (gp + #304)
    7bdc:	00 c4 d6 a1 	a1d6c400       memd (r22 + #0) = r5:4 }
    7be0:	58 7e ff 59 	59ff7e58     { jump 7890 <_Xp_addh+0x20>
    7be4:	80 f2 d0 3b 	3bd0f280       memd (r16 + r18 << #3) = r1:0 }
    7be8:	36 c1 30 16 	1630c136     r0 = #1 ; jump 7a54 <_Xp_addh+0x1e4>
    7bec:	be c1 30 16 	1630c1be     r0 = #1 ; jump 7b68 <_Xp_addh+0x2f8>
    7bf0:	d2 c1 20 16 	1620c1d2     r0 = #1 ; jump 7994 <_Xp_addh+0x124>
    7bf4:	00 40 00 7f 	7f004000     { nop
    7bf8:	00 40 00 7f 	7f004000       nop
    7bfc:	00 c0 00 7f 	7f00c000       nop }

00007c00 <_Xp_subx>:
    7c00:	f0 75 00 5a 	5a0075f0     { call e7e0 <__save_r16_through_r25>
    7c04:	05 c0 9d a0 	a09dc005       allocframe (#40) }
    7c08:	14 40 03 f5 	f5034014     { r21:20 = combine (r3, r0)
    7c0c:	16 c0 61 70 	7061c016       r22 = r1 }
    7c10:	22 40 cd 10 	10cd4022     { p0 = cmp.gt (r21, #0) ; if (!p0.new) jump:nt 7c54 <_Xp_subx+0x54>
    7c14:	04 40 c2 43 	43c24004       if (p0.new) r5:4 = memd (r2 + #0)
    7c18:	d8 c4 c0 49 	49c0c4d8       r25:24 = memd (gp + #304) }
    7c1c:	00 58 e4 d2 	d2e45800     { p0 = dfcmp.eq (r5:4, r25:24)
    7c20:	11 41 02 b0 	b0024111       r17 = add (r2, #8)
    7c24:	10 c0 00 78 	7800c010       r16 = #0 }
    7c28:	16 40 00 5c 	5c004016     { if (p0) jump 7c54 <_Xp_subx+0x54>
    7c2c:	08 c0 00 58 	5800c008       jump 7c38 <_Xp_subx+0x38> }
    7c30:	00 d8 e4 d2 	d2e4d800     p0 = dfcmp.eq (r5:4, r25:24)
    7c34:	10 c0 00 5c 	5c00c010     if (p0) jump 7c54 <_Xp_subx+0x54>
    7c38:	53 5f c5 8c 	8cc55f53     { r19 = togglebit (r5, #31)
    7c3c:	00 54 16 f5 	f5165400       r1:0 = combine (r22, r20)
    7c40:	88 31 4a 30 	304a3188       r18 = r4 ; r16 = add (r16, #1) }
    7c44:	02 52 13 f5 	f5135202     { r3:2 = combine (r19, r18)
    7c48:	16 fe ff 5b 	5bfffe16       call 7870 <_Xp_addh> }
    7c4c:	f2 68 bd 14 	14bd68f2     { p0 = cmp.gt (r21, r16) ; if (p0.new) jump:t 7c30 <_Xp_subx+0x30>
    7c50:	24 f0 d1 9b 	9bd1f024       if (p0.new) r5:4 = memd (r17 ++ #8) }
    7c54:	af 41 00 00 	000041af     { immext (#27584)
    7c58:	60 c0 0c 17 	170cc060       r0 = r20 ; jump e844 <__restore_r16_through_r25_and_deallocframe> }
    7c5c:	00 c0 00 7f 	7f00c000     nop

00007c60 <_Xp_addx>:
    7c60:	b4 75 00 5a 	5a0075b4     { call e7c8 <__save_r16_through_r23>
    7c64:	04 c0 9d a0 	a09dc004       allocframe (#32) }
    7c68:	12 40 03 f5 	f5034012     { r19:18 = combine (r3, r0)
    7c6c:	29 30 1c 30 	301c3029       r20 = r1 ; r17 = r2 }
    7c70:	1c 40 cb 10 	10cb401c     { p0 = cmp.gt (r19, #0) ; if (!p0.new) jump:nt 7ca8 <_Xp_addx+0x48>
    7c74:	02 40 c2 43 	43c24002       if (p0.new) r3:2 = memd (r2 + #0)
    7c78:	d6 c4 c0 49 	49c0c4d6       r23:22 = memd (gp + #304) }
    7c7c:	00 d6 e2 d2 	d2e2d600     p0 = dfcmp.eq (r3:2, r23:22)
    7c80:	14 40 00 5c 	5c004014     { if (p0) jump 7ca8 <_Xp_addx+0x48>
    7c84:	0a 40 08 16 	1608400a       r16 = #0 ; jump 7c94 <_Xp_addx+0x34>
    7c88:	11 c1 91 74 	7491c111       if !p0 r17 = add (r17, #8) }
    7c8c:	00 d6 e2 d2 	d2e2d600     p0 = dfcmp.eq (r3:2, r23:22)
    7c90:	0c c0 00 5c 	5c00c00c     if (p0) jump 7ca8 <_Xp_addx+0x48>
    7c94:	00 52 14 f5 	f5145200     { r1:0 = combine (r20, r18)
    7c98:	ee 7d ff 5b 	5bff7dee       call 7870 <_Xp_addh>
    7c9c:	30 c0 10 b0 	b010c030       r16 = add (r16, #1) }
    7ca0:	f6 68 bb 14 	14bb68f6     { p0 = cmp.gt (r19, r16) ; if (p0.new) jump:t 7c8c <_Xp_addx+0x2c>
    7ca4:	22 f0 d1 9b 	9bd1f022       if (p0.new) r3:2 = memd (r17 ++ #8) }
    7ca8:	ae 41 00 00 	000041ae     { immext (#27520)
    7cac:	10 c0 0a 17 	170ac010       r0 = r18 ; jump e830 <__restore_r16_through_r23_and_deallocframe> }

00007cb0 <_Xp_mulh>:
    7cb0:	00 40 41 75 	75414000     { p0 = cmp.gt (r1, #0)
    7cb4:	88 75 00 5a 	5a007588       call e7c0 <__save_r16_through_r27>
    7cb8:	0d c0 9d a0 	a09dc00d       allocframe (#104) }
    7cbc:	15 40 61 70 	70614015     { r21 = r1
    7cc0:	2c 40 20 5c 	5c20402c       if !p0 jump 7d14 <_Xp_mulh+0x64>
    7cc4:	1a 40 60 70 	7060401a       r26 = r0
    7cc8:	18 c2 03 f5 	f503c218       r25:24 = combine (r3, r2) }
    7ccc:	1b 41 1d b0 	b01d411b     { r27 = add (r29, #8)
    7cd0:	8a 79 00 5a 	5a00798a       call efe0 <__hexagon_muldf3>
    7cd4:	00 c0 c0 91 	91c0c000       r1:0 = memd (r0 + #0) }
    7cd8:	00 40 7b 70 	707b4000     { r0 = r27
    7cdc:	d4 77 ff 5b 	5bff77d4       call 6c80 <_Dtest>
    7ce0:	01 c0 dd a1 	a1ddc001       memd (r29 + #8) = r1:0 }
    7ce4:	10 40 60 70 	70604010     { r16 = r0
    7ce8:	1c 41 c0 11 	11c0411c       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 7d1c <_Xp_mulh+0x6c>
    7cec:	80 c0 dd 39 	39ddc080       if !p0.new memw (r29 + #4) = #0 }
    7cf0:	20 40 00 78 	78004020     { r0 = #1
    7cf4:	aa c2 00 10 	1000c2aa       p0 = cmp.eq (r0, #2) ; if (p0.new) jump:nt 7e44 <_Xp_mulh+0x194> }
    7cf8:	00 40 50 75 	75504000     { p0 = cmp.gt (r16, #0)
    7cfc:	20 c0 dd 91 	91ddc020       r1:0 = memd (r29 + #8) }
    7d00:	0a 40 20 5c 	5c20400a     { if !p0 jump 7d14 <_Xp_mulh+0x64>
    7d04:	00 c0 da a1 	a1dac000       memd (r26 + #0) = r1:0 }
    7d08:	06 41 cd 10 	10cd4106     { p0 = cmp.gt (r21, #1) ; if (!p0.new) jump:nt 7d14 <_Xp_mulh+0x64>
    7d0c:	c0 c4 c0 49 	49c0c4c0       r1:0 = memd (gp + #304) }
    7d10:	01 c0 da a1 	a1dac001     memd (r26 + #8) = r1:0
    7d14:	00 40 7a 70 	707a4000     { r0 = r26
    7d18:	96 f5 00 58 	5800f596       jump e840 <__restore_r16_through_r27_and_deallocframe> }
    7d1c:	30 40 00 78 	78004030     { r16 = #1
    7d20:	c0 c4 c0 49 	49c0c4c0       r1:0 = memd (gp + #304) }
    7d24:	16 40 01 f5 	f5014016     { r23:22 = combine (r1, r0)
    7d28:	00 40 00 7f 	7f004000       nop
    7d2c:	00 c0 da a1 	a1dac000       memd (r26 + #0) = r1:0 }
    7d30:	38 43 88 10 	10884338     { p0 = cmp.gt (r16, #3) ; if (p0.new) jump:nt 7da0 <_Xp_mulh+0xf0>
    7d34:	31 c0 9d 91 	919dc031       r17 = memw (r29 + #4) }
    7d38:	11 d0 11 f3 	f311d011     r17 = add (r17, r16)
    7d3c:	74 5a 11 c4 	c4115a74     { r20 = addasl (r26, r17, #3)
    7d40:	7e 49 cd 14 	14cd497e       p0 = cmp.gt (r21, r17) ; if (!p0.new) jump:nt 7e38 <_Xp_mulh+0x188>
    7d44:	82 f1 da 32 	32daf182       if (p0.new) r3:2 = memd (r26 + r17 << #3) }
    7d48:	00 d6 e2 d2 	d2e2d600     p0 = dfcmp.eq (r3:2, r23:22)
    7d4c:	72 5b 10 c4 	c4105b72     { r18 = addasl (r27, r16, #3)
    7d50:	76 40 00 5c 	5c004076       if (p0) jump 7e38 <_Xp_mulh+0x188>
    7d54:	31 c0 91 74 	7491c031       if !p0 r17 = add (r17, #1) }
    7d58:	73 5a 11 c4 	c4115a73     { r19 = addasl (r26, r17, #3)
    7d5c:	0c c0 00 58 	5800c00c       jump 7d70 <_Xp_mulh+0xc0> }
    7d60:	6c 41 20 5c 	5c20416c     { if !p1 jump 7e38 <_Xp_mulh+0x188>
    7d64:	22 e2 d3 9b 	9bd3e222       if (p1) r3:2 = memd (r19 ++ #8) }
    7d68:	00 d6 e2 d2 	d2e2d600     p0 = dfcmp.eq (r3:2, r23:22)
    7d6c:	66 c0 00 5c 	5c00c066     if (p0) jump 7e38 <_Xp_mulh+0x188>
    7d70:	00 58 19 f5 	f5195800     { r1:0 = combine (r25, r24)
    7d74:	38 79 00 5a 	5a007938       call efe0 <__hexagon_muldf3>
    7d78:	30 c0 10 b0 	b010c030       r16 = add (r16, #1) }
    7d7c:	60 40 50 75 	75504060     { p0 = cmp.gt (r16, #3)
    7d80:	01 51 55 f2 	f2555101       p1 = cmp.gt (r21, r17)
    7d84:	c0 44 c0 49 	49c044c0       r1:0 = memd (gp + #304)
    7d88:	00 c0 d2 a1 	a1d2c000       memd (r18 + #0) = r1:0 }
    7d8c:	31 40 11 b0 	b0114031     { r17 = add (r17, #1)
    7d90:	12 41 12 b0 	b0124112       r18 = add (r18, #8)
    7d94:	14 40 73 70 	70734014       r20 = r19
    7d98:	00 c0 d4 a1 	a1d4c000       memd (r20 + #0) = r1:0 }
    7d9c:	e2 e0 ff 5c 	5cffe0e2     if !p0 jump 7d60 <_Xp_mulh+0xb0>
    7da0:	02 c0 db 91 	91dbc002     r3:2 = memd (r27 + #0)
    7da4:	00 56 e2 d2 	d2e25600     { p0 = dfcmp.eq (r3:2, r23:22)
    7da8:	01 45 1d b0 	b01d4501       r1 = add (r29, #40)
    7dac:	c0 c6 1d b0 	b01dc6c0       r0 = add (r29, #54) }
    7db0:	b2 60 df 5c 	5cdf60b2     { if (p0) jump 7d14 <_Xp_mulh+0x64>
    7db4:	a0 77 ff 5b 	5bff77a0       call 6cf0 <_Dunscale>
    7db8:	28 c2 dd 44 	44ddc228       if !p0 memd (r29 + #40) = r3:2 }
    7dbc:	da 76 ff 5b 	5bff76da     { call 6b70 <_Dint>
    7dc0:	a0 2c a1 29 	29a12ca0       r1 = #26 ; r0 = add (sp, #40) }
    7dc4:	00 45 1d b0 	b01d4500     { r0 = add (r29, #40)
    7dc8:	5e 52 00 5a 	5a00525e       call a280 <_Dscale>
    7dcc:	61 c3 5d 91 	915dc361       r1 = memh (r29 + #54) }
    7dd0:	00 5a 15 f5 	f5155a00     { r1:0 = combine (r21, r26)
    7dd4:	50 7d ff 5b 	5bff7d50       call 7870 <_Xp_addh>
    7dd8:	a2 c0 dd 91 	91ddc0a2       r3:2 = memd (r29 + #40) }
    7ddc:	c4 76 00 5a 	5a0076c4     { call eb64 <__hexagon_subdf3>
    7de0:	a2 40 dd 91 	91dd40a2       r3:2 = memd (r29 + #40)
    7de4:	00 c0 db 91 	91dbc000       r1:0 = memd (r27 + #0) }
    7de8:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    7dec:	44 7d ff 5b 	5bff7d44       call 7870 <_Xp_addh>
    7df0:	00 da 15 f5 	f515da00       r1:0 = combine (r21, r26) }
    7df4:	00 40 50 75 	75504000     { p0 = cmp.gt (r16, #0)
    7df8:	02 40 7b 70 	707b4002       r2 = r27
    7dfc:	80 30 43 2c 	2c433080       r3 = add (sp, #16) ; r0 = r16 }
    7e00:	20 c0 80 7e 	7e80c020     if !p0 r0 = #1
    7e04:	00 c1 00 60 	6000c100     loop0 (7e14 <_Xp_mulh+0x164>, r0)
    7e08:	00 80 00 7f 	7f008000     { nop
    7e0c:	00 c0 00 7f 	7f00c000       nop }:endloop0
    7e10:	0a c0 00 58 	5800c00a     jump 7e24 <_Xp_mulh+0x174>
    7e14:	20 c0 c3 9b 	9bc3c020     r1:0 = memd (r3 ++ #8)
    7e18:	00 56 e0 d2 	d2e05600     { p0 = dfcmp.eq (r1:0, r23:22)
    7e1c:	08 c0 c2 ab 	abc2c008       memd (r2 ++ #8) = r1:0 }
    7e20:	f4 e0 ff 5c 	5cffe0f4     if !p0 jump 7e08 <_Xp_mulh+0x158>
    7e24:	81 c0 5d 3f 	3f5dc081     memw (r29 + #4) += #1
    7e28:	20 c0 9d 91 	919dc020     r0 = memw (r29 + #4)
    7e2c:	74 40 fd 14 	14fd4074     { p0 = cmp.gt (r21, r0) ; if (!p0.new) jump:nt 7d14 <_Xp_mulh+0x64>
    7e30:	82 7f ff 59 	59ff7f82       jump 7d30 <_Xp_mulh+0x80>
    7e34:	f0 ff 10 74 	7410fff0       if (p0.new) r16 = add (r16, #-1) }
    7e38:	c0 c4 c0 49 	49c0c4c0     r1:0 = memd (gp + #304)
    7e3c:	b2 48 38 16 	163848b2     { r16 = #8 ; jump 7da0 <_Xp_mulh+0xf0>
    7e40:	80 f0 db 3b 	3bdbf080       memd (r27 + r16 << #3) = r1:0 }
    7e44:	f6 f8 ff 5b 	5bfff8f6     call 7030 <_Feraise>
    7e48:	58 ff ff 59 	59ffff58     jump 7cf8 <_Xp_mulh+0x48>
    7e4c:	00 c0 00 7f 	7f00c000     nop

00007e50 <_Xp_mulx>:
    7e50:	c8 74 00 5a 	5a0074c8     { call e7e0 <__save_r16_through_r25>
    7e54:	05 c0 9d a0 	a09dc005       allocframe (#40) }
    7e58:	10 40 03 f5 	f5034010     { r17:16 = combine (r3, r0)
    7e5c:	4f 30 2a 30 	302a304f       r18 = r2 ; r23 = r4 }
    7e60:	13 40 61 70 	70614013     { r19 = r1
    7e64:	0a c0 09 10 	1009c00a       p0 = cmp.eq (r17, #0) ; if (p0.new) jump:nt 7e74 <_Xp_mulx+0x24> }
    7e68:	0a 40 41 10 	1041400a     { p0 = cmp.eq (r1, #0) ; if (!p0.new) jump:nt 7e7c <_Xp_mulx+0x2c>
    7e6c:	02 40 c2 47 	47c24002       if !p0.new r3:2 = memd (r2 + #0)
    7e70:	d8 c4 c0 49 	49c0c4d8       r25:24 = memd (gp + #304) }
    7e74:	a7 41 00 00 	000041a7     { immext (#27072)
    7e78:	20 c0 08 17 	1708c020       r0 = r16 ; jump e844 <__restore_r16_through_r25_and_deallocframe> }
    7e7c:	00 d8 e2 d2 	d2e2d800     p0 = dfcmp.eq (r3:2, r25:24)
    7e80:	16 41 12 b0 	b0124116     { r22 = add (r18, #8)
    7e84:	10 40 00 5c 	5c004010       if (p0) jump 7ea0 <_Xp_mulx+0x50>
    7e88:	24 c0 d2 45 	45d2c024       if !p0 r5:4 = memd (r18 + #8) }
    7e8c:	00 d8 e4 d2 	d2e4d800     p0 = dfcmp.eq (r5:4, r25:24)
    7e90:	74 57 01 c4 	c4015774     { r20 = addasl (r23, r1, #3)
    7e94:	10 40 20 5c 	5c204010       if !p0 jump 7eb0 <_Xp_mulx+0x60>
    7e98:	02 40 90 74 	74904002       if !p0 r2 = add (r16, #0)
    7e9c:	00 c0 77 70 	7077c000       r0 = r23 }
    7ea0:	00 50 13 f5 	f5135000     { r1:0 = combine (r19, r16)
    7ea4:	08 ff ff 5b 	5bffff08       call 7cb0 <_Xp_mulh> }
    7ea8:	a6 41 00 00 	000041a6     { immext (#27008)
    7eac:	38 c0 08 17 	1708c038       r0 = r16 ; jump e844 <__restore_r16_through_r25_and_deallocframe> }
    7eb0:	d0 fc ff 5b 	5bfffcd0     call 7850 <_Xp_movx>
    7eb4:	00 50 13 f5 	f5135000     { r1:0 = combine (r19, r16)
    7eb8:	fe 7e ff 5b 	5bff7efe       call 7cb0 <_Xp_mulh>
    7ebc:	02 c0 d2 91 	91d2c002       r3:2 = memd (r18 + #0) }
    7ec0:	da 41 f9 10 	10f941da     { p0 = cmp.gt (r17, #1) ; if (!p0.new) jump:nt 7e74 <_Xp_mulx+0x24>
    7ec4:	20 c0 d2 43 	43d2c020       if (p0.new) r1:0 = memd (r18 + #8) }
    7ec8:	00 d8 e0 d2 	d2e0d800     p0 = dfcmp.eq (r1:0, r25:24)
    7ecc:	d4 60 df 5c 	5cdf60d4     { if (p0) jump 7e74 <_Xp_mulx+0x24>
    7ed0:	0a 41 0d 16 	160d410a       r21 = #1 ; jump 7ee0 <_Xp_mulx+0x90>
    7ed4:	12 c2 92 74 	7492c212       if !p0 r18 = add (r18, #16) }
    7ed8:	00 d8 e0 d2 	d2e0d800     p0 = dfcmp.eq (r1:0, r25:24)
    7edc:	cc e0 df 5c 	5cdfe0cc     if (p0) jump 7e74 <_Xp_mulx+0x24>
    7ee0:	00 54 13 f5 	f5135400     { r1:0 = combine (r19, r20)
    7ee4:	b8 7c ff 5b 	5bff7cb8       call 7850 <_Xp_movx>
    7ee8:	dd 31 f2 30 	30f231dd       r2 = r23 ; r21 = add (r21, #1) }
    7eec:	00 54 13 f5 	f5135400     { r1:0 = combine (r19, r20)
    7ef0:	e2 7e ff 5b 	5bff7ee2       call 7cb0 <_Xp_mulh>
    7ef4:	16 40 72 70 	70724016       r22 = r18
    7ef8:	02 c0 d6 91 	91d6c002       r3:2 = memd (r22 + #0) }
    7efc:	00 50 13 f5 	f5135000     { r1:0 = combine (r19, r16)
    7f00:	b2 7e ff 5b 	5bff7eb2       call 7c60 <_Xp_addx>
    7f04:	02 d4 13 f5 	f513d402       r3:2 = combine (r19, r20) }
    7f08:	e8 6d b9 14 	14b96de8     { p0 = cmp.gt (r17, r21) ; if (p0.new) jump:t 7ed8 <_Xp_mulx+0x88>
    7f0c:	b6 7f ff 59 	59ff7fb6       jump 7e74 <_Xp_mulx+0x24>
    7f10:	20 f0 d2 9b 	9bd2f020       if (p0.new) r1:0 = memd (r18 ++ #8) }
    7f14:	00 40 00 7f 	7f004000     { nop
    7f18:	00 40 00 7f 	7f004000       nop
    7f1c:	00 c0 00 7f 	7f00c000       nop }

00007f20 <_Xp_setw>:
    7f20:	54 74 00 5a 	5a007454     { call e7c8 <__save_r16_through_r23>
    7f24:	06 c0 9d a0 	a09dc006       allocframe (#48) }
    7f28:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    7f2c:	14 c2 03 f5 	f503c214       r21:20 = combine (r3, r2) }
    7f30:	1a 40 c9 10 	10c9401a     { p0 = cmp.gt (r17, #0) ; if (!p0.new) jump:nt 7f64 <_Xp_setw+0x44>
    7f34:	00 c2 dd 42 	42ddc200       if (p0.new) memd (r29 + #0) = r3:2 }
    7f38:	d2 41 1d b0 	b01d41d2     { r18 = add (r29, #14)
    7f3c:	1a c1 09 10 	1009c11a       p0 = cmp.eq (r17, #1) ; if (p0.new) jump:nt 7f6c <_Xp_setw+0x4c> }
    7f40:	00 52 1d f5 	f51d5200     { r1:0 = combine (r29, r18)
    7f44:	d8 f6 ff 5b 	5bfff6d8       call 6cf0 <_Dunscale> }
    7f48:	12 40 00 10 	10004012     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 7f6c <_Xp_setw+0x4c>
    7f4c:	14 c0 dd 43 	43ddc014       if (p0.new) r21:20 = memd (r29 + #0) }
    7f50:	14 40 c0 10 	10c04014     { p0 = cmp.gt (r0, #0) ; if (!p0.new) jump:nt 7f78 <_Xp_setw+0x58>
    7f54:	00 3e 8b 50 	508b3e00       r19 = r16 ; r1:0 = memd (sp + #0) }
    7f58:	c0 44 c0 49 	49c044c0     { r1:0 = memd (gp + #304)
    7f5c:	00 c0 d0 a1 	a1d0c000       memd (r16 + #0) = r1:0 }
    7f60:	01 c0 d0 a1 	a1d0c001     memd (r16 + #8) = r1:0
    7f64:	a3 41 00 00 	000041a3     { immext (#26816)
    7f68:	18 c0 08 17 	1708c018       r0 = r16 ; jump e830 <__restore_r16_through_r23_and_deallocframe> }
    7f6c:	00 40 70 70 	70704000     { r0 = r16
    7f70:	00 d4 d0 a1 	a1d0d400       memd (r16 + #0) = r21:20 }
    7f74:	5e f4 00 58 	5800f45e     jump e830 <__restore_r16_through_r23_and_deallocframe>
    7f78:	40 63 3d 73 	733d6340     { r1:0 = combine (#26, r29)
    7f7c:	fc f5 ff 5b 	5bfff5fc       call 6b70 <_Dint> }
    7f80:	00 40 7d 70 	707d4000     { r0 = r29
    7f84:	80 51 00 5a 	5a005180       call a280 <_Dscale>
    7f88:	e1 c0 5d 91 	915dc0e1       r1 = memh (r29 + #14) }
    7f8c:	00 54 15 f5 	f5155400     { r1:0 = combine (r21, r20)
    7f90:	02 c0 dd 91 	91ddc002       r3:2 = memd (r29 + #0) }
    7f94:	e8 75 00 5a 	5a0075e8     { call eb64 <__hexagon_subdf3>
    7f98:	08 c2 d3 ab 	abd3c208       memd (r19 ++ #8) = r3:2 }
    7f9c:	16 40 01 f5 	f5014016     { r23:22 = combine (r1, r0)
    7fa0:	e4 42 39 10 	103942e4       p0 = cmp.eq (r17, #2) ; if (p0.new) jump:nt 7f64 <_Xp_setw+0x44>
    7fa4:	01 c0 d0 a1 	a1d0c001       memd (r16 + #8) = r1:0 }
    7fa8:	d4 c4 c0 49 	49c0c4d4     r21:20 = memd (gp + #304)
    7fac:	00 d4 e0 d2 	d2e0d400     p0 = dfcmp.eq (r1:0, r21:20)
    7fb0:	da 60 df 5c 	5cdf60da     { if (p0) jump 7f64 <_Xp_setw+0x44>
    7fb4:	a0 76 ff 5b 	5bff76a0       call 6cf0 <_Dunscale>
    7fb8:	00 52 13 f5 	f5135200       r1:0 = combine (r19, r18)
    7fbc:	10 d4 d0 40 	40d0d410       if (p0) memd (r16 + #16) = r21:20 }
    7fc0:	40 63 33 73 	73336340     { r1:0 = combine (#26, r19)
    7fc4:	d8 f5 ff 5b 	5bfff5d8       call 6b70 <_Dint> }
    7fc8:	00 40 73 70 	70734000     { r0 = r19
    7fcc:	5c 51 00 5a 	5a00515c       call a280 <_Dscale>
    7fd0:	e1 c0 5d 91 	915dc0e1       r1 = memh (r29 + #14) }
    7fd4:	00 56 17 f5 	f5175600     { r1:0 = combine (r23, r22)
    7fd8:	c8 75 00 5a 	5a0075c8       call eb64 <__hexagon_subdf3>
    7fdc:	22 c0 d0 91 	91d0c022       r3:2 = memd (r16 + #8) }
    7fe0:	c2 43 39 10 	103943c2     { p0 = cmp.eq (r17, #3) ; if (p0.new) jump:nt 7f64 <_Xp_setw+0x44>
    7fe4:	02 c0 d0 a1 	a1d0c002       memd (r16 + #16) = r1:0 }
    7fe8:	00 d4 e0 d2 	d2e0d400     p0 = dfcmp.eq (r1:0, r21:20)
    7fec:	bc 7f ff 59 	59ff7fbc     { jump 7f64 <_Xp_setw+0x44>
    7ff0:	18 d4 d0 44 	44d0d418       if !p0 memd (r16 + #24) = r21:20 }
    7ff4:	00 40 00 7f 	7f004000     { nop
    7ff8:	00 40 00 7f 	7f004000       nop
    7ffc:	00 c0 00 7f 	7f00c000       nop }

00008000 <_Xp_sqrtx>:
    8000:	f4 73 00 5a 	5a0073f4     { call e7e8 <__save_r16_through_r21>
    8004:	03 c0 9d a0 	a09dc003       allocframe (#24) }
    8008:	10 41 02 f5 	f5024110     { r17:16 = combine (r2, r1)
    800c:	12 c0 60 70 	7060c012       r18 = r0 }
    8010:	06 c0 48 10 	1048c006     p0 = cmp.eq (r16, #0) ; if (!p0.new) jump:nt 801c <_Xp_sqrtx+0x1c>
    8014:	a0 41 00 00 	000041a0     { immext (#26624)
    8018:	78 c0 0a 17 	170ac078       r0 = r18 ; jump e850 <__restore_r16_through_r21_and_deallocframe> }
    801c:	32 f6 ff 5b 	5bfff632     call 6c80 <_Dtest>
    8020:	16 41 c0 11 	11c04116     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 804c <_Xp_sqrtx+0x4c>
    8024:	c0 44 c0 49 	49c044c0       r1:0 = memd (gp + #304)
    8028:	02 c0 d2 43 	43d2c002       if (p0.new) r3:2 = memd (r18 + #0) }
    802c:	20 c2 e0 d2 	d2e0c220     p0 = dfcmp.gt (r1:0, r3:2)
    8030:	f2 e0 ff 5c 	5cffe0f2     if !p0 jump 8014 <_Xp_sqrtx+0x14>
    8034:	20 40 00 78 	78004020     { r0 = #1
    8038:	fe f7 ff 5b 	5bfff7fe       call 7030 <_Feraise> }
    803c:	68 44 00 00 	00004468     { immext (#72192)
    8040:	00 c4 c0 49 	49c0c400       r1:0 = memd (gp + ##72224) }
    8044:	e8 7f ff 59 	59ff7fe8     { jump 8014 <_Xp_sqrtx+0x14>
    8048:	00 c0 d2 a1 	a1d2c000       memd (r18 + #0) = r1:0 }
    804c:	00 40 d2 91 	91d24000     { r1:0 = memd (r18 + #0)
    8050:	c2 c4 c0 49 	49c0c4c2       r3:2 = memd (gp + #304) }
    8054:	20 40 e2 d2 	d2e24020     { p0 = dfcmp.gt (r3:2, r1:0)
    8058:	73 d1 10 c4 	c410d173       r19 = addasl (r17, r16, #3) }
    805c:	ec e0 df 5c 	5cdfe0ec     if (p0) jump 8034 <_Xp_sqrtx+0x34>
    8060:	94 51 10 c4 	c4105194     { r20 = addasl (r17, r16, #4)
    8064:	54 41 c8 10 	10c84154       p0 = cmp.gt (r16, #1) ; if (!p0.new) jump:nt 8108 <_Xp_sqrtx+0x108>
    8068:	22 c0 d2 43 	43d2c022       if (p0.new) r3:2 = memd (r18 + #8) }
    806c:	2a f5 00 5a 	5a00f52a     call eac0 <__hexagon_adddf3>
    8070:	c0 f4 ff 5b 	5bfff4c0     call 69f0 <sqrt>
    8074:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    8078:	66 76 00 5a 	5a007666       call ed40 <__hexagon_divdf3>
    807c:	80 c4 c0 49 	49c0c480       r1:0 = memd (gp + #288) }
    8080:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    8084:	50 7f ff 5b 	5bff7f50       call 7f20 <_Xp_setw>
    8088:	00 d3 10 f5 	f510d300       r1:0 = combine (r16, r19) }
    808c:	55 40 00 78 	78004055     { r21 = #2
    8090:	32 c2 c8 10 	10c8c232       p0 = cmp.gt (r16, #2) ; if (!p0.new) jump:nt 80f0 <_Xp_sqrtx+0xf0> }
    8094:	00 51 10 f5 	f5105100     { r1:0 = combine (r16, r17)
    8098:	de 7b ff 5b 	5bff7bde       call 7850 <_Xp_movx>
    809c:	dd 38 b2 30 	30b238dd       r2 = r19 ; r21 = add (r21, r21) }
    80a0:	00 51 10 f5 	f5105100     { r1:0 = combine (r16, r17)
    80a4:	08 7e ff 5b 	5bff7e08       call 7cb0 <_Xp_mulh>
    80a8:	62 c4 c0 49 	49c0c462       r3:2 = memd (gp + #280) }
    80ac:	00 51 10 f5 	f5105100     { r1:0 = combine (r16, r17)
    80b0:	d2 7e ff 5b 	5bff7ed2       call 7e50 <_Xp_mulx>
    80b4:	02 52 10 f5 	f5105202       r3:2 = combine (r16, r18)
    80b8:	04 c0 74 70 	7074c004       r4 = r20 }
    80bc:	04 40 74 70 	70744004     { r4 = r20
    80c0:	ca 7e ff 5b 	5bff7eca       call 7e50 <_Xp_mulx>
    80c4:	00 51 10 f5 	f5105100       r1:0 = combine (r16, r17)
    80c8:	02 d3 10 f5 	f510d302       r3:2 = combine (r16, r19) }
    80cc:	00 51 10 f5 	f5105100     { r1:0 = combine (r16, r17)
    80d0:	d2 7b ff 5b 	5bff7bd2       call 7870 <_Xp_addh>
    80d4:	22 cd c0 49 	49c0cd22       r3:2 = memd (gp + #840) }
    80d8:	00 53 10 f5 	f5105300     { r1:0 = combine (r16, r19)
    80dc:	bc 7e ff 5b 	5bff7ebc       call 7e50 <_Xp_mulx>
    80e0:	02 51 10 f5 	f5105102       r3:2 = combine (r16, r17)
    80e4:	04 c0 74 70 	7074c004       r4 = r20 }
    80e8:	d6 6d b8 14 	14b86dd6     { p0 = cmp.gt (r16, r21) ; if (p0.new) jump:t 8094 <_Xp_sqrtx+0x94>
    80ec:	00 c0 00 7f 	7f00c000       nop }
    80f0:	02 40 73 70 	70734002     { r2 = r19
    80f4:	04 40 74 70 	70744004       r4 = r20
    80f8:	a0 30 81 30 	308130a0       r1 = r16 ; r0 = r18 }
    80fc:	03 40 70 70 	70704003     { r3 = r16
    8100:	aa fe ff 5b 	5bfffeaa       call 7e50 <_Xp_mulx> }
    8104:	88 ff ff 59 	59ffff88     jump 8014 <_Xp_sqrtx+0x14>
    8108:	74 f4 ff 5b 	5bfff474     call 69f0 <sqrt>
    810c:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    8110:	1a 76 00 5a 	5a00761a       call ed40 <__hexagon_divdf3>
    8114:	80 c4 c0 49 	49c0c480       r1:0 = memd (gp + #288) }
    8118:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    811c:	04 7f ff 5b 	5bff7f04       call 7f20 <_Xp_setw>
    8120:	00 d3 10 f5 	f510d300       r1:0 = combine (r16, r19) }
    8124:	e6 ff ff 59 	59ffffe6     jump 80f0 <_Xp_sqrtx+0xf0>
    8128:	00 40 00 7f 	7f004000     { nop
    812c:	00 c0 00 7f 	7f00c000       nop }

00008130 <_Xp_invx>:
    8130:	4c 73 00 5a 	5a00734c     { call e7c8 <__save_r16_through_r23>
    8134:	40 3c 10 79 	79103c40       p0 = cmp.eq (r1, #0) ; allocframe (#32) }
    8138:	12 40 62 70 	70624012     { r18 = r2
    813c:	0a 40 20 5c 	5c20400a       if !p0 jump 814c <_Xp_invx+0x1c>
    8140:	09 30 18 30 	30183009       r16 = r1 ; r17 = r0 }
    8144:	9b 41 00 00 	0000419b     { immext (#26304)
    8148:	58 c0 09 17 	1709c058       r0 = r17 ; jump e830 <__restore_r16_through_r23_and_deallocframe> }
    814c:	9a f5 ff 5b 	5bfff59a     call 6c80 <_Dtest>
    8150:	75 52 10 c4 	c4105275     { r21 = addasl (r18, r16, #3)
    8154:	1a 41 c0 11 	11c0411a       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 8184 <_Xp_invx+0x54>
    8158:	02 c0 71 70 	7071c002       r2 = r17 }
    815c:	0e c1 00 10 	1000c10e     p0 = cmp.eq (r0, #1) ; if (p0.new) jump:nt 8178 <_Xp_invx+0x48>
    8160:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    8164:	68 44 00 00 	00004468       immext (#72192)
    8168:	80 f0 d8 9f 	9fd8f080       if (p0.new) r1:0 = memd (##72240) }
    816c:	00 40 71 70 	70714000     { r0 = r17
    8170:	00 c0 d1 40 	40d1c000       if (p0) memd (r17 + #0) = r1:0 }
    8174:	5e f3 00 58 	5800f35e     jump e830 <__restore_r16_through_r23_and_deallocframe>
    8178:	c0 c4 c0 49 	49c0c4c0     r1:0 = memd (gp + #304)
    817c:	e4 7f ff 59 	59ff7fe4     { jump 8144 <_Xp_invx+0x14>
    8180:	00 c0 d1 a1 	a1d1c000       memd (r17 + #0) = r1:0 }
    8184:	01 40 70 70 	70704001     { r1 = r16
    8188:	94 52 10 c4 	c4105294       r20 = addasl (r18, r16, #4)
    818c:	00 40 75 70 	70754000       r0 = r21
    8190:	16 c0 d1 91 	91d1c016       r23:22 = memd (r17 + #0) }
    8194:	5e fb ff 5b 	5bfffb5e     call 7850 <_Xp_movx>
    8198:	00 55 10 f5 	f5105500     { r1:0 = combine (r16, r21)
    819c:	8c 7d ff 5b 	5bff7d8c       call 7cb0 <_Xp_mulh>
    81a0:	22 c5 c0 49 	49c0c522       r3:2 = memd (gp + #328) }
    81a4:	00 56 17 f5 	f5175600     { r1:0 = combine (r23, r22)
    81a8:	3c 41 c8 10 	10c8413c       p0 = cmp.gt (r16, #1) ; if (!p0.new) jump:nt 821c <_Xp_invx+0xec>
    81ac:	22 c0 d1 43 	43d1c022       if (p0.new) r3:2 = memd (r17 + #8) }
    81b0:	33 40 00 78 	78004033     { r19 = #1
    81b4:	88 f4 00 5a 	5a00f488       call eac0 <__hexagon_adddf3> }
    81b8:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    81bc:	c4 75 00 5a 	5a0075c4       call ed40 <__hexagon_divdf3>
    81c0:	80 c4 c0 49 	49c0c480       r1:0 = memd (gp + #288) }
    81c4:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    81c8:	ae 7e ff 5b 	5bff7eae       call 7f20 <_Xp_setw>
    81cc:	00 d1 10 f5 	f510d100       r1:0 = combine (r16, r17) }
    81d0:	00 52 10 f5 	f5105200     { r1:0 = combine (r16, r18)
    81d4:	40 7b ff 5b 	5bff7b40       call 7850 <_Xp_movx>
    81d8:	bb 38 92 30 	309238bb       r2 = r17 ; r19 = add (r19, r19) }
    81dc:	04 40 74 70 	70744004     { r4 = r20
    81e0:	3a 7e ff 5b 	5bff7e3a       call 7e50 <_Xp_mulx>
    81e4:	00 52 10 f5 	f5105200       r1:0 = combine (r16, r18)
    81e8:	02 d5 10 f5 	f510d502       r3:2 = combine (r16, r21) }
    81ec:	00 52 10 f5 	f5105200     { r1:0 = combine (r16, r18)
    81f0:	42 7b ff 5b 	5bff7b42       call 7870 <_Xp_addh>
    81f4:	82 c4 c0 49 	49c0c482       r3:2 = memd (gp + #288) }
    81f8:	00 52 10 f5 	f5105200     { r1:0 = combine (r16, r18)
    81fc:	2c 7e ff 5b 	5bff7e2c       call 7e50 <_Xp_mulx>
    8200:	02 51 10 f5 	f5105102       r3:2 = combine (r16, r17)
    8204:	04 c0 74 70 	7074c004       r4 = r20 }
    8208:	00 51 10 f5 	f5105100     { r1:0 = combine (r16, r17)
    820c:	2c 7d ff 5b 	5bff7d2c       call 7c60 <_Xp_addx>
    8210:	02 d2 10 f5 	f510d202       r3:2 = combine (r16, r18) }
    8214:	de 6b b8 14 	14b86bde     { p0 = cmp.gt (r16, r19) ; if (p0.new) jump:t 81d0 <_Xp_invx+0xa0>
    8218:	98 ff ff 59 	59ffff98       jump 8144 <_Xp_invx+0x14> }
    821c:	02 56 17 f5 	f5175602     { r3:2 = combine (r23, r22)
    8220:	92 75 00 5a 	5a007592       call ed40 <__hexagon_divdf3>
    8224:	80 c4 c0 49 	49c0c480       r1:0 = memd (gp + #288) }
    8228:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    822c:	7c 7e ff 5b 	5bff7e7c       call 7f20 <_Xp_setw>
    8230:	00 d1 10 f5 	f510d100       r1:0 = combine (r16, r17) }
    8234:	88 ff ff 59 	59ffff88     jump 8144 <_Xp_invx+0x14>
    8238:	00 c0 00 7f 	7f00c000     nop
    823c:	00 c0 00 7f 	7f00c000     nop

00008240 <_Printf>:
    8240:	c0 72 00 5a 	5a0072c0     { call e7c0 <__save_r16_through_r27>
    8244:	1b c0 9d a0 	a09dc01b       allocframe (#216) }
    8248:	14 40 60 70 	70604014     { r20 = r0
    824c:	12 40 61 70 	70614012       r18 = r1
    8250:	28 30 5e 2e 	2e5e3028       r22 = add (sp, #148) ; r16 = r2 }
    8254:	1a 40 00 69 	6900401a     { loop0 (8260 <_Printf+0x20>, #2)
    8258:	00 40 76 70 	70764000       r0 = r22
    825c:	00 c0 00 7f 	7f00c000       nop }
    8260:	80 80 00 b0 	b0008080     { r0 = add (r0, #4)
    8264:	9a 54 1d b0 	b01d549a       r26 = add (r29, #164)
    8268:	00 30 49 6d 	6d493000       r17 = add (sp, #80) ; memw (r0 + #0) = #0 }:endloop0
    826c:	00 40 7a 70 	707a4000     { r0 = r26
    8270:	f3 7c 01 78 	78017cf3       r19 = #999
    8274:	31 30 8f 2e 	2e8f3031       r23 = add (sp, #160) ; r1 = r3 }
    8278:	ff 7f ff 07 	07ff7fff     { immext (#2147483584)
    827c:	f5 47 00 78 	780047f5       r21 = ##2147483647
    8280:	f4 c9 00 5a 	5a00c9f4       call 9660 <_Vacopy> }
    8284:	18 41 1d b0 	b01d4118     { r24 = add (r29, #8)
    8288:	99 53 1d b0 	b01d5399       r25 = add (r29, #156)
    828c:	9a 03 9c a2 	a29c039a       memw (r17 + #8) = r20 ; memw (r17 + #12) = r18 }
    8290:	07 44 00 00 	00004407     { immext (#65984)
    8294:	9d 30 8a 69 	698a309d       r18 = ##66008 ; memw (r17 + #52) = #0 }
    8298:	07 44 00 00 	00004407     { immext (#65984)
    829c:	14 c5 00 78 	7800c514       r20 = ##66024 }
    82a0:	00 57 10 f5 	f5105700     { r1:0 = combine (r16, r23)
    82a4:	ff 7f ff 07 	07ff7fff       immext (#2147483584)
    82a8:	e2 67 16 73 	731667e2       r3:2 = combine (r22, ##2147483647)
    82ac:	00 d4 5d 3c 	3c5dd400       memw (r29 + #160) = #0 }
    82b0:	e8 e6 00 5a 	5a00e6e8     call d080 <_Mbtowc>
    82b4:	1b 40 60 70 	7060401b     { r27 = r0
    82b8:	d4 40 c0 10 	10c040d4       p0 = cmp.gt (r0, #0) ; if (!p0.new) jump:nt 845c <_Printf+0x21c>
    82bc:	01 c5 9d 91 	919dc501       r1 = memw (r29 + #160) }
    82c0:	a0 44 01 75 	750144a0     { p0 = cmp.eq (r1, #37)
    82c4:	03 60 9b 74 	749b6003       if !p0.new r3 = add (r27, #0)
    82c8:	e3 ff 1b 74 	741bffe3       if (p0.new) r3 = add (r27, #-1) }
    82cc:	d6 c0 83 12 	1283c0d6     p1 = cmp.gt (r3, #0) ; if (p1.new) jump:nt 8478 <_Printf+0x238>
    82d0:	10 5b 10 f3 	f3105b10     { r16 = add (r16, r27)
    82d4:	0c 40 00 5c 	5c00400c       if (p0) jump 82e8 <_Printf+0xa8>
    82d8:	80 c5 51 38 	3851c580       if (p0) memw (r17 + #44) = #0 }
    82dc:	e2 60 71 10 	107160e2     { p0 = cmp.eq (r1, #0) ; if (!p0.new) jump:t 82a0 <_Printf+0x60>
    82e0:	a0 c1 91 43 	4391c1a0       if (p0.new) r0 = memw (r17 + #52) }
    82e4:	ae f2 00 58 	5800f2ae     jump e840 <__restore_r16_through_r27_and_deallocframe>
    82e8:	1b 40 70 70 	7070401b     { r27 = r16
    82ec:	0c c0 00 58 	5800c00c       jump 8300 <_Printf+0xc0> }
    82f0:	41 e1 80 df 	df80e141     r1 = add (r1, mpyi (r0, #10))
    82f4:	01 7a e1 bf 	bfe17a01     { r1 = add (r1, #-48)
    82f8:	0b d3 b1 a1 	a1b1d30b       memw (r17 + #44) = r1.new }
    82fc:	da cb 81 14 	1481cbda     p0 = cmp.gt (r1, r19) ; if (p0.new) jump:nt 84b0 <_Printf+0x270>
    8300:	20 cf 00 5a 	5a00cf20     call a140 <_Getpctype>
    8304:	01 c0 3b 91 	913bc001     r1 = memub (r27 + #0)
    8308:	80 c1 40 3a 	3a40c180     r0 = memh (r0 + r1 << #1)
    830c:	00 45 20 85 	85204500     { p0 = !tstbit (r0, #5)
    8310:	f2 78 ff 5c 	5cff78f2       if !p0.new jump:t 82f0 <_Printf+0xb0>
    8314:	3b 60 9b 74 	749b603b       if !p0.new r27 = add (r27, #1)
    8318:	60 c1 91 47 	4791c160       if !p0.new r0 = memw (r17 + #44) }
    831c:	80 44 01 75 	75014480     { p0 = cmp.eq (r1, #36)
    8320:	96 c8 00 5c 	5c00c896       if (p0.new) jump:nt 8448 <_Printf+0x208> }
    8324:	80 c5 51 3c 	3c51c580     memw (r17 + #44) = #0
    8328:	99 10 9a f0 	f09a1099     memw (r17 + #40) = #0 ; memw (r17 + #36) = #0
    832c:	97 10 98 f0 	f0981097     memw (r17 + #32) = #0 ; memw (r17 + #28) = #0
    8330:	95 10 96 f0 	f0961095     memw (r17 + #24) = #0 ; memw (r17 + #20) = #0
    8334:	08 40 00 58 	58004008     { jump 8344 <_Printf+0x104>
    8338:	00 cf 31 3c 	3c31cf00       memh (r17 + #60) = #0 }
    833c:	00 e1 94 3a 	3a94e100     r0 = memw (r20 + r1 << #2)
    8340:	60 cf 31 3e 	3e31cf60     memh (r17 + #60) |= r0
    8344:	07 44 00 00 	00004407     { immext (#65984)
    8348:	00 43 00 78 	78004300       r0 = ##66008
    834c:	81 10 52 48 	48521081       r2 = #5 ; r1 = memub (r16 + #0) }
    8350:	a0 eb ff 5b 	5bffeba0     call 5a90 <memchr>
    8354:	01 40 32 f3 	f3324001     { r1 = sub (r0, r18)
    8358:	f4 60 70 10 	107060f4       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:t 833c <_Printf+0xfc>
    835c:	30 e0 90 74 	7490e030       if !p0.new r16 = add (r16, #1) }
    8360:	00 c0 30 91 	9130c000     r0 = memub (r16 + #0)
    8364:	10 58 20 5c 	5c205810     { if !p0.new jump:t 8384 <_Printf+0x144>
    8368:	ee 40 00 58 	580040ee       jump 8540 <_Printf+0x300>
    836c:	40 45 00 75 	75004540       p0 = cmp.eq (r0, #42)
    8370:	00 c7 d1 39 	39d1c700       if !p0.new memw (r17 + #56) = #0 }
    8374:	41 61 80 df 	df806141     { r1 = add (r1, mpyi (r0, #10))
    8378:	00 d5 00 f2 	f200d500       p0 = cmp.eq (r0, r21) }
    837c:	01 7a e1 bf 	bfe17a01     { r1 = add (r1, #-48)
    8380:	70 d3 b1 44 	44b1d370       if !p0 memw (r17 + #56) = r1.new }
    8384:	de ce 00 5a 	5a00cede     call a140 <_Getpctype>
    8388:	01 c0 30 91 	9130c001     r1 = memub (r16 + #0)
    838c:	80 c1 40 3a 	3a40c180     r0 = memh (r0 + r1 << #1)
    8390:	00 45 20 85 	85204500     { p0 = !tstbit (r0, #5)
    8394:	f2 78 ff 5c 	5cff78f2       if !p0.new jump:t 8374 <_Printf+0x134>
    8398:	30 60 90 74 	74906030       if !p0.new r16 = add (r16, #1)
    839c:	c0 c1 91 47 	4791c1c0       if !p0.new r0 = memw (r17 + #56) }
    83a0:	c0 45 01 75 	750145c0     { p0 = cmp.eq (r1, #46)
    83a4:	a0 48 00 5c 	5c0048a0       if (p0.new) jump:nt 84e0 <_Printf+0x2a0>
    83a8:	30 60 10 74 	74106030       if (p0.new) r16 = add (r16, #1)
    83ac:	1f e6 d1 39 	39d1e61f       if !p0.new memw (r17 + #48) = #-1 }
    83b0:	01 c0 30 91 	9130c001     r1 = memub (r16 + #0)
    83b4:	07 44 00 00 	00004407     { immext (#65984)
    83b8:	00 42 00 78 	78004200       r0 = ##66000
    83bc:	26 ce 00 5a 	5a00ce26       call a000 <strchr> }
    83c0:	1c 40 00 10 	1000401c     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 83f8 <_Printf+0x1b8>
    83c4:	00 df 11 39 	3911df00       if (p0.new) memb (r17 + #62) = #0 }
    83c8:	20 40 30 9b 	9b304020     { r0 = memub (r16 ++ #1)
    83cc:	3e c2 b1 a1 	a1b1c23e       memb (r17 + #62) = r0.new }
    83d0:	00 4d 00 75 	75004d00     { p0 = cmp.eq (r0, #104)
    83d4:	78 48 00 5c 	5c004878       if (p0.new) jump:nt 84c0 <_Printf+0x280>
    83d8:	62 c1 91 43 	4391c162       if (p0.new) r2 = memw (r17 + #44) }
    83dc:	80 4d 00 75 	75004d80     { p0 = cmp.eq (r0, #108)
    83e0:	0e d8 20 5c 	5c20d80e       if !p0.new jump:t 83f8 <_Printf+0x1b8> }
    83e4:	00 c0 30 91 	9130c000     r0 = memub (r16 + #0)
    83e8:	80 4d 00 75 	75004d80     { p0 = cmp.eq (r0, #108)
    83ec:	30 60 10 74 	74106030       if (p0.new) r16 = add (r16, #1)
    83f0:	01 40 00 00 	00004001       immext (#64)
    83f4:	11 ff 11 39 	3911ff11       if (p0.new) memb (r17 + #62) = ##113 }
    83f8:	62 41 91 91 	91914162     { r2 = memw (r17 + #44)
    83fc:	70 c0 c2 24 	24c2c070       if (!cmp.gt (r2.new, #0)) jump:nt 84d8 <_Printf+0x298> }
    8400:	e2 7f e2 bf 	bfe27fe2     { r2 = add (r2, #-1)
    8404:	00 40 79 70 	70794000       r0 = r25
    8408:	21 45 9d 91 	919d4521       r1 = memw (r29 + #164)
    840c:	0b d6 b1 a1 	a1b1d60b       memw (r17 + #44) = r2.new }
    8410:	28 c9 00 5a 	5a00c928     call 9660 <_Vacopy>
    8414:	00 51 19 f5 	f5195100     { r1:0 = combine (r25, r17)
    8418:	00 40 00 7f 	7f004000       nop
    841c:	00 c0 00 7f 	7f00c000       nop }
    8420:	03 40 78 70 	70784003     { r3 = r24
    8424:	b0 40 00 5a 	5a0040b0       call 8580 <_Putfld>
    8428:	02 c0 30 91 	9130c002       r2 = memub (r16 + #0) }
    842c:	00 51 18 f5 	f5185100     { r1:0 = combine (r24, r17)
    8430:	0a 40 40 10 	1040400a       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 8440 <_Printf+0x200>
    8434:	30 e0 10 74 	7410e030       if (p0.new) r16 = add (r16, #1) }
    8438:	7c c4 00 5a 	5a00c47c     call 8d30 <_Puttxt>
    843c:	32 e1 b0 11 	11b0e132     p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t 82a0 <_Printf+0x60>
    8440:	e0 7f df 78 	78df7fe0     { r0 = #-1
    8444:	00 f2 00 58 	5800f200       jump e840 <__restore_r16_through_r27_and_deallocframe> }
    8448:	60 41 91 91 	91914160     { r0 = memw (r17 + #44)
    844c:	6e c0 f2 24 	24f2c06e       if (!cmp.gt (r0.new, #0)) jump:nt 8324 <_Printf+0xe4> }
    8450:	6c 4b f0 14 	14f04b6c     { p0 = cmp.gt (r0, r19) ; if (!p0.new) jump:nt 8328 <_Printf+0xe8>
    8454:	6a 7f ff 59 	59ff7f6a       jump 8324 <_Printf+0xe4>
    8458:	30 e0 9b 74 	749be030       if !p0.new r16 = add (r27, #1) }
    845c:	1b 40 30 91 	9130401b     { r27 = memub (r16 + #0)
    8460:	01 c5 9d 91 	919dc501       r1 = memw (r29 + #160) }
    8464:	1b 60 7b 73 	737b601b     { r27 = !cmp.eq (r27, #0)
    8468:	a0 c4 01 75 	7501c4a0       p0 = cmp.eq (r1, #37) }
    846c:	03 40 9b 74 	749b4003     { if !p0 r3 = add (r27, #0)
    8470:	e3 df 1b 74 	741bdfe3       if (p0) r3 = add (r27, #-1) }
    8474:	2e e0 f3 12 	12f3e02e     p1 = cmp.gt (r3, #0) ; if (!p1.new) jump:t 82d0 <_Printf+0x90>
    8478:	02 40 63 70 	70634002     { r2 = r3
    847c:	01 40 70 70 	70704001       r1 = r16
    8480:	13 08 94 c2 	c2940813       r4 = memw (r17 + #8) ; memw (sp + #4) = r3 }
    8484:	00 40 a4 50 	50a44000     { callr r4
    8488:	60 c0 91 91 	9191c060       r0 = memw (r17 + #12) }
    848c:	da 40 30 10 	103040da     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 8440 <_Printf+0x200>
    8490:	23 40 9d 91 	919d4023       r3 = memw (r29 + #4)
    8494:	a2 c1 91 47 	4791c1a2       if !p0.new r2 = memw (r17 + #52) }
    8498:	03 42 03 f3 	f3034203     { r3 = add (r3, r2)
    849c:	01 45 9d 91 	919d4501       r1 = memw (r29 + #160)
    84a0:	03 c0 91 a1 	a191c003       memw (r17 + #12) = r0 }
    84a4:	a0 44 01 75 	750144a0     { p0 = cmp.eq (r1, #37)
    84a8:	16 7f ff 59 	59ff7f16       jump 82d0 <_Printf+0x90>
    84ac:	0d c3 91 a1 	a191c30d       memw (r17 + #52) = r3 }
    84b0:	01 c0 3b 91 	913bc001     r1 = memub (r27 + #0)
    84b4:	38 78 ff 5c 	5cff7838     { if !p0.new jump:t 8324 <_Printf+0xe4>
    84b8:	ca 7f ff 59 	59ff7fca       jump 8448 <_Printf+0x208>
    84bc:	80 c4 01 75 	7501c480       p0 = cmp.eq (r1, #36) }
    84c0:	00 c0 30 91 	9130c000     r0 = memub (r16 + #0)
    84c4:	00 4d 00 75 	75004d00     { p0 = cmp.eq (r0, #104)
    84c8:	30 60 10 74 	74106030       if (p0.new) r16 = add (r16, #1)
    84cc:	01 40 00 00 	00004001       immext (#64)
    84d0:	02 ff 11 39 	3911ff02       if (p0.new) memb (r17 + #62) = ##98 }
    84d4:	96 e0 b2 10 	10b2e096     p0 = cmp.gt (r2, #0) ; if (p0.new) jump:t 8400 <_Printf+0x1c0>
    84d8:	00 51 1a f5 	f51a5100     { r1:0 = combine (r26, r17)
    84dc:	a4 ff ff 59 	59ffffa4       jump 8420 <_Printf+0x1e0> }
    84e0:	00 c0 30 91 	9130c000     r0 = memub (r16 + #0)
    84e4:	40 45 00 75 	75004540     { p0 = cmp.eq (r0, #42)
    84e8:	1e 58 20 5c 	5c20581e       if !p0.new jump:t 8520 <_Printf+0x2e0>
    84ec:	00 c6 d1 39 	39d1c600       if !p0.new memw (r17 + #48) = #0 }
    84f0:	30 40 10 b0 	b0104030     { r16 = add (r16, #1)
    84f4:	20 c5 9d 91 	919dc520       r0 = memw (r29 + #164) }
    84f8:	80 40 00 b0 	b0004080     { r0 = add (r0, #4)
    84fc:	01 40 80 91 	91804001       r1 = memw (r0 + #0)
    8500:	0c d3 b1 a1 	a1b1d30c       memw (r17 + #48) = r1.new }
    8504:	29 c0 9d a1 	a19dc029     memw (r29 + #164) = r0
    8508:	56 7f ff 59 	59ff7f56     { jump 83b4 <_Printf+0x174>
    850c:	01 c0 30 91 	9130c001       r1 = memub (r16 + #0) }
    8510:	41 61 80 df 	df806141     { r1 = add (r1, mpyi (r0, #10))
    8514:	00 d5 00 f2 	f200d500       p0 = cmp.eq (r0, r21) }
    8518:	01 7a e1 bf 	bfe17a01     { r1 = add (r1, #-48)
    851c:	60 d3 b1 44 	44b1d360       if !p0 memw (r17 + #48) = r1.new }
    8520:	10 ce 00 5a 	5a00ce10     call a140 <_Getpctype>
    8524:	01 c0 30 91 	9130c001     r1 = memub (r16 + #0)
    8528:	80 c1 40 3a 	3a40c180     r0 = memh (r0 + r1 << #1)
    852c:	00 45 20 85 	85204500     { p0 = !tstbit (r0, #5)
    8530:	f2 78 ff 5c 	5cff78f2       if !p0.new jump:t 8510 <_Printf+0x2d0>
    8534:	30 60 90 74 	74906030       if !p0.new r16 = add (r16, #1)
    8538:	80 c1 91 47 	4791c180       if !p0.new r0 = memw (r17 + #48) }
    853c:	3c ff ff 59 	59ffff3c     jump 83b4 <_Printf+0x174>
    8540:	21 c5 9d 91 	919dc521     r1 = memw (r29 + #164)
    8544:	81 40 01 b0 	b0014081     { r1 = add (r1, #4)
    8548:	00 40 81 91 	91814000       r0 = memw (r1 + #0)
    854c:	0e d2 b1 a1 	a1b1d20e       memw (r17 + #56) = r0.new }
    8550:	0a 41 c0 11 	11c0410a     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 8564 <_Printf+0x324>
    8554:	29 c1 9d a1 	a19dc129       memw (r29 + #164) = r1 }
    8558:	30 c0 10 b0 	b010c030     r16 = add (r16, #1)
    855c:	22 7f ff 59 	59ff7f22     { jump 83a0 <_Printf+0x160>
    8560:	01 c0 30 91 	9130c001       r1 = memub (r16 + #0) }
    8564:	00 40 40 76 	76404000     { r0 = sub (#0, r0)
    8568:	62 cf 31 3f 	3f31cf62       memh (r17 + #60) = setbit (#2) }
    856c:	f6 7f ff 59 	59ff7ff6     { jump 8558 <_Printf+0x318>
    8570:	0e c0 91 a1 	a191c00e       memw (r17 + #56) = r0 }
    8574:	00 c0 00 7f 	7f00c000     nop
    8578:	00 c0 00 7f 	7f00c000     nop
    857c:	00 c0 00 7f 	7f00c000     nop

00008580 <_Putfld>:
    8580:	10 40 60 70 	70604010     { r16 = r0
    8584:	60 7b e2 bf 	bfe27b60       r0 = add (r2, #-37)
    8588:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    858c:	e0 df 00 76 	7600dfe0     r0 = and (r0, #255)
    8590:	60 4a 80 75 	75804a60     { p0 = cmp.gtu (r0, #83)
    8594:	18 c8 20 5c 	5c20c818       if !p0.new jump:nt 85c0 <_Putfld+0x40> }
    8598:	a1 44 00 78 	780044a1     { r1 = #37
    859c:	80 05 20 59 	59200580       p0 = cmp.eq (r2, #0) ; r0 = memw (r16 + #20) }
    85a0:	20 40 00 b0 	b0004020     { r0 = add (r0, #1)
    85a4:	01 c0 03 3b 	3b03c001       memb (r3 + r0 << #0) = r1 }
    85a8:	21 40 00 b0 	b0004021     { r1 = add (r0, #1)
    85ac:	04 40 01 5c 	5c014004       if (p0) jump 89b0 <_Putfld+0x430>
    85b0:	05 40 90 a1 	a1904005       memw (r16 + #20) = r0
    85b4:	02 c0 03 35 	3503c002       if !p0 memb (r3 + r0 << #0) = r2 }
    85b8:	40 40 00 16 	16004040     { r0 = #0 ; jump 8638 <_Putfld+0xb8>
    85bc:	05 c1 90 a1 	a190c105       memw (r16 + #20) = r1 }
    85c0:	08 44 00 00 	00004408     { immext (#66048)
    85c4:	00 f0 80 9d 	9d80f000       r0 = memw (r0 << #2 + ##66048) }
    85c8:	00 c0 80 52 	5280c000     jumpr r0
    85cc:	c0 c7 30 91 	9130c7c0     r0 = memub (r16 + #62)
    85d0:	80 4d 00 75 	75004d80     { p0 = cmp.eq (r0, #108)
    85d4:	00 68 00 5c 	5c006800       if (p0.new) jump:nt 87d0 <_Putfld+0x250>
    85d8:	63 c1 90 47 	4790c163       if !p0.new r3 = memw (r16 + #44) }
    85dc:	e4 7f e3 bf 	bfe37fe4     { r4 = add (r3, #-1)
    85e0:	1c 41 c3 11 	11c3411c       p0 = cmp.gt (r3, #-1) ; if (!p0.new) jump:nt 8614 <_Putfld+0x94>
    85e4:	80 c0 90 47 	4790c080       if !p0.new r0 = memw (r16 + #16) }
    85e8:	c0 7f 64 75 	75647fc0     { p0 = cmp.gt (r4, #-2)
    85ec:	12 00 30 51 	51300012       r0 = add (r3, #1) ; r2 = memw (r1 + #0) }
    85f0:	20 c0 80 7e 	7e80c020     if !p0 r0 = #1
    85f4:	18 40 00 60 	60004018     { loop0 (8600 <_Putfld+0x80>, r0)
    85f8:	00 40 00 7f 	7f004000       nop
    85fc:	00 c0 00 7f 	7f00c000       nop }
    8600:	e3 bf e3 bf 	bfe3bfe3     { r3 = add (r3, #-1)
    8604:	82 40 02 b0 	b0024082       r2 = add (r2, #4)
    8608:	00 40 82 91 	91824000       r0 = memw (r2 + #0)
    860c:	04 d2 b0 a1 	a1b0d204       memw (r16 + #16) = r0.new }:endloop0
    8610:	83 0b 12 a0 	a0120b83     memw (r1 + #0) = r2 ; memw (r16 + #44) = r3
    8614:	01 40 00 78 	78004001     { r1 = #0
    8618:	82 41 90 91 	91904182       r2 = memw (r16 + #48)
    861c:	ec c0 d2 26 	26d2c0ec       if (!cmp.gt (r2.new, #-1)) jump:nt 89ec <_Putfld+0x46c> }
    8620:	38 ea ff 5b 	5bffea38     call 5a90 <memchr>
    8624:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    8628:	81 40 90 47 	47904081       if !p0.new r1 = memw (r16 + #16)
    862c:	80 c1 90 43 	4390c180       if (p0.new) r0 = memw (r16 + #48) }
    8630:	80 c0 21 fb 	fb21c080     if !p0 r0 = sub (r0, r1)
    8634:	80 07 00 68 	68000780     r0 = #0 ; memw (r16 + #28) = r0
    8638:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    863c:	a2 44 00 78 	780044a2     { r2 = #37
    8640:	81 05 00 48 	48000581       r0 = #0 ; r1 = memw (r16 + #20) }
    8644:	02 c1 03 3b 	3b03c102     memb (r3 + r1 << #0) = r2
    8648:	21 40 01 b0 	b0014021     { r1 = add (r1, #1)
    864c:	05 d3 b0 a1 	a1b0d305       memw (r16 + #20) = r1.new }
    8650:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    8654:	c0 c7 30 91 	9130c7c0     r0 = memub (r16 + #62)
    8658:	80 4d 00 75 	75004d80     { p0 = cmp.eq (r0, #108)
    865c:	ac 48 01 5c 	5c0148ac       if (p0.new) jump:nt 8bb0 <_Putfld+0x630>
    8660:	60 41 90 47 	47904160       if !p0.new r0 = memw (r16 + #44)
    8664:	60 c1 90 43 	4390c160       if (p0.new) r0 = memw (r16 + #44) }
    8668:	16 41 c0 11 	11c04116     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 8694 <_Putfld+0x114>
    866c:	54 3a 05 33 	33053a54       r5 = add (r0, #-1) ; if (!p0.new) r4 = #0 }
    8670:	c0 7f 65 75 	75657fc0     { p0 = cmp.gt (r5, #-2)
    8674:	12 00 04 51 	51040012       r4 = add (r0, #1) ; r2 = memw (r1 + #0) }
    8678:	24 c0 80 7e 	7e80c024     if !p0 r4 = #1
    867c:	08 c0 04 60 	6004c008     loop0 (8680 <_Putfld+0x100>, r4)
    8680:	e0 bf e0 bf 	bfe0bfe0     { r0 = add (r0, #-1)
    8684:	82 40 02 b0 	b0024082       r2 = add (r2, #4)
    8688:	04 40 22 91 	91224004       r4 = memub (r2 + #0)
    868c:	0b d6 b0 a1 	a1b0d60b       memw (r16 + #44) = r0.new }:endloop0
    8690:	00 c2 81 a1 	a181c200     memw (r1 + #0) = r2
    8694:	81 05 00 48 	48000581     r0 = #0 ; r1 = memw (r16 + #20)
    8698:	d8 7f ff 59 	59ff7fd8     { jump 8648 <_Putfld+0xc8>
    869c:	04 c1 03 3b 	3b03c104       memb (r3 + r1 << #0) = r4 }
    86a0:	60 c1 90 91 	9190c160     r0 = memw (r16 + #44)
    86a4:	e5 7f 00 74 	74007fe5     { if (p0.new) r5 = add (r0, #-1)
    86a8:	2e 41 c0 11 	11c0412e       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 8700 <_Putfld+0x180>
    86ac:	04 c0 d0 47 	47d0c004       if !p0.new r5:4 = memd (r16 + #0) }
    86b0:	24 40 00 b0 	b0004024     { r4 = add (r0, #1)
    86b4:	c0 ff 65 75 	7565ffc0       p0 = cmp.gt (r5, #-2) }
    86b8:	24 c0 80 7e 	7e80c024     if !p0 r4 = #1
    86bc:	08 c0 04 60 	6004c008     loop0 (86c0 <_Putfld+0x140>, r4)
    86c0:	c4 c7 30 91 	9130c7c4     r4 = memub (r16 + #62)
    86c4:	80 4d 04 75 	75044d80     { p0 = cmp.eq (r4, #108)
    86c8:	0c c8 00 5c 	5c00c80c       if (p0.new) jump:nt 86dc <_Putfld+0x15c> }
    86cc:	20 4e 04 75 	75044e20     { p0 = cmp.eq (r4, #113)
    86d0:	74 e8 00 5c 	5c00e874       if (p0.new) jump:nt 89b4 <_Putfld+0x434> }
    86d4:	40 4d 04 75 	75044d40     { p0 = cmp.eq (r4, #106)
    86d8:	70 e8 00 5c 	5c00e870       if (p0.new) jump:nt 89b4 <_Putfld+0x434> }
    86dc:	05 c0 81 91 	9181c005     r5 = memw (r1 + #0)
    86e0:	85 40 05 b0 	b0054085     { r5 = add (r5, #4)
    86e4:	04 40 85 91 	91854004       r4 = memw (r5 + #0)
    86e8:	00 d5 a1 a1 	a1a1d500       memw (r1 + #0) = r5.new }
    86ec:	04 c0 44 84 	8444c004     r5:4 = sxtw (r4)
    86f0:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    86f4:	00 c4 d0 a1 	a1d0c400       memd (r16 + #0) = r5:4 }
    86f8:	00 80 00 7f 	7f008000     { nop
    86fc:	0b c0 90 a1 	a190c00b       memw (r16 + #44) = r0 }:endloop0
    8700:	c0 c7 30 91 	9130c7c0     r0 = memub (r16 + #62)
    8704:	00 4d 00 75 	75004d00     { p0 = cmp.eq (r0, #104)
    8708:	44 c8 01 5c 	5c01c844       if (p0.new) jump:nt 8b8c <_Putfld+0x60c> }
    870c:	40 4c 00 75 	75004c40     { p0 = cmp.eq (r0, #98)
    8710:	4c c8 01 5c 	5c01c84c       if (p0.new) jump:nt 8ba4 <_Putfld+0x624> }
    8714:	40 4f 00 75 	75004f40     { p0 = cmp.eq (r0, #122)
    8718:	0a c8 00 5c 	5c00c80a       if (p0.new) jump:nt 8728 <_Putfld+0x1a8> }
    871c:	80 4e 00 75 	75004e80     { p0 = cmp.eq (r0, #116)
    8720:	0a 58 20 5c 	5c20580a       if !p0.new jump:t 8730 <_Putfld+0x1b0>
    8724:	04 c0 d0 47 	47d0c004       if !p0.new r5:4 = memd (r16 + #0) }
    8728:	04 c0 44 84 	8444c004     r5:4 = sxtw (r4)
    872c:	00 c4 d0 a1 	a1d0c400     memd (r16 + #0) = r5:4
    8730:	00 c0 00 7c 	7c00c000     r1:0 = combine (#0, #0)
    8734:	40 44 80 d2 	d2804440     { p0 = cmp.gt (r1:0, r5:4)
    8738:	12 48 00 5c 	5c004812       if (p0.new) jump:nt 8758 <_Putfld+0x1d8>
    873c:	a1 65 00 7e 	7e0065a1       if (p0.new) r1 = #45
    8740:	a0 c0 90 43 	4390c0a0       if (p0.new) r0 = memw (r16 + #20) }
    8744:	c0 c3 70 91 	9170c3c0     r0 = memuh (r16 + #60)
    8748:	00 41 20 85 	85204100     { p0 = !tstbit (r0, #1)
    874c:	5c 68 00 5c 	5c00685c       if (p0.new) jump:nt 8a00 <_Putfld+0x480>
    8750:	61 65 80 7e 	7e806561       if !p0.new r1 = #43
    8754:	a0 c0 90 47 	4790c0a0       if !p0.new r0 = memw (r16 + #20) }
    8758:	00 40 00 7f 	7f004000     { nop
    875c:	01 c0 03 3b 	3b03c001       memb (r3 + r0 << #0) = r1 }
    8760:	20 40 00 b0 	b0004020     { r0 = add (r0, #1)
    8764:	00 40 00 7f 	7f004000       nop
    8768:	00 40 00 7f 	7f004000       nop
    876c:	05 d6 b0 a1 	a1b0d605       memw (r16 + #20) = r0.new }
    8770:	03 40 03 f3 	f3034003     { r3 = add (r3, r0)
    8774:	76 40 00 58 	58004076       jump 885c <_Putfld+0x2dc>
    8778:	00 d0 02 f5 	f502d000       r1:0 = combine (r2, r16) }
    877c:	c0 c7 10 91 	9110c7c0     r0 = memb (r16 + #62)
    8780:	c0 f3 e0 bf 	bfe0f3c0     r0 = add (r0, #-98)
    8784:	e0 5f 00 76 	76005fe0     { r0 = and (r0, #255)
    8788:	38 d8 52 25 	2552d838       if (!cmp.gtu (r0.new, #24)) jump:nt 89f4 <_Putfld+0x474> }
    878c:	62 41 90 91 	91904162     { r2 = memw (r16 + #44)
    8790:	0f 40 00 00 	0000400f       immext (#960)
    8794:	78 c0 c2 26 	26c2c078       if (!cmp.gt (r2.new, #-1)) jump:nt 8b88 <_Putfld+0x608> }
    8798:	23 40 02 b0 	b0024023     { r3 = add (r2, #1)
    879c:	10 00 24 53 	53240010       r4 = add (r2, #-1) ; r0 = memw (r1 + #0) }
    87a0:	c0 7f 64 75 	75647fc0     { p0 = cmp.gt (r4, #-2)
    87a4:	23 e0 80 7e 	7e80e023       if !p0.new r3 = #1 }
    87a8:	10 40 03 60 	60034010     { loop0 (87b0 <_Putfld+0x230>, r3)
    87ac:	00 c0 00 7f 	7f00c000       nop }
    87b0:	e2 bf e2 bf 	bfe2bfe2     { r2 = add (r2, #-1)
    87b4:	03 00 40 40 	40400003       r0 = add (r0, #4) ; r3 = memw (r0 + #0) }:endloop0
    87b8:	00 40 00 7f 	7f004000     { nop
    87bc:	82 0b 10 a0 	a0100b82       memw (r1 + #0) = r0 ; memw (r16 + #44) = r2 }
    87c0:	3c 40 30 16 	1630403c     { r0 = #0 ; jump 8638 <_Putfld+0xb8>
    87c4:	a1 41 90 91 	919041a1       r1 = memw (r16 + #52)
    87c8:	00 d3 a3 a1 	a1a3d300       memw (r3 + #0) = r1.new }
    87cc:	6c df 10 3c 	3c10df6c     memb (r16 + #62) = #108
    87d0:	63 c1 90 91 	9190c163     r3 = memw (r16 + #44)
    87d4:	14 41 c3 11 	11c34114     { p0 = cmp.gt (r3, #-1) ; if (!p0.new) jump:nt 87fc <_Putfld+0x27c>
    87d8:	52 3a 34 33 	33343a52       r4 = add (r3, #-1) ; if (!p0.new) r2 = #0 }
    87dc:	c0 7f 64 75 	75647fc0     { p0 = cmp.gt (r4, #-2)
    87e0:	10 00 32 51 	51320010       r2 = add (r3, #1) ; r0 = memw (r1 + #0) }
    87e4:	22 c0 80 7e 	7e80c022     if !p0 r2 = #1
    87e8:	10 40 02 60 	60024010     { loop0 (87f0 <_Putfld+0x270>, r2)
    87ec:	00 c0 00 7f 	7f00c000       nop }
    87f0:	e3 bf e3 bf 	bfe3bfe3     { r3 = add (r3, #-1)
    87f4:	02 00 40 40 	40400002       r0 = add (r0, #4) ; r2 = memw (r0 + #0) }:endloop0
    87f8:	83 0b 10 a0 	a0100b83     memw (r1 + #0) = r0 ; memw (r16 + #44) = r3
    87fc:	00 d0 02 f5 	f502d000     r1:0 = combine (r2, r16)
    8800:	00 c2 00 5a 	5a00c200     call 8c00 <_Putstr>
    8804:	d6 61 80 11 	118061d6     { p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t 89b0 <_Putfld+0x430>
    8808:	1a 7f ff 59 	59ff7f1a       jump 8638 <_Putfld+0xb8>
    880c:	e0 ff df 78 	78dfffe0       r0 = #-1 }
    8810:	04 40 00 7c 	7c004004     { r5:4 = combine (#0, #0)
    8814:	62 41 90 91 	91904162       r2 = memw (r16 + #44)
    8818:	1e c0 c2 26 	26c2c01e       if (!cmp.gt (r2.new, #-1)) jump:nt 884c <_Putfld+0x2cc> }
    881c:	24 40 02 b0 	b0024024     { r4 = add (r2, #1)
    8820:	10 00 25 53 	53250010       r5 = add (r2, #-1) ; r0 = memw (r1 + #0) }
    8824:	c0 7f 65 75 	75657fc0     { p0 = cmp.gt (r5, #-2)
    8828:	24 e0 80 7e 	7e80e024       if !p0.new r4 = #1 }
    882c:	08 c0 04 60 	6004c008     loop0 (8830 <_Putfld+0x2b0>, r4)
    8830:	04 40 60 70 	70604004     { r4 = r0
    8834:	80 40 00 b0 	b0004080       r0 = add (r0, #4)
    8838:	e2 7f e2 bf 	bfe27fe2       r2 = add (r2, #-1)
    883c:	00 d4 a1 a1 	a1a1d400       memw (r1 + #0) = r0.new }
    8840:	00 80 00 7f 	7f008000     { nop
    8844:	44 00 05 48 	48050044       r5 = #0 ; r4 = memw (r4 + #0) }:endloop0
    8848:	0b c2 90 a1 	a190c20b     memw (r16 + #44) = r2
    884c:	00 6f 30 73 	73306f00     { r1:0 = combine (#120, r16)
    8850:	a2 40 90 91 	919040a2       r2 = memw (r16 + #20)
    8854:	00 c4 d0 a1 	a1d0c400       memd (r16 + #0) = r5:4 }
    8858:	03 c2 03 f3 	f303c203     r3 = add (r3, r2)
    885c:	9a 5c 00 5a 	5a005c9a     { call c190 <_Litob>
    8860:	04 c3 90 a1 	a190c304       memw (r16 + #16) = r3 }
    8864:	00 40 00 78 	78004000     { r0 = #0
    8868:	40 1f 0c 3e 	3e0c1f40       r17:16 = memd (sp + #8) ; dealloc_return }
    886c:	60 41 90 91 	91904160     { r0 = memw (r16 + #44)
    8870:	1e c0 c2 26 	26c2c01e       if (!cmp.gt (r0.new, #-1)) jump:nt 88a8 <_Putfld+0x328> }
    8874:	05 33 04 31 	31043305     r4 = add (r0, #1) ; r5 = add (r0, #-1)
    8878:	c0 7f 65 75 	75657fc0     { p0 = cmp.gt (r5, #-2)
    887c:	24 e0 80 7e 	7e80e024       if !p0.new r4 = #1 }
    8880:	08 c0 04 60 	6004c008     loop0 (8884 <_Putfld+0x304>, r4)
    8884:	14 00 00 53 	53000014     r0 = add (r0, #-1) ; r4 = memw (r1 + #0)
    8888:	e4 c0 04 b0 	b004c0e4     r4 = add (r4, #7)
    888c:	04 ff 24 76 	7624ff04     r4 = and (r4, #-8)
    8890:	06 41 04 b0 	b0044106     { r6 = add (r4, #8)
    8894:	04 40 c4 91 	91c44004       r5:4 = memd (r4 + #0)
    8898:	00 d4 a1 a1 	a1a1d400       memw (r1 + #0) = r6.new }
    889c:	00 80 00 7f 	7f008000     { nop
    88a0:	00 c4 d0 a1 	a1d0c400       memd (r16 + #0) = r5:4 }:endloop0
    88a4:	0b c0 90 a1 	a190c00b     memw (r16 + #44) = r0
    88a8:	60 c0 50 91 	9150c060     r0 = memh (r16 + #6)
    88ac:	a1 65 80 7e 	7e8065a1     { if !p0.new r1 = #45
    88b0:	1a 41 c0 11 	11c0411a       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 88e0 <_Putfld+0x360>
    88b4:	a0 c0 90 47 	4790c0a0       if !p0.new r0 = memw (r16 + #20) }
    88b8:	c0 c3 70 91 	9170c3c0     r0 = memuh (r16 + #60)
    88bc:	00 41 20 85 	85204100     { p0 = !tstbit (r0, #1)
    88c0:	12 48 20 5c 	5c204812       if !p0.new jump:nt 88e0 <_Putfld+0x360>
    88c4:	61 65 80 7e 	7e806561       if !p0.new r1 = #43
    88c8:	a0 c0 90 47 	4790c0a0       if !p0.new r0 = memw (r16 + #20) }
    88cc:	00 40 20 85 	85204000     { p0 = !tstbit (r0, #0)
    88d0:	10 48 00 5c 	5c004810       if (p0.new) jump:nt 88ec <_Putfld+0x36c>
    88d4:	a0 40 90 43 	439040a0       if (p0.new) r0 = memw (r16 + #20)
    88d8:	a0 c0 90 47 	4790c0a0       if !p0.new r0 = memw (r16 + #20) }
    88dc:	01 c4 00 78 	7800c401     r1 = #32
    88e0:	20 40 00 b0 	b0004020     { r0 = add (r0, #1)
    88e4:	01 c0 03 3b 	3b03c001       memb (r3 + r0 << #0) = r1 }
    88e8:	05 c0 90 a1 	a190c005     memw (r16 + #20) = r0
    88ec:	03 40 03 f3 	f3034003     { r3 = add (r3, r0)
    88f0:	ea 58 00 5a 	5a0058ea       call bac0 <_Ldtob>
    88f4:	00 50 02 f5 	f5025000       r1:0 = combine (r2, r16)
    88f8:	04 d7 b0 a1 	a1b0d704       memw (r16 + #16) = r3.new }
    88fc:	00 40 00 78 	78004000     { r0 = #0
    8900:	40 1f 0c 3e 	3e0c1f40       r17:16 = memd (sp + #8) ; dealloc_return }
    8904:	60 41 90 91 	91904160     { r0 = memw (r16 + #44)
    8908:	2a c0 c2 26 	26c2c02a       if (!cmp.gt (r0.new, #-1)) jump:nt 8958 <_Putfld+0x3d8> }
    890c:	05 33 04 31 	31043305     r4 = add (r0, #1) ; r5 = add (r0, #-1)
    8910:	c0 7f 65 75 	75657fc0     { p0 = cmp.gt (r5, #-2)
    8914:	24 e0 80 7e 	7e80e024       if !p0.new r4 = #1 }
    8918:	08 c0 04 60 	6004c008     loop0 (891c <_Putfld+0x39c>, r4)
    891c:	c4 c7 30 91 	9130c7c4     r4 = memub (r16 + #62)
    8920:	80 4d 04 75 	75044d80     { p0 = cmp.eq (r4, #108)
    8924:	0c c8 00 5c 	5c00c80c       if (p0.new) jump:nt 8938 <_Putfld+0x3b8> }
    8928:	20 4e 04 75 	75044e20     { p0 = cmp.eq (r4, #113)
    892c:	54 c8 00 5c 	5c00c854       if (p0.new) jump:nt 89d0 <_Putfld+0x450> }
    8930:	40 4d 04 75 	75044d40     { p0 = cmp.eq (r4, #106)
    8934:	50 c8 00 5c 	5c00c850       if (p0.new) jump:nt 89d0 <_Putfld+0x450> }
    8938:	04 c0 81 91 	9181c004     r4 = memw (r1 + #0)
    893c:	85 40 04 b0 	b0044085     { r5 = add (r4, #4)
    8940:	00 d3 a1 a1 	a1a1d300       memw (r1 + #0) = r5.new }
    8944:	44 00 05 48 	48050044     r5 = #0 ; r4 = memw (r4 + #0)
    8948:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    894c:	00 c4 d0 a1 	a1d0c400       memd (r16 + #0) = r5:4 }
    8950:	00 80 00 7f 	7f008000     { nop
    8954:	0b c0 90 a1 	a190c00b       memw (r16 + #44) = r0 }:endloop0
    8958:	c0 c7 30 91 	9130c7c0     r0 = memub (r16 + #62)
    895c:	00 4d 00 75 	75004d00     { p0 = cmp.eq (r0, #104)
    8960:	1c e8 00 5c 	5c00e81c       if (p0.new) jump:nt 8b94 <_Putfld+0x614> }
    8964:	40 4c 00 75 	75004c40     { p0 = cmp.eq (r0, #98)
    8968:	1c e8 00 5c 	5c00e81c       if (p0.new) jump:nt 8b9c <_Putfld+0x61c> }
    896c:	40 4f 00 75 	75004f40     { p0 = cmp.eq (r0, #122)
    8970:	56 c8 00 5c 	5c00c856       if (p0.new) jump:nt 8a18 <_Putfld+0x498> }
    8974:	80 4e 00 75 	75004e80     { p0 = cmp.eq (r0, #116)
    8978:	52 c8 00 5c 	5c00c852       if (p0.new) jump:nt 8a18 <_Putfld+0x498> }
    897c:	c0 c3 70 91 	9170c3c0     r0 = memuh (r16 + #60)
    8980:	00 43 20 85 	85204300     { p0 = !tstbit (r0, #3)
    8984:	14 48 00 5c 	5c004814       if (p0.new) jump:nt 89a8 <_Putfld+0x428>
    8988:	00 40 00 7c 	7c004000       r1:0 = combine (#0, #0)
    898c:	04 c0 d0 47 	47d0c004       if !p0.new r5:4 = memd (r16 + #0) }
    8990:	00 40 84 d2 	d2844000     { p0 = cmp.eq (r5:4, r1:0)
    8994:	0c c8 00 5c 	5c00c80c       if (p0.new) jump:nt 89a8 <_Putfld+0x428> }
    8998:	00 4b 02 75 	75024b00     { p0 = cmp.eq (r2, #88)
    899c:	ee c8 00 5c 	5c00c8ee       if (p0.new) jump:nt 8b74 <_Putfld+0x5f4> }
    89a0:	00 4f 02 75 	75024f00     { p0 = cmp.eq (r2, #120)
    89a4:	ea c8 00 5c 	5c00c8ea       if (p0.new) jump:nt 8b74 <_Putfld+0x5f4> }
    89a8:	e4 7e ff 59 	59ff7ee4     { jump 8770 <_Putfld+0x1f0>
    89ac:	a0 c0 90 91 	9190c0a0       r0 = memw (r16 + #20) }
    89b0:	44 c0 20 16 	1620c044     r0 = #0 ; jump 8638 <_Putfld+0xb8>
    89b4:	04 c0 81 91 	9181c004     r4 = memw (r1 + #0)
    89b8:	e4 c0 04 b0 	b004c0e4     r4 = add (r4, #7)
    89bc:	04 ff 24 76 	7624ff04     r4 = and (r4, #-8)
    89c0:	06 41 04 b0 	b0044106     { r6 = add (r4, #8)
    89c4:	98 7e ff 59 	59ff7e98       jump 86f0 <_Putfld+0x170>
    89c8:	04 40 c4 91 	91c44004       r5:4 = memd (r4 + #0)
    89cc:	00 d6 a1 a1 	a1a1d600       memw (r1 + #0) = r6.new }
    89d0:	04 c0 81 91 	9181c004     r4 = memw (r1 + #0)
    89d4:	e4 c0 04 b0 	b004c0e4     r4 = add (r4, #7)
    89d8:	04 ff 24 76 	7624ff04     r4 = and (r4, #-8)
    89dc:	06 41 04 b0 	b0044106     { r6 = add (r4, #8)
    89e0:	b6 7f ff 59 	59ff7fb6       jump 8948 <_Putfld+0x3c8>
    89e4:	04 40 c4 91 	91c44004       r5:4 = memd (r4 + #0)
    89e8:	00 d6 a1 a1 	a1a1d600       memw (r1 + #0) = r6.new }
    89ec:	12 ef ff 5b 	5bffef12     call 6810 <strlen>
    89f0:	22 fe ff 59 	59fffe22     jump 8634 <_Putfld+0xb4>
    89f4:	0d 44 00 00 	0000440d     { immext (#66368)
    89f8:	00 f4 80 9d 	9d80f400       r0 = memw (r0 << #2 + ##66384) }
    89fc:	00 c0 80 52 	5280c000     jumpr r0
    8a00:	00 40 20 85 	85204000     { p0 = !tstbit (r0, #0)
    8a04:	ac 48 ff 5c 	5cff48ac       if !p0.new jump:nt 8758 <_Putfld+0x1d8>
    8a08:	01 64 80 7e 	7e806401       if !p0.new r1 = #32
    8a0c:	a0 c0 90 47 	4790c0a0       if !p0.new r0 = memw (r16 + #20) }
    8a10:	b0 7e ff 59 	59ff7eb0     { jump 8770 <_Putfld+0x1f0>
    8a14:	a0 c0 90 91 	9190c0a0       r0 = memw (r16 + #20) }
    8a18:	00 c0 90 91 	9190c000     r0 = memw (r16 + #0)
    8a1c:	01 c0 00 78 	7800c001     r1 = #0
    8a20:	ae 7f ff 59 	59ff7fae     { jump 897c <_Putfld+0x3fc>
    8a24:	00 c0 d0 a1 	a1d0c000       memd (r16 + #0) = r1:0 }
    8a28:	62 c1 90 91 	9190c162     r2 = memw (r16 + #44)
    8a2c:	12 41 c2 11 	11c24112     { p0 = cmp.gt (r2, #-1) ; if (!p0.new) jump:nt 8a50 <_Putfld+0x4d0>
    8a30:	53 3a 24 33 	33243a53       r4 = add (r2, #-1) ; if (!p0.new) r3 = #0 }
    8a34:	c0 7f 64 75 	75647fc0     { p0 = cmp.gt (r4, #-2)
    8a38:	10 00 23 51 	51230010       r3 = add (r2, #1) ; r0 = memw (r1 + #0) }
    8a3c:	23 c0 80 7e 	7e80c023     if !p0 r3 = #1
    8a40:	08 c0 03 60 	6003c008     loop0 (8a44 <_Putfld+0x4c4>, r3)
    8a44:	e2 bf e2 bf 	bfe2bfe2     { r2 = add (r2, #-1)
    8a48:	03 00 40 40 	40400003       r0 = add (r0, #4) ; r3 = memw (r0 + #0) }:endloop0
    8a4c:	82 0b 10 a0 	a0100b82     memw (r1 + #0) = r0 ; memw (r16 + #44) = r2
    8a50:	ef 7f ff 0f 	0fff7fef     { immext (#4294966208)
    8a54:	50 40 00 16 	16004050       r0 = #0 ; jump 8638 <_Putfld+0xb8>
    8a58:	a1 41 90 91 	919041a1       r1 = memw (r16 + #52)
    8a5c:	00 c3 a3 a1 	a1a3c300       memb (r3 + #0) = r1.new }
    8a60:	62 41 90 91 	91904162     { r2 = memw (r16 + #44)
    8a64:	a6 c0 c2 26 	26c2c0a6       if (!cmp.gt (r2.new, #-1)) jump:nt 8bac <_Putfld+0x62c> }
    8a68:	23 40 02 b0 	b0024023     { r3 = add (r2, #1)
    8a6c:	10 00 24 53 	53240010       r4 = add (r2, #-1) ; r0 = memw (r1 + #0) }
    8a70:	c0 7f 64 75 	75647fc0     { p0 = cmp.gt (r4, #-2)
    8a74:	23 e0 80 7e 	7e80e023       if !p0.new r3 = #1 }
    8a78:	10 40 03 60 	60034010     { loop0 (8a80 <_Putfld+0x500>, r3)
    8a7c:	00 c0 00 7f 	7f00c000       nop }
    8a80:	e2 bf e2 bf 	bfe2bfe2     { r2 = add (r2, #-1)
    8a84:	03 00 40 40 	40400003       r0 = add (r0, #4) ; r3 = memw (r0 + #0) }:endloop0
    8a88:	82 0b 10 a0 	a0100b82     memw (r1 + #0) = r0 ; memw (r16 + #44) = r2
    8a8c:	84 0d 00 48 	48000d84     r0 = #0 ; r4 = memw (r16 + #52)
    8a90:	04 c0 44 84 	8444c004     r5:4 = sxtw (r4)
    8a94:	d2 7d ff 59 	59ff7dd2     { jump 8638 <_Putfld+0xb8>
    8a98:	00 c4 c3 a1 	a1c3c400       memd (r3 + #0) = r5:4 }
    8a9c:	62 c1 90 91 	9190c162     r2 = memw (r16 + #44)
    8aa0:	12 41 c2 11 	11c24112     { p0 = cmp.gt (r2, #-1) ; if (!p0.new) jump:nt 8ac4 <_Putfld+0x544>
    8aa4:	53 3a 24 33 	33243a53       r4 = add (r2, #-1) ; if (!p0.new) r3 = #0 }
    8aa8:	c0 7f 64 75 	75647fc0     { p0 = cmp.gt (r4, #-2)
    8aac:	10 00 23 51 	51230010       r3 = add (r2, #1) ; r0 = memw (r1 + #0) }
    8ab0:	23 c0 80 7e 	7e80c023     if !p0 r3 = #1
    8ab4:	08 c0 03 60 	6003c008     loop0 (8ab8 <_Putfld+0x538>, r3)
    8ab8:	e2 bf e2 bf 	bfe2bfe2     { r2 = add (r2, #-1)
    8abc:	03 00 40 40 	40400003       r0 = add (r0, #4) ; r3 = memw (r0 + #0) }:endloop0
    8ac0:	82 0b 10 a0 	a0100b82     memw (r1 + #0) = r0 ; memw (r16 + #44) = r2
    8ac4:	ed 7f ff 0f 	0fff7fed     { immext (#4294966080)
    8ac8:	68 40 00 16 	16004068       r0 = #0 ; jump 8638 <_Putfld+0xb8>
    8acc:	a1 41 90 91 	919041a1       r1 = memw (r16 + #52)
    8ad0:	00 cb a3 a1 	a1a3cb00       memh (r3 + #0) = r1.new }
    8ad4:	62 41 90 91 	91904162     { r2 = memw (r16 + #44)
    8ad8:	5a c0 c2 26 	26c2c05a       if (!cmp.gt (r2.new, #-1)) jump:nt 8b88 <_Putfld+0x608> }
    8adc:	23 40 02 b0 	b0024023     { r3 = add (r2, #1)
    8ae0:	10 00 24 53 	53240010       r4 = add (r2, #-1) ; r0 = memw (r1 + #0) }
    8ae4:	c0 7f 64 75 	75647fc0     { p0 = cmp.gt (r4, #-2)
    8ae8:	23 e0 80 7e 	7e80e023       if !p0.new r3 = #1 }
    8aec:	08 c0 03 60 	6003c008     loop0 (8af0 <_Putfld+0x570>, r3)
    8af0:	e2 bf e2 bf 	bfe2bfe2     { r2 = add (r2, #-1)
    8af4:	03 00 40 40 	40400003       r0 = add (r0, #4) ; r3 = memw (r0 + #0) }:endloop0
    8af8:	60 fe ff 59 	59fffe60     jump 87b8 <_Putfld+0x238>
    8afc:	62 41 90 91 	91904162     { r2 = memw (r16 + #44)
    8b00:	46 c0 c2 26 	26c2c046       if (!cmp.gt (r2.new, #-1)) jump:nt 8b88 <_Putfld+0x608> }
    8b04:	23 40 02 b0 	b0024023     { r3 = add (r2, #1)
    8b08:	10 00 24 53 	53240010       r4 = add (r2, #-1) ; r0 = memw (r1 + #0) }
    8b0c:	c0 7f 64 75 	75647fc0     { p0 = cmp.gt (r4, #-2)
    8b10:	23 e0 80 7e 	7e80e023       if !p0.new r3 = #1 }
    8b14:	08 c0 03 60 	6003c008     loop0 (8b18 <_Putfld+0x598>, r3)
    8b18:	e2 bf e2 bf 	bfe2bfe2     { r2 = add (r2, #-1)
    8b1c:	03 00 40 40 	40400003       r0 = add (r0, #4) ; r3 = memw (r0 + #0) }:endloop0
    8b20:	4c fe ff 59 	59fffe4c     jump 87b8 <_Putfld+0x238>
    8b24:	62 41 90 91 	91904162     { r2 = memw (r16 + #44)
    8b28:	44 c0 c2 26 	26c2c044       if (!cmp.gt (r2.new, #-1)) jump:nt 8bac <_Putfld+0x62c> }
    8b2c:	23 40 02 b0 	b0024023     { r3 = add (r2, #1)
    8b30:	10 00 24 53 	53240010       r4 = add (r2, #-1) ; r0 = memw (r1 + #0) }
    8b34:	c0 7f 64 75 	75647fc0     { p0 = cmp.gt (r4, #-2)
    8b38:	23 e0 80 7e 	7e80e023       if !p0.new r3 = #1 }
    8b3c:	08 c0 03 60 	6003c008     loop0 (8b40 <_Putfld+0x5c0>, r3)
    8b40:	e2 bf e2 bf 	bfe2bfe2     { r2 = add (r2, #-1)
    8b44:	03 00 40 40 	40400003       r0 = add (r0, #4) ; r3 = memw (r0 + #0) }:endloop0
    8b48:	a0 ff ff 59 	59ffffa0     jump 8a88 <_Putfld+0x508>
    8b4c:	62 41 90 91 	91904162     { r2 = memw (r16 + #44)
    8b50:	1e c0 c2 26 	26c2c01e       if (!cmp.gt (r2.new, #-1)) jump:nt 8b88 <_Putfld+0x608> }
    8b54:	23 40 02 b0 	b0024023     { r3 = add (r2, #1)
    8b58:	10 00 24 53 	53240010       r4 = add (r2, #-1) ; r0 = memw (r1 + #0) }
    8b5c:	c0 7f 64 75 	75647fc0     { p0 = cmp.gt (r4, #-2)
    8b60:	23 e0 80 7e 	7e80e023       if !p0.new r3 = #1 }
    8b64:	08 c0 03 60 	6003c008     loop0 (8b68 <_Putfld+0x5e8>, r3)
    8b68:	e2 bf e2 bf 	bfe2bfe2     { r2 = add (r2, #-1)
    8b6c:	03 00 40 40 	40400003       r0 = add (r0, #4) ; r3 = memw (r0 + #0) }:endloop0
    8b70:	24 fe ff 59 	59fffe24     jump 87b8 <_Putfld+0x238>
    8b74:	80 05 01 4b 	4b010580     r1 = #48 ; r0 = memw (r16 + #20)
    8b78:	20 40 00 b0 	b0004020     { r0 = add (r0, #1)
    8b7c:	01 c0 03 3b 	3b03c001       memb (r3 + r0 << #0) = r1 }
    8b80:	f0 7d ff 59 	59ff7df0     { jump 8760 <_Putfld+0x1e0>
    8b84:	02 c0 03 3b 	3b03c002       memb (r3 + r0 << #0) = r2 }
    8b88:	1c c0 23 16 	1623c01c     r3 = #0 ; jump 87c0 <_Putfld+0x240>
    8b8c:	04 40 e4 70 	70e44004     { r4 = sxth (r4)
    8b90:	ce fd ff 59 	59fffdce       jump 8728 <_Putfld+0x1a8> }
    8b94:	44 7f ff 59 	59ff7f44     { jump 8a1c <_Putfld+0x49c>
    8b98:	00 c0 70 91 	9170c000       r0 = memuh (r16 + #0) }
    8b9c:	40 7f ff 59 	59ff7f40     { jump 8a1c <_Putfld+0x49c>
    8ba0:	00 c0 30 91 	9130c000       r0 = memub (r16 + #0) }
    8ba4:	04 40 a4 70 	70a44004     { r4 = sxtb (r4)
    8ba8:	c2 fd ff 59 	59fffdc2       jump 8728 <_Putfld+0x1a8> }
    8bac:	70 c0 33 16 	1633c070     r3 = #0 ; jump 8a8c <_Putfld+0x50c>
    8bb0:	1a 41 c0 11 	11c0411a     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 8be4 <_Putfld+0x664>
    8bb4:	53 3a 04 33 	33043a53       r4 = add (r0, #-1) ; if (!p0.new) r3 = #0 }
    8bb8:	c0 7f 64 75 	75647fc0     { p0 = cmp.gt (r4, #-2)
    8bbc:	12 00 03 51 	51030012       r3 = add (r0, #1) ; r2 = memw (r1 + #0) }
    8bc0:	23 c0 80 7e 	7e80c023     if !p0 r3 = #1
    8bc4:	18 40 03 60 	60034018     { loop0 (8bd0 <_Putfld+0x650>, r3)
    8bc8:	00 40 00 7f 	7f004000       nop
    8bcc:	00 c0 00 7f 	7f00c000       nop }
    8bd0:	e0 bf e0 bf 	bfe0bfe0     { r0 = add (r0, #-1)
    8bd4:	82 40 02 b0 	b0024082       r2 = add (r2, #4)
    8bd8:	03 40 82 91 	91824003       r3 = memw (r2 + #0)
    8bdc:	0b d6 b0 a1 	a1b0d60b       memw (r16 + #44) = r0.new }:endloop0
    8be0:	00 c2 81 a1 	a181c200     memw (r1 + #0) = r2
    8be4:	00 40 70 70 	70704000     { r0 = r16
    8be8:	01 40 7d 70 	707d4001       r1 = r29
    8bec:	7f 66 50 3c 	3c50667f       memw (r16 + #48) = #-1
    8bf0:	00 c3 9d a1 	a19dc300       memw (r29 + #0) = r3 }
    8bf4:	06 7e ff 59 	59ff7e06     { jump 8800 <_Putfld+0x280>
    8bf8:	80 c0 5d 3c 	3c5dc080       memw (r29 + #4) = #0 }
    8bfc:	00 c0 00 7f 	7f00c000     nop

00008c00 <_Putstr>:
    8c00:	f0 6d 00 5a 	5a006df0     { call e7e0 <__save_r16_through_r25>
    8c04:	0f c0 9d a0 	a09dc00f       allocframe (#120) }
    8c08:	12 40 60 70 	70604012     { r18 = r0
    8c0c:	11 40 61 70 	70614011       r17 = r1
    8c10:	0f 0e 0b 0c 	0c0b0e0f       r19 = memw (r0 + #48) ; r23 = memw (r0 + #56) }
    8c14:	e0 7f 73 75 	75737fe0     { p0 = cmp.gt (r19, #-1)
    8c18:	36 44 00 5a 	5a004436       call 9480 <_Getmbcurmax>
    8c1c:	ff 7f ff 07 	07ff7fff       immext (#2147483584)
    8c20:	f3 e7 80 7e 	7e80e7f3       if !p0.new r19 = ##2147483647 }
    8c24:	01 3c 0f 38 	380f3c01     r23 = add (r0, r23) ; r3:2 = combine (#0, #0)
    8c28:	00 48 97 75 	75974800     { p0 = cmp.gtu (r23, #64)
    8c2c:	0e 48 20 5c 	5c20480e       if !p0.new jump:nt 8c44 <_Putstr+0x44>
    8c30:	08 c2 dd a1 	a1ddc208       memd (r29 + #64) = r3:2 }
    8c34:	c0 c3 72 91 	9172c3c0     r0 = memuh (r18 + #60)
    8c38:	00 42 20 85 	85204200     { p0 = !tstbit (r0, #2)
    8c3c:	70 48 00 5c 	5c004870       if (p0.new) jump:nt 8d18 <_Putstr+0x118>
    8c40:	00 c0 77 70 	7077c000       r0 = r23 }
    8c44:	19 40 7d 70 	707d4019     { r25 = r29
    8c48:	17 48 00 78 	78004817       r23 = #64
    8c4c:	15 c0 7d 70 	707dc015       r21 = r29 }
    8c50:	56 40 0b 10 	100b4056     { p0 = cmp.eq (r19, #0) ; if (p0.new) jump:nt 8cfc <_Putstr+0xfc>
    8c54:	2c 2d 0e 28 	280e2d2c       r22 = #0 ; r20 = add (sp, #72) }
    8c58:	18 48 1d b0 	b01d4818     { r24 = add (r29, #64)
    8c5c:	32 c0 00 58 	5800c032       jump 8cbc <_Putstr+0xbc> }
    8c60:	06 c0 40 10 	1040c006     p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 8c6c <_Putstr+0x6c>
    8c64:	f0 7f f0 bf 	bff07ff0     { r16 = add (r16, #-1)
    8c68:	38 c0 02 26 	2602c038       if (cmp.eq (r16.new, #-1)) jump:nt 8cd4 <_Putstr+0xd4> }
    8c6c:	46 4b 88 14 	14884b46     { p0 = cmp.gt (r16, r19) ; if (p0.new) jump:nt 8cf8 <_Putstr+0xf8>
    8c70:	a0 c0 92 47 	4792c0a0       if !p0.new r0 = memw (r18 + #20) }
    8c74:	01 40 10 f3 	f3104001     { r1 = add (r16, r0)
    8c78:	12 d7 43 21 	2143d712       if (!cmp.gtu (r1.new, r23)) jump:nt 8c98 <_Putstr+0x98> }
    8c7c:	00 52 15 f5 	f5155200     { r1:0 = combine (r21, r18)
    8c80:	5a 40 00 5a 	5a00405a       call 8d30 <_Puttxt>
    8c84:	00 c7 52 3c 	3c52c700       memw (r18 + #56) = #0 }
    8c88:	16 40 60 70 	70604016     { r22 = r0
    8c8c:	2c 41 c0 11 	11c0412c       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 8ce0 <_Putstr+0xe0>
    8c90:	80 c2 52 39 	3952c280       if (p0.new) memw (r18 + #20) = #0 }
    8c94:	00 c0 00 78 	7800c000     r0 = #0
    8c98:	01 40 74 70 	70744001     { r1 = r20
    8c9c:	dc 6a ff 5b 	5bff6adc       call 6250 <memcpy>
    8ca0:	d0 38 82 30 	308238d0       r2 = r16 ; r0 = add (r21, r0) }
    8ca4:	00 40 91 91 	91914000     { r0 = memw (r17 + #0)
    8ca8:	90 c2 52 3e 	3e52c290       memw (r18 + #20) += r16 }
    8cac:	26 c0 00 10 	1000c026     p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 8cf8 <_Putstr+0xf8>
    8cb0:	13 53 30 f3 	f3305313     { r19 = sub (r19, r16)
    8cb4:	24 c0 c3 24 	24c3c024       if (!cmp.gt (r19.new, #0)) jump:nt 8cf8 <_Putstr+0xf8> }
    8cb8:	91 c0 11 b0 	b011c091     r17 = add (r17, #4)
    8cbc:	02 40 78 70 	70784002     { r2 = r24
    8cc0:	0a 46 00 5a 	5a00460a       call 98d0 <_Wctomb>
    8cc4:	91 00 c0 50 	50c00091       r0 = r20 ; r1 = memw (r17 + #0) }
    8cc8:	10 40 60 70 	70604010     { r16 = r0
    8ccc:	cc 61 b0 11 	11b061cc       p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t 8c60 <_Putstr+0x60>
    8cd0:	00 c0 91 43 	4391c000       if (p0.new) r0 = memw (r17 + #0) }
    8cd4:	f6 7f df 78 	78df7ff6     { r22 = #-1
    8cd8:	00 40 00 7f 	7f004000       nop
    8cdc:	00 c0 00 7f 	7f00c000       nop }
    8ce0:	08 48 00 5c 	5c004808     { if (p0.new) jump:nt 8cf0 <_Putstr+0xf0>
    8ce4:	c8 64 ff 5b 	5bff64c8       call 5670 <free>
    8ce8:	00 59 15 f2 	f2155900       p0 = cmp.eq (r21, r25)
    8cec:	00 c0 75 70 	7075c000       r0 = r21 }
    8cf0:	6d 41 00 00 	0000416d     { immext (#23360)
    8cf4:	28 c0 0e 17 	170ec028       r0 = r22 ; jump e844 <__restore_r16_through_r25_and_deallocframe> }
    8cf8:	f4 e0 7e 10 	107ee0f4     p0 = cmp.eq (r22, #0) ; if (!p0.new) jump:t 8ce0 <_Putstr+0xe0>
    8cfc:	00 52 15 f5 	f5155200     { r1:0 = combine (r21, r18)
    8d00:	1a c0 00 5a 	5a00c01a       call 8d30 <_Puttxt> }
    8d04:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    8d08:	16 40 60 70 	70604016       r22 = r0
    8d0c:	80 42 52 39 	39524280       if (p0.new) memw (r18 + #20) = #0
    8d10:	00 c7 52 39 	3952c700       if (p0.new) memw (r18 + #56) = #0 }
    8d14:	e6 ff ff 59 	59ffffe6     jump 8ce0 <_Putstr+0xe0>
    8d18:	fc e5 ff 5b 	5bffe5fc     call 5910 <malloc>
    8d1c:	19 60 9d 74 	749d6019     { if !p0.new r25 = add (r29, #0)
    8d20:	f6 7f 0f 7e 	7e0f7ff6       if (p0.new) r22 = #-1
    8d24:	00 39 0d 30 	300d3900       r21 = r0 ; p0 = cmp.eq (r0, #0) }
    8d28:	94 60 ff 5c 	5cff6094     { if !p0 jump 8c50 <_Putstr+0x50>
    8d2c:	e4 ff ff 59 	59ffffe4       jump 8cf0 <_Putstr+0xf0> }

00008d30 <_Puttxt>:
    8d30:	5c 6d 00 5a 	5a006d5c     { call e7e8 <__save_r16_through_r21>
    8d34:	03 c0 9d a0 	a09dc003       allocframe (#24) }
    8d38:	10 40 60 70 	70604010     { r16 = r0
    8d3c:	15 40 61 70 	70614015       r21 = r1
    8d40:	0c 0e 02 05 	05020e0c       r2 = memw (r0 + #20) ; r20 = memw (r0 + #56) }
    8d44:	81 08 00 06 	06000881     r0 = memw (r0 + #24) ; r1 = memw (r16 + #32)
    8d48:	34 40 82 ef 	ef824034     { r20 -= add (r2, r0)
    8d4c:	e3 40 90 91 	919040e3       r3 = memw (r16 + #28)
    8d50:	c0 c3 70 91 	9170c3c0       r0 = memuh (r16 + #60) }
    8d54:	34 41 83 ef 	ef834134     { r20 -= add (r3, r1)
    8d58:	00 42 20 85 	85204200       p0 = !tstbit (r0, #2)
    8d5c:	80 0a 81 09 	09810a80       r1 = memw (r16 + #36) ; r0 = memw (r16 + #40) }
    8d60:	34 40 81 ef 	ef814034     { r20 -= add (r1, r0)
    8d64:	28 c0 20 5c 	5c20c028       if !p0 jump 8db0 <_Puttxt+0x80> }
    8d68:	12 40 74 70 	70744012     { r18 = r20
    8d6c:	24 40 cc 10 	10cc4024       p0 = cmp.gt (r20, #0) ; if (!p0.new) jump:nt 8db0 <_Puttxt+0x80>
    8d70:	60 c0 90 43 	4390c060       if (p0.new) r0 = memw (r16 + #12) }
    8d74:	11 44 00 78 	78004411     { r17 = #32
    8d78:	00 40 00 7f 	7f004000       nop
    8d7c:	00 c0 00 7f 	7f00c000       nop }
    8d80:	93 52 b1 d5 	d5b15293     { r19 = minu (r18, r17)
    8d84:	0f 44 00 00 	0000440f       immext (#66496)
    8d88:	83 02 01 4a 	4a010283       r1 = ##66528 ; r3 = memw (r16 + #8) }
    8d8c:	02 40 73 70 	70734002     { r2 = r19
    8d90:	00 40 a3 50 	50a34000       callr r3
    8d94:	12 d2 33 f3 	f333d212       r18 = sub (r18, r19) }
    8d98:	01 40 52 75 	75524001     { p1 = cmp.gt (r18, #0)
    8d9c:	a6 48 00 5c 	5c0048a6       if (p0.new) jump:nt 8ee4 <_Puttxt+0x1b4>
    8da0:	80 03 00 79 	79000380       p0 = cmp.eq (r0, #0) ; memw (r16 + #12) = r0 }
    8da4:	ee 61 df 5c 	5cdf61ee     { if (p1) jump 8d80 <_Puttxt+0x50>
    8da8:	a2 48 90 45 	459048a2       if !p1 r2 = memw (r16 + #20)
    8dac:	93 c6 50 3e 	3e50c693       memw (r16 + #52) += r19 }
    8db0:	01 40 75 70 	70754001     { r1 = r21
    8db4:	9e 40 82 10 	1082409e       p0 = cmp.gt (r2, #0) ; if (p0.new) jump:nt 8eec <_Puttxt+0x1bc>
    8db8:	00 40 00 7f 	7f004000       nop
    8dbc:	43 c0 90 43 	4390c043       if (p0.new) r3 = memw (r16 + #8) }
    8dc0:	13 44 00 78 	78004413     { r19 = #32
    8dc4:	d1 40 90 91 	919040d1       r17 = memw (r16 + #24)
    8dc8:	1e c0 c3 24 	24c3c01e       if (!cmp.gt (r17.new, #0)) jump:nt 8dfc <_Puttxt+0xcc> }
    8dcc:	60 c0 90 91 	9190c060     r0 = memw (r16 + #12)
    8dd0:	92 51 b3 d5 	d5b35192     { r18 = minu (r17, r19)
    8dd4:	0e 44 00 00 	0000440e       immext (#66432)
    8dd8:	83 02 81 4b 	4b810283       r1 = ##66488 ; r3 = memw (r16 + #8) }
    8ddc:	02 40 72 70 	70724002     { r2 = r18
    8de0:	00 40 a3 50 	50a34000       callr r3
    8de4:	11 d1 32 f3 	f332d111       r17 = sub (r17, r18) }
    8de8:	01 40 51 75 	75514001     { p1 = cmp.gt (r17, #0)
    8dec:	7e 48 00 5c 	5c00487e       if (p0.new) jump:nt 8ee4 <_Puttxt+0x1b4>
    8df0:	80 03 00 79 	79000380       p0 = cmp.eq (r0, #0) ; memw (r16 + #12) = r0 }
    8df4:	ee 61 df 5c 	5cdf61ee     { if (p1) jump 8dd0 <_Puttxt+0xa0>
    8df8:	92 c6 50 3e 	3e50c692       memw (r16 + #52) += r18 }
    8dfc:	e2 40 90 91 	919040e2     { r2 = memw (r16 + #28)
    8e00:	98 c0 82 24 	2482c098       if (cmp.gt (r2.new, #0)) jump:nt 8f2c <_Puttxt+0x1fc> }
    8e04:	13 44 00 78 	78004413     { r19 = #32
    8e08:	11 41 90 91 	91904111       r17 = memw (r16 + #32)
    8e0c:	1e c0 c3 24 	24c3c01e       if (!cmp.gt (r17.new, #0)) jump:nt 8e40 <_Puttxt+0x110> }
    8e10:	60 c0 90 91 	9190c060     r0 = memw (r16 + #12)
    8e14:	92 51 b3 d5 	d5b35192     { r18 = minu (r17, r19)
    8e18:	0e 44 00 00 	0000440e       immext (#66432)
    8e1c:	83 02 81 4b 	4b810283       r1 = ##66488 ; r3 = memw (r16 + #8) }
    8e20:	02 40 72 70 	70724002     { r2 = r18
    8e24:	00 40 a3 50 	50a34000       callr r3
    8e28:	11 d1 32 f3 	f332d111       r17 = sub (r17, r18) }
    8e2c:	01 40 51 75 	75514001     { p1 = cmp.gt (r17, #0)
    8e30:	5c 48 00 5c 	5c00485c       if (p0.new) jump:nt 8ee4 <_Puttxt+0x1b4>
    8e34:	80 03 00 79 	79000380       p0 = cmp.eq (r0, #0) ; memw (r16 + #12) = r0 }
    8e38:	ee 61 df 5c 	5cdf61ee     { if (p1) jump 8e14 <_Puttxt+0xe4>
    8e3c:	92 c6 50 3e 	3e50c692       memw (r16 + #52) += r18 }
    8e40:	00 40 00 7f 	7f004000     { nop
    8e44:	00 40 00 7f 	7f004000       nop
    8e48:	22 41 90 91 	91904122       r2 = memw (r16 + #36)
    8e4c:	64 c0 82 24 	2482c064       if (cmp.gt (r2.new, #0)) jump:nt 8f08 <_Puttxt+0x1d8> }
    8e50:	13 44 00 78 	78004413     { r19 = #32
    8e54:	51 41 90 91 	91904151       r17 = memw (r16 + #40)
    8e58:	1e c0 c3 24 	24c3c01e       if (!cmp.gt (r17.new, #0)) jump:nt 8e8c <_Puttxt+0x15c> }
    8e5c:	60 c0 90 91 	9190c060     r0 = memw (r16 + #12)
    8e60:	92 51 b3 d5 	d5b35192     { r18 = minu (r17, r19)
    8e64:	0e 44 00 00 	0000440e       immext (#66432)
    8e68:	83 02 81 4b 	4b810283       r1 = ##66488 ; r3 = memw (r16 + #8) }
    8e6c:	02 40 72 70 	70724002     { r2 = r18
    8e70:	00 40 a3 50 	50a34000       callr r3
    8e74:	11 d1 32 f3 	f332d111       r17 = sub (r17, r18) }
    8e78:	01 40 51 75 	75514001     { p1 = cmp.gt (r17, #0)
    8e7c:	36 48 00 5c 	5c004836       if (p0.new) jump:nt 8ee4 <_Puttxt+0x1b4>
    8e80:	80 03 00 79 	79000380       p0 = cmp.eq (r0, #0) ; memw (r16 + #12) = r0 }
    8e84:	ee 61 df 5c 	5cdf61ee     { if (p1) jump 8e60 <_Puttxt+0x130>
    8e88:	92 c6 50 3e 	3e50c692       memw (r16 + #52) += r18 }
    8e8c:	c0 c3 70 91 	9170c3c0     r0 = memuh (r16 + #60)
    8e90:	00 42 20 85 	85204200     { p0 = !tstbit (r0, #2)
    8e94:	26 c8 00 5c 	5c00c826       if (p0.new) jump:nt 8edc <_Puttxt+0x1ac> }
    8e98:	11 40 74 70 	70744011     { r17 = r20
    8e9c:	22 40 cc 10 	10cc4022       p0 = cmp.gt (r20, #0) ; if (!p0.new) jump:nt 8edc <_Puttxt+0x1ac>
    8ea0:	60 c0 90 43 	4390c060       if (p0.new) r0 = memw (r16 + #12) }
    8ea4:	13 44 00 78 	78004413     { r19 = #32
    8ea8:	00 40 00 7f 	7f004000       nop
    8eac:	00 c0 00 7f 	7f00c000       nop }
    8eb0:	92 51 b3 d5 	d5b35192     { r18 = minu (r17, r19)
    8eb4:	0f 44 00 00 	0000440f       immext (#66496)
    8eb8:	83 02 01 4a 	4a010283       r1 = ##66528 ; r3 = memw (r16 + #8) }
    8ebc:	02 40 72 70 	70724002     { r2 = r18
    8ec0:	00 40 a3 50 	50a34000       callr r3
    8ec4:	11 d1 32 f3 	f332d111       r17 = sub (r17, r18) }
    8ec8:	01 40 51 75 	75514001     { p1 = cmp.gt (r17, #0)
    8ecc:	0e 48 00 5c 	5c00480e       if (p0.new) jump:nt 8ee4 <_Puttxt+0x1b4>
    8ed0:	80 03 00 79 	79000380       p0 = cmp.eq (r0, #0) ; memw (r16 + #12) = r0 }
    8ed4:	ee 61 df 5c 	5cdf61ee     { if (p1) jump 8eb0 <_Puttxt+0x180>
    8ed8:	92 c6 50 3e 	3e50c692       memw (r16 + #52) += r18 }
    8edc:	65 41 00 00 	00004165     { immext (#22848)
    8ee0:	68 c0 00 16 	1600c068       r0 = #0 ; jump e850 <__restore_r16_through_r21_and_deallocframe> }
    8ee4:	e0 7f df 78 	78df7fe0     { r0 = #-1
    8ee8:	b6 ec 00 58 	5800ecb6       jump e850 <__restore_r16_through_r21_and_deallocframe> }
    8eec:	00 40 a3 50 	50a34000     { callr r3
    8ef0:	60 c0 90 91 	9190c060       r0 = memw (r16 + #12) }
    8ef4:	f8 40 30 10 	103040f8     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 8ee4 <_Puttxt+0x1b4>
    8ef8:	a0 40 90 47 	479040a0       if !p0.new r0 = memw (r16 + #20)
    8efc:	03 c0 90 a1 	a190c003       memw (r16 + #12) = r0 }
    8f00:	60 7f ff 59 	59ff7f60     { jump 8dc0 <_Puttxt+0x90>
    8f04:	80 c6 50 3e 	3e50c680       memw (r16 + #52) += r0 }
    8f08:	81 04 80 07 	07800481     r0 = memw (r16 + #28) ; r1 = memw (r16 + #16)
    8f0c:	01 40 01 f3 	f3014001     { r1 = add (r1, r0)
    8f10:	80 03 83 02 	02830380       r3 = memw (r16 + #8) ; r0 = memw (r16 + #12) }
    8f14:	00 c0 a3 50 	50a3c000     callr r3
    8f18:	e6 40 30 10 	103040e6     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 8ee4 <_Puttxt+0x1b4>
    8f1c:	20 41 90 47 	47904120       if !p0.new r0 = memw (r16 + #36)
    8f20:	03 c0 90 a1 	a190c003       memw (r16 + #12) = r0 }
    8f24:	96 7f ff 59 	59ff7f96     { jump 8e50 <_Puttxt+0x120>
    8f28:	80 c6 50 3e 	3e50c680       memw (r16 + #52) += r0 }
    8f2c:	80 03 83 02 	02830380     r3 = memw (r16 + #8) ; r0 = memw (r16 + #12)
    8f30:	00 40 a3 50 	50a34000     { callr r3
    8f34:	81 c0 90 91 	9190c081       r1 = memw (r16 + #16) }
    8f38:	d6 40 30 10 	103040d6     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 8ee4 <_Puttxt+0x1b4>
    8f3c:	e0 40 90 47 	479040e0       if !p0.new r0 = memw (r16 + #28)
    8f40:	03 c0 90 a1 	a190c003       memw (r16 + #12) = r0 }
    8f44:	60 7f ff 59 	59ff7f60     { jump 8e04 <_Puttxt+0xd4>
    8f48:	80 c6 50 3e 	3e50c680       memw (r16 + #52) += r0 }
    8f4c:	00 c0 00 7f 	7f00c000     nop

00008f50 <_Scanf>:
    8f50:	02 42 00 69 	69004202     { loop0 (8f70 <_Scanf+0x20>, #2)
    8f54:	06 40 60 70 	70604006       r6 = r0
    8f58:	d0 3c 15 70 	70153cd0       r5 = r1 ; allocframe (#104) }
    8f5c:	42 ec 00 5a 	5a00ec42     call e7e0 <__save_r16_through_r25>
    8f60:	38 30 d9 2c 	2cd93038     r17 = add (sp, #52) ; r16 = r3
    8f64:	00 40 71 70 	70714000     { r0 = r17
    8f68:	00 40 00 7f 	7f004000       nop
    8f6c:	00 c0 00 7f 	7f00c000       nop }
    8f70:	80 80 00 b0 	b0008080     { r0 = add (r0, #4)
    8f74:	92 41 1d b0 	b01d4192       r18 = add (r29, #12)
    8f78:	00 30 81 70 	70813000       r1 = r16 ; memw (r0 + #0) = #0 }:endloop0
    8f7c:	80 42 1d b0 	b01d4280     { r0 = add (r29, #20)
    8f80:	95 47 1d b0 	b01d4795       r21 = add (r29, #60)
    8f84:	03 46 9d a1 	a19d4603       memw (r29 + #12) = r6
    8f88:	01 c5 92 a1 	a192c501       memw (r18 + #4) = r5 }
    8f8c:	f4 7f df 78 	78df7ff4     { r20 = #-1
    8f90:	04 08 12 e8 	e8120804       memw (sp + #4) = r2 ; memw (sp + #0) = r4 }
    8f94:	ff 7f ff 07 	07ff7fff     { immext (#2147483584)
    8f98:	f3 47 00 78 	780047f3       r19 = ##2147483647
    8f9c:	66 c3 00 5a 	5a00c366       call 9660 <_Vacopy> }
    8fa0:	00 42 52 3c 	3c524200     { memw (r18 + #16) = #0
    8fa4:	80 c7 5d 3c 	3c5dc780       memw (r29 + #60) = #0 }
    8fa8:	04 40 9d 91 	919d4004     { r4 = memw (r29 + #0)
    8fac:	23 c2 b2 a1 	a1b2c223       memb (r18 + #35) = r4.new }
    8fb0:	22 40 9d 91 	919d4022     { r2 = memw (r29 + #4)
    8fb4:	03 d2 b2 a1 	a1b2d203       memw (r18 + #12) = r2.new }
    8fb8:	00 55 02 f5 	f5025500     { r1:0 = combine (r2, r21)
    8fbc:	64 60 00 5a 	5a006064       call d080 <_Mbtowc>
    8fc0:	ff 7f ff 07 	07ff7fff       immext (#2147483584)
    8fc4:	e2 e7 11 73 	7311e7e2       r3:2 = combine (r17, ##2147483647) }
    8fc8:	18 40 60 70 	70604018     { r24 = r0
    8fcc:	8a c0 c0 10 	10c0c08a       p0 = cmp.gt (r0, #0) ; if (!p0.new) jump:nt 90dc <_Scanf+0x18c> }
    8fd0:	b8 c8 00 5a 	5a00c8b8     call a140 <_Getpctype>
    8fd4:	4e 43 00 5a 	5a00434e     { call 9670 <_Wctob>
    8fd8:	f0 3c 0e 50 	500e3cf0       r22 = r0 ; r0 = memw (sp + #60) }
    8fdc:	80 c0 56 3a 	3a56c080     r0 = memh (r22 + r0 << #1)
    8fe0:	80 68 00 76 	76006880     { r0 = and (r0, #324)
    8fe4:	3a c0 42 24 	2442c03a       if (!cmp.eq (r0.new, #0)) jump:nt 9054 <_Scanf+0x104> }
    8fe8:	f0 3c ae 03 	03ae3cf0     r22 = memw (r18 + #12) ; r0 = memw (sp + #60)
    8fec:	a0 44 00 75 	750044a0     { p0 = cmp.eq (r0, #37)
    8ff0:	17 60 98 74 	74986017       if !p0.new r23 = add (r24, #0)
    8ff4:	f7 ff 18 74 	7418fff7       if (p0.new) r23 = add (r24, #-1) }
    8ff8:	f7 7f f7 bf 	bff77ff7     { r23 = add (r23, #-1)
    8ffc:	08 c0 83 26 	2683c008       if (cmp.gt (r23.new, #-1)) jump:nt 9008 <_Scanf+0xb8> }
    9000:	50 c0 00 58 	5800c050     jump 90a0 <_Scanf+0x150>
    9004:	4a c1 20 5c 	5c20c14a     if !p1 jump 9098 <_Scanf+0x148>
    9008:	01 40 00 78 	78004001     { r1 = #0
    900c:	22 40 00 78 	78004022       r2 = #1
    9010:	03 40 92 91 	91924003       r3 = memw (r18 + #0)
    9014:	01 c2 52 3f 	3f52c201       memw (r18 + #16) += #1 }
    9018:	00 40 a3 50 	50a34000     { callr r3
    901c:	a0 01 ff 53 	53ff01a0       r23 = add (r23, #-1) ; r0 = memw (r18 + #4) }
    9020:	e1 7f 77 75 	75777fe1     { p1 = cmp.gt (r23, #-1)
    9024:	36 40 16 b0 	b0164036       r22 = add (r22, #1)
    9028:	e0 10 01 50 	500110e0       r1 = r0 ; r0 = memub (r22 + #0) }
    902c:	ec e0 31 14 	1431e0ec     p0 = cmp.eq (r1, r0) ; if (p0.new) jump:t 9004 <_Scanf+0xb4>
    9030:	02 40 00 78 	78004002     { r2 = #0
    9034:	0c 40 81 11 	1181400c       p0 = cmp.eq (r1, #-1) ; if (p0.new) jump:nt 9048 <_Scanf+0xf8>
    9038:	20 c0 92 47 	4792c020       if !p0.new r0 = memw (r18 + #4) }
    903c:	03 40 92 91 	91924003     { r3 = memw (r18 + #0)
    9040:	21 c2 52 3f 	3f52c221       memw (r18 + #16) -= #1 }
    9044:	00 c0 a3 50 	50a3c000     callr r3
    9048:	00 c0 00 78 	7800c000     r0 = #0
    904c:	00 40 d4 d5 	d5d44000     { r0 = max (r20, r0)
    9050:	fc eb 00 58 	5800ebfc       jump e844 <__restore_r16_through_r25_and_deallocframe> }
    9054:	76 c8 00 5a 	5a00c876     call a140 <_Getpctype>
    9058:	16 40 60 70 	70604016     { r22 = r0
    905c:	01 40 00 78 	78004001       r1 = #0
    9060:	03 40 92 91 	91924003       r3 = memw (r18 + #0)
    9064:	01 c2 52 3f 	3f52c201       memw (r18 + #16) += #1 }
    9068:	00 40 a3 50 	50a34000     { callr r3
    906c:	a0 01 12 48 	481201a0       r2 = #1 ; r0 = memw (r18 + #4) }
    9070:	81 c0 56 3a 	3a56c081     r1 = memh (r22 + r0 << #1)
    9074:	81 68 01 76 	76016881     { r1 = and (r1, #324)
    9078:	f0 c0 73 24 	2473c0f0       if (!cmp.eq (r1.new, #0)) jump:nt 9054 <_Scanf+0x104> }
    907c:	01 40 60 70 	70604001     { r1 = r0
    9080:	40 40 90 11 	11904040       p0 = cmp.eq (r0, #-1) ; if (p0.new) jump:nt 92fc <_Scanf+0x3ac>
    9084:	03 c0 92 47 	4792c003       if !p0.new r3 = memw (r18 + #0) }
    9088:	02 40 00 78 	78004002     { r2 = #0
    908c:	00 40 a3 50 	50a34000       callr r3
    9090:	20 40 92 91 	91924020       r0 = memw (r18 + #4)
    9094:	21 c2 52 3f 	3f52c221       memw (r18 + #16) -= #1 }
    9098:	f0 3c ae 03 	03ae3cf0     r22 = memw (r18 + #12) ; r0 = memw (sp + #60)
    909c:	a0 c4 00 75 	7500c4a0     p0 = cmp.eq (r0, #37)
    90a0:	01 58 16 f3 	f3165801     { r1 = add (r22, r24)
    90a4:	26 40 00 5c 	5c004026       if (p0) jump 90ec <_Scanf+0x19c>
    90a8:	00 40 00 7f 	7f004000       nop
    90ac:	03 d7 b2 a1 	a1b2d703       memw (r18 + #12) = r1.new }
    90b0:	26 40 10 10 	10104026     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 92fc <_Scanf+0x3ac>
    90b4:	00 40 00 7f 	7f004000       nop
    90b8:	00 40 00 7f 	7f004000       nop
    90bc:	62 c0 92 47 	4792c062       if !p0.new r2 = memw (r18 + #12) }
    90c0:	00 55 02 f5 	f5025500     { r1:0 = combine (r2, r21)
    90c4:	ff 7f ff 07 	07ff7fff       immext (#2147483584)
    90c8:	e2 67 11 73 	731167e2       r3:2 = combine (r17, ##2147483647)
    90cc:	80 c7 5d 3c 	3c5dc780       memw (r29 + #60) = #0 }
    90d0:	d8 df 00 5a 	5a00dfd8     call d080 <_Mbtowc>
    90d4:	18 40 60 70 	70604018     { r24 = r0
    90d8:	7e e0 b0 10 	10b0e07e       p0 = cmp.gt (r0, #0) ; if (p0.new) jump:t 8fd0 <_Scanf+0x80> }
    90dc:	60 c0 92 91 	9192c060     r0 = memw (r18 + #12)
    90e0:	18 c0 20 91 	9120c018     r24 = memub (r0 + #0)
    90e4:	18 60 78 73 	73786018     { r24 = !cmp.eq (r24, #0)
    90e8:	76 ff ff 59 	59ffff76       jump 8fd0 <_Scanf+0x80> }
    90ec:	00 58 36 3a 	3a365800     { r0 = memub (r22 + r24 << #0)
    90f0:	00 c3 52 3c 	3c52c300       memw (r18 + #24) = #0 }
    90f4:	40 45 00 75 	75004540     { p0 = cmp.eq (r0, #42)
    90f8:	00 60 80 7e 	7e806000       if !p0.new r0 = #0
    90fc:	21 60 01 74 	74016021       if (p0.new) r1 = add (r1, #1)
    9100:	40 e5 00 7e 	7e00e540       if (p0.new) r0 = #42 }
    9104:	10 40 00 58 	58004010     { jump 9124 <_Scanf+0x1d4>
    9108:	18 41 92 40 	40924118       if (p0) memw (r18 + #12) = r1
    910c:	20 c0 12 a1 	a112c020       memb (r18 + #32) = r0 }
    9110:	ff 7f ff 0f 	0fff7fff     { immext (#4294967232)
    9114:	0a 41 20 d8 	d820410a       r1 = add (##4294967248, mpyi (r0, #10))
    9118:	00 d3 00 f2 	f200d300       p0 = cmp.eq (r0, r19) }
    911c:	02 42 01 f3 	f3014202     { r2 = add (r1, r2)
    9120:	30 d2 b2 44 	44b2d230       if !p0 memw (r18 + #24) = r2.new }
    9124:	0e c8 00 5a 	5a00c80e     call a140 <_Getpctype>
    9128:	61 c0 92 91 	9192c061     r1 = memw (r18 + #12)
    912c:	12 10 13 51 	51131012     r3 = add (r1, #1) ; r2 = memub (r1 + #0)
    9130:	80 c2 40 3a 	3a40c280     r0 = memh (r0 + r2 << #1)
    9134:	00 45 20 85 	85204500     { p0 = !tstbit (r0, #5)
    9138:	ee 78 ff 5c 	5cff78ee       if !p0.new jump:t 9110 <_Scanf+0x1c0>
    913c:	c0 40 92 47 	479240c0       if !p0.new r0 = memw (r18 + #24)
    9140:	18 c3 92 46 	4692c318       if !p0.new memw (r18 + #12) = r3 }
    9144:	c0 45 02 75 	750245c0     { p0 = cmp.eq (r2, #46)
    9148:	80 48 00 5c 	5c004880       if (p0.new) jump:nt 9244 <_Scanf+0x2f4>
    914c:	20 c0 01 b0 	b001c020       r0 = add (r1, #1) }
    9150:	60 c4 32 91 	9132c460     r0 = memub (r18 + #35)
    9154:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
    9158:	e0 5f 00 7a 	7a005fe0     { r0 = mux (p0, #-1, #0)
    915c:	07 d2 b2 a1 	a1b2d207       memw (r18 + #28) = r0.new }
    9160:	01 c0 21 91 	9121c001     r1 = memub (r1 + #0)
    9164:	07 44 00 00 	00004407     { immext (#65984)
    9168:	00 42 00 78 	78004200       r0 = ##66000
    916c:	4e c7 00 5a 	5a00c74e       call a000 <strchr> }
    9170:	b2 c0 00 10 	1000c0b2     p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 92d4 <_Scanf+0x384>
    9174:	62 c0 92 91 	9192c062     r2 = memw (r18 + #12)
    9178:	00 c0 62 70 	7062c000     r0 = r2
    917c:	21 c0 20 9b 	9b20c021     r1 = memub (r0 ++ #1)
    9180:	00 4d 01 75 	75014d00     { p0 = cmp.eq (r1, #104)
    9184:	50 48 00 5c 	5c004850       if (p0.new) jump:nt 9220 <_Scanf+0x2d0>
    9188:	03 40 92 a1 	a1924003       memw (r18 + #12) = r0
    918c:	21 c1 12 a1 	a112c121       memb (r18 + #33) = r1 }
    9190:	80 4d 01 75 	75014d80     { p0 = cmp.eq (r1, #108)
    9194:	aa c8 00 5c 	5c00c8aa       if (p0.new) jump:nt 92e4 <_Scanf+0x394> }
    9198:	00 40 00 7f 	7f004000     { nop
    919c:	21 c0 22 91 	9122c021       r1 = memub (r2 + #1) }
    91a0:	10 44 00 00 	00004410     { immext (#66560)
    91a4:	20 40 00 78 	78004020       r0 = ##66561
    91a8:	30 c7 00 5a 	5a00c730       call a000 <strchr> }
    91ac:	16 c0 00 10 	1000c016     p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 91d8 <_Scanf+0x288>
    91b0:	00 40 72 70 	70724000     { r0 = r18
    91b4:	d0 c9 00 5a 	5a00c9d0       call a550 <_Getfld> }
    91b8:	e1 7f 34 75 	75347fe1     { p1 = cmp.eq (r20, #-1)
    91bc:	aa c0 c0 10 	10c0c0aa       p0 = cmp.gt (r0, #0) ; if (!p0.new) jump:nt 930c <_Scanf+0x3bc> }
    91c0:	14 40 20 7e 	7e204014     { if (p1) r20 = #0
    91c4:	40 44 32 91 	91324440       r0 = memub (r18 + #34)
    91c8:	81 c1 52 3f 	3f52c181       memw (r18 + #12) += #1 }
    91cc:	34 60 94 74 	74946034     { if !p0.new r20 = add (r20, #1)
    91d0:	7a 7f ff 59 	59ff7f7a       jump 90c0 <_Scanf+0x170>
    91d4:	a2 03 00 59 	590003a2       p0 = cmp.eq (r0, #0) ; r2 = memw (r18 + #12) }
    91d8:	b4 c7 00 5a 	5a00c7b4     call a140 <_Getpctype>
    91dc:	16 40 60 70 	70604016     { r22 = r0
    91e0:	01 40 00 78 	78004001       r1 = #0
    91e4:	03 40 92 91 	91924003       r3 = memw (r18 + #0)
    91e8:	01 c2 52 3f 	3f52c201       memw (r18 + #16) += #1 }
    91ec:	00 40 a3 50 	50a34000     { callr r3
    91f0:	a0 01 12 48 	481201a0       r2 = #1 ; r0 = memw (r18 + #4) }
    91f4:	81 c0 56 3a 	3a56c081     r1 = memh (r22 + r0 << #1)
    91f8:	81 68 01 76 	76016881     { r1 = and (r1, #324)
    91fc:	f0 c0 73 24 	2473c0f0       if (!cmp.eq (r1.new, #0)) jump:nt 91d8 <_Scanf+0x288> }
    9200:	01 40 60 70 	70604001     { r1 = r0
    9204:	82 40 80 11 	11804082       p0 = cmp.eq (r0, #-1) ; if (p0.new) jump:nt 9304 <_Scanf+0x3b4>
    9208:	03 c0 92 47 	4792c003       if !p0.new r3 = memw (r18 + #0) }
    920c:	02 40 00 78 	78004002     { r2 = #0
    9210:	00 40 a3 50 	50a34000       callr r3
    9214:	20 40 92 91 	91924020       r0 = memw (r18 + #4)
    9218:	21 c2 52 3f 	3f52c221       memw (r18 + #16) -= #1 }
    921c:	ca ff ff 59 	59ffffca     jump 91b0 <_Scanf+0x260>
    9220:	21 c0 22 91 	9122c021     r1 = memub (r2 + #1)
    9224:	00 4d 01 75 	75014d00     { p0 = cmp.eq (r1, #104)
    9228:	21 60 00 74 	74006021       if (p0.new) r1 = add (r0, #1)
    922c:	01 40 00 00 	00004001       immext (#64)
    9230:	82 f0 12 39 	3912f082       if (p0.new) memb (r18 + #33) = ##98 }
    9234:	b6 e0 ff 5c 	5cffe0b6     if !p0 jump 91a0 <_Scanf+0x250>
    9238:	03 c1 92 a1 	a192c103     memw (r18 + #12) = r1
    923c:	b2 7f ff 59 	59ff7fb2     { jump 91a0 <_Scanf+0x250>
    9240:	21 c0 20 91 	9120c021       r1 = memub (r0 + #1) }
    9244:	03 c0 92 a1 	a192c003     memw (r18 + #12) = r0
    9248:	21 c0 21 91 	9121c021     r1 = memub (r1 + #1)
    924c:	40 45 01 75 	75014540     { p0 = cmp.eq (r1, #42)
    9250:	20 58 20 5c 	5c205820       if !p0.new jump:t 928c <_Scanf+0x33c>
    9254:	02 40 90 43 	43904002       if (p0.new) r2 = memw (r16 + #0)
    9258:	80 c3 d2 39 	39d2c380       if !p0.new memw (r18 + #28) = #0 }
    925c:	90 40 10 b0 	b0104090     { r16 = add (r16, #4)
    9260:	a2 07 01 71 	710107a2       r1 = add (r0, #1) ; memw (r18 + #28) = r2 }
    9264:	03 c1 92 a1 	a192c103     memw (r18 + #12) = r1
    9268:	7e 7f ff 59 	59ff7f7e     { jump 9164 <_Scanf+0x214>
    926c:	21 c0 20 91 	9120c021       r1 = memub (r0 + #1) }
    9270:	ff 7f ff 0f 	0fff7fff     { immext (#4294967232)
    9274:	0a 43 20 d8 	d820430a       r3 = add (##4294967248, mpyi (r0, #10))
    9278:	00 42 60 f2 	f2604200       p0 = cmp.gtu (r0, r2)
    927c:	81 c1 52 3f 	3f52c181       memw (r18 + #12) += #1 }
    9280:	01 41 03 f3 	f3034101     { r1 = add (r3, r1)
    9284:	9f e3 52 38 	3852e39f       if (p0) memw (r18 + #28) = #-1 }
    9288:	38 c1 92 44 	4492c138     if !p0 memw (r18 + #28) = r1
    928c:	5a c7 00 5a 	5a00c75a     call a140 <_Getpctype>
    9290:	61 c0 92 91 	9192c061     r1 = memw (r18 + #12)
    9294:	01 c0 21 91 	9121c001     r1 = memub (r1 + #0)
    9298:	02 7a e1 bf 	bfe17a02     { r2 = add (r1, #-48)
    929c:	83 c1 40 3a 	3a40c183       r3 = memh (r0 + r1 << #1) }
    92a0:	00 45 23 85 	85234500     { p0 = !tstbit (r3, #5)
    92a4:	e8 78 ff 5c 	5cff78e8       if !p0.new jump:t 9270 <_Scanf+0x320>
    92a8:	e2 7f 62 76 	76627fe2       r2 = sub (#-1, r2)
    92ac:	e0 c0 92 47 	4792c0e0       if !p0.new r0 = memw (r18 + #28) }
    92b0:	60 44 32 91 	91324460     { r0 = memub (r18 + #35)
    92b4:	08 c0 42 24 	2442c008       if (!cmp.eq (r0.new, #0)) jump:nt 92c0 <_Scanf+0x370> }
    92b8:	e0 40 92 91 	919240e0     { r0 = memw (r18 + #28)
    92bc:	56 c0 72 26 	2672c056       if (!cmp.eq (r0.new, #-1)) jump:nt 9164 <_Scanf+0x214> }
    92c0:	a7 10 a0 c3 	c3a010a7     r0 = memw (r18 + #12) ; memw (r18 + #28) = #0
    92c4:	9e 46 00 5a 	5a00469e     { call a000 <strchr>
    92c8:	07 44 00 00 	00004407       immext (#65984)
    92cc:	01 10 00 49 	49001001       r0 = ##66000 ; r1 = memub (r0 + #0) }
    92d0:	52 e0 70 10 	1070e052     p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:t 9174 <_Scanf+0x224>
    92d4:	60 40 92 91 	91924060     { r0 = memw (r18 + #12)
    92d8:	80 d0 12 3c 	3c12d080       memb (r18 + #33) = #0 }
    92dc:	62 7f ff 59 	59ff7f62     { jump 91a0 <_Scanf+0x250>
    92e0:	01 c0 20 91 	9120c001       r1 = memub (r0 + #0) }
    92e4:	21 c0 22 91 	9122c021     r1 = memub (r2 + #1)
    92e8:	80 4d 01 75 	75014d80     { p0 = cmp.eq (r1, #108)
    92ec:	5c 78 ff 5c 	5cff785c       if !p0.new jump:t 91a0 <_Scanf+0x250>
    92f0:	21 e0 00 74 	7400e021       if (p0.new) r1 = add (r0, #1) }
    92f4:	a2 7f ff 59 	59ff7fa2     { jump 9238 <_Scanf+0x2e8>
    92f8:	f1 d0 12 3c 	3c12d0f1       memb (r18 + #33) = #113 }
    92fc:	00 40 d4 d5 	d5d44000     { r0 = max (r20, r0)
    9300:	a4 ea 00 58 	5800eaa4       jump e844 <__restore_r16_through_r25_and_deallocframe> }
    9304:	56 7f ff 59 	59ff7f56     { jump 91b0 <_Scanf+0x260>
    9308:	21 c2 52 3f 	3f52c221       memw (r18 + #16) -= #1 }
    930c:	e0 7f 34 75 	75347fe0     { p0 = cmp.eq (r20, #-1)
    9310:	9c 6a 00 58 	58006a9c       jump e844 <__restore_r16_through_r25_and_deallocframe>
    9314:	00 e0 94 74 	7494e000       if !p0.new r0 = add (r20, #0) }
    9318:	00 c0 00 7f 	7f00c000     nop
    931c:	00 c0 00 7f 	7f00c000     nop

00009320 <_Tls_get__Mbstate>:
    9320:	20 40 00 78 	78004020     { r0 = #1
    9324:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    9328:	01 4f 00 00 	00004f01     { immext (#245824)
    932c:	10 c3 00 78 	7800c310       r16 = ##245848 }
    9330:	01 c0 10 92 	9210c001     r1 = memw_locked (r16)
    9334:	00 c0 41 75 	7541c000     p0 = cmp.gt (r1, #0)
    9338:	06 c0 00 5c 	5c00c006     if (p0) jump 9344 <_Tls_get__Mbstate+0x24>
    933c:	00 c0 b0 a0 	a0b0c000     memw_locked (r16, p0) = r0
    9340:	f8 e0 ff 5c 	5cffe0f8     if !p0 jump 9330 <_Tls_get__Mbstate+0x10>
    9344:	01 4f 00 00 	00004f01     { immext (#245824)
    9348:	80 41 00 78 	78004180       r0 = ##245836
    934c:	1a c0 01 10 	1001c01a       p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt 9378 <_Tls_get__Mbstate+0x58> }
    9350:	c0 42 80 49 	498042c0     { r0 = memw (gp + #88)
    9354:	00 c1 c2 24 	24c2c100       if (!cmp.gt (r0.new, #1)) jump:nt 9350 <_Tls_get__Mbstate+0x30> }
    9358:	94 72 00 5a 	5a007294     { call f880 <__sys_Tlsget>
    935c:	60 c2 80 49 	4980c260       r0 = memw (gp + #76) }
    9360:	10 40 60 70 	70604010     { r16 = r0
    9364:	16 40 00 10 	10004016       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 938c <_Tls_get__Mbstate+0x6c>
    9368:	00 68 00 7c 	7c006800       r1:0 = combine (#64, #1)
    936c:	00 c0 00 7f 	7f00c000       nop }
    9370:	00 40 70 70 	70704000     { r0 = r16
    9374:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    9378:	59 41 00 00 	00004159     { immext (#22080)
    937c:	01 46 00 78 	78004601       r1 = ##22128
    9380:	cc f2 00 5a 	5a00f2cc       call f910 <__sys_Tlsalloc> }
    9384:	e6 7f ff 59 	59ff7fe6     { jump 9350 <_Tls_get__Mbstate+0x30>
    9388:	02 c0 50 3c 	3c50c002       memw (r16 + #0) = #2 }
    938c:	da c2 00 5a 	5a00c2da     call 9940 <calloc>
    9390:	11 40 60 70 	70604011     { r17 = r0
    9394:	f0 40 30 10 	103040f0       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 9370 <_Tls_get__Mbstate+0x50>
    9398:	60 c2 80 49 	4980c260       r0 = memw (gp + #76) }
    939c:	01 40 71 70 	70714001     { r1 = r17
    93a0:	52 f2 00 5a 	5a00f252       call f840 <__sys_Tlsset> }
    93a4:	00 40 71 70 	70714000     { r0 = r17
    93a8:	0c c0 40 10 	1040c00c       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 93bc <_Tls_get__Mbstate+0x9c> }
    93ac:	88 c0 00 69 	6900c088     loop0 (93b0 <_Tls_get__Mbstate+0x90>, #16)
    93b0:	80 80 00 b0 	b0008080     { r0 = add (r0, #4)
    93b4:	00 30 98 70 	70983000       r16 = r17 ; memw (r0 + #0) = #0 }:endloop0
    93b8:	dc ff ff 59 	59ffffdc     jump 9370 <_Tls_get__Mbstate+0x50>
    93bc:	00 40 71 70 	70714000     { r0 = r17
    93c0:	5a e1 ff 5b 	5bffe15a       call 5670 <free> }
    93c4:	d6 ff ff 59 	59ffffd6     jump 9370 <_Tls_get__Mbstate+0x50>
    93c8:	00 40 00 7f 	7f004000     { nop
    93cc:	00 c0 00 7f 	7f00c000       nop }

000093d0 <_Getpmbstate>:
    93d0:	a8 ff ff 59 	59ffffa8     jump 9320 <_Tls_get__Mbstate>
    93d4:	00 40 00 7f 	7f004000     { nop
    93d8:	00 40 00 7f 	7f004000       nop
    93dc:	00 c0 00 7f 	7f00c000       nop }

000093e0 <_Tls_get__Mbcurmax>:
    93e0:	20 40 00 78 	78004020     { r0 = #1
    93e4:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    93e8:	01 4f 00 00 	00004f01     { immext (#245824)
    93ec:	90 c2 00 78 	7800c290       r16 = ##245844 }
    93f0:	01 c0 10 92 	9210c001     r1 = memw_locked (r16)
    93f4:	00 c0 41 75 	7541c000     p0 = cmp.gt (r1, #0)
    93f8:	06 c0 00 5c 	5c00c006     if (p0) jump 9404 <_Tls_get__Mbcurmax+0x24>
    93fc:	00 c0 b0 a0 	a0b0c000     memw_locked (r16, p0) = r0
    9400:	f8 e0 ff 5c 	5cffe0f8     if !p0 jump 93f0 <_Tls_get__Mbcurmax+0x10>
    9404:	01 4f 00 00 	00004f01     { immext (#245824)
    9408:	00 42 00 78 	78004200       r0 = ##245840
    940c:	16 c0 01 10 	1001c016       p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt 9430 <_Tls_get__Mbcurmax+0x50> }
    9410:	a0 42 80 49 	498042a0     { r0 = memw (gp + #84)
    9414:	00 c1 c2 24 	24c2c100       if (!cmp.gt (r0.new, #1)) jump:nt 9410 <_Tls_get__Mbcurmax+0x30> }
    9418:	34 72 00 5a 	5a007234     { call f880 <__sys_Tlsget>
    941c:	80 c2 80 49 	4980c280       r0 = memw (gp + #80) }
    9420:	12 40 00 10 	10004012     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 9444 <_Tls_get__Mbcurmax+0x64>
    9424:	28 3c 08 30 	30083c28       r16 = r0 ; r1:0 = combine (#1, #1) }
    9428:	00 40 70 70 	70704000     { r0 = r16
    942c:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    9430:	59 41 00 00 	00004159     { immext (#22080)
    9434:	01 46 00 78 	78004601       r1 = ##22128
    9438:	70 f2 00 5a 	5a00f270       call f910 <__sys_Tlsalloc> }
    943c:	ea 7f ff 59 	59ff7fea     { jump 9410 <_Tls_get__Mbcurmax+0x30>
    9440:	02 c0 50 3c 	3c50c002       memw (r16 + #0) = #2 }
    9444:	7e c2 00 5a 	5a00c27e     call 9940 <calloc>
    9448:	11 40 60 70 	70604011     { r17 = r0
    944c:	f0 40 30 10 	103040f0       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 9428 <_Tls_get__Mbcurmax+0x48>
    9450:	80 c2 80 49 	4980c280       r0 = memw (gp + #80) }
    9454:	01 40 71 70 	70714001     { r1 = r17
    9458:	f6 f1 00 5a 	5a00f1f6       call f840 <__sys_Tlsset> }
    945c:	10 60 11 74 	74116010     { if (p0.new) r16 = add (r17, #0)
    9460:	e6 60 30 10 	103060e6       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:t 9428 <_Tls_get__Mbcurmax+0x48>
    9464:	06 c0 11 39 	3911c006       if (p0.new) memb (r17 + #0) = #6 }
    9468:	00 40 71 70 	70714000     { r0 = r17
    946c:	04 e1 ff 5b 	5bffe104       call 5670 <free> }
    9470:	dc ff ff 59 	59ffffdc     jump 9428 <_Tls_get__Mbcurmax+0x48>
    9474:	00 40 00 7f 	7f004000     { nop
    9478:	00 40 00 7f 	7f004000       nop
    947c:	00 c0 00 7f 	7f00c000       nop }

00009480 <_Getmbcurmax>:
    9480:	b0 7f ff 5b 	5bff7fb0     { call 93e0 <_Tls_get__Mbcurmax>
    9484:	00 c0 9d a0 	a09dc000       allocframe (#0) }
    9488:	40 3f 00 10 	10003f40     r0 = memub (r0 + #0) ; dealloc_return
    948c:	00 c0 00 7f 	7f00c000     nop

00009490 <_Unlocksyslock>:
    9490:	21 c3 80 49 	4980c321     r1 = memw (gp + #100)
    9494:	00 40 41 f2 	f2414000     { p0 = cmp.gt (r1, r0)
    9498:	00 d8 7f 53 	537fd800       if !p0.new jumpr:t r31 }
    949c:	4a 4d 00 00 	00004d4a     { immext (#217728)
    94a0:	04 42 20 de 	de204204       r0 = add (##217760, asl (r0, #2))
    94a4:	aa ef 00 58 	5800efaa       jump f3f0 <__sys_Mtxunlock> }
    94a8:	00 40 00 7f 	7f004000     { nop
    94ac:	00 c0 00 7f 	7f00c000       nop }

000094b0 <_Unlockfilelock>:
    94b0:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    94b4:	00 48 5f 53 	535f4800       if (p0.new) jumpr:nt r31
    94b8:	e1 c2 80 49 	4980c2e1       r1 = memw (gp + #92) }
    94bc:	40 c0 20 91 	9120c040     r0 = memub (r0 + #2)
    94c0:	00 40 41 f2 	f2414000     { p0 = cmp.gt (r1, r0)
    94c4:	00 d8 7f 53 	537fd800       if !p0.new jumpr:t r31 }
    94c8:	49 4d 00 00 	00004d49     { immext (#217664)
    94cc:	04 62 00 de 	de006204       r0 = add (##217680, asl (r0, #2))
    94d0:	94 ef 00 58 	5800ef94       jump f3f0 <__sys_Mtxunlock> }
    94d4:	00 40 00 7f 	7f004000     { nop
    94d8:	00 40 00 7f 	7f004000       nop
    94dc:	00 c0 00 7f 	7f00c000       nop }

000094e0 <_Initlocks>:
    94e0:	49 4d 00 00 	00004d49     { immext (#217664)
    94e4:	10 42 00 78 	78004210       r16 = ##217680
    94e8:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    94ec:	11 ca 10 b0 	b010ca11     r17 = add (r16, #80)
    94f0:	98 6f 00 5a 	5a006f98     { call f420 <__sys_Mtxinit>
    94f4:	80 30 48 20 	20483080       r16 = add (r16, #4) ; r0 = r16 }
    94f8:	80 42 00 78 	78004280     { r0 = #20
    94fc:	fc e9 78 14 	1478e9fc       p0 = cmp.eq (r16, r17) ; if (!p0.new) jump:t 94f0 <_Initlocks+0x10> }
    9500:	4a 4d 00 00 	00004d4a     { immext (#217728)
    9504:	10 44 00 78 	78004410       r16 = ##217760
    9508:	17 c0 80 48 	4880c017       memw (gp + #92) = r0 }
    950c:	11 c2 10 b0 	b010c211     r17 = add (r16, #16)
    9510:	88 6f 00 5a 	5a006f88     { call f420 <__sys_Mtxinit>
    9514:	80 30 48 20 	20483080       r16 = add (r16, #4) ; r0 = r16 }
    9518:	80 40 00 78 	78004080     { r0 = #4
    951c:	fc 69 78 14 	147869fc       p0 = cmp.eq (r16, r17) ; if (!p0.new) jump:t 9510 <_Initlocks+0x30>
    9520:	10 c0 dd 43 	43ddc010       if (p0.new) r17:16 = memd (r29 + #0) }
    9524:	19 c0 80 48 	4880c019     memw (gp + #100) = r0
    9528:	1e c0 1e 96 	961ec01e     dealloc_return
    952c:	00 c0 00 7f 	7f00c000     nop

00009530 <_Locksyslock>:
    9530:	21 40 00 78 	78004021     { r1 = #1
    9534:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    9538:	01 4f 00 00 	00004f01     { immext (#245824)
    953c:	10 c4 00 78 	7800c410       r16 = ##245856 }
    9540:	02 c0 10 92 	9210c002     r2 = memw_locked (r16)
    9544:	00 c0 42 75 	7542c000     p0 = cmp.gt (r2, #0)
    9548:	06 c0 00 5c 	5c00c006     if (p0) jump 9554 <_Locksyslock+0x24>
    954c:	00 c1 b0 a0 	a0b0c100     memw_locked (r16, p0) = r1
    9550:	f8 e0 ff 5c 	5cffe0f8     if !p0 jump 9540 <_Locksyslock+0x10>
    9554:	18 40 02 10 	10024018     { p0 = cmp.eq (r2, #0) ; if (p0.new) jump:nt 9584 <_Locksyslock+0x54>
    9558:	00 40 00 7f 	7f004000       nop
    955c:	08 c0 9d 42 	429dc008       if (p0.new) memw (r29 + #4) = r0 }
    9560:	01 43 80 49 	49804301     { r1 = memw (gp + #96)
    9564:	00 c1 c3 24 	24c3c100       if (!cmp.gt (r1.new, #1)) jump:nt 9560 <_Locksyslock+0x30> }
    9568:	21 43 80 49 	49804321     { r1 = memw (gp + #100)
    956c:	06 c0 83 20 	2083c006       if (cmp.gt (r1.new, r0)) jump:nt 9574 <_Locksyslock+0x44> }
    9570:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    9574:	4a 4d 00 00 	00004d4a     { immext (#217728)
    9578:	04 42 20 de 	de204204       r0 = add (##217760, asl (r0, #2))
    957c:	00 1f 0c 3e 	3e0c1f00       r17:16 = memd (sp + #8) ; deallocframe }
    9580:	18 ef 00 58 	5800ef18     jump f3b0 <__lockMutex>
    9584:	ae ff ff 5b 	5bffffae     call 94e0 <_Initlocks>
    9588:	ec 7f ff 59 	59ff7fec     { jump 9560 <_Locksyslock+0x30>
    958c:	20 40 9d 91 	919d4020       r0 = memw (r29 + #4)
    9590:	02 c0 50 3c 	3c50c002       memw (r16 + #0) = #2 }
    9594:	00 40 00 7f 	7f004000     { nop
    9598:	00 40 00 7f 	7f004000       nop
    959c:	00 c0 00 7f 	7f00c000       nop }

000095a0 <_Lockfilelock>:
    95a0:	21 40 00 78 	78004021     { r1 = #1
    95a4:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    95a8:	01 4f 00 00 	00004f01     { immext (#245824)
    95ac:	10 c4 00 78 	7800c410       r16 = ##245856 }
    95b0:	02 c0 10 92 	9210c002     r2 = memw_locked (r16)
    95b4:	00 c0 42 75 	7542c000     p0 = cmp.gt (r2, #0)
    95b8:	06 c0 00 5c 	5c00c006     if (p0) jump 95c4 <_Lockfilelock+0x24>
    95bc:	00 c1 b0 a0 	a0b0c100     memw_locked (r16, p0) = r1
    95c0:	f8 e0 ff 5c 	5cffe0f8     if !p0 jump 95b0 <_Lockfilelock+0x10>
    95c4:	1c 40 02 10 	1002401c     { p0 = cmp.eq (r2, #0) ; if (p0.new) jump:nt 95fc <_Lockfilelock+0x5c>
    95c8:	00 40 00 7f 	7f004000       nop
    95cc:	08 c0 9d 42 	429dc008       if (p0.new) memw (r29 + #4) = r0 }
    95d0:	01 43 80 49 	49804301     { r1 = memw (gp + #96)
    95d4:	00 c1 c3 24 	24c3c100       if (!cmp.gt (r1.new, #1)) jump:nt 95d0 <_Lockfilelock+0x30> }
    95d8:	08 40 00 10 	10004008     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 95e8 <_Lockfilelock+0x48>
    95dc:	e1 c2 80 49 	4980c2e1       r1 = memw (gp + #92) }
    95e0:	0c 3e 00 12 	12003e0c     r0 = memub (r0 + #2) ; r17:16 = memd (sp + #8)
    95e4:	04 c0 81 14 	1481c004     p0 = cmp.gt (r1, r0) ; if (p0.new) jump:nt 95ec <_Lockfilelock+0x4c>
    95e8:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    95ec:	49 4d 00 00 	00004d49     { immext (#217664)
    95f0:	04 62 00 de 	de006204       r0 = add (##217680, asl (r0, #2))
    95f4:	e2 6e 00 58 	58006ee2       jump f3b0 <__lockMutex>
    95f8:	1e c0 1e 90 	901ec01e       deallocframe }
    95fc:	72 ff ff 5b 	5bffff72     call 94e0 <_Initlocks>
    9600:	e8 7f ff 59 	59ff7fe8     { jump 95d0 <_Lockfilelock+0x30>
    9604:	20 40 9d 91 	919d4020       r0 = memw (r29 + #4)
    9608:	02 c0 50 3c 	3c50c002       memw (r16 + #0) = #2 }
    960c:	00 c0 00 7f 	7f00c000     nop

00009610 <_Clearlocks>:
    9610:	00 40 00 78 	78004000     { r0 = #0
    9614:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    9618:	49 4d 00 00 	00004d49     { immext (#217664)
    961c:	10 42 00 78 	78004210       r16 = ##217680
    9620:	17 c0 80 48 	4880c017       memw (gp + #92) = r0 }
    9624:	11 ca 10 b0 	b010ca11     r17 = add (r16, #80)
    9628:	04 6f 00 5a 	5a006f04     { call f430 <__sys_Mtxdst>
    962c:	80 30 48 20 	20483080       r16 = add (r16, #4) ; r0 = r16 }
    9630:	00 40 00 78 	78004000     { r0 = #0
    9634:	fc e9 78 14 	1478e9fc       p0 = cmp.eq (r16, r17) ; if (!p0.new) jump:t 9628 <_Clearlocks+0x18> }
    9638:	4a 4d 00 00 	00004d4a     { immext (#217728)
    963c:	10 44 00 78 	78004410       r16 = ##217760
    9640:	19 c0 80 48 	4880c019       memw (gp + #100) = r0 }
    9644:	11 c2 10 b0 	b010c211     r17 = add (r16, #16)
    9648:	f4 6e 00 5a 	5a006ef4     { call f430 <__sys_Mtxdst>
    964c:	80 30 48 20 	20483080       r16 = add (r16, #4) ; r0 = r16 }
    9650:	fc 69 78 14 	147869fc     { p0 = cmp.eq (r16, r17) ; if (!p0.new) jump:t 9648 <_Clearlocks+0x38>
    9654:	10 c0 dd 43 	43ddc010       if (p0.new) r17:16 = memd (r29 + #0) }
    9658:	1e c0 1e 96 	961ec01e     dealloc_return
    965c:	00 c0 00 7f 	7f00c000     nop

00009660 <_Vacopy>:
    9660:	10 3c 42 68 	68423c10     r2 = #4 ; allocframe (#8)
    9664:	f6 65 ff 5b 	5bff65f6     { call 6250 <memcpy>
    9668:	11 28 11 6c 	6c112811       r1 = add (sp, #4) ; memw (sp + #4) = r1 }
    966c:	1e c0 1e 96 	961ec01e     dealloc_return

00009670 <_Wctob>:
    9670:	10 40 80 11 	11804010     { p0 = cmp.eq (r0, #-1) ; if (p0.new) jump:nt 9690 <_Wctob+0x20>
    9674:	20 3c 02 7c 	7c023c20       r5:4 = combine (#0, #0) ; allocframe (#16) }
    9678:	02 40 7d 70 	707d4002     { r2 = r29
    967c:	00 41 1d b0 	b01d4100       r0 = add (r29, #8)
    9680:	02 2a 01 70 	70012a02       r1 = r0 ; memd (sp + #0) = r5:4 }
    9684:	26 c1 00 5a 	5a00c126     call 98d0 <_Wctomb>
    9688:	06 41 00 10 	10004106     { p0 = cmp.eq (r0, #1) ; if (p0.new) jump:nt 9694 <_Wctob+0x24>
    968c:	00 c1 3d 91 	913dc100       r0 = memub (r29 + #8) }
    9690:	40 3f 00 5a 	5a003f40     r0 = #-1 ; dealloc_return
    9694:	1e c0 1e 96 	961ec01e     dealloc_return
    9698:	00 c0 00 7f 	7f00c000     nop
    969c:	00 c0 00 7f 	7f00c000     nop

000096a0 <_Wctombx>:
    96a0:	90 68 00 5a 	5a006890     { call e7c0 <__save_r16_through_r27>
    96a4:	06 c0 9d a0 	a09dc006       allocframe (#48) }
    96a8:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    96ac:	16 40 64 70 	70644016       r22 = r4
    96b0:	33 00 2a 50 	502a0033       r18 = r2 ; r3 = memw (r3 + #0) }
    96b4:	70 c0 03 10 	1003c070     p0 = cmp.eq (r3, #0) ; if (p0.new) jump:nt 9794 <_Wctombx+0xf4>
    96b8:	b8 40 08 10 	100840b8     { p0 = cmp.eq (r16, #0) ; if (p0.new) jump:nt 9828 <_Wctombx+0x188>
    96bc:	60 c0 62 91 	9162c060       r0 = memuh (r2 + #6) }
    96c0:	e0 5f 00 76 	76005fe0     { r0 = and (r0, #255)
    96c4:	56 cf 02 25 	2502cf56       if (cmp.gtu (r0.new, #15)) jump:nt 976c <_Wctombx+0xcc> }
    96c8:	14 40 00 78 	78004014     { r20 = #0
    96cc:	15 60 84 3a 	3a846015       r21 = memw (r4 + r0 << #2)
    96d0:	52 c0 03 24 	2403c052       if (cmp.eq (r21.new, #0)) jump:nt 976c <_Wctombx+0xcc> }
    96d4:	13 40 00 78 	78004013     { r19 = #0
    96d8:	f7 7d 07 78 	78077df7       r23 = #4079
    96dc:	19 40 08 78 	78084019       r25 = #4096
    96e0:	18 c0 10 78 	7810c018       r24 = #8192 }
    96e4:	1a c0 40 78 	7840c01a     r26 = #16384
    96e8:	cc fe ff 5b 	5bfffecc     call 9480 <_Getmbcurmax>
    96ec:	33 60 13 74 	74136033     { if (p0.new) r19 = add (r19, #1)
    96f0:	40 cc c0 14 	14c0cc40       p0 = cmp.gt (r0, r20) ; if (!p0.new) jump:nt 976c <_Wctombx+0xcc> }
    96f4:	e0 5f 11 76 	76115fe0     { r0 = and (r17, #255)
    96f8:	3c cf 8b 14 	148bcf3c       p0 = cmp.gt (r19, r23) ; if (p0.new) jump:nt 976c <_Wctombx+0xcc> }
    96fc:	80 40 75 3a 	3a754080     { r0 = memuh (r21 + r0 << #1)
    9700:	38 c0 02 24 	2402c038       if (cmp.eq (r0.new, #0)) jump:nt 976c <_Wctombx+0xcc> }
    9704:	02 44 20 8d 	8d204402     { r2 = extractu (r0, #4, #8)
    9708:	01 40 e0 70 	70e04001       r1 = sxth (r0)
    970c:	3e c0 c3 26 	26c3c03e       if (!cmp.gt (r1.new, #-1)) jump:nt 9780 <_Wctombx+0xe0> }
    9710:	00 59 80 c7 	c7805900     { p0 = bitsclr (r0, r25)
    9714:	0a c8 00 5c 	5c00c80a       if (p0.new) jump:nt 9724 <_Wctombx+0x84> }
    9718:	21 d8 11 8c 	8c11d821     r1 = lsr (r17, #24)
    971c:	c1 c8 51 8e 	8e51c8c1     r1 |= asl (r17, #8)
    9720:	11 c0 61 70 	7061c011     r17 = r1
    9724:	00 58 80 c7 	c7805800     { p0 = bitsclr (r0, r24)
    9728:	1c 48 00 5c 	5c00481c       if (p0.new) jump:nt 975c <_Wctombx+0xbc>
    972c:	00 c0 00 7f 	7f00c000       nop }
    9730:	00 40 00 dd 	dd004000     { p0 = cmpb.eq (r0, #0)
    9734:	2e 48 00 5c 	5c00482e       if (p0.new) jump:nt 978c <_Wctombx+0xec>
    9738:	e1 5f 00 76 	76005fe1       r1 = and (r0, #255)
    973c:	00 c0 00 7f 	7f00c000       nop }
    9740:	34 40 14 b0 	b0144034     { r20 = add (r20, #1)
    9744:	0c 40 41 10 	1041400c       p0 = cmp.eq (r1, #0) ; if (!p0.new) jump:nt 9758 <_Wctombx+0xb8>
    9748:	01 d4 10 3b 	3b10d401       memb (r16 + r20 << #0) = r1 }
    974c:	03 c2 52 a1 	a152c203     memh (r18 + #6) = r2
    9750:	43 41 00 00 	00004143     { immext (#20672)
    9754:	60 c0 0c 17 	170cc060       r0 = r20 ; jump e840 <__restore_r16_through_r27_and_deallocframe> }
    9758:	13 c0 00 78 	7800c013     r19 = #0
    975c:	00 5a 80 c7 	c7805a00     { p0 = bitsclr (r0, r26)
    9760:	f8 68 ff 5c 	5cff68f8       if !p0.new jump:nt 974c <_Wctombx+0xac>
    9764:	15 e2 96 32 	3296e215       if (p0.new) r21 = memw (r22 + r2 << #2) }
    9768:	c0 c0 7d 10 	107dc0c0     p0 = cmp.eq (r21, #0) ; if (!p0.new) jump:nt 96e8 <_Wctombx+0x48>
    976c:	52 c1 00 5a 	5a00c152     call 9a10 <_Geterrno>
    9770:	f4 7f df 78 	78df7ff4     { r20 = #-1
    9774:	58 c0 40 3c 	3c40c058       memw (r0 + #0) = #88 }
    9778:	43 41 00 00 	00004143     { immext (#20672)
    977c:	10 c0 0c 17 	170cc010       r0 = r20 ; jump e840 <__restore_r16_through_r27_and_deallocframe> }
    9780:	e1 df 00 76 	7600dfe1     r1 = and (r0, #255)
    9784:	11 48 01 8f 	8f014811     { r17 = insert (r1, #8, #0)
    9788:	c6 ff ff 59 	59ffffc6       jump 9710 <_Wctombx+0x70> }
    978c:	e1 5f 11 76 	76115fe1     { r1 = and (r17, #255)
    9790:	da ff ff 59 	59ffffda       jump 9740 <_Wctombx+0xa0> }
    9794:	00 70 31 76 	76317000     { r0 = and (r17, #-128)
    9798:	72 c0 08 10 	1008c072       p0 = cmp.eq (r16, #0) ; if (p0.new) jump:nt 9878 <_Wctombx+0x1d8> }
    979c:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    97a0:	14 e0 10 74 	7410e014       if (p0.new) r20 = add (r16, #0) }
    97a4:	e0 7f ff 0f 	0fff7fe0     { immext (#4294965248)
    97a8:	00 40 11 76 	76114000       r0 = and (r17, ##-2048)
    97ac:	3c 40 00 5c 	5c00403c       if (p0) jump 981c <_Wctombx+0x17c>
    97b0:	08 f1 14 ab 	ab14f108       if (p0) memb (r20 ++ #1) = r17 }
    97b4:	4a 40 00 10 	1000404a     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 9848 <_Wctombx+0x1a8>
    97b8:	83 30 1c 28 	281c3083       r20 = #1 ; r3 = r16 }
    97bc:	00 7c ff 0f 	0fff7c00     { immext (#4294901760)
    97c0:	00 40 11 76 	76114000       r0 = and (r17, ##-65536)
    97c4:	4e c0 42 24 	2442c04e       if (!cmp.eq (r0.new, #0)) jump:nt 9858 <_Wctombx+0x1b8> }
    97c8:	00 4c 11 8c 	8c114c00     { r0 = asr (r17, #12)
    97cc:	83 30 2c 28 	282c3083       r20 = #2 ; r3 = r16 }
    97d0:	00 7c a0 76 	76a07c00     { r0 = or (r0, #-32)
    97d4:	00 40 00 7f 	7f004000       nop
    97d8:	00 40 00 7f 	7f004000       nop
    97dc:	08 c6 a3 ab 	aba3c608       memb (r3 ++ #1) = r0.new }
    97e0:	ff 7f ff 0f 	0fff7fff     { immext (#4294967232)
    97e4:	46 60 74 d8 	d8746046       r0 = add (##4294967290, mpyi (r20, #6))
    97e8:	01 c0 63 70 	7063c001       r1 = r3 }
    97ec:	22 c1 00 8c 	8c00c122     r2 = lsr (r0, #1)
    97f0:	aa 6a aa 02 	02aa6aaa     { immext (#715827840)
    97f4:	62 c5 02 e0 	e002c562       r2 = + mpyi (r2, ##715827883) }
    97f8:	22 df c2 8c 	8cc2df22     r2 = clrbit (r2, #31)
    97fc:	22 c0 02 b0 	b002c022     r2 = add (r2, #1)
    9800:	08 c0 02 60 	6002c008     loop0 (9804 <_Wctombx+0x164>, r2)
    9804:	02 40 51 c6 	c6514002     { r2 = asr (r17, r0)
    9808:	40 ff e0 bf 	bfe0ff40       r0 = add (r0, #-6) }
    980c:	e2 c7 02 76 	7602c7e2     r2 = and (r2, #63)
    9810:	02 b0 a2 76 	76a2b002     { r2 = or (r2, #-128)
    9814:	08 c2 a1 ab 	aba1c208       memb (r1 ++ #1) = r2.new }:endloop0
    9818:	14 d4 03 f3 	f303d414     r20 = add (r3, r20)
    981c:	14 d4 30 f3 	f330d414     r20 = sub (r20, r16)
    9820:	40 41 00 00 	00004140     { immext (#20480)
    9824:	40 c0 0c 17 	170cc040       r0 = r20 ; jump e840 <__restore_r16_through_r27_and_deallocframe> }
    9828:	12 40 00 69 	69004012     { loop0 (9830 <_Wctombx+0x190>, #2)
    982c:	00 c0 00 7f 	7f00c000       nop }
    9830:	00 80 00 7f 	7f008000     { nop
    9834:	a0 30 4a 60 	604a30a0       r18 = add (r18, #4) ; memw (r18 + #0) = #0 }:endloop0
    9838:	14 c0 63 91 	9163c014     r20 = memuh (r3 + #0)
    983c:	3c 40 00 00 	0000403c     { immext (#3840)
    9840:	14 40 14 76 	76144014       r20 = and (r20, ##3840)
    9844:	8a ff ff 59 	59ffff8a       jump 9750 <_Wctombx+0xb0> }
    9848:	00 c6 11 8c 	8c11c600     r0 = asr (r17, #6)
    984c:	00 78 a0 76 	76a07800     { r0 = or (r0, #-64)
    9850:	ca 7f ff 59 	59ff7fca       jump 97e0 <_Wctombx+0x140>
    9854:	08 c4 a3 ab 	aba3c408       memb (r3 ++ #1) = r0.new }
    9858:	00 40 fe 0f 	0ffe4000     { immext (#4292870144)
    985c:	00 40 11 76 	76114000       r0 = and (r17, ##-2097152)
    9860:	1a c0 42 24 	2442c01a       if (!cmp.eq (r0.new, #0)) jump:nt 988c <_Wctombx+0x1ec> }
    9864:	00 52 11 8c 	8c115200     { r0 = asr (r17, #18)
    9868:	83 30 3c 28 	283c3083       r20 = #3 ; r3 = r16 }
    986c:	00 7e a0 76 	76a07e00     { r0 = or (r0, #-16)
    9870:	ba 7f ff 59 	59ff7fba       jump 97e0 <_Wctombx+0x140>
    9874:	08 c4 a3 ab 	aba3c408       memb (r3 ++ #1) = r0.new }
    9878:	12 40 00 69 	69004012     { loop0 (9880 <_Wctombx+0x1e0>, #2)
    987c:	00 c0 00 7f 	7f00c000       nop }
    9880:	92 80 12 b0 	b0128092     { r18 = add (r18, #4)
    9884:	a0 30 0c 68 	680c30a0       r20 = #0 ; memw (r18 + #0) = #0 }:endloop0
    9888:	64 ff ff 59 	59ffff64     jump 9750 <_Wctombx+0xb0>
    988c:	00 40 c0 0f 	0fc04000     { immext (#4227858432)
    9890:	00 40 11 76 	76114000       r0 = and (r17, ##-67108864)
    9894:	10 c0 42 24 	2442c010       if (!cmp.eq (r0.new, #0)) jump:nt 98ac <_Wctombx+0x20c> }
    9898:	00 58 11 8c 	8c115800     { r0 = asr (r17, #24)
    989c:	83 30 4c 28 	284c3083       r20 = #4 ; r3 = r16 }
    98a0:	00 7f a0 76 	76a07f00     { r0 = or (r0, #-8)
    98a4:	a0 7f ff 59 	59ff7fa0       jump 97e0 <_Wctombx+0x140>
    98a8:	08 c4 a3 ab 	aba3c408       memb (r3 ++ #1) = r0.new }
    98ac:	03 40 70 70 	70704003     { r3 = r16
    98b0:	90 30 5c 28 	285c3090       r20 = #5 ; r0 = r17 }
    98b4:	ff 7f ff 0f 	0fff7fff     { immext (#4294967232)
    98b8:	d2 7e 20 de 	de207ed2       r0 = or (##4294967292, lsr (r0, #30))
    98bc:	96 7f ff 59 	59ff7f96       jump 97e0 <_Wctombx+0x140>
    98c0:	08 c4 a3 ab 	aba3c408       memb (r3 ++ #1) = r0.new }
    98c4:	00 40 00 7f 	7f004000     { nop
    98c8:	00 40 00 7f 	7f004000       nop
    98cc:	00 c0 00 7f 	7f00c000       nop }

000098d0 <_Wctomb>:
    98d0:	10 40 60 70 	70604010     { r16 = r0
    98d4:	30 1c f4 eb 	ebf41c30       memd (sp + #-16) = r17:16 ; allocframe (#24) }
    98d8:	24 7d ff 5b 	5bff7d24     { call 9320 <_Tls_get__Mbstate>
    98dc:	12 08 21 e8 	e8210812       memw (sp + #8) = r1 ; memw (sp + #4) = r2 }
    98e0:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    98e4:	03 40 60 70 	70604003       r3 = r0
    98e8:	12 1c 21 3c 	3c211c12       r1 = memw (sp + #8) ; r2 = memw (sp + #4) }
    98ec:	18 c0 00 5c 	5c00c018     if (p0) jump 991c <_Wctomb+0x4c>
    98f0:	16 40 08 10 	10084016     { p0 = cmp.eq (r16, #0) ; if (p0.new) jump:nt 991c <_Wctomb+0x4c>
    98f4:	10 41 9d 46 	469d4110       if !p0.new memw (r29 + #8) = r1
    98f8:	08 c2 9d 46 	469dc208       if !p0.new memw (r29 + #4) = r2 }
    98fc:	3a 61 00 5a 	5a00613a     { call db70 <_Tls_get__Wcstate>
    9900:	03 c0 9d a1 	a19dc003       memw (r29 + #12) = r0 }
    9904:	04 40 60 70 	70604004     { r4 = r0
    9908:	00 40 70 70 	70704000       r0 = r16
    990c:	12 1c 33 3c 	3c331c12       r3 = memw (sp + #12) ; r2 = memw (sp + #4) }
    9910:	14 1e 21 3c 	3c211e14     r1 = memw (sp + #8) ; r17:16 = memd (sp + #16)
    9914:	c6 7e ff 59 	59ff7ec6     { jump 96a0 <_Wctombx>
    9918:	1e c0 1e 90 	901ec01e       deallocframe }
    991c:	00 40 70 70 	70704000     { r0 = r16
    9920:	04 40 00 78 	78004004       r4 = #0
    9924:	00 1f 14 3e 	3e141f00       r17:16 = memd (sp + #16) ; deallocframe }
    9928:	bc fe ff 59 	59fffebc     jump 96a0 <_Wctombx>
    992c:	00 c0 00 7f 	7f00c000     nop

00009930 <abort>:
    9930:	b0 42 00 5a 	5a0042b0     { call 9e90 <raise>
    9934:	00 3c 60 68 	68603c00       r0 = #6 ; allocframe (#0) }
    9938:	20 40 00 78 	78004020     { r0 = #1
    993c:	a4 c0 00 5a 	5a00c0a4       call 9a80 <exit> }

00009940 <calloc>:
    9940:	11 40 01 ed 	ed014011     { r17 = mpyi (r1, r0)
    9944:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    9948:	00 40 71 70 	70714000     { r0 = r17
    994c:	e4 df ff 5b 	5bffdfe4       call 5910 <malloc> }
    9950:	08 40 00 10 	10004008     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 9960 <calloc+0x20>
    9954:	92 30 08 30 	30083092       r16 = r0 ; r2 = r17 }
    9958:	01 40 00 78 	78004001     { r1 = #0
    995c:	f4 e5 ff 5b 	5bffe5f4       call 6540 <memset> }
    9960:	00 40 70 70 	70704000     { r0 = r16
    9964:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    9968:	00 c0 00 7f 	7f00c000     nop
    996c:	00 c0 00 7f 	7f00c000     nop

00009970 <_Tls_get__Errno>:
    9970:	20 40 00 78 	78004020     { r0 = #1
    9974:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    9978:	01 4f 00 00 	00004f01     { immext (#245824)
    997c:	90 c5 00 78 	7800c590       r16 = ##245868 }
    9980:	01 c0 10 92 	9210c001     r1 = memw_locked (r16)
    9984:	00 c0 41 75 	7541c000     p0 = cmp.gt (r1, #0)
    9988:	06 c0 00 5c 	5c00c006     if (p0) jump 9994 <_Tls_get__Errno+0x24>
    998c:	00 c0 b0 a0 	a0b0c000     memw_locked (r16, p0) = r0
    9990:	f8 e0 ff 5c 	5cffe0f8     if !p0 jump 9980 <_Tls_get__Errno+0x10>
    9994:	01 4f 00 00 	00004f01     { immext (#245824)
    9998:	00 45 00 78 	78004500       r0 = ##245864
    999c:	1a c0 01 10 	1001c01a       p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt 99c8 <_Tls_get__Errno+0x58> }
    99a0:	60 43 80 49 	49804360     { r0 = memw (gp + #108)
    99a4:	00 c1 c2 24 	24c2c100       if (!cmp.gt (r0.new, #1)) jump:nt 99a0 <_Tls_get__Errno+0x30> }
    99a8:	6c 6f 00 5a 	5a006f6c     { call f880 <__sys_Tlsget>
    99ac:	40 c3 80 49 	4980c340       r0 = memw (gp + #104) }
    99b0:	10 40 60 70 	70604010     { r16 = r0
    99b4:	16 40 00 10 	10004016       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 99dc <_Tls_get__Errno+0x6c>
    99b8:	80 60 00 7c 	7c006080       r1:0 = combine (#4, #1)
    99bc:	00 c0 00 7f 	7f00c000       nop }
    99c0:	00 40 70 70 	70704000     { r0 = r16
    99c4:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    99c8:	59 41 00 00 	00004159     { immext (#22080)
    99cc:	01 46 00 78 	78004601       r1 = ##22128
    99d0:	a4 ef 00 5a 	5a00efa4       call f910 <__sys_Tlsalloc> }
    99d4:	e6 7f ff 59 	59ff7fe6     { jump 99a0 <_Tls_get__Errno+0x30>
    99d8:	02 c0 50 3c 	3c50c002       memw (r16 + #0) = #2 }
    99dc:	b2 ff ff 5b 	5bffffb2     call 9940 <calloc>
    99e0:	11 40 60 70 	70604011     { r17 = r0
    99e4:	f0 40 30 10 	103040f0       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 99c0 <_Tls_get__Errno+0x50>
    99e8:	40 c3 80 49 	4980c340       r0 = memw (gp + #104) }
    99ec:	01 40 71 70 	70714001     { r1 = r17
    99f0:	2a ef 00 5a 	5a00ef2a       call f840 <__sys_Tlsset> }
    99f4:	10 60 11 74 	74116010     { if (p0.new) r16 = add (r17, #0)
    99f8:	e6 60 30 10 	103060e6       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:t 99c0 <_Tls_get__Errno+0x50>
    99fc:	00 c0 51 39 	3951c000       if (p0.new) memw (r17 + #0) = #0 }
    9a00:	00 40 71 70 	70714000     { r0 = r17
    9a04:	38 de ff 5b 	5bffde38       call 5670 <free> }
    9a08:	dc ff ff 59 	59ffffdc     jump 99c0 <_Tls_get__Errno+0x50>
    9a0c:	00 c0 00 7f 	7f00c000     nop

00009a10 <_Geterrno>:
    9a10:	b0 ff ff 59 	59ffffb0     jump 9970 <_Tls_get__Errno>
    9a14:	00 c0 00 7f 	7f00c000     nop
    9a18:	00 c0 00 7f 	7f00c000     nop
    9a1c:	00 c0 00 7f 	7f00c000     nop

00009a20 <atexit>:
    9a20:	11 40 60 70 	70604011     { r17 = r0
    9a24:	20 40 00 78 	78004020       r0 = #1
    9a28:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    9a2c:	82 fd ff 5b 	5bfffd82     call 9530 <_Locksyslock>
    9a30:	81 43 80 49 	49804381     { r1 = memw (gp + #112)
    9a34:	a0 c1 80 49 	4980c1a0       r0 = memw (gp + #52) }
    9a38:	16 41 40 15 	15404116     { p0 = cmp.gtu (r0, r1) ; if (!p0.new) jump:nt 9a64 <atexit+0x44>
    9a3c:	00 c0 00 7f 	7f00c000       nop }
    9a40:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    9a44:	10 40 00 78 	78004010       r16 = #0
    9a48:	c1 c1 80 49 	4980c1c1       r1 = memw (gp + #56) }
    9a4c:	11 60 81 3b 	3b816011     { memw (r1 + r0 << #2) = r17
    9a50:	0d c0 80 48 	4880c00d       memw (gp + #52) = r0 }
    9a54:	20 40 00 78 	78004020     { r0 = #1
    9a58:	1e fd ff 5b 	5bfffd1e       call 9490 <_Unlocksyslock> }
    9a5c:	00 40 70 70 	70704000     { r0 = r16
    9a60:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    9a64:	e6 e0 00 5a 	5a00e0e6     call dc30 <_Atrealloc>
    9a68:	f0 7f 0f 7e 	7e0f7ff0     { if (p0.new) r16 = #-1
    9a6c:	f6 40 30 10 	103040f6       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 9a54 <atexit+0x34>
    9a70:	a0 c1 80 49 	4980c1a0       r0 = memw (gp + #52) }
    9a74:	e6 ff ff 59 	59ffffe6     jump 9a40 <atexit+0x20>
    9a78:	00 c0 00 7f 	7f00c000     nop
    9a7c:	00 c0 00 7f 	7f00c000     nop

00009a80 <exit>:
    9a80:	a1 41 80 49 	498041a1     { r1 = memw (gp + #52)
    9a84:	e2 c1 80 49 	4980c1e2       r2 = memw (gp + #60) }
    9a88:	00 41 62 f2 	f2624100     { p0 = cmp.gtu (r2, r1)
    9a8c:	11 40 60 70 	70604011       r17 = r0
    9a90:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    9a94:	20 c0 20 5c 	5c20c020     if !p0 jump 9ad4 <exit+0x54>
    9a98:	22 40 01 b0 	b0014022     { r2 = add (r1, #1)
    9a9c:	c0 c1 80 49 	4980c1c0       r0 = memw (gp + #56) }
    9aa0:	00 61 80 3a 	3a806100     { r0 = memw (r0 + r1 << #2)
    9aa4:	0d c2 80 48 	4880c20d       memw (gp + #52) = r2 }
    9aa8:	00 c0 a0 50 	50a0c000     callr r0
    9aac:	a1 41 80 49 	498041a1     { r1 = memw (gp + #52)
    9ab0:	e0 c1 80 49 	4980c1e0       r0 = memw (gp + #60) }
    9ab4:	f2 c1 30 15 	1530c1f2     p0 = cmp.gtu (r0, r1) ; if (p0.new) jump:nt 9a98 <exit+0x18>
    9ab8:	80 43 80 49 	49804380     { r0 = memw (gp + #112)
    9abc:	12 c0 02 24 	2402c012       if (cmp.eq (r0.new, #0)) jump:nt 9adc <exit+0x5c> }
    9ac0:	e1 7f e0 bf 	bfe07fe1     { r1 = add (r0, #-1)
    9ac4:	c0 c1 80 49 	4980c1c0       r0 = memw (gp + #56) }
    9ac8:	00 61 80 3a 	3a806100     { r0 = memw (r0 + r1 << #2)
    9acc:	1c c1 80 48 	4880c11c       memw (gp + #112) = r1 }
    9ad0:	00 c0 a0 50 	50a0c000     callr r0
    9ad4:	80 43 80 49 	49804380     { r0 = memw (gp + #112)
    9ad8:	f6 c0 72 24 	2472c0f6       if (!cmp.eq (r0.new, #0)) jump:nt 9ac0 <exit+0x40> }
    9adc:	4a 4d 00 00 	00004d4a     { immext (#217728)
    9ae0:	10 46 00 78 	78004610       r16 = ##217776
    9ae4:	c0 c1 80 49 	4980c1c0       r0 = memw (gp + #56) }
    9ae8:	04 c8 00 14 	1400c804     p0 = cmp.eq (r0, r16) ; if (p0.new) jump:nt 9af0 <exit+0x70>
    9aec:	c2 dd ff 5b 	5bffddc2     call 5670 <free>
    9af0:	00 6a 31 73 	73316a00     { r1:0 = combine (#80, r17)
    9af4:	0e d0 80 48 	4880d00e       memw (gp + #56) = r16 }
    9af8:	3c 6c 00 5a 	5a006c3c     { call f370 <___exit>
    9afc:	0f c1 80 48 	4880c10f       memw (gp + #60) = r1 }

00009b00 <_Closreg>:
    9b00:	20 40 00 78 	78004020     { r0 = #1
    9b04:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    9b08:	01 4f 00 00 	00004f01     { immext (#245824)
    9b0c:	90 c6 00 78 	7800c690       r16 = ##245876 }
    9b10:	01 c0 10 92 	9210c001     r1 = memw_locked (r16)
    9b14:	00 c0 41 75 	7541c000     p0 = cmp.gt (r1, #0)
    9b18:	06 c0 00 5c 	5c00c006     if (p0) jump 9b24 <_Closreg+0x24>
    9b1c:	00 c0 b0 a0 	a0b0c000     memw_locked (r16, p0) = r0
    9b20:	f8 e0 ff 5c 	5cffe0f8     if !p0 jump 9b10 <_Closreg+0x10>
    9b24:	40 40 00 78 	78004040     { r0 = #2
    9b28:	0c 40 01 10 	1001400c       p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt 9b3c <_Closreg+0x3c>
    9b2c:	00 c0 00 7f 	7f00c000       nop }
    9b30:	a0 43 80 49 	498043a0     { r0 = memw (gp + #116)
    9b34:	00 c1 c2 24 	24c2c100       if (!cmp.gt (r0.new, #1)) jump:nt 9b30 <_Closreg+0x30> }
    9b38:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return
    9b3c:	fa fc ff 5b 	5bfffcfa     call 9530 <_Locksyslock>
    9b40:	6d 42 00 00 	0000426d     { immext (#39744)
    9b44:	00 44 00 78 	78004400       r0 = ##39776
    9b48:	88 c2 00 5a 	5a00c288       call a050 <_Atexit> }
    9b4c:	40 40 00 78 	78004040     { r0 = #2
    9b50:	a2 fc ff 5b 	5bfffca2       call 9490 <_Unlocksyslock> }
    9b54:	ee 7f ff 59 	59ff7fee     { jump 9b30 <_Closreg+0x30>
    9b58:	02 c0 50 3c 	3c50c002       memw (r16 + #0) = #2 }
    9b5c:	00 c0 00 7f 	7f00c000     nop

00009b60 <closeall>:
    9b60:	63 44 00 00 	00004463     { immext (#71872)
    9b64:	10 40 00 78 	78004010       r16 = ##71872
    9b68:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    9b6c:	11 ca 10 b0 	b010ca11     r17 = add (r16, #80)
    9b70:	81 00 48 40 	40480081     r16 = add (r16, #4) ; r1 = memw (r16 + #0)
    9b74:	06 40 01 10 	10014006     { p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt 9b80 <closeall+0x20>
    9b78:	76 5b ff 5b 	5bff5b76       call 5260 <fclose>
    9b7c:	00 c0 61 70 	7061c000       r0 = r1 }
    9b80:	f8 69 78 14 	147869f8     { p0 = cmp.eq (r16, r17) ; if (!p0.new) jump:t 9b70 <closeall+0x10>
    9b84:	10 c0 dd 43 	43ddc010       if (p0.new) r17:16 = memd (r29 + #0) }
    9b88:	1e c0 1e 96 	961ec01e     dealloc_return
    9b8c:	00 c0 00 7f 	7f00c000     nop

00009b90 <fgetc>:
    9b90:	10 40 60 70 	70604010     { r16 = r0
    9b94:	08 7d ff 5b 	5bff7d08       call 95a0 <_Lockfilelock>
    9b98:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    9b9c:	80 49 10 b0 	b0104980     { r0 = add (r16, #76)
    9ba0:	e1 c0 90 91 	9190c0e1       r1 = memw (r16 + #28) }
    9ba4:	0a c1 40 15 	1540c10a     p0 = cmp.gtu (r0, r1) ; if (!p0.new) jump:nt 9bb8 <fgetc+0x28>
    9ba8:	00 c0 70 91 	9170c000     r0 = memuh (r16 + #0)
    9bac:	00 4e 20 85 	85204e00     { p0 = !tstbit (r0, #14)
    9bb0:	2e 48 20 5c 	5c20482e       if !p0.new jump:nt 9c08 <fgetc+0x78>
    9bb4:	00 c0 70 70 	7070c000       r0 = r16 }
    9bb8:	81 04 80 0b 	0b800481     r0 = memw (r16 + #44) ; r1 = memw (r16 + #16)
    9bbc:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    9bc0:	a0 40 90 43 	439040a0       if (p0.new) r0 = memw (r16 + #20)
    9bc4:	28 c0 90 46 	4690c028       if !p0.new memw (r16 + #20) = r0 }
    9bc8:	00 60 01 74 	74016000     { if (p0.new) r0 = add (r1, #0)
    9bcc:	14 41 40 15 	15404114       p0 = cmp.gtu (r0, r1) ; if (!p0.new) jump:nt 9bf0 <fgetc+0x60>
    9bd0:	80 c5 d0 38 	38d0c580       if !p0 memw (r16 + #44) = #0 }
    9bd4:	31 c0 20 9b 	9b20c031     r17 = memub (r0 ++ #1)
    9bd8:	00 40 00 7f 	7f004000     { nop
    9bdc:	04 c0 90 a1 	a190c004       memw (r16 + #16) = r0 }
    9be0:	00 40 70 70 	70704000     { r0 = r16
    9be4:	68 fc ff 5b 	5bfffc68       call 94b0 <_Unlockfilelock> }
    9be8:	00 40 71 70 	70714000     { r0 = r17
    9bec:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    9bf0:	00 40 70 70 	70704000     { r0 = r16
    9bf4:	40 eb ff 5b 	5bffeb40       call 7270 <_Frprep> }
    9bf8:	f1 7f 8f 7e 	7e8f7ff1     { if !p0.new r17 = #-1
    9bfc:	f4 40 f0 10 	10f040f4       p0 = cmp.gt (r0, #0) ; if (!p0.new) jump:nt 9be0 <fgetc+0x50>
    9c00:	80 c0 90 43 	4390c080       if (p0.new) r0 = memw (r16 + #16) }
    9c04:	e8 ff ff 59 	59ffffe8     jump 9bd4 <fgetc+0x44>
    9c08:	31 c0 21 9b 	9b21c031     r17 = memub (r1 ++ #1)
    9c0c:	52 7c ff 5b 	5bff7c52     { call 94b0 <_Unlockfilelock>
    9c10:	07 c1 90 a1 	a190c107       memw (r16 + #28) = r1 }
    9c14:	00 40 71 70 	70714000     { r0 = r17
    9c18:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    9c1c:	00 c0 00 7f 	7f00c000     nop

00009c20 <fputc>:
    9c20:	10 41 00 f5 	f5004110     { r17:16 = combine (r0, r1)
    9c24:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    9c28:	00 40 70 70 	70704000     { r0 = r16
    9c2c:	bc fc ff 5b 	5bfffcbc       call 95a0 <_Lockfilelock> }
    9c30:	81 06 80 04 	04800681     r0 = memw (r16 + #16) ; r1 = memw (r16 + #24)
    9c34:	28 c0 41 15 	1541c028     p0 = cmp.gtu (r1, r0) ; if (!p0.new) jump:nt 9c84 <fputc+0x64>
    9c38:	f1 5f 11 76 	76115ff1     { r17 = and (r17, #255)
    9c3c:	08 c3 a0 ab 	aba0c308       memb (r0 ++ #1) = r17.new }
    9c40:	80 24 81 88 	88812480     r1 = memuh (r16 + #0) ; memw (r16 + #16) = r0
    9c44:	00 4b 21 85 	85214b00     { p0 = !tstbit (r1, #11)
    9c48:	12 c8 20 5c 	5c20c812       if !p0.new jump:nt 9c68 <fputc+0x48> }
    9c4c:	0a ca 09 10 	1009ca0a     p0 = cmp.eq (r17, #10) ; if (p0.new) jump:nt 9c60 <fputc+0x40>
    9c50:	00 40 70 70 	70704000     { r0 = r16
    9c54:	30 fc ff 5b 	5bfffc30       call 94b0 <_Unlockfilelock> }
    9c58:	00 c0 71 70 	7071c000     r0 = r17
    9c5c:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return
    9c60:	00 4a 21 85 	85214a00     { p0 = !tstbit (r1, #10)
    9c64:	f8 e8 df 5c 	5cdfe8f8       if (p0.new) jump:nt 9c50 <fputc+0x30> }
    9c68:	00 40 70 70 	70704000     { r0 = r16
    9c6c:	5c db ff 5b 	5bffdb5c       call 5320 <fflush> }
    9c70:	f0 e0 30 10 	1030e0f0     p0 = cmp.eq (r0, #0) ; if (p0.new) jump:t 9c50 <fputc+0x30>
    9c74:	00 40 70 70 	70704000     { r0 = r16
    9c78:	1e fc ff 5b 	5bfffc1e       call 94b0 <_Unlockfilelock> }
    9c7c:	e0 7f df 78 	78df7fe0     { r0 = #-1
    9c80:	f0 ff ff 59 	59fffff0       jump 9c5c <fputc+0x3c> }
    9c84:	00 40 70 70 	70704000     { r0 = r16
    9c88:	7e eb ff 5b 	5bffeb7e       call 7380 <_Fwprep> }
    9c8c:	f4 41 f0 11 	11f041f4     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 9c74 <fputc+0x54>
    9c90:	d6 7f ff 59 	59ff7fd6       jump 9c38 <fputc+0x18>
    9c94:	80 c0 90 43 	4390c080       if (p0.new) r0 = memw (r16 + #16) }
    9c98:	00 c0 00 7f 	7f00c000     nop
    9c9c:	00 c0 00 7f 	7f00c000     nop

00009ca0 <fputs>:
    9ca0:	a4 65 00 5a 	5a0065a4     { call e7e8 <__save_r16_through_r21>
    9ca4:	03 c0 9d a0 	a09dc003       allocframe (#24) }
    9ca8:	10 41 00 f5 	f5004110     { r17:16 = combine (r0, r1)
    9cac:	15 c0 02 78 	7802c015       r21 = #1024 }
    9cb0:	00 40 70 70 	70704000     { r0 = r16
    9cb4:	78 fc ff 5b 	5bfffc78       call 95a0 <_Lockfilelock> }
    9cb8:	00 40 31 91 	91314000     { r0 = memub (r17 + #0)
    9cbc:	3e c0 02 24 	2402c03e       if (cmp.eq (r0.new, #0)) jump:nt 9d34 <fputs+0x94> }
    9cc0:	81 06 80 04 	04800681     r0 = memw (r16 + #16) ; r1 = memw (r16 + #24)
    9cc4:	4c c0 41 15 	1541c04c     p0 = cmp.gtu (r1, r0) ; if (!p0.new) jump:nt 9d5c <fputs+0xbc>
    9cc8:	00 c0 70 91 	9170c000     r0 = memuh (r16 + #0)
    9ccc:	00 55 80 c7 	c7805500     { p0 = bitsclr (r0, r21)
    9cd0:	54 c8 20 5c 	5c20c854       if !p0.new jump:nt 9d74 <fputs+0xd4> }
    9cd4:	9e 65 ff 5b 	5bff659e     { call 6810 <strlen>
    9cd8:	90 30 0c 28 	280c3090       r20 = #0 ; r0 = r17 }
    9cdc:	13 c0 60 70 	7060c013     r19 = r0
    9ce0:	8a 06 80 04 	0480068a     r0 = memw (r16 + #16) ; r18 = memw (r16 + #24)
    9ce4:	12 d2 20 f3 	f320d212     r18 = sub (r18, r0)
    9ce8:	1c 4a 0b 15 	150b4a1c     { p0 = cmp.gtu (r19, r18) ; if (p0.new) jump:nt 9d20 <fputs+0x80>
    9cec:	a2 30 91 30 	309130a2       r1 = r17 ; r2 = r18 }
    9cf0:	02 40 73 70 	70734002     { r2 = r19
    9cf4:	b0 62 ff 5b 	5bff62b0       call 6250 <memcpy>
    9cf8:	b9 38 91 30 	309138b9       r1 = r17 ; r17 = add (r19, r17) }
    9cfc:	00 40 70 70 	70704000     { r0 = r16
    9d00:	de 40 3c 10 	103c40de       p0 = cmp.eq (r20, #0) ; if (p0.new) jump:nt 9cb8 <fputs+0x18>
    9d04:	13 c2 50 3e 	3e50c213       memw (r16 + #16) += r19 }
    9d08:	0c db ff 5b 	5bffdb0c     call 5320 <fflush>
    9d0c:	d6 e0 30 10 	1030e0d6     p0 = cmp.eq (r0, #0) ; if (p0.new) jump:t 9cb8 <fputs+0x18>
    9d10:	00 40 70 70 	70704000     { r0 = r16
    9d14:	d0 fb ff 5b 	5bfffbd0       call 94b0 <_Unlockfilelock> }
    9d18:	e0 7f df 78 	78df7fe0     { r0 = #-1
    9d1c:	9c e5 00 58 	5800e59c       jump e850 <__restore_r16_through_r21_and_deallocframe> }
    9d20:	11 52 11 f3 	f3115211     { r17 = add (r17, r18)
    9d24:	98 e2 ff 5b 	5bffe298       call 6250 <memcpy> }
    9d28:	12 c2 50 3e 	3e50c212     memw (r16 + #16) += r18
    9d2c:	00 40 31 91 	91314000     { r0 = memub (r17 + #0)
    9d30:	ca c0 72 24 	2472c0ca       if (!cmp.eq (r0.new, #0)) jump:nt 9cc0 <fputs+0x20> }
    9d34:	00 c0 70 91 	9170c000     r0 = memuh (r16 + #0)
    9d38:	00 4b 20 85 	85204b00     { p0 = !tstbit (r0, #11)
    9d3c:	0a 48 00 5c 	5c00480a       if (p0.new) jump:nt 9d4c <fputs+0xac>
    9d40:	00 c0 70 70 	7070c000       r0 = r16 }
    9d44:	ee da ff 5b 	5bffdaee     call 5320 <fflush>
    9d48:	e4 c0 70 10 	1070c0e4     p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 9d10 <fputs+0x70>
    9d4c:	00 40 70 70 	70704000     { r0 = r16
    9d50:	b2 fb ff 5b 	5bfffbb2       call 94b0 <_Unlockfilelock> }
    9d54:	2b 41 00 00 	0000412b     { immext (#19136)
    9d58:	78 c0 00 16 	1600c078       r0 = #0 ; jump e850 <__restore_r16_through_r21_and_deallocframe> }
    9d5c:	00 40 70 70 	70704000     { r0 = r16
    9d60:	12 eb ff 5b 	5bffeb12       call 7380 <_Fwprep> }
    9d64:	d6 c1 f0 11 	11f0c1d6     p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt 9d10 <fputs+0x70>
    9d68:	00 c0 70 91 	9170c000     r0 = memuh (r16 + #0)
    9d6c:	00 55 80 c7 	c7805500     { p0 = bitsclr (r0, r21)
    9d70:	b4 f8 df 5c 	5cdff8b4       if (p0.new) jump:t 9cd4 <fputs+0x34> }
    9d74:	40 61 31 73 	73316140     { r1:0 = combine (#10, r17)
    9d78:	5e c1 00 5a 	5a00c15e       call a030 <strrchr> }
    9d7c:	31 53 80 db 	db805331     { r19 = add (r0, sub (#1, r17))
    9d80:	ac 40 30 10 	103040ac       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 9cd4 <fputs+0x34>
    9d84:	14 c0 60 70 	7060c014       r20 = r0 }
    9d88:	ac ff ff 59 	59ffffac     jump 9ce0 <fputs+0x40>
    9d8c:	00 c0 00 7f 	7f00c000     nop

00009d90 <ldexp>:
    9d90:	00 40 02 75 	75024000     { p0 = cmp.eq (r2, #0)
    9d94:	30 1c f4 eb 	ebf41c30       memd (sp + #-16) = r17:16 ; allocframe (#24) }
    9d98:	10 41 1d b0 	b01d4110     { r16 = add (r29, #8)
    9d9c:	0c 40 20 5c 	5c20400c       if !p0 jump 9db0 <ldexp+0x20>
    9da0:	01 40 dd a1 	a1dd4001       memd (r29 + #8) = r1:0
    9da4:	08 c2 9d 44 	449dc208       if !p0 memw (r29 + #4) = r2 }
    9da8:	14 1e 08 3e 	3e081e14     r1:0 = memd (sp + #8) ; r17:16 = memd (sp + #16)
    9dac:	1e c0 1e 96 	961ec01e     dealloc_return
    9db0:	00 40 70 70 	70704000     { r0 = r16
    9db4:	68 e7 ff 5b 	5bffe768       call 6c80 <_Dtest> }
    9db8:	f8 61 b0 11 	11b061f8     { p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t 9da8 <ldexp+0x18>
    9dbc:	22 c0 9d 91 	919dc022       r2 = memw (r29 + #4) }
    9dc0:	00 50 02 f5 	f5025000     { r1:0 = combine (r2, r16)
    9dc4:	60 c2 00 5a 	5a00c260       call a280 <_Dscale> }
    9dc8:	00 61 00 7e 	7e006100     { if (p0.new) r0 = #8
    9dcc:	0c c0 00 10 	1000c00c       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 9de0 <ldexp+0x50> }
    9dd0:	ec 61 70 10 	107061ec     { p0 = cmp.eq (r0, #1) ; if (!p0.new) jump:t 9da8 <ldexp+0x18>
    9dd4:	30 69 ff 5b 	5bff6930       call 7030 <_Feraise>
    9dd8:	80 c0 00 78 	7800c080       r0 = #4 }
    9ddc:	e6 ff ff 59 	59ffffe6     jump 9da8 <ldexp+0x18>
    9de0:	28 e9 ff 5b 	5bffe928     call 7030 <_Feraise>
    9de4:	e2 ff ff 59 	59ffffe2     jump 9da8 <ldexp+0x18>
    9de8:	00 c0 00 7f 	7f00c000     nop
    9dec:	00 c0 00 7f 	7f00c000     nop

00009df0 <Xmalloc>:
    9df0:	90 dd ff 59 	59ffdd90     jump 5910 <malloc>
    9df4:	00 40 00 7f 	7f004000     { nop
    9df8:	00 40 00 7f 	7f004000       nop
    9dfc:	00 c0 00 7f 	7f00c000       nop }

00009e00 <memalign>:
    9e00:	0c 40 40 10 	1040400c     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt 9e18 <memalign+0x18>
    9e04:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    9e08:	01 40 00 78 	78004001     { r1 = #0
    9e0c:	00 c0 00 7f 	7f00c000       nop }
    9e10:	00 40 61 70 	70614000     { r0 = r1
    9e14:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    9e18:	f0 ff e0 bf 	bfe0fff0     r16 = add (r0, #-1)
    9e1c:	00 40 90 c7 	c7904000     { p0 = bitsclr (r16, r0)
    9e20:	f6 e8 ff 5c 	5cffe8f6       if !p0.new jump:nt 9e08 <memalign+0x8> }
    9e24:	01 60 10 db 	db106001     { r0 = add (r16, add (r1, #8))
    9e28:	22 47 48 11 	11484722       p0 = cmp.gtu (r16, #7) ; if (!p0.new) jump:nt 9e68 <memalign+0x68>
    9e2c:	10 c0 dd 47 	47ddc010       if !p0.new r17:16 = memd (r29 + #0) }
    9e30:	e0 ff ff 5b 	5bffffe0     call 9df0 <Xmalloc>
    9e34:	01 40 60 70 	70604001     { r1 = r0
    9e38:	ee c0 30 10 	1030c0ee       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 9e10 <memalign+0x10> }
    9e3c:	00 50 80 c7 	c7805000     { p0 = bitsclr (r0, r16)
    9e40:	ea 78 df 5c 	5cdf78ea       if (p0.new) jump:t 9e10 <memalign+0x10>
    9e44:	02 d0 00 f3 	f300d002       r2 = add (r0, r16) }
    9e48:	10 42 90 f1 	f1904210     { r16 = and (r2, ~ r16)
    9e4c:	c3 ff 80 97 	9780ffc3       r3 = memw (r0 + #-8) }
    9e50:	02 d0 20 f3 	f320d002     r2 = sub (r16, r0)
    9e54:	03 43 22 f3 	f3224303     { r3 = sub (r3, r2)
    9e58:	fe f3 b0 a7 	a7b0f3fe       memw (r16 + #-8) = r3.new }
    9e5c:	0a 5c ff 5b 	5bff5c0a     { call 5670 <free>
    9e60:	fe e2 80 a7 	a780e2fe       memw (r0 + #-8) = r2 }
    9e64:	d6 c1 38 17 	1738c1d6     r1 = r16 ; jump 9e10 <memalign+0x10>
    9e68:	c4 40 31 17 	173140c4     { r0 = r1 ; jump 9df0 <Xmalloc>
    9e6c:	1e c0 1e 90 	901ec01e       deallocframe }

00009e70 <read>:
    9e70:	10 40 62 70 	70624010     { r16 = r2
    9e74:	b8 6b 00 5a 	5a006bb8       call f5e0 <__sys_read>
    9e78:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    9e7c:	00 50 20 f3 	f3205000     { r0 = sub (r16, r0)
    9e80:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    9e84:	00 c0 00 7f 	7f00c000     nop
    9e88:	00 c0 00 7f 	7f00c000     nop
    9e8c:	00 c0 00 7f 	7f00c000     nop

00009e90 <raise>:
    9e90:	21 40 00 78 	78004021     { r1 = #1
    9e94:	11 40 60 70 	70604011       r17 = r0
    9e98:	30 1c f4 eb 	ebf41c30       memd (sp + #-16) = r17:16 ; allocframe (#24) }
    9e9c:	8a c0 00 5a 	5a00c08a     call 9fb0 <signal>
    9ea0:	10 40 60 70 	70604010     { r16 = r0
    9ea4:	16 40 80 11 	11804016       p0 = cmp.eq (r0, #-1) ; if (p0.new) jump:nt 9ecc <raise+0x3c>
    9ea8:	e0 ff 0f 7e 	7e0fffe0       if (p0.new) r0 = #-1 }
    9eac:	0c c1 00 10 	1000c10c     p0 = cmp.eq (r0, #1) ; if (p0.new) jump:nt 9ec4 <raise+0x34>
    9eb0:	10 40 00 10 	10004010     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt 9ed0 <raise+0x40>
    9eb4:	80 40 00 5a 	5a004080       call 9fb0 <signal>
    9eb8:	00 e0 31 73 	7331e000       r1:0 = combine (#0, r17) }
    9ebc:	00 40 71 70 	70714000     { r0 = r17
    9ec0:	00 c0 b0 50 	50b0c000       callr r16 }
    9ec4:	00 40 00 78 	78004000     { r0 = #0
    9ec8:	40 1f 14 3e 	3e141f40       r17:16 = memd (sp + #16) ; dealloc_return }
    9ecc:	40 1f 14 3e 	3e141f40     r17:16 = memd (sp + #16) ; dealloc_return
    9ed0:	c0 7f f1 bf 	bff17fc0     { r0 = add (r17, #-2)
    9ed4:	44 cd 42 25 	2542cd44       if (!cmp.gtu (r0.new, #13)) jump:nt 9f58 <raise+0xc8> }
    9ed8:	30 41 1d b0 	b01d4130     { r16 = add (r29, #9)
    9edc:	99 59 66 06 	06665999       immext (#1717986880)
    9ee0:	e1 44 00 78 	780044e1       r1 = ##1717986919
    9ee4:	80 c4 1d 3c 	3c1dc480       memb (r29 + #9) = #0 }
    9ee8:	20 41 11 ed 	ed114120     { r0 = mpy (r17, r1)
    9eec:	f0 ff f0 bf 	bff0fff0       r16 = add (r16, #-1) }
    9ef0:	00 c2 00 8c 	8c00c200     r0 = asr (r0, #2)
    9ef4:	00 df 11 8e 	8e11df00     r0 -= asr (r17, #31)
    9ef8:	42 41 00 e0 	e0004142     { r2 = + mpyi (r0, #10)
    9efc:	00 c0 00 75 	7500c000       p0 = cmp.eq (r0, #0) }
    9f00:	00 40 00 00 	00004000     { immext (#0)
    9f04:	02 42 f1 db 	dbf14202       r2 = add (r17, sub (##48, r2))
    9f08:	11 40 60 70 	70604011       r17 = r0
    9f0c:	00 c4 b0 a1 	a1b0c400       memb (r16 + #0) = r2.new }
    9f10:	11 44 00 00 	00004411     { immext (#66624)
    9f14:	a0 45 00 78 	780045a0       r0 = ##66669
    9f18:	ec 60 ff 5c 	5cff60ec       if !p0 jump 9ee8 <raise+0x58>
    9f1c:	00 c0 00 7f 	7f00c000       nop }
    9f20:	64 44 00 00 	00004464     { immext (#71936)
    9f24:	01 42 00 78 	78004201       r1 = ##71952
    9f28:	c0 7e ff 5b 	5bff7ec0       call 9ca0 <fputs>
    9f2c:	00 c0 00 7f 	7f00c000       nop }
    9f30:	64 44 00 00 	00004464     { immext (#71936)
    9f34:	00 62 30 73 	73306200       r1:0 = combine (##71952, r16)
    9f38:	b8 fe ff 5b 	5bfffeb8       call 9ca0 <fputs> }
    9f3c:	11 44 00 00 	00004411     { immext (#66624)
    9f40:	c0 46 00 78 	780046c0       r0 = ##66678
    9f44:	64 44 00 00 	00004464       immext (#71936)
    9f48:	01 c2 00 78 	7800c201       r1 = ##71952 }
    9f4c:	aa fe ff 5b 	5bfffeaa     call 9ca0 <fputs>
    9f50:	20 40 00 78 	78004020     { r0 = #1
    9f54:	98 fd ff 5b 	5bfffd98       call 9a80 <exit> }
    9f58:	10 44 00 00 	00004410     { immext (#66560)
    9f5c:	b0 46 00 78 	780046b0       r16 = ##66613
    9f60:	12 44 00 00 	00004412       immext (#66688)
    9f64:	00 f2 80 9d 	9d80f200       r0 = memw (r0 << #2 + ##66696) }
    9f68:	00 c0 80 52 	5280c000     jumpr r0
    9f6c:	11 44 00 00 	00004411     { immext (#66624)
    9f70:	30 43 00 78 	78004330       r16 = ##66649
    9f74:	e2 ff ff 59 	59ffffe2       jump 9f30 <raise+0xa0> }
    9f78:	11 44 00 00 	00004411     { immext (#66624)
    9f7c:	50 40 00 78 	78004050       r16 = ##66626
    9f80:	dc ff ff 59 	59ffffdc       jump 9f30 <raise+0xa0> }
    9f84:	10 44 00 00 	00004410     { immext (#66560)
    9f88:	d0 40 00 78 	780040d0       r16 = ##66566
    9f8c:	d6 ff ff 59 	59ffffd6       jump 9f30 <raise+0xa0> }
    9f90:	10 44 00 00 	00004410     { immext (#66560)
    9f94:	f0 42 00 78 	780042f0       r16 = ##66583
    9f98:	d0 ff ff 59 	59ffffd0       jump 9f30 <raise+0xa0> }
    9f9c:	10 44 00 00 	00004410     { immext (#66560)
    9fa0:	b0 43 00 78 	780043b0       r16 = ##66589
    9fa4:	ca ff ff 59 	59ffffca       jump 9f30 <raise+0xa0> }
    9fa8:	00 c0 00 7f 	7f00c000     nop
    9fac:	00 c0 00 7f 	7f00c000     nop

00009fb0 <signal>:
    9fb0:	10 40 60 70 	70604010     { r16 = r0
    9fb4:	e0 7f e0 bf 	bfe07fe0       r0 = add (r0, #-1)
    9fb8:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    9fbc:	40 45 80 75 	75804540     { p0 = cmp.gtu (r0, #42)
    9fc0:	1c c8 00 5c 	5c00c81c       if (p0.new) jump:nt 9ff4 <signal+0x44> }
    9fc4:	20 40 00 78 	78004020     { r0 = #1
    9fc8:	18 40 81 11 	11814018       p0 = cmp.eq (r1, #-1) ; if (p0.new) jump:nt 9ff4 <signal+0x44>
    9fcc:	08 c1 9d 46 	469dc108       if !p0.new memw (r29 + #4) = r1 }
    9fd0:	b0 fa ff 5b 	5bfffab0     call 9530 <_Locksyslock>
    9fd4:	20 40 00 78 	78004020     { r0 = #1
    9fd8:	4f 4d 00 00 	00004d4f       immext (#218048)
    9fdc:	11 3c 02 4b 	4b023c11       r2 = ##218096 ; r1 = memw (sp + #4) }
    9fe0:	58 7a ff 5b 	5bff7a58     { call 9490 <_Unlocksyslock>
    9fe4:	11 70 82 3a 	3a827011       r17 = memw (r2 + r16 << #2)
    9fe8:	01 f0 82 3b 	3b82f001       memw (r2 + r16 << #2) = r1 }
    9fec:	00 40 71 70 	70714000     { r0 = r17
    9ff0:	40 1f 0c 3e 	3e0c1f40       r17:16 = memd (sp + #8) ; dealloc_return }
    9ff4:	f1 ff df 78 	78dffff1     r17 = #-1
    9ff8:	00 40 71 70 	70714000     { r0 = r17
    9ffc:	40 1f 0c 3e 	3e0c1f40       r17:16 = memd (sp + #8) ; dealloc_return }

0000a000 <strchr>:
    a000:	02 10 11 57 	57111002     r1 = and (r1, #255) ; r2 = memub (r0 + #0)
    a004:	00 41 02 f2 	f2024100     { p0 = cmp.eq (r2, r1)
    a008:	00 c8 5f 53 	535fc800       if (p0.new) jumpr:nt r31 }
    a00c:	06 60 42 10 	10426006     { p0 = cmp.eq (r2, #0) ; if (!p0.new) jump:t a018 <strchr+0x18>
    a010:	10 c0 00 58 	5800c010       jump a02c <strchr+0x2c> }
    a014:	0c c1 00 5c 	5c00c10c     if (p1) jump a02c <strchr+0x2c>
    a018:	20 c0 00 b0 	b000c020     r0 = add (r0, #1)
    a01c:	02 c0 20 91 	9120c002     r2 = memub (r0 + #0)
    a020:	01 40 02 75 	75024001     { p1 = cmp.eq (r2, #0)
    a024:	fa e1 72 14 	1472e1fa       p0 = cmp.eq (r2, r1) ; if (!p0.new) jump:t a014 <strchr+0x14> }
    a028:	00 c0 9f 52 	529fc000     jumpr r31
    a02c:	c0 3f 00 48 	48003fc0     r0 = #0 ; jumpr lr

0000a030 <strrchr>:
    a030:	11 37 03 28 	28033711     r3 = #0 ; r1 = and (r1, #255)
    a034:	02 c0 20 91 	9120c002     r2 = memub (r0 + #0)
    a038:	01 41 02 f2 	f2024101     { p1 = cmp.eq (r2, r1)
    a03c:	03 60 20 74 	74206003       if (p1.new) r3 = add (r0, #0)
    a040:	20 39 00 31 	31003920       r0 = add (r0, #1) ; p0 = cmp.eq (r2, #0) }
    a044:	00 40 03 74 	74034000     { if (p0) r0 = add (r3, #0)
    a048:	f8 e0 ff 5c 	5cffe0f8       if !p0 jump a034 <strrchr+0x4> }
    a04c:	00 c0 9f 52 	529fc000     jumpr r31

0000a050 <_Atexit>:
    a050:	10 40 60 70 	70604010     { r16 = r0
    a054:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    a058:	82 43 80 49 	49804382     { r2 = memw (gp + #112)
    a05c:	a1 c1 80 49 	4980c1a1       r1 = memw (gp + #52) }
    a060:	0c c2 41 15 	1541c20c     p0 = cmp.gtu (r1, r2) ; if (!p0.new) jump:nt a078 <_Atexit+0x28>
    a064:	e1 7f e1 bf 	bfe17fe1     { r1 = add (r1, #-1)
    a068:	c0 41 80 49 	498041c0       r0 = memw (gp + #56)
    a06c:	0d d5 a0 48 	48a0d50d       memw (gp + #52) = r1.new }
    a070:	10 e1 80 3b 	3b80e110     memw (r0 + r1 << #2) = r16
    a074:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return
    a078:	dc dd 00 5a 	5a00dddc     call dc30 <_Atrealloc>
    a07c:	0e 40 00 10 	1000400e     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt a098 <_Atexit+0x48>
    a080:	a1 41 80 49 	498041a1       r1 = memw (gp + #52)
    a084:	c0 c1 80 49 	4980c1c0       r0 = memw (gp + #56) }
    a088:	e1 7f e1 bf 	bfe17fe1     { r1 = add (r1, #-1)
    a08c:	0d d3 a0 48 	48a0d30d       memw (gp + #52) = r1.new }
    a090:	10 e1 80 3b 	3b80e110     memw (r0 + r1 << #2) = r16
    a094:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return
    a098:	4c fc ff 5b 	5bfffc4c     call 9930 <abort>
    a09c:	00 c0 00 7f 	7f00c000     nop

0000a0a0 <_Tls_get__Ctype>:
    a0a0:	20 40 00 78 	78004020     { r0 = #1
    a0a4:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    a0a8:	01 4f 00 00 	00004f01     { immext (#245824)
    a0ac:	90 c7 00 78 	7800c790       r16 = ##245884 }
    a0b0:	01 c0 10 92 	9210c001     r1 = memw_locked (r16)
    a0b4:	00 c0 41 75 	7541c000     p0 = cmp.gt (r1, #0)
    a0b8:	06 c0 00 5c 	5c00c006     if (p0) jump a0c4 <_Tls_get__Ctype+0x24>
    a0bc:	00 c0 b0 a0 	a0b0c000     memw_locked (r16, p0) = r0
    a0c0:	f8 e0 ff 5c 	5cffe0f8     if !p0 jump a0b0 <_Tls_get__Ctype+0x10>
    a0c4:	01 4f 00 00 	00004f01     { immext (#245824)
    a0c8:	00 47 00 78 	78004700       r0 = ##245880
    a0cc:	1a c0 01 10 	1001c01a       p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt a0f8 <_Tls_get__Ctype+0x58> }
    a0d0:	e0 43 80 49 	498043e0     { r0 = memw (gp + #124)
    a0d4:	00 c1 c2 24 	24c2c100       if (!cmp.gt (r0.new, #1)) jump:nt a0d0 <_Tls_get__Ctype+0x30> }
    a0d8:	d4 6b 00 5a 	5a006bd4     { call f880 <__sys_Tlsget>
    a0dc:	c0 c3 80 49 	4980c3c0       r0 = memw (gp + #120) }
    a0e0:	10 40 60 70 	70604010     { r16 = r0
    a0e4:	16 40 00 10 	10004016       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt a10c <_Tls_get__Ctype+0x6c>
    a0e8:	80 60 00 7c 	7c006080       r1:0 = combine (#4, #1)
    a0ec:	00 c0 00 7f 	7f00c000       nop }
    a0f0:	00 40 70 70 	70704000     { r0 = r16
    a0f4:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    a0f8:	59 41 00 00 	00004159     { immext (#22080)
    a0fc:	01 46 00 78 	78004601       r1 = ##22128
    a100:	0c ec 00 5a 	5a00ec0c       call f910 <__sys_Tlsalloc> }
    a104:	e6 7f ff 59 	59ff7fe6     { jump a0d0 <_Tls_get__Ctype+0x30>
    a108:	02 c0 50 3c 	3c50c002       memw (r16 + #0) = #2 }
    a10c:	1a fc ff 5b 	5bfffc1a     call 9940 <calloc>
    a110:	11 40 60 70 	70604011     { r17 = r0
    a114:	f0 40 30 10 	103040f0       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt a0f0 <_Tls_get__Ctype+0x50>
    a118:	c0 c3 80 49 	4980c3c0       r0 = memw (gp + #120) }
    a11c:	01 40 71 70 	70714001     { r1 = r17
    a120:	92 eb 00 5a 	5a00eb92       call f840 <__sys_Tlsset> }
    a124:	08 40 40 10 	10404008     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt a134 <_Tls_get__Ctype+0x94>
    a128:	13 44 00 00 	00004413       immext (#66752)
    a12c:	02 c0 51 39 	3951c002       if (p0.new) memw (r17 + #0) = ##66754 }
    a130:	e0 c8 39 17 	1739c8e0     r16 = r17 ; jump a0f0 <_Tls_get__Ctype+0x50>
    a134:	00 40 71 70 	70714000     { r0 = r17
    a138:	9e da ff 5b 	5bffda9e       call 5670 <free> }
    a13c:	da ff ff 59 	59ffffda     jump a0f0 <_Tls_get__Ctype+0x50>

0000a140 <_Getpctype>:
    a140:	b0 7f ff 5b 	5bff7fb0     { call a0a0 <_Tls_get__Ctype>
    a144:	00 c0 9d a0 	a09dc000       allocframe (#0) }
    a148:	40 3f 00 00 	00003f40     r0 = memw (r0 + #0) ; dealloc_return
    a14c:	00 c0 00 7f 	7f00c000     nop

0000a150 <_Dnorm>:
    a150:	01 40 60 70 	70604001     { r1 = r0
    a154:	c3 40 00 b0 	b00040c3       r3 = add (r0, #6)
    a158:	68 c0 60 91 	9160c068       r8 = memuh (r0 + #6) }
    a15c:	e2 41 08 76 	760841e2     { r2 = and (r8, #15)
    a160:	03 ca a0 a1 	a1a0ca03       memh (r0 + #6) = r2.new }
    a164:	20 60 80 7e 	7e806020     { if !p0.new r0 = #1
    a168:	24 40 42 10 	10424024       p0 = cmp.eq (r2, #0) ; if (!p0.new) jump:nt a1ac <_Dnorm+0x5c>
    a16c:	86 c0 01 b0 	b001c086       r6 = add (r1, #4) }
    a170:	44 40 01 b0 	b0014044     { r4 = add (r1, #2)
    a174:	45 40 61 91 	91614045       r5 = memuh (r1 + #4)
    a178:	78 c0 03 24 	2403c078       if (cmp.eq (r5.new, #0)) jump:nt a260 <_Dnorm+0x110> }
    a17c:	04 c1 00 16 	1600c104     r0 = #1 ; jump a184 <_Dnorm+0x34>
    a180:	05 c0 66 91 	9166c005     r5 = memuh (r6 + #0)
    a184:	35 20 00 67 	67002035     r0 = add (r0, #-16) ; memh (r3 + #0) = r5
    a188:	00 40 e0 70 	70e04000     { r0 = sxth (r0)
    a18c:	05 40 44 91 	91444005       r5 = memh (r4 + #0)
    a190:	00 cb a6 a1 	a1a6cb00       memh (r6 + #0) = r5.new }
    a194:	05 40 41 91 	91414005     { r5 = memh (r1 + #0)
    a198:	00 cb a4 a1 	a1a4cb00       memh (r4 + #0) = r5.new }
    a19c:	00 c0 21 3c 	3c21c000     memh (r1 + #0) = #0
    a1a0:	02 40 63 91 	91634002     { r2 = memuh (r3 + #0)
    a1a4:	f0 c0 32 24 	2432c0f0       if (cmp.eq (r2.new, #0)) jump:nt a180 <_Dnorm+0x30> }
    a1a8:	26 cf 02 11 	1102cf26     p0 = cmp.gtu (r2, #15) ; if (p0.new) jump:nt a1f4 <_Dnorm+0xa4>
    a1ac:	16 0a 17 28 	28170a16     r7 = memuh (r1 + #0) ; r6 = memuh (r1 + #4)
    a1b0:	25 c0 61 91 	9161c025     r5 = memuh (r1 + #2)
    a1b4:	24 4f 05 8c 	8c054f24     { r4 = lsr (r5, #15)
    a1b8:	23 4f 07 8c 	8c074f23       r3 = lsr (r7, #15)
    a1bc:	22 38 00 33 	33003822       r0 = add (r0, #-1) ; r2 = add (r2, r2) }
    a1c0:	a2 4f 46 8e 	8e464fa2     { r2 |= lsr (r6, #15)
    a1c4:	c4 41 46 8e 	8e4641c4       r4 |= asl (r6, #1)
    a1c8:	00 c0 e0 70 	70e0c000       r0 = sxth (r0) }
    a1cc:	c3 41 45 8e 	8e4541c3     { r3 |= asl (r5, #1)
    a1d0:	46 36 22 36 	36223646       r2 = zxth (r2) ; r6 = zxth (r4) }
    a1d4:	e0 41 82 75 	758241e0     { p0 = cmp.gtu (r2, #15)
    a1d8:	ff 43 00 00 	000043ff       immext (#65472)
    a1dc:	e0 61 27 de 	de2761e0       r7 = and (##65534, asl (r7, #1))
    a1e0:	05 c0 c3 70 	70c3c005       r5 = zxth (r3) }
    a1e4:	e8 60 ff 5c 	5cff60e8     { if !p0 jump a1b4 <_Dnorm+0x64>
    a1e8:	00 47 41 40 	40414700       if (p0) memh (r1 + #0) = r7
    a1ec:	10 c6 41 40 	4041c610       if (p0) memh (r1 + #4) = r6 }
    a1f0:	12 03 15 e1 	e1150312     memh (r1 + #2) = r5 ; memh (r1 + #6) = r2
    a1f4:	26 df 42 11 	1142df26     p0 = cmp.gtu (r2, #31) ; if (!p0.new) jump:nt a240 <_Dnorm+0xf0>
    a1f8:	15 08 12 2b 	2b120815     r2 = memuh (r1 + #6) ; r5 = memuh (r1 + #0)
    a1fc:	16 0a 17 29 	29170a16     r7 = memuh (r1 + #2) ; r6 = memuh (r1 + #4)
    a200:	24 41 06 8c 	8c064124     { r4 = lsr (r6, #1)
    a204:	23 41 07 8c 	8c074123       r3 = lsr (r7, #1)
    a208:	20 c0 00 b0 	b000c020       r0 = add (r0, #1) }
    a20c:	c4 4f 42 8e 	8e424fc4     { r4 |= asl (r2, #15)
    a210:	25 41 05 8c 	8c054125       r5 = lsr (r5, #1)
    a214:	00 c0 e0 70 	70e0c000       r0 = sxth (r0) }
    a218:	22 41 02 8c 	8c024122     { r2 = lsr (r2, #1)
    a21c:	c5 cf 47 8e 	8e47cfc5       r5 |= asl (r7, #15) }
    a220:	c3 4f 46 8e 	8e464fc3     { r3 |= asl (r6, #15)
    a224:	e0 43 82 75 	758243e0       p0 = cmp.gtu (r2, #31)
    a228:	46 36 55 36 	36553646       r5 = zxth (r5) ; r6 = zxth (r4) }
    a22c:	07 40 c3 70 	70c34007     { r7 = zxth (r3)
    a230:	ea 60 df 5c 	5cdf60ea       if (p0) jump a200 <_Dnorm+0xb0>
    a234:	00 45 41 44 	44414500       if !p0 memh (r1 + #0) = r5
    a238:	10 c6 41 44 	4441c610       if !p0 memh (r1 + #4) = r6 }
    a23c:	12 03 17 e1 	e1170312     memh (r1 + #2) = r7 ; memh (r1 + #6) = r2
    a240:	e2 41 02 76 	760241e2     { r2 = and (r2, #15)
    a244:	00 40 00 7f 	7f004000       nop
    a248:	00 40 00 7f 	7f004000       nop
    a24c:	03 ce a1 a1 	a1a1ce03       memh (r1 + #6) = r2.new }
    a250:	00 42 00 00 	00004200     { immext (#32768)
    a254:	02 40 08 da 	da084002       r2 |= and (r8, ##32768)
    a258:	00 40 9f 52 	529f4000       jumpr r31
    a25c:	03 cc a1 a1 	a1a1cc03       memh (r1 + #6) = r2.new }
    a260:	44 40 01 b0 	b0014044     { r4 = add (r1, #2)
    a264:	20 40 61 91 	91614020       r0 = memuh (r1 + #2)
    a268:	8e c0 72 24 	2472c08e       if (!cmp.eq (r0.new, #0)) jump:nt a17c <_Dnorm+0x2c> }
    a26c:	00 c0 61 91 	9161c000     r0 = memuh (r1 + #0)
    a270:	86 60 70 10 	10706086     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:t a17c <_Dnorm+0x2c>
    a274:	f0 7f ff 59 	59ff7ff0       jump a250 <_Dnorm+0x100>
    a278:	20 e0 00 7e 	7e00e020       if (p0.new) r0 = #1 }
    a27c:	00 c0 00 7f 	7f00c000     nop

0000a280 <_Dscale>:
    a280:	10 40 60 70 	70604010     { r16 = r0
    a284:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    a288:	63 c0 60 91 	9160c063     r3 = memuh (r0 + #6)
    a28c:	82 cb 03 8d 	8d03cb82     r2 = extractu (r3, #11, #4)
    a290:	1f 40 00 00 	0000401f     { immext (#1984)
    a294:	e0 47 02 75 	750247e0       p0 = cmp.eq (r2, ##2047)
    a298:	a6 c8 00 5c 	5c00c8a6       if (p0.new) jump:nt a3dc <_Dscale+0x15c> }
    a29c:	b4 40 02 10 	100240b4     { p0 = cmp.eq (r2, #0) ; if (p0.new) jump:nt a404 <_Dscale+0x184>
    a2a0:	08 c1 9d 42 	429dc108       if (p0.new) memw (r29 + #4) = r1 }
    a2a4:	1f 40 00 00 	0000401f     { immext (#1984)
    a2a8:	e0 47 42 76 	764247e0       r0 = sub (##2047, r2)
    a2ac:	16 c0 c1 10 	10c1c016       p0 = cmp.gt (r1, #0) ; if (!p0.new) jump:nt a2d0 <_Dscale+0x50> }
    a2b0:	10 c1 80 14 	1480c110     p0 = cmp.gt (r0, r1) ; if (p0.new) jump:nt a2d0 <_Dscale+0x50>
    a2b4:	03 c0 e3 70 	70e3c003     r3 = sxth (r3)
    a2b8:	ec 41 c3 11 	11c341ec     { p0 = cmp.gt (r3, #-1) ; if (!p0.new) jump:nt a490 <_Dscale+0x210>
    a2bc:	68 44 00 00 	00004468       immext (#72192)
    a2c0:	80 f0 d8 9f 	9fd8f080       if (p0.new) r1:0 = memd (##72240) }
    a2c4:	00 c0 d0 a1 	a1d0c000     memd (r16 + #0) = r1:0
    a2c8:	20 c0 00 78 	7800c020     r0 = #1
    a2cc:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    a2d0:	00 c0 42 76 	7642c000     r0 = sub (#0, r2)
    a2d4:	e1 60 62 db 	db6260e1     { r0 = add (r2, add (r1, #-1))
    a2d8:	08 40 91 14 	14914008       p0 = cmp.gt (r1, r0) ; if (p0.new) jump:nt a4e4 <_Dscale+0x264>
    a2dc:	e5 c1 03 76 	7603c1e5       r5 = and (r3, #15) }
    a2e0:	00 42 00 00 	00004200     { immext (#32768)
    a2e4:	03 40 03 76 	76034003       r3 = and (r3, ##32768)
    a2e8:	05 42 85 76 	76854205       r5 = or (r5, #16)
    a2ec:	a4 c6 00 b0 	b000c6a4       r4 = add (r0, #53) }
    a2f0:	80 46 84 75 	75844680     { p0 = cmp.gtu (r4, #52)
    a2f4:	dc 48 00 5c 	5c0048dc       if (p0.new) jump:nt a4a8 <_Dscale+0x228>
    a2f8:	85 23 04 74 	74042385       r4 = sxth (r0) ; memh (r16 + #6) = r5 }
    a2fc:	00 7e 64 75 	75647e00     { p0 = cmp.gt (r4, #-16)
    a300:	36 48 00 5c 	5c004836       if (p0.new) jump:nt a368 <_Dscale+0xe8>
    a304:	00 e0 00 7e 	7e00e000       if (p0.new) r0 = #0 }
    a308:	09 7e 60 76 	76607e09     { r9 = sub (#-16, r0)
    a30c:	e1 61 02 db 	db0261e1       r1 = add (r2, add (r1, #15))
    a310:	87 09 86 28 	28860987       r6 = memuh (r16 + #0) ; r7 = memuh (r16 + #2) }
    a314:	89 4c 09 8d 	8d094c89     { r9 = extractu (r9, #12, #4)
    a318:	08 40 21 dd 	dd214008       p0 = cmph.gt (r1, #0)
    a31c:	00 40 00 78 	78004000       r0 = #0
    a320:	48 c0 70 91 	9170c048       r8 = memuh (r16 + #4) }
    a324:	29 c0 09 b0 	b009c029     r9 = add (r9, #1)
    a328:	29 c0 00 7e 	7e00c029     if (p0) r9 = #1
    a32c:	01 c0 69 70 	7069c001     r1 = r9
    a330:	01 40 21 62 	62214001     { lc0 = r1
    a334:	00 c0 21 72 	7221c000       r1.h = #0 }
    a338:	18 e4 a1 71 	71a1e418     r1.l = #42008
    a33c:	00 c0 21 62 	6221c000     sa0 = r1
    a340:	00 60 60 73 	73606000     { r0 = !cmp.eq (r0, #0)
    a344:	04 c2 04 b0 	b004c204       r4 = add (r4, #16) }
    a348:	00 40 26 f1 	f1264000     { r0 = or (r6, r0)
    a34c:	44 34 76 30 	30763444       r6 = r7 ; r4 = sxth (r4) }
    a350:	00 80 c0 70 	70c08000     { r0 = zxth (r0)
    a354:	00 c0 00 7f 	7f00c000       nop }:endloop0
    a358:	00 47 50 a1 	a1504700     { memh (r16 + #0) = r7
    a35c:	01 c8 50 a1 	a150c801       memh (r16 + #2) = r8 }
    a360:	02 45 50 a1 	a1504502     { memh (r16 + #4) = r5
    a364:	80 c1 30 3c 	3c30c180       memh (r16 + #6) = #0 }
    a368:	04 c0 44 76 	7644c004     r4 = sub (#0, r4)
    a36c:	04 40 e4 70 	70e44004     { r4 = sxth (r4)
    a370:	5c c0 42 24 	2442c05c       if (!cmp.eq (r4.new, #0)) jump:nt a424 <_Dscale+0x1a4> }
    a374:	00 42 00 00 	00004200     { immext (#32768)
    a378:	81 2b 02 48 	48022b81       r2 = ##32768 ; r1 = memuh (r16 + #6) }
    a37c:	01 43 21 f1 	f1214301     { r1 = or (r1, r3)
    a380:	82 42 40 15 	15404282       p0 = cmp.gtu (r0, r2) ; if (!p0.new) jump:nt a480 <_Dscale+0x200>
    a384:	03 cd b0 a1 	a1b0cd03       memh (r16 + #6) = r1.new }
    a388:	00 c0 70 91 	9170c000     r0 = memuh (r16 + #0)
    a38c:	20 c0 00 b0 	b000c020     r0 = add (r0, #1)
    a390:	00 40 c0 70 	70c04000     { r0 = zxth (r0)
    a394:	00 ca b0 a1 	a1b0ca00       memh (r16 + #0) = r0.new }
    a398:	0e 40 40 10 	1040400e     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt a3b4 <_Dscale+0x134>
    a39c:	20 c0 50 43 	4350c020       if (p0.new) r0 = memh (r16 + #2) }
    a3a0:	20 c0 00 b0 	b000c020     r0 = add (r0, #1)
    a3a4:	00 40 c0 70 	70c04000     { r0 = zxth (r0)
    a3a8:	01 ca b0 a1 	a1b0ca01       memh (r16 + #2) = r0.new }
    a3ac:	8a 40 00 10 	1000408a     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt a4c0 <_Dscale+0x240>
    a3b0:	40 c0 50 43 	4350c040       if (p0.new) r0 = memh (r16 + #4) }
    a3b4:	61 c0 70 91 	9170c061     r1 = memuh (r16 + #6)
    a3b8:	92 c1 43 14 	1443c192     p0 = cmp.eq (r3, r1) ; if (!p0.new) jump:nt a4dc <_Dscale+0x25c>
    a3bc:	40 40 70 91 	91704040     { r0 = memuh (r16 + #4)
    a3c0:	90 c0 42 24 	2442c090       if (!cmp.eq (r0.new, #0)) jump:nt a4dc <_Dscale+0x25c> }
    a3c4:	20 40 70 91 	91704020     { r0 = memuh (r16 + #2)
    a3c8:	8c c0 42 24 	2442c08c       if (!cmp.eq (r0.new, #0)) jump:nt a4dc <_Dscale+0x25c> }
    a3cc:	00 40 70 91 	91704000     { r0 = memuh (r16 + #0)
    a3d0:	88 c0 42 24 	2442c088       if (!cmp.eq (r0.new, #0)) jump:nt a4dc <_Dscale+0x25c> }
    a3d4:	00 40 00 78 	78004000     { r0 = #0
    a3d8:	40 1f 0c 3e 	3e0c1f40       r17:16 = memd (sp + #8) ; dealloc_return }
    a3dc:	e3 41 03 76 	760341e3     { r3 = and (r3, #15)
    a3e0:	10 c0 43 24 	2443c010       if (!cmp.eq (r3.new, #0)) jump:nt a3fc <_Dscale+0x17c> }
    a3e4:	40 40 60 91 	91604040     { r0 = memuh (r0 + #4)
    a3e8:	0c c0 42 24 	2442c00c       if (!cmp.eq (r0.new, #0)) jump:nt a3fc <_Dscale+0x17c> }
    a3ec:	20 40 70 91 	91704020     { r0 = memuh (r16 + #2)
    a3f0:	08 c0 42 24 	2442c008       if (!cmp.eq (r0.new, #0)) jump:nt a3fc <_Dscale+0x17c> }
    a3f4:	00 40 70 91 	91704000     { r0 = memuh (r16 + #0)
    a3f8:	6a c0 32 24 	2432c06a       if (cmp.eq (r0.new, #0)) jump:nt a2c8 <_Dscale+0x48> }
    a3fc:	40 40 00 78 	78004040     { r0 = #2
    a400:	40 1f 0c 3e 	3e0c1f40       r17:16 = memd (sp + #8) ; dealloc_return }
    a404:	a6 fe ff 5b 	5bfffea6     call a150 <_Dnorm>
    a408:	e6 60 b0 10 	10b060e6     { p0 = cmp.gt (r0, #0) ; if (p0.new) jump:t a3d4 <_Dscale+0x154>
    a40c:	11 3c 02 50 	50023c11       r2 = r0 ; r1 = memw (sp + #4) }
    a410:	4a 7f ff 59 	59ff7f4a     { jump a2a4 <_Dscale+0x24>
    a414:	63 c0 70 91 	9170c063       r3 = memuh (r16 + #6) }
    a418:	07 40 68 70 	70684007     { r7 = r8
    a41c:	94 40 35 16 	16354094       r5 = #0 ; jump a340 <_Dscale+0xc0>
    a420:	08 c0 65 70 	7065c008       r8 = r5 }
    a424:	02 42 44 76 	76444202     { r2 = sub (#16, r4)
    a428:	00 60 60 73 	73606000       r0 = !cmp.eq (r0, #0)
    a42c:	6a 40 70 91 	9170406a       r10 = memuh (r16 + #6)
    a430:	09 c0 70 91 	9170c009       r9 = memuh (r16 + #0) }
    a434:	01 44 4a c6 	c64a4401     { r1 = asr (r10, r4)
    a438:	06 44 49 c6 	c6494406       r6 = asr (r9, r4)
    a43c:	28 40 70 91 	91704028       r8 = memuh (r16 + #2)
    a440:	47 c0 70 91 	9170c047       r7 = memuh (r16 + #4) }
    a444:	05 44 48 c6 	c6484405     { r5 = asr (r8, r4)
    a448:	80 42 09 cc 	cc094280       r0 |= asl (r9, r2)
    a44c:	01 40 c1 70 	70c14001       r1 = zxth (r1)
    a450:	03 cb b0 a1 	a1b0cb03       memh (r16 + #6) = r1.new }
    a454:	04 44 47 c6 	c6474404     { r4 = asr (r7, r4)
    a458:	86 42 08 cc 	cc084286       r6 |= asl (r8, r2)
    a45c:	00 40 c0 70 	70c04000       r0 = zxth (r0)
    a460:	01 c3 21 f1 	f121c301       r1 = or (r1, r3) }
    a464:	84 42 0a cc 	cc0a4284     { r4 |= asl (r10, r2)
    a468:	85 42 07 cc 	cc074285       r5 |= asl (r7, r2)
    a46c:	81 03 86 e0 	e0860381       memh (r16 + #0) = r6 ; memh (r16 + #6) = r1 }
    a470:	00 42 00 00 	00004200     { immext (#32768)
    a474:	02 40 00 78 	78004002       r2 = ##32768
    a478:	85 01 84 e2 	e2840185       memh (r16 + #4) = r4 ; memh (r16 + #2) = r5 }
    a47c:	86 c2 30 15 	1530c286     p0 = cmp.gtu (r0, r2) ; if (p0.new) jump:nt a388 <_Dscale+0x108>
    a480:	9c e2 70 14 	1470e29c     p0 = cmp.eq (r0, r2) ; if (!p0.new) jump:t a3b8 <_Dscale+0x138>
    a484:	00 40 70 91 	91704000     { r0 = memuh (r16 + #0)
    a488:	9a c0 f2 25 	25f2c09a       if (!tstbit (r0.new, #0)) jump:nt a3b8 <_Dscale+0x138> }
    a48c:	80 ff ff 59 	59ffff80     jump a38c <_Dscale+0x10c>
    a490:	68 44 00 00 	00004468     { immext (#72192)
    a494:	00 dc 82 9b 	9b82dc00       r0 = memw (r2 = ##72240) }
    a498:	22 c0 82 91 	9182c022     r2 = memw (r2 + #4)
    a49c:	41 df c2 8c 	8cc2df41     r1 = togglebit (r2, #31)
    a4a0:	14 7f ff 59 	59ff7f14     { jump a2c8 <_Dscale+0x48>
    a4a4:	00 c0 d0 a1 	a1d0c000       memd (r16 + #0) = r1:0 }
    a4a8:	00 40 00 78 	78004000     { r0 = #0
    a4ac:	03 43 50 a1 	a1504303       memh (r16 + #6) = r3
    a4b0:	00 c0 30 3c 	3c30c000       memh (r16 + #0) = #0 }
    a4b4:	00 41 30 3c 	3c304100     { memh (r16 + #4) = #0
    a4b8:	80 c0 30 3c 	3c30c080       memh (r16 + #2) = #0 }
    a4bc:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    a4c0:	20 c0 00 b0 	b000c020     r0 = add (r0, #1)
    a4c4:	00 40 c0 70 	70c04000     { r0 = zxth (r0)
    a4c8:	02 ca b0 a1 	a1b0ca02       memh (r16 + #4) = r0.new }
    a4cc:	e0 7f df 78 	78df7fe0     { r0 = #-1
    a4d0:	74 e0 70 10 	1070e074       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:t a3b4 <_Dscale+0x134> }
    a4d4:	fc 7e ff 59 	59ff7efc     { jump a2cc <_Dscale+0x4c>
    a4d8:	81 c1 30 3f 	3f30c181       memh (r16 + #6) += #1 }
    a4dc:	e0 7f df 78 	78df7fe0     { r0 = #-1
    a4e0:	f8 fe ff 59 	59fffef8       jump a2cc <_Dscale+0x4c> }
    a4e4:	00 42 00 00 	00004200     { immext (#32768)
    a4e8:	e3 41 03 76 	760341e3       r3 = and (r3, ##32783)
    a4ec:	00 3a 21 38 	38213a00       r1 = add (r2, r1) ; r0 = #-1 }
    a4f0:	c3 44 41 8e 	8e4144c3     { r3 |= asl (r1, #4)
    a4f4:	ee 7e ff 59 	59ff7eee       jump a2cc <_Dscale+0x4c>
    a4f8:	03 cd b0 a1 	a1b0cd03       memh (r16 + #6) = r3.new }
    a4fc:	00 c0 00 7f 	7f00c000     nop

0000a500 <_Fopen>:
    a500:	62 40 01 76 	76014062     { r2 = and (r1, #3)
    a504:	00 c2 21 85 	8521c200       p0 = !tstbit (r1, #2) }
    a508:	08 40 00 5c 	5c004008     { if (p0) jump a518 <_Fopen+0x18>
    a50c:	1b 44 00 00 	0000441b       immext (#67264)
    a510:	02 f2 82 9d 	9d82f202       r2 = memw (r2 << #2 + ##67272) }
    a514:	02 ca c2 8c 	8cc2ca02     r2 = setbit (r2, #10)
    a518:	00 43 21 85 	85214300     { p0 = !tstbit (r1, #3)
    a51c:	06 c8 00 5c 	5c00c806       if (p0.new) jump:nt a524 <_Fopen+0x24> }
    a520:	02 c9 c2 8c 	8cc2c902     r2 = setbit (r2, #9)
    a524:	00 44 21 85 	85214400     { p0 = !tstbit (r1, #4)
    a528:	06 c8 00 5c 	5c00c806       if (p0.new) jump:nt a530 <_Fopen+0x30> }
    a52c:	02 c8 82 76 	7682c802     r2 = or (r2, #64)
    a530:	00 45 21 85 	85214500     { p0 = !tstbit (r1, #5)
    a534:	0a c8 20 5c 	5c20c80a       if !p0.new jump:nt a544 <_Fopen+0x44> }
    a538:	01 4e c2 8c 	8cc24e01     { r1 = setbit (r2, #14)
    a53c:	64 5c 00 58 	58005c64       jump de00 <open>
    a540:	02 f0 00 78 	7800f002       r2 = #384 }
    a544:	01 4f c2 8c 	8cc24f01     { r1 = setbit (r2, #15)
    a548:	5e 5c 00 58 	58005c5e       jump de00 <open>
    a54c:	02 f0 00 78 	7800f002       r2 = #384 }

0000a550 <_Getfld>:
    a550:	10 40 60 70 	70604010     { r16 = r0
    a554:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    a558:	60 40 80 91 	91804060     { r0 = memw (r0 + #12)
    a55c:	00 d1 00 3c 	3c00d100       memb (r0 + #34) = #0 }
    a560:	00 c0 00 91 	9100c000     r0 = memb (r0 + #0)
    a564:	60 fb e0 bf 	bfe0fb60     r0 = add (r0, #-37)
    a568:	e0 df 00 76 	7600dfe0     r0 = and (r0, #255)
    a56c:	60 4a 80 75 	75804a60     { p0 = cmp.gtu (r0, #83)
    a570:	08 c8 20 5c 	5c20c808       if !p0.new jump:nt a57c <_Getfld+0x2c> }
    a574:	00 c0 00 78 	7800c000     r0 = #0
    a578:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return
    a57c:	01 40 00 78 	78004001     { r1 = #0
    a580:	22 40 00 78 	78004022       r2 = #1
    a584:	1b 44 00 00 	0000441b       immext (#67264)
    a588:	00 f6 80 9d 	9d80f600       r0 = memw (r0 << #2 + ##67288) }
    a58c:	00 c0 80 52 	5280c000     jumpr r0
    a590:	ec d0 10 3c 	3c10d0ec     memb (r16 + #33) = #108
    a594:	20 60 30 73 	73306020     { r1:0 = combine (#1, r16)
    a598:	2e 48 00 58 	5800482e       jump b5f0 <_Getstr>
    a59c:	00 1f 04 3e 	3e041f00       r17:16 = memd (sp + #0) ; deallocframe }
    a5a0:	03 40 90 91 	91904003     { r3 = memw (r16 + #0)
    a5a4:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    a5a8:	00 40 a3 50 	50a34000     { callr r3
    a5ac:	20 c0 90 91 	9190c020       r0 = memw (r16 + #4) }
    a5b0:	a0 44 00 75 	750044a0     { p0 = cmp.eq (r0, #37)
    a5b4:	42 48 00 5c 	5c004842       if (p0.new) jump:nt a634 <_Getfld+0xe4>
    a5b8:	01 c0 60 70 	7060c001       r1 = r0 }
    a5bc:	02 40 00 78 	78004002     { r2 = #0
    a5c0:	3e 40 80 11 	1180403e       p0 = cmp.eq (r0, #-1) ; if (p0.new) jump:nt a638 <_Getfld+0xe8>
    a5c4:	20 c0 90 47 	4790c020       if !p0.new r0 = memw (r16 + #4) }
    a5c8:	03 40 90 91 	91904003     { r3 = memw (r16 + #0)
    a5cc:	21 c2 50 3f 	3f50c221       memw (r16 + #16) -= #1 }
    a5d0:	00 c0 a3 50 	50a3c000     callr r3
    a5d4:	d0 ff ff 59 	59ffffd0     jump a574 <_Getfld+0x24>
    a5d8:	00 60 30 73 	73306000     { r1:0 = combine (#0, r16)
    a5dc:	6c 40 00 58 	5800406c       jump a6b0 <_Getfloat>
    a5e0:	00 1f 04 3e 	3e041f00       r17:16 = memd (sp + #0) ; deallocframe }
    a5e4:	00 60 30 73 	73306000     { r1:0 = combine (#0, r16)
    a5e8:	de 45 00 58 	580045de       jump b1a0 <_Getint>
    a5ec:	00 1f 04 3e 	3e041f00       r17:16 = memd (sp + #0) ; deallocframe }
    a5f0:	e0 7f 30 73 	73307fe0     { r1:0 = combine (#-1, r16)
    a5f4:	00 48 00 58 	58004800       jump b5f0 <_Getstr>
    a5f8:	00 1f 04 3e 	3e041f00       r17:16 = memd (sp + #0) ; deallocframe }
    a5fc:	00 60 30 73 	73306000     { r1:0 = combine (#0, r16)
    a600:	fa 47 00 58 	580047fa       jump b5f0 <_Getstr>
    a604:	00 1f 04 3e 	3e041f00       r17:16 = memd (sp + #0) ; deallocframe }
    a608:	00 44 30 91 	91304400     { r0 = memub (r16 + #32)
    a60c:	16 c0 42 24 	2442c016       if (!cmp.eq (r0.new, #0)) jump:nt a634 <_Getfld+0xe4> }
    a610:	20 c4 10 91 	9110c420     r0 = memb (r16 + #33)
    a614:	c0 f3 e0 bf 	bfe0f3c0     r0 = add (r0, #-98)
    a618:	e0 5f 00 76 	76005fe0     { r0 = and (r0, #255)
    a61c:	16 d8 42 25 	2542d816       if (!cmp.gtu (r0.new, #24)) jump:nt a644 <_Getfld+0xf4> }
    a620:	20 40 00 78 	78004020     { r0 = #1
    a624:	83 04 81 02 	02810483       r1 = memw (r16 + #8) ; r3 = memw (r16 + #16) }
    a628:	12 00 41 40 	40410012     r1 = add (r1, #4) ; r2 = memw (r1 + #0)
    a62c:	a6 7f ff 59 	59ff7fa6     { jump a578 <_Getfld+0x28>
    a630:	81 02 23 a0 	a0230281       memw (r2 + #0) = r3 ; memw (r16 + #8) = r1 }
    a634:	a2 c1 30 16 	1630c1a2     r0 = #1 ; jump a578 <_Getfld+0x28>
    a638:	e0 7f df 78 	78df7fe0     { r0 = #-1
    a63c:	a0 7f ff 59 	59ff7fa0       jump a578 <_Getfld+0x28>
    a640:	21 c2 50 3f 	3f50c221       memw (r16 + #16) -= #1 }
    a644:	20 44 00 00 	00004420     { immext (#67584)
    a648:	00 fa 80 9d 	9d80fa00       r0 = memw (r0 << #2 + ##67624) }
    a64c:	00 c0 80 52 	5280c000     jumpr r0
    a650:	20 40 00 78 	78004020     { r0 = #1
    a654:	84 04 81 02 	02810484       r1 = memw (r16 + #8) ; r4 = memw (r16 + #16) }
    a658:	04 40 44 84 	84444004     { r5:4 = sxtw (r4)
    a65c:	81 40 01 b0 	b0014081       r1 = add (r1, #4)
    a660:	02 40 81 91 	91814002       r2 = memw (r1 + #0)
    a664:	02 d5 b0 a1 	a1b0d502       memw (r16 + #8) = r1.new }
    a668:	88 7f ff 59 	59ff7f88     { jump a578 <_Getfld+0x28>
    a66c:	00 c4 c2 a1 	a1c2c400       memd (r2 + #0) = r5:4 }
    a670:	20 40 00 78 	78004020     { r0 = #1
    a674:	83 04 81 02 	02810483       r1 = memw (r16 + #8) ; r3 = memw (r16 + #16) }
    a678:	81 40 01 b0 	b0014081     { r1 = add (r1, #4)
    a67c:	02 40 81 91 	91814002       r2 = memw (r1 + #0)
    a680:	02 d5 b0 a1 	a1b0d502       memw (r16 + #8) = r1.new }
    a684:	7a 7f ff 59 	59ff7f7a     { jump a578 <_Getfld+0x28>
    a688:	00 c3 42 a1 	a142c300       memh (r2 + #0) = r3 }
    a68c:	20 40 00 78 	78004020     { r0 = #1
    a690:	82 04 81 02 	02810482       r1 = memw (r16 + #8) ; r2 = memw (r16 + #16) }
    a694:	83 40 01 b0 	b0014083     { r3 = add (r1, #4)
    a698:	01 40 81 91 	91814001       r1 = memw (r1 + #0)
    a69c:	02 d5 b0 a1 	a1b0d502       memw (r16 + #8) = r3.new }
    a6a0:	6c 7f ff 59 	59ff7f6c     { jump a578 <_Getfld+0x28>
    a6a4:	00 c2 01 a1 	a101c200       memb (r1 + #0) = r2 }
    a6a8:	00 c0 00 7f 	7f00c000     nop
    a6ac:	00 c0 00 7f 	7f00c000     nop

0000a6b0 <_Getfloat>:
    a6b0:	98 60 00 5a 	5a006098     { call e7e0 <__save_r16_through_r25>
    a6b4:	f0 3c 12 68 	68123cf0       r2 = #1 ; allocframe (#120) }
    a6b8:	18 40 61 70 	70614018     { r24 = r1
    a6bc:	01 40 00 78 	78004001       r1 = #0
    a6c0:	00 06 08 50 	50080600       r16 = r0 ; r0 = memw (r0 + #24) }
    a6c4:	00 40 40 75 	75404000     { p0 = cmp.gt (r0, #0)
    a6c8:	03 40 90 91 	91904003       r3 = memw (r16 + #0)
    a6cc:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    a6d0:	ff 7f ff 07 	07ff7fff     { immext (#2147483584)
    a6d4:	c0 47 80 7e 	7e8047c0       if !p0 r0 = ##2147483646
    a6d8:	00 40 a3 52 	52a34000       hintjr (r3)
    a6dc:	e0 df 00 74 	7400dfe0       if (p0) r0 = add (r0, #-1) }
    a6e0:	00 40 a3 50 	50a34000     { callr r3
    a6e4:	80 05 80 81 	81800580       r0 = memw (r16 + #4) ; memw (r16 + #20) = r0 }
    a6e8:	a0 45 00 75 	750045a0     { p0 = cmp.eq (r0, #45)
    a6ec:	02 68 00 5c 	5c006802       if (p0.new) jump:nt a8ec <_Getfloat+0x23c>
    a6f0:	11 c0 60 70 	7060c011       r17 = r0 }
    a6f4:	60 45 00 75 	75004560     { p0 = cmp.eq (r0, #43)
    a6f8:	fc 48 00 5c 	5c0048fc       if (p0.new) jump:nt a8ec <_Getfloat+0x23c>
    a6fc:	13 e0 9d 74 	749de013       if !p0.new r19 = add (r29, #0) }
    a700:	00 46 11 75 	75114600     { p0 = cmp.eq (r17, #48)
    a704:	14 e8 00 5c 	5c00e814       if (p0.new) jump:nt a928 <_Getfloat+0x278> }
    a708:	c0 49 11 75 	751149c0     { p0 = cmp.eq (r17, #78)
    a70c:	78 c8 01 5c 	5c01c878       if (p0.new) jump:nt abf8 <_Getfloat+0x548> }
    a710:	c0 4d 11 75 	75114dc0     { p0 = cmp.eq (r17, #110)
    a714:	74 48 01 5c 	5c014874       if (p0.new) jump:nt abf8 <_Getfloat+0x548>
    a718:	20 ed 51 73 	7351ed20       r0 = cmp.eq (r17, #105) }
    a71c:	30 49 11 75 	75114930     { p0 = !cmp.eq (r17, #73)
    a720:	a2 e8 01 5c 	5c01e8a2       if (p0.new) jump:nt ae60 <_Getfloat+0x7b0> }
    a724:	33 40 13 b0 	b0134033     { r19 = add (r19, #1)
    a728:	a0 40 90 91 	919040a0       r0 = memw (r16 + #20)
    a72c:	69 c0 13 3c 	3c13c069       memb (r19 + #0) = #105 }
    a730:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    a734:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    a738:	01 40 00 78 	78004001     { r1 = #0
    a73c:	15 40 00 00 	00004015       immext (#1344)
    a740:	28 41 c0 11 	11c04128       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt ac8c <_Getfloat+0x5dc>
    a744:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    a748:	22 40 00 78 	78004022     { r2 = #1
    a74c:	00 40 a3 50 	50a34000       callr r3
    a750:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    a754:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    a758:	c0 49 00 75 	750049c0     { p0 = cmp.eq (r0, #78)
    a75c:	0a 48 00 5c 	5c00480a       if (p0.new) jump:nt a76c <_Getfloat+0xbc>
    a760:	11 c0 60 70 	7060c011       r17 = r0 }
    a764:	c0 4d 00 75 	75004dc0     { p0 = cmp.eq (r0, #110)
    a768:	6e d8 21 5c 	5c21d86e       if !p0.new jump:t ac40 <_Getfloat+0x590> }
    a76c:	33 40 13 b0 	b0134033     { r19 = add (r19, #1)
    a770:	a0 40 90 91 	919040a0       r0 = memw (r16 + #20)
    a774:	6e c0 13 3c 	3c13c06e       memb (r19 + #0) = #110 }
    a778:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    a77c:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    a780:	01 40 00 78 	78004001     { r1 = #0
    a784:	14 40 00 00 	00004014       immext (#1280)
    a788:	18 41 c0 11 	11c04118       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt ac8c <_Getfloat+0x5dc>
    a78c:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    a790:	22 40 00 78 	78004022     { r2 = #1
    a794:	00 40 a3 50 	50a34000       callr r3
    a798:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    a79c:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    a7a0:	c0 48 00 75 	750048c0     { p0 = cmp.eq (r0, #70)
    a7a4:	0a 48 00 5c 	5c00480a       if (p0.new) jump:nt a7b4 <_Getfloat+0x104>
    a7a8:	11 c0 60 70 	7060c011       r17 = r0 }
    a7ac:	c0 4c 00 75 	75004cc0     { p0 = cmp.eq (r0, #102)
    a7b0:	4a d8 21 5c 	5c21d84a       if !p0.new jump:t ac40 <_Getfloat+0x590> }
    a7b4:	a0 c0 90 91 	9190c0a0     r0 = memw (r16 + #20)
    a7b8:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    a7bc:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    a7c0:	01 40 00 78 	78004001     { r1 = #0
    a7c4:	24 40 00 00 	00004024       immext (#2304)
    a7c8:	48 41 c0 11 	11c04148       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt b0e4 <_Getfloat+0xa34>
    a7cc:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    a7d0:	22 40 00 78 	78004022     { r2 = #1
    a7d4:	00 40 a3 50 	50a34000       callr r3
    a7d8:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    a7dc:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    a7e0:	20 4d 00 75 	75004d20     { p0 = cmp.eq (r0, #105)
    a7e4:	a2 48 22 5c 	5c2248a2       if !p0.new jump:nt b124 <_Getfloat+0xa74>
    a7e8:	11 c0 60 70 	7060c011       r17 = r0 }
    a7ec:	a0 c0 90 91 	9190c0a0     r0 = memw (r16 + #20)
    a7f0:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    a7f4:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    a7f8:	01 40 00 78 	78004001     { r1 = #0
    a7fc:	24 40 00 00 	00004024       immext (#2304)
    a800:	10 41 c0 11 	11c04110       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt b100 <_Getfloat+0xa50>
    a804:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    a808:	22 40 00 78 	78004022     { r2 = #1
    a80c:	00 40 a3 50 	50a34000       callr r3
    a810:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    a814:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    a818:	c0 4d 00 75 	75004dc0     { p0 = cmp.eq (r0, #110)
    a81c:	0a 58 00 5c 	5c00580a       if (p0.new) jump:t a82c <_Getfloat+0x17c>
    a820:	11 c0 60 70 	7060c011       r17 = r0 }
    a824:	c0 49 00 75 	750049c0     { p0 = cmp.eq (r0, #78)
    a828:	9c c8 22 5c 	5c22c89c       if !p0.new jump:nt b15c <_Getfloat+0xaac> }
    a82c:	a0 c0 90 91 	9190c0a0     r0 = memw (r16 + #20)
    a830:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    a834:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    a838:	01 40 00 78 	78004001     { r1 = #0
    a83c:	23 40 00 00 	00004023       immext (#2240)
    a840:	10 41 c0 11 	11c04110       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt b100 <_Getfloat+0xa50>
    a844:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    a848:	22 40 00 78 	78004022     { r2 = #1
    a84c:	00 40 a3 50 	50a34000       callr r3
    a850:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    a854:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    a858:	20 4d 00 75 	75004d20     { p0 = cmp.eq (r0, #105)
    a85c:	0a 58 00 5c 	5c00580a       if (p0.new) jump:t a86c <_Getfloat+0x1bc>
    a860:	11 c0 60 70 	7060c011       r17 = r0 }
    a864:	20 49 00 75 	75004920     { p0 = cmp.eq (r0, #73)
    a868:	7c c8 22 5c 	5c22c87c       if !p0.new jump:nt b15c <_Getfloat+0xaac> }
    a86c:	a0 c0 90 91 	9190c0a0     r0 = memw (r16 + #20)
    a870:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    a874:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    a878:	01 40 00 78 	78004001     { r1 = #0
    a87c:	22 40 00 00 	00004022       immext (#2176)
    a880:	10 41 c0 11 	11c04110       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt b100 <_Getfloat+0xa50>
    a884:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    a888:	22 40 00 78 	78004022     { r2 = #1
    a88c:	00 40 a3 50 	50a34000       callr r3
    a890:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    a894:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    a898:	80 4e 00 75 	75004e80     { p0 = cmp.eq (r0, #116)
    a89c:	5e 48 22 5c 	5c22485e       if !p0.new jump:nt b154 <_Getfloat+0xaa4>
    a8a0:	11 c0 60 70 	7060c011       r17 = r0 }
    a8a4:	a0 c0 90 91 	9190c0a0     r0 = memw (r16 + #20)
    a8a8:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    a8ac:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    a8b0:	01 40 00 78 	78004001     { r1 = #0
    a8b4:	21 40 00 00 	00004021       immext (#2112)
    a8b8:	20 41 c0 11 	11c04120       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt b100 <_Getfloat+0xa50>
    a8bc:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    a8c0:	22 40 00 78 	78004022     { r2 = #1
    a8c4:	00 40 a3 50 	50a34000       callr r3
    a8c8:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    a8cc:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    a8d0:	20 4f 00 75 	75004f20     { p0 = cmp.eq (r0, #121)
    a8d4:	0a 48 00 5c 	5c00480a       if (p0.new) jump:nt a8e4 <_Getfloat+0x234>
    a8d8:	11 c0 60 70 	7060c011       r17 = r0 }
    a8dc:	20 4b 00 75 	75004b20     { p0 = cmp.eq (r0, #89)
    a8e0:	40 c8 22 5c 	5c22c840       if !p0.new jump:nt b15c <_Getfloat+0xaac> }
    a8e4:	ce 43 00 58 	580043ce     { jump b080 <_Getfloat+0x9d0>
    a8e8:	66 c0 13 3c 	3c13c066       memb (r19 + #0) = #102 }
    a8ec:	a0 40 90 91 	919040a0     { r0 = memw (r16 + #20)
    a8f0:	00 d1 1d a1 	a11dd100       memb (r29 + #0) = r17 }
    a8f4:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    a8f8:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    a8fc:	01 40 00 78 	78004001     { r1 = #0
    a900:	38 41 c0 11 	11c04138       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt a96c <_Getfloat+0x2bc>
    a904:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    a908:	22 40 00 78 	78004022     { r2 = #1
    a90c:	33 40 1d b0 	b01d4033       r19 = add (r29, #1)
    a910:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    a914:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    a918:	00 c0 a3 50 	50a3c000     callr r3
    a91c:	11 c0 60 70 	7060c011     r17 = r0
    a920:	00 46 11 75 	75114600     { p0 = cmp.eq (r17, #48)
    a924:	f4 d8 ff 5c 	5cffd8f4       if !p0.new jump:t a708 <_Getfloat+0x58> }
    a928:	a0 c0 90 91 	9190c0a0     r0 = memw (r16 + #20)
    a92c:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    a930:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    a934:	01 40 00 78 	78004001     { r1 = #0
    a938:	da 41 d0 11 	11d041da       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt ace8 <_Getfloat+0x638>
    a93c:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    a940:	22 40 00 78 	78004022     { r2 = #1
    a944:	00 40 a3 50 	50a34000       callr r3
    a948:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    a94c:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    a950:	00 4b 00 75 	75004b00     { p0 = cmp.eq (r0, #88)
    a954:	2c 68 01 5c 	5c01682c       if (p0.new) jump:nt afa8 <_Getfloat+0x8f8>
    a958:	11 c0 60 70 	7060c011       r17 = r0 }
    a95c:	26 68 01 5c 	5c016826     { if (p0.new) jump:nt afa8 <_Getfloat+0x8f8>
    a960:	4a 43 00 58 	5800434a       jump aff0 <_Getfloat+0x940>
    a964:	00 4f 00 75 	75004f00       p0 = cmp.eq (r0, #120)
    a968:	54 e1 00 7c 	7c00e154       r21:20 = combine (#10, #1) }
    a96c:	33 40 1d b0 	b01d4033     { r19 = add (r29, #1)
    a970:	f1 7f df 78 	78df7ff1       r17 = #-1
    a974:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    a978:	54 41 00 7c 	7c004154     { r21:20 = combine (#10, #0)
    a97c:	00 c0 00 7f 	7f00c000       nop }
    a980:	64 40 89 11 	11894064     { p0 = cmp.eq (r17, #-1) ; if (p0.new) jump:nt aa48 <_Getfloat+0x398>
    a984:	4a 3a 4e 3a 	3a4e3a4a       if (p0.new) r22 = #0 ; if (p0.new) r18 = #0 }
    a988:	02 40 75 70 	70754002     { r2 = r21
    a98c:	22 44 00 00 	00004422       immext (#67712)
    a990:	91 30 00 29 	29003091       r0 = ##67728 ; r1 = r17 }
    a994:	7e d8 ff 5b 	5bffd87e     call 5a90 <memchr>
    a998:	01 40 00 75 	75004001     { p1 = cmp.eq (r0, #0)
    a99c:	0e 28 0a 28 	280a280e       r18 = #0 ; r22 = #0 }
    a9a0:	e0 45 52 75 	755245e0     { p0 = cmp.gt (r18, #47)
    a9a4:	30 41 00 5c 	5c004130       if (p1) jump aa00 <_Getfloat+0x350>
    a9a8:	00 40 00 7f 	7f004000       nop
    a9ac:	00 c0 00 7f 	7f00c000       nop }
    a9b0:	32 40 92 74 	74924032     { if !p0 r18 = add (r18, #1)
    a9b4:	36 40 16 74 	74164036       if (p0) r22 = add (r22, #1)
    a9b8:	01 40 00 78 	78004001       r1 = #0
    a9bc:	0c f1 13 ab 	ab13f10c       if !p0 memb (r19 ++ #1) = r17 }
    a9c0:	22 40 00 78 	78004022     { r2 = #1
    a9c4:	80 05 1c 48 	481c0580       r20 = #1 ; r0 = memw (r16 + #20) }
    a9c8:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    a9cc:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    a9d0:	38 41 c0 11 	11c04138     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt aa40 <_Getfloat+0x390>
    a9d4:	03 40 90 43 	43904003       if (p0.new) r3 = memw (r16 + #0)
    a9d8:	20 c0 90 43 	4390c020       if (p0.new) r0 = memw (r16 + #4) }
    a9dc:	00 40 a3 50 	50a34000     { callr r3
    a9e0:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    a9e4:	32 40 80 11 	11804032     { p0 = cmp.eq (r0, #-1) ; if (p0.new) jump:nt aa48 <_Getfloat+0x398>
    a9e8:	d2 30 09 30 	300930d2       r17 = r0 ; r2 = r21 }
    a9ec:	52 58 ff 5b 	5bff5852     { call 5a90 <memchr>
    a9f0:	22 44 00 00 	00004422       immext (#67712)
    a9f4:	91 30 00 29 	29003091       r0 = ##67728 ; r1 = r17 }
    a9f8:	e0 45 52 75 	755245e0     { p0 = cmp.gt (r18, #47)
    a9fc:	dc e0 70 12 	1270e0dc       p1 = cmp.eq (r0, #0) ; if (!p1.new) jump:t a9b0 <_Getfloat+0x300> }
    aa00:	f8 d9 00 5a 	5a00d9f8     call ddf0 <localeconv>
    aa04:	60 c1 80 91 	9180c160     r0 = memw (r0 + #44)
    aa08:	00 40 20 91 	91204000     { r0 = memub (r0 + #0)
    aa0c:	24 d1 42 20 	2042d124       if (!cmp.eq (r0.new, r17)) jump:nt aa50 <_Getfloat+0x3a0> }
    aa10:	a0 40 90 91 	919040a0     { r0 = memw (r16 + #20)
    aa14:	08 d1 13 ab 	ab13d108       memb (r19 ++ #1) = r17 }
    aa18:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    aa1c:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    aa20:	01 40 00 78 	78004001     { r1 = #0
    aa24:	76 41 d0 11 	11d04176       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt ad0c <_Getfloat+0x65c>
    aa28:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    aa2c:	22 40 00 78 	78004022     { r2 = #1
    aa30:	00 40 a3 50 	50a34000       callr r3
    aa34:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    aa38:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    aa3c:	0a c9 00 17 	1700c90a     r17 = r0 ; jump aa50 <_Getfloat+0x3a0>
    aa40:	34 40 00 78 	78004034     { r20 = #1
    aa44:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    aa48:	d4 d9 00 5a 	5a00d9d4     call ddf0 <localeconv>
    aa4c:	f1 ff df 78 	78dffff1     r17 = #-1
    aa50:	3e c0 4a 10 	104ac03e     p0 = cmp.eq (r18, #0) ; if (!p0.new) jump:nt aacc <_Getfloat+0x41c>
    aa54:	00 46 11 75 	75114600     { p0 = cmp.eq (r17, #48)
    aa58:	3c 48 20 5c 	5c20483c       if !p0.new jump:nt aacc <_Getfloat+0x41c>
    aa5c:	01 40 00 78 	78004001       r1 = #0
    aa60:	a0 c0 90 43 	4390c0a0       if (p0.new) r0 = memw (r16 + #20) }
    aa64:	22 40 00 78 	78004022     { r2 = #1
    aa68:	f6 7f f6 bf 	bff67ff6       r22 = add (r22, #-1)
    aa6c:	e0 7f e0 bf 	bfe07fe0       r0 = add (r0, #-1)
    aa70:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    aa74:	1c c1 c0 11 	11c0c11c     p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt aaac <_Getfloat+0x3fc>
    aa78:	03 40 90 91 	91904003     { r3 = memw (r16 + #0)
    aa7c:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    aa80:	00 40 a3 50 	50a34000     { callr r3
    aa84:	20 c0 90 91 	9190c020       r0 = memw (r16 + #4) }
    aa88:	00 46 00 75 	75004600     { p0 = cmp.eq (r0, #48)
    aa8c:	16 48 20 5c 	5c204816       if !p0.new jump:nt aab4 <_Getfloat+0x404>
    aa90:	11 40 60 70 	70604011       r17 = r0
    aa94:	a0 c0 90 43 	4390c0a0       if (p0.new) r0 = memw (r16 + #20) }
    aa98:	22 40 00 78 	78004022     { r2 = #1
    aa9c:	f6 7f f6 bf 	bff67ff6       r22 = add (r22, #-1)
    aaa0:	00 33 01 28 	28013300       r1 = #0 ; r0 = add (r0, #-1) }
    aaa4:	ea 61 b0 11 	11b061ea     { p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t aa78 <_Getfloat+0x3c8>
    aaa8:	05 c0 90 a1 	a190c005       memw (r16 + #20) = r0 }
    aaac:	f1 7f df 78 	78df7ff1     { r17 = #-1
    aab0:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    aab4:	e0 7f 76 75 	75767fe0     { p0 = cmp.gt (r22, #-1)
    aab8:	34 40 00 78 	78004034       r20 = #1
    aabc:	00 40 00 00 	00004000       immext (#0)
    aac0:	10 e0 93 39 	3993e010       if !p0.new memb (r19 + #0) = ##48 }
    aac4:	36 40 96 74 	74964036     { if !p0 r22 = add (r22, #1)
    aac8:	33 c0 93 74 	7493c033       if !p0 r19 = add (r19, #1) }
    aacc:	e0 ff 31 75 	7531ffe0     p0 = cmp.eq (r17, #-1)
    aad0:	37 40 00 7a 	7a004037     { r23 = mux (p0, #1, #0)
    aad4:	5c 60 01 5c 	5c01605c       if (p0) jump b188 <_Getfloat+0xad8>
    aad8:	00 40 00 7f 	7f004000       nop
    aadc:	00 c0 00 7f 	7f00c000       nop }
    aae0:	02 40 75 70 	70754002     { r2 = r21
    aae4:	22 44 00 00 	00004422       immext (#67712)
    aae8:	91 30 00 29 	29003091       r0 = ##67728 ; r1 = r17 }
    aaec:	d2 d7 ff 5b 	5bffd7d2     call 5a90 <memchr>
    aaf0:	01 40 00 75 	75004001     { p1 = cmp.eq (r0, #0)
    aaf4:	e0 45 52 75 	755245e0       p0 = cmp.gt (r18, #47)
    aaf8:	12 28 01 28 	28012812       r1 = #0 ; r2 = #1 }
    aafc:	34 40 a0 7e 	7ea04034     { if !p1 r20 = #1
    ab00:	46 e1 01 5c 	5c01e146       if (p1) jump b188 <_Getfloat+0xad8> }
    ab04:	32 40 92 74 	74924032     { if !p0 r18 = add (r18, #1)
    ab08:	0c f1 13 ab 	ab13f10c       if !p0 memb (r19 ++ #1) = r17 }
    ab0c:	a0 c0 90 91 	9190c0a0     r0 = memw (r16 + #20)
    ab10:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    ab14:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    ab18:	6c 41 c0 11 	11c0416c     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt abf0 <_Getfloat+0x540>
    ab1c:	03 40 90 43 	43904003       if (p0.new) r3 = memw (r16 + #0)
    ab20:	20 c0 90 43 	4390c020       if (p0.new) r0 = memw (r16 + #4) }
    ab24:	00 40 a3 50 	50a34000     { callr r3
    ab28:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    ab2c:	e0 7f 20 75 	75207fe0     { p0 = cmp.eq (r0, #-1)
    ab30:	11 c0 60 70 	7060c011       r17 = r0 }
    ab34:	37 40 00 7a 	7a004037     { r23 = mux (p0, #1, #0)
    ab38:	d6 e0 ff 5c 	5cffe0d6       if !p0 jump aae0 <_Getfloat+0x430> }
    ab3c:	f1 ff df 78 	78dffff1     r17 = #-1
    ab40:	ec ca 0d 10 	100dcaec     p0 = cmp.eq (r21, #10) ; if (p0.new) jump:nt ad18 <_Getfloat+0x668>
    ab44:	00 4a 11 75 	75114a00     { p0 = cmp.eq (r17, #80)
    ab48:	f2 c8 00 5c 	5c00c8f2       if (p0.new) jump:nt ad28 <_Getfloat+0x678> }
    ab4c:	00 4e 11 75 	75114e00     { p0 = cmp.eq (r17, #112)
    ab50:	ee c8 00 5c 	5c00c8ee       if (p0.new) jump:nt ad28 <_Getfloat+0x678> }
    ab54:	e0 7f 31 75 	75317fe0     { p0 = cmp.eq (r17, #-1)
    ab58:	14 c0 00 78 	7800c014       r20 = #0 }
    ab5c:	37 c0 00 7a 	7a00c037     r23 = mux (p0, #1, #0)
    ab60:	7c 43 9f 11 	119f437c     { p0 = tstbit (r23, #0) ; if (p0.new) jump:nt ae58 <_Getfloat+0x7a8>
    ab64:	00 40 00 7f 	7f004000       nop
    ab68:	00 40 00 7f 	7f004000       nop
    ab6c:	00 c0 00 7f 	7f00c000       nop }
    ab70:	01 40 71 70 	70714001     { r1 = r17
    ab74:	02 40 00 78 	78004002       r2 = #0
    ab78:	03 40 90 91 	91904003       r3 = memw (r16 + #0)
    ab7c:	21 c2 50 3f 	3f50c221       memw (r16 + #16) -= #1 }
    ab80:	00 40 a3 50 	50a34000     { callr r3
    ab84:	20 c0 90 91 	9190c020       r0 = memw (r16 + #4) }
    ab88:	7c 43 8c 11 	118c437c     { p0 = tstbit (r20, #0) ; if (p0.new) jump:nt ac80 <_Getfloat+0x5d0>
    ab8c:	00 c0 00 7f 	7f00c000       nop }
    ab90:	00 44 30 91 	91304400     { r0 = memub (r16 + #32)
    ab94:	00 c0 13 3c 	3c13c000       memb (r19 + #0) = #0 }
    ab98:	92 c0 40 10 	1040c092     p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt acbc <_Getfloat+0x60c>
    ab9c:	02 40 76 70 	70764002     { r2 = r22
    aba0:	94 4a cd 10 	10cd4a94       p0 = cmp.gt (r21, #10) ; if (!p0.new) jump:nt acc4 <_Getfloat+0x614>
    aba4:	00 e0 3d 73 	733de000       r1:0 = combine (#0, r29) }
    aba8:	00 60 3d 73 	733d6000     { r1:0 = combine (#0, r29)
    abac:	44 53 00 5a 	5a005344       call d230 <_Stold>
    abb0:	02 c0 00 78 	7800c002       r2 = #0 }
    abb4:	41 42 16 8c 	8c164241     { r1 = asl (r22, #2)
    abb8:	7e 47 00 5a 	5a00477e       call bab0 <_LDscale>
    abbc:	48 2a 20 6d 	6d202a48       r0 = add (sp, #72) ; memd (sp + #72) = r1:0 }
    abc0:	20 44 30 91 	91304420     { r0 = memub (r16 + #33)
    abc4:	01 d1 10 3c 	3c10d101       memb (r16 + #34) = #1 }
    abc8:	80 4d 00 75 	75004d80     { p0 = cmp.eq (r0, #108)
    abcc:	72 c8 00 5c 	5c00c872       if (p0.new) jump:nt acac <_Getfloat+0x5fc> }
    abd0:	80 49 00 75 	75004980     { p0 = cmp.eq (r0, #76)
    abd4:	6e c8 00 5c 	5c00c86e       if (p0.new) jump:nt acac <_Getfloat+0x5fc> }
    abd8:	00 40 18 75 	75184000     { p0 = cmp.eq (r24, #0)
    abdc:	64 48 01 5c 	5c014864       if (p0.new) jump:nt b0a0 <_Getfloat+0x9f0>
    abe0:	49 3e 10 48 	48103e49       r0 = #1 ; r3:2 = memd (sp + #72) }
    abe4:	21 40 02 88 	88024021     { r1 = convert_df2sf (r3:2)
    abe8:	00 d3 b8 a1 	a1b8d300       memw (r24 + #0) = r1.new }
    abec:	2c de 00 58 	5800de2c     jump e844 <__restore_r16_through_r25_and_deallocframe>
    abf0:	a6 7f ff 59 	59ff7fa6     { jump ab3c <_Getfloat+0x48c>
    abf4:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    abf8:	33 40 13 b0 	b0134033     { r19 = add (r19, #1)
    abfc:	a0 40 90 91 	919040a0       r0 = memw (r16 + #20)
    ac00:	6e c0 13 3c 	3c13c06e       memb (r19 + #0) = #110 }
    ac04:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    ac08:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    ac0c:	01 40 00 78 	78004001     { r1 = #0
    ac10:	40 41 c0 11 	11c04140       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt ac8c <_Getfloat+0x5dc>
    ac14:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    ac18:	22 40 00 78 	78004022     { r2 = #1
    ac1c:	00 40 a3 50 	50a34000       callr r3
    ac20:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    ac24:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    ac28:	20 48 00 75 	75004820     { p0 = cmp.eq (r0, #65)
    ac2c:	44 68 00 5c 	5c006844       if (p0.new) jump:nt aeb0 <_Getfloat+0x800>
    ac30:	11 c0 60 70 	7060c011       r17 = r0 }
    ac34:	20 4c 00 75 	75004c20     { p0 = cmp.eq (r0, #97)
    ac38:	3e 68 00 5c 	5c00683e       if (p0.new) jump:nt aeb0 <_Getfloat+0x800>
    ac3c:	00 c0 00 7f 	7f00c000       nop }
    ac40:	2c 40 89 11 	1189402c     { p0 = cmp.eq (r17, #-1) ; if (p0.new) jump:nt ac98 <_Getfloat+0x5e8>
    ac44:	00 40 00 7f 	7f004000       nop
    ac48:	00 40 00 7f 	7f004000       nop
    ac4c:	80 c0 90 43 	4390c080       if (p0.new) r0 = memw (r16 + #16) }
    ac50:	01 40 71 70 	70714001     { r1 = r17
    ac54:	02 40 00 78 	78004002       r2 = #0
    ac58:	03 40 90 91 	91904003       r3 = memw (r16 + #0)
    ac5c:	21 c2 50 3f 	3f50c221       memw (r16 + #16) -= #1 }
    ac60:	00 40 a3 52 	52a34000     { hintjr (r3)
    ac64:	20 c0 90 91 	9190c020       r0 = memw (r16 + #4) }
    ac68:	14 40 00 78 	78004014     { r20 = #0
    ac6c:	00 c0 a3 50 	50a3c000       callr r3 }
    ac70:	15 40 00 78 	78004015     { r21 = #0
    ac74:	c0 39 0e 28 	280e39c0       r22 = #0 ; p0 = cmp.eq (r20, #0) }
    ac78:	34 c0 00 7a 	7a00c034     r20 = mux (p0, #1, #0)
    ac7c:	8a c3 fc 11 	11fcc38a     p0 = tstbit (r20, #0) ; if (!p0.new) jump:nt ab90 <_Getfloat+0x4e0>
    ac80:	00 40 00 78 	78004000     { r0 = #0
    ac84:	28 c0 89 11 	1189c028       p0 = cmp.eq (r17, #-1) ; if (p0.new) jump:nt acd0 <_Getfloat+0x620> }
    ac88:	de dd 00 58 	5800ddde     jump e844 <__restore_r16_through_r25_and_deallocframe>
    ac8c:	80 c0 90 91 	9190c080     r0 = memw (r16 + #16)
    ac90:	20 40 00 b0 	b0004020     { r0 = add (r0, #1)
    ac94:	04 d2 b0 a1 	a1b0d204       memw (r16 + #16) = r0.new }
    ac98:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    ac9c:	f1 7f df 78 	78df7ff1       r17 = #-1
    aca0:	14 40 00 78 	78004014       r20 = #0
    aca4:	04 d6 b0 a1 	a1b0d604       memw (r16 + #16) = r0.new }
    aca8:	e4 ff ff 59 	59ffffe4     jump ac70 <_Getfloat+0x5c0>
    acac:	00 40 18 75 	75184000     { p0 = cmp.eq (r24, #0)
    acb0:	ee 68 00 5c 	5c0068ee       if (p0.new) jump:nt b088 <_Getfloat+0x9d8>
    acb4:	4a 1e 48 3e 	3e481e4a       r1:0 = memd (sp + #72) ; r5:4 = memd (sp + #72) }
    acb8:	00 c0 d8 a1 	a1d8c000     memd (r24 + #0) = r1:0
    acbc:	ee 40 00 00 	000040ee     { immext (#15232)
    acc0:	10 c1 00 16 	1600c110       r0 = #1 ; jump e844 <__restore_r16_through_r25_and_deallocframe> }
    acc4:	b6 d2 00 5a 	5a00d2b6     call d230 <_Stold>
    acc8:	7c 7f ff 59 	59ff7f7c     { jump abc0 <_Getfloat+0x510>
    accc:	09 c0 dd a1 	a1ddc009       memd (r29 + #72) = r1:0 }
    acd0:	00 40 7d 70 	707d4000     { r0 = r29
    acd4:	00 dd 13 f2 	f213dd00       p0 = cmp.eq (r19, r29) }
    acd8:	8a 60 df 5c 	5cdf608a     { if (p0) jump abec <_Getfloat+0x53c>
    acdc:	d8 7f ff 59 	59ff7fd8       jump ac88 <_Getfloat+0x5d8>
    ace0:	e0 5f 0f 7e 	7e0f5fe0       if (p0) r0 = #-1
    ace4:	00 c0 80 7e 	7e80c000       if !p0 r0 = #0 }
    ace8:	54 61 00 7c 	7c006154     { r21:20 = combine (#10, #1)
    acec:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    acf0:	f1 ff df 78 	78dffff1     r17 = #-1
    acf4:	46 60 2c 10 	102c6046     { p0 = cmp.eq (r20, #0) ; if (p0.new) jump:t a980 <_Getfloat+0x2d0>
    acf8:	00 40 00 7f 	7f004000       nop
    acfc:	00 c0 00 7f 	7f00c000       nop }
    ad00:	33 40 13 b0 	b0134033     { r19 = add (r19, #1)
    ad04:	40 41 2c 16 	162c4140       r20 = #1 ; jump a980 <_Getfloat+0x2d0>
    ad08:	30 c0 13 3c 	3c13c030       memb (r19 + #0) = #48 }
    ad0c:	f1 7f df 78 	78df7ff1     { r17 = #-1
    ad10:	a2 7e ff 59 	59ff7ea2       jump aa50 <_Getfloat+0x3a0>
    ad14:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    ad18:	a0 48 11 75 	751148a0     { p0 = cmp.eq (r17, #69)
    ad1c:	08 c8 00 5c 	5c00c808       if (p0.new) jump:nt ad28 <_Getfloat+0x678> }
    ad20:	a0 4c 11 75 	75114ca0     { p0 = cmp.eq (r17, #101)
    ad24:	1a f8 ff 5c 	5cfff81a       if !p0.new jump:t ab54 <_Getfloat+0x4a4> }
    ad28:	a0 40 90 91 	919040a0     { r0 = memw (r16 + #20)
    ad2c:	08 d1 13 ab 	ab13d108       memb (r19 ++ #1) = r17 }
    ad30:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    ad34:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    ad38:	01 40 00 78 	78004001     { r1 = #0
    ad3c:	b2 41 c0 11 	11c041b2       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt ae9c <_Getfloat+0x7ec>
    ad40:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    ad44:	22 40 00 78 	78004022     { r2 = #1
    ad48:	00 40 a3 50 	50a34000       callr r3
    ad4c:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    ad50:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    ad54:	a0 45 00 75 	750045a0     { p0 = cmp.eq (r0, #45)
    ad58:	8c 48 00 5c 	5c00488c       if (p0.new) jump:nt ae6c <_Getfloat+0x7bc>
    ad5c:	11 c0 60 70 	7060c011       r17 = r0 }
    ad60:	60 45 00 75 	75004560     { p0 = cmp.eq (r0, #43)
    ad64:	86 48 00 5c 	5c004886       if (p0.new) jump:nt ae6c <_Getfloat+0x7bc>
    ad68:	00 40 00 7f 	7f004000       nop
    ad6c:	00 c0 00 7f 	7f00c000       nop }
    ad70:	00 46 11 75 	75114600     { p0 = cmp.eq (r17, #48)
    ad74:	9a 48 20 5c 	5c20489a       if !p0.new jump:nt aea4 <_Getfloat+0x7f4>
    ad78:	01 40 00 78 	78004001       r1 = #0
    ad7c:	a0 c0 90 43 	4390c0a0       if (p0.new) r0 = memw (r16 + #20) }
    ad80:	22 40 00 78 	78004022     { r2 = #1
    ad84:	e0 7f e0 bf 	bfe07fe0       r0 = add (r0, #-1)
    ad88:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    ad8c:	1c c1 c0 11 	11c0c11c     p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt adc4 <_Getfloat+0x714>
    ad90:	03 40 90 91 	91904003     { r3 = memw (r16 + #0)
    ad94:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    ad98:	00 40 a3 50 	50a34000     { callr r3
    ad9c:	20 c0 90 91 	9190c020       r0 = memw (r16 + #4) }
    ada0:	00 46 00 75 	75004600     { p0 = cmp.eq (r0, #48)
    ada4:	16 48 20 5c 	5c204816       if !p0.new jump:nt adcc <_Getfloat+0x71c>
    ada8:	11 40 60 70 	70604011       r17 = r0
    adac:	a0 c0 90 43 	4390c0a0       if (p0.new) r0 = memw (r16 + #20) }
    adb0:	01 40 00 78 	78004001     { r1 = #0
    adb4:	22 40 00 78 	78004022       r2 = #1
    adb8:	e0 7f e0 bf 	bfe07fe0       r0 = add (r0, #-1)
    adbc:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    adc0:	e8 e1 b0 11 	11b0e1e8     p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t ad90 <_Getfloat+0x6e0>
    adc4:	f1 7f df 78 	78df7ff1     { r17 = #-1
    adc8:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    adcc:	34 40 00 78 	78004034     { r20 = #1
    add0:	33 40 13 b0 	b0134033       r19 = add (r19, #1)
    add4:	30 c0 13 3c 	3c13c030       memb (r19 + #0) = #48 }
    add8:	b4 f9 ff 5b 	5bfff9b4     call a140 <_Getpctype>
    addc:	12 40 00 78 	78004012     { r18 = #0
    ade0:	80 d1 40 3a 	3a40d180       r0 = memh (r0 + r17 << #1) }
    ade4:	e0 40 52 75 	755240e0     { p0 = cmp.gt (r18, #7)
    ade8:	01 45 20 85 	85204501       p1 = !tstbit (r0, #5)
    adec:	12 28 01 28 	28012812       r1 = #0 ; r2 = #1 }
    adf0:	2a c1 00 5c 	5c00c12a     if (p1) jump ae44 <_Getfloat+0x794>
    adf4:	32 40 92 74 	74924032     { if !p0 r18 = add (r18, #1)
    adf8:	f1 7f df 78 	78df7ff1       r17 = #-1
    adfc:	0c f1 13 ab 	ab13f10c       if !p0 memb (r19 ++ #1) = r17 }
    ae00:	a0 c0 90 91 	9190c0a0     r0 = memw (r16 + #20)
    ae04:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    ae08:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    ae0c:	34 40 00 78 	78004034     { r20 = #1
    ae10:	4e 41 c0 11 	11c0414e       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt aea8 <_Getfloat+0x7f8>
    ae14:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    ae18:	00 40 a3 50 	50a34000     { callr r3
    ae1c:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    ae20:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    ae24:	11 c0 60 70 	7060c011     r17 = r0
    ae28:	8c f9 ff 5b 	5bfff98c     call a140 <_Getpctype>
    ae2c:	e0 40 52 75 	755240e0     { p0 = cmp.gt (r18, #7)
    ae30:	01 40 00 78 	78004001       r1 = #0
    ae34:	22 40 00 78 	78004022       r2 = #1
    ae38:	80 d1 40 3a 	3a40d180       r0 = memh (r0 + r17 << #1) }
    ae3c:	01 45 20 85 	85204501     { p1 = !tstbit (r0, #5)
    ae40:	dc f9 ff 5c 	5cfff9dc       if !p1.new jump:t adf4 <_Getfloat+0x744> }
    ae44:	00 c0 14 75 	7514c000     p0 = cmp.eq (r20, #0)
    ae48:	34 40 00 7a 	7a004034     { r20 = mux (p0, #1, #0)
    ae4c:	e0 ff 31 75 	7531ffe0       p0 = cmp.eq (r17, #-1) }
    ae50:	37 c0 00 7a 	7a00c037     r23 = mux (p0, #1, #0)
    ae54:	8e e3 ef 11 	11efe38e     p0 = tstbit (r23, #0) ; if (!p0.new) jump:t ab70 <_Getfloat+0x4c0>
    ae58:	12 7f ff 59 	59ff7f12     { jump ac7c <_Getfloat+0x5cc>
    ae5c:	21 c2 50 3f 	3f50c221       memw (r16 + #16) -= #1 }
    ae60:	ec 7f ff 0f 	0fff7fec     { immext (#4294966016)
    ae64:	30 40 00 10 	10004030       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt a978 <_Getfloat+0x2c8>
    ae68:	62 fc ff 59 	59fffc62       jump a724 <_Getfloat+0x74> }
    ae6c:	a0 40 90 91 	919040a0     { r0 = memw (r16 + #20)
    ae70:	08 d1 13 ab 	ab13d108       memb (r19 ++ #1) = r17 }
    ae74:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    ae78:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    ae7c:	01 40 00 78 	78004001     { r1 = #0
    ae80:	10 41 c0 11 	11c04110       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt ae9c <_Getfloat+0x7ec>
    ae84:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    ae88:	22 40 00 78 	78004022     { r2 = #1
    ae8c:	00 40 a3 50 	50a34000       callr r3
    ae90:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    ae94:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    ae98:	6c c9 30 17 	1730c96c     r17 = r0 ; jump ad70 <_Getfloat+0x6c0>
    ae9c:	f1 7f df 78 	78df7ff1     { r17 = #-1
    aea0:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    aea4:	9a c0 3c 16 	163cc09a     r20 = #0 ; jump add8 <_Getfloat+0x728>
    aea8:	c0 41 3c 16 	163c41c0     { r20 = #1 ; jump ae28 <_Getfloat+0x778>
    aeac:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    aeb0:	33 40 13 b0 	b0134033     { r19 = add (r19, #1)
    aeb4:	a0 40 90 91 	919040a0       r0 = memw (r16 + #20)
    aeb8:	61 c0 13 3c 	3c13c061       memb (r19 + #0) = #97 }
    aebc:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    aec0:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    aec4:	01 40 00 78 	78004001     { r1 = #0
    aec8:	e4 41 e0 11 	11e041e4       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt ac8c <_Getfloat+0x5dc>
    aecc:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    aed0:	22 40 00 78 	78004022     { r2 = #1
    aed4:	00 40 a3 50 	50a34000       callr r3
    aed8:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    aedc:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    aee0:	c0 49 00 75 	750049c0     { p0 = cmp.eq (r0, #78)
    aee4:	0a 48 00 5c 	5c00480a       if (p0.new) jump:nt aef4 <_Getfloat+0x844>
    aee8:	11 c0 60 70 	7060c011       r17 = r0 }
    aeec:	c0 4d 00 75 	75004dc0     { p0 = cmp.eq (r0, #110)
    aef0:	aa d8 ff 5c 	5cffd8aa       if !p0.new jump:t ac40 <_Getfloat+0x590> }
    aef4:	a0 c0 90 91 	9190c0a0     r0 = memw (r16 + #20)
    aef8:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    aefc:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    af00:	01 40 00 78 	78004001     { r1 = #0
    af04:	ae 41 c0 11 	11c041ae       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt b05c <_Getfloat+0x9ac>
    af08:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    af0c:	22 40 00 78 	78004022     { r2 = #1
    af10:	00 40 a3 50 	50a34000       callr r3
    af14:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    af18:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    af1c:	00 45 00 75 	75004500     { p0 = cmp.eq (r0, #40)
    af20:	18 58 00 5c 	5c005818       if (p0.new) jump:t af4c <_Getfloat+0x89c>
    af24:	11 40 60 70 	70604011       r17 = r0
    af28:	54 e6 02 7e 	7e02e654       if (p0.new) r20 = #562 }
    af2c:	ca c0 00 58 	5800c0ca     jump b0c0 <_Getfloat+0xa10>
    af30:	00 40 a3 50 	50a34000     { callr r3
    af34:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    af38:	03 40 00 f3 	f3004003     { r3 = add (r0, r0)
    af3c:	11 c0 60 70 	7060c011       r17 = r0 }
    af40:	00 c3 52 3a 	3a52c300     r0 = memh (r18 + r3 << #0)
    af44:	00 54 80 c7 	c7805400     { p0 = bitsclr (r0, r20)
    af48:	22 c8 00 5c 	5c00c822       if (p0.new) jump:nt af88 <_Getfloat+0x8d8> }
    af4c:	fa f8 ff 5b 	5bfff8fa     call a140 <_Getpctype>
    af50:	12 40 60 70 	70604012     { r18 = r0
    af54:	c3 7f df 78 	78df7fc3       r3 = #-2
    af58:	80 05 09 5a 	5a090580       r17 = #-1 ; r0 = memw (r16 + #20) }
    af5c:	01 40 00 78 	78004001     { r1 = #0
    af60:	e0 7f e0 bf 	bfe07fe0       r0 = add (r0, #-1)
    af64:	22 40 00 78 	78004022       r2 = #1
    af68:	05 d4 b0 a1 	a1b0d405       memw (r16 + #20) = r0.new }
    af6c:	e2 61 b0 11 	11b061e2     { p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t af30 <_Getfloat+0x880>
    af70:	03 40 90 43 	43904003       if (p0.new) r3 = memw (r16 + #0)
    af74:	20 c0 90 43 	4390c020       if (p0.new) r0 = memw (r16 + #4) }
    af78:	00 43 52 3a 	3a524300     { r0 = memh (r18 + r3 << #0)
    af7c:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    af80:	00 54 80 c7 	c7805400     { p0 = bitsclr (r0, r20)
    af84:	e6 f8 ff 5c 	5cfff8e6       if !p0.new jump:t af4c <_Getfloat+0x89c> }
    af88:	e0 4b 11 75 	75114be0     { p0 = cmp.eq (r17, #95)
    af8c:	e2 f8 df 5c 	5cdff8e2       if (p0.new) jump:t af4c <_Getfloat+0x89c> }
    af90:	20 45 11 75 	75114520     { p0 = cmp.eq (r17, #41)
    af94:	76 c8 00 5c 	5c00c876       if (p0.new) jump:nt b07c <_Getfloat+0x9cc> }
    af98:	14 40 00 78 	78004014     { r20 = #0
    af9c:	5c e0 e9 11 	11e9e05c       p0 = cmp.eq (r17, #-1) ; if (!p0.new) jump:t ac50 <_Getfloat+0x5a0> }
    afa0:	68 7e ff 59 	59ff7e68     { jump ac70 <_Getfloat+0x5c0>
    afa4:	21 c2 50 3f 	3f50c221       memw (r16 + #16) -= #1 }
    afa8:	a0 40 90 91 	919040a0     { r0 = memw (r16 + #20)
    afac:	30 c0 13 3c 	3c13c030       memb (r19 + #0) = #48 }
    afb0:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    afb4:	53 40 13 b0 	b0134053       r19 = add (r19, #2)
    afb8:	f8 c0 13 3c 	3c13c0f8       memb (r19 + #1) = #120 }
    afbc:	0c 61 80 11 	1180610c     { p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t afd4 <_Getfloat+0x924>
    afc0:	03 40 90 43 	43904003       if (p0.new) r3 = memw (r16 + #0)
    afc4:	05 c0 90 a1 	a190c005       memw (r16 + #20) = r0 }
    afc8:	d4 42 00 7c 	7c0042d4     { r21:20 = combine (#22, #0)
    afcc:	94 7e ff 59 	59ff7e94       jump acf0 <_Getfloat+0x640>
    afd0:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    afd4:	01 40 00 78 	78004001     { r1 = #0
    afd8:	22 40 00 78 	78004022       r2 = #1
    afdc:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    afe0:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    afe4:	d4 42 00 7c 	7c0042d4     { r21:20 = combine (#22, #0)
    afe8:	00 c0 a3 50 	50a3c000       callr r3 }
    afec:	11 c0 60 70 	7060c011     r17 = r0
    aff0:	00 46 11 75 	75114600     { p0 = cmp.eq (r17, #48)
    aff4:	82 48 ff 5c 	5cff4882       if !p0.new jump:nt acf4 <_Getfloat+0x644>
    aff8:	01 40 00 78 	78004001       r1 = #0
    affc:	a0 c0 90 43 	4390c0a0       if (p0.new) r0 = memw (r16 + #20) }
    b000:	22 40 00 78 	78004022     { r2 = #1
    b004:	e0 7f e0 bf 	bfe07fe0       r0 = add (r0, #-1)
    b008:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    b00c:	1c c1 c0 11 	11c0c11c     p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt b044 <_Getfloat+0x994>
    b010:	03 40 90 91 	91904003     { r3 = memw (r16 + #0)
    b014:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    b018:	00 40 a3 50 	50a34000     { callr r3
    b01c:	20 c0 90 91 	9190c020       r0 = memw (r16 + #4) }
    b020:	00 46 00 75 	75004600     { p0 = cmp.eq (r0, #48)
    b024:	70 48 ff 5c 	5cff4870       if !p0.new jump:nt ad00 <_Getfloat+0x650>
    b028:	11 40 60 70 	70604011       r17 = r0
    b02c:	a0 c0 90 43 	4390c0a0       if (p0.new) r0 = memw (r16 + #20) }
    b030:	01 40 00 78 	78004001     { r1 = #0
    b034:	22 40 00 78 	78004022       r2 = #1
    b038:	e0 7f e0 bf 	bfe07fe0       r0 = add (r0, #-1)
    b03c:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    b040:	e8 e1 b0 11 	11b0e1e8     p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t b010 <_Getfloat+0x960>
    b044:	f1 7f df 78 	78df7ff1     { r17 = #-1
    b048:	34 40 00 78 	78004034       r20 = #1
    b04c:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    b050:	33 40 13 b0 	b0134033     { r19 = add (r19, #1)
    b054:	98 7c ff 59 	59ff7c98       jump a980 <_Getfloat+0x2d0>
    b058:	30 c0 13 3c 	3c13c030       memb (r19 + #0) = #48 }
    b05c:	80 c0 90 91 	9190c080     r0 = memw (r16 + #16)
    b060:	20 40 00 b0 	b0004020     { r0 = add (r0, #1)
    b064:	00 40 00 7f 	7f004000       nop
    b068:	00 40 00 7f 	7f004000       nop
    b06c:	04 d6 b0 a1 	a1b0d604       memw (r16 + #16) = r0.new }
    b070:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    b074:	f1 7f df 78 	78df7ff1       r17 = #-1
    b078:	04 d4 b0 a1 	a1b0d404       memw (r16 + #16) = r0.new }
    b07c:	6e c0 13 3c 	3c13c06e     memb (r19 + #0) = #110
    b080:	f8 7d ff 59 	59ff7df8     { jump ac70 <_Getfloat+0x5c0>
    b084:	1c 28 1b 20 	201b281c       r19 = add (r19, #1) ; r20 = #1 }
    b088:	81 02 10 48 	48100281     r0 = #1 ; r1 = memw (r16 + #8)
    b08c:	81 40 01 b0 	b0014081     { r1 = add (r1, #4)
    b090:	02 40 81 91 	91814002       r2 = memw (r1 + #0)
    b094:	02 d5 b0 a1 	a1b0d502       memw (r16 + #8) = r1.new }
    b098:	00 c4 c2 a1 	a1c2c400     memd (r2 + #0) = r5:4
    b09c:	d4 db 00 58 	5800dbd4     jump e844 <__restore_r16_through_r25_and_deallocframe>
    b0a0:	20 40 00 78 	78004020     { r0 = #1
    b0a4:	4a 3e 81 02 	02813e4a       r1 = memw (r16 + #8) ; r5:4 = memd (sp + #72) }
    b0a8:	23 40 04 88 	88044023     { r3 = convert_df2sf (r5:4)
    b0ac:	81 40 01 b0 	b0014081       r1 = add (r1, #4)
    b0b0:	02 40 81 91 	91814002       r2 = memw (r1 + #0)
    b0b4:	02 d5 b0 a1 	a1b0d502       memw (r16 + #8) = r1.new }
    b0b8:	00 c3 82 a1 	a182c300     memw (r2 + #0) = r3
    b0bc:	c4 db 00 58 	5800dbc4     jump e844 <__restore_r16_through_r25_and_deallocframe>
    b0c0:	e0 7f 20 75 	75207fe0     { p0 = cmp.eq (r0, #-1)
    b0c4:	01 40 60 70 	70604001       r1 = r0
    b0c8:	02 40 00 78 	78004002       r2 = #0
    b0cc:	03 c0 90 47 	4790c003       if !p0.new r3 = memw (r16 + #0) }
    b0d0:	58 c0 00 5c 	5c00c058     if (p0) jump b180 <_Getfloat+0xad0>
    b0d4:	00 40 a3 50 	50a34000     { callr r3
    b0d8:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    b0dc:	21 c2 50 3f 	3f50c221       memw (r16 + #16) -= #1 }
    b0e0:	ce ff ff 59 	59ffffce     jump b07c <_Getfloat+0x9cc>
    b0e4:	82 04 09 5a 	5a090482     r17 = #-1 ; r2 = memw (r16 + #16)
    b0e8:	22 40 02 b0 	b0024022     { r2 = add (r2, #1)
    b0ec:	04 d2 b0 a1 	a1b0d204       memw (r16 + #16) = r2.new }
    b0f0:	e2 7f e2 bf 	bfe27fe2     { r2 = add (r2, #-1)
    b0f4:	04 d2 b0 a1 	a1b0d204       memw (r16 + #16) = r2.new }
    b0f8:	c4 7f ff 59 	59ff7fc4     { jump b080 <_Getfloat+0x9d0>
    b0fc:	66 c0 13 3c 	3c13c066       memb (r19 + #0) = #102 }
    b100:	82 c0 90 91 	9190c082     r2 = memw (r16 + #16)
    b104:	22 40 02 b0 	b0024022     { r2 = add (r2, #1)
    b108:	00 40 00 7f 	7f004000       nop
    b10c:	04 d4 b0 a1 	a1b0d404       memw (r16 + #16) = r2.new }
    b110:	e2 7f e2 bf 	bfe27fe2     { r2 = add (r2, #-1)
    b114:	f1 7f df 78 	78df7ff1       r17 = #-1
    b118:	14 40 00 78 	78004014       r20 = #0
    b11c:	04 d6 b0 a1 	a1b0d604       memw (r16 + #16) = r2.new }
    b120:	a8 fd ff 59 	59fffda8     jump ac70 <_Getfloat+0x5c0>
    b124:	20 49 00 75 	75004920     { p0 = cmp.eq (r0, #73)
    b128:	64 78 dd 5c 	5cdd7864       if (p0.new) jump:t a7ec <_Getfloat+0x13c>
    b12c:	82 c0 90 47 	4790c082       if !p0.new r2 = memw (r16 + #16) }
    b130:	e2 7f 82 74 	74827fe2     { if !p0.new r2 = add (r2, #-1)
    b134:	e0 40 b0 11 	11b040e0       p0 = cmp.eq (r0, #-1) ; if (p0.new) jump:nt b0f0 <_Getfloat+0xa40>
    b138:	03 c0 90 47 	4790c003       if !p0.new r3 = memw (r16 + #0) }
    b13c:	01 40 71 70 	70714001     { r1 = r17
    b140:	02 40 00 78 	78004002       r2 = #0
    b144:	82 04 80 81 	81800482       r0 = memw (r16 + #4) ; memw (r16 + #16) = r2 }
    b148:	00 c0 a3 50 	50a3c000     callr r3
    b14c:	9a 7f ff 59 	59ff7f9a     { jump b080 <_Getfloat+0x9d0>
    b150:	66 c0 13 3c 	3c13c066       memb (r19 + #0) = #102 }
    b154:	80 4a 00 75 	75004a80     { p0 = cmp.eq (r0, #84)
    b158:	a8 f8 dd 5c 	5cddf8a8       if (p0.new) jump:t a8a4 <_Getfloat+0x1f4> }
    b15c:	da 40 b9 11 	11b940da     { p0 = cmp.eq (r17, #-1) ; if (p0.new) jump:nt b110 <_Getfloat+0xa60>
    b160:	82 40 90 91 	91904082       r2 = memw (r16 + #16)
    b164:	03 c0 90 47 	4790c003       if !p0.new r3 = memw (r16 + #0) }
    b168:	e2 7f e2 bf 	bfe27fe2     { r2 = add (r2, #-1)
    b16c:	01 40 71 70 	70714001       r1 = r17
    b170:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    b174:	04 d6 b0 a1 	a1b0d604       memw (r16 + #16) = r2.new }
    b178:	eb 7f ff 0f 	0fff7feb     { immext (#4294965952)
    b17c:	60 c0 02 16 	1602c060       r2 = #0 ; jump ac68 <_Getfloat+0x5b8> }
    b180:	78 7f ff 59 	59ff7f78     { jump b070 <_Getfloat+0x9c0>
    b184:	80 c0 90 91 	9190c080       r0 = memw (r16 + #16) }
    b188:	00 c0 14 75 	7514c000     p0 = cmp.eq (r20, #0)
    b18c:	ea 40 de 5c 	5cde40ea     { if (p0) jump ab60 <_Getfloat+0x4b0>
    b190:	da 7c ff 59 	59ff7cda       jump ab40 <_Getfloat+0x490>
    b194:	34 c0 00 7a 	7a00c034       r20 = mux (p0, #1, #0) }
    b198:	00 c0 00 7f 	7f00c000     nop
    b19c:	00 c0 00 7f 	7f00c000     nop

0000b1a0 <_Getint>:
    b1a0:	14 5b 00 5a 	5a005b14     { call e7c8 <__save_r16_through_r23>
    b1a4:	80 3c 12 68 	68123c80       r2 = #1 ; allocframe (#64) }
    b1a8:	17 40 61 70 	70614017     { r23 = r1
    b1ac:	01 40 00 78 	78004001       r1 = #0
    b1b0:	00 06 08 50 	50080600       r16 = r0 ; r0 = memw (r0 + #24) }
    b1b4:	00 40 40 75 	75404000     { p0 = cmp.gt (r0, #0)
    b1b8:	03 40 90 91 	91904003       r3 = memw (r16 + #0)
    b1bc:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    b1c0:	ff 7f ff 07 	07ff7fff     { immext (#2147483584)
    b1c4:	c0 47 80 7e 	7e8047c0       if !p0 r0 = ##2147483646
    b1c8:	00 40 a3 52 	52a34000       hintjr (r3)
    b1cc:	e0 df 00 74 	7400dfe0       if (p0) r0 = add (r0, #-1) }
    b1d0:	00 40 a3 50 	50a34000     { callr r3
    b1d4:	80 05 80 81 	81800580       r0 = memw (r16 + #4) ; memw (r16 + #20) = r0 }
    b1d8:	a0 45 00 75 	750045a0     { p0 = cmp.eq (r0, #45)
    b1dc:	aa 48 00 5c 	5c0048aa       if (p0.new) jump:nt b32c <_Getint+0x18c>
    b1e0:	11 c0 60 70 	7060c011       r17 = r0 }
    b1e4:	60 45 00 75 	75004560     { p0 = cmp.eq (r0, #43)
    b1e8:	a4 48 00 5c 	5c0048a4       if (p0.new) jump:nt b32c <_Getint+0x18c>
    b1ec:	12 e0 9d 74 	749de012       if !p0.new r18 = add (r29, #0) }
    b1f0:	00 4f 00 00 	00004f00     { immext (#245760)
    b1f4:	80 03 8b 48 	488b0380       r19 = ##245768 ; r0 = memw (r16 + #12) }
    b1f8:	04 77 ff 5b 	5bff7704     { call a000 <strchr>
    b1fc:	01 10 b0 50 	50b01001       r0 = r19 ; r1 = memub (r0 + #0) }
    b200:	00 46 11 75 	75114600     { p0 = cmp.eq (r17, #48)
    b204:	00 c0 33 f3 	f333c000       r0 = sub (r0, r19) }
    b208:	14 40 80 7e 	7e804014     { if !p0 r20 = #0
    b20c:	de 40 00 5c 	5c0040de       if (p0) jump b3c4 <_Getint+0x224>
    b210:	00 4f 00 00 	00004f00       immext (#245760)
    b214:	16 d4 20 9d 	9d20d416       r22 = memub (r0 << #0 + ##245776) }
    b218:	74 ca 0e 12 	120eca74     p1 = cmp.eq (r22, #10) ; if (p1.new) jump:nt b300 <_Getint+0x160>
    b21c:	72 c0 0e 12 	120ec072     p1 = cmp.eq (r22, #0) ; if (p1.new) jump:nt b300 <_Getint+0x160>
    b220:	d5 42 00 78 	780042d5     { r21 = #22
    b224:	f8 c8 0e 12 	120ec8f8       p1 = cmp.eq (r22, #8) ; if (p1.new) jump:nt b410 <_Getint+0x270> }
    b228:	dc 60 20 5c 	5c2060dc     { if !p0 jump b5e0 <_Getint+0x440>
    b22c:	a0 c0 90 41 	4190c0a0       if (p0) r0 = memw (r16 + #20) }
    b230:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    b234:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    b238:	1e 41 c0 11 	11c0411e     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt b274 <_Getint+0xd4>
    b23c:	00 c0 00 7f 	7f00c000       nop }
    b240:	01 40 00 78 	78004001     { r1 = #0
    b244:	22 40 00 78 	78004022       r2 = #1
    b248:	03 40 90 91 	91904003       r3 = memw (r16 + #0)
    b24c:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    b250:	00 40 a3 50 	50a34000     { callr r3
    b254:	20 c0 90 91 	9190c020       r0 = memw (r16 + #4) }
    b258:	00 46 00 75 	75004600     { p0 = cmp.eq (r0, #48)
    b25c:	14 48 20 5c 	5c204814       if !p0.new jump:nt b280 <_Getint+0xe0>
    b260:	11 40 60 70 	70604011       r17 = r0
    b264:	a0 c0 90 43 	4390c0a0       if (p0.new) r0 = memw (r16 + #20) }
    b268:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    b26c:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    b270:	e8 e1 b0 11 	11b0e1e8     p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t b240 <_Getint+0xa0>
    b274:	f1 7f df 78 	78df7ff1     { r17 = #-1
    b278:	00 40 00 7f 	7f004000       nop
    b27c:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    b280:	34 40 00 78 	78004034     { r20 = #1
    b284:	32 40 12 b0 	b0124032       r18 = add (r18, #1)
    b288:	00 40 00 7f 	7f004000       nop
    b28c:	30 c0 12 3c 	3c12c030       memb (r18 + #0) = #48 }
    b290:	f3 63 9d 74 	749d63f3     { if !p0.new r19 = add (r29, #31)
    b294:	34 40 89 11 	11894034       p0 = cmp.eq (r17, #-1) ; if (p0.new) jump:nt b2f8 <_Getint+0x158>
    b298:	00 40 00 7f 	7f004000       nop
    b29c:	00 c0 00 7f 	7f00c000       nop }
    b2a0:	25 44 00 00 	00004425     { immext (#67904)
    b2a4:	00 66 11 73 	73116600       r1:0 = combine (r17, ##67952)
    b2a8:	f8 53 ff 5b 	5bff53f8       call 5a90 <memchr>
    b2ac:	02 c0 75 70 	7075c002       r2 = r21 }
    b2b0:	01 40 71 70 	70714001     { r1 = r17
    b2b4:	d8 40 00 10 	100040d8       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt b460 <_Getint+0x2c0>
    b2b8:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    b2bc:	00 52 73 f2 	f2735200     { p0 = cmp.gtu (r19, r18)
    b2c0:	88 f1 12 ab 	ab12f188       if (p0.new) memb (r18 ++ #1) = r17 }
    b2c4:	a0 c0 90 91 	9190c0a0     r0 = memw (r16 + #20)
    b2c8:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    b2cc:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    b2d0:	01 40 00 78 	78004001     { r1 = #0
    b2d4:	1a 41 c0 11 	11c0411a       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt b304 <_Getint+0x164>
    b2d8:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    b2dc:	22 40 00 78 	78004022     { r2 = #1
    b2e0:	34 40 00 78 	78004034       r20 = #1
    b2e4:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    b2e8:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    b2ec:	00 c0 a3 50 	50a3c000     callr r3
    b2f0:	11 40 60 70 	70604011     { r17 = r0
    b2f4:	d8 e0 f0 11 	11f0e0d8       p0 = cmp.eq (r0, #-1) ; if (!p0.new) jump:t b2a0 <_Getint+0x100> }
    b2f8:	0c 40 00 58 	5800400c     { jump b310 <_Getint+0x170>
    b2fc:	80 c0 90 91 	9190c080       r0 = memw (r16 + #16) }
    b300:	94 ca 3d 16 	163dca94     r21 = #10 ; jump b228 <_Getint+0x88>
    b304:	80 04 1c 48 	481c0480     r20 = #1 ; r0 = memw (r16 + #16)
    b308:	20 40 00 b0 	b0004020     { r0 = add (r0, #1)
    b30c:	04 d2 b0 a1 	a1b0d204       memw (r16 + #16) = r0.new }
    b310:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    b314:	f1 7f df 78 	78df7ff1       r17 = #-1
    b318:	04 d4 b0 a1 	a1b0d404       memw (r16 + #16) = r0.new }
    b31c:	22 c0 4c 10 	104cc022     p0 = cmp.eq (r20, #0) ; if (!p0.new) jump:nt b360 <_Getint+0x1c0>
    b320:	00 40 00 78 	78004000     { r0 = #0
    b324:	aa c0 89 11 	1189c0aa       p0 = cmp.eq (r17, #-1) ; if (p0.new) jump:nt b474 <_Getint+0x2d4> }
    b328:	84 da 00 58 	5800da84     jump e830 <__restore_r16_through_r23_and_deallocframe>
    b32c:	a0 40 90 91 	919040a0     { r0 = memw (r16 + #20)
    b330:	00 d1 1d a1 	a11dd100       memb (r29 + #0) = r17 }
    b334:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    b338:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    b33c:	01 40 00 78 	78004001     { r1 = #0
    b340:	6c 41 c0 11 	11c0416c       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt b414 <_Getint+0x274>
    b344:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    b348:	22 40 00 78 	78004022     { r2 = #1
    b34c:	32 40 1d b0 	b01d4032       r18 = add (r29, #1)
    b350:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    b354:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    b358:	00 c0 a3 50 	50a3c000     callr r3
    b35c:	4a c9 30 17 	1730c94a     r17 = r0 ; jump b1f0 <_Getint+0x50>
    b360:	00 44 30 91 	91304400     { r0 = memub (r16 + #32)
    b364:	00 c0 12 3c 	3c12c000       memb (r18 + #0) = #0 }
    b368:	78 40 40 10 	10404078     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt b458 <_Getint+0x2b8>
    b36c:	60 c0 90 43 	4390c060       if (p0.new) r0 = memw (r16 + #12) }
    b370:	00 c0 20 91 	9120c000     r0 = memub (r0 + #0)
    b374:	20 4d 00 75 	75004d20     { p0 = cmp.eq (r0, #105)
    b378:	90 c8 00 5c 	5c00c890       if (p0.new) jump:nt b494 <_Getint+0x2f4> }
    b37c:	80 4c 00 75 	75004c80     { p0 = cmp.eq (r0, #100)
    b380:	8c 48 00 5c 	5c00488c       if (p0.new) jump:nt b494 <_Getint+0x2f4>
    b384:	02 40 76 70 	70764002       r2 = r22
    b388:	00 e0 3d 73 	733de000       r1:0 = combine (#0, r29) }
    b38c:	da d1 00 5a 	5a00d1da     call d740 <_Stoull>
    b390:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    b394:	60 40 90 91 	91904060       r0 = memw (r16 + #12)
    b398:	01 d1 10 3c 	3c10d101       memb (r16 + #34) = #1 }
    b39c:	00 c0 20 91 	9120c000     r0 = memub (r0 + #0)
    b3a0:	00 4e 00 75 	75004e00     { p0 = cmp.eq (r0, #112)
    b3a4:	10 68 00 5c 	5c006810       if (p0.new) jump:nt b5c0 <_Getint+0x420>
    b3a8:	20 c4 10 47 	4710c420       if !p0.new r0 = memb (r16 + #33) }
    b3ac:	c0 f3 e0 bf 	bfe0f3c0     r0 = add (r0, #-98)
    b3b0:	e0 5f 00 76 	76005fe0     { r0 = and (r0, #255)
    b3b4:	4e d8 02 25 	2502d84e       if (cmp.gtu (r0.new, #24)) jump:nt b44c <_Getint+0x2ac> }
    b3b8:	22 44 00 00 	00004422     { immext (#67712)
    b3bc:	00 fa 80 9d 	9d80fa00       r0 = memw (r0 << #2 + ##67752) }
    b3c0:	00 c0 80 52 	5280c000     jumpr r0
    b3c4:	a0 c0 90 91 	9190c0a0     r0 = memw (r16 + #20)
    b3c8:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    b3cc:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    b3d0:	01 40 00 78 	78004001     { r1 = #0
    b3d4:	5c 41 c0 11 	11c0415c       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt b488 <_Getint+0x2e8>
    b3d8:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    b3dc:	22 40 00 78 	78004022     { r2 = #1
    b3e0:	00 40 a3 50 	50a34000       callr r3
    b3e4:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    b3e8:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    b3ec:	00 4b 00 75 	75004b00     { p0 = cmp.eq (r0, #88)
    b3f0:	92 48 00 5c 	5c004892       if (p0.new) jump:nt b510 <_Getint+0x370>
    b3f4:	11 c0 60 70 	7060c011       r17 = r0 }
    b3f8:	00 4f 00 75 	75004f00     { p0 = cmp.eq (r0, #120)
    b3fc:	8c c8 00 5c 	5c00c88c       if (p0.new) jump:nt b510 <_Getint+0x370> }
    b400:	16 61 00 7e 	7e006116     { if (p0.new) r22 = #8
    b404:	a8 40 4e 10 	104e40a8       p0 = cmp.eq (r22, #0) ; if (!p0.new) jump:nt b550 <_Getint+0x3b0>
    b408:	34 c0 00 78 	7800c034       r20 = #1 }
    b40c:	00 c6 11 75 	7511c600     p0 = cmp.eq (r17, #48)
    b410:	0c c8 3d 16 	163dc80c     r21 = #8 ; jump b228 <_Getint+0x88>
    b414:	00 4f 00 00 	00004f00     { immext (#245760)
    b418:	13 41 00 78 	78004113       r19 = ##245768
    b41c:	60 40 90 91 	91904060       r0 = memw (r16 + #12)
    b420:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    b424:	00 40 73 70 	70734000     { r0 = r19
    b428:	32 40 1d b0 	b01d4032       r18 = add (r29, #1)
    b42c:	01 10 09 5a 	5a091001       r17 = #-1 ; r1 = memub (r0 + #0) }
    b430:	e8 f5 ff 5b 	5bfff5e8     call a000 <strchr>
    b434:	14 40 00 78 	78004014     { r20 = #0
    b438:	00 40 33 f3 	f3334000       r0 = sub (r0, r19)
    b43c:	00 c0 40 f2 	f240c000       p0 = cmp.gt (r0, r0) }
    b440:	ec 7e ff 59 	59ff7eec     { jump b218 <_Getint+0x78>
    b444:	00 4f 00 00 	00004f00       immext (#245760)
    b448:	16 d4 20 9d 	9d20d416       r22 = memub (r0 << #0 + ##245776) }
    b44c:	42 c0 0f 10 	100fc042     p0 = cmp.eq (r23, #0) ; if (p0.new) jump:nt b4d0 <_Getint+0x330>
    b450:	00 40 a3 52 	52a34000     { hintjr (r3)
    b454:	00 c2 97 a1 	a197c200       memw (r23 + #0) = r2 }
    b458:	cf 40 00 00 	000040cf     { immext (#13248)
    b45c:	30 c1 00 16 	1600c130       r0 = #1 ; jump e830 <__restore_r16_through_r23_and_deallocframe> }
    b460:	02 40 00 78 	78004002     { r2 = #0
    b464:	00 40 a3 50 	50a34000       callr r3
    b468:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    b46c:	21 c2 50 3f 	3f50c221       memw (r16 + #16) -= #1 }
    b470:	56 ff ff 59 	59ffff56     jump b31c <_Getint+0x17c>
    b474:	00 40 7d 70 	707d4000     { r0 = r29
    b478:	00 dd 12 f2 	f212dd00       p0 = cmp.eq (r18, r29) }
    b47c:	e0 5f 0f 7e 	7e0f5fe0     { if (p0) r0 = #-1
    b480:	56 7f ff 59 	59ff7f56       jump b328 <_Getint+0x188>
    b484:	00 c0 80 7e 	7e80c000       if !p0 r0 = #0 }
    b488:	f1 7f df 78 	78df7ff1     { r17 = #-1
    b48c:	bc 7f ff 59 	59ff7fbc       jump b400 <_Getint+0x260>
    b490:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    b494:	02 40 76 70 	70764002     { r2 = r22
    b498:	56 4f 00 5a 	5a004f56       call d340 <_Stoll>
    b49c:	00 e0 3d 73 	733de000       r1:0 = combine (#0, r29) }
    b4a0:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    b4a4:	21 44 10 91 	91104421       r1 = memb (r16 + #33)
    b4a8:	01 d1 10 3c 	3c10d101       memb (r16 + #34) = #1 }
    b4ac:	c1 f3 e1 bf 	bfe1f3c1     r1 = add (r1, #-98)
    b4b0:	e1 5f 01 76 	76015fe1     { r1 = and (r1, #255)
    b4b4:	0a d8 03 25 	2503d80a       if (cmp.gtu (r1.new, #24)) jump:nt b4c4 <_Getint+0x324> }
    b4b8:	24 44 00 00 	00004424     { immext (#67840)
    b4bc:	01 f3 81 9d 	9d81f301       r1 = memw (r1 << #2 + ##67852) }
    b4c0:	00 c0 81 52 	5281c000     jumpr r1
    b4c4:	20 60 80 7e 	7e806020     { if !p0.new r0 = #1
    b4c8:	32 60 7f 10 	107f6032       p0 = cmp.eq (r23, #0) ; if (!p0.new) jump:t b328 <_Getint+0x188>
    b4cc:	00 c2 97 46 	4697c200       if !p0.new memw (r23 + #0) = r2 }
    b4d0:	81 02 10 48 	48100281     r0 = #1 ; r1 = memw (r16 + #8)
    b4d4:	81 40 01 b0 	b0014081     { r1 = add (r1, #4)
    b4d8:	04 40 81 91 	91814004       r4 = memw (r1 + #0)
    b4dc:	02 d5 b0 a1 	a1b0d502       memw (r16 + #8) = r1.new }
    b4e0:	00 c2 84 a1 	a184c200     memw (r4 + #0) = r2
    b4e4:	a6 d9 00 58 	5800d9a6     jump e830 <__restore_r16_through_r23_and_deallocframe>
    b4e8:	00 40 17 75 	75174000     { p0 = cmp.eq (r23, #0)
    b4ec:	20 60 80 7e 	7e806020       if !p0.new r0 = #1
    b4f0:	41 40 90 43 	43904041       if (p0.new) r1 = memw (r16 + #8)
    b4f4:	00 c2 d7 46 	46d7c200       if !p0.new memd (r23 + #0) = r3:2 }
    b4f8:	20 40 00 7e 	7e004020     { if (p0) r0 = #1
    b4fc:	81 40 01 74 	74014081       if (p0) r1 = add (r1, #4)
    b500:	04 40 81 41 	41814004       if (p0) r4 = memw (r1 + #0)
    b504:	10 d5 b0 40 	40b0d510       if (p0) memw (r16 + #8) = r1.new }
    b508:	00 c2 c4 40 	40c4c200     if (p0) memd (r4 + #0) = r3:2
    b50c:	92 d9 00 58 	5800d992     jump e830 <__restore_r16_through_r23_and_deallocframe>
    b510:	04 d0 0e 10 	100ed004     p0 = cmp.eq (r22, #16) ; if (p0.new) jump:nt b518 <_Getint+0x378>
    b514:	1e c0 4e 10 	104ec01e     p0 = cmp.eq (r22, #0) ; if (!p0.new) jump:nt b550 <_Getint+0x3b0>
    b518:	a0 c0 90 91 	9190c0a0     r0 = memw (r16 + #20)
    b51c:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    b520:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    b524:	01 40 00 78 	78004001     { r1 = #0
    b528:	1a 41 c0 11 	11c0411a       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt b558 <_Getint+0x3b8>
    b52c:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    b530:	22 40 00 78 	78004022     { r2 = #1
    b534:	16 42 00 78 	78004216       r22 = #16
    b538:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    b53c:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    b540:	00 40 a3 50 	50a34000     { callr r3
    b544:	6d 29 0c 28 	280c296d       r20 = #0 ; r21 = #22 }
    b548:	00 46 00 75 	75004600     { p0 = cmp.eq (r0, #48)
    b54c:	70 c9 20 17 	1720c970       r17 = r0 ; jump b228 <_Getint+0x88> }
    b550:	00 46 11 75 	75114600     { p0 = cmp.eq (r17, #48)
    b554:	64 c1 2c 16 	162cc164       r20 = #1 ; jump b218 <_Getint+0x78> }
    b558:	f1 7f df 78 	78df7ff1     { r17 = #-1
    b55c:	16 42 00 78 	78004216       r22 = #16
    b560:	14 40 00 78 	78004014       r20 = #0
    b564:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    b568:	00 40 40 f2 	f2404000     { p0 = cmp.gt (r0, r0)
    b56c:	60 d6 2d 16 	162dd660       r21 = #22 ; jump b228 <_Getint+0x88> }
    b570:	00 40 17 75 	75174000     { p0 = cmp.eq (r23, #0)
    b574:	20 60 80 7e 	7e806020       if !p0.new r0 = #1
    b578:	41 40 90 43 	43904041       if (p0.new) r1 = memw (r16 + #8)
    b57c:	00 c2 57 46 	4657c200       if !p0.new memh (r23 + #0) = r2 }
    b580:	20 40 00 7e 	7e004020     { if (p0) r0 = #1
    b584:	81 40 01 74 	74014081       if (p0) r1 = add (r1, #4)
    b588:	04 40 81 41 	41814004       if (p0) r4 = memw (r1 + #0)
    b58c:	10 d5 b0 40 	40b0d510       if (p0) memw (r16 + #8) = r1.new }
    b590:	00 c2 44 40 	4044c200     if (p0) memh (r4 + #0) = r2
    b594:	4e d9 00 58 	5800d94e     jump e830 <__restore_r16_through_r23_and_deallocframe>
    b598:	00 40 17 75 	75174000     { p0 = cmp.eq (r23, #0)
    b59c:	20 60 80 7e 	7e806020       if !p0.new r0 = #1
    b5a0:	41 40 90 43 	43904041       if (p0.new) r1 = memw (r16 + #8)
    b5a4:	00 c2 17 46 	4617c200       if !p0.new memb (r23 + #0) = r2 }
    b5a8:	20 40 00 7e 	7e004020     { if (p0) r0 = #1
    b5ac:	84 40 01 74 	74014084       if (p0) r4 = add (r1, #4)
    b5b0:	01 40 81 41 	41814001       if (p0) r1 = memw (r1 + #0)
    b5b4:	10 d4 b0 40 	40b0d410       if (p0) memw (r16 + #8) = r4.new }
    b5b8:	00 c2 01 40 	4001c200     if (p0) memb (r1 + #0) = r2
    b5bc:	3a d9 00 58 	5800d93a     jump e830 <__restore_r16_through_r23_and_deallocframe>
    b5c0:	20 40 00 78 	78004020     { r0 = #1
    b5c4:	48 60 7f 10 	107f6048       p0 = cmp.eq (r23, #0) ; if (!p0.new) jump:t b450 <_Getint+0x2b0>
    b5c8:	41 c0 90 43 	4390c041       if (p0.new) r1 = memw (r16 + #8) }
    b5cc:	84 40 01 b0 	b0014084     { r4 = add (r1, #4)
    b5d0:	01 40 81 91 	91814001       r1 = memw (r1 + #0)
    b5d4:	02 d4 b0 a1 	a1b0d402       memw (r16 + #8) = r4.new }
    b5d8:	00 c2 81 a1 	a181c200     memw (r1 + #0) = r2
    b5dc:	2a d9 00 58 	5800d92a     jump e830 <__restore_r16_through_r23_and_deallocframe>
    b5e0:	58 60 2c 10 	102c6058     { p0 = cmp.eq (r20, #0) ; if (p0.new) jump:t b290 <_Getint+0xf0>
    b5e4:	50 fe ff 59 	59fffe50       jump b280 <_Getint+0xe0> }
    b5e8:	00 c0 00 7f 	7f00c000     nop
    b5ec:	00 c0 00 7f 	7f00c000     nop

0000b5f0 <_Getstr>:
    b5f0:	e8 58 00 5a 	5a0058e8     { call e7c0 <__save_r16_through_r27>
    b5f4:	0d c0 9d a0 	a09dc00d       allocframe (#104) }
    b5f8:	12 41 00 69 	69004112     { loop0 (b610 <_Getstr+0x20>, #2)
    b5fc:	9a 45 1d b0 	b01d459a       r26 = add (r29, #44)
    b600:	21 28 08 70 	70082821       r16 = r0 ; memw (sp + #8) = r1 }
    b604:	00 40 7a 70 	707a4000     { r0 = r26
    b608:	00 40 00 7f 	7f004000       nop
    b60c:	31 c4 30 91 	9130c431       r17 = memub (r16 + #33) }
    b610:	80 80 00 b0 	b0008080     { r0 = add (r0, #4)
    b614:	00 30 21 dc 	dc213000       r1 = memw (sp + #8) ; memw (r0 + #0) = #0 }:endloop0
    b618:	c0 c1 c1 11 	11c1c1c0     p0 = cmp.gt (r1, #-1) ; if (!p0.new) jump:nt b798 <_Getstr+0x1a8>
    b61c:	02 c0 00 78 	7800c002     r2 = #0
    b620:	21 40 00 78 	78004021     { r1 = #1
    b624:	c0 40 90 91 	919040c0       r0 = memw (r16 + #24)
    b628:	10 40 00 00 	00004010       immext (#1024)
    b62c:	58 c0 c2 24 	24c2c058       if (!cmp.gt (r0.new, #0)) jump:nt ba4c <_Getstr+0x45c> }
    b630:	91 6d 51 73 	73516d91     { r17 = cmp.eq (r17, #108)
    b634:	01 44 30 91 	91304401       r1 = memub (r16 + #32)
    b638:	05 c0 90 a1 	a190c005       memw (r16 + #20) = r0 }
    b63c:	14 48 20 5c 	5c204814     { if !p0.new jump:nt b664 <_Getstr+0x74>
    b640:	59 28 10 79 	79102859       p0 = cmp.eq (r1, #0) ; memw (sp + #20) = r17 }
    b644:	10 40 00 00 	00004010     { immext (#1024)
    b648:	38 40 09 10 	10094038       p0 = cmp.eq (r17, #0) ; if (p0.new) jump:nt ba60 <_Getstr+0x470>
    b64c:	40 40 90 47 	47904040       if !p0.new r0 = memw (r16 + #8)
    b650:	40 c0 90 43 	4390c040       if (p0.new) r0 = memw (r16 + #8) }
    b654:	81 40 00 b0 	b0004081     { r1 = add (r0, #4)
    b658:	00 40 80 91 	91804000       r0 = memw (r0 + #0)
    b65c:	02 d5 b0 a1 	a1b0d502       memw (r16 + #8) = r1.new }
    b660:	07 c0 9d a1 	a19dc007     memw (r29 + #28) = r0
    b664:	13 40 00 78 	78004013     { r19 = #0
    b668:	14 40 00 78 	78004014       r20 = #0
    b66c:	21 3c 20 59 	59203c21       p0 = cmp.eq (r2, #0) ; r1 = memw (sp + #8) }
    b670:	20 40 00 7a 	7a004020     { r0 = mux (p0, #1, #0)
    b674:	00 40 12 75 	75124000       p0 = cmp.eq (r18, #0)
    b678:	17 44 1d b0 	b01d4417       r23 = add (r29, #32)
    b67c:	0e c6 bd a1 	a1bdc60e       memb (r29 + #14) = r0.new }
    b680:	20 40 00 7a 	7a004020     { r0 = mux (p0, #1, #0)
    b684:	00 c0 41 75 	7541c000       p0 = cmp.gt (r1, #0) }
    b688:	35 40 00 7a 	7a004035     { r21 = mux (p0, #1, #0)
    b68c:	00 40 01 75 	75014000       p0 = cmp.eq (r1, #0)
    b690:	a0 40 90 91 	919040a0       r0 = memw (r16 + #20)
    b694:	0f c0 1d a1 	a11dc00f       memb (r29 + #15) = r0 }
    b698:	39 40 00 7a 	7a004039     { r25 = mux (p0, #1, #0)
    b69c:	40 c0 9b 75 	759bc040       p0 = cmp.gtu (r27, #2) }
    b6a0:	21 40 00 7a 	7a004021     { r1 = mux (p0, #1, #0)
    b6a4:	1b c3 bd a1 	a1bdc31b       memb (r29 + #27) = r1.new }
    b6a8:	a1 c0 9d 91 	919dc0a1     r1 = memw (r29 + #20)
    b6ac:	00 40 01 75 	75014000     { p0 = cmp.eq (r1, #0)
    b6b0:	00 c0 a3 52 	52a3c000       hintjr (r3) }
    b6b4:	36 40 00 7a 	7a004036     { r22 = mux (p0, #1, #0)
    b6b8:	3c 40 00 58 	5800403c       jump b72c <_Getstr+0x13c>
    b6bc:	00 c0 00 7f 	7f00c000       nop }
    b6c0:	22 40 00 78 	78004022     { r2 = #1
    b6c4:	00 40 a3 50 	50a34000       callr r3
    b6c8:	20 40 90 91 	91904020       r0 = memw (r16 + #4)
    b6cc:	01 c2 50 3f 	3f50c201       memw (r16 + #16) += #1 }
    b6d0:	12 40 60 70 	70604012     { r18 = r0
    b6d4:	3e 40 80 11 	1180403e       p0 = cmp.eq (r0, #-1) ; if (p0.new) jump:nt b74c <_Getstr+0x15c>
    b6d8:	80 c0 90 43 	4390c080       if (p0.new) r0 = memw (r16 + #16) }
    b6dc:	94 c3 cd 11 	11cdc394     p0 = tstbit (r21, #0) ; if (!p0.new) jump:nt b804 <_Getstr+0x214>
    b6e0:	30 f5 ff 5b 	5bfff530     call a140 <_Getpctype>
    b6e4:	80 d2 40 3a 	3a40d280     r0 = memh (r0 + r18 << #1)
    b6e8:	80 e8 00 76 	7600e880     r0 = and (r0, #324)
    b6ec:	a2 c0 40 10 	1040c0a2     p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt b830 <_Getstr+0x240>
    b6f0:	31 60 93 74 	74936031     { if !p0.new r17 = add (r19, #1)
    b6f4:	b6 43 ce 11 	11ce43b6       p0 = tstbit (r22, #0) ; if (!p0.new) jump:nt b85c <_Getstr+0x26c>
    b6f8:	80 c6 1d b0 	b01dc680       r0 = add (r29, #52) }
    b6fc:	00 c4 30 91 	9130c400     r0 = memub (r16 + #32)
    b700:	11 60 93 74 	74936011     { if !p0.new r17 = add (r19, #0)
    b704:	14 40 40 10 	10404014       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt b728 <_Getstr+0x138>
    b708:	54 e0 80 7e 	7e80e054       if !p0.new r20 = #2 }
    b70c:	11 40 73 70 	70734011     { r17 = r19
    b710:	e0 40 90 91 	919040e0       r0 = memw (r16 + #28)
    b714:	c6 c0 12 24 	2412c0c6       if (cmp.eq (r0.new, #0)) jump:nt ba98 <_Getstr+0x4a8> }
    b718:	54 40 00 78 	78004054     { r20 = #2
    b71c:	08 52 18 ab 	ab185208       memb (r24 ++ #1) = r18
    b720:	01 d1 10 3c 	3c10d101       memb (r16 + #34) = #1 }
    b724:	a1 c3 50 3f 	3f50c3a1     memw (r16 + #28) -= #1
    b728:	80 05 9b 50 	509b0580     r19 = r17 ; r0 = memw (r16 + #20)
    b72c:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    b730:	05 d2 b0 a1 	a1b0d205       memw (r16 + #20) = r0.new }
    b734:	01 60 00 7e 	7e006001     { if (p0.new) r1 = #0
    b738:	c6 61 b0 11 	11b061c6       p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t b6c0 <_Getstr+0xd0>
    b73c:	03 c0 90 43 	4390c003       if (p0.new) r3 = memw (r16 + #0) }
    b740:	80 c0 90 91 	9190c080     r0 = memw (r16 + #16)
    b744:	20 40 00 b0 	b0004020     { r0 = add (r0, #1)
    b748:	04 d2 b0 a1 	a1b0d204       memw (r16 + #16) = r0.new }
    b74c:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    b750:	51 60 54 73 	73546051       r17 = cmp.eq (r20, #2)
    b754:	22 3c 0d 5a 	5a0d3c22       r21 = #-1 ; r2 = memw (sp + #8) }
    b758:	13 60 62 73 	73626013     { r19 = !cmp.eq (r2, #0)
    b75c:	04 c0 90 a1 	a190c004       memw (r16 + #16) = r0 }
    b760:	13 d3 11 f1 	f111d313     r19 = and (r17, r19)
    b764:	2a c0 1b 10 	101bc02a     p0 = cmp.eq (r19, #0) ; if (p0.new) jump:nt b9b8 <_Getstr+0x3c8>
    b768:	00 44 30 91 	91304400     { r0 = memub (r16 + #32)
    b76c:	84 c0 52 24 	2452c084       if (!cmp.eq (r0.new, #0)) jump:nt ba70 <_Getstr+0x480> }
    b770:	e0 40 90 91 	919040e0     { r0 = memw (r16 + #28)
    b774:	2c c0 12 24 	2412c02c       if (cmp.eq (r0.new, #0)) jump:nt b9c8 <_Getstr+0x3d8> }
    b778:	a0 c0 9d 91 	919dc0a0     r0 = memw (r29 + #20)
    b77c:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    b780:	20 60 80 7e 	7e806020       if !p0.new r0 = #1
    b784:	e1 40 9d 47 	479d40e1       if !p0.new r1 = memw (r29 + #28)
    b788:	00 c0 18 39 	3918c000       if (p0.new) memb (r24 + #0) = #0 }
    b78c:	20 40 00 7e 	7e004020     { if (p0) r0 = #1
    b790:	00 c0 c1 38 	38c1c000       if !p0 memw (r1 + #0) = #0 }
    b794:	56 d8 00 58 	5800d856     jump e840 <__restore_r16_through_r27_and_deallocframe>
    b798:	61 c0 90 91 	9190c061     r1 = memw (r16 + #12)
    b79c:	20 40 01 b0 	b0014020     { r0 = add (r1, #1)
    b7a0:	03 d2 b0 a1 	a1b0d203       memw (r16 + #12) = r0.new }
    b7a4:	00 40 00 7f 	7f004000     { nop
    b7a8:	00 40 00 7f 	7f004000       nop
    b7ac:	21 c0 21 91 	9121c021       r1 = memub (r1 + #1) }
    b7b0:	c0 4b 01 75 	75014bc0     { p0 = cmp.eq (r1, #94)
    b7b4:	64 68 00 5c 	5c006864       if (p0.new) jump:nt ba78 <_Getstr+0x488>
    b7b8:	12 60 80 7e 	7e806012       if !p0.new r18 = #0
    b7bc:	20 e0 00 74 	7400e020       if (p0.new) r0 = add (r0, #1) }
    b7c0:	a0 4b 01 75 	75014ba0     { p0 = cmp.eq (r1, #93)
    b7c4:	20 74 ff 5b 	5bff7420       call a000 <strchr>
    b7c8:	a1 4b 00 78 	78004ba1       r1 = #93
    b7cc:	20 e0 00 74 	7400e020       if (p0.new) r0 = add (r0, #1) }
    b7d0:	fc 40 00 10 	100040fc     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt b9c8 <_Getstr+0x3d8>
    b7d4:	62 40 90 47 	47904062       if !p0.new r2 = memw (r16 + #12)
    b7d8:	18 c0 90 46 	4690c018       if !p0.new memw (r16 + #12) = r0 }
    b7dc:	1b 40 22 f3 	f322401b     { r27 = sub (r0, r2)
    b7e0:	20 40 02 b0 	b0024020       r0 = add (r2, #1)
    b7e4:	42 28 d1 6a 	6ad12842       r1 = #45 ; memw (sp + #16) = r2 }
    b7e8:	40 40 5b 75 	755b4040     { p0 = cmp.gt (r27, #2)
    b7ec:	1a e8 ff 5c 	5cffe81a       if !p0.new jump:nt b61c <_Getstr+0x2c> }
    b7f0:	c2 7f fb bf 	bffb7fc2     { r2 = add (r27, #-2)
    b7f4:	50 d1 ff 5b 	5bffd150       call 5a90 <memchr> }
    b7f8:	14 60 70 10 	10706014     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:t b620 <_Getstr+0x30>
    b7fc:	12 7f ff 59 	59ff7f12       jump b61c <_Getstr+0x2c>
    b800:	22 e0 80 7e 	7e80e022       if !p0.new r2 = #1 }
    b804:	00 40 19 85 	85194000     { p0 = tstbit (r25, #0)
    b808:	76 68 df 5c 	5cdf6876       if (p0.new) jump:nt b6f0 <_Getstr+0x100>
    b80c:	c0 c1 3d 91 	913dc1c0       r0 = memub (r29 + #14) }
    b810:	74 43 c0 11 	11c04374     { p0 = tstbit (r0, #0) ; if (!p0.new) jump:nt b8f8 <_Getstr+0x308>
    b814:	e0 c1 3d 91 	913dc1e0       r0 = memub (r29 + #15) }
    b818:	10 43 90 11 	11904310     { p0 = tstbit (r0, #0) ; if (p0.new) jump:nt ba38 <_Getstr+0x448>
    b81c:	40 3c a1 50 	50a13c40       r1 = r18 ; r0 = memw (sp + #16) }
    b820:	02 40 7b 70 	707b4002     { r2 = r27
    b824:	38 d1 ff 5b 	5bffd138       call 5a90 <memchr> }
    b828:	64 60 30 10 	10306064     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:t b6f0 <_Getstr+0x100>
    b82c:	00 c0 00 7f 	7f00c000       nop }
    b830:	51 60 54 73 	73546051     { r17 = cmp.eq (r20, #2)
    b834:	15 c0 72 70 	7072c015       r21 = r18 }
    b838:	13 40 71 70 	70714013     { r19 = r17
    b83c:	00 c0 00 7f 	7f00c000       nop }
    b840:	01 40 72 70 	70724001     { r1 = r18
    b844:	02 40 00 78 	78004002       r2 = #0
    b848:	03 40 90 91 	91904003       r3 = memw (r16 + #0)
    b84c:	21 c2 50 3f 	3f50c221       memw (r16 + #16) -= #1 }
    b850:	00 40 a3 50 	50a34000     { callr r3
    b854:	20 c0 90 91 	9190c020       r0 = memw (r16 + #4) }
    b858:	86 ff ff 59 	59ffff86     jump b764 <_Getstr+0x174>
    b85c:	01 40 77 70 	70774001     { r1 = r23
    b860:	12 4c 00 5a 	5a004c12       call d080 <_Mbtowc>
    b864:	02 51 1a f5 	f51a5102       r3:2 = combine (r26, r17)
    b868:	12 d3 17 3b 	3b17d312       memb (r23 + r19 << #0) = r18 }
    b86c:	03 40 60 70 	70604003     { r3 = r0
    b870:	8c c0 80 11 	1180c08c       p0 = cmp.eq (r0, #-1) ; if (p0.new) jump:nt b984 <_Getstr+0x394> }
    b874:	7a 40 40 10 	1040407a     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt b968 <_Getstr+0x378>
    b878:	a0 c1 9d 43 	439dc1a0       if (p0.new) r0 = memw (r29 + #52) }
    b87c:	06 c0 10 10 	1010c006     p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt ba88 <_Getstr+0x498>
    b880:	14 73 17 fb 	fb177314     { if (p0.new) r20 = add (r23, r19)
    b884:	20 43 c9 14 	14c94320       p0 = cmp.gt (r17, r3) ; if (!p0.new) jump:nt b8c0 <_Getstr+0x2d0>
    b888:	12 40 71 70 	70714012       r18 = r17
    b88c:	00 c0 00 7f 	7f00c000       nop }
    b890:	02 40 00 78 	78004002     { r2 = #0
    b894:	f2 7f f2 bf 	bff27ff2       r18 = add (r18, #-1)
    b898:	e1 41 34 9b 	9b3441e1       r1 = memub (r20 ++ #-1)
    b89c:	01 c3 9d a1 	a19dc301       memw (r29 + #4) = r3 }
    b8a0:	04 40 90 91 	91904004     { r4 = memw (r16 + #0)
    b8a4:	21 c2 50 3f 	3f50c221       memw (r16 + #16) -= #1 }
    b8a8:	00 40 a4 50 	50a44000     { callr r4
    b8ac:	20 c0 90 91 	9190c020       r0 = memw (r16 + #4) }
    b8b0:	23 c0 9d 91 	919dc023     r3 = memw (r29 + #4)
    b8b4:	93 63 33 fb 	fb336393     { if !p0.new r19 = sub (r3, r19)
    b8b8:	ee e3 ba 14 	14bae3ee       p0 = cmp.gt (r18, r3) ; if (p0.new) jump:t b890 <_Getstr+0x2a0> }
    b8bc:	f3 f1 71 db 	db71f1f3     r17 = add (r17, add (r19, #-1))
    b8c0:	00 44 30 91 	91304400     { r0 = memub (r16 + #32)
    b8c4:	16 c0 42 24 	2442c016       if (!cmp.eq (r0.new, #0)) jump:nt b8ec <_Getstr+0x2fc> }
    b8c8:	e0 c0 90 91 	9190c0e0     r0 = memw (r16 + #28)
    b8cc:	34 60 00 7e 	7e006034     { if (p0.new) r20 = #1
    b8d0:	2e 40 30 10 	1030402e       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt b728 <_Getstr+0x138>
    b8d4:	e2 c0 9d 91 	919dc0e2       r2 = memw (r29 + #28) }
    b8d8:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    b8dc:	a1 41 9d 91 	919d41a1       r1 = memw (r29 + #52)
    b8e0:	08 d3 a2 ab 	aba2d308       memw (r2 ++ #4) = r1.new }
    b8e4:	72 28 80 a7 	a7802872     memw (r16 + #28) = r0 ; memw (sp + #28) = r2
    b8e8:	01 d1 10 3c 	3c10d101     memb (r16 + #34) = #1
    b8ec:	54 40 00 78 	78004054     { r20 = #2
    b8f0:	1e 40 39 16 	1639401e       r17 = #0 ; jump b728 <_Getstr+0x138>
    b8f4:	21 c3 50 3f 	3f50c321       memw (r16 + #24) -= #1 }
    b8f8:	e0 c1 3d 91 	913dc1e0     r0 = memub (r29 + #15)
    b8fc:	01 40 7b 70 	707b4001     { r1 = r27
    b900:	6a 43 c0 11 	11c0436a       p0 = tstbit (r0, #0) ; if (!p0.new) jump:nt b9d0 <_Getstr+0x3e0>
    b904:	60 c3 3d 91 	913dc360       r0 = memub (r29 + #27) }
    b908:	d0 43 c0 11 	11c043d0     { p0 = tstbit (r0, #0) ; if (!p0.new) jump:nt baa8 <_Getstr+0x4b8>
    b90c:	40 3c a4 57 	57a43c40       r4 = and (r18, #255) ; r0 = memw (sp + #16) }
    b910:	0c c0 00 58 	5800c00c     jump b928 <_Getstr+0x338>
    b914:	00 40 00 7f 	7f004000     { nop
    b918:	00 40 20 91 	91204000       r0 = memub (r0 + #0)
    b91c:	ee c4 22 20 	2022c4ee       if (cmp.eq (r0.new, r4)) jump:nt b6f0 <_Getstr+0x100> }
    b920:	00 40 62 70 	70624000     { r0 = r2
    b924:	20 c2 41 11 	1141c220       p0 = cmp.gtu (r1, #2) ; if (!p0.new) jump:nt b960 <_Getstr+0x370> }
    b928:	03 11 02 51 	51021103     r2 = add (r0, #1) ; r3 = memub (r0 + #1)
    b92c:	a0 45 03 75 	750345a0     { p0 = cmp.eq (r3, #45)
    b930:	f4 78 ff 5c 	5cff78f4       if !p0.new jump:t b914 <_Getstr+0x324>
    b934:	e1 7f 81 74 	74817fe1       if !p0.new r1 = add (r1, #-1)
    b938:	62 e0 00 74 	7400e062       if (p0.new) r2 = add (r0, #3) }
    b93c:	a1 7f e1 bf 	bfe17fa1     { r1 = add (r1, #-3)
    b940:	03 40 20 91 	91204003       r3 = memub (r0 + #0)
    b944:	f2 c4 33 21 	2133c4f2       if (cmp.gtu (r3.new, r4)) jump:nt b920 <_Getstr+0x330> }
    b948:	40 c0 20 91 	9120c040     r0 = memub (r0 + #2)
    b94c:	ea 60 34 15 	153460ea     { p0 = cmp.gtu (r4, r0) ; if (p0.new) jump:t b920 <_Getstr+0x330>
    b950:	d2 fe ff 59 	59fffed2       jump b6f0 <_Getstr+0x100> }
    b954:	00 40 22 91 	91224000     { r0 = memub (r2 + #0)
    b958:	ce c4 22 20 	2022c4ce       if (cmp.eq (r0.new, r4)) jump:nt b6f0 <_Getstr+0x100> }
    b95c:	11 33 22 31 	31223311     r2 = add (r2, #1) ; r1 = add (r1, #-1)
    b960:	fa 60 71 10 	107160fa     { p0 = cmp.eq (r1, #0) ; if (!p0.new) jump:t b954 <_Getstr+0x364>
    b964:	68 ff ff 59 	59ffff68       jump b830 <_Getstr+0x240> }
    b968:	c0 7f 20 75 	75207fc0     { p0 = cmp.eq (r0, #-2)
    b96c:	0a c8 00 5c 	5c00c80a       if (p0.new) jump:nt b97c <_Getstr+0x38c> }
    b970:	a0 7f 23 75 	75237fa0     { p0 = cmp.eq (r3, #-3)
    b974:	88 7f ff 59 	59ff7f88       jump b880 <_Getstr+0x290>
    b978:	03 e0 00 7e 	7e00e003       if (p0.new) r3 = #0 }
    b97c:	34 40 94 76 	76944034     { r20 = or (r20, #1)
    b980:	d6 e7 69 11 	1169e7d6       p0 = cmp.gtu (r17, #7) ; if (!p0.new) jump:t b728 <_Getstr+0x138> }
    b984:	14 c0 c9 10 	10c9c014     p0 = cmp.gt (r17, #0) ; if (!p0.new) jump:nt b9ac <_Getstr+0x3bc>
    b988:	f1 77 77 db 	db7777f1     { r23 = add (r23, add (r17, #-1))
    b98c:	00 c0 00 7f 	7f00c000       nop }
    b990:	02 40 00 78 	78004002     { r2 = #0
    b994:	f1 7f f1 bf 	bff17ff1       r17 = add (r17, #-1)
    b998:	e1 41 37 9b 	9b3741e1       r1 = memub (r23 ++ #-1)
    b99c:	21 c2 50 3f 	3f50c221       memw (r16 + #16) -= #1 }
    b9a0:	80 01 83 00 	00830180     r3 = memw (r16 + #0) ; r0 = memw (r16 + #4)
    b9a4:	00 c0 a3 50 	50a3c000     callr r3
    b9a8:	f4 e0 b9 10 	10b9e0f4     p0 = cmp.gt (r17, #0) ; if (p0.new) jump:t b990 <_Getstr+0x3a0>
    b9ac:	0e c0 4c 10 	104cc00e     p0 = cmp.eq (r20, #0) ; if (!p0.new) jump:nt b9c8 <_Getstr+0x3d8>
    b9b0:	e0 7f df 78 	78df7fe0     { r0 = #-1
    b9b4:	48 d7 00 58 	5800d748       jump e840 <__restore_r16_through_r27_and_deallocframe> }
    b9b8:	5c e0 49 10 	1049e05c     p0 = cmp.eq (r17, #0) ; if (!p0.new) jump:t ba70 <_Getstr+0x480>
    b9bc:	00 40 34 85 	85344000     { p0 = !tstbit (r20, #0)
    b9c0:	fa e8 ff 5c 	5cffe8fa       if !p0.new jump:nt b9b0 <_Getstr+0x3c0> }
    b9c4:	f6 c0 bd 11 	11bdc0f6     p0 = cmp.eq (r21, #-1) ; if (p0.new) jump:nt b9b0 <_Getstr+0x3c0>
    b9c8:	b9 40 00 00 	000040b9     { immext (#11840)
    b9cc:	70 c0 00 16 	1600c070       r0 = #0 ; jump e840 <__restore_r16_through_r27_and_deallocframe> }
    b9d0:	01 40 7b 70 	707b4001     { r1 = r27
    b9d4:	e4 5f 12 76 	76125fe4       r4 = and (r18, #255)
    b9d8:	60 c3 3d 91 	913dc360       r0 = memub (r29 + #27) }
    b9dc:	26 43 c0 11 	11c04326     { p0 = tstbit (r0, #0) ; if (!p0.new) jump:nt ba28 <_Getstr+0x438>
    b9e0:	42 1c 40 3c 	3c401c42       r0 = memw (sp + #16) ; r2 = memw (sp + #16) }
    b9e4:	0a c0 00 58 	5800c00a     jump b9f8 <_Getstr+0x408>
    b9e8:	00 40 20 91 	91204000     { r0 = memub (r0 + #0)
    b9ec:	24 c4 32 20 	2032c424       if (cmp.eq (r0.new, r4)) jump:nt b830 <_Getstr+0x240> }
    b9f0:	00 40 62 70 	70624000     { r0 = r2
    b9f4:	1c c2 41 11 	1141c21c       p0 = cmp.gtu (r1, #2) ; if (!p0.new) jump:nt ba28 <_Getstr+0x438> }
    b9f8:	03 11 02 51 	51021103     r2 = add (r0, #1) ; r3 = memub (r0 + #1)
    b9fc:	a0 45 03 75 	750345a0     { p0 = cmp.eq (r3, #45)
    ba00:	f6 78 ff 5c 	5cff78f6       if !p0.new jump:t b9e8 <_Getstr+0x3f8>
    ba04:	e1 7f 81 74 	74817fe1       if !p0.new r1 = add (r1, #-1)
    ba08:	62 e0 00 74 	7400e062       if (p0.new) r2 = add (r0, #3) }
    ba0c:	a1 7f e1 bf 	bfe17fa1     { r1 = add (r1, #-3)
    ba10:	03 40 20 91 	91204003       r3 = memub (r0 + #0)
    ba14:	f2 c4 33 21 	2133c4f2       if (cmp.gtu (r3.new, r4)) jump:nt b9f0 <_Getstr+0x400> }
    ba18:	40 c0 20 91 	9120c040     r0 = memub (r0 + #2)
    ba1c:	ea 60 34 15 	153460ea     { p0 = cmp.gtu (r4, r0) ; if (p0.new) jump:t b9f0 <_Getstr+0x400>
    ba20:	0a ff ff 59 	59ffff0a       jump b830 <_Getstr+0x240> }
    ba24:	11 33 22 31 	31223311     r2 = add (r2, #1) ; r1 = add (r1, #-1)
    ba28:	64 c0 21 10 	1021c064     p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt b6f0 <_Getstr+0x100>
    ba2c:	00 40 22 91 	91224000     { r0 = memub (r2 + #0)
    ba30:	fc c4 72 20 	2072c4fc       if (!cmp.eq (r0.new, r4)) jump:nt ba24 <_Getstr+0x434> }
    ba34:	fe fe ff 59 	59fffefe     jump b830 <_Getstr+0x240>
    ba38:	02 40 7b 70 	707b4002     { r2 = r27
    ba3c:	2c 50 ff 5b 	5bff502c       call 5a90 <memchr>
    ba40:	40 3c a1 50 	50a13c40       r1 = r18 ; r0 = memw (sp + #16) }
    ba44:	56 60 60 10 	10606056     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:t b6f0 <_Getstr+0x100>
    ba48:	f6 fe ff 59 	59fffef6       jump b830 <_Getstr+0x240> }
    ba4c:	40 c0 9d 91 	919dc040     r0 = memw (r29 + #8)
    ba50:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
    ba54:	ff 7f ff 07 	07ff7fff     { immext (#2147483584)
    ba58:	e0 47 01 73 	730147e0       r0 = mux (p0, r1, ##2147483647)
    ba5c:	ee fd ff 59 	59fffdee       jump b630 <_Getstr+0x40> }
    ba60:	81 40 00 b0 	b0004081     { r1 = add (r0, #4)
    ba64:	02 7e ff 59 	59ff7e02       jump b664 <_Getstr+0x74>
    ba68:	18 40 80 91 	91804018       r24 = memw (r0 + #0)
    ba6c:	02 d7 b0 a1 	a1b0d702       memw (r16 + #8) = r1.new }
    ba70:	b7 40 00 00 	000040b7     { immext (#11712)
    ba74:	20 c1 00 16 	1600c120       r0 = #1 ; jump e840 <__restore_r16_through_r27_and_deallocframe> }
    ba78:	d2 4b 00 78 	78004bd2     { r18 = #94
    ba7c:	03 c0 90 a1 	a190c003       memw (r16 + #12) = r0 }
    ba80:	a0 7e ff 59 	59ff7ea0     { jump b7c0 <_Getstr+0x1d0>
    ba84:	01 c0 20 91 	9120c001       r1 = memub (r0 + #0) }
    ba88:	00 40 77 70 	70774000     { r0 = r23
    ba8c:	c4 d6 ff 5b 	5bffd6c4       call 6810 <strlen> }
    ba90:	23 40 00 b0 	b0004023     { r3 = add (r0, #1)
    ba94:	70 ff ff 59 	59ffff70       jump b970 <_Getstr+0x380> }
    ba98:	13 40 00 78 	78004013     { r19 = #0
    ba9c:	11 40 00 78 	78004011       r17 = #0
    baa0:	ad 30 1c 28 	281c30ad       r20 = #1 ; r21 = r18 }
    baa4:	ce fe ff 59 	59fffece     jump b840 <_Getstr+0x250>
    baa8:	5c 7f ff 59 	59ff7f5c     { jump b960 <_Getstr+0x370>
    baac:	82 c0 9d 91 	919dc082       r2 = memw (r29 + #16) }

0000bab0 <_LDscale>:
    bab0:	e8 f3 ff 59 	59fff3e8     jump a280 <_Dscale>
    bab4:	00 c0 00 7f 	7f00c000     nop
    bab8:	00 c0 00 7f 	7f00c000     nop
    babc:	00 c0 00 7f 	7f00c000     nop

0000bac0 <_Ldtob>:
    bac0:	80 56 00 5a 	5a005680     { call e7c0 <__save_r16_through_r27>
    bac4:	21 c0 9d a0 	a09dc021       allocframe (#264) }
    bac8:	32 6c 41 73 	73416c32     { r18 = cmp.eq (r1, #97)
    bacc:	35 68 41 73 	73416835       r21 = cmp.eq (r1, #65)
    bad0:	14 c0 61 70 	7061c014       r20 = r1 }
    bad4:	15 55 32 f1 	f1325515     { r21 = or (r18, r21)
    bad8:	13 40 60 70 	70604013       r19 = r0
    badc:	02 c0 c0 91 	91c0c002       r3:2 = memd (r0 + #0) }
    bae0:	00 c0 15 75 	7515c000     p0 = cmp.eq (r21, #0)
    bae4:	35 40 00 7a 	7a004035     { r21 = mux (p0, #1, #0)
    bae8:	0e 40 20 5c 	5c20400e       if !p0 jump bb00 <_Ldtob+0x40>
    baec:	80 c1 80 41 	4180c180       if (p0) r0 = memw (r0 + #48) }
    baf0:	08 41 c0 11 	11c04108     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt bb00 <_Ldtob+0x40>
    baf4:	06 c6 d3 39 	39d3c606       if !p0.new memw (r19 + #48) = #6 }
    baf8:	4a 40 00 10 	1000404a     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt bb8c <_Ldtob+0xcc>
    bafc:	00 c0 00 7f 	7f00c000       nop }
    bb00:	c0 5a 1d b0 	b01d5ac0     { r0 = add (r29, #214)
    bb04:	40 43 00 5a 	5a004340       call c180 <_LDunscale>
    bb08:	c9 2a b1 70 	70b12ac9       r1 = r19 ; memd (sp + #200) = r3:2 }
    bb0c:	28 42 00 10 	10004228     { p0 = cmp.eq (r0, #2) ; if (p0.new) jump:nt bb5c <_Ldtob+0x9c>
    bb10:	80 c0 93 43 	4393c080       if (p0.new) r0 = memw (r19 + #16) }
    bb14:	48 40 c0 10 	10c04048     { p0 = cmp.gt (r0, #0) ; if (!p0.new) jump:nt bba4 <_Ldtob+0xe4>
    bb18:	80 c0 93 43 	4393c080       if (p0.new) r0 = memw (r19 + #16) }
    bb1c:	a0 4c 14 75 	75144ca0     { p0 = cmp.eq (r20, #101)
    bb20:	06 c8 00 5c 	5c00c806       if (p0.new) jump:nt bb28 <_Ldtob+0x68> }
    bb24:	0e c0 0a 10 	100ac00e     p0 = cmp.eq (r18, #0) ; if (p0.new) jump:nt bb40 <_Ldtob+0x80>
    bb28:	26 44 00 00 	00004426     { immext (#67968)
    bb2c:	61 c2 00 78 	7800c261       r1 = ##67987 }
    bb30:	62 40 00 78 	78004062     { r2 = #3
    bb34:	90 53 ff 5b 	5bff5390       call 6250 <memcpy>
    bb38:	83 c3 53 3c 	3c53c383       memw (r19 + #28) = #3 }
    bb3c:	82 d6 00 58 	5800d682     jump e840 <__restore_r16_through_r27_and_deallocframe>
    bb40:	e0 4c 14 75 	75144ce0     { p0 = cmp.eq (r20, #103)
    bb44:	f4 e8 df 5c 	5cdfe8f4       if (p0.new) jump:nt bb28 <_Ldtob+0x68> }
    bb48:	c0 4c 14 75 	75144cc0     { p0 = cmp.eq (r20, #102)
    bb4c:	f4 78 ff 5c 	5cff78f4       if !p0.new jump:t bb30 <_Ldtob+0x70>
    bb50:	26 44 00 00 	00004426       immext (#67968)
    bb54:	e1 e1 80 7e 	7e80e1e1       if !p0.new r1 = ##67983 }
    bb58:	e8 ff ff 59 	59ffffe8     jump bb28 <_Ldtob+0x68>
    bb5c:	a0 4c 14 75 	75144ca0     { p0 = cmp.eq (r20, #101)
    bb60:	12 c8 00 5c 	5c00c812       if (p0.new) jump:nt bb80 <_Ldtob+0xc0> }
    bb64:	0e c0 4a 10 	104ac00e     p0 = cmp.eq (r18, #0) ; if (!p0.new) jump:nt bb80 <_Ldtob+0xc0>
    bb68:	e0 4c 14 75 	75144ce0     { p0 = cmp.eq (r20, #103)
    bb6c:	0c c8 00 5c 	5c00c80c       if (p0.new) jump:nt bb80 <_Ldtob+0xc0> }
    bb70:	c0 4c 14 75 	75144cc0     { p0 = cmp.eq (r20, #102)
    bb74:	e0 78 ff 5c 	5cff78e0       if !p0.new jump:t bb30 <_Ldtob+0x70>
    bb78:	26 44 00 00 	00004426       immext (#67968)
    bb7c:	e1 e0 80 7e 	7e80e0e1       if !p0.new r1 = ##67975 }
    bb80:	26 44 00 00 	00004426     { immext (#67968)
    bb84:	61 41 00 78 	78004161       r1 = ##67979
    bb88:	d8 ff ff 59 	59ffffd8       jump bb30 <_Ldtob+0x70> }
    bb8c:	e0 48 01 75 	750148e0     { p0 = cmp.eq (r1, #71)
    bb90:	08 c8 00 5c 	5c00c808       if (p0.new) jump:nt bb9c <_Ldtob+0xdc> }
    bb94:	e0 4c 01 75 	75014ce0     { p0 = cmp.eq (r1, #103)
    bb98:	b6 f8 ff 5c 	5cfff8b6       if !p0.new jump:t bb00 <_Ldtob+0x40> }
    bb9c:	b2 7f ff 59 	59ff7fb2     { jump bb00 <_Ldtob+0x40>
    bba0:	01 c6 53 3c 	3c53c601       memw (r19 + #48) = #1 }
    bba4:	12 43 8d 11 	118d4312     { p0 = tstbit (r21, #0) ; if (p0.new) jump:nt bbc8 <_Ldtob+0x108>
    bba8:	81 c0 93 47 	4793c081       if !p0.new r1 = memw (r19 + #16) }
    bbac:	00 40 12 75 	75124000     { p0 = cmp.eq (r18, #0)
    bbb0:	42 40 01 b0 	b0014042       r2 = add (r1, #2)
    bbb4:	30 c0 01 3c 	3c01c030       memb (r1 + #0) = #48 }
    bbb8:	03 4b 3c 7a 	7a3c4b03     { r3 = mux (p0, #88, #120)
    bbbc:	01 c3 a1 a1 	a1a1c301       memb (r1 + #1) = r3.new }
    bbc0:	04 c2 93 a1 	a193c204     memw (r19 + #16) = r2
    bbc4:	82 c2 53 3f 	3f53c282     memw (r19 + #20) += #2
    bbc8:	14 40 40 10 	10404014     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt bbf0 <_Ldtob+0x130>
    bbcc:	03 40 00 00 	00004003       immext (#192)
    bbd0:	b0 c0 5d 42 	425dc0b0       if (p0.new) memh (r29 + ##214) = r0 }
    bbd4:	12 40 00 78 	78004012     { r18 = #0
    bbd8:	00 40 00 7f 	7f004000       nop
    bbdc:	42 2d 04 28 	28042d42       r4 = #0 ; r2 = add (sp, #80) }
    bbe0:	00 53 14 f5 	f5145300     { r1:0 = combine (r20, r19)
    bbe4:	50 51 00 5a 	5a005150       call de80 <_Genld>
    bbe8:	03 c0 72 70 	7072c003       r3 = r18 }
    bbec:	2a d6 00 58 	5800d62a     jump e840 <__restore_r16_through_r27_and_deallocframe>
    bbf0:	01 40 12 75 	75124001     { p1 = cmp.eq (r18, #0)
    bbf4:	90 43 8d 11 	118d4390       p0 = tstbit (r21, #0) ; if (p0.new) jump:nt bd10 <_Ldtob+0x250>
    bbf8:	85 c1 93 47 	4793c185       if !p0.new r5 = memw (r19 + #48) }
    bbfc:	26 44 00 00 	00004426     { immext (#67968)
    bc00:	00 45 00 78 	78004500       r0 = ##68008
    bc04:	e0 ff 65 75 	7565ffe0       p0 = cmp.gt (r5, #-1) }
    bc08:	26 44 00 00 	00004426     { immext (#67968)
    bc0c:	f1 42 20 73 	732042f1       r17 = mux (p1, r0, ##67991)
    bc10:	94 40 21 5c 	5c214094       if !p0 jump c130 <_Ldtob+0x670>
    bc14:	32 c0 05 b0 	b005c032       r18 = add (r5, #1) }
    bc18:	12 c0 f2 70 	70f2c012     r18 = sxth (r18)
    bc1c:	19 40 72 70 	70724019     { r25 = r18
    bc20:	55 c0 12 b0 	b012c055       r21 = add (r18, #2) }
    bc24:	c0 44 c0 49 	49c044c0     { r1:0 = memd (gp + #304)
    bc28:	22 c3 dd 91 	91ddc322       r3:2 = memd (r29 + #200) }
    bc2c:	20 c2 e0 d2 	d2e0c220     p0 = dfcmp.gt (r1:0, r3:2)
    bc30:	0a 40 20 5c 	5c20400a     { if !p0 jump bc44 <_Ldtob+0x184>
    bc34:	00 40 d3 45 	45d34000       if !p0 r1:0 = memd (r19 + #0)
    bc38:	22 c0 93 41 	4193c022       if (p0) r2 = memw (r19 + #4) }
    bc3c:	41 5f c2 8c 	8cc25f41     { r1 = togglebit (r2, #31)
    bc40:	00 c0 93 91 	9193c000       r0 = memw (r19 + #0) }
    bc44:	00 40 55 75 	75554000     { p0 = cmp.gt (r21, #0)
    bc48:	c8 2a 02 68 	68022ac8       r2 = #0 ; memd (sp + #200) = r1:0 }
    bc4c:	50 c2 1d a1 	a11dc250     memb (r29 + #80) = r2
    bc50:	8a 40 21 5c 	5c21408a     { if !p0 jump c164 <_Ldtob+0x6a4>
    bc54:	da 44 c0 49 	49c044da       r27:26 = memd (gp + #304)
    bc58:	03 40 00 00 	00004003       immext (#192)
    bc5c:	24 cb 3d 3f 	3f3dcb24       memh (r29 + ##214) -= #4 }
    bc60:	20 5a e0 d2 	d2e05a20     { p0 = dfcmp.gt (r1:0, r27:26)
    bc64:	23 4a 1d b0 	b01d4a23       r3 = add (r29, #81)
    bc68:	18 d9 1d b0 	b01dd918       r24 = add (r29, #200) }
    bc6c:	7c c0 21 5c 	5c21c07c     if !p0 jump c164 <_Ldtob+0x6a4>
    bc70:	14 40 00 58 	58004014     { jump bc98 <_Ldtob+0x1d8>
    bc74:	33 28 3f 70 	703f2833       r23 = r3 ; memw (sp + #12) = r3 }
    bc78:	00 80 00 7f 	7f008000     { nop
    bc7c:	00 c0 00 7f 	7f00c000       nop }:endloop0
    bc80:	e4 43 de 11 	11de43e4     { p0 = tstbit (r22, #0) ; if (!p0.new) jump:nt c048 <_Ldtob+0x588>
    bc84:	c8 3e 7f 40 	407f3ec8       r23 = add (r23, #7) ; r1:0 = memd (sp + #200) }
    bc88:	20 5a e0 d2 	d2e05a20     { p0 = dfcmp.gt (r1:0, r27:26)
    bc8c:	61 c0 9d 91 	919dc061       r1 = memw (r29 + #12) }
    bc90:	38 40 21 5c 	5c214038     { if !p0 jump c100 <_Ldtob+0x640>
    bc94:	85 c1 93 45 	4593c185       if !p0 r5 = memw (r19 + #48) }
    bc98:	80 63 38 73 	73386380     { r1:0 = combine (#28, r24)
    bc9c:	0c 7f ff 5b 	5bff7f0c       call bab0 <_LDscale>
    bca0:	35 ff f5 bf 	bff5ff35       r21 = add (r21, #-7) }
    bca4:	00 40 55 75 	75554000     { p0 = cmp.gt (r21, #0)
    bca8:	20 c3 dd 91 	91ddc320       r1:0 = memd (r29 + #200) }
    bcac:	30 40 e0 88 	88e04030     { r16 = convert_df2w (r1:0):chop
    bcb0:	0c 40 20 5c 	5c20400c       if !p0 jump bcc4 <_Ldtob+0x204>
    bcb4:	36 c0 00 7a 	7a00c036       r22 = mux (p0, #1, #0) }
    bcb8:	42 40 90 84 	84904042     { r3:2 = convert_w2df (r16)
    bcbc:	56 d7 00 5a 	5a00d756       call eb64 <__hexagon_subdf3> }
    bcc0:	19 c0 dd a1 	a1ddc019     memd (r29 + #200) = r1:0
    bcc4:	c0 40 d8 10 	10d840c0     { p0 = cmp.gt (r16, #0) ; if (!p0.new) jump:nt c044 <_Ldtob+0x584>
    bcc8:	60 28 7f 20 	207f2860       r23 = add (r23, #7) ; r0 = #6 }
    bccc:	2b c0 00 69 	6900c02b     loop0 (bcd0 <_Ldtob+0x210>, #7)
    bcd0:	e1 41 10 76 	761041e1     { r1 = and (r16, #15)
    bcd4:	10 44 10 8c 	8c104410       r16 = asr (r16, #4)
    bcd8:	f7 ff f7 bf 	bff7fff7       r23 = add (r23, #-1) }
    bcdc:	e0 7f 80 74 	74807fe0     { if !p0.new r0 = add (r0, #-1)
    bce0:	ce 78 ff 5c 	5cff78ce       if !p0.new jump:t bc78 <_Ldtob+0x1b8>
    bce4:	f1 10 80 79 	798010f1       p0 = cmp.eq (r16, #0) ; memb (r23 + #0) = r1 }
    bce8:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    bcec:	cc c0 f2 26 	26f2c0cc       if (!cmp.gt (r0.new, #-1)) jump:nt bc80 <_Ldtob+0x1c0> }
    bcf0:	01 33 00 31 	31003301     r0 = add (r0, #1) ; r1 = add (r0, #-1)
    bcf4:	c0 7f 61 75 	75617fc0     { p0 = cmp.gt (r1, #-2)
    bcf8:	20 e0 80 7e 	7e80e020       if !p0.new r0 = #1 }
    bcfc:	08 c0 00 60 	6000c008     loop0 (bd00 <_Ldtob+0x240>, r0)
    bd00:	f7 ff f7 bf 	bff7fff7     r23 = add (r23, #-1)
    bd04:	00 80 00 7f 	7f008000     { nop
    bd08:	00 c0 17 3c 	3c17c000       memb (r23 + #0) = #0 }:endloop0
    bd0c:	ba ff ff 59 	59ffffba     jump bc80 <_Ldtob+0x1c0>
    bd10:	22 43 dd 91 	91dd4322     { r3:2 = memd (r29 + #200)
    bd14:	c0 c4 c0 49 	49c0c4c0       r1:0 = memd (gp + #304) }
    bd18:	20 42 e0 d2 	d2e04220     { p0 = dfcmp.gt (r1:0, r3:2)
    bd1c:	41 5f c3 8c 	8cc35f41       r1 = togglebit (r3, #31)
    bd20:	00 c0 62 70 	7062c000       r0 = r2 }
    bd24:	06 c0 20 5c 	5c20c006     if !p0 jump bd30 <_Ldtob+0x270>
    bd28:	02 c0 01 f5 	f501c002     r3:2 = combine (r1, r0)
    bd2c:	19 c2 dd a1 	a1ddc219     memd (r29 + #200) = r3:2
    bd30:	12 d5 1d b0 	b01dd512     r18 = add (r29, #168)
    bd34:	60 60 32 73 	73326060     { r1:0 = combine (#3, r18)
    bd38:	06 c7 00 5a 	5a00c706       call cb40 <_LXp_setw> }
    bd3c:	d6 62 4f 01 	014f62d6     { immext (#351843712)
    bd40:	20 41 00 78 	78004120       r0 = ##351843721
    bd44:	61 cd 5d 91 	915dcd61       r1 = memh (r29 + #214) }
    bd48:	d6 41 00 00 	000041d6     { immext (#30080)
    bd4c:	e1 c2 01 e0 	e001c2e1       r1 = + mpyi (r1, ##30103) }
    bd50:	20 c0 01 ed 	ed01c020     r0 = mpy (r1, r0)
    bd54:	00 cd 00 8c 	8c00cd00     r0 = asr (r0, #13)
    bd58:	00 df 01 8e 	8e01df00     r0 -= asr (r1, #31)
    bd5c:	80 ff e0 bf 	bfe0ff80     r0 = add (r0, #-4)
    bd60:	00 40 e0 70 	70e04000     { r0 = sxth (r0)
    bd64:	6b ca bd a1 	a1bdca6b       memh (r29 + #214) = r0.new }
    bd68:	d0 c1 d0 11 	11d0c1d0     p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt c108 <_Ldtob+0x648>
    bd6c:	15 60 00 7e 	7e006015     { if (p0.new) r21 = #0
    bd70:	0c c0 00 10 	1000c00c       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt bd84 <_Ldtob+0x2c4> }
    bd74:	80 7f 20 76 	76207f80     { r0 = and (r0, #-4)
    bd78:	6b ca bd a1 	a1bdca6b       memh (r29 + #214) = r0.new }
    bd7c:	ec 40 50 10 	105040ec     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt c154 <_Ldtob+0x694>
    bd80:	0d 30 40 2e 	2e40300d       r0 = add (sp, #144) ; r21 = r0 }
    bd84:	18 44 1d b0 	b01d4418     { r24 = add (r29, #32)
    bd88:	16 40 00 58 	58004016       jump bdb0 <_Ldtob+0x2f0>
    bd8c:	ef 2d 4e 2e 	2e4e2def       r22 = add (sp, #144) ; r23 = add (sp, #120) }
    bd90:	02 40 76 70 	70764002     { r2 = r22
    bd94:	20 40 0d 10 	100d4020       p0 = cmp.eq (r21, #0) ; if (p0.new) jump:nt bdd0 <_Ldtob+0x310>
    bd98:	60 e0 37 73 	7337e060       r1:0 = combine (#3, r23) }
    bd9c:	6a c3 00 5a 	5a00c36a     call c470 <_LXp_movx>
    bda0:	60 60 36 73 	73366060     { r1:0 = combine (#3, r22)
    bda4:	68 46 00 5a 	5a004668       call ca70 <_LXp_mulx>
    bda8:	62 60 37 73 	73376062       r3:2 = combine (#3, r23)
    bdac:	04 c0 78 70 	7078c004       r4 = r24 }
    bdb0:	00 40 35 85 	85354000     { p0 = !tstbit (r21, #0)
    bdb4:	15 41 15 8c 	8c154115       r21 = asr (r21, #1)
    bdb8:	04 40 78 70 	70784004       r4 = r24
    bdbc:	62 e0 36 73 	7336e062       r3:2 = combine (#3, r22) }
    bdc0:	e8 60 df 5c 	5cdf60e8     { if (p0) jump bd90 <_Ldtob+0x2d0>
    bdc4:	58 46 00 5a 	5a004658       call ca70 <_LXp_mulx>
    bdc8:	60 e0 32 73 	7332e060       r1:0 = combine (#3, r18) }
    bdcc:	e2 ff ff 59 	59ffffe2     jump bd90 <_Ldtob+0x2d0>
    bdd0:	c1 68 54 73 	735468c1     { r1 = cmp.eq (r20, #70)
    bdd4:	c0 6c 54 73 	73546cc0       r0 = cmp.eq (r20, #102)
    bdd8:	85 c1 93 91 	9193c185       r5 = memw (r19 + #48) }
    bddc:	00 c0 21 f1 	f121c000     r0 = or (r1, r0)
    bde0:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    bde4:	fa e0 00 7e 	7e00e0fa       if (p0.new) r26 = #7 }
    bde8:	21 40 00 7a 	7a004021     { r1 = mux (p0, #1, #0)
    bdec:	0a 40 00 5c 	5c00400a       if (p0) jump bdfc <_Ldtob+0x33c>
    bdf0:	17 c5 bd a1 	a1bdc517       memb (r29 + #23) = r1.new }
    bdf4:	7a cd 5d 91 	915dcd7a     r26 = memh (r29 + #214)
    bdf8:	7a c1 1a b0 	b01ac17a     r26 = add (r26, #11)
    bdfc:	1a 45 1a f3 	f31a451a     { r26 = add (r26, r5)
    be00:	60 42 00 78 	78004260       r0 = #19
    be04:	01 46 00 78 	78004601       r1 = #48
    be08:	50 c3 bd a1 	a1bdc350       memb (r29 + #80) = r1.new }
    be0c:	1a 5a a0 d5 	d5a05a1a     { r26 = min (r26, r0)
    be10:	c0 44 c0 49 	49c044c0       r1:0 = memd (gp + #304)
    be14:	b2 c0 d4 24 	24d4c0b2       if (!cmp.gt (r26.new, #0)) jump:nt c170 <_Ldtob+0x6b0> }
    be18:	22 c3 dd 91 	91ddc322     r3:2 = memd (r29 + #200)
    be1c:	20 40 e2 d2 	d2e24020     { p0 = dfcmp.gt (r3:2, r1:0)
    be20:	22 4a 1d b0 	b01d4a22       r2 = add (r29, #81)
    be24:	16 58 1d b0 	b01d5816       r22 = add (r29, #192)
    be28:	98 c4 c0 49 	49c0c498       r25:24 = memd (gp + #288) }
    be2c:	a2 e0 20 5c 	5c20e0a2     if !p0 jump c170 <_Ldtob+0x6b0>
    be30:	17 43 1d b0 	b01d4317     { r23 = add (r29, #24)
    be34:	42 08 32 e8 	e8320842       memw (sp + #12) = r2 ; memw (sp + #16) = r2 }
    be38:	04 c0 d2 91 	91d2c004     r5:4 = memd (r18 + #0)
    be3c:	40 d8 e4 d2 	d2e4d840     p0 = dfcmp.ge (r5:4, r25:24)
    be40:	1a 40 20 5c 	5c20401a     { if !p0 jump be74 <_Ldtob+0x3b4>
    be44:	7d 3a 6d 3a 	3a6d3a7d       if (p0) r21 = #0 ; if (!p0) r21 = #0 }
    be48:	24 40 e4 88 	88e44024     { r4 = convert_df2w (r5:4):chop
    be4c:	60 e0 32 73 	7332e060       r1:0 = combine (#3, r18) }
    be50:	42 40 84 84 	84844042     { r3:2 = convert_w2df (r4)
    be54:	15 c4 15 f3 	f315c415       r21 = add (r21, r4) }
    be58:	10 40 62 70 	70624010     { r16 = r2
    be5c:	51 df c3 8c 	8cc3df51       r17 = togglebit (r3, #31) }
    be60:	02 50 11 f5 	f5115002     { r3:2 = combine (r17, r16)
    be64:	18 c3 00 5a 	5a00c318       call c490 <_LXp_addh> }
    be68:	04 c0 d2 91 	91d2c004     r5:4 = memd (r18 + #0)
    be6c:	40 d8 e4 d2 	d2e4d840     p0 = dfcmp.ge (r5:4, r25:24)
    be70:	ec e0 df 5c 	5cdfe0ec     if (p0) jump be48 <_Ldtob+0x388>
    be74:	1a ff fa bf 	bffaff1a     r26 = add (r26, #-8)
    be78:	00 c0 5a 75 	755ac000     p0 = cmp.gt (r26, #0)
    be7c:	3b 40 00 7a 	7a00403b     { r27 = mux (p0, #1, #0)
    be80:	0a 40 20 5c 	5c20400a       if !p0 jump be90 <_Ldtob+0x3d0>
    be84:	60 60 32 73 	73326060       r1:0 = combine (#3, r18)
    be88:	42 cd c0 49 	49c0cd42       r3:2 = memd (gp + #848) }
    be8c:	22 c5 00 5a 	5a00c522     call c8d0 <_LXp_mulh>
    be90:	00 40 55 75 	75554000     { p0 = cmp.gt (r21, #0)
    be94:	82 c0 9d 91 	919dc082       r2 = memw (r29 + #16) }
    be98:	ce 40 20 5c 	5c2040ce     { if !p0 jump c034 <_Ldtob+0x574>
    be9c:	73 28 82 20 	20822873       r2 = add (r2, #8) ; r3 = #7 }
    bea0:	40 61 35 73 	73356140     { r1:0 = combine (#10, r21)
    bea4:	13 28 22 73 	73222813       r2 = add (r2, #-1) ; memw (sp + #4) = r3 }
    bea8:	3c 4f 00 5a 	5a004f3c     { call dd20 <ldiv>
    beac:	02 c2 9d a1 	a19dc202       memw (r29 + #8) = r2 }
    beb0:	71 08 60 e8 	e8600871     memw (sp + #24) = r0 ; memw (sp + #28) = r1
    beb4:	00 40 d7 91 	91d74000     { r1:0 = memd (r23 + #0)
    beb8:	42 c0 9d 91 	919dc042       r2 = memw (r29 + #8) }
    bebc:	00 c0 d6 a1 	a1d6c000     memd (r22 + #0) = r1:0
    bec0:	20 c0 96 91 	9196c020     r0 = memw (r22 + #4)
    bec4:	00 46 00 b0 	b0004600     { r0 = add (r0, #48)
    bec8:	00 c2 a2 a1 	a1a2c200       memb (r2 + #0) = r0.new }
    becc:	13 3c ed 00 	00ed3c13     r21 = memw (r22 + #0) ; r3 = memw (sp + #4)
    bed0:	98 c0 cd 10 	10cdc098     p0 = cmp.gt (r21, #0) ; if (!p0.new) jump:nt c000 <_Ldtob+0x540>
    bed4:	e3 7f e3 bf 	bfe37fe3     { r3 = add (r3, #-1)
    bed8:	00 40 00 7f 	7f004000       nop
    bedc:	e6 c0 75 26 	2675c0e6       if (!cmp.eq (r3.new, #-1)) jump:nt bea0 <_Ldtob+0x3e0> }
    bee0:	00 40 1b 85 	851b4000     { p0 = tstbit (r27, #0)
    bee4:	ac 48 20 5c 	5c2048ac       if !p0.new jump:nt c038 <_Ldtob+0x578>
    bee8:	02 41 02 b0 	b0024102       r2 = add (r2, #8)
    beec:	04 d2 bd a1 	a1bdd204       memw (r29 + #16) = r2.new }
    bef0:	20 43 dd 91 	91dd4320     { r1:0 = memd (r29 + #200)
    bef4:	c2 c4 c0 49 	49c0c4c2       r3:2 = memd (gp + #304) }
    bef8:	20 42 e0 d2 	d2e04220     { p0 = dfcmp.gt (r1:0, r3:2)
    befc:	30 1c 43 3c 	3c431c30       r3 = memw (sp + #16) ; r0 = memw (sp + #12) }
    bf00:	9c e0 df 5c 	5cdfe09c     if (p0) jump be38 <_Ldtob+0x378>
    bf04:	01 43 20 f3 	f3204301     { r1 = sub (r3, r0)
    bf08:	00 40 00 7f 	7f004000       nop
    bf0c:	85 c1 93 91 	9193c185       r5 = memw (r19 + #48) }
    bf10:	60 4d 5d 91 	915d4d60     { r0 = memh (r29 + #214)
    bf14:	23 ca 3d 91 	913dca23       r3 = memub (r29 + #81) }
    bf18:	e2 40 00 b0 	b00040e2     { r2 = add (r0, #7)
    bf1c:	00 46 03 75 	75034600       p0 = cmp.eq (r3, #48)
    bf20:	6b cc bd a1 	a1bdcc6b       memh (r29 + #214) = r2.new }
    bf24:	c0 40 00 74 	740040c0     { if (p0) r0 = add (r0, #6)
    bf28:	1c 40 20 5c 	5c20401c       if !p0 jump bf5c <_Ldtob+0x49c>
    bf2c:	62 40 9d 45 	459d4062       if !p0 r2 = memw (r29 + #12)
    bf30:	62 c0 9d 41 	419dc062       if (p0) r2 = memw (r29 + #12) }
    bf34:	00 40 c0 70 	70c04000     { r0 = zxth (r0)
    bf38:	00 40 00 7f 	7f004000       nop
    bf3c:	00 c0 00 7f 	7f00c000       nop }
    bf40:	22 40 02 b0 	b0024022     { r2 = add (r2, #1)
    bf44:	e0 7f e0 bf 	bfe07fe0       r0 = add (r0, #-1)
    bf48:	e1 7f e1 bf 	bfe17fe1       r1 = add (r1, #-1)
    bf4c:	6b c0 5d a1 	a15dc06b       memh (r29 + #214) = r0 }
    bf50:	23 10 00 56 	56001023     r0 = zxth (r0) ; r3 = memub (r2 + #0)
    bf54:	00 46 03 75 	75034600     { p0 = cmp.eq (r3, #48)
    bf58:	f6 f8 df 5c 	5cdff8f6       if (p0.new) jump:t bf40 <_Ldtob+0x480> }
    bf5c:	e0 c2 3d 91 	913dc2e0     r0 = memub (r29 + #23)
    bf60:	a0 6c 54 73 	73546ca0     { r0 = cmp.eq (r20, #101)
    bf64:	64 43 80 11 	11804364       p0 = tstbit (r0, #0) ; if (p0.new) jump:nt c028 <_Ldtob+0x568>
    bf68:	72 cd 5d 91 	915dcd72       r18 = memh (r29 + #214) }
    bf6c:	32 c0 12 b0 	b012c032     r18 = add (r18, #1)
    bf70:	12 c0 d2 70 	70d2c012     r18 = zxth (r18)
    bf74:	12 52 05 d5 	d5055212     { r18 = add (r18.l, r5.l)
    bf78:	06 c1 c2 20 	20c2c106       if (!cmp.gt (r18.new, r1)) jump:nt bf80 <_Ldtob+0x4c0> }
    bf7c:	12 c0 e1 70 	70e1c012     r18 = sxth (r1)
    bf80:	30 c1 ca 11 	11cac130     p0 = cmp.gt (r18, #-1) ; if (!p0.new) jump:nt bfe0 <_Ldtob+0x520>
    bf84:	3c ca c1 14 	14c1ca3c     p0 = cmp.gt (r1, r18) ; if (!p0.new) jump:nt bffc <_Ldtob+0x53c>
    bf88:	00 d2 22 3a 	3a22d200     r0 = memub (r2 + r18 << #0)
    bf8c:	80 46 80 75 	75804680     { p0 = cmp.gtu (r0, #52)
    bf90:	38 48 20 5c 	5c204838       if !p0.new jump:nt bffc <_Ldtob+0x53c>
    bf94:	25 e7 00 7e 	7e00e725       if (p0.new) r5 = #57 }
    bf98:	e0 ff f2 bf 	bff2ffe0     r0 = add (r18, #-1)
    bf9c:	04 40 60 70 	70604004     { r4 = r0
    bfa0:	06 40 02 f3 	f3024006       r6 = add (r2, r0)
    bfa4:	03 c0 22 3a 	3a22c003       r3 = memub (r2 + r0 << #0) }
    bfa8:	d2 61 62 db 	db6261d2     { r1 = add (r2, add (r18, #-2))
    bfac:	10 c3 45 14 	1445c310       p0 = cmp.eq (r5, r3) ; if (!p0.new) jump:nt bfc8 <_Ldtob+0x508> }
    bfb0:	06 40 61 70 	70614006     { r6 = r1
    bfb4:	12 40 e0 70 	70e04012       r18 = sxth (r0)
    bfb8:	e4 7f e4 bf 	bfe47fe4       r4 = add (r4, #-1)
    bfbc:	e3 c1 21 9b 	9b21c1e3       r3 = memub (r1 ++ #-1) }
    bfc0:	e0 7f f2 bf 	bff27fe0     { r0 = add (r18, #-1)
    bfc4:	f8 e3 35 14 	1435e3f8       p0 = cmp.eq (r5, r3) ; if (p0.new) jump:t bfb0 <_Ldtob+0x4f0> }
    bfc8:	20 47 05 75 	75054720     { p0 = cmp.eq (r5, #57)
    bfcc:	23 60 03 74 	74036023       if (p0.new) r3 = add (r3, #1)
    bfd0:	00 c3 a6 42 	42a6c300       if (p0.new) memb (r6 + #0) = r3.new }
    bfd4:	32 60 92 74 	74926032     { if !p0.new r18 = add (r18, #1)
    bfd8:	0a 41 c4 11 	11c4410a       p0 = cmp.gt (r4, #-1) ; if (!p0.new) jump:nt bfe8 <_Ldtob+0x528>
    bfdc:	64 cd 5d 91 	915dcd64       r4 = memh (r29 + #214) }
    bfe0:	00 7e ff 59 	59ff7e00     { jump bbe0 <_Ldtob+0x120>
    bfe4:	64 cd 5d 91 	915dcd64       r4 = memh (r29 + #214) }
    bfe8:	24 40 04 b0 	b0044024     { r4 = add (r4, #1)
    bfec:	aa 34 22 33 	332234aa       r2 = add (r2, #-1) ; r18 = sxth (r18) }
    bff0:	04 40 e4 70 	70e44004     { r4 = sxth (r4)
    bff4:	f8 7d ff 59 	59ff7df8       jump bbe0 <_Ldtob+0x120>
    bff8:	6b cc bd a1 	a1bdcc6b       memh (r29 + #214) = r4.new }
    bffc:	ce f0 35 16 	1635f0ce     r5 = #48 ; jump bf98 <_Ldtob+0x4d8>
    c000:	e3 7f e3 bf 	bfe37fe3     { r3 = add (r3, #-1)
    c004:	70 c0 f3 26 	26f3c070       if (!cmp.gt (r3.new, #-1)) jump:nt bee0 <_Ldtob+0x420> }
    c008:	30 33 33 31 	31333330     r3 = add (r3, #1) ; r0 = add (r3, #-1)
    c00c:	c0 7f 60 75 	75607fc0     { p0 = cmp.gt (r0, #-2)
    c010:	23 e0 80 7e 	7e80e023       if !p0.new r3 = #1 }
    c014:	08 c0 03 60 	6003c008     loop0 (c018 <_Ldtob+0x558>, r3)
    c018:	e2 ff e2 bf 	bfe2ffe2     r2 = add (r2, #-1)
    c01c:	00 80 00 7f 	7f008000     { nop
    c020:	30 c0 02 3c 	3c02c030       memb (r2 + #0) = #48 }:endloop0
    c024:	5e ff ff 59 	59ffff5e     jump bee0 <_Ldtob+0x420>
    c028:	b2 e8 54 73 	7354e8b2     r18 = cmp.eq (r20, #69)
    c02c:	12 40 32 f1 	f1324012     { r18 = or (r18, r0)
    c030:	a4 ff ff 59 	59ffffa4       jump bf74 <_Ldtob+0x4b4> }
    c034:	ea c7 33 16 	1633c7ea     r3 = #7 ; jump c008 <_Ldtob+0x548>
    c038:	30 3c b5 0c 	0cb53c30     r5 = memw (r19 + #48) ; r0 = memw (sp + #12)
    c03c:	01 42 20 f3 	f3204201     { r1 = sub (r2, r0)
    c040:	6a ff ff 59 	59ffff6a       jump bf10 <_Ldtob+0x450> }
    c044:	56 c6 20 16 	1620c656     r0 = #6 ; jump bcf0 <_Ldtob+0x230>
    c048:	30 3c b5 0c 	0cb53c30     r5 = memw (r19 + #48) ; r0 = memw (sp + #12)
    c04c:	17 d7 20 f3 	f320d717     r23 = sub (r23, r0)
    c050:	00 57 59 f2 	f2595700     { p0 = cmp.gt (r25, r23)
    c054:	06 c8 20 5c 	5c20c806       if !p0.new jump:nt c05c <_Ldtob+0x59c> }
    c058:	12 c0 f7 70 	70f7c012     r18 = sxth (r23)
    c05c:	46 41 ca 11 	11ca4146     { p0 = cmp.gt (r18, #-1) ; if (!p0.new) jump:nt c0e8 <_Ldtob+0x628>
    c060:	62 c0 9d 47 	479dc062       if !p0.new r2 = memw (r29 + #12) }
    c064:	03 5b 1d b0 	b01d5b03     { r3 = add (r29, #216)
    c068:	4c ca cf 14 	14cfca4c       p0 = cmp.gt (r23, r18) ; if (!p0.new) jump:nt c0fc <_Ldtob+0x63c> }
    c06c:	fd 7f ff 0f 	0fff7ffd     { immext (#4294967104)
    c070:	12 e0 63 db 	db63e012       r0 = add (r3, add (r18, ##-136)) }
    c074:	20 c0 20 91 	9120c020     r0 = memub (r0 + #1)
    c078:	e3 61 00 7e 	7e0061e3     { if (p0.new) r3 = #15
    c07c:	42 c7 40 11 	1140c742       p0 = cmp.gtu (r0, #7) ; if (!p0.new) jump:nt c0fc <_Ldtob+0x63c> }
    c080:	e0 7f f2 bf 	bff27fe0     { r0 = add (r18, #-1)
    c084:	34 1c 31 3c 	3c311c34       r1 = memw (sp + #12) ; r4 = memw (sp + #12) }
    c088:	04 40 04 f3 	f3044004     { r4 = add (r4, r0)
    c08c:	0e 41 00 17 	1700410e       r1 = r0 ; jump c0a4 <_Ldtob+0x5e4>
    c090:	02 c0 21 3a 	3a21c002       r2 = memub (r1 + r0 << #0) }
    c094:	04 41 04 f3 	f3044104     { r4 = add (r4, r1)
    c098:	30 3c 0a 54 	540a3c30       r18 = sxth (r0) ; r0 = memw (sp + #12) }
    c09c:	e0 7f f2 bf 	bff27fe0     { r0 = add (r18, #-1)
    c0a0:	02 c1 20 3a 	3a20c102       r2 = memub (r0 + r1 << #0) }
    c0a4:	e1 7f 01 74 	74017fe1     { if (p0.new) r1 = add (r1, #-1)
    c0a8:	f8 62 33 14 	143362f8       p0 = cmp.eq (r3, r2) ; if (p0.new) jump:t c094 <_Ldtob+0x5d4>
    c0ac:	64 c0 9d 43 	439dc064       if (p0.new) r4 = memw (r29 + #12) }
    c0b0:	e0 41 03 75 	750341e0     { p0 = cmp.eq (r3, #15)
    c0b4:	22 60 02 74 	74026022       if (p0.new) r2 = add (r2, #1)
    c0b8:	00 c2 a4 42 	42a4c200       if (p0.new) memb (r4 + #0) = r2.new }
    c0bc:	32 60 92 74 	74926032     { if !p0.new r18 = add (r18, #1)
    c0c0:	42 41 c1 11 	11c14142       p0 = cmp.gt (r1, #-1) ; if (!p0.new) jump:nt c140 <_Ldtob+0x680>
    c0c4:	62 c0 9d 43 	439dc062       if (p0.new) r2 = memw (r29 + #12) }
    c0c8:	00 52 02 f3 	f3025200     { r0 = add (r2, r18)
    c0cc:	10 c0 ca 10 	10cac010       p0 = cmp.gt (r18, #0) ; if (!p0.new) jump:nt c0e8 <_Ldtob+0x628> }
    c0d0:	01 c0 22 f3 	f322c001     r1 = sub (r0, r2)
    c0d4:	08 c0 01 60 	6001c008     loop0 (c0d8 <_Ldtob+0x618>, r1)
    c0d8:	e1 ff 20 97 	9720ffe1     r1 = memub (r0 + #-1)
    c0dc:	e0 bf e0 bf 	bfe0bfe0     { r0 = add (r0, #-1)
    c0e0:	01 41 11 3a 	3a114101       r1 = memb (r17 + r1 << #0)
    c0e4:	ff e3 a0 a7 	a7a0e3ff       memb (r0 + #-1) = r1.new }:endloop0
    c0e8:	e0 7f f2 bf 	bff27fe0     { r0 = add (r18, #-1)
    c0ec:	7c 61 b5 11 	11b5617c       p0 = cmp.gt (r5, #-1) ; if (p0.new) jump:t bfe0 <_Ldtob+0x520>
    c0f0:	64 cd 5d 91 	915dcd64       r4 = memh (r29 + #214) }
    c0f4:	76 7d ff 59 	59ff7d76     { jump bbe0 <_Ldtob+0x120>
    c0f8:	0c c0 93 a1 	a193c00c       memw (r19 + #48) = r0 }
    c0fc:	c2 c0 33 16 	1633c0c2     r3 = #0 ; jump c080 <_Ldtob+0x5c0>
    c100:	17 57 21 f3 	f3215717     { r23 = sub (r23, r1)
    c104:	a8 ff ff 59 	59ffffa8       jump c050 <_Ldtob+0x590> }
    c108:	60 c0 40 76 	7640c060     r0 = sub (#3, r0)
    c10c:	95 ff 20 76 	7620ff95     r21 = and (r0, #-4)
    c110:	00 40 55 76 	76554000     { r0 = sub (#0, r21)
    c114:	3a 60 2d 10 	102d603a       p0 = cmp.eq (r21, #0) ; if (p0.new) jump:t bd84 <_Ldtob+0x2c4>
    c118:	6b cc bd a1 	a1bdcc6b       memh (r29 + #214) = r0.new }
    c11c:	00 52 1d b0 	b01d5200     { r0 = add (r29, #144)
    c120:	12 45 00 5a 	5a004512       call cb40 <_LXp_setw>
    c124:	61 40 00 78 	78004061       r1 = #3
    c128:	62 cd c0 49 	49c0cd62       r3:2 = memd (gp + #856) }
    c12c:	2c fe ff 59 	59fffe2c     jump bd84 <_Ldtob+0x2c4>
    c130:	39 44 00 78 	78004439     { r25 = #33
    c134:	eb 7f ff 0f 	0fff7feb       immext (#4294965952)
    c138:	68 63 0d 16 	160d6368       r21 = #35 ; jump bc24 <_Ldtob+0x164>
    c13c:	32 c4 00 78 	7800c432       r18 = #33 }
    c140:	02 4a 1d b0 	b01d4a02     { r2 = add (r29, #80)
    c144:	12 40 f2 70 	70f24012       r18 = sxth (r18)
    c148:	03 40 00 00 	00004003       immext (#192)
    c14c:	04 cb 3d 3f 	3f3dcb04       memh (r29 + ##214) += #4 }
    c150:	bc ff ff 59 	59ffffbc     jump c0c8 <_Ldtob+0x608>
    c154:	8e 41 00 5a 	5a00418e     { call c470 <_LXp_movx>
    c158:	69 44 00 00 	00004469       immext (#72256)
    c15c:	31 28 02 2b 	2b022831       r2 = ##72304 ; r1 = #3 }
    c160:	12 fe ff 59 	59fffe12     jump bd84 <_Ldtob+0x2c4>
    c164:	22 4a 1d b0 	b01d4a22     { r2 = add (r29, #81)
    c168:	76 40 3f 16 	163f4076       r23 = #0 ; jump c050 <_Ldtob+0x590>
    c16c:	03 d4 bd a1 	a1bdd403       memw (r29 + #12) = r2.new }
    c170:	23 4a 1d b0 	b01d4a23     { r3 = add (r29, #81)
    c174:	d0 40 21 16 	162140d0       r1 = #0 ; jump bf10 <_Ldtob+0x450>
    c178:	03 d5 bd a1 	a1bdd503       memw (r29 + #12) = r3.new }
    c17c:	00 c0 00 7f 	7f00c000     nop

0000c180 <_LDunscale>:
    c180:	b8 d5 ff 59 	59ffd5b8     jump 6cf0 <_Dunscale>
    c184:	00 c0 00 7f 	7f00c000     nop
    c188:	00 c0 00 7f 	7f00c000     nop
    c18c:	00 c0 00 7f 	7f00c000     nop

0000c190 <_Litob>:
    c190:	00 4b 01 75 	75014b00     { p0 = cmp.eq (r1, #88)
    c194:	18 53 00 5a 	5a005318       call e7c0 <__save_r16_through_r27>
    c198:	0a c0 9d a0 	a09dc00a       allocframe (#80) }
    c19c:	14 40 60 70 	70604014     { r20 = r0
    c1a0:	ee 40 00 5c 	5c0040ee       if (p0) jump c378 <_Litob+0x1e8>
    c1a4:	15 42 00 78 	78004215       r21 = #16
    c1a8:	10 c0 c0 41 	41c0c010       if (p0) r17:16 = memd (r0 + #0) }
    c1ac:	e0 4d 01 75 	75014de0     { p0 = cmp.eq (r1, #111)
    c1b0:	34 48 00 5c 	5c004834       if (p0.new) jump:nt c214 <_Litob+0x84>
    c1b4:	01 4f 01 75 	75014f01       p1 = cmp.eq (r1, #120)
    c1b8:	10 c0 c0 47 	47c0c010       if !p0.new r17:16 = memd (r0 + #0) }
    c1bc:	20 4d 01 75 	75014d20     { p0 = cmp.eq (r1, #105)
    c1c0:	c4 48 00 5c 	5c0048c4       if (p0.new) jump:nt c344 <_Litob+0x1b4>
    c1c4:	15 c2 85 7a 	7a85c215       r21 = mux (p1, #16, #10) }
    c1c8:	80 4c 01 75 	75014c80     { p0 = cmp.eq (r1, #100)
    c1cc:	be 48 00 5c 	5c0048be       if (p0.new) jump:nt c344 <_Litob+0x1b4>
    c1d0:	27 44 00 00 	00004427       immext (#68032)
    c1d4:	17 c0 00 78 	7800c017       r23 = ##68032 }
    c1d8:	12 c0 55 84 	8455c012     r19:18 = sxtw (r21)
    c1dc:	00 c0 00 7c 	7c00c000     r1:0 = combine (#0, #0)
    c1e0:	00 40 90 d2 	d2904000     { p0 = cmp.eq (r17:16, r1:0)
    c1e4:	2a 48 00 5c 	5c00482a       if (p0.new) jump:nt c234 <_Litob+0xa4>
    c1e8:	00 40 00 7f 	7f004000       nop
    c1ec:	00 c0 00 7f 	7f00c000       nop }
    c1f0:	00 50 11 f5 	f5115000     { r1:0 = combine (r17, r16)
    c1f4:	02 52 13 f5 	f5135202       r3:2 = combine (r19, r18)
    c1f8:	24 2c 7e 29 	297e2c24       r22 = #23 ; r4 = add (sp, #8) }
    c1fc:	32 54 00 5a 	5a005432     { call ea60 <__hexagon_umoddi3>
    c200:	01 c4 9d a1 	a19dc401       memw (r29 + #4) = r4 }
    c204:	00 40 17 3a 	3a174000     { r0 = memb (r23 + r0 << #0)
    c208:	21 c0 9d 91 	919dc021       r1 = memw (r29 + #4) }
    c20c:	1e 40 00 58 	5800401e     { jump c248 <_Litob+0xb8>
    c210:	17 c0 01 a1 	a101c017       memb (r1 + #23) = r0 }
    c214:	12 40 04 7c 	7c044012     { r19:18 = combine (#0, #8)
    c218:	27 44 00 00 	00004427       immext (#68032)
    c21c:	17 40 00 78 	78004017       r23 = ##68032
    c220:	10 c0 c0 91 	91c0c010       r17:16 = memd (r0 + #0) }
    c224:	15 c1 00 78 	7800c115     r21 = #8
    c228:	00 c0 00 7c 	7c00c000     r1:0 = combine (#0, #0)
    c22c:	00 40 90 d2 	d2904000     { p0 = cmp.eq (r17:16, r1:0)
    c230:	e2 e8 ff 5c 	5cffe8e2       if !p0.new jump:nt c1f0 <_Litob+0x60> }
    c234:	16 43 00 78 	78004316     { r22 = #24
    c238:	80 41 94 91 	91944180       r0 = memw (r20 + #48)
    c23c:	de c0 72 24 	2472c0de       if (!cmp.eq (r0.new, #0)) jump:nt c1f0 <_Litob+0x60> }
    c240:	00 41 1d b0 	b01d4100     { r0 = add (r29, #8)
    c244:	01 d2 bd a1 	a1bdd201       memw (r29 + #4) = r0.new }
    c248:	02 52 13 f5 	f5135202     { r3:2 = combine (r19, r18)
    c24c:	b4 53 00 5a 	5a0053b4       call e9b0 <__hexagon_udivdi3>
    c250:	00 d0 11 f5 	f511d000       r1:0 = combine (r17, r16) }
    c254:	12 40 01 f5 	f5014012     { r19:18 = combine (r1, r0)
    c258:	00 c0 00 7c 	7c00c000       r1:0 = combine (#0, #0) }
    c25c:	40 40 92 d2 	d2924040     { p0 = cmp.gt (r19:18, r1:0)
    c260:	00 d2 d4 a1 	a1d4d200       memd (r20 + #0) = r19:18 }
    c264:	20 40 00 7a 	7a004020     { r0 = mux (p0, #1, #0)
    c268:	f0 7f f6 bf 	bff67ff0       r16 = add (r22, #-1)
    c26c:	2c c0 04 24 	2404c02c       if (cmp.eq (r0.new, #0)) jump:nt c2bc <_Litob+0x12c> }
    c270:	1a 40 55 84 	8455401a     { r27:26 = sxtw (r21)
    c274:	18 40 00 7c 	7c004018       r25:24 = combine (#0, #0)
    c278:	31 c0 9d 91 	919dc031       r17 = memw (r29 + #4) }
    c27c:	11 d0 11 f3 	f311d011     r17 = add (r17, r16)
    c280:	00 52 13 f5 	f5135200     { r1:0 = combine (r19, r18)
    c284:	20 53 00 5a 	5a005320       call e8c0 <__hexagon_divdi3>
    c288:	02 5a 1b f5 	f51b5a02       r3:2 = combine (r27, r26)
    c28c:	16 c0 70 70 	7070c016       r22 = r16 }
    c290:	02 40 15 ed 	ed154002     { r2 = mpyi (r21, r0)
    c294:	41 58 80 d2 	d2805841       p1 = cmp.gt (r1:0, r25:24)
    c298:	00 c0 50 75 	7550c000       p0 = cmp.gt (r16, #0) }
    c29c:	12 d2 22 f3 	f322d212     r18 = sub (r18, r2)
    c2a0:	02 52 17 3a 	3a175202     { r2 = memb (r23 + r18 << #0)
    c2a4:	00 c0 d4 a1 	a1d4c000       memd (r20 + #0) = r1:0 }
    c2a8:	0a 40 20 5c 	5c20400a     { if !p0 jump c2bc <_Litob+0x12c>
    c2ac:	78 c2 11 ab 	ab11c278       memb (r17 ++ #-1) = r2 }
    c2b0:	12 40 01 f5 	f5014012     { r19:18 = combine (r1, r0)
    c2b4:	e8 61 df 5c 	5cdf61e8       if (p1) jump c280 <_Litob+0xf0>
    c2b8:	f0 df 30 74 	7430dff0       if (p1) r16 = add (r16, #-1) }
    c2bc:	16 c8 0d 10 	100dc816     p0 = cmp.eq (r21, #8) ; if (p0.new) jump:nt c2e8 <_Litob+0x158>
    c2c0:	01 c0 76 70 	7076c001     r1 = r22
    c2c4:	02 43 41 76 	76414302     { r2 = sub (#24, r1)
    c2c8:	20 c0 9d 91 	919dc020       r0 = memw (r29 + #4) }
    c2cc:	01 41 00 f3 	f3004101     { r1 = add (r0, r1)
    c2d0:	c2 4f ff 5b 	5bff4fc2       call 6250 <memcpy>
    c2d4:	c2 07 c0 84 	84c007c2       r0 = memw (r20 + #16) ; memw (r20 + #28) = r2 }
    c2d8:	c0 0c c1 07 	07c10cc0     r1 = memw (r20 + #28) ; r0 = memw (r20 + #48)
    c2dc:	42 c1 80 14 	1480c142     p0 = cmp.gt (r0, r1) ; if (p0.new) jump:nt c360 <_Litob+0x1d0>
    c2e0:	1e c1 c0 11 	11c0c11e     p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt c31c <_Litob+0x18c>
    c2e4:	ae d2 00 58 	5800d2ae     jump e840 <__restore_r16_through_r27_and_deallocframe>
    c2e8:	c0 c3 74 91 	9174c3c0     r0 = memuh (r20 + #60)
    c2ec:	00 43 20 85 	85204300     { p0 = !tstbit (r0, #3)
    c2f0:	ea 68 df 5c 	5cdf68ea       if (p0.new) jump:nt c2c0 <_Litob+0x130>
    c2f4:	01 c0 76 70 	7076c001       r1 = r22 }
    c2f8:	0a 57 0e 11 	110e570a     { p0 = cmp.gtu (r22, #23) ; if (p0.new) jump:nt c30c <_Litob+0x17c>
    c2fc:	22 c0 9d 91 	919dc022       r2 = memw (r29 + #4) }
    c300:	00 d6 22 3a 	3a22d600     r0 = memub (r2 + r22 << #0)
    c304:	00 46 00 75 	75004600     { p0 = cmp.eq (r0, #48)
    c308:	e0 e8 df 5c 	5cdfe8e0       if (p0.new) jump:nt c2c4 <_Litob+0x134> }
    c30c:	00 46 00 78 	78004600     { r0 = #48
    c310:	14 3c e1 53 	53e13c14       r1 = add (r22, #-1) ; r4 = memw (sp + #4) }
    c314:	d8 7f ff 59 	59ff7fd8     { jump c2c4 <_Litob+0x134>
    c318:	00 c1 04 3b 	3b04c100       memb (r4 + r1 << #0) = r0 }
    c31c:	c0 c3 74 91 	9174c3c0     r0 = memuh (r20 + #60)
    c320:	80 42 00 76 	76004280     { r0 = and (r0, #20)
    c324:	e2 d0 72 24 	2472d0e2       if (!cmp.eq (r0.new, #16)) jump:nt c2e4 <_Litob+0x154> }
    c328:	c0 0e c2 06 	06c20ec0     r2 = memw (r20 + #24) ; r0 = memw (r20 + #56)
    c32c:	a3 c0 94 91 	9194c0a3     r3 = memw (r20 + #20)
    c330:	20 c2 83 ef 	ef83c220     r0 -= add (r3, r2)
    c334:	00 c0 21 f3 	f321c000     r0 = sub (r0, r1)
    c338:	00 40 40 75 	75404000     { p0 = cmp.gt (r0, #0)
    c33c:	30 c0 94 42 	4294c030       if (p0.new) memw (r20 + #24) = r0 }
    c340:	80 d2 00 58 	5800d280     jump e840 <__restore_r16_through_r27_and_deallocframe>
    c344:	00 c0 00 7c 	7c00c000     r1:0 = combine (#0, #0)
    c348:	40 50 80 d2 	d2805040     { p0 = cmp.gt (r1:0, r17:16)
    c34c:	20 c8 00 5c 	5c00c820       if (p0.new) jump:nt c388 <_Litob+0x1f8> }
    c350:	12 40 55 84 	84554012     { r19:18 = sxtw (r21)
    c354:	6c 7f ff 59 	59ff7f6c       jump c228 <_Litob+0x98>
    c358:	27 44 00 00 	00004427       immext (#68032)
    c35c:	17 c0 00 78 	7800c017       r23 = ##68032 }
    c360:	00 40 21 f3 	f3214000     { r0 = sub (r0, r1)
    c364:	ff 43 00 00 	000043ff       immext (#65472)
    c368:	e1 45 00 78 	780045e1       r1 = ##65519
    c36c:	06 d4 b4 a1 	a1b4d406       memw (r20 + #24) = r0.new }
    c370:	41 cf 34 3e 	3e34cf41     memh (r20 + #60) &= r1
    c374:	66 d2 00 58 	5800d266     jump e840 <__restore_r16_through_r27_and_deallocframe>
    c378:	12 40 55 84 	84554012     { r19:18 = sxtw (r21)
    c37c:	32 7f ff 59 	59ff7f32       jump c1dc <_Litob+0x4c>
    c380:	27 44 00 00 	00004427       immext (#68032)
    c384:	17 c3 00 78 	7800c317       r23 = ##68056 }
    c388:	b0 40 90 80 	809040b0     { r17:16 = neg (r17:16)
    c38c:	e4 ff ff 59 	59ffffe4       jump c350 <_Litob+0x1c0> }

0000c390 <_LXp_getw>:
    c390:	00 40 01 75 	75014000     { p0 = cmp.eq (r1, #0)
    c394:	03 40 60 70 	70604003       r3 = r0
    c398:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    c39c:	30 c0 00 5c 	5c00c030     if (p0) jump c3fc <_LXp_getw+0x6c>
    c3a0:	2a 41 01 10 	1001412a     { p0 = cmp.eq (r1, #1) ; if (p0.new) jump:nt c3f4 <_LXp_getw+0x64>
    c3a4:	10 40 c0 43 	43c04010       if (p0.new) r17:16 = memd (r0 + #0)
    c3a8:	10 c0 c0 47 	47c0c010       if !p0.new r17:16 = memd (r0 + #0) }
    c3ac:	c6 c4 c0 49 	49c0c4c6     r7:6 = memd (gp + #304)
    c3b0:	00 c6 f0 d2 	d2f0c600     p0 = dfcmp.eq (r17:16, r7:6)
    c3b4:	20 c0 00 5c 	5c00c020     if (p0) jump c3f4 <_LXp_getw+0x64>
    c3b8:	10 41 c1 10 	10c14110     { p0 = cmp.gt (r1, #1) ; if (!p0.new) jump:nt c3d8 <_LXp_getw+0x48>
    c3bc:	24 40 c0 43 	43c04024       if (p0.new) r5:4 = memd (r0 + #8)
    c3c0:	24 c0 c0 47 	47c0c024       if !p0.new r5:4 = memd (r0 + #8) }
    c3c4:	00 c6 e4 d2 	d2e4c600     p0 = dfcmp.eq (r5:4, r7:6)
    c3c8:	16 c0 00 5c 	5c00c016     if (p0) jump c3f4 <_LXp_getw+0x64>
    c3cc:	00 70 11 fd 	fd117000     { if (p0.new) r1:0 = combine (r17, r16)
    c3d0:	10 42 01 10 	10014210       p0 = cmp.eq (r1, #2) ; if (p0.new) jump:nt c3ec <_LXp_getw+0x5c>
    c3d4:	02 e4 05 fd 	fd05e402       if (p0.new) r3:2 = combine (r5, r4) }
    c3d8:	00 44 05 f5 	f5054400     { r1:0 = combine (r5, r4)
    c3dc:	74 53 00 5a 	5a005374       call eac0 <__hexagon_adddf3>
    c3e0:	42 c0 c3 91 	91c3c042       r3:2 = memd (r3 + #16) }
    c3e4:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    c3e8:	00 d0 11 f5 	f511d000       r1:0 = combine (r17, r16) }
    c3ec:	6a d3 00 5a 	5a00d36a     call eac0 <__hexagon_adddf3>
    c3f0:	10 c0 01 f5 	f501c010     r17:16 = combine (r1, r0)
    c3f4:	00 50 11 f5 	f5115000     { r1:0 = combine (r17, r16)
    c3f8:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    c3fc:	d0 c4 c0 49 	49c0c4d0     r17:16 = memd (gp + #304)
    c400:	00 50 11 f5 	f5115000     { r1:0 = combine (r17, r16)
    c404:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    c408:	00 40 00 7f 	7f004000     { nop
    c40c:	00 c0 00 7f 	7f00c000       nop }

0000c410 <_LXp_ldexpx>:
    c410:	00 40 41 75 	75414000     { p0 = cmp.gt (r1, #0)
    c414:	dc 51 00 5a 	5a0051dc       call e7c8 <__save_r16_through_r23>
    c418:	04 c0 9d a0 	a09dc004       allocframe (#32) }
    c41c:	16 40 60 70 	70604016     { r22 = r0
    c420:	20 40 20 5c 	5c204020       if !p0 jump c45c <_LXp_ldexpx+0x4c>
    c424:	2b 30 1a 30 	301a302b       r18 = r1 ; r19 = r2 }
    c428:	10 60 20 73 	73206010     { r17:16 = combine (#0, r0)
    c42c:	08 40 00 58 	58004008       jump c438 <_LXp_ldexpx+0x28>
    c430:	d4 c4 c0 49 	49c0c4d4       r21:20 = memd (gp + #304) }
    c434:	14 c1 20 5c 	5c20c114     if !p1 jump c45c <_LXp_ldexpx+0x4c>
    c438:	02 40 73 70 	70734002     { r2 = r19
    c43c:	44 4c 00 5a 	5a004c44       call dcc0 <ldexpl>
    c440:	31 40 11 b0 	b0114031       r17 = add (r17, #1)
    c444:	00 c0 d0 91 	91d0c000       r1:0 = memd (r16 + #0) }
    c448:	00 54 e0 d2 	d2e05400     { p0 = dfcmp.eq (r1:0, r21:20)
    c44c:	01 51 52 f2 	f2525101       p1 = cmp.gt (r18, r17)
    c450:	10 41 10 b0 	b0104110       r16 = add (r16, #8)
    c454:	00 c0 d0 a1 	a1d0c000       memd (r16 + #0) = r1:0 }
    c458:	ee e0 ff 5c 	5cffe0ee     if !p0 jump c434 <_LXp_ldexpx+0x24>
    c45c:	8f 40 00 00 	0000408f     { immext (#9152)
    c460:	28 c0 0e 17 	170ec028       r0 = r22 ; jump e830 <__restore_r16_through_r23_and_deallocframe> }
    c464:	00 40 00 7f 	7f004000     { nop
    c468:	00 40 00 7f 	7f004000       nop
    c46c:	00 c0 00 7f 	7f00c000       nop }

0000c470 <_LXp_movx>:
    c470:	43 43 01 8c 	8c014343     { r3 = asl (r1, #3)
    c474:	01 40 62 70 	70624001       r1 = r2
    c478:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    c47c:	ea 4e ff 5b 	5bff4eea     { call 6250 <memcpy>
    c480:	08 30 32 30 	30323008       r2 = r3 ; r16 = r0 }
    c484:	00 40 70 70 	70704000     { r0 = r16
    c488:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    c48c:	00 c0 00 7f 	7f00c000     nop

0000c490 <_LXp_addh>:
    c490:	98 51 00 5a 	5a005198     { call e7c0 <__save_r16_through_r27>
    c494:	0c c0 9d a0 	a09dc00c       allocframe (#96) }
    c498:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    c49c:	02 c2 dd a1 	a1ddc202       memd (r29 + #16) = r3:2 }
    c4a0:	d7 45 1d b0 	b01d45d7     { r23 = add (r29, #46)
    c4a4:	0c 40 49 10 	1049400c       p0 = cmp.eq (r17, #0) ; if (!p0.new) jump:nt c4b8 <_LXp_addh+0x28>
    c4a8:	18 44 1d b0 	b01d4418       r24 = add (r29, #32)
    c4ac:	00 c0 00 7f 	7f00c000       nop }
    c4b0:	8e 40 00 00 	0000408e     { immext (#9088)
    c4b4:	20 c0 08 17 	1708c020       r0 = r16 ; jump e840 <__restore_r16_through_r27_and_deallocframe> }
    c4b8:	00 57 18 f5 	f5185700     { r1:0 = combine (r24, r23)
    c4bc:	64 7e ff 5b 	5bff7e64       call c180 <_LDunscale>
    c4c0:	04 c2 dd a1 	a1ddc204       memd (r29 + #32) = r3:2 }
    c4c4:	32 c0 c0 10 	10c0c032     p0 = cmp.gt (r0, #0) ; if (!p0.new) jump:nt c528 <_LXp_addh+0x98>
    c4c8:	28 42 00 10 	10004228     { p0 = cmp.eq (r0, #2) ; if (p0.new) jump:nt c518 <_LXp_addh+0x88>
    c4cc:	d4 4f 00 5a 	5a004fd4       call e470 <_LDtest>
    c4d0:	00 c0 70 70 	7070c000       r0 = r16 }
    c4d4:	22 c0 c0 10 	10c0c022     p0 = cmp.gt (r0, #0) ; if (!p0.new) jump:nt c518 <_LXp_addh+0x88>
    c4d8:	ec 42 30 10 	103042ec     { p0 = cmp.eq (r0, #2) ; if (p0.new) jump:nt c4b0 <_LXp_addh+0x20>
    c4dc:	61 c1 7d 91 	917dc161       r1 = memuh (r29 + #22) }
    c4e0:	00 42 00 00 	00004200     { immext (#32768)
    c4e4:	82 2b 00 48 	48002b82       r0 = ##32768 ; r2 = memuh (r16 + #6) }
    c4e8:	40 41 42 ef 	ef424140     { r0 &= xor (r2, r1)
    c4ec:	e4 c0 32 24 	2432c0e4       if (cmp.eq (r0.new, #0)) jump:nt c4b0 <_LXp_addh+0x20> }
    c4f0:	20 40 00 78 	78004020     { r0 = #1
    c4f4:	a0 d5 ff 5b 	5bffd5a0       call 7030 <_Feraise> }
    c4f8:	20 40 51 75 	75514020     { p0 = cmp.gt (r17, #1)
    c4fc:	6a 44 00 00 	0000446a       immext (#72320)
    c500:	02 c5 c0 49 	49c0c502       r3:2 = memd (gp + ##72360) }
    c504:	d6 60 ff 5c 	5cff60d6     { if !p0 jump c4b0 <_LXp_addh+0x20>
    c508:	c4 44 c0 49 	49c044c4       r5:4 = memd (gp + #304)
    c50c:	00 c2 d0 a1 	a1d0c200       memd (r16 + #0) = r3:2 }
    c510:	d0 7f ff 59 	59ff7fd0     { jump c4b0 <_LXp_addh+0x20>
    c514:	01 c4 d0 a1 	a1d0c401       memd (r16 + #8) = r5:4 }
    c518:	40 c0 dd 91 	91ddc040     r1:0 = memd (r29 + #16)
    c51c:	00 40 70 70 	70704000     { r0 = r16
    c520:	00 c0 d0 a1 	a1d0c000       memd (r16 + #0) = r1:0 }
    c524:	8e d1 00 58 	5800d18e     jump e840 <__restore_r16_through_r27_and_deallocframe>
    c528:	c4 e0 30 10 	1030e0c4     p0 = cmp.eq (r0, #0) ; if (p0.new) jump:t c4b0 <_LXp_addh+0x20>
    c52c:	c2 40 f9 10 	10f940c2     { p0 = cmp.gt (r17, #0) ; if (!p0.new) jump:nt c4b0 <_LXp_addh+0x20>
    c530:	95 33 0a 28 	280a3395       r18 = #0 ; r5 = add (r17, #-1) }
    c534:	19 40 04 78 	78044019     { r25 = #2048
    c538:	60 50 05 c4 	c4055060       r0 = addasl (r16, r5, #3)
    c53c:	9a 45 1d b0 	b01d459a       r26 = add (r29, #44)
    c540:	03 c5 9d a1 	a19dc503       memw (r29 + #12) = r5 }
    c544:	1b 43 1d b0 	b01d431b     { r27 = add (r29, #24)
    c548:	d4 44 c0 49 	49c044d4       r21:20 = memd (gp + #304)
    c54c:	02 c0 9d a1 	a19dc002       memw (r29 + #8) = r0 }
    c550:	00 5a 1b f5 	f51b5a00     { r1:0 = combine (r27, r26)
    c554:	53 43 12 8c 	8c124353       r19 = asl (r18, #3)
    c558:	82 f2 d0 3a 	3ad0f282       r3:2 = memd (r16 + r18 << #3) }
    c55c:	16 53 10 f3 	f3105316     { r22 = add (r16, r19)
    c560:	12 7e ff 5b 	5bff7e12       call c180 <_LDunscale>
    c564:	03 c2 dd a1 	a1ddc203       memd (r29 + #24) = r3:2 }
    c568:	a4 c0 b0 10 	10b0c0a4     p0 = cmp.gt (r0, #0) ; if (p0.new) jump:nt c4b0 <_LXp_addh+0x20>
    c56c:	42 40 10 10 	10104042     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt c7f0 <_LXp_addh+0x360>
    c570:	c2 42 5d 91 	915d42c2       r2 = memh (r29 + #44)
    c574:	e0 c2 5d 91 	915dc2e0       r0 = memh (r29 + #46) }
    c578:	00 c2 20 f3 	f320c200     r0 = sub (r2, r0)
    c57c:	c0 7c 60 75 	75607cc0     { p0 = cmp.gt (r0, #-26)
    c580:	54 48 00 5c 	5c004854       if (p0.new) jump:nt c624 <_LXp_addh+0x194>
    c584:	42 c0 dd 47 	47ddc042       if !p0.new r3:2 = memd (r29 + #16) }
    c588:	00 54 e2 d2 	d2e25400     { p0 = dfcmp.eq (r3:2, r21:20)
    c58c:	00 42 03 f5 	f5034200       r1:0 = combine (r3, r2)
    c590:	24 c0 12 b0 	b012c024       r4 = add (r18, #1) }
    c594:	01 40 92 74 	74924001     { if !p0 r1 = add (r18, #0)
    c598:	54 40 00 5c 	5c004054       if (p0) jump c63c <_LXp_addh+0x1ac>
    c59c:	80 d1 32 fb 	fb32d180       if !p0 r0 = sub (r17, r18) }
    c5a0:	64 50 04 c4 	c4045064     { r4 = addasl (r16, r4, #3)
    c5a4:	38 c9 94 14 	1494c938       p0 = cmp.gt (r4, r17) ; if (p0.new) jump:nt c810 <_LXp_addh+0x380> }
    c5a8:	00 40 00 08 	08004000     { immext (#2147483648)
    c5ac:	00 40 11 75 	75114000       p0 = cmp.eq (r17, ##-2147483648)
    c5b0:	34 e8 00 5c 	5c00e834       if (p0.new) jump:nt c810 <_LXp_addh+0x380> }
    c5b4:	18 c5 00 60 	6000c518     loop0 (c610 <_LXp_addh+0x180>, r0)
    c5b8:	20 80 01 b0 	b0018020     { r0 = add (r1, #1)
    c5bc:	00 c0 00 7f 	7f00c000       nop }:endloop0
    c5c0:	64 40 9d 91 	919d4064     { r4 = memw (r29 + #12)
    c5c4:	12 c0 d2 20 	20d2c012       if (!cmp.gt (r4.new, r0)) jump:nt c7e4 <_LXp_addh+0x354> }
    c5c8:	21 40 00 b0 	b0004021     { r1 = add (r0, #1)
    c5cc:	00 c0 00 7f 	7f00c000       nop }
    c5d0:	e0 7f e1 bf 	bfe17fe0     { r0 = add (r1, #-1)
    c5d4:	12 ca c1 14 	14c1ca12       p0 = cmp.gt (r1, r18) ; if (!p0.new) jump:nt c5f4 <_LXp_addh+0x164> }
    c5d8:	61 50 01 c4 	c4015061     { r1 = addasl (r16, r1, #3)
    c5dc:	32 c4 80 db 	db80c432       r4 = add (r0, sub (#1, r18)) }
    c5e0:	10 40 04 60 	60044010     { loop0 (c5e8 <_LXp_addh+0x158>, r4)
    c5e4:	60 d0 00 c4 	c400d060       r0 = addasl (r16, r0, #3) }
    c5e8:	e4 c1 c0 9b 	9bc0c1e4     r5:4 = memd (r0 ++ #-8)
    c5ec:	00 80 00 7f 	7f008000     { nop
    c5f0:	78 c4 c1 ab 	abc1c478       memd (r1 ++ #-8) = r5:4 }:endloop0
    c5f4:	02 40 79 70 	70794002     { r2 = r25
    c5f8:	c0 44 c0 49 	49c044c0       r1:0 = memd (gp + #304)
    c5fc:	02 d3 d0 3b 	3bd0d302       memd (r16 + r19 << #0) = r3:2 }
    c600:	02 c0 dd a1 	a1ddc002     memd (r29 + #16) = r1:0
    c604:	56 4a f9 14 	14f94a56     { p0 = cmp.gt (r17, r18) ; if (!p0.new) jump:nt c4b0 <_LXp_addh+0x20>
    c608:	a6 7f ff 59 	59ff7fa6       jump c550 <_LXp_addh+0xc0>
    c60c:	19 c0 62 70 	7062c019       r25 = r2 }
    c610:	26 c0 c4 9b 	9bc4c026     r7:6 = memd (r4 ++ #8)
    c614:	00 d4 e6 d2 	d2e6d400     p0 = dfcmp.eq (r7:6, r21:20)
    c618:	d4 60 df 5c 	5cdf60d4     { if (p0) jump c5c0 <_LXp_addh+0x130>
    c61c:	d0 7f ff 59 	59ff7fd0       jump c5b8 <_LXp_addh+0x128>
    c620:	01 c0 80 74 	7480c001       if !p0 r1 = add (r0, #0) }
    c624:	0c 59 c0 10 	10c0590c     { p0 = cmp.gt (r0, #25) ; if (!p0.new) jump:nt c63c <_LXp_addh+0x1ac>
    c628:	40 40 dd 47 	47dd4040       if !p0.new r1:0 = memd (r29 + #16)
    c62c:	40 c0 dd 43 	43ddc040       if (p0.new) r1:0 = memd (r29 + #16) }
    c630:	00 d4 e0 d2 	d2e0d400     p0 = dfcmp.eq (r1:0, r21:20)
    c634:	32 40 92 74 	74924032     { if !p0 r18 = add (r18, #1)
    c638:	e8 e0 ff 5c 	5cffe0e8       if !p0 jump c604 <_LXp_addh+0x174> }
    c63c:	42 52 00 5a 	5a005242     { call eac0 <__hexagon_adddf3>
    c640:	02 d3 d0 3a 	3ad0d302       r3:2 = memd (r16 + r19 << #0) }
    c644:	00 54 e0 d2 	d2e05400     { p0 = dfcmp.eq (r1:0, r21:20)
    c648:	02 40 01 f5 	f5014002       r3:2 = combine (r1, r0)
    c64c:	00 d3 d0 3b 	3bd0d300       memd (r16 + r19 << #0) = r1:0 }
    c650:	23 40 12 74 	74124023     { if (p0) r3 = add (r18, #1)
    c654:	2c 40 20 5c 	5c20402c       if !p0 jump c6a8 <_LXp_addh+0x218>
    c658:	02 40 16 74 	74164002       if (p0) r2 = add (r22, #0)
    c65c:	00 d1 32 f3 	f332d100       r0 = sub (r17, r18) }
    c660:	63 50 03 c4 	c4035063     { r3 = addasl (r16, r3, #3)
    c664:	d4 c9 83 14 	1483c9d4       p0 = cmp.gt (r3, r17) ; if (p0.new) jump:nt c808 <_LXp_addh+0x378> }
    c668:	00 40 00 08 	08004000     { immext (#2147483648)
    c66c:	00 40 11 75 	75114000       p0 = cmp.eq (r17, ##-2147483648)
    c670:	d0 c8 00 5c 	5c00c8d0       if (p0.new) jump:nt c808 <_LXp_addh+0x378> }
    c674:	01 c0 60 70 	7060c001     r1 = r0
    c678:	01 40 21 62 	62214001     { lc0 = r1
    c67c:	00 c0 21 72 	7221c000       r1.h = #0 }
    c680:	24 c7 e1 71 	71e1c724     r1.l = #50980
    c684:	00 c0 21 62 	6221c000     sa0 = r1
    c688:	00 80 00 7f 	7f008000     { nop
    c68c:	00 c0 00 7f 	7f00c000       nop }:endloop0
    c690:	c2 44 c0 49 	49c044c2     { r3:2 = memd (gp + #304)
    c694:	44 c0 9d 91 	919dc044       r4 = memw (r29 + #8) }
    c698:	00 c2 c4 a1 	a1c4c200     memd (r4 + #0) = r3:2
    c69c:	02 d3 d0 3a 	3ad0d302     r3:2 = memd (r16 + r19 << #0)
    c6a0:	00 d4 e2 d2 	d2e2d400     p0 = dfcmp.eq (r3:2, r21:20)
    c6a4:	06 e0 df 5c 	5cdfe006     if (p0) jump c4b0 <_LXp_addh+0x20>
    c6a8:	00 40 77 70 	70774000     { r0 = r23
    c6ac:	6c 7d ff 5b 	5bff7d6c       call c180 <_LDunscale>
    c6b0:	11 2a 41 6c 	6c412a11       r1 = add (sp, #16) ; memd (sp + #16) = r3:2 }
    c6b4:	c1 7c f9 bf 	bff97cc1     { r1 = add (r25, #-26)
    c6b8:	e0 c2 5d 91 	915dc2e0       r0 = memh (r29 + #46) }
    c6bc:	3e c1 80 14 	1480c13e     p0 = cmp.gt (r0, r1) ; if (p0.new) jump:nt c738 <_LXp_addh+0x2a8>
    c6c0:	32 40 12 b0 	b0124032     { r18 = add (r18, #1)
    c6c4:	00 5a 16 f5 	f5165a00       r1:0 = combine (r22, r26)
    c6c8:	f8 d1 24 20 	2024d1f8       if (cmp.eq (r18.new, r17)) jump:nt c4b0 <_LXp_addh+0x20> }
    c6cc:	02 d3 d0 3a 	3ad0d302     r3:2 = memd (r16 + r19 << #0)
    c6d0:	58 7d ff 5b 	5bff7d58     { call c180 <_LDunscale>
    c6d4:	02 c2 dd a1 	a1ddc202       memd (r29 + #16) = r3:2 }
    c6d8:	40 63 36 73 	73366340     { r1:0 = combine (#26, r22)
    c6dc:	dc cd 00 5a 	5a00cddc       call e290 <_LDint> }
    c6e0:	00 40 76 70 	70764000     { r0 = r22
    c6e4:	e8 79 ff 5b 	5bff79e8       call bab0 <_LDscale>
    c6e8:	c1 c2 5d 91 	915dc2c1       r1 = memh (r29 + #44) }
    c6ec:	3c 52 00 5a 	5a00523c     { call eb64 <__hexagon_subdf3>
    c6f0:	02 53 d0 3a 	3ad05302       r3:2 = memd (r16 + r19 << #0)
    c6f4:	40 c0 dd 91 	91ddc040       r1:0 = memd (r29 + #16) }
    c6f8:	04 40 01 f5 	f5014004     { r5:4 = combine (r1, r0)
    c6fc:	00 54 e0 d2 	d2e05400       p0 = dfcmp.eq (r1:0, r21:20)
    c700:	c2 42 5d 91 	915d42c2       r2 = memh (r29 + #44)
    c704:	02 c0 dd a1 	a1ddc002       memd (r29 + #16) = r1:0 }
    c708:	00 57 18 f5 	f5185700     { r1:0 = combine (r24, r23)
    c70c:	04 53 d0 30 	30d05304       if (p0) r5:4 = memd (r16 + r19 << #0)
    c710:	01 c2 9d a1 	a19dc201       memw (r29 + #4) = r2 }
    c714:	36 7d ff 5b 	5bff7d36     { call c180 <_LDunscale>
    c718:	04 c4 dd a1 	a1ddc404       memd (r29 + #32) = r5:4 }
    c71c:	74 7f ff 59 	59ff7f74     { jump c604 <_LXp_addh+0x174>
    c720:	22 c0 9d 91 	919dc022       r2 = memw (r29 + #4) }
    c724:	20 c0 c3 9b 	9bc3c020     r1:0 = memd (r3 ++ #8)
    c728:	00 54 e0 d2 	d2e05400     { p0 = dfcmp.eq (r1:0, r21:20)
    c72c:	08 c0 c2 ab 	abc2c008       memd (r2 ++ #8) = r1:0 }
    c730:	ac 60 ff 5c 	5cff60ac     { if !p0 jump c688 <_LXp_addh+0x1f8>
    c734:	b0 ff ff 59 	59ffffb0       jump c690 <_LXp_addh+0x200> }
    c738:	59 79 a0 db 	dba07959     { r25 = add (r0, sub (#26, r25))
    c73c:	00 c2 1d b0 	b01dc200       r0 = add (r29, #16) }
    c740:	01 40 f9 70 	70f94001     { r1 = sxth (r25)
    c744:	a8 cd 00 5a 	5a00cda8       call e290 <_LDint> }
    c748:	00 42 1d b0 	b01d4200     { r0 = add (r29, #16)
    c74c:	b4 79 ff 5b 	5bff79b4       call bab0 <_LDscale>
    c750:	e1 c2 5d 91 	915dc2e1       r1 = memh (r29 + #46) }
    c754:	08 52 00 5a 	5a005208     { call eb64 <__hexagon_subdf3>
    c758:	00 53 d0 3a 	3ad05300       r1:0 = memd (r16 + r19 << #0)
    c75c:	42 c0 dd 91 	91ddc042       r3:2 = memd (r29 + #16) }
    c760:	00 54 e0 d2 	d2e05400     { p0 = dfcmp.eq (r1:0, r21:20)
    c764:	22 40 12 b0 	b0124022       r2 = add (r18, #1)
    c768:	00 51 32 f3 	f3325100       r0 = sub (r17, r18)
    c76c:	00 d3 d0 3b 	3bd0d300       memd (r16 + r19 << #0) = r1:0 }
    c770:	1a c0 20 5c 	5c20c01a     if !p0 jump c7a4 <_LXp_addh+0x314>
    c774:	62 50 02 c4 	c4025062     { r2 = addasl (r16, r2, #3)
    c778:	4c c9 82 14 	1482c94c       p0 = cmp.gt (r2, r17) ; if (p0.new) jump:nt c80c <_LXp_addh+0x37c> }
    c77c:	00 40 00 08 	08004000     { immext (#2147483648)
    c780:	00 40 11 75 	75114000       p0 = cmp.eq (r17, ##-2147483648)
    c784:	48 c8 00 5c 	5c00c848       if (p0.new) jump:nt c80c <_LXp_addh+0x37c> }
    c788:	10 44 00 60 	60004410     { loop0 (c7d0 <_LXp_addh+0x340>, r0)
    c78c:	00 c0 00 7f 	7f00c000       nop }
    c790:	00 80 00 7f 	7f008000     { nop
    c794:	00 c0 00 7f 	7f00c000       nop }:endloop0
    c798:	c0 44 c0 49 	49c044c0     { r1:0 = memd (gp + #304)
    c79c:	42 c0 9d 91 	919dc042       r2 = memw (r29 + #8) }
    c7a0:	00 c0 c2 a1 	a1c2c000     memd (r2 + #0) = r1:0
    c7a4:	f2 ff f2 bf 	bff2fff2     r18 = add (r18, #-1)
    c7a8:	20 40 00 00 	00004020     { immext (#2048)
    c7ac:	19 60 00 7e 	7e006019       if (p0.new) r25 = ##2048
    c7b0:	d4 e0 2a 10 	102ae0d4       p0 = cmp.eq (r18, #0) ; if (p0.new) jump:t c550 <_LXp_addh+0xc0> }
    c7b4:	e2 7f f2 bf 	bff27fe2     { r2 = add (r18, #-1)
    c7b8:	00 da 18 f5 	f518da00       r1:0 = combine (r24, r26) }
    c7bc:	84 e2 d0 3a 	3ad0e284     r5:4 = memd (r16 + r2 << #3)
    c7c0:	e0 7c ff 5b 	5bff7ce0     { call c180 <_LDunscale>
    c7c4:	04 c4 dd a1 	a1ddc404       memd (r29 + #32) = r5:4 }
    c7c8:	1e 7f ff 59 	59ff7f1e     { jump c604 <_LXp_addh+0x174>
    c7cc:	c2 c2 5d 91 	915dc2c2       r2 = memh (r29 + #44) }
    c7d0:	20 c0 c2 9b 	9bc2c020     r1:0 = memd (r2 ++ #8)
    c7d4:	00 54 e0 d2 	d2e05400     { p0 = dfcmp.eq (r1:0, r21:20)
    c7d8:	08 c0 d6 ab 	abd6c008       memd (r22 ++ #8) = r1:0 }
    c7dc:	da 60 ff 5c 	5cff60da     { if !p0 jump c790 <_LXp_addh+0x300>
    c7e0:	de ff ff 59 	59ffffde       jump c798 <_LXp_addh+0x308> }
    c7e4:	00 51 00 f2 	f2005100     { p0 = cmp.eq (r0, r17)
    c7e8:	f6 7e ff 59 	59ff7ef6       jump c5d0 <_LXp_addh+0x140>
    c7ec:	01 e0 80 74 	7480e001       if !p0.new r1 = add (r0, #0) }
    c7f0:	12 3e aa 51 	51aa3e12     r18 = add (r18, #1) ; r5:4 = memd (sp + #16)
    c7f4:	5e 4a e9 14 	14e94a5e     { p0 = cmp.gt (r17, r18) ; if (!p0.new) jump:nt c4b0 <_LXp_addh+0x20>
    c7f8:	c0 44 c0 49 	49c044c0       r1:0 = memd (gp + #304)
    c7fc:	00 c4 d6 a1 	a1d6c400       memd (r22 + #0) = r5:4 }
    c800:	58 7e ff 59 	59ff7e58     { jump c4b0 <_LXp_addh+0x20>
    c804:	80 f2 d0 3b 	3bd0f280       memd (r16 + r18 << #3) = r1:0 }
    c808:	36 c1 30 16 	1630c136     r0 = #1 ; jump c674 <_LXp_addh+0x1e4>
    c80c:	be c1 30 16 	1630c1be     r0 = #1 ; jump c788 <_LXp_addh+0x2f8>
    c810:	d2 c1 20 16 	1620c1d2     r0 = #1 ; jump c5b4 <_LXp_addh+0x124>
    c814:	00 40 00 7f 	7f004000     { nop
    c818:	00 40 00 7f 	7f004000       nop
    c81c:	00 c0 00 7f 	7f00c000       nop }

0000c820 <_LXp_subx>:
    c820:	e0 4f 00 5a 	5a004fe0     { call e7e0 <__save_r16_through_r25>
    c824:	05 c0 9d a0 	a09dc005       allocframe (#40) }
    c828:	14 40 03 f5 	f5034014     { r21:20 = combine (r3, r0)
    c82c:	16 c0 61 70 	7061c016       r22 = r1 }
    c830:	22 40 cd 10 	10cd4022     { p0 = cmp.gt (r21, #0) ; if (!p0.new) jump:nt c874 <_LXp_subx+0x54>
    c834:	04 40 c2 43 	43c24004       if (p0.new) r5:4 = memd (r2 + #0)
    c838:	d8 c4 c0 49 	49c0c4d8       r25:24 = memd (gp + #304) }
    c83c:	00 58 e4 d2 	d2e45800     { p0 = dfcmp.eq (r5:4, r25:24)
    c840:	11 41 02 b0 	b0024111       r17 = add (r2, #8)
    c844:	10 c0 00 78 	7800c010       r16 = #0 }
    c848:	16 40 00 5c 	5c004016     { if (p0) jump c874 <_LXp_subx+0x54>
    c84c:	08 c0 00 58 	5800c008       jump c858 <_LXp_subx+0x38> }
    c850:	00 d8 e4 d2 	d2e4d800     p0 = dfcmp.eq (r5:4, r25:24)
    c854:	10 c0 00 5c 	5c00c010     if (p0) jump c874 <_LXp_subx+0x54>
    c858:	53 5f c5 8c 	8cc55f53     { r19 = togglebit (r5, #31)
    c85c:	00 54 16 f5 	f5165400       r1:0 = combine (r22, r20)
    c860:	88 31 4a 30 	304a3188       r18 = r4 ; r16 = add (r16, #1) }
    c864:	02 52 13 f5 	f5135202     { r3:2 = combine (r19, r18)
    c868:	16 fe ff 5b 	5bfffe16       call c490 <_LXp_addh> }
    c86c:	f2 68 bd 14 	14bd68f2     { p0 = cmp.gt (r21, r16) ; if (p0.new) jump:t c850 <_LXp_subx+0x30>
    c870:	24 f0 d1 9b 	9bd1f024       if (p0.new) r5:4 = memd (r17 ++ #8) }
    c874:	7f 40 00 00 	0000407f     { immext (#8128)
    c878:	20 c0 0c 17 	170cc020       r0 = r20 ; jump e844 <__restore_r16_through_r25_and_deallocframe> }
    c87c:	00 c0 00 7f 	7f00c000     nop

0000c880 <_LXp_addx>:
    c880:	a4 4f 00 5a 	5a004fa4     { call e7c8 <__save_r16_through_r23>
    c884:	04 c0 9d a0 	a09dc004       allocframe (#32) }
    c888:	12 40 03 f5 	f5034012     { r19:18 = combine (r3, r0)
    c88c:	29 30 1c 30 	301c3029       r20 = r1 ; r17 = r2 }
    c890:	1c 40 cb 10 	10cb401c     { p0 = cmp.gt (r19, #0) ; if (!p0.new) jump:nt c8c8 <_LXp_addx+0x48>
    c894:	02 40 c2 43 	43c24002       if (p0.new) r3:2 = memd (r2 + #0)
    c898:	d6 c4 c0 49 	49c0c4d6       r23:22 = memd (gp + #304) }
    c89c:	00 d6 e2 d2 	d2e2d600     p0 = dfcmp.eq (r3:2, r23:22)
    c8a0:	14 40 00 5c 	5c004014     { if (p0) jump c8c8 <_LXp_addx+0x48>
    c8a4:	0a 40 08 16 	1608400a       r16 = #0 ; jump c8b4 <_LXp_addx+0x34>
    c8a8:	11 c1 91 74 	7491c111       if !p0 r17 = add (r17, #8) }
    c8ac:	00 d6 e2 d2 	d2e2d600     p0 = dfcmp.eq (r3:2, r23:22)
    c8b0:	0c c0 00 5c 	5c00c00c     if (p0) jump c8c8 <_LXp_addx+0x48>
    c8b4:	00 52 14 f5 	f5145200     { r1:0 = combine (r20, r18)
    c8b8:	ee 7d ff 5b 	5bff7dee       call c490 <_LXp_addh>
    c8bc:	30 c0 10 b0 	b010c030       r16 = add (r16, #1) }
    c8c0:	f6 68 bb 14 	14bb68f6     { p0 = cmp.gt (r19, r16) ; if (p0.new) jump:t c8ac <_LXp_addx+0x2c>
    c8c4:	22 f0 d1 9b 	9bd1f022       if (p0.new) r3:2 = memd (r17 ++ #8) }
    c8c8:	7d 40 00 00 	0000407d     { immext (#8000)
    c8cc:	50 c0 0a 17 	170ac050       r0 = r18 ; jump e830 <__restore_r16_through_r23_and_deallocframe> }

0000c8d0 <_LXp_mulh>:
    c8d0:	00 40 41 75 	75414000     { p0 = cmp.gt (r1, #0)
    c8d4:	78 4f 00 5a 	5a004f78       call e7c0 <__save_r16_through_r27>
    c8d8:	0d c0 9d a0 	a09dc00d       allocframe (#104) }
    c8dc:	15 40 61 70 	70614015     { r21 = r1
    c8e0:	2c 40 20 5c 	5c20402c       if !p0 jump c934 <_LXp_mulh+0x64>
    c8e4:	1a 40 60 70 	7060401a       r26 = r0
    c8e8:	18 c2 03 f5 	f503c218       r25:24 = combine (r3, r2) }
    c8ec:	1b 41 1d b0 	b01d411b     { r27 = add (r29, #8)
    c8f0:	7a 53 00 5a 	5a00537a       call efe0 <__hexagon_muldf3>
    c8f4:	00 c0 c0 91 	91c0c000       r1:0 = memd (r0 + #0) }
    c8f8:	00 40 7b 70 	707b4000     { r0 = r27
    c8fc:	bc 4d 00 5a 	5a004dbc       call e470 <_LDtest>
    c900:	01 c0 dd a1 	a1ddc001       memd (r29 + #8) = r1:0 }
    c904:	10 40 60 70 	70604010     { r16 = r0
    c908:	1c 41 c0 11 	11c0411c       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt c93c <_LXp_mulh+0x6c>
    c90c:	80 c0 dd 39 	39ddc080       if !p0.new memw (r29 + #4) = #0 }
    c910:	20 40 00 78 	78004020     { r0 = #1
    c914:	aa c2 00 10 	1000c2aa       p0 = cmp.eq (r0, #2) ; if (p0.new) jump:nt ca64 <_LXp_mulh+0x194> }
    c918:	00 40 50 75 	75504000     { p0 = cmp.gt (r16, #0)
    c91c:	20 c0 dd 91 	91ddc020       r1:0 = memd (r29 + #8) }
    c920:	0a 40 20 5c 	5c20400a     { if !p0 jump c934 <_LXp_mulh+0x64>
    c924:	00 c0 da a1 	a1dac000       memd (r26 + #0) = r1:0 }
    c928:	06 41 cd 10 	10cd4106     { p0 = cmp.gt (r21, #1) ; if (!p0.new) jump:nt c934 <_LXp_mulh+0x64>
    c92c:	c0 c4 c0 49 	49c0c4c0       r1:0 = memd (gp + #304) }
    c930:	01 c0 da a1 	a1dac001     memd (r26 + #8) = r1:0
    c934:	00 40 7a 70 	707a4000     { r0 = r26
    c938:	86 cf 00 58 	5800cf86       jump e840 <__restore_r16_through_r27_and_deallocframe> }
    c93c:	30 40 00 78 	78004030     { r16 = #1
    c940:	c0 c4 c0 49 	49c0c4c0       r1:0 = memd (gp + #304) }
    c944:	16 40 01 f5 	f5014016     { r23:22 = combine (r1, r0)
    c948:	00 40 00 7f 	7f004000       nop
    c94c:	00 c0 da a1 	a1dac000       memd (r26 + #0) = r1:0 }
    c950:	38 43 88 10 	10884338     { p0 = cmp.gt (r16, #3) ; if (p0.new) jump:nt c9c0 <_LXp_mulh+0xf0>
    c954:	31 c0 9d 91 	919dc031       r17 = memw (r29 + #4) }
    c958:	11 d0 11 f3 	f311d011     r17 = add (r17, r16)
    c95c:	74 5a 11 c4 	c4115a74     { r20 = addasl (r26, r17, #3)
    c960:	7e 49 cd 14 	14cd497e       p0 = cmp.gt (r21, r17) ; if (!p0.new) jump:nt ca58 <_LXp_mulh+0x188>
    c964:	82 f1 da 32 	32daf182       if (p0.new) r3:2 = memd (r26 + r17 << #3) }
    c968:	00 d6 e2 d2 	d2e2d600     p0 = dfcmp.eq (r3:2, r23:22)
    c96c:	72 5b 10 c4 	c4105b72     { r18 = addasl (r27, r16, #3)
    c970:	76 40 00 5c 	5c004076       if (p0) jump ca58 <_LXp_mulh+0x188>
    c974:	31 c0 91 74 	7491c031       if !p0 r17 = add (r17, #1) }
    c978:	73 5a 11 c4 	c4115a73     { r19 = addasl (r26, r17, #3)
    c97c:	0c c0 00 58 	5800c00c       jump c990 <_LXp_mulh+0xc0> }
    c980:	6c 41 20 5c 	5c20416c     { if !p1 jump ca58 <_LXp_mulh+0x188>
    c984:	22 e2 d3 9b 	9bd3e222       if (p1) r3:2 = memd (r19 ++ #8) }
    c988:	00 d6 e2 d2 	d2e2d600     p0 = dfcmp.eq (r3:2, r23:22)
    c98c:	66 c0 00 5c 	5c00c066     if (p0) jump ca58 <_LXp_mulh+0x188>
    c990:	00 58 19 f5 	f5195800     { r1:0 = combine (r25, r24)
    c994:	28 53 00 5a 	5a005328       call efe0 <__hexagon_muldf3>
    c998:	30 c0 10 b0 	b010c030       r16 = add (r16, #1) }
    c99c:	60 40 50 75 	75504060     { p0 = cmp.gt (r16, #3)
    c9a0:	01 51 55 f2 	f2555101       p1 = cmp.gt (r21, r17)
    c9a4:	c0 44 c0 49 	49c044c0       r1:0 = memd (gp + #304)
    c9a8:	00 c0 d2 a1 	a1d2c000       memd (r18 + #0) = r1:0 }
    c9ac:	31 40 11 b0 	b0114031     { r17 = add (r17, #1)
    c9b0:	12 41 12 b0 	b0124112       r18 = add (r18, #8)
    c9b4:	14 40 73 70 	70734014       r20 = r19
    c9b8:	00 c0 d4 a1 	a1d4c000       memd (r20 + #0) = r1:0 }
    c9bc:	e2 e0 ff 5c 	5cffe0e2     if !p0 jump c980 <_LXp_mulh+0xb0>
    c9c0:	02 c0 db 91 	91dbc002     r3:2 = memd (r27 + #0)
    c9c4:	00 56 e2 d2 	d2e25600     { p0 = dfcmp.eq (r3:2, r23:22)
    c9c8:	01 45 1d b0 	b01d4501       r1 = add (r29, #40)
    c9cc:	c0 c6 1d b0 	b01dc6c0       r0 = add (r29, #54) }
    c9d0:	b2 60 df 5c 	5cdf60b2     { if (p0) jump c934 <_LXp_mulh+0x64>
    c9d4:	d8 7b ff 5b 	5bff7bd8       call c180 <_LDunscale>
    c9d8:	28 c2 dd 44 	44ddc228       if !p0 memd (r29 + #40) = r3:2 }
    c9dc:	5a 4c 00 5a 	5a004c5a     { call e290 <_LDint>
    c9e0:	a0 2c a1 29 	29a12ca0       r1 = #26 ; r0 = add (sp, #40) }
    c9e4:	00 45 1d b0 	b01d4500     { r0 = add (r29, #40)
    c9e8:	66 78 ff 5b 	5bff7866       call bab0 <_LDscale>
    c9ec:	61 c3 5d 91 	915dc361       r1 = memh (r29 + #54) }
    c9f0:	00 5a 15 f5 	f5155a00     { r1:0 = combine (r21, r26)
    c9f4:	50 7d ff 5b 	5bff7d50       call c490 <_LXp_addh>
    c9f8:	a2 c0 dd 91 	91ddc0a2       r3:2 = memd (r29 + #40) }
    c9fc:	b4 50 00 5a 	5a0050b4     { call eb64 <__hexagon_subdf3>
    ca00:	a2 40 dd 91 	91dd40a2       r3:2 = memd (r29 + #40)
    ca04:	00 c0 db 91 	91dbc000       r1:0 = memd (r27 + #0) }
    ca08:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    ca0c:	44 7d ff 5b 	5bff7d44       call c490 <_LXp_addh>
    ca10:	00 da 15 f5 	f515da00       r1:0 = combine (r21, r26) }
    ca14:	00 40 50 75 	75504000     { p0 = cmp.gt (r16, #0)
    ca18:	02 40 7b 70 	707b4002       r2 = r27
    ca1c:	80 30 43 2c 	2c433080       r3 = add (sp, #16) ; r0 = r16 }
    ca20:	20 c0 80 7e 	7e80c020     if !p0 r0 = #1
    ca24:	00 c1 00 60 	6000c100     loop0 (ca34 <_LXp_mulh+0x164>, r0)
    ca28:	00 80 00 7f 	7f008000     { nop
    ca2c:	00 c0 00 7f 	7f00c000       nop }:endloop0
    ca30:	0a c0 00 58 	5800c00a     jump ca44 <_LXp_mulh+0x174>
    ca34:	20 c0 c3 9b 	9bc3c020     r1:0 = memd (r3 ++ #8)
    ca38:	00 56 e0 d2 	d2e05600     { p0 = dfcmp.eq (r1:0, r23:22)
    ca3c:	08 c0 c2 ab 	abc2c008       memd (r2 ++ #8) = r1:0 }
    ca40:	f4 e0 ff 5c 	5cffe0f4     if !p0 jump ca28 <_LXp_mulh+0x158>
    ca44:	81 c0 5d 3f 	3f5dc081     memw (r29 + #4) += #1
    ca48:	20 c0 9d 91 	919dc020     r0 = memw (r29 + #4)
    ca4c:	74 40 fd 14 	14fd4074     { p0 = cmp.gt (r21, r0) ; if (!p0.new) jump:nt c934 <_LXp_mulh+0x64>
    ca50:	82 7f ff 59 	59ff7f82       jump c950 <_LXp_mulh+0x80>
    ca54:	f0 ff 10 74 	7410fff0       if (p0.new) r16 = add (r16, #-1) }
    ca58:	c0 c4 c0 49 	49c0c4c0     r1:0 = memd (gp + #304)
    ca5c:	b2 48 38 16 	163848b2     { r16 = #8 ; jump c9c0 <_LXp_mulh+0xf0>
    ca60:	80 f0 db 3b 	3bdbf080       memd (r27 + r16 << #3) = r1:0 }
    ca64:	e6 d2 ff 5b 	5bffd2e6     call 7030 <_Feraise>
    ca68:	58 ff ff 59 	59ffff58     jump c918 <_LXp_mulh+0x48>
    ca6c:	00 c0 00 7f 	7f00c000     nop

0000ca70 <_LXp_mulx>:
    ca70:	b8 4e 00 5a 	5a004eb8     { call e7e0 <__save_r16_through_r25>
    ca74:	05 c0 9d a0 	a09dc005       allocframe (#40) }
    ca78:	10 40 03 f5 	f5034010     { r17:16 = combine (r3, r0)
    ca7c:	4f 30 2a 30 	302a304f       r18 = r2 ; r23 = r4 }
    ca80:	13 40 61 70 	70614013     { r19 = r1
    ca84:	0a c0 09 10 	1009c00a       p0 = cmp.eq (r17, #0) ; if (p0.new) jump:nt ca94 <_LXp_mulx+0x24> }
    ca88:	0a 40 41 10 	1041400a     { p0 = cmp.eq (r1, #0) ; if (!p0.new) jump:nt ca9c <_LXp_mulx+0x2c>
    ca8c:	02 40 c2 47 	47c24002       if !p0.new r3:2 = memd (r2 + #0)
    ca90:	d8 c4 c0 49 	49c0c4d8       r25:24 = memd (gp + #304) }
    ca94:	76 40 00 00 	00004076     { immext (#7552)
    ca98:	60 c0 08 17 	1708c060       r0 = r16 ; jump e844 <__restore_r16_through_r25_and_deallocframe> }
    ca9c:	00 d8 e2 d2 	d2e2d800     p0 = dfcmp.eq (r3:2, r25:24)
    caa0:	16 41 12 b0 	b0124116     { r22 = add (r18, #8)
    caa4:	10 40 00 5c 	5c004010       if (p0) jump cac0 <_LXp_mulx+0x50>
    caa8:	24 c0 d2 45 	45d2c024       if !p0 r5:4 = memd (r18 + #8) }
    caac:	00 d8 e4 d2 	d2e4d800     p0 = dfcmp.eq (r5:4, r25:24)
    cab0:	74 57 01 c4 	c4015774     { r20 = addasl (r23, r1, #3)
    cab4:	10 40 20 5c 	5c204010       if !p0 jump cad0 <_LXp_mulx+0x60>
    cab8:	02 40 90 74 	74904002       if !p0 r2 = add (r16, #0)
    cabc:	00 c0 77 70 	7077c000       r0 = r23 }
    cac0:	00 50 13 f5 	f5135000     { r1:0 = combine (r19, r16)
    cac4:	08 ff ff 5b 	5bffff08       call c8d0 <_LXp_mulh> }
    cac8:	75 40 00 00 	00004075     { immext (#7488)
    cacc:	78 c0 08 17 	1708c078       r0 = r16 ; jump e844 <__restore_r16_through_r25_and_deallocframe> }
    cad0:	d0 fc ff 5b 	5bfffcd0     call c470 <_LXp_movx>
    cad4:	00 50 13 f5 	f5135000     { r1:0 = combine (r19, r16)
    cad8:	fe 7e ff 5b 	5bff7efe       call c8d0 <_LXp_mulh>
    cadc:	02 c0 d2 91 	91d2c002       r3:2 = memd (r18 + #0) }
    cae0:	da 41 f9 10 	10f941da     { p0 = cmp.gt (r17, #1) ; if (!p0.new) jump:nt ca94 <_LXp_mulx+0x24>
    cae4:	20 c0 d2 43 	43d2c020       if (p0.new) r1:0 = memd (r18 + #8) }
    cae8:	00 d8 e0 d2 	d2e0d800     p0 = dfcmp.eq (r1:0, r25:24)
    caec:	d4 60 df 5c 	5cdf60d4     { if (p0) jump ca94 <_LXp_mulx+0x24>
    caf0:	0a 41 0d 16 	160d410a       r21 = #1 ; jump cb00 <_LXp_mulx+0x90>
    caf4:	12 c2 92 74 	7492c212       if !p0 r18 = add (r18, #16) }
    caf8:	00 d8 e0 d2 	d2e0d800     p0 = dfcmp.eq (r1:0, r25:24)
    cafc:	cc e0 df 5c 	5cdfe0cc     if (p0) jump ca94 <_LXp_mulx+0x24>
    cb00:	00 54 13 f5 	f5135400     { r1:0 = combine (r19, r20)
    cb04:	b8 7c ff 5b 	5bff7cb8       call c470 <_LXp_movx>
    cb08:	dd 31 f2 30 	30f231dd       r2 = r23 ; r21 = add (r21, #1) }
    cb0c:	00 54 13 f5 	f5135400     { r1:0 = combine (r19, r20)
    cb10:	e2 7e ff 5b 	5bff7ee2       call c8d0 <_LXp_mulh>
    cb14:	16 40 72 70 	70724016       r22 = r18
    cb18:	02 c0 d6 91 	91d6c002       r3:2 = memd (r22 + #0) }
    cb1c:	00 50 13 f5 	f5135000     { r1:0 = combine (r19, r16)
    cb20:	b2 7e ff 5b 	5bff7eb2       call c880 <_LXp_addx>
    cb24:	02 d4 13 f5 	f513d402       r3:2 = combine (r19, r20) }
    cb28:	e8 6d b9 14 	14b96de8     { p0 = cmp.gt (r17, r21) ; if (p0.new) jump:t caf8 <_LXp_mulx+0x88>
    cb2c:	b6 7f ff 59 	59ff7fb6       jump ca94 <_LXp_mulx+0x24>
    cb30:	20 f0 d2 9b 	9bd2f020       if (p0.new) r1:0 = memd (r18 ++ #8) }
    cb34:	00 40 00 7f 	7f004000     { nop
    cb38:	00 40 00 7f 	7f004000       nop
    cb3c:	00 c0 00 7f 	7f00c000       nop }

0000cb40 <_LXp_setw>:
    cb40:	44 4e 00 5a 	5a004e44     { call e7c8 <__save_r16_through_r23>
    cb44:	06 c0 9d a0 	a09dc006       allocframe (#48) }
    cb48:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    cb4c:	14 c2 03 f5 	f503c214       r21:20 = combine (r3, r2) }
    cb50:	1a 40 c9 10 	10c9401a     { p0 = cmp.gt (r17, #0) ; if (!p0.new) jump:nt cb84 <_LXp_setw+0x44>
    cb54:	00 c2 dd 42 	42ddc200       if (p0.new) memd (r29 + #0) = r3:2 }
    cb58:	d2 41 1d b0 	b01d41d2     { r18 = add (r29, #14)
    cb5c:	1a c1 09 10 	1009c11a       p0 = cmp.eq (r17, #1) ; if (p0.new) jump:nt cb8c <_LXp_setw+0x4c> }
    cb60:	00 52 1d f5 	f51d5200     { r1:0 = combine (r29, r18)
    cb64:	10 fb ff 5b 	5bfffb10       call c180 <_LDunscale> }
    cb68:	12 40 00 10 	10004012     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt cb8c <_LXp_setw+0x4c>
    cb6c:	14 c0 dd 43 	43ddc014       if (p0.new) r21:20 = memd (r29 + #0) }
    cb70:	14 40 c0 10 	10c04014     { p0 = cmp.gt (r0, #0) ; if (!p0.new) jump:nt cb98 <_LXp_setw+0x58>
    cb74:	00 3e 8b 50 	508b3e00       r19 = r16 ; r1:0 = memd (sp + #0) }
    cb78:	c0 44 c0 49 	49c044c0     { r1:0 = memd (gp + #304)
    cb7c:	00 c0 d0 a1 	a1d0c000       memd (r16 + #0) = r1:0 }
    cb80:	01 c0 d0 a1 	a1d0c001     memd (r16 + #8) = r1:0
    cb84:	72 40 00 00 	00004072     { immext (#7296)
    cb88:	58 c0 08 17 	1708c058       r0 = r16 ; jump e830 <__restore_r16_through_r23_and_deallocframe> }
    cb8c:	00 40 70 70 	70704000     { r0 = r16
    cb90:	00 d4 d0 a1 	a1d0d400       memd (r16 + #0) = r21:20 }
    cb94:	4e ce 00 58 	5800ce4e     jump e830 <__restore_r16_through_r23_and_deallocframe>
    cb98:	40 63 3d 73 	733d6340     { r1:0 = combine (#26, r29)
    cb9c:	7c cb 00 5a 	5a00cb7c       call e290 <_LDint> }
    cba0:	00 40 7d 70 	707d4000     { r0 = r29
    cba4:	88 77 ff 5b 	5bff7788       call bab0 <_LDscale>
    cba8:	e1 c0 5d 91 	915dc0e1       r1 = memh (r29 + #14) }
    cbac:	00 54 15 f5 	f5155400     { r1:0 = combine (r21, r20)
    cbb0:	02 c0 dd 91 	91ddc002       r3:2 = memd (r29 + #0) }
    cbb4:	d8 4f 00 5a 	5a004fd8     { call eb64 <__hexagon_subdf3>
    cbb8:	08 c2 d3 ab 	abd3c208       memd (r19 ++ #8) = r3:2 }
    cbbc:	16 40 01 f5 	f5014016     { r23:22 = combine (r1, r0)
    cbc0:	e4 42 39 10 	103942e4       p0 = cmp.eq (r17, #2) ; if (p0.new) jump:nt cb84 <_LXp_setw+0x44>
    cbc4:	01 c0 d0 a1 	a1d0c001       memd (r16 + #8) = r1:0 }
    cbc8:	d4 c4 c0 49 	49c0c4d4     r21:20 = memd (gp + #304)
    cbcc:	00 d4 e0 d2 	d2e0d400     p0 = dfcmp.eq (r1:0, r21:20)
    cbd0:	da 60 df 5c 	5cdf60da     { if (p0) jump cb84 <_LXp_setw+0x44>
    cbd4:	d8 7a ff 5b 	5bff7ad8       call c180 <_LDunscale>
    cbd8:	00 52 13 f5 	f5135200       r1:0 = combine (r19, r18)
    cbdc:	10 d4 d0 40 	40d0d410       if (p0) memd (r16 + #16) = r21:20 }
    cbe0:	40 63 33 73 	73336340     { r1:0 = combine (#26, r19)
    cbe4:	58 cb 00 5a 	5a00cb58       call e290 <_LDint> }
    cbe8:	00 40 73 70 	70734000     { r0 = r19
    cbec:	64 77 ff 5b 	5bff7764       call bab0 <_LDscale>
    cbf0:	e1 c0 5d 91 	915dc0e1       r1 = memh (r29 + #14) }
    cbf4:	00 56 17 f5 	f5175600     { r1:0 = combine (r23, r22)
    cbf8:	b8 4f 00 5a 	5a004fb8       call eb64 <__hexagon_subdf3>
    cbfc:	22 c0 d0 91 	91d0c022       r3:2 = memd (r16 + #8) }
    cc00:	c2 43 39 10 	103943c2     { p0 = cmp.eq (r17, #3) ; if (p0.new) jump:nt cb84 <_LXp_setw+0x44>
    cc04:	02 c0 d0 a1 	a1d0c002       memd (r16 + #16) = r1:0 }
    cc08:	00 d4 e0 d2 	d2e0d400     p0 = dfcmp.eq (r1:0, r21:20)
    cc0c:	bc 7f ff 59 	59ff7fbc     { jump cb84 <_LXp_setw+0x44>
    cc10:	18 d4 d0 44 	44d0d418       if !p0 memd (r16 + #24) = r21:20 }
    cc14:	00 40 00 7f 	7f004000     { nop
    cc18:	00 40 00 7f 	7f004000       nop
    cc1c:	00 c0 00 7f 	7f00c000       nop }

0000cc20 <_LXp_sqrtx>:
    cc20:	e4 4d 00 5a 	5a004de4     { call e7e8 <__save_r16_through_r21>
    cc24:	03 c0 9d a0 	a09dc003       allocframe (#24) }
    cc28:	10 41 02 f5 	f5024110     { r17:16 = combine (r2, r1)
    cc2c:	12 c0 60 70 	7060c012       r18 = r0 }
    cc30:	06 c0 48 10 	1048c006     p0 = cmp.eq (r16, #0) ; if (!p0.new) jump:nt cc3c <_LXp_sqrtx+0x1c>
    cc34:	70 40 00 00 	00004070     { immext (#7168)
    cc38:	38 c0 0a 17 	170ac038       r0 = r18 ; jump e850 <__restore_r16_through_r21_and_deallocframe> }
    cc3c:	1a cc 00 5a 	5a00cc1a     call e470 <_LDtest>
    cc40:	16 41 c0 11 	11c04116     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt cc6c <_LXp_sqrtx+0x4c>
    cc44:	c0 44 c0 49 	49c044c0       r1:0 = memd (gp + #304)
    cc48:	02 c0 d2 43 	43d2c002       if (p0.new) r3:2 = memd (r18 + #0) }
    cc4c:	20 c2 e0 d2 	d2e0c220     p0 = dfcmp.gt (r1:0, r3:2)
    cc50:	f2 e0 ff 5c 	5cffe0f2     if !p0 jump cc34 <_LXp_sqrtx+0x14>
    cc54:	20 40 00 78 	78004020     { r0 = #1
    cc58:	ee d1 ff 5b 	5bffd1ee       call 7030 <_Feraise> }
    cc5c:	6a 44 00 00 	0000446a     { immext (#72320)
    cc60:	00 c5 c0 49 	49c0c500       r1:0 = memd (gp + ##72360) }
    cc64:	e8 7f ff 59 	59ff7fe8     { jump cc34 <_LXp_sqrtx+0x14>
    cc68:	00 c0 d2 a1 	a1d2c000       memd (r18 + #0) = r1:0 }
    cc6c:	00 40 d2 91 	91d24000     { r1:0 = memd (r18 + #0)
    cc70:	c2 c4 c0 49 	49c0c4c2       r3:2 = memd (gp + #304) }
    cc74:	20 40 e2 d2 	d2e24020     { p0 = dfcmp.gt (r3:2, r1:0)
    cc78:	73 d1 10 c4 	c410d173       r19 = addasl (r17, r16, #3) }
    cc7c:	ec e0 df 5c 	5cdfe0ec     if (p0) jump cc54 <_LXp_sqrtx+0x34>
    cc80:	94 51 10 c4 	c4105194     { r20 = addasl (r17, r16, #4)
    cc84:	54 41 c8 10 	10c84154       p0 = cmp.gt (r16, #1) ; if (!p0.new) jump:nt cd28 <_LXp_sqrtx+0x108>
    cc88:	22 c0 d2 43 	43d2c022       if (p0.new) r3:2 = memd (r18 + #8) }
    cc8c:	1a cf 00 5a 	5a00cf1a     call eac0 <__hexagon_adddf3>
    cc90:	c0 c8 00 5a 	5a00c8c0     call de10 <sqrtl>
    cc94:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    cc98:	56 50 00 5a 	5a005056       call ed40 <__hexagon_divdf3>
    cc9c:	80 c4 c0 49 	49c0c480       r1:0 = memd (gp + #288) }
    cca0:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    cca4:	50 7f ff 5b 	5bff7f50       call cb40 <_LXp_setw>
    cca8:	00 d3 10 f5 	f510d300       r1:0 = combine (r16, r19) }
    ccac:	55 40 00 78 	78004055     { r21 = #2
    ccb0:	32 c2 c8 10 	10c8c232       p0 = cmp.gt (r16, #2) ; if (!p0.new) jump:nt cd10 <_LXp_sqrtx+0xf0> }
    ccb4:	00 51 10 f5 	f5105100     { r1:0 = combine (r16, r17)
    ccb8:	de 7b ff 5b 	5bff7bde       call c470 <_LXp_movx>
    ccbc:	dd 38 b2 30 	30b238dd       r2 = r19 ; r21 = add (r21, r21) }
    ccc0:	00 51 10 f5 	f5105100     { r1:0 = combine (r16, r17)
    ccc4:	08 7e ff 5b 	5bff7e08       call c8d0 <_LXp_mulh>
    ccc8:	62 c4 c0 49 	49c0c462       r3:2 = memd (gp + #280) }
    cccc:	00 51 10 f5 	f5105100     { r1:0 = combine (r16, r17)
    ccd0:	d2 7e ff 5b 	5bff7ed2       call ca70 <_LXp_mulx>
    ccd4:	02 52 10 f5 	f5105202       r3:2 = combine (r16, r18)
    ccd8:	04 c0 74 70 	7074c004       r4 = r20 }
    ccdc:	04 40 74 70 	70744004     { r4 = r20
    cce0:	ca 7e ff 5b 	5bff7eca       call ca70 <_LXp_mulx>
    cce4:	00 51 10 f5 	f5105100       r1:0 = combine (r16, r17)
    cce8:	02 d3 10 f5 	f510d302       r3:2 = combine (r16, r19) }
    ccec:	00 51 10 f5 	f5105100     { r1:0 = combine (r16, r17)
    ccf0:	d2 7b ff 5b 	5bff7bd2       call c490 <_LXp_addh>
    ccf4:	22 cd c0 49 	49c0cd22       r3:2 = memd (gp + #840) }
    ccf8:	00 53 10 f5 	f5105300     { r1:0 = combine (r16, r19)
    ccfc:	bc 7e ff 5b 	5bff7ebc       call ca70 <_LXp_mulx>
    cd00:	02 51 10 f5 	f5105102       r3:2 = combine (r16, r17)
    cd04:	04 c0 74 70 	7074c004       r4 = r20 }
    cd08:	d6 6d b8 14 	14b86dd6     { p0 = cmp.gt (r16, r21) ; if (p0.new) jump:t ccb4 <_LXp_sqrtx+0x94>
    cd0c:	00 c0 00 7f 	7f00c000       nop }
    cd10:	02 40 73 70 	70734002     { r2 = r19
    cd14:	04 40 74 70 	70744004       r4 = r20
    cd18:	a0 30 81 30 	308130a0       r1 = r16 ; r0 = r18 }
    cd1c:	03 40 70 70 	70704003     { r3 = r16
    cd20:	aa fe ff 5b 	5bfffeaa       call ca70 <_LXp_mulx> }
    cd24:	88 ff ff 59 	59ffff88     jump cc34 <_LXp_sqrtx+0x14>
    cd28:	74 c8 00 5a 	5a00c874     call de10 <sqrtl>
    cd2c:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    cd30:	0a 50 00 5a 	5a00500a       call ed40 <__hexagon_divdf3>
    cd34:	80 c4 c0 49 	49c0c480       r1:0 = memd (gp + #288) }
    cd38:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    cd3c:	04 7f ff 5b 	5bff7f04       call cb40 <_LXp_setw>
    cd40:	00 d3 10 f5 	f510d300       r1:0 = combine (r16, r19) }
    cd44:	e6 ff ff 59 	59ffffe6     jump cd10 <_LXp_sqrtx+0xf0>
    cd48:	00 40 00 7f 	7f004000     { nop
    cd4c:	00 c0 00 7f 	7f00c000       nop }

0000cd50 <_LXp_invx>:
    cd50:	3c 4d 00 5a 	5a004d3c     { call e7c8 <__save_r16_through_r23>
    cd54:	40 3c 10 79 	79103c40       p0 = cmp.eq (r1, #0) ; allocframe (#32) }
    cd58:	12 40 62 70 	70624012     { r18 = r2
    cd5c:	0a 40 20 5c 	5c20400a       if !p0 jump cd6c <_LXp_invx+0x1c>
    cd60:	09 30 18 30 	30183009       r16 = r1 ; r17 = r0 }
    cd64:	6b 40 00 00 	0000406b     { immext (#6848)
    cd68:	18 c0 09 17 	1709c018       r0 = r17 ; jump e830 <__restore_r16_through_r23_and_deallocframe> }
    cd6c:	82 cb 00 5a 	5a00cb82     call e470 <_LDtest>
    cd70:	75 52 10 c4 	c4105275     { r21 = addasl (r18, r16, #3)
    cd74:	1a 41 c0 11 	11c0411a       p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:nt cda4 <_LXp_invx+0x54>
    cd78:	02 c0 71 70 	7071c002       r2 = r17 }
    cd7c:	0e c1 00 10 	1000c10e     p0 = cmp.eq (r0, #1) ; if (p0.new) jump:nt cd98 <_LXp_invx+0x48>
    cd80:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    cd84:	6a 44 00 00 	0000446a       immext (#72320)
    cd88:	80 f0 dc 9f 	9fdcf080       if (p0.new) r1:0 = memd (##72376) }
    cd8c:	00 40 71 70 	70714000     { r0 = r17
    cd90:	00 c0 d1 40 	40d1c000       if (p0) memd (r17 + #0) = r1:0 }
    cd94:	4e cd 00 58 	5800cd4e     jump e830 <__restore_r16_through_r23_and_deallocframe>
    cd98:	c0 c4 c0 49 	49c0c4c0     r1:0 = memd (gp + #304)
    cd9c:	e4 7f ff 59 	59ff7fe4     { jump cd64 <_LXp_invx+0x14>
    cda0:	00 c0 d1 a1 	a1d1c000       memd (r17 + #0) = r1:0 }
    cda4:	01 40 70 70 	70704001     { r1 = r16
    cda8:	94 52 10 c4 	c4105294       r20 = addasl (r18, r16, #4)
    cdac:	00 40 75 70 	70754000       r0 = r21
    cdb0:	16 c0 d1 91 	91d1c016       r23:22 = memd (r17 + #0) }
    cdb4:	5e fb ff 5b 	5bfffb5e     call c470 <_LXp_movx>
    cdb8:	00 55 10 f5 	f5105500     { r1:0 = combine (r16, r21)
    cdbc:	8c 7d ff 5b 	5bff7d8c       call c8d0 <_LXp_mulh>
    cdc0:	22 c5 c0 49 	49c0c522       r3:2 = memd (gp + #328) }
    cdc4:	00 56 17 f5 	f5175600     { r1:0 = combine (r23, r22)
    cdc8:	3c 41 c8 10 	10c8413c       p0 = cmp.gt (r16, #1) ; if (!p0.new) jump:nt ce3c <_LXp_invx+0xec>
    cdcc:	22 c0 d1 43 	43d1c022       if (p0.new) r3:2 = memd (r17 + #8) }
    cdd0:	33 40 00 78 	78004033     { r19 = #1
    cdd4:	78 ce 00 5a 	5a00ce78       call eac0 <__hexagon_adddf3> }
    cdd8:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    cddc:	b4 4f 00 5a 	5a004fb4       call ed40 <__hexagon_divdf3>
    cde0:	80 c4 c0 49 	49c0c480       r1:0 = memd (gp + #288) }
    cde4:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    cde8:	ae 7e ff 5b 	5bff7eae       call cb40 <_LXp_setw>
    cdec:	00 d1 10 f5 	f510d100       r1:0 = combine (r16, r17) }
    cdf0:	00 52 10 f5 	f5105200     { r1:0 = combine (r16, r18)
    cdf4:	40 7b ff 5b 	5bff7b40       call c470 <_LXp_movx>
    cdf8:	bb 38 92 30 	309238bb       r2 = r17 ; r19 = add (r19, r19) }
    cdfc:	04 40 74 70 	70744004     { r4 = r20
    ce00:	3a 7e ff 5b 	5bff7e3a       call ca70 <_LXp_mulx>
    ce04:	00 52 10 f5 	f5105200       r1:0 = combine (r16, r18)
    ce08:	02 d5 10 f5 	f510d502       r3:2 = combine (r16, r21) }
    ce0c:	00 52 10 f5 	f5105200     { r1:0 = combine (r16, r18)
    ce10:	42 7b ff 5b 	5bff7b42       call c490 <_LXp_addh>
    ce14:	82 c4 c0 49 	49c0c482       r3:2 = memd (gp + #288) }
    ce18:	00 52 10 f5 	f5105200     { r1:0 = combine (r16, r18)
    ce1c:	2c 7e ff 5b 	5bff7e2c       call ca70 <_LXp_mulx>
    ce20:	02 51 10 f5 	f5105102       r3:2 = combine (r16, r17)
    ce24:	04 c0 74 70 	7074c004       r4 = r20 }
    ce28:	00 51 10 f5 	f5105100     { r1:0 = combine (r16, r17)
    ce2c:	2c 7d ff 5b 	5bff7d2c       call c880 <_LXp_addx>
    ce30:	02 d2 10 f5 	f510d202       r3:2 = combine (r16, r18) }
    ce34:	de 6b b8 14 	14b86bde     { p0 = cmp.gt (r16, r19) ; if (p0.new) jump:t cdf0 <_LXp_invx+0xa0>
    ce38:	98 ff ff 59 	59ffff98       jump cd64 <_LXp_invx+0x14> }
    ce3c:	02 56 17 f5 	f5175602     { r3:2 = combine (r23, r22)
    ce40:	82 4f 00 5a 	5a004f82       call ed40 <__hexagon_divdf3>
    ce44:	80 c4 c0 49 	49c0c480       r1:0 = memd (gp + #288) }
    ce48:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    ce4c:	7c 7e ff 5b 	5bff7e7c       call cb40 <_LXp_setw>
    ce50:	00 d1 10 f5 	f510d100       r1:0 = combine (r16, r17) }
    ce54:	88 ff ff 59 	59ffff88     jump cd64 <_LXp_invx+0x14>
    ce58:	00 c0 00 7f 	7f00c000     nop
    ce5c:	00 c0 00 7f 	7f00c000     nop

0000ce60 <_Mbtowcx>:
    ce60:	00 c0 9d a0 	a09dc000     allocframe (#0)
    ce64:	36 16 45 00 	00451636     r5 = memw (r4 + #0) ; r6 = memub (r3 + #6)
    ce68:	76 40 05 10 	10054076     { p0 = cmp.eq (r5, #0) ; if (p0.new) jump:nt cf54 <_Mbtowcx+0xf4>
    ce6c:	07 c0 83 91 	9183c007       r7 = memw (r3 + #0) }
    ce70:	e0 c0 01 10 	1001c0e0     p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt d030 <_Mbtowcx+0x1d0>
    ce74:	d2 c0 02 10 	1002c0d2     p0 = cmp.eq (r2, #0) ; if (p0.new) jump:nt d018 <_Mbtowcx+0x1b8>
    ce78:	50 4f 06 11 	11064f50     { p0 = cmp.gtu (r6, #15) ; if (p0.new) jump:nt cf18 <_Mbtowcx+0xb8>
    ce7c:	05 e6 84 33 	3384e605       if !p0.new r5 = memw (r4 + r6 << #2) }
    ce80:	4c c0 05 10 	1005c04c     p0 = cmp.eq (r5, #0) ; if (p0.new) jump:nt cf18 <_Mbtowcx+0xb8>
    ce84:	09 c0 21 91 	9121c009     r9 = memub (r1 + #0)
    ce88:	0b 40 61 70 	7061400b     { r11 = r1
    ce8c:	85 49 65 3a 	3a654985       r5 = memuh (r5 + r9 << #1)
    ce90:	48 c0 03 24 	2403c048       if (cmp.eq (r5.new, #0)) jump:nt cf18 <_Mbtowcx+0xb8> }
    ce94:	28 40 00 78 	78004028     { r8 = #1
    ce98:	0e 40 08 78 	7808400e       r14 = #4096
    ce9c:	0d 40 40 78 	7840400d       r13 = #16384
    cea0:	0c c0 10 78 	7810c00c       r12 = #8192 }
    cea4:	ef 7d 07 78 	78077def     { r15 = #4079
    cea8:	00 40 00 7f 	7f004000       nop
    ceac:	00 c0 00 7f 	7f00c000       nop }
    ceb0:	06 44 25 8d 	8d254406     { r6 = extractu (r5, #4, #8)
    ceb4:	0a 40 e5 70 	70e5400a       r10 = sxth (r5)
    ceb8:	00 40 00 7f 	7f004000       nop
    cebc:	3c c0 c4 26 	26c4c03c       if (!cmp.gt (r10.new, #-1)) jump:nt cf28 <_Mbtowcx+0xc8> }
    cec0:	00 4e 85 c7 	c7854e00     { p0 = bitsclr (r5, r14)
    cec4:	0a c8 00 5c 	5c00c80a       if (p0.new) jump:nt ced4 <_Mbtowcx+0x74> }
    cec8:	2a d8 07 8c 	8c07d82a     r10 = lsr (r7, #24)
    cecc:	ca c8 47 8e 	8e47c8ca     r10 |= asl (r7, #8)
    ced0:	07 c0 6a 70 	706ac007     r7 = r10
    ced4:	00 4d 85 c7 	c7854d00     { p0 = bitsclr (r5, r13)
    ced8:	0c c8 00 5c 	5c00c80c       if (p0.new) jump:nt ceec <_Mbtowcx+0x8c> }
    cedc:	00 40 09 75 	75094000     { p0 = cmp.eq (r9, #0)
    cee0:	2b 60 8b 74 	748b602b       if !p0.new r11 = add (r11, #1)
    cee4:	e2 7f 82 74 	74827fe2       if !p0.new r2 = add (r2, #-1)
    cee8:	08 e0 80 7e 	7e80e008       if !p0.new r8 = #0 }
    ceec:	00 4c 85 c7 	c7854c00     { p0 = bitsclr (r5, r12)
    cef0:	24 48 20 5c 	5c204824       if !p0.new jump:nt cf34 <_Mbtowcx+0xd4>
    cef4:	18 c6 43 46 	4643c618       if !p0.new memh (r3 + #6) = r6 }
    cef8:	90 40 02 10 	10024090     { p0 = cmp.eq (r2, #0) ; if (p0.new) jump:nt d018 <_Mbtowcx+0x1b8>
    cefc:	05 e6 84 33 	3384e605       if !p0.new r5 = memw (r4 + r6 << #2) }
    cf00:	0c c0 05 10 	1005c00c     p0 = cmp.eq (r5, #0) ; if (p0.new) jump:nt cf18 <_Mbtowcx+0xb8>
    cf04:	28 40 08 b0 	b0084028     { r8 = add (r8, #1)
    cf08:	0a cf 82 20 	2082cf0a       if (cmp.gt (r8.new, r15)) jump:nt cf18 <_Mbtowcx+0xb8> }
    cf0c:	09 c0 2b 91 	912bc009     r9 = memub (r11 + #0)
    cf10:	85 49 65 3a 	3a654985     { r5 = memuh (r5 + r9 << #1)
    cf14:	d0 c0 73 24 	2473c0d0       if (!cmp.eq (r5.new, #0)) jump:nt ceb0 <_Mbtowcx+0x50> }
    cf18:	7c e5 ff 5b 	5bffe57c     call 9a10 <_Geterrno>
    cf1c:	e1 7f df 78 	78df7fe1     { r1 = #-1
    cf20:	58 c0 40 3c 	3c40c058       memw (r0 + #0) = #88 }
    cf24:	40 3f 10 50 	50103f40     r0 = r1 ; dealloc_return
    cf28:	ea df 05 76 	7605dfea     r10 = and (r5, #255)
    cf2c:	07 48 0a 8f 	8f0a4807     { r7 = insert (r10, #8, #0)
    cf30:	ca ff ff 59 	59ffffca       jump cec0 <_Mbtowcx+0x60> }
    cf34:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    cf38:	00 47 80 46 	46804700       if !p0.new memw (r0 + #0) = r7
    cf3c:	00 c7 83 a1 	a183c700       memw (r3 + #0) = r7 }
    cf40:	81 6b 21 fb 	fb216b81     { if !p0.new r1 = sub (r11, r1)
    cf44:	3e c0 07 10 	1007c03e       p0 = cmp.eq (r7, #0) ; if (p0.new) jump:nt cfbc <_Mbtowcx+0x15c> }
    cf48:	00 40 01 75 	75014000     { p0 = cmp.eq (r1, #0)
    cf4c:	a1 ff 0f 7e 	7e0fffa1       if (p0.new) r1 = #-3 }
    cf50:	40 3f 10 50 	50103f40     r0 = r1 ; dealloc_return
    cf54:	8c c0 01 10 	1001c08c     p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt d06c <_Mbtowcx+0x20c>
    cf58:	22 60 42 10 	10426022     { p0 = cmp.eq (r2, #0) ; if (!p0.new) jump:t cf9c <_Mbtowcx+0x13c>
    cf5c:	60 40 00 58 	58004060       jump d018 <_Mbtowcx+0x1b8>
    cf60:	04 e0 81 74 	7481e004       if !p0.new r4 = add (r1, #0) }
    cf64:	05 c0 24 91 	9124c005     r5 = memub (r4 + #0)
    cf68:	08 d8 05 76 	7605d808     r8 = and (r5, #192)
    cf6c:	00 50 08 75 	75085000     { p0 = cmp.eq (r8, #128)
    cf70:	d6 68 ff 5c 	5cff68d6       if !p0.new jump:nt cf18 <_Mbtowcx+0xb8>
    cf74:	e6 ff 06 74 	7406ffe6       if (p0.new) r6 = add (r6, #-1) }
    cf78:	e5 47 05 76 	760547e5     { r5 = and (r5, #63)
    cf7c:	e6 df 06 76 	7606dfe6       r6 = and (r6, #255) }
    cf80:	c5 46 47 8e 	8e4746c5     { r5 |= asl (r7, #6)
    cf84:	00 c0 06 75 	7506c000       p0 = cmp.eq (r6, #0) }
    cf88:	07 40 65 70 	70654007     { r7 = r5
    cf8c:	12 c0 00 5c 	5c00c012       if (p0) jump cfac <_Mbtowcx+0x14c> }
    cf90:	e2 7f e2 bf 	bfe27fe2     { r2 = add (r2, #-1)
    cf94:	44 c0 02 24 	2402c044       if (cmp.eq (r2.new, #0)) jump:nt d018 <_Mbtowcx+0x1b8> }
    cf98:	24 c0 04 b0 	b004c024     r4 = add (r4, #1)
    cf9c:	e4 c0 76 10 	1076c0e4     p0 = cmp.eq (r6, #0) ; if (!p0.new) jump:nt cf64 <_Mbtowcx+0x104>
    cfa0:	07 c0 24 91 	9124c007     r7 = memub (r4 + #0)
    cfa4:	05 40 a7 70 	70a74005     { r5 = sxtb (r7)
    cfa8:	10 c0 c3 26 	26c3c010       if (!cmp.gt (r5.new, #-1)) jump:nt cfc4 <_Mbtowcx+0x164> }
    cfac:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    cfb0:	80 41 23 3c 	3c234180       memh (r3 + #6) = #0
    cfb4:	00 c7 80 46 	4680c700       if !p0.new memw (r0 + #0) = r7 }
    cfb8:	4e e0 47 10 	1047e04e     p0 = cmp.eq (r7, #0) ; if (!p0.new) jump:t d054 <_Mbtowcx+0x1f4>
    cfbc:	01 c0 00 78 	7800c001     r1 = #0
    cfc0:	40 3f 10 50 	50103f40     r0 = r1 ; dealloc_return
    cfc4:	05 dc 07 76 	7607dc05     r5 = and (r7, #224)
    cfc8:	00 58 05 75 	75055800     { p0 = cmp.eq (r5, #192)
    cfcc:	30 48 00 5c 	5c004830       if (p0.new) jump:nt d028 <_Mbtowcx+0x1c8>
    cfd0:	05 5e 07 76 	76075e05       r5 = and (r7, #240)
    cfd4:	26 c0 00 78 	7800c026       r6 = #1 }
    cfd8:	00 5c 05 75 	75055c00     { p0 = cmp.eq (r5, #224)
    cfdc:	3a 48 00 5c 	5c00483a       if (p0.new) jump:nt d04c <_Mbtowcx+0x1ec>
    cfe0:	05 5f 07 76 	76075f05       r5 = and (r7, #248)
    cfe4:	46 c0 00 78 	7800c046       r6 = #2 }
    cfe8:	00 5e 05 75 	75055e00     { p0 = cmp.eq (r5, #240)
    cfec:	3a 48 00 5c 	5c00483a       if (p0.new) jump:nt d05c <_Mbtowcx+0x1fc>
    cff0:	85 5f 07 76 	76075f85       r5 = and (r7, #252)
    cff4:	66 c0 00 78 	7800c066       r6 = #3 }
    cff8:	00 5f 05 75 	75055f00     { p0 = cmp.eq (r5, #248)
    cffc:	36 48 00 5c 	5c004836       if (p0.new) jump:nt d064 <_Mbtowcx+0x204>
    d000:	86 c0 00 78 	7800c086       r6 = #4 }
    d004:	80 5f 05 75 	75055f80     { p0 = cmp.eq (r5, #252)
    d008:	8a 68 ff 5c 	5cff688a       if !p0.new jump:nt cf18 <_Mbtowcx+0xb8>
    d00c:	a6 c0 00 78 	7800c0a6       r6 = #5 }
    d010:	67 40 07 76 	76074067     { r7 = and (r7, #3)
    d014:	c0 ff ff 59 	59ffffc0       jump cf90 <_Mbtowcx+0x130> }
    d018:	c1 7f df 78 	78df7fc1     { r1 = #-2
    d01c:	03 46 43 a1 	a1434603       memh (r3 + #6) = r6
    d020:	00 c7 83 a1 	a183c700       memw (r3 + #0) = r7 }
    d024:	40 3f 10 50 	50103f40     r0 = r1 ; dealloc_return
    d028:	e7 43 07 76 	760743e7     { r7 = and (r7, #31)
    d02c:	b4 ff ff 59 	59ffffb4       jump cf90 <_Mbtowcx+0x130> }
    d030:	0a c0 00 69 	6900c00a     loop0 (d034 <_Mbtowcx+0x1d4>, #2)
    d034:	00 80 00 7f 	7f008000     { nop
    d038:	30 30 43 60 	60433030       r3 = add (r3, #4) ; memw (r3 + #0) = #0 }:endloop0
    d03c:	01 c0 65 91 	9165c001     r1 = memuh (r5 + #0)
    d040:	3c 40 00 00 	0000403c     { immext (#3840)
    d044:	01 40 01 76 	76014001       r1 = and (r1, ##3840)
    d048:	72 ff ff 59 	59ffff72       jump cf24 <_Mbtowcx+0xc4> }
    d04c:	e7 41 07 76 	760741e7     { r7 = and (r7, #15)
    d050:	a2 ff ff 59 	59ffffa2       jump cf90 <_Mbtowcx+0x130> }
    d054:	21 41 84 db 	db844121     { r1 = add (r4, sub (#1, r1))
    d058:	68 ff ff 59 	59ffff68       jump cf24 <_Mbtowcx+0xc4> }
    d05c:	e7 40 07 76 	760740e7     { r7 = and (r7, #7)
    d060:	9a ff ff 59 	59ffff9a       jump cf90 <_Mbtowcx+0x130> }
    d064:	67 40 07 76 	76074067     { r7 = and (r7, #3)
    d068:	96 ff ff 59 	59ffff96       jump cf90 <_Mbtowcx+0x130> }
    d06c:	0a c0 00 69 	6900c00a     loop0 (d070 <_Mbtowcx+0x210>, #2)
    d070:	83 80 03 b0 	b0038083     { r3 = add (r3, #4)
    d074:	30 30 01 68 	68013030       r1 = #0 ; memw (r3 + #0) = #0 }:endloop0
    d078:	a4 ff ff 59 	59ffffa4     jump cfc0 <_Mbtowcx+0x160>
    d07c:	00 c0 00 7f 	7f00c000     nop

0000d080 <_Mbtowc>:
    d080:	10 40 60 70 	70604010     { r16 = r0
    d084:	30 1c f4 eb 	ebf41c30       memd (sp + #-16) = r17:16 ; allocframe (#24) }
    d088:	22 08 31 e8 	e8310822     memw (sp + #12) = r1 ; memw (sp + #8) = r2
    d08c:	4a 61 ff 5b 	5bff614a     { call 9320 <_Tls_get__Mbstate>
    d090:	01 c3 9d a1 	a19dc301       memw (r29 + #4) = r3 }
    d094:	04 40 60 70 	70604004     { r4 = r0
    d098:	00 40 70 70 	70704000       r0 = r16
    d09c:	22 1c 31 3c 	3c311c22       r1 = memw (sp + #12) ; r2 = memw (sp + #8) }
    d0a0:	14 1e 13 3c 	3c131e14     r3 = memw (sp + #4) ; r17:16 = memd (sp + #16)
    d0a4:	de 7e ff 59 	59ff7ede     { jump ce60 <_Mbtowcx>
    d0a8:	1e c0 1e 90 	901ec01e       deallocframe }
    d0ac:	00 c0 00 7f 	7f00c000     nop

0000d0b0 <_Stoldx>:
    d0b0:	9c 4b 00 5a 	5a004b9c     { call e7e8 <__save_r16_through_r21>
    d0b4:	07 c0 9d a0 	a09dc007       allocframe (#56) }
    d0b8:	10 40 63 70 	70634010     { r16 = r3
    d0bc:	12 40 62 70 	70624012       r18 = r2
    d0c0:	10 28 0c 70 	700c2810       r20 = r0 ; memw (sp + #4) = r0 }
    d0c4:	46 41 00 5a 	5a004146     { call d350 <_Stopfx>
    d0c8:	1d 30 10 2c 	2c10301d       r0 = add (sp, #4) ; r21 = r1 }
    d0cc:	00 40 10 75 	75104000     { p0 = cmp.eq (r16, #0)
    d0d0:	11 40 60 70 	70604011       r17 = r0
    d0d4:	e0 7e 20 76 	76207ee0       r0 = and (r0, #-9)
    d0d8:	00 c0 d0 39 	39d0c000       if !p0.new memw (r16 + #0) = #0 }
    d0dc:	13 41 1d b0 	b01d4113     { r19 = add (r29, #8)
    d0e0:	2a 41 00 10 	1000412a       p0 = cmp.eq (r0, #1) ; if (p0.new) jump:nt d130 <_Stoldx+0x80>
    d0e4:	00 e0 14 74 	7414e000       if (p0.new) r0 = add (r20, #0) }
    d0e8:	13 41 1d b0 	b01d4113     { r19 = add (r29, #8)
    d0ec:	40 42 00 10 	10004240       p0 = cmp.eq (r0, #2) ; if (p0.new) jump:nt d168 <_Stoldx+0xb8>
    d0f0:	00 e0 14 74 	7414e000       if (p0.new) r0 = add (r20, #0) }
    d0f4:	0e 43 00 10 	1000430e     { p0 = cmp.eq (r0, #3) ; if (p0.new) jump:nt d110 <_Stoldx+0x60>
    d0f8:	6a 44 00 00 	0000446a       immext (#72320)
    d0fc:	80 f0 dc 9f 	9fdcf080       if (p0.new) r1:0 = memd (##72376) }
    d100:	08 44 00 10 	10004408     { p0 = cmp.eq (r0, #4) ; if (p0.new) jump:nt d110 <_Stoldx+0x60>
    d104:	6a 44 00 00 	0000446a       immext (#72320)
    d108:	80 f0 d4 9f 	9fd4f080       if (p0.new) r1:0 = memd (##72360) }
    d10c:	c0 c4 c0 49 	49c0c4c0     r1:0 = memd (gp + #304)
    d110:	00 43 31 85 	85314300     { p0 = !tstbit (r17, #3)
    d114:	08 c8 20 5c 	5c20c808       if !p0.new jump:nt d120 <_Stoldx+0x70> }
    d118:	9c 4b 00 58 	58004b9c     { jump e850 <__restore_r16_through_r21_and_deallocframe>
    d11c:	00 c0 00 7f 	7f00c000       nop }
    d120:	02 40 60 70 	70604002     { r2 = r0
    d124:	43 df c1 8c 	8cc1df43       r3 = togglebit (r1, #31) }
    d128:	00 42 03 f5 	f5034200     { r1:0 = combine (r3, r2)
    d12c:	94 cb 00 58 	5800cb94       jump e850 <__restore_r16_through_r21_and_deallocframe> }
    d130:	03 40 73 70 	70734003     { r3 = r19
    d134:	44 40 00 78 	78004044       r4 = #2
    d138:	11 3c d2 50 	50d23c11       r2 = r21 ; r1 = memw (sp + #4) }
    d13c:	a2 c9 00 5a 	5a00c9a2     call e480 <_Stoflt>
    d140:	14 40 60 70 	70604014     { r20 = r0
    d144:	34 40 40 10 	10404034       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt d1a8 <_Stoldx+0xf8>
    d148:	c0 c4 c0 49 	49c0c4c0       r1:0 = memd (gp + #304) }
    d14c:	03 c0 dd a1 	a1ddc003     memd (r29 + #24) = r1:0
    d150:	22 3c 83 50 	50833c22     r3 = r16 ; r2 = memw (sp + #8)
    d154:	02 42 12 f3 	f3124202     { r2 = add (r18, r2)
    d158:	c6 c8 00 5a 	5a00c8c6       call e2e0 <_LDtentox> }
    d15c:	00 43 31 85 	85314300     { p0 = !tstbit (r17, #3)
    d160:	de f8 df 5c 	5cdff8de       if (p0.new) jump:t d118 <_Stoldx+0x68> }
    d164:	de ff ff 59 	59ffffde     jump d120 <_Stoldx+0x70>
    d168:	03 40 73 70 	70734003     { r3 = r19
    d16c:	44 40 00 78 	78004044       r4 = #2
    d170:	11 3c d2 50 	50d23c11       r2 = r21 ; r1 = memw (sp + #4) }
    d174:	ee c2 00 5a 	5a00c2ee     call d750 <_Stoxflt>
    d178:	38 40 40 10 	10404038     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt d1e8 <_Stoldx+0x138>
    d17c:	22 c0 93 47 	4793c022       if !p0.new r2 = memw (r19 + #4) }
    d180:	c0 c4 c0 49 	49c0c4c0     r1:0 = memd (gp + #304)
    d184:	03 c0 dd a1 	a1ddc003     memd (r29 + #24) = r1:0
    d188:	94 74 ff 5b 	5bff7494     { call bab0 <_LDscale>
    d18c:	21 3c 60 4c 	4c603c21       r0 = add (sp, #24) ; r1 = memw (sp + #8) }
    d190:	02 52 10 f5 	f5105202     { r3:2 = combine (r16, r18)
    d194:	a8 48 00 5a 	5a0048a8       call e2e0 <_LDtentox>
    d198:	60 c0 dd 91 	91ddc060       r1:0 = memd (r29 + #24) }
    d19c:	00 43 31 85 	85314300     { p0 = !tstbit (r17, #3)
    d1a0:	be f8 df 5c 	5cdff8be       if (p0.new) jump:t d118 <_Stoldx+0x68> }
    d1a4:	be ff ff 59 	59ffffbe     jump d120 <_Stoldx+0x70>
    d1a8:	20 40 54 75 	75544020     { p0 = cmp.gt (r20, #1)
    d1ac:	20 c0 93 91 	9193c020       r0 = memw (r19 + #4) }
    d1b0:	40 c0 80 84 	8480c040     r1:0 = convert_w2df (r0)
    d1b4:	02 44 1d b0 	b01d4402     { r2 = add (r29, #32)
    d1b8:	ce 60 ff 5c 	5cff60ce       if !p0 jump d150 <_Stoldx+0xa0>
    d1bc:	18 2a 4b 6c 	6c4b2a18       r19 = add (sp, #16) ; memd (sp + #24) = r1:0 }
    d1c0:	54 c2 14 8c 	8c14c254     r20 = asl (r20, #2)
    d1c4:	94 f4 42 db 	db42f494     r20 = add (r2, add (r20, #-20))
    d1c8:	0c 4f 00 5a 	5a004f0c     { call efe0 <__hexagon_muldf3>
    d1cc:	82 cd c0 49 	49c0cd82       r3:2 = memd (gp + #864) }
    d1d0:	22 c0 93 9b 	9b93c022     r2 = memw (r19 ++ #4)
    d1d4:	42 40 82 84 	84824042     { r3:2 = convert_w2df (r2)
    d1d8:	76 cc 00 5a 	5a00cc76       call eac0 <__hexagon_adddf3> }
    d1dc:	f6 4c 7b 14 	147b4cf6     { p0 = cmp.eq (r19, r20) ; if (!p0.new) jump:nt d1c8 <_Stoldx+0x118>
    d1e0:	ba 7f ff 59 	59ff7fba       jump d150 <_Stoldx+0xa0>
    d1e4:	18 c0 dd 42 	42ddc018       if (p0.new) memd (r29 + #24) = r1:0 }
    d1e8:	20 40 40 75 	75404020     { p0 = cmp.gt (r0, #1)
    d1ec:	42 c0 82 84 	8482c042       r3:2 = convert_w2df (r2) }
    d1f0:	01 44 1d b0 	b01d4401     { r1 = add (r29, #32)
    d1f4:	cc 60 ff 5c 	5cff60cc       if !p0 jump d188 <_Stoldx+0xd8>
    d1f8:	19 2a 4b 6c 	6c4b2a19       r19 = add (sp, #16) ; memd (sp + #24) = r3:2 }
    d1fc:	40 c2 00 8c 	8c00c240     r0 = asl (r0, #2)
    d200:	80 f4 41 db 	db41f480     r20 = add (r1, add (r0, #-20))
    d204:	00 42 03 f5 	f5034200     { r1:0 = combine (r3, r2)
    d208:	ee 4e 00 5a 	5a004eee       call efe0 <__hexagon_muldf3>
    d20c:	a2 cd c0 49 	49c0cda2       r3:2 = memd (gp + #872) }
    d210:	22 c0 93 9b 	9b93c022     r2 = memw (r19 ++ #4)
    d214:	42 40 82 84 	84824042     { r3:2 = convert_w2df (r2)
    d218:	56 cc 00 5a 	5a00cc56       call eac0 <__hexagon_adddf3> }
    d21c:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    d220:	f4 4c 7b 14 	147b4cf4       p0 = cmp.eq (r19, r20) ; if (!p0.new) jump:nt d204 <_Stoldx+0x154>
    d224:	18 c0 dd 42 	42ddc018       if (p0.new) memd (r29 + #24) = r1:0 }
    d228:	b0 ff ff 59 	59ffffb0     jump d188 <_Stoldx+0xd8>
    d22c:	00 c0 00 7f 	7f00c000     nop

0000d230 <_Stold>:
    d230:	40 c0 33 16 	1633c040     r3 = #0 ; jump d0b0 <_Stoldx>
    d234:	00 c0 00 7f 	7f00c000     nop
    d238:	00 c0 00 7f 	7f00c000     nop
    d23c:	00 c0 00 7f 	7f00c000     nop

0000d240 <_Stollx>:
    d240:	c4 4a 00 5a 	5a004ac4     { call e7c8 <__save_r16_through_r23>
    d244:	50 3c 10 79 	79103c50       p0 = cmp.eq (r1, #0) ; allocframe (#40) }
    d248:	15 40 60 70 	70604015     { r21 = r0
    d24c:	16 40 62 70 	70624016       r22 = r2
    d250:	3b 30 1a 30 	301a303b       r18 = r1 ; r19 = r3 }
    d254:	92 40 1d 74 	741d4092     { if (p0) r18 = add (r29, #4)
    d258:	06 c8 00 17 	1700c806       r16 = r0 ; jump d260 <_Stollx+0x20> }
    d25c:	30 c0 10 b0 	b010c030     r16 = add (r16, #1)
    d260:	70 e7 ff 5b 	5bffe770     call a140 <_Getpctype>
    d264:	11 c0 30 91 	9130c011     r17 = memub (r16 + #0)
    d268:	80 d1 40 3a 	3a40d180     r0 = memh (r0 + r17 << #1)
    d26c:	80 68 00 76 	76006880     { r0 = and (r0, #324)
    d270:	f8 c0 72 24 	2472c0f8       if (!cmp.eq (r0.new, #0)) jump:nt d25c <_Stollx+0x1c> }
    d274:	60 45 11 75 	75114560     { p0 = cmp.eq (r17, #43)
    d278:	58 48 00 5c 	5c004858       if (p0.new) jump:nt d324 <_Stollx+0xe4>
    d27c:	14 c0 00 78 	7800c014       r20 = #0 }
    d280:	a0 c5 11 75 	7511c5a0     p0 = cmp.eq (r17, #45)
    d284:	34 40 00 7a 	7a004034     { r20 = mux (p0, #1, #0)
    d288:	50 40 00 5c 	5c004050       if (p0) jump d324 <_Stollx+0xe4>
    d28c:	71 c5 80 7e 	7e80c571       if !p0 r17 = #43 }
    d290:	14 c0 00 78 	7800c014     r20 = #0
    d294:	00 50 12 f5 	f5125000     { r1:0 = combine (r18, r16)
    d298:	36 41 00 5a 	5a004136       call d500 <_Stoullx>
    d29c:	b3 30 e2 30 	30e230b3       r2 = r22 ; r3 = r19 }
    d2a0:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    d2a4:	00 c0 92 91 	9192c000       r0 = memw (r18 + #0) }
    d2a8:	28 48 00 14 	14004828     { p0 = cmp.eq (r0, r16) ; if (p0.new) jump:nt d2f8 <_Stollx+0xb8>
    d2ac:	00 d5 92 42 	4292d500       if (p0.new) memw (r18 + #0) = r21 }
    d2b0:	10 40 15 f2 	f2154010     { p0 = !cmp.eq (r21, r0)
    d2b4:	24 c8 20 5c 	5c20c824       if !p0.new jump:nt d2f8 <_Stollx+0xb8> }
    d2b8:	04 40 00 7c 	7c004004     { r5:4 = combine (#0, #0)
    d2bc:	00 c2 03 f5 	f503c200       r1:0 = combine (r3, r2) }
    d2c0:	40 42 84 d2 	d2844240     { p0 = cmp.gt (r5:4, r3:2)
    d2c4:	08 c8 20 5c 	5c20c808       if !p0.new jump:nt d2d0 <_Stollx+0x90> }
    d2c8:	60 45 11 75 	75114560     { p0 = cmp.eq (r17, #43)
    d2cc:	1e c8 00 5c 	5c00c81e       if (p0.new) jump:nt d304 <_Stollx+0xc4> }
    d2d0:	00 40 00 08 	08004000     { immext (#2147483648)
    d2d4:	06 40 00 7c 	7c004006       r7:6 = combine (##-2147483648, #0)
    d2d8:	00 c0 14 85 	8514c000       p0 = tstbit (r20, #0) }
    d2dc:	81 46 82 d2 	d2824681     { p1 = cmp.gtu (r3:2, r7:6)
    d2e0:	28 49 00 5c 	5c004928       if (p1.new) jump:nt d32c <_Stollx+0xec>
    d2e4:	24 c0 00 7a 	7a00c024       r4 = mux (p0, #1, #0) }
    d2e8:	00 c0 04 75 	7504c000     p0 = cmp.eq (r4, #0)
    d2ec:	04 c0 00 5c 	5c00c004     if (p0) jump d2f4 <_Stollx+0xb4>
    d2f0:	a0 c0 82 80 	8082c0a0     r1:0 = neg (r3:2)
    d2f4:	9e ca 00 58 	5800ca9e     jump e830 <__restore_r16_through_r23_and_deallocframe>
    d2f8:	00 c0 00 7c 	7c00c000     r1:0 = combine (#0, #0)
    d2fc:	00 40 82 d2 	d2824000     { p0 = cmp.eq (r3:2, r1:0)
    d300:	de e8 df 5c 	5cdfe8de       if (p0.new) jump:nt d2b8 <_Stollx+0x78> }
    d304:	86 e3 ff 5b 	5bffe386     call 9a10 <_Geterrno>
    d308:	00 40 13 75 	75134000     { p0 = cmp.eq (r19, #0)
    d30c:	22 40 40 3c 	3c404022       memw (r0 + #0) = #34
    d310:	01 c0 d3 39 	39d3c001       if !p0.new memw (r19 + #0) = #1 }
    d314:	ff 7f ff 07 	07ff7fff     { immext (#2147483584)
    d318:	e0 67 7f 7c 	7c7f67e0       r1:0 = combine (##2147483647, #-1)
    d31c:	10 c3 8c 11 	118cc310       p0 = tstbit (r20, #0) ; if (p0.new) jump:nt d334 <_Stollx+0xf4> }
    d320:	88 ca 00 58 	5800ca88     jump e830 <__restore_r16_through_r23_and_deallocframe>
    d324:	30 40 10 b0 	b0104030     { r16 = add (r16, #1)
    d328:	b8 ff ff 59 	59ffffb8       jump d294 <_Stollx+0x54> }
    d32c:	e0 40 34 10 	103440e0     { p0 = cmp.eq (r4, #0) ; if (p0.new) jump:nt d2ec <_Stollx+0xac>
    d330:	ec ff ff 59 	59ffffec       jump d304 <_Stollx+0xc4> }
    d334:	00 40 00 08 	08004000     { immext (#2147483648)
    d338:	00 40 00 7c 	7c004000       r1:0 = combine (##-2147483648, #0)
    d33c:	7e ca 00 58 	5800ca7e       jump e830 <__restore_r16_through_r23_and_deallocframe> }

0000d340 <_Stoll>:
    d340:	80 c0 33 16 	1633c080     r3 = #0 ; jump d240 <_Stollx>
    d344:	00 c0 00 7f 	7f00c000     nop
    d348:	00 c0 00 7f 	7f00c000     nop
    d34c:	00 c0 00 7f 	7f00c000     nop

0000d350 <_Stopfx>:
    d350:	4c 4a 00 5a 	5a004a4c     { call e7e8 <__save_r16_through_r21>
    d354:	03 c0 9d a0 	a09dc003       allocframe (#24) }
    d358:	06 48 00 17 	17004806     { r16 = r0 ; jump d364 <_Stopfx+0x14>
    d35c:	09 00 1a 50 	501a0009       r18 = r1 ; r17 = memw (r0 + #0) }
    d360:	31 c0 11 b0 	b011c031     r17 = add (r17, #1)
    d364:	ee e6 ff 5b 	5bffe6ee     call a140 <_Getpctype>
    d368:	01 c0 31 91 	9131c001     r1 = memub (r17 + #0)
    d36c:	80 c1 40 3a 	3a40c180     r0 = memh (r0 + r1 << #1)
    d370:	80 68 00 76 	76006880     { r0 = and (r0, #324)
    d374:	f8 c0 72 24 	2472c0f8       if (!cmp.eq (r0.new, #0)) jump:nt d360 <_Stopfx+0x10> }
    d378:	a0 45 01 75 	750145a0     { p0 = cmp.eq (r1, #45)
    d37c:	9c 48 00 5c 	5c00489c       if (p0.new) jump:nt d4b0 <_Stopfx+0x160>
    d380:	31 60 11 74 	74116031       if (p0.new) r17 = add (r17, #1)
    d384:	00 e1 00 7e 	7e00e100       if (p0.new) r0 = #8 }
    d388:	60 45 01 75 	75014560     { p0 = cmp.eq (r1, #43)
    d38c:	98 48 00 5c 	5c004898       if (p0.new) jump:nt d4b8 <_Stopfx+0x168>
    d390:	00 60 80 7e 	7e806000       if !p0.new r0 = #0
    d394:	31 e0 11 74 	7411e031       if (p0.new) r17 = add (r17, #1) }
    d398:	c0 49 01 75 	750149c0     { p0 = cmp.eq (r1, #78)
    d39c:	16 c8 00 5c 	5c00c816       if (p0.new) jump:nt d3c4 <_Stopfx+0x74> }
    d3a0:	c0 4d 01 75 	75014dc0     { p0 = cmp.eq (r1, #110)
    d3a4:	12 c8 00 5c 	5c00c812       if (p0.new) jump:nt d3c4 <_Stopfx+0x74> }
    d3a8:	20 49 01 75 	75014920     { p0 = cmp.eq (r1, #73)
    d3ac:	24 c8 00 5c 	5c00c824       if (p0.new) jump:nt d3f0 <_Stopfx+0xa0> }
    d3b0:	20 4d 01 75 	75014d20     { p0 = cmp.eq (r1, #105)
    d3b4:	20 48 00 5c 	5c004820       if (p0.new) jump:nt d3f0 <_Stopfx+0xa0>
    d3b8:	00 d1 90 46 	4690d100       if !p0.new memw (r16 + #0) = r17 }
    d3bc:	20 40 80 76 	76804020     { r0 = or (r0, #1)
    d3c0:	4a ca 00 58 	5800ca4a       jump e850 <__restore_r16_through_r21_and_deallocframe> }
    d3c4:	90 11 99 51 	51991190     r17 = add (r17, #1) ; r0 = memub (r17 + #1)
    d3c8:	20 4c 00 75 	75004c20     { p0 = cmp.eq (r0, #97)
    d3cc:	60 c8 00 5c 	5c00c860       if (p0.new) jump:nt d488 <_Stopfx+0x138> }
    d3d0:	20 48 00 75 	75004820     { p0 = cmp.eq (r0, #65)
    d3d4:	5c c8 00 5c 	5c00c85c       if (p0.new) jump:nt d488 <_Stopfx+0x138> }
    d3d8:	00 40 00 7f 	7f004000     { nop
    d3dc:	89 00 00 48 	48000089       r0 = #0 ; r17 = memw (r16 + #0) }
    d3e0:	00 40 12 75 	75124000     { p0 = cmp.eq (r18, #0)
    d3e4:	00 51 92 46 	46925100       if !p0.new memw (r18 + #0) = r17
    d3e8:	00 d1 90 a1 	a190d100       memw (r16 + #0) = r17 }
    d3ec:	32 ca 00 58 	5800ca32     jump e850 <__restore_r16_through_r21_and_deallocframe>
    d3f0:	91 11 99 51 	51991191     r17 = add (r17, #1) ; r1 = memub (r17 + #1)
    d3f4:	c0 4d 01 75 	75014dc0     { p0 = cmp.eq (r1, #110)
    d3f8:	08 c8 00 5c 	5c00c808       if (p0.new) jump:nt d404 <_Stopfx+0xb4> }
    d3fc:	c0 49 01 75 	750149c0     { p0 = cmp.eq (r1, #78)
    d400:	ee f8 ff 5c 	5cfff8ee       if !p0.new jump:t d3d8 <_Stopfx+0x88> }
    d404:	91 11 99 51 	51991191     r17 = add (r17, #1) ; r1 = memub (r17 + #1)
    d408:	c0 4c 01 75 	75014cc0     { p0 = cmp.eq (r1, #102)
    d40c:	08 c8 00 5c 	5c00c808       if (p0.new) jump:nt d418 <_Stopfx+0xc8> }
    d410:	c0 48 01 75 	750148c0     { p0 = cmp.eq (r1, #70)
    d414:	e4 f8 ff 5c 	5cfff8e4       if !p0.new jump:t d3d8 <_Stopfx+0x88> }
    d418:	60 40 80 76 	76804060     { r0 = or (r0, #3)
    d41c:	91 11 99 51 	51991191       r17 = add (r17, #1) ; r1 = memub (r17 + #1) }
    d420:	20 49 01 75 	75014920     { p0 = cmp.eq (r1, #73)
    d424:	08 c8 00 5c 	5c00c808       if (p0.new) jump:nt d430 <_Stopfx+0xe0> }
    d428:	20 4d 01 75 	75014d20     { p0 = cmp.eq (r1, #105)
    d42c:	dc f8 ff 5c 	5cfff8dc       if !p0.new jump:t d3e0 <_Stopfx+0x90> }
    d430:	91 11 92 51 	51921191     r2 = add (r17, #1) ; r1 = memub (r17 + #1)
    d434:	c0 4d 01 75 	75014dc0     { p0 = cmp.eq (r1, #110)
    d438:	08 c8 00 5c 	5c00c808       if (p0.new) jump:nt d444 <_Stopfx+0xf4> }
    d43c:	c0 49 01 75 	750149c0     { p0 = cmp.eq (r1, #78)
    d440:	d2 f8 ff 5c 	5cfff8d2       if !p0.new jump:t d3e0 <_Stopfx+0x90> }
    d444:	21 11 22 51 	51221121     r2 = add (r2, #1) ; r1 = memub (r2 + #1)
    d448:	20 4d 01 75 	75014d20     { p0 = cmp.eq (r1, #105)
    d44c:	08 c8 00 5c 	5c00c808       if (p0.new) jump:nt d458 <_Stopfx+0x108> }
    d450:	20 49 01 75 	75014920     { p0 = cmp.eq (r1, #73)
    d454:	c8 f8 ff 5c 	5cfff8c8       if !p0.new jump:t d3e0 <_Stopfx+0x90> }
    d458:	21 11 22 51 	51221121     r2 = add (r2, #1) ; r1 = memub (r2 + #1)
    d45c:	80 4e 01 75 	75014e80     { p0 = cmp.eq (r1, #116)
    d460:	08 c8 00 5c 	5c00c808       if (p0.new) jump:nt d46c <_Stopfx+0x11c> }
    d464:	80 4a 01 75 	75014a80     { p0 = cmp.eq (r1, #84)
    d468:	be f8 ff 5c 	5cfff8be       if !p0.new jump:t d3e0 <_Stopfx+0x90> }
    d46c:	21 11 22 51 	51221121     r2 = add (r2, #1) ; r1 = memub (r2 + #1)
    d470:	20 4f 01 75 	75014f20     { p0 = cmp.eq (r1, #121)
    d474:	08 c8 00 5c 	5c00c808       if (p0.new) jump:nt d480 <_Stopfx+0x130> }
    d478:	20 4b 01 75 	75014b20     { p0 = cmp.eq (r1, #89)
    d47c:	b4 f8 ff 5c 	5cfff8b4       if !p0.new jump:t d3e0 <_Stopfx+0x90> }
    d480:	31 40 02 b0 	b0024031     { r17 = add (r2, #1)
    d484:	b0 ff ff 59 	59ffffb0       jump d3e0 <_Stopfx+0x90> }
    d488:	90 11 99 51 	51991190     r17 = add (r17, #1) ; r0 = memub (r17 + #1)
    d48c:	c0 4d 00 75 	75004dc0     { p0 = cmp.eq (r0, #110)
    d490:	08 c8 00 5c 	5c00c808       if (p0.new) jump:nt d49c <_Stopfx+0x14c> }
    d494:	c0 49 00 75 	750049c0     { p0 = cmp.eq (r0, #78)
    d498:	a2 f8 ff 5c 	5cfff8a2       if !p0.new jump:t d3d8 <_Stopfx+0x88> }
    d49c:	90 11 99 51 	51991190     r17 = add (r17, #1) ; r0 = memub (r17 + #1)
    d4a0:	00 45 00 75 	75004500     { p0 = cmp.eq (r0, #40)
    d4a4:	10 48 00 5c 	5c004810       if (p0.new) jump:nt d4c0 <_Stopfx+0x170>
    d4a8:	9b 30 40 28 	2840309b       r0 = #4 ; r19 = r17 }
    d4ac:	9a ff ff 59 	59ffff9a     jump d3e0 <_Stopfx+0x90>
    d4b0:	74 7f ff 59 	59ff7f74     { jump d398 <_Stopfx+0x48>
    d4b4:	01 c0 31 91 	9131c001       r1 = memub (r17 + #0) }
    d4b8:	70 40 30 16 	16304070     { r0 = #0 ; jump d398 <_Stopfx+0x48>
    d4bc:	01 c0 31 91 	9131c001       r1 = memub (r17 + #0) }
    d4c0:	54 c6 01 78 	7801c654     r20 = #562
    d4c4:	3e e6 ff 5b 	5bffe63e     call a140 <_Getpctype>
    d4c8:	33 c0 13 b0 	b013c033     r19 = add (r19, #1)
    d4cc:	01 c0 33 91 	9133c001     r1 = memub (r19 + #0)
    d4d0:	e1 4b 01 75 	75014be1     { p1 = cmp.eq (r1, #95)
    d4d4:	80 c1 40 3a 	3a40c180       r0 = memh (r0 + r1 << #1) }
    d4d8:	00 54 80 c7 	c7805400     { p0 = bitsclr (r0, r20)
    d4dc:	f6 e8 ff 5c 	5cffe8f6       if !p0.new jump:nt d4c4 <_Stopfx+0x174> }
    d4e0:	20 45 01 75 	75014520     { p0 = cmp.eq (r1, #41)
    d4e4:	f2 e1 df 5c 	5cdfe1f2       if (p1) jump d4c4 <_Stopfx+0x174> }
    d4e8:	31 40 13 74 	74134031     { if (p0) r17 = add (r19, #1)
    d4ec:	7c 7f ff 59 	59ff7f7c       jump d3e0 <_Stopfx+0x90>
    d4f0:	80 40 00 7e 	7e004080       if (p0) r0 = #4
    d4f4:	80 c0 80 7e 	7e80c080       if !p0 r0 = #4 }
    d4f8:	00 c0 00 7f 	7f00c000     nop
    d4fc:	00 c0 00 7f 	7f00c000     nop

0000d500 <_Stoullx>:
    d500:	60 49 00 5a 	5a004960     { call e7c0 <__save_r16_through_r27>
    d504:	90 3c 30 79 	79303c90       p0 = cmp.eq (r3, #0) ; allocframe (#72) }
    d508:	15 40 61 70 	70614015     { r21 = r1
    d50c:	1b 40 62 70 	7062401b       r27 = r2
    d510:	40 28 3c 70 	703c2840       r20 = r3 ; memw (sp + #16) = r0 }
    d514:	38 40 00 7a 	7a004038     { r24 = mux (p0, #1, #0)
    d518:	0a 40 00 58 	5800400a       jump d528 <_Stoullx+0x28>
    d51c:	99 40 9d 91 	919d4099       r25 = memw (r29 + #16)
    d520:	00 c0 c3 38 	38c3c000       if !p0 memw (r3 + #0) = #0 }
    d524:	39 c0 19 b0 	b019c039     r25 = add (r25, #1)
    d528:	0c e6 ff 5b 	5bffe60c     call a140 <_Getpctype>
    d52c:	10 c0 39 91 	9139c010     r16 = memub (r25 + #0)
    d530:	80 d0 40 3a 	3a40d080     r0 = memh (r0 + r16 << #1)
    d534:	80 68 00 76 	76006880     { r0 = and (r0, #324)
    d538:	f8 c0 72 24 	2472c0f8       if (!cmp.eq (r0.new, #0)) jump:nt d524 <_Stoullx+0x24> }
    d53c:	60 45 10 75 	75104560     { p0 = cmp.eq (r16, #43)
    d540:	20 c8 00 5c 	5c00c820       if (p0.new) jump:nt d57c <_Stoullx+0x7c> }
    d544:	a0 45 10 75 	751045a0     { p0 = cmp.eq (r16, #45)
    d548:	1c 48 00 5c 	5c00481c       if (p0.new) jump:nt d57c <_Stoullx+0x7c>
    d54c:	70 e5 80 7e 	7e80e570       if !p0.new r16 = #43 }
    d550:	20 40 1b 75 	751b4020     { p0 = cmp.eq (r27, #1)
    d554:	0c c8 00 5c 	5c00c80c       if (p0.new) jump:nt d568 <_Stoullx+0x68> }
    d558:	e0 7f 7b 75 	757b7fe0     { p0 = cmp.gt (r27, #-1)
    d55c:	08 c8 20 5c 	5c20c808       if !p0.new jump:nt d568 <_Stoullx+0x68> }
    d560:	80 44 5b 75 	755b4480     { p0 = cmp.gt (r27, #36)
    d564:	12 c8 20 5c 	5c20c812       if !p0.new jump:nt d584 <_Stoullx+0x84> }
    d568:	a4 40 0d 10 	100d40a4     { p0 = cmp.eq (r21, #0) ; if (p0.new) jump:nt d6b0 <_Stoullx+0x1b0>
    d56c:	40 3c 05 5c 	5c053c40       r19:18 = combine (#0, #0) ; r0 = memw (sp + #16) }
    d570:	00 52 13 f5 	f5135200     { r1:0 = combine (r19, r18)
    d574:	00 c0 95 a1 	a195c000       memw (r21 + #0) = r0 }
    d578:	64 c9 00 58 	5800c964     jump e840 <__restore_r16_through_r27_and_deallocframe>
    d57c:	39 40 19 b0 	b0194039     { r25 = add (r25, #1)
    d580:	ea ff ff 59 	59ffffea       jump d550 <_Stoullx+0x50> }
    d584:	00 40 1b 75 	751b4000     { p0 = cmp.eq (r27, #0)
    d588:	86 c8 00 5c 	5c00c886       if (p0.new) jump:nt d690 <_Stoullx+0x190> }
    d58c:	00 42 1b 75 	751b4200     { p0 = cmp.eq (r27, #16)
    d590:	a8 c8 00 5c 	5c00c8a8       if (p0.new) jump:nt d6dc <_Stoullx+0x1dc> }
    d594:	00 c0 39 91 	9139c000     r0 = memub (r25 + #0)
    d598:	00 46 00 75 	75004600     { p0 = cmp.eq (r0, #48)
    d59c:	86 48 20 5c 	5c204886       if !p0.new jump:nt d6a4 <_Stoullx+0x1a4>
    d5a0:	08 db 9d 46 	469ddb08       if !p0.new memw (r29 + #4) = r27 }
    d5a4:	00 40 00 7f 	7f004000     { nop
    d5a8:	21 40 39 91 	91394021       r1 = memub (r25 + #1)
    d5ac:	05 d9 9d a1 	a19dd905       memw (r29 + #20) = r25 }
    d5b0:	20 40 19 b0 	b0194020     { r0 = add (r25, #1)
    d5b4:	06 c0 00 58 	5800c006       jump d5bc <_Stoullx+0xbc> }
    d5b8:	01 c0 20 91 	9120c001     r1 = memub (r0 + #0)
    d5bc:	00 46 01 75 	75014600     { p0 = cmp.eq (r1, #48)
    d5c0:	fe 78 df 5c 	5cdf78fe       if (p0.new) jump:t d5b8 <_Stoullx+0xb8>
    d5c4:	19 40 60 70 	70604019       r25 = r0
    d5c8:	20 c0 00 b0 	b000c020       r0 = add (r0, #1) }
    d5cc:	11 40 79 70 	70794011     { r17 = r25
    d5d0:	01 db 9d a1 	a19ddb01       memw (r29 + #4) = r27 }
    d5d4:	04 40 5b 84 	845b4004     { r5:4 = sxtw (r27)
    d5d8:	1a 40 00 78 	7800401a       r26 = #0
    d5dc:	05 3c 07 3c 	3c073c05       r23:22 = combine (#0, #0) ; r19:18 = combine (#0, #0) }
    d5e0:	0c 40 00 58 	5800400c     { jump d5f8 <_Stoullx+0xf8>
    d5e4:	01 c4 dd a1 	a1ddc401       memd (r29 + #8) = r5:4 }
    d5e8:	fa df 02 76 	7602dffa     r26 = and (r2, #255)
    d5ec:	f2 df 1a 76 	761adff2     r18 = and (r26, #255)
    d5f0:	f2 c0 12 d3 	d312c0f2     r19:18 = add (r19:18, r1:0)
    d5f4:	16 d2 13 f5 	f513d216     r23:22 = combine (r19, r18)
    d5f8:	b4 c2 00 5a 	5a00c2b4     call db60 <_Getptolower>
    d5fc:	12 3c 91 10 	10913c12     r1 = memub (r17 + #0) ; r2 = memw (sp + #4)
    d600:	28 44 00 00 	00004428     { immext (#68096)
    d604:	00 43 00 78 	78004300       r0 = ##68120
    d608:	48 42 ff 5b 	5bff4248       call 5a90 <memchr>
    d60c:	81 c1 40 3a 	3a40c181       r1 = memh (r0 + r1 << #1) }
    d610:	28 44 00 00 	00004428     { immext (#68096)
    d614:	00 39 85 29 	29853900       r5 = ##68120 ; p0 = cmp.eq (r0, #0) }
    d618:	02 40 25 f3 	f3254002     { r2 = sub (r0, r5)
    d61c:	24 c0 dd 91 	91ddc024       r5:4 = memd (r29 + #8) }
    d620:	00 c4 52 e5 	e552c400     r1:0 = mpyu (r18, r4)
    d624:	01 c5 12 ef 	ef12c501     r1 += mpyi (r18, r5)
    d628:	01 53 04 ef 	ef045301     { r1 += mpyi (r4, r19)
    d62c:	e0 60 ff 5c 	5cff60e0       if !p0 jump d5e8 <_Stoullx+0xe8>
    d630:	13 40 80 7e 	7e804013       if !p0 r19 = #0
    d634:	31 c0 91 74 	7491c031       if !p0 r17 = add (r17, #1) }
    d638:	01 40 71 70 	70714001     { r1 = r17
    d63c:	a5 40 9d 91 	919d40a5       r5 = memw (r29 + #20)
    d640:	98 d1 33 20 	2033d198       if (cmp.eq (r5.new, r17)) jump:nt d568 <_Stoullx+0x68> }
    d644:	27 44 00 00 	00004427     { immext (#68032)
    d648:	00 dc 3b 9d 	9d3bdc00       r0 = memub (r27 << #0 + ##68080) }
    d64c:	21 c0 99 ef 	ef99c021     r1 -= add (r25, r0)
    d650:	3e c1 c1 11 	11c1c13e     p0 = cmp.gt (r1, #-1) ; if (!p0.new) jump:nt d6cc <_Stoullx+0x1cc>
    d654:	e0 5f 1a 76 	761a5fe0     { r0 = and (r26, #255)
    d658:	0c 60 41 10 	1041600c       p0 = cmp.eq (r1, #0) ; if (!p0.new) jump:t d66c <_Stoullx+0x16c>
    d65c:	01 c0 00 78 	7800c001       r1 = #0 }
    d660:	e0 d2 20 d3 	d320d2e0     r1:0 = sub (r19:18, r1:0)
    d664:	80 52 80 d2 	d2805280     { p0 = cmp.gtu (r1:0, r19:18)
    d668:	2c c8 20 5c 	5c20c82c       if !p0.new jump:nt d6bc <_Stoullx+0x1bc> }
    d66c:	d2 e1 ff 5b 	5bffe1d2     call 9a10 <_Geterrno>
    d670:	f2 7f 7f 7c 	7c7f7ff2     { r19:18 = combine (#-1, #-1)
    d674:	00 40 18 85 	85184000       p0 = tstbit (r24, #0)
    d678:	22 40 40 3c 	3c404022       memw (r0 + #0) = #34
    d67c:	01 c0 d4 39 	39d4c001       if !p0.new memw (r20 + #0) = #1 }
    d680:	00 40 15 75 	75154000     { p0 = cmp.eq (r21, #0)
    d684:	00 52 13 f5 	f5135200       r1:0 = combine (r19, r18)
    d688:	00 d1 95 46 	4695d100       if !p0.new memw (r21 + #0) = r17 }
    d68c:	da c8 00 58 	5800c8da     jump e840 <__restore_r16_through_r27_and_deallocframe>
    d690:	00 c0 39 91 	9139c000     r0 = memub (r25 + #0)
    d694:	00 46 00 75 	75004600     { p0 = cmp.eq (r0, #48)
    d698:	3a 48 00 5c 	5c00483a       if (p0.new) jump:nt d708 <_Stoullx+0x208>
    d69c:	5b 61 80 7e 	7e80615b       if !p0.new r27 = #10
    d6a0:	8a c0 dd 39 	39ddc08a       if !p0.new memw (r29 + #4) = #10 }
    d6a4:	11 40 79 70 	70794011     { r17 = r25
    d6a8:	98 7f ff 59 	59ff7f98       jump d5d4 <_Stoullx+0xd4>
    d6ac:	05 d9 9d a1 	a19dd905       memw (r29 + #20) = r25 }
    d6b0:	12 c0 00 7c 	7c00c012     r19:18 = combine (#0, #0)
    d6b4:	00 52 13 f5 	f5135200     { r1:0 = combine (r19, r18)
    d6b8:	c6 c8 00 58 	5800c8c6       jump e840 <__restore_r16_through_r27_and_deallocframe> }
    d6bc:	02 40 5b 84 	845b4002     { r3:2 = sxtw (r27)
    d6c0:	7a c9 00 5a 	5a00c97a       call e9b0 <__hexagon_udivdi3> }
    d6c4:	00 56 80 d2 	d2805600     { p0 = cmp.eq (r1:0, r23:22)
    d6c8:	d4 f8 ff 5c 	5cfff8d4       if !p0.new jump:t d66c <_Stoullx+0x16c> }
    d6cc:	a0 45 10 75 	751045a0     { p0 = cmp.eq (r16, #45)
    d6d0:	da e8 ff 5c 	5cffe8da       if !p0.new jump:nt d680 <_Stoullx+0x180> }
    d6d4:	b2 40 92 80 	809240b2     { r19:18 = neg (r19:18)
    d6d8:	d6 ff ff 59 	59ffffd6       jump d680 <_Stoullx+0x180> }
    d6dc:	00 c0 39 91 	9139c000     r0 = memub (r25 + #0)
    d6e0:	00 46 00 75 	75004600     { p0 = cmp.eq (r0, #48)
    d6e4:	e2 78 ff 5c 	5cff78e2       if !p0.new jump:t d6a4 <_Stoullx+0x1a4>
    d6e8:	90 c0 dd 39 	39ddc090       if !p0.new memw (r29 + #4) = #16 }
    d6ec:	21 c0 39 91 	9139c021     r1 = memub (r25 + #1)
    d6f0:	00 4b 01 75 	75014b00     { p0 = cmp.eq (r1, #88)
    d6f4:	1e c8 00 5c 	5c00c81e       if (p0.new) jump:nt d72c <_Stoullx+0x22c> }
    d6f8:	00 4f 01 75 	75014f00     { p0 = cmp.eq (r1, #120)
    d6fc:	1a c8 00 5c 	5c00c81a       if (p0.new) jump:nt d72c <_Stoullx+0x22c> }
    d700:	58 7f ff 59 	59ff7f58     { jump d5b0 <_Stoullx+0xb0>
    d704:	05 d9 9d a1 	a19dd905       memw (r29 + #20) = r25 }
    d708:	21 c0 39 91 	9139c021     r1 = memub (r25 + #1)
    d70c:	00 4b 01 75 	75014b00     { p0 = cmp.eq (r1, #88)
    d710:	0a c8 00 5c 	5c00c80a       if (p0.new) jump:nt d720 <_Stoullx+0x220> }
    d714:	00 4f 01 75 	75014f00     { p0 = cmp.eq (r1, #120)
    d718:	f6 78 ff 5c 	5cff78f6       if !p0.new jump:t d700 <_Stoullx+0x200>
    d71c:	1b e1 80 7e 	7e80e11b       if !p0.new r27 = #8 }
    d720:	59 40 19 b0 	b0194059     { r25 = add (r25, #2)
    d724:	3a 7f ff 59 	59ff7f3a       jump d594 <_Stoullx+0x94>
    d728:	1b c2 00 78 	7800c21b       r27 = #16 }
    d72c:	59 40 19 b0 	b0194059     { r25 = add (r25, #2)
    d730:	34 ff ff 59 	59ffff34       jump d594 <_Stoullx+0x94> }
    d734:	00 40 00 7f 	7f004000     { nop
    d738:	00 40 00 7f 	7f004000       nop
    d73c:	00 c0 00 7f 	7f00c000       nop }

0000d740 <_Stoull>:
    d740:	e0 c0 23 16 	1623c0e0     r3 = #0 ; jump d500 <_Stoullx>
    d744:	00 c0 00 7f 	7f00c000     nop
    d748:	00 c0 00 7f 	7f00c000     nop
    d74c:	00 c0 00 7f 	7f00c000     nop

0000d750 <_Stoxflt>:
    d750:	e4 40 04 e0 	e00440e4     { r4 = + mpyi (r4, #7)
    d754:	38 48 00 5a 	5a004838       call e7c0 <__save_r16_through_r27>
    d758:	0b c0 9d a0 	a09dc00b       allocframe (#88) }
    d75c:	10 41 03 f5 	f5034110     { r17:16 = combine (r3, r1)
    d760:	61 44 00 78 	78004461       r1 = #35
    d764:	1a c0 60 70 	7060c01a       r26 = r0 }
    d768:	15 44 a1 d5 	d5a14415     { r21 = min (r4, r1)
    d76c:	19 40 62 70 	70624019       r25 = r2
    d770:	91 10 90 f0 	f0901091       memw (r17 + #0) = #0 ; memw (r17 + #4) = #0 }
    d774:	01 c0 30 91 	9130c001     r1 = memub (r16 + #0)
    d778:	00 46 01 75 	75014600     { p0 = cmp.eq (r1, #48)
    d77c:	10 48 20 5c 	5c204810       if !p0.new jump:nt d798 <_Stoxflt+0x48>
    d780:	14 e0 80 7e 	7e80e014       if !p0.new r20 = #0 }
    d784:	30 c0 10 b0 	b010c030     r16 = add (r16, #1)
    d788:	01 c0 30 91 	9130c001     r1 = memub (r16 + #0)
    d78c:	00 46 01 75 	75014600     { p0 = cmp.eq (r1, #48)
    d790:	fc 78 df 5c 	5cdf78fc       if (p0.new) jump:t d784 <_Stoxflt+0x34>
    d794:	34 c0 00 78 	7800c034       r20 = #1 }
    d798:	18 40 7d 70 	707d4018     { r24 = r29
    d79c:	29 44 00 00 	00004429       immext (#68160)
    d7a0:	0a 28 0e 28 	280e280a       r22 = ##68160 ; r18 = #0 }
    d7a4:	29 44 00 00 	00004429     { immext (#68160)
    d7a8:	17 43 00 78 	78004317       r23 = ##68184
    d7ac:	0e c0 00 58 	5800c00e       jump d7c0 <_Stoxflt+0x70> }
    d7b0:	32 40 12 b0 	b0124032     { r18 = add (r18, #1)
    d7b4:	00 d2 18 3b 	3b18d200       memb (r24 + r18 << #0) = r0 }
    d7b8:	1c 28 18 20 	2018281c     r16 = add (r16, #1) ; r20 = #1
    d7bc:	01 c0 30 91 	9130c001     r1 = memub (r16 + #0)
    d7c0:	68 41 ff 5b 	5bff4168     { call 5a90 <memchr>
    d7c4:	29 44 00 00 	00004429       immext (#68160)
    d7c8:	62 29 00 28 	28002962       r0 = ##68160 ; r2 = #22 }
    d7cc:	00 55 52 f2 	f2525500     { p0 = cmp.gt (r18, r21)
    d7d0:	01 c0 36 f3 	f336c001       r1 = sub (r0, r22) }
    d7d4:	33 40 00 7a 	7a004033     { r19 = mux (p0, #1, #0)
    d7d8:	0c c0 00 10 	1000c00c       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt d7ec <_Stoxflt+0x9c> }
    d7dc:	ea 43 fb 11 	11fb43ea     { p0 = tstbit (r19, #0) ; if (!p0.new) jump:nt d7b0 <_Stoxflt+0x60>
    d7e0:	00 c1 17 33 	3317c100       if !p0.new r0 = memb (r23 + r1 << #0) }
    d7e4:	ea 7f ff 59 	59ff7fea     { jump d7b8 <_Stoxflt+0x68>
    d7e8:	01 c0 51 3f 	3f51c001       memw (r17 + #0) += #1 }
    d7ec:	02 43 00 5a 	5a004302     { call ddf0 <localeconv>
    d7f0:	13 c0 30 91 	9130c013       r19 = memub (r16 + #0) }
    d7f4:	60 c1 80 91 	9180c160     r0 = memw (r0 + #44)
    d7f8:	00 c0 20 91 	9120c000     r0 = memub (r0 + #0)
    d7fc:	00 53 00 f2 	f2005300     { p0 = cmp.eq (r0, r19)
    d800:	30 e0 10 74 	7410e030       if (p0.new) r16 = add (r16, #1) }
    d804:	ee c0 0a 10 	100ac0ee     p0 = cmp.eq (r18, #0) ; if (p0.new) jump:nt d9e0 <_Stoxflt+0x290>
    d808:	00 40 00 7f 	7f004000     { nop
    d80c:	01 c0 30 91 	9130c001       r1 = memub (r16 + #0) }
    d810:	00 55 52 f2 	f2525500     { p0 = cmp.gt (r18, r21)
    d814:	29 44 00 00 	00004429       immext (#68160)
    d818:	62 29 00 28 	28002962       r0 = ##68160 ; r2 = #22 }
    d81c:	33 40 00 7a 	7a004033     { r19 = mux (p0, #1, #0)
    d820:	3a c1 ff 5b 	5bffc13a       call 5a90 <memchr> }
    d824:	18 40 7d 70 	707d4018     { r24 = r29
    d828:	29 44 00 00 	00004429       immext (#68160)
    d82c:	00 39 0e 28 	280e3900       r22 = ##68160 ; p0 = cmp.eq (r0, #0) }
    d830:	29 44 00 00 	00004429     { immext (#68160)
    d834:	17 43 00 78 	78004317       r23 = ##68184
    d838:	24 40 00 5c 	5c004024       if (p0) jump d878 <_Stoxflt+0x128>
    d83c:	01 c0 36 f3 	f336c001       r1 = sub (r0, r22) }
    d840:	10 43 8b 11 	118b4310     { p0 = tstbit (r19, #0) ; if (p0.new) jump:nt d860 <_Stoxflt+0x110>
    d844:	1c 28 18 20 	2018281c       r16 = add (r16, #1) ; r20 = #1 }
    d848:	00 41 17 3a 	3a174100     { r0 = memb (r23 + r1 << #0)
    d84c:	21 c0 51 3f 	3f51c021       memw (r17 + #0) -= #1 }
    d850:	32 40 12 b0 	b0124032     { r18 = add (r18, #1)
    d854:	00 d2 18 3b 	3b18d200       memb (r24 + r18 << #0) = r0 }
    d858:	00 d5 52 f2 	f252d500     p0 = cmp.gt (r18, r21)
    d85c:	33 c0 00 7a 	7a00c033     r19 = mux (p0, #1, #0)
    d860:	c2 42 00 78 	780042c2     { r2 = #22
    d864:	29 44 00 00 	00004429       immext (#68160)
    d868:	81 10 00 48 	48001081       r0 = ##68160 ; r1 = memub (r16 + #0) }
    d86c:	12 c1 ff 5b 	5bffc112     call 5a90 <memchr>
    d870:	01 40 36 f3 	f3364001     { r1 = sub (r0, r22)
    d874:	e8 e0 70 10 	1070e0e8       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:t d840 <_Stoxflt+0xf0> }
    d878:	00 60 1d 74 	741d6000     { if (p0.new) r0 = add (r29, #0)
    d87c:	10 43 cb 11 	11cb4310       p0 = tstbit (r19, #0) ; if (!p0.new) jump:nt d898 <_Stoxflt+0x148>
    d880:	00 c0 91 47 	4791c000       if !p0.new r0 = memw (r17 + #0) }
    d884:	01 55 3d 3a 	3a3d5501     { r1 = memub (r29 + r21 << #0)
    d888:	c6 c7 03 25 	2503c7c6       if (cmp.gtu (r1.new, #7)) jump:nt da10 <_Stoxflt+0x2c0> }
    d88c:	90 00 da 50 	50da0090     r18 = r21 ; r0 = memw (r17 + #0)
    d890:	20 40 00 b0 	b0004020     { r0 = add (r0, #1)
    d894:	00 d2 b1 a1 	a1b1d200       memw (r17 + #0) = r0.new }
    d898:	e2 7f f2 bf 	bff27fe2     { r2 = add (r18, #-1)
    d89c:	0a c0 da 10 	10dac00a       p0 = cmp.gt (r18, #0) ; if (!p0.new) jump:nt daac <_Stoxflt+0x35c> }
    d8a0:	d2 61 7d db 	db7d61d2     { r1 = add (r29, add (r18, #-2))
    d8a4:	03 42 3d 3a 	3a3d4203       r3 = memub (r29 + r2 << #0)
    d8a8:	20 c0 43 24 	2443c020       if (!cmp.eq (r3.new, #0)) jump:nt d8e0 <_Stoxflt+0x190> }
    d8ac:	06 c0 00 58 	5800c006     jump d8b8 <_Stoxflt+0x168>
    d8b0:	e3 41 21 9b 	9b2141e3     { r3 = memub (r1 ++ #-1)
    d8b4:	f0 c0 43 24 	2443c0f0       if (!cmp.eq (r3.new, #0)) jump:nt da90 <_Stoxflt+0x340> }
    d8b8:	12 40 62 70 	70624012     { r18 = r2
    d8bc:	20 40 00 b0 	b0004020       r0 = add (r0, #1)
    d8c0:	20 39 22 33 	33223920       r2 = add (r2, #-1) ; p0 = cmp.eq (r2, #0) }
    d8c4:	f6 60 ff 5c 	5cff60f6     { if !p0 jump d8b0 <_Stoxflt+0x160>
    d8c8:	00 40 00 7f 	7f004000       nop
    d8cc:	00 c0 91 40 	4091c000       if (p0) memw (r17 + #0) = r0 }
    d8d0:	32 40 00 78 	78004032     { r18 = #1
    d8d4:	00 40 00 7f 	7f004000       nop
    d8d8:	00 40 00 7f 	7f004000       nop
    d8dc:	00 c0 1d 3c 	3c1dc000       memb (r29 + #0) = #0 }
    d8e0:	40 42 00 8c 	8c004240     { r0 = asl (r0, #2)
    d8e4:	00 40 14 75 	75144000       p0 = cmp.eq (r20, #0)
    d8e8:	00 d4 b1 a1 	a1b1d400       memw (r17 + #0) = r0.new }
    d8ec:	34 40 00 7a 	7a004034     { r20 = mux (p0, #1, #0)
    d8f0:	6a 40 00 5c 	5c00406a       if (p0) jump d9c0 <_Stoxflt+0x270>
    d8f4:	92 64 24 09 	09246492       immext (#2454267008)
    d8f8:	61 c2 00 78 	7800c261       r1 = ##-1840700269 }
    d8fc:	00 40 52 75 	75524000     { p0 = cmp.gt (r18, #0)
    d900:	20 c1 12 ed 	ed12c120       r0 = mpy (r18, r1) }
    d904:	00 d2 00 f3 	f300d200     r0 = add (r0, r18)
    d908:	00 c2 00 8c 	8c00c200     r0 = asr (r0, #2)
    d90c:	00 df 12 8e 	8e12df00     r0 -= asr (r18, #31)
    d910:	e0 c0 00 e0 	e000c0e0     r0 = + mpyi (r0, #7)
    d914:	f2 c0 80 db 	db80c0f2     r0 = add (r0, sub (#7, r18))
    d918:	33 41 00 ed 	ed004133     { r19 = mpy (r0, r1)
    d91c:	02 df 00 8c 	8c00df02       r2 = asr (r0, #31) }
    d920:	13 c0 13 f3 	f313c013     r19 = add (r19, r0)
    d924:	13 c2 13 8c 	8c13c213     r19 = asr (r19, #2)
    d928:	13 d3 22 f3 	f322d313     r19 = sub (r19, r2)
    d92c:	f3 c0 13 e0 	e013c0f3     r19 = + mpyi (r19, #7)
    d930:	13 53 60 f3 	f3605313     { r19 = !cmp.eq (r0, r19)
    d934:	3c 40 20 5c 	5c20403c       if !p0 jump d9a8 <_Stoxflt+0x258>
    d938:	01 40 7d 70 	707d4001       r1 = r29
    d93c:	12 dd 12 fb 	fb12dd12       if (p0) r18 = add (r18, r29) }
    d940:	92 64 24 09 	09246492     { immext (#2454267008)
    d944:	64 42 00 78 	78004264       r4 = ##-1840700269
    d948:	12 40 00 58 	58004012       jump d964 <_Stoxflt+0x214>
    d94c:	00 c0 00 7f 	7f00c000       nop }
    d950:	21 40 01 b0 	b0014021     { r1 = add (r1, #1)
    d954:	02 40 21 91 	91214002       r2 = memub (r1 + #0)
    d958:	12 f3 b1 3b 	3bb1f312       memw (r17 + r19 << #2) = r2.new }
    d95c:	02 5f 00 8c 	8c005f02     { r2 = asr (r0, #31)
    d960:	26 ca 01 14 	1401ca26       p0 = cmp.eq (r1, r18) ; if (p0.new) jump:nt d9a8 <_Stoxflt+0x258> }
    d964:	23 c4 00 ed 	ed00c423     r3 = mpy (r0, r4)
    d968:	03 c0 03 f3 	f303c003     r3 = add (r3, r0)
    d96c:	03 c2 03 8c 	8c03c203     r3 = asr (r3, #2)
    d970:	02 c3 22 f3 	f322c302     r2 = sub (r3, r2)
    d974:	e2 c0 02 e0 	e002c0e2     r2 = + mpyi (r2, #7)
    d978:	33 60 13 74 	74136033     { if (p0.new) r19 = add (r19, #1)
    d97c:	ec 42 30 14 	143042ec       p0 = cmp.eq (r0, r2) ; if (p0.new) jump:nt d950 <_Stoxflt+0x200>
    d980:	20 e0 00 74 	7400e020       if (p0.new) r0 = add (r0, #1) }
    d984:	21 40 01 b0 	b0014021     { r1 = add (r1, #1)
    d988:	20 40 00 b0 	b0004020       r0 = add (r0, #1)
    d98c:	02 40 21 91 	91214002       r2 = memub (r1 + #0)
    d990:	03 f3 91 3a 	3a91f303       r3 = memw (r17 + r19 << #2) }
    d994:	82 42 03 c4 	c4034282     { r2 = addasl (r2, r3, #4)
    d998:	00 52 01 f2 	f2015200       p0 = cmp.eq (r1, r18)
    d99c:	14 f3 b1 3b 	3bb1f314       memw (r17 + r19 << #2) = r2.new }
    d9a0:	02 5f 00 8c 	8c005f02     { r2 = asr (r0, #31)
    d9a4:	e2 e0 ff 5c 	5cffe0e2       if !p0 jump d964 <_Stoxflt+0x214> }
    d9a8:	00 c0 30 91 	9130c000     r0 = memub (r16 + #0)
    d9ac:	00 4a 00 75 	75004a00     { p0 = cmp.eq (r0, #80)
    d9b0:	3a c8 00 5c 	5c00c83a       if (p0.new) jump:nt da20 <_Stoxflt+0x2d0> }
    d9b4:	36 48 00 5c 	5c004836     { if (p0.new) jump:nt da20 <_Stoxflt+0x2d0>
    d9b8:	08 4a 08 17 	17084a08       r18 = r16 ; jump d9c4 <_Stoxflt+0x274>
    d9bc:	00 ce 00 75 	7500ce00       p0 = cmp.eq (r0, #112) }
    d9c0:	12 e0 30 73 	7330e012     r19:18 = combine (#0, r16)
    d9c4:	00 40 19 75 	75194000     { p0 = cmp.eq (r25, #0)
    d9c8:	0a c8 00 5c 	5c00c80a       if (p0.new) jump:nt d9d8 <_Stoxflt+0x288> }
    d9cc:	00 40 14 85 	85144000     { p0 = tstbit (r20, #0)
    d9d0:	12 e0 1a 74 	741ae012       if (p0.new) r18 = add (r26, #0) }
    d9d4:	00 d2 99 a1 	a199d200     memw (r25 + #0) = r18
    d9d8:	39 40 00 00 	00004039     { immext (#3648)
    d9dc:	50 c0 0b 17 	170bc050       r0 = r19 ; jump e840 <__restore_r16_through_r27_and_deallocframe> }
    d9e0:	01 c0 30 91 	9130c001     r1 = memub (r16 + #0)
    d9e4:	00 46 01 75 	75014600     { p0 = cmp.eq (r1, #48)
    d9e8:	16 68 ff 5c 	5cff6816       if !p0.new jump:nt d810 <_Stoxflt+0xc0>
    d9ec:	00 c0 91 43 	4391c000       if (p0.new) r0 = memw (r17 + #0) }
    d9f0:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    d9f4:	30 40 10 b0 	b0104030       r16 = add (r16, #1)
    d9f8:	00 d4 b1 a1 	a1b1d400       memw (r17 + #0) = r0.new }
    d9fc:	01 c0 30 91 	9130c001     r1 = memub (r16 + #0)
    da00:	00 46 01 75 	75014600     { p0 = cmp.eq (r1, #48)
    da04:	f8 78 df 5c 	5cdf78f8       if (p0.new) jump:t d9f0 <_Stoxflt+0x2a0>
    da08:	1c 28 0a 28 	280a281c       r18 = #0 ; r20 = #1 }
    da0c:	02 ff ff 59 	59ffff02     jump d810 <_Stoxflt+0xc0>
    da10:	e1 ff f5 bf 	bff5ffe1     r1 = add (r21, #-1)
    da14:	00 c1 00 f3 	f300c100     r0 = add (r0, r1)
    da18:	3a 7f ff 59 	59ff7f3a     { jump d88c <_Stoxflt+0x13c>
    da1c:	01 c0 00 3f 	3f00c001       memb (r0 + #0) += #1 }
    da20:	32 40 10 b0 	b0104032     { r18 = add (r16, #1)
    da24:	38 c0 30 91 	9130c038       r24 = memub (r16 + #1) }
    da28:	60 45 18 75 	75184560     { p0 = cmp.eq (r24, #43)
    da2c:	38 c8 00 5c 	5c00c838       if (p0.new) jump:nt da98 <_Stoxflt+0x348> }
    da30:	a0 c5 18 75 	7518c5a0     p0 = cmp.eq (r24, #45)
    da34:	38 40 00 7a 	7a004038     { r24 = mux (p0, #1, #0)
    da38:	34 c0 00 5c 	5c00c034       if (p0) jump da9c <_Stoxflt+0x34c> }
    da3c:	18 c0 00 78 	7800c018     r24 = #0
    da40:	83 57 5f 00 	005f5783     { immext (#99999936)
    da44:	16 60 9f 7c 	7c9f6016       r23:22 = combine (#0, ##99999999)
    da48:	0c c0 0d 16 	160dc00c       r21 = #0 ; jump da58 <_Stoxflt+0x308> }
    da4c:	04 c0 00 5c 	5c00c004     if (p0) jump da54 <_Stoxflt+0x304>
    da50:	41 f5 95 df 	df95f541     r21 = add (r1, mpyi (r21, #10))
    da54:	1f 28 1a 20 	201a281f     r18 = add (r18, #1) ; r23 = #1
    da58:	74 e3 ff 5b 	5bffe374     call a140 <_Getpctype>
    da5c:	00 56 55 f2 	f2555600     { p0 = cmp.gt (r21, r22)
    da60:	01 c0 32 91 	9132c001       r1 = memub (r18 + #0) }
    da64:	01 7a e1 bf 	bfe17a01     { r1 = add (r1, #-48)
    da68:	80 c1 40 3a 	3a40c180       r0 = memh (r0 + r1 << #1) }
    da6c:	01 45 20 85 	85204501     { p1 = !tstbit (r0, #5)
    da70:	f0 f9 ff 5c 	5cfff9f0       if !p1.new jump:t da4c <_Stoxflt+0x2fc> }
    da74:	00 40 18 85 	85184000     { p0 = tstbit (r24, #0)
    da78:	18 48 00 5c 	5c004818       if (p0.new) jump:nt daa4 <_Stoxflt+0x354>
    da7c:	00 c0 00 7f 	7f00c000       nop }
    da80:	00 40 17 75 	75174000     { p0 = cmp.eq (r23, #0)
    da84:	a2 7f ff 59 	59ff7fa2       jump d9c4 <_Stoxflt+0x274>
    da88:	12 60 10 74 	74106012       if (p0.new) r18 = add (r16, #0)
    da8c:	15 c0 51 3e 	3e51c015       memw (r17 + #0) += r21 }
    da90:	28 7f ff 59 	59ff7f28     { jump d8e0 <_Stoxflt+0x190>
    da94:	00 c0 91 a1 	a191c000       memw (r17 + #0) = r0 }
    da98:	18 c0 00 78 	7800c018     r24 = #0
    da9c:	32 40 12 b0 	b0124032     { r18 = add (r18, #1)
    daa0:	d2 ff ff 59 	59ffffd2       jump da40 <_Stoxflt+0x2f0> }
    daa4:	15 40 55 76 	76554015     { r21 = sub (#0, r21)
    daa8:	ee ff ff 59 	59ffffee       jump da80 <_Stoxflt+0x330> }
    daac:	12 60 3a 10 	103a6012     { p0 = cmp.eq (r18, #0) ; if (p0.new) jump:t d8d0 <_Stoxflt+0x180>
    dab0:	1a ff ff 59 	59ffff1a       jump d8e0 <_Stoxflt+0x190> }
    dab4:	00 c0 00 7f 	7f00c000     nop
    dab8:	00 c0 00 7f 	7f00c000     nop
    dabc:	00 c0 00 7f 	7f00c000     nop

0000dac0 <_Tls_get__Tolotab>:
    dac0:	20 40 00 78 	78004020     { r0 = #1
    dac4:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    dac8:	02 4f 00 00 	00004f02     { immext (#245888)
    dacc:	90 c0 00 78 	7800c090       r16 = ##245892 }
    dad0:	01 c0 10 92 	9210c001     r1 = memw_locked (r16)
    dad4:	00 c0 41 75 	7541c000     p0 = cmp.gt (r1, #0)
    dad8:	06 c0 00 5c 	5c00c006     if (p0) jump dae4 <_Tls_get__Tolotab+0x24>
    dadc:	00 c0 b0 a0 	a0b0c000     memw_locked (r16, p0) = r0
    dae0:	f8 e0 ff 5c 	5cffe0f8     if !p0 jump dad0 <_Tls_get__Tolotab+0x10>
    dae4:	02 4f 00 00 	00004f02     { immext (#245888)
    dae8:	00 40 00 78 	78004000       r0 = ##245888
    daec:	1a c0 01 10 	1001c01a       p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt db18 <_Tls_get__Tolotab+0x58> }
    daf0:	20 44 80 49 	49804420     { r0 = memw (gp + #132)
    daf4:	00 c1 c2 24 	24c2c100       if (!cmp.gt (r0.new, #1)) jump:nt daf0 <_Tls_get__Tolotab+0x30> }
    daf8:	c4 4e 00 5a 	5a004ec4     { call f880 <__sys_Tlsget>
    dafc:	00 c4 80 49 	4980c400       r0 = memw (gp + #128) }
    db00:	10 40 60 70 	70604010     { r16 = r0
    db04:	16 40 00 10 	10004016       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt db2c <_Tls_get__Tolotab+0x6c>
    db08:	80 60 00 7c 	7c006080       r1:0 = combine (#4, #1)
    db0c:	00 c0 00 7f 	7f00c000       nop }
    db10:	00 40 70 70 	70704000     { r0 = r16
    db14:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    db18:	59 41 00 00 	00004159     { immext (#22080)
    db1c:	01 46 00 78 	78004601       r1 = ##22128
    db20:	fc ce 00 5a 	5a00cefc       call f910 <__sys_Tlsalloc> }
    db24:	e6 7f ff 59 	59ff7fe6     { jump daf0 <_Tls_get__Tolotab+0x30>
    db28:	02 c0 50 3c 	3c50c002       memw (r16 + #0) = #2 }
    db2c:	0a df ff 5b 	5bffdf0a     call 9940 <calloc>
    db30:	11 40 60 70 	70604011     { r17 = r0
    db34:	f0 40 30 10 	103040f0       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt db10 <_Tls_get__Tolotab+0x50>
    db38:	00 c4 80 49 	4980c400       r0 = memw (gp + #128) }
    db3c:	01 40 71 70 	70714001     { r1 = r17
    db40:	82 ce 00 5a 	5a00ce82       call f840 <__sys_Tlsset> }
    db44:	08 40 40 10 	10404008     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt db54 <_Tls_get__Tolotab+0x94>
    db48:	29 44 00 00 	00004429       immext (#68160)
    db4c:	12 e0 51 39 	3951e012       if (p0.new) memw (r17 + #0) = ##68210 }
    db50:	e0 c8 39 17 	1739c8e0     r16 = r17 ; jump db10 <_Tls_get__Tolotab+0x50>
    db54:	00 40 71 70 	70714000     { r0 = r17
    db58:	8e fd fe 5b 	5bfefd8e       call 5670 <free> }
    db5c:	da ff ff 59 	59ffffda     jump db10 <_Tls_get__Tolotab+0x50>

0000db60 <_Getptolower>:
    db60:	b0 7f ff 5b 	5bff7fb0     { call dac0 <_Tls_get__Tolotab>
    db64:	00 c0 9d a0 	a09dc000       allocframe (#0) }
    db68:	40 3f 00 00 	00003f40     r0 = memw (r0 + #0) ; dealloc_return
    db6c:	00 c0 00 7f 	7f00c000     nop

0000db70 <_Tls_get__Wcstate>:
    db70:	20 40 00 78 	78004020     { r0 = #1
    db74:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    db78:	02 4f 00 00 	00004f02     { immext (#245888)
    db7c:	90 c1 00 78 	7800c190       r16 = ##245900 }
    db80:	01 c0 10 92 	9210c001     r1 = memw_locked (r16)
    db84:	00 c0 41 75 	7541c000     p0 = cmp.gt (r1, #0)
    db88:	06 c0 00 5c 	5c00c006     if (p0) jump db94 <_Tls_get__Wcstate+0x24>
    db8c:	00 c0 b0 a0 	a0b0c000     memw_locked (r16, p0) = r0
    db90:	f8 e0 ff 5c 	5cffe0f8     if !p0 jump db80 <_Tls_get__Wcstate+0x10>
    db94:	02 4f 00 00 	00004f02     { immext (#245888)
    db98:	00 41 00 78 	78004100       r0 = ##245896
    db9c:	1a c0 01 10 	1001c01a       p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt dbc8 <_Tls_get__Wcstate+0x58> }
    dba0:	60 44 80 49 	49804460     { r0 = memw (gp + #140)
    dba4:	00 c1 c2 24 	24c2c100       if (!cmp.gt (r0.new, #1)) jump:nt dba0 <_Tls_get__Wcstate+0x30> }
    dba8:	6c 4e 00 5a 	5a004e6c     { call f880 <__sys_Tlsget>
    dbac:	40 c4 80 49 	4980c440       r0 = memw (gp + #136) }
    dbb0:	10 40 60 70 	70604010     { r16 = r0
    dbb4:	16 40 00 10 	10004016       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt dbdc <_Tls_get__Wcstate+0x6c>
    dbb8:	00 68 00 7c 	7c006800       r1:0 = combine (#64, #1)
    dbbc:	00 c0 00 7f 	7f00c000       nop }
    dbc0:	00 40 70 70 	70704000     { r0 = r16
    dbc4:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    dbc8:	59 41 00 00 	00004159     { immext (#22080)
    dbcc:	01 46 00 78 	78004601       r1 = ##22128
    dbd0:	a4 ce 00 5a 	5a00cea4       call f910 <__sys_Tlsalloc> }
    dbd4:	e6 7f ff 59 	59ff7fe6     { jump dba0 <_Tls_get__Wcstate+0x30>
    dbd8:	02 c0 50 3c 	3c50c002       memw (r16 + #0) = #2 }
    dbdc:	b2 de ff 5b 	5bffdeb2     call 9940 <calloc>
    dbe0:	11 40 60 70 	70604011     { r17 = r0
    dbe4:	f0 40 30 10 	103040f0       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt dbc0 <_Tls_get__Wcstate+0x50>
    dbe8:	40 c4 80 49 	4980c440       r0 = memw (gp + #136) }
    dbec:	01 40 71 70 	70714001     { r1 = r17
    dbf0:	2a ce 00 5a 	5a00ce2a       call f840 <__sys_Tlsset> }
    dbf4:	00 40 71 70 	70714000     { r0 = r17
    dbf8:	0c c0 40 10 	1040c00c       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt dc0c <_Tls_get__Wcstate+0x9c> }
    dbfc:	88 c0 00 69 	6900c088     loop0 (dc00 <_Tls_get__Wcstate+0x90>, #16)
    dc00:	80 80 00 b0 	b0008080     { r0 = add (r0, #4)
    dc04:	00 30 98 70 	70983000       r16 = r17 ; memw (r0 + #0) = #0 }:endloop0
    dc08:	dc ff ff 59 	59ffffdc     jump dbc0 <_Tls_get__Wcstate+0x50>
    dc0c:	00 40 71 70 	70714000     { r0 = r17
    dc10:	32 fd fe 5b 	5bfefd32       call 5670 <free> }
    dc14:	d6 ff ff 59 	59ffffd6     jump dbc0 <_Tls_get__Wcstate+0x50>
    dc18:	00 40 00 7f 	7f004000     { nop
    dc1c:	00 c0 00 7f 	7f00c000       nop }

0000dc20 <_Getpwcstate>:
    dc20:	a8 ff ff 59 	59ffffa8     jump db70 <_Tls_get__Wcstate>
    dc24:	00 c0 00 7f 	7f00c000     nop
    dc28:	00 c0 00 7f 	7f00c000     nop
    dc2c:	00 c0 00 7f 	7f00c000     nop

0000dc30 <_Atrealloc>:
    dc30:	e0 c1 80 49 	4980c1e0     r0 = memw (gp + #60)
    dc34:	30 41 00 8c 	8c004130     { r16 = lsr (r0, #1)
    dc38:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    dc3c:	00 c0 10 f3 	f310c000     r0 = add (r16, r0)
    dc40:	40 42 00 8c 	8c004240     { r0 = asl (r0, #2)
    dc44:	68 fe fe 5b 	5bfefe68       call 5910 <malloc> }
    dc48:	38 40 00 10 	10004038     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt dcb8 <_Atrealloc+0x88>
    dc4c:	40 3a 09 30 	30093a40       r17 = r0 ; if (p0.new) r0 = #0 }
    dc50:	82 43 80 49 	49804382     { r2 = memw (gp + #112)
    dc54:	c1 c1 80 49 	4980c1c1       r1 = memw (gp + #56) }
    dc58:	42 42 02 8c 	8c024242     { r2 = asl (r2, #2)
    dc5c:	fc c2 ff 5b 	5bffc2fc       call 6250 <memcpy> }
    dc60:	a1 41 80 49 	498041a1     { r1 = memw (gp + #52)
    dc64:	e2 c1 80 49 	4980c1e2       r2 = memw (gp + #60) }
    dc68:	02 42 21 f3 	f3214202     { r2 = sub (r2, r1)
    dc6c:	00 41 10 f3 	f3104100       r0 = add (r16, r1)
    dc70:	c3 c1 80 49 	4980c1c3       r3 = memw (gp + #56) }
    dc74:	41 43 01 c4 	c4014341     { r1 = addasl (r3, r1, #2)
    dc78:	40 d1 00 c4 	c400d140       r0 = addasl (r17, r0, #2) }
    dc7c:	42 42 02 8c 	8c024242     { r2 = asl (r2, #2)
    dc80:	ea c2 ff 5b 	5bffc2ea       call 6250 <memcpy> }
    dc84:	c0 c1 80 49 	4980c1c0     r0 = memw (gp + #56)
    dc88:	08 48 00 5c 	5c004808     { if (p0.new) jump:nt dc98 <_Atrealloc+0x68>
    dc8c:	f4 7c fe 5b 	5bfe7cf4       call 5670 <free>
    dc90:	4a 4d 00 00 	00004d4a       immext (#217728)
    dc94:	00 c6 00 75 	7500c600       p0 = cmp.eq (r0, ##217776) }
    dc98:	00 4f 00 00 	00004f00     { immext (#245760)
    dc9c:	80 47 00 78 	78004780       r0 = ##245820
    dca0:	00 4f 00 00 	00004f00       immext (#245760)
    dca4:	81 c6 00 78 	7800c681       r1 = ##245812 }
    dca8:	20 40 00 78 	78004020     { r0 = #1
    dcac:	10 c0 40 3e 	3e40c010       memw (r0 + #0) += r16 }
    dcb0:	0e d1 80 48 	4880d10e     memw (gp + #56) = r17
    dcb4:	10 c0 41 3e 	3e41c010     memw (r1 + #0) += r16
    dcb8:	40 1f 04 3e 	3e041f40     r17:16 = memd (sp + #0) ; dealloc_return
    dcbc:	00 c0 00 7f 	7f00c000     nop

0000dcc0 <ldexpl>:
    dcc0:	00 40 02 75 	75024000     { p0 = cmp.eq (r2, #0)
    dcc4:	30 1c f4 eb 	ebf41c30       memd (sp + #-16) = r17:16 ; allocframe (#24) }
    dcc8:	10 41 1d b0 	b01d4110     { r16 = add (r29, #8)
    dccc:	0c 40 20 5c 	5c20400c       if !p0 jump dce0 <ldexpl+0x20>
    dcd0:	01 40 dd a1 	a1dd4001       memd (r29 + #8) = r1:0
    dcd4:	08 c2 9d 44 	449dc208       if !p0 memw (r29 + #4) = r2 }
    dcd8:	14 1e 08 3e 	3e081e14     r1:0 = memd (sp + #8) ; r17:16 = memd (sp + #16)
    dcdc:	1e c0 1e 96 	961ec01e     dealloc_return
    dce0:	00 40 70 70 	70704000     { r0 = r16
    dce4:	c8 c3 00 5a 	5a00c3c8       call e470 <_LDtest> }
    dce8:	f8 61 b0 11 	11b061f8     { p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t dcd8 <ldexpl+0x18>
    dcec:	22 c0 9d 91 	919dc022       r2 = memw (r29 + #4) }
    dcf0:	00 50 02 f5 	f5025000     { r1:0 = combine (r2, r16)
    dcf4:	e0 ee ff 5b 	5bffeee0       call bab0 <_LDscale> }
    dcf8:	00 61 00 7e 	7e006100     { if (p0.new) r0 = #8
    dcfc:	0c c0 00 10 	1000c00c       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt dd10 <ldexpl+0x50> }
    dd00:	ec 61 70 10 	107061ec     { p0 = cmp.eq (r0, #1) ; if (!p0.new) jump:t dcd8 <ldexpl+0x18>
    dd04:	98 49 ff 5b 	5bff4998       call 7030 <_Feraise>
    dd08:	80 c0 00 78 	7800c080       r0 = #4 }
    dd0c:	e6 ff ff 59 	59ffffe6     jump dcd8 <ldexpl+0x18>
    dd10:	90 c9 ff 5b 	5bffc990     call 7030 <_Feraise>
    dd14:	e2 ff ff 59 	59ffffe2     jump dcd8 <ldexpl+0x18>
    dd18:	00 c0 00 7f 	7f00c000     nop
    dd1c:	00 c0 00 7f 	7f00c000     nop

0000dd20 <ldiv>:
    dd20:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    dd24:	08 46 00 5a 	5a004608       call e930 <__hexagon_divsi3>
    dd28:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    dd2c:	11 d1 00 ed 	ed00d111     r17 = mpyi (r0, r17)
    dd30:	01 50 31 f3 	f3315001     { r1 = sub (r16, r17)
    dd34:	40 1f 0c 3e 	3e0c1f40       r17:16 = memd (sp + #8) ; dealloc_return }
    dd38:	00 c0 00 7f 	7f00c000     nop
    dd3c:	00 c0 00 7f 	7f00c000     nop

0000dd40 <_Tls_get__Locale>:
    dd40:	20 40 00 78 	78004020     { r0 = #1
    dd44:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    dd48:	02 4f 00 00 	00004f02     { immext (#245888)
    dd4c:	90 c2 00 78 	7800c290       r16 = ##245908 }
    dd50:	01 c0 10 92 	9210c001     r1 = memw_locked (r16)
    dd54:	00 c0 41 75 	7541c000     p0 = cmp.gt (r1, #0)
    dd58:	06 c0 00 5c 	5c00c006     if (p0) jump dd64 <_Tls_get__Locale+0x24>
    dd5c:	00 c0 b0 a0 	a0b0c000     memw_locked (r16, p0) = r0
    dd60:	f8 e0 ff 5c 	5cffe0f8     if !p0 jump dd50 <_Tls_get__Locale+0x10>
    dd64:	02 4f 00 00 	00004f02     { immext (#245888)
    dd68:	00 42 00 78 	78004200       r0 = ##245904
    dd6c:	1a c0 01 10 	1001c01a       p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt dd98 <_Tls_get__Locale+0x58> }
    dd70:	a0 44 80 49 	498044a0     { r0 = memw (gp + #148)
    dd74:	00 c1 c2 24 	24c2c100       if (!cmp.gt (r0.new, #1)) jump:nt dd70 <_Tls_get__Locale+0x30> }
    dd78:	84 4d 00 5a 	5a004d84     { call f880 <__sys_Tlsget>
    dd7c:	80 c4 80 49 	4980c480       r0 = memw (gp + #144) }
    dd80:	11 40 60 70 	70604011     { r17 = r0
    dd84:	16 40 00 10 	10004016       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt ddac <_Tls_get__Locale+0x6c>
    dd88:	00 6a 00 7c 	7c006a00       r1:0 = combine (#80, #1)
    dd8c:	00 c0 00 7f 	7f00c000       nop }
    dd90:	00 40 71 70 	70714000     { r0 = r17
    dd94:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    dd98:	59 41 00 00 	00004159     { immext (#22080)
    dd9c:	01 46 00 78 	78004601       r1 = ##22128
    dda0:	bc cd 00 5a 	5a00cdbc       call f910 <__sys_Tlsalloc> }
    dda4:	e6 7f ff 59 	59ff7fe6     { jump dd70 <_Tls_get__Locale+0x30>
    dda8:	02 c0 50 3c 	3c50c002       memw (r16 + #0) = #2 }
    ddac:	ca dd ff 5b 	5bffddca     call 9940 <calloc>
    ddb0:	10 40 60 70 	70604010     { r16 = r0
    ddb4:	f0 40 30 10 	103040f0       p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt dd90 <_Tls_get__Locale+0x50>
    ddb8:	80 c4 80 49 	4980c480       r0 = memw (gp + #144) }
    ddbc:	01 40 70 70 	70704001     { r1 = r16
    ddc0:	42 cd 00 5a 	5a00cd42       call f840 <__sys_Tlsset> }
    ddc4:	32 44 00 00 	00004432     { immext (#68736)
    ddc8:	00 60 30 73 	73306000       r1:0 = combine (##68736, r16)
    ddcc:	0e c0 40 10 	1040c00e       p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt dde0 <_Tls_get__Locale+0xa0> }
    ddd0:	02 4a 00 78 	78004a02     { r2 = #80
    ddd4:	50 45 00 5a 	5a004550       call e870 <__hexagon_memcpy_likely_aligned_min32bytes_mult8bytes>
    ddd8:	11 c0 70 70 	7070c011       r17 = r16 }
    dddc:	da ff ff 59 	59ffffda     jump dd90 <_Tls_get__Locale+0x50>
    dde0:	00 40 70 70 	70704000     { r0 = r16
    dde4:	48 fc fe 5b 	5bfefc48       call 5670 <free> }
    dde8:	d4 ff ff 59 	59ffffd4     jump dd90 <_Tls_get__Locale+0x50>
    ddec:	00 c0 00 7f 	7f00c000     nop

0000ddf0 <localeconv>:
    ddf0:	a8 ff ff 59 	59ffffa8     jump dd40 <_Tls_get__Locale>
    ddf4:	00 c0 00 7f 	7f00c000     nop
    ddf8:	00 c0 00 7f 	7f00c000     nop
    ddfc:	00 c0 00 7f 	7f00c000     nop

0000de00 <open>:
    de00:	70 cb 00 58 	5800cb70     jump f4e0 <__sys_open>
    de04:	00 c0 00 7f 	7f00c000     nop
    de08:	00 c0 00 7f 	7f00c000     nop
    de0c:	00 c0 00 7f 	7f00c000     nop

0000de10 <sqrtl>:
    de10:	40 1c f4 eb 	ebf41c40     memd (sp + #-16) = r17:16 ; allocframe (#32)
    de14:	12 40 01 f5 	f5014012     { r19:18 = combine (r1, r0)
    de18:	c0 41 1d b0 	b01d41c0       r0 = add (r29, #14)
    de1c:	15 0a 00 ea 	ea000a15       memd (sp + #0) = r1:0 ; memd (sp + #16) = r19:18 }
    de20:	01 40 7d 70 	707d4001     { r1 = r29
    de24:	b0 f1 ff 5b 	5bfff1b0       call c180 <_LDunscale> }
    de28:	1e c1 00 10 	1000c11e     p0 = cmp.eq (r0, #1) ; if (p0.new) jump:nt de64 <sqrtl+0x54>
    de2c:	04 c2 00 10 	1000c204     p0 = cmp.eq (r0, #2) ; if (p0.new) jump:nt de34 <sqrtl+0x24>
    de30:	0a c0 40 10 	1040c00a     p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt de44 <sqrtl+0x34>
    de34:	00 52 13 f5 	f5135200     { r1:0 = combine (r19, r18)
    de38:	26 ca 00 5a 	5a00ca26       call f280 <__hexagon_sqrt> }
    de3c:	1c 1e 15 3e 	3e151e1c     r19:18 = memd (sp + #16) ; r17:16 = memd (sp + #24)
    de40:	1e c0 1e 96 	961ec01e     dealloc_return
    de44:	60 40 5d 91 	915d4060     { r0 = memh (r29 + #6)
    de48:	f8 c0 b2 26 	26b2c0f8       if (cmp.gt (r0.new, #-1)) jump:nt de34 <sqrtl+0x24> }
    de4c:	20 40 00 78 	78004020     { r0 = #1
    de50:	f2 c8 ff 5b 	5bffc8f2       call 7030 <_Feraise> }
    de54:	00 52 13 f5 	f5135200     { r1:0 = combine (r19, r18)
    de58:	16 ca 00 5a 	5a00ca16       call f280 <__hexagon_sqrt> }
    de5c:	1c 1e 15 3e 	3e151e1c     r19:18 = memd (sp + #16) ; r17:16 = memd (sp + #24)
    de60:	1e c0 1e 96 	961ec01e     dealloc_return
    de64:	60 40 5d 91 	915d4060     { r0 = memh (r29 + #6)
    de68:	e8 c0 b2 26 	26b2c0e8       if (cmp.gt (r0.new, #-1)) jump:nt de34 <sqrtl+0x24> }
    de6c:	20 40 00 78 	78004020     { r0 = #1
    de70:	e2 c8 ff 5b 	5bffc8e2       call 7030 <_Feraise> }
    de74:	f0 ff ff 59 	59fffff0     jump de54 <sqrtl+0x44>
    de78:	00 c0 00 7f 	7f00c000     nop
    de7c:	00 c0 00 7f 	7f00c000     nop

0000de80 <_Genld>:
    de80:	b0 44 00 5a 	5a0044b0     { call e7e0 <__save_r16_through_r25>
    de84:	09 c0 9d a0 	a09dc009       allocframe (#72) }
    de88:	12 41 02 f5 	f5024112     { r19:18 = combine (r2, r1)
    de8c:	10 40 60 70 	70604010       r16 = r0
    de90:	4c 30 39 30 	3039304c       r17 = r3 ; r20 = r4 }
    de94:	ae ff ff 5b 	5bffffae     call ddf0 <localeconv>
    de98:	00 40 51 75 	75514000     { p0 = cmp.gt (r17, #0)
    de9c:	c1 48 12 75 	751248c1       p1 = cmp.eq (r18, #70)
    dea0:	60 c1 80 91 	9180c160       r0 = memw (r0 + #44) }
    dea4:	33 44 00 00 	00004433     { immext (#68800)
    dea8:	13 42 80 7e 	7e804213       if !p0 r19 = ##68816
    deac:	31 40 80 7e 	7e804031       if !p0 r17 = #1
    deb0:	15 c0 20 91 	9120c015       r21 = memub (r0 + #0) }
    deb4:	c0 4c 12 75 	75124cc0     { p0 = cmp.eq (r18, #102)
    deb8:	a6 c1 00 5c 	5c00c1a6       if (p1) jump e000 <_Genld+0x180> }
    debc:	e0 6c 52 73 	73526ce0     { r0 = cmp.eq (r18, #103)
    dec0:	a2 c0 00 5c 	5c00c0a2       if (p0) jump e000 <_Genld+0x180> }
    dec4:	e0 48 12 75 	751248e0     { p0 = cmp.eq (r18, #71)
    dec8:	94 c8 00 5c 	5c00c894       if (p0.new) jump:nt dfec <_Genld+0x16c> }
    decc:	90 c0 40 10 	1040c090     p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt dfec <_Genld+0x16c>
    ded0:	20 4c 12 75 	75124c20     { p0 = cmp.eq (r18, #97)
    ded4:	0a 48 00 5c 	5c00480a       if (p0.new) jump:nt dee4 <_Genld+0x64>
    ded8:	12 ee 00 7e 	7e00ee12       if (p0.new) r18 = #112 }
    dedc:	20 48 12 75 	75124820     { p0 = cmp.eq (r18, #65)
    dee0:	12 ea 00 7e 	7e00ea12       if (p0.new) r18 = #80 }
    dee4:	b3 30 81 07 	078130b3     r1 = memw (r16 + #28) ; r3 = memb (r19 + #0)
    dee8:	82 04 10 51 	51100482     r0 = add (r1, #1) ; r2 = memw (r16 + #16)
    deec:	03 41 02 3b 	3b024103     { memb (r2 + r1 << #0) = r3
    def0:	07 c0 90 a1 	a190c007       memw (r16 + #28) = r0 }
    def4:	81 41 90 91 	91904181     { r1 = memw (r16 + #48)
    def8:	98 c0 d3 24 	24d3c098       if (!cmp.gt (r1.new, #0)) jump:nt e224 <_Genld+0x3a4> }
    defc:	81 c0 90 91 	9190c081     r1 = memw (r16 + #16)
    df00:	20 40 00 b0 	b0004020     { r0 = add (r0, #1)
    df04:	15 c0 01 3b 	3b01c015       memb (r1 + r0 << #0) = r21 }
    df08:	80 07 81 8c 	8c810780     r1 = memw (r16 + #48) ; memw (r16 + #28) = r0
    df0c:	1c c0 c1 10 	10c1c01c     p0 = cmp.gt (r1, #0) ; if (!p0.new) jump:nt df44 <_Genld+0xc4>
    df10:	f1 ff f1 bf 	bff1fff1     r17 = add (r17, #-1)
    df14:	11 40 f1 70 	70f14011     { r17 = sxth (r17)
    df18:	00 40 00 7f 	7f004000       nop
    df1c:	56 c1 95 20 	2095c156       if (cmp.gt (r17.new, r1)) jump:nt e1c0 <_Genld+0x340> }
    df20:	21 40 13 b0 	b0134021     { r1 = add (r19, #1)
    df24:	83 04 92 50 	50920483       r2 = r17 ; r3 = memw (r16 + #16) }
    df28:	00 40 03 f3 	f3034000     { r0 = add (r3, r0)
    df2c:	94 c1 ff 5b 	5bffc194       call 6250 <memcpy> }
    df30:	81 0c 80 07 	07800c81     r0 = memw (r16 + #28) ; r1 = memw (r16 + #48)
    df34:	01 41 31 f3 	f3314101     { r1 = sub (r1, r17)
    df38:	00 40 11 f3 	f3114000       r0 = add (r17, r0)
    df3c:	08 d5 b0 a1 	a1b0d508       memw (r16 + #32) = r1.new }
    df40:	07 c0 90 a1 	a190c007     memw (r16 + #28) = r0
    df44:	e0 7f 74 75 	75747fe0     { p0 = cmp.gt (r20, #-1)
    df48:	81 c0 90 91 	9190c081       r1 = memw (r16 + #16) }
    df4c:	00 40 01 f3 	f3014000     { r0 = add (r1, r0)
    df50:	12 c0 01 3b 	3b01c012       memb (r1 + r0 << #0) = r18 }
    df54:	37 40 00 b0 	b0004037     { r23 = add (r0, #1)
    df58:	82 60 20 5c 	5c206082       if !p0 jump e258 <_Genld+0x3d8>
    df5c:	00 40 00 00 	00004000       immext (#0)
    df60:	8b e0 00 38 	3800e08b       if (p0) memb (r0 + #1) = ##43 }
    df64:	68 40 1c 10 	101c4068     { p0 = cmp.eq (r20, #0) ; if (p0.new) jump:nt e234 <_Genld+0x3b4>
    df68:	00 40 00 7f 	7f004000       nop
    df6c:	40 3a ff 31 	31ff3a40       r23 = add (r23, #1) ; if (p0.new) r0 = #0 }
    df70:	18 41 1d b0 	b01d4118     { r24 = add (r29, #8)
    df74:	16 40 7d 70 	707d4016       r22 = r29
    df78:	69 2c 0b 28 	280b2c69       r19 = #0 ; r17 = add (sp, #24) }
    df7c:	15 c0 78 70 	7078c015     r21 = r24
    df80:	40 61 34 73 	73346140     { r1:0 = combine (#10, r20)
    df84:	10 44 00 5a 	5a004410       call e7a0 <div>
    df88:	33 c0 13 b0 	b013c033       r19 = add (r19, #1) }
    df8c:	11 08 00 e8 	e8000811     memw (sp + #0) = r0 ; memw (sp + #4) = r1
    df90:	00 c0 d6 91 	91d6c000     r1:0 = memd (r22 + #0)
    df94:	00 c0 d1 a1 	a1d1c000     memd (r17 + #0) = r1:0
    df98:	9c 20 90 01 	0190209c     r0 = memw (r17 + #4) ; r20 = memh (r17 + #0)
    df9c:	00 40 73 70 	70734000     { r0 = r19
    dfa0:	f2 60 bc 10 	10bc60f2       p0 = cmp.gt (r20, #0) ; if (p0.new) jump:t df80 <_Genld+0x100>
    dfa4:	08 c0 15 ab 	ab15c008       memb (r21 ++ #1) = r0 }
    dfa8:	46 41 1b 10 	101b4146     { p0 = cmp.eq (r19, #1) ; if (p0.new) jump:nt e234 <_Genld+0x3b4>
    dfac:	00 c0 00 7f 	7f00c000       nop }
    dfb0:	f3 78 78 db 	db7878f3     { r24 = add (r24, add (r19, #-1))
    dfb4:	f0 30 82 2c 	2c8230f0       r2 = add (sp, #32) ; r0 = r23 }
    dfb8:	22 e1 b8 db 	dbb8e122     r1 = add (r24, sub (#25, r2))
    dfbc:	08 c0 01 60 	6001c008     loop0 (dfc0 <_Genld+0x140>, r1)
    dfc0:	e1 c1 18 9b 	9b18c1e1     r1 = memb (r24 ++ #-1)
    dfc4:	01 86 01 b0 	b0018601     { r1 = add (r1, #48)
    dfc8:	08 c3 a0 ab 	aba0c308       memb (r0 ++ #1) = r1.new }:endloop0
    dfcc:	17 d3 17 f3 	f317d317     r23 = add (r23, r19)
    dfd0:	8b 04 80 07 	0780048b     r0 = memw (r16 + #28) ; r19 = memw (r16 + #16)
    dfd4:	37 40 93 ef 	ef934037     { r23 -= add (r19, r0)
    dfd8:	c0 43 70 91 	917043c0       r0 = memuh (r16 + #60)
    dfdc:	09 d5 b0 a1 	a1b0d509       memw (r16 + #36) = r23.new }
    dfe0:	80 42 00 76 	76004280     { r0 = and (r0, #20)
    dfe4:	6c d0 02 24 	2402d06c       if (cmp.eq (r0.new, #16)) jump:nt e0b8 <_Genld+0x238> }
    dfe8:	2e c4 00 58 	5800c42e     jump e844 <__restore_r16_through_r25_and_deallocframe>
    dfec:	60 7f 74 75 	75747f60     { p0 = cmp.gt (r20, #-5)
    dff0:	a2 48 20 5c 	5c2048a2       if !p0.new jump:nt e130 <_Genld+0x2b0>
    dff4:	81 41 90 47 	47904181       if !p0.new r1 = memw (r16 + #48)
    dff8:	81 c1 90 43 	4390c181       if (p0.new) r1 = memw (r16 + #48) }
    dffc:	9a cc c1 14 	14c1cc9a     p0 = cmp.gt (r1, r20) ; if (!p0.new) jump:nt e130 <_Genld+0x2b0>
    e000:	34 c0 14 b0 	b014c034     r20 = add (r20, #1)
    e004:	6c 41 00 5c 	5c00416c     { if (p1) jump e0dc <_Genld+0x25c>
    e008:	6c 48 00 5c 	5c00486c       if (p0.new) jump:nt e0dc <_Genld+0x25c>
    e00c:	14 40 f4 70 	70f44014       r20 = sxth (r20)
    e010:	c0 cc 12 75 	7512ccc0       p0 = cmp.eq (r18, #102) }
    e014:	c0 c3 70 91 	9170c3c0     r0 = memuh (r16 + #60)
    e018:	00 43 20 85 	85204300     { p0 = !tstbit (r0, #3)
    e01c:	d8 48 00 5c 	5c0048d8       if (p0.new) jump:nt e1c8 <_Genld+0x348>
    e020:	00 40 74 70 	70744000       r0 = r20
    e024:	81 c1 90 47 	4790c181       if !p0.new r1 = memw (r16 + #48) }
    e028:	01 41 34 f3 	f3344101     { r1 = sub (r1, r20)
    e02c:	0c d3 b0 a1 	a1b0d30c       memw (r16 + #48) = r1.new }
    e030:	e0 7f 61 75 	75617fe0     { p0 = cmp.gt (r1, #-1)
    e034:	00 c6 d0 39 	39d0c600       if !p0.new memw (r16 + #48) = #0 }
    e038:	56 60 8c 10 	108c6056     { p0 = cmp.gt (r20, #0) ; if (p0.new) jump:t e0e4 <_Genld+0x264>
    e03c:	00 c0 00 7f 	7f00c000       nop }
    e040:	03 46 00 78 	78004603     { r3 = #48
    e044:	81 04 82 07 	07820481       r2 = memw (r16 + #28) ; r1 = memw (r16 + #16) }
    e048:	22 40 02 b0 	b0024022     { r2 = add (r2, #1)
    e04c:	03 c2 01 3b 	3b01c203       memb (r1 + r2 << #0) = r3 }
    e050:	82 07 81 8c 	8c810782     r1 = memw (r16 + #48) ; memw (r16 + #28) = r2
    e054:	12 c0 d1 10 	10d1c012     p0 = cmp.gt (r1, #0) ; if (!p0.new) jump:nt e278 <_Genld+0x3f8>
    e058:	83 04 21 51 	51210483     r1 = add (r2, #1) ; r3 = memw (r16 + #16)
    e05c:	15 42 03 3b 	3b034215     { memb (r3 + r2 << #0) = r21
    e060:	07 c1 90 a1 	a190c107       memw (r16 + #28) = r1 }
    e064:	81 c1 90 91 	9190c181     r1 = memw (r16 + #48)
    e068:	14 40 54 76 	76544014     { r20 = sub (#0, r20)
    e06c:	0a c1 c2 20 	20c2c10a       if (!cmp.gt (r20.new, r1)) jump:nt e07c <_Genld+0x1fc> }
    e070:	00 c0 41 76 	7641c000     r0 = sub (#0, r1)
    e074:	00 c0 e0 70 	70e0c000     r0 = sxth (r0)
    e078:	14 c0 40 76 	7640c014     r20 = sub (#0, r0)
    e07c:	8c 08 10 78 	7810088c     r0 = add (r1, r0) ; memw (r16 + #32) = r20
    e080:	06 40 c9 14 	14c94006     { p0 = cmp.gt (r17, r0) ; if (!p0.new) jump:nt e08c <_Genld+0x20c>
    e084:	0c c0 90 a1 	a190c00c       memw (r16 + #48) = r0 }
    e088:	11 c0 e0 70 	70e0c011     r17 = sxth (r0)
    e08c:	01 40 73 70 	70734001     { r1 = r19
    e090:	02 40 71 70 	70714002       r2 = r17
    e094:	80 07 83 04 	04830780       r3 = memw (r16 + #16) ; r0 = memw (r16 + #28) }
    e098:	dc 40 ff 5b 	5bff40dc     { call 6250 <memcpy>
    e09c:	89 09 30 78 	78300989       r0 = add (r3, r0) ; memw (r16 + #36) = r17 }
    e0a0:	81 41 90 91 	91904181     { r1 = memw (r16 + #48)
    e0a4:	c0 c3 70 91 	9170c3c0       r0 = memuh (r16 + #60) }
    e0a8:	11 41 31 f3 	f3314111     { r17 = sub (r1, r17)
    e0ac:	80 42 00 76 	76004280       r0 = and (r0, #20)
    e0b0:	0a d5 b0 a1 	a1b0d50a       memw (r16 + #40) = r17.new }
    e0b4:	9a f0 70 10 	1070f09a     p0 = cmp.eq (r0, #16) ; if (!p0.new) jump:t dfe8 <_Genld+0x168>
    e0b8:	80 05 82 07 	07820580     r2 = memw (r16 + #28) ; r0 = memw (r16 + #20)
    e0bc:	83 09 81 08 	08810983     r1 = memw (r16 + #32) ; r3 = memw (r16 + #36)
    e0c0:	21 40 02 ef 	ef024021     { r1 += add (r2, r0)
    e0c4:	82 0e 80 0a 	0a800e82       r0 = memw (r16 + #40) ; r2 = memw (r16 + #56) }
    e0c8:	20 c3 01 ef 	ef01c320     r0 += add (r1, r3)
    e0cc:	00 40 42 f2 	f2424000     { p0 = cmp.gt (r2, r0)
    e0d0:	00 62 20 fb 	fb206200       if (p0.new) r0 = sub (r2, r0)
    e0d4:	30 d2 b0 42 	42b0d230       if (p0.new) memw (r16 + #24) = r0.new }
    e0d8:	b6 c3 00 58 	5800c3b6     jump e844 <__restore_r16_through_r25_and_deallocframe>
    e0dc:	00 40 74 70 	70744000     { r0 = r20
    e0e0:	b2 c0 fc 10 	10fcc0b2       p0 = cmp.gt (r20, #0) ; if (!p0.new) jump:nt e040 <_Genld+0x1c0> }
    e0e4:	3a 49 cc 14 	14cc493a     { p0 = cmp.gt (r20, r17) ; if (!p0.new) jump:nt e158 <_Genld+0x2d8>
    e0e8:	83 40 90 43 	43904083       if (p0.new) r3 = memw (r16 + #16)
    e0ec:	e0 c0 90 43 	4390c0e0       if (p0.new) r0 = memw (r16 + #28) }
    e0f0:	02 40 71 70 	70714002     { r2 = r17
    e0f4:	14 54 31 f3 	f3315414       r20 = sub (r20, r17)
    e0f8:	30 38 b1 30 	30b13830       r1 = r19 ; r0 = add (r3, r0) }
    e0fc:	aa c0 ff 5b 	5bffc0aa     call 6250 <memcpy>
    e100:	8c 08 80 87 	8780088c     r0 = memw (r16 + #28) ; memw (r16 + #32) = r20
    e104:	11 40 11 f3 	f3114011     { r17 = add (r17, r0)
    e108:	81 41 90 91 	91904181       r1 = memw (r16 + #48)
    e10c:	07 d5 b0 a1 	a1b0d507       memw (r16 + #28) = r17.new }
    e110:	7a c0 c1 10 	10c1c07a     p0 = cmp.gt (r1, #0) ; if (!p0.new) jump:nt e204 <_Genld+0x384>
    e114:	80 c0 90 91 	9190c080     r0 = memw (r16 + #16)
    e118:	15 d1 00 3b 	3b00d115     memb (r0 + r17 << #0) = r21
    e11c:	81 41 90 91 	91904181     { r1 = memw (r16 + #48)
    e120:	81 c4 50 3f 	3f50c481       memw (r16 + #36) += #1 }
    e124:	c0 c3 70 91 	9170c3c0     r0 = memuh (r16 + #60)
    e128:	5c 7f ff 59 	59ff7f5c     { jump dfe0 <_Genld+0x160>
    e12c:	0a c1 90 a1 	a190c10a       memw (r16 + #40) = r1 }
    e130:	02 40 71 70 	70714002     { r2 = r17
    e134:	60 c9 81 14 	1481c960       p0 = cmp.gt (r1, r17) ; if (p0.new) jump:nt e1f0 <_Genld+0x370> }
    e138:	02 c0 61 70 	7061c002     r2 = r1
    e13c:	e1 ff e2 bf 	bfe2ffe1     r1 = add (r2, #-1)
    e140:	e0 7f 61 75 	75617fe0     { p0 = cmp.gt (r1, #-1)
    e144:	0c 41 90 a1 	a190410c       memw (r16 + #48) = r1
    e148:	00 c6 d0 39 	39d0c600       if !p0.new memw (r16 + #48) = #0 }
    e14c:	00 c0 00 75 	7500c000     p0 = cmp.eq (r0, #0)
    e150:	b2 68 32 7a 	7a3268b2     { r18 = mux (p0, #69, #101)
    e154:	ca fe ff 59 	59fffeca       jump dee4 <_Genld+0x64> }
    e158:	01 40 73 70 	70734001     { r1 = r19
    e15c:	02 40 74 70 	70744002       r2 = r20
    e160:	80 07 83 04 	04830780       r3 = memw (r16 + #16) ; r0 = memw (r16 + #28) }
    e164:	11 51 34 d5 	d5345111     { r17 = sub (r17.l, r20.l)
    e168:	76 40 ff 5b 	5bff4076       call 6250 <memcpy>
    e16c:	00 c0 03 f3 	f303c000       r0 = add (r3, r0) }
    e170:	81 0c 80 07 	07800c81     r0 = memw (r16 + #28) ; r1 = memw (r16 + #48)
    e174:	00 40 14 f3 	f3144000     { r0 = add (r20, r0)
    e178:	50 40 c1 10 	10c14050       p0 = cmp.gt (r1, #0) ; if (!p0.new) jump:nt e214 <_Genld+0x394>
    e17c:	07 d4 b0 a1 	a1b0d407       memw (r16 + #28) = r0.new }
    e180:	81 c0 90 91 	9190c081     r1 = memw (r16 + #16)
    e184:	20 40 00 b0 	b0004020     { r0 = add (r0, #1)
    e188:	15 c0 01 3b 	3b01c015       memb (r1 + r0 << #0) = r21 }
    e18c:	80 07 81 8c 	8c810780     r1 = memw (r16 + #48) ; memw (r16 + #28) = r0
    e190:	04 c1 c9 14 	14c9c104     p0 = cmp.gt (r17, r1) ; if (!p0.new) jump:nt e198 <_Genld+0x318>
    e194:	11 c0 e1 70 	70e1c011     r17 = sxth (r1)
    e198:	01 54 13 f3 	f3135401     { r1 = add (r19, r20)
    e19c:	83 04 92 50 	50920483       r2 = r17 ; r3 = memw (r16 + #16) }
    e1a0:	00 40 03 f3 	f3034000     { r0 = add (r3, r0)
    e1a4:	58 c0 ff 5b 	5bffc058       call 6250 <memcpy> }
    e1a8:	80 41 90 91 	91904180     { r0 = memw (r16 + #48)
    e1ac:	91 c3 50 3e 	3e50c391       memw (r16 + #28) += r17 }
    e1b0:	11 40 31 f3 	f3314011     { r17 = sub (r0, r17)
    e1b4:	18 7f ff 59 	59ff7f18       jump dfe0 <_Genld+0x160>
    e1b8:	c0 43 70 91 	917043c0       r0 = memuh (r16 + #60)
    e1bc:	08 d7 b0 a1 	a1b0d708       memw (r16 + #32) = r17.new }
    e1c0:	11 40 e1 70 	70e14011     { r17 = sxth (r1)
    e1c4:	b0 fe ff 59 	59fffeb0       jump df20 <_Genld+0xa0> }
    e1c8:	80 0c 91 50 	50910c80     r1 = r17 ; r0 = memw (r16 + #48)
    e1cc:	00 51 40 f2 	f2405100     { p0 = cmp.gt (r0, r17)
    e1d0:	01 60 80 74 	74806001       if !p0.new r1 = add (r0, #0)
    e1d4:	00 40 74 70 	70744000       r0 = r20
    e1d8:	60 d1 90 42 	4290d160       if (p0.new) memw (r16 + #48) = r17 }
    e1dc:	01 41 34 f3 	f3344101     { r1 = sub (r1, r20)
    e1e0:	0c d3 b0 a1 	a1b0d30c       memw (r16 + #48) = r1.new }
    e1e4:	e0 7f 61 75 	75617fe0     { p0 = cmp.gt (r1, #-1)
    e1e8:	2a 7f ff 59 	59ff7f2a       jump e038 <_Genld+0x1b8>
    e1ec:	00 c6 d0 39 	39d0c600       if !p0.new memw (r16 + #48) = #0 }
    e1f0:	c3 c3 70 91 	9170c3c3     r3 = memuh (r16 + #60)
    e1f4:	00 43 23 85 	85234300     { p0 = !tstbit (r3, #3)
    e1f8:	a4 68 df 5c 	5cdf68a4       if (p0.new) jump:nt e13c <_Genld+0x2bc>
    e1fc:	60 d1 90 42 	4290d160       if (p0.new) memw (r16 + #48) = r17 }
    e200:	9c ff ff 59 	59ffff9c     jump e138 <_Genld+0x2b8>
    e204:	c0 c3 70 91 	9170c3c0     r0 = memuh (r16 + #60)
    e208:	00 43 20 85 	85204300     { p0 = !tstbit (r0, #3)
    e20c:	90 e8 df 5c 	5cdfe890       if (p0.new) jump:nt e128 <_Genld+0x2a8> }
    e210:	82 ff ff 59 	59ffff82     jump e114 <_Genld+0x294>
    e214:	c2 c3 70 91 	9170c3c2     r2 = memuh (r16 + #60)
    e218:	00 43 22 85 	85224300     { p0 = !tstbit (r2, #3)
    e21c:	bc e8 df 5c 	5cdfe8bc       if (p0.new) jump:nt e190 <_Genld+0x310> }
    e220:	b0 ff ff 59 	59ffffb0     jump e180 <_Genld+0x300>
    e224:	c1 c3 70 91 	9170c3c1     r1 = memuh (r16 + #60)
    e228:	00 43 21 85 	85214300     { p0 = !tstbit (r1, #3)
    e22c:	8e c8 df 5c 	5cdfc88e       if (p0.new) jump:nt df44 <_Genld+0xc4> }
    e230:	66 fe ff 59 	59fffe66     jump defc <_Genld+0x7c>
    e234:	a0 48 12 75 	751248a0     { p0 = cmp.eq (r18, #69)
    e238:	1c c8 00 5c 	5c00c81c       if (p0.new) jump:nt e26c <_Genld+0x3ec> }
    e23c:	a0 4c 12 75 	75124ca0     { p0 = cmp.eq (r18, #101)
    e240:	18 c8 00 5c 	5c00c818       if (p0.new) jump:nt e26c <_Genld+0x3ec> }
    e244:	22 40 40 10 	10404022     { p0 = cmp.eq (r0, #0) ; if (!p0.new) jump:nt e288 <_Genld+0x408>
    e248:	00 40 00 00 	00004000       immext (#0)
    e24c:	10 e0 17 39 	3917e010       if (p0.new) memb (r23 + #0) = ##48 }
    e250:	37 40 17 b0 	b0174037     { r23 = add (r23, #1)
    e254:	c0 fe ff 59 	59fffec0       jump dfd0 <_Genld+0x150> }
    e258:	14 40 54 76 	76544014     { r20 = sub (#0, r20)
    e25c:	37 40 17 b0 	b0174037       r23 = add (r23, #1)
    e260:	ad c0 00 3c 	3c00c0ad       memb (r0 + #1) = #45 }
    e264:	14 40 f4 70 	70f44014     { r20 = sxth (r20)
    e268:	86 fe ff 59 	59fffe86       jump df70 <_Genld+0xf0> }
    e26c:	37 40 17 b0 	b0174037     { r23 = add (r23, #1)
    e270:	ec 7f ff 59 	59ff7fec       jump e244 <_Genld+0x3c4>
    e274:	30 c0 17 3c 	3c17c030       memb (r23 + #0) = #48 }
    e278:	c3 c3 70 91 	9170c3c3     r3 = memuh (r16 + #60)
    e27c:	00 43 23 85 	85234300     { p0 = !tstbit (r3, #3)
    e280:	f6 c8 df 5c 	5cdfc8f6       if (p0.new) jump:nt e068 <_Genld+0x1e8> }
    e284:	ea fe ff 59 	59fffeea     jump e058 <_Genld+0x1d8>
    e288:	18 41 1d b0 	b01d4118     { r24 = add (r29, #8)
    e28c:	94 c1 2b 16 	162bc194       r19 = #1 ; jump dfb0 <_Genld+0x130> }

0000e290 <_LDint>:
    e290:	70 c4 ff 59 	59ffc470     jump 6b70 <_Dint>
    e294:	00 c0 00 7f 	7f00c000     nop
    e298:	00 c0 00 7f 	7f00c000     nop
    e29c:	00 c0 00 7f 	7f00c000     nop

0000e2a0 <dmul>:
    e2a0:	10 40 60 70 	70604010     { r16 = r0
    e2a4:	30 1c f4 eb 	ebf41c30       memd (sp + #-16) = r17:16 ; allocframe (#24) }
    e2a8:	01 40 70 70 	70704001     { r1 = r16
    e2ac:	c0 41 1d b0 	b01d41c0       r0 = add (r29, #14)
    e2b0:	03 08 12 e8 	e8120803       memw (sp + #4) = r2 ; memw (sp + #0) = r3 }
    e2b4:	66 ef ff 5b 	5bffef66     call c180 <_LDunscale>
    e2b8:	00 40 d0 91 	91d04000     { r1:0 = memd (r16 + #0)
    e2bc:	22 c0 9d 91 	919dc022       r2 = memw (r29 + #4) }
    e2c0:	90 46 00 5a 	5a004690     { call efe0 <__hexagon_muldf3>
    e2c4:	03 c0 9d 91 	919dc003       r3 = memw (r29 + #0) }
    e2c8:	00 40 70 70 	70704000     { r0 = r16
    e2cc:	f4 6b ff 5b 	5bff6bf4       call bab0 <_LDscale>
    e2d0:	e1 40 5d 91 	915d40e1       r1 = memh (r29 + #14)
    e2d4:	00 c0 d0 a1 	a1d0c000       memd (r16 + #0) = r1:0 }
    e2d8:	40 1f 14 3e 	3e141f40     r17:16 = memd (sp + #16) ; dealloc_return
    e2dc:	00 c0 00 7f 	7f00c000     nop

0000e2e0 <_LDtentox>:
    e2e0:	84 42 00 5a 	5a004284     { call e7e8 <__save_r16_through_r21>
    e2e4:	40 3c 20 79 	79203c40       p0 = cmp.eq (r2, #0) ; allocframe (#32) }
    e2e8:	10 40 62 70 	70624010     { r16 = r2
    e2ec:	4a 40 00 5c 	5c00404a       if (p0) jump e37c <_LDtentox+0x9c>
    e2f0:	00 2a 3c 70 	703c2a00       r20 = r3 ; memd (sp + #0) = r1:0 }
    e2f4:	c2 c4 c0 49 	49c0c4c2     r3:2 = memd (gp + #304)
    e2f8:	00 c2 e0 d2 	d2e0c200     p0 = dfcmp.eq (r1:0, r3:2)
    e2fc:	40 c0 00 5c 	5c00c040     if (p0) jump e37c <_LDtentox+0x9c>
    e300:	33 44 00 00 	00004433     { immext (#68800)
    e304:	12 43 00 78 	78004312       r18 = ##68824
    e308:	5a 41 c8 11 	11c8415a       p0 = cmp.gt (r16, #-1) ; if (!p0.new) jump:nt e3b4 <_LDtentox+0xd4>
    e30c:	00 c0 00 7f 	7f00c000       nop }
    e310:	11 40 00 78 	78004011     { r17 = #0
    e314:	00 40 00 7f 	7f004000       nop
    e318:	00 40 00 7f 	7f004000       nop
    e31c:	82 c4 c0 49 	49c0c482       r3:2 = memd (gp + #288) }
    e320:	00 40 30 85 	85304000     { p0 = !tstbit (r16, #0)
    e324:	10 41 10 8c 	8c104110       r16 = asr (r16, #1)
    e328:	31 40 11 b0 	b0114031       r17 = add (r17, #1)
    e32c:	00 c2 03 f5 	f503c200       r1:0 = combine (r3, r2) }
    e330:	08 40 00 5c 	5c004008     { if (p0) jump e340 <_LDtentox+0x60>
    e334:	58 46 00 5a 	5a004658       call efe0 <__hexagon_muldf3>
    e338:	02 c0 d2 45 	45d2c002       if !p0 r3:2 = memd (r18 + #0) }
    e33c:	02 c0 01 f5 	f501c002     r3:2 = combine (r1, r0)
    e340:	01 40 50 75 	75504001     { p1 = cmp.gt (r16, #0)
    e344:	e0 40 91 75 	759140e0       p0 = cmp.gtu (r17, #7)
    e348:	12 c1 12 b0 	b012c112       r18 = add (r18, #8) }
    e34c:	20 c0 80 7a 	7a80c020     r0 = mux (p1, #1, #0)
    e350:	01 c0 00 75 	7500c001     p1 = cmp.eq (r0, #0)
    e354:	33 40 80 7a 	7a804033     { r19 = mux (p1, #1, #0)
    e358:	16 40 20 5c 	5c204016       if !p0 jump e380 <_LDtentox+0xa0>
    e35c:	00 c0 00 7f 	7f00c000       nop }
    e360:	00 40 7d 70 	707d4000     { r0 = r29
    e364:	a0 ff ff 5b 	5bffffa0       call e2a0 <dmul> }
    e368:	10 43 cb 11 	11cb4310     { p0 = tstbit (r19, #0) ; if (!p0.new) jump:nt e388 <_LDtentox+0xa8>
    e36c:	00 c0 00 7f 	7f00c000       nop }
    e370:	28 40 40 dd 	dd404028     { p0 = cmph.gtu (r0, #1)
    e374:	74 c8 20 5c 	5c20c874       if !p0.new jump:nt e458 <_LDtentox+0x178> }
    e378:	00 c0 dd 91 	91ddc000     r1:0 = memd (r29 + #0)
    e37c:	6a c2 00 58 	5800c26a     jump e850 <__restore_r16_through_r21_and_deallocframe>
    e380:	d0 61 ff 5c 	5cff61d0     { if !p1 jump e320 <_LDtentox+0x40>
    e384:	f0 ff ff 59 	59fffff0       jump e360 <_LDtentox+0x80> }
    e388:	f4 e1 b0 11 	11b0e1f4     p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t e370 <_LDtentox+0x90>
    e38c:	06 60 48 10 	10486006     { p0 = cmp.eq (r16, #0) ; if (!p0.new) jump:t e398 <_LDtentox+0xb8>
    e390:	f2 ff ff 59 	59fffff2       jump e370 <_LDtentox+0x90> }
    e394:	ee e1 df 5c 	5cdfe1ee     if (p1) jump e370 <_LDtentox+0x90>
    e398:	00 40 7d 70 	707d4000     { r0 = r29
    e39c:	84 7f ff 5b 	5bff7f84       call e2a0 <dmul>
    e3a0:	f0 7f f0 bf 	bff07ff0       r16 = add (r16, #-1)
    e3a4:	c2 cd c0 49 	49c0cdc2       r3:2 = memd (gp + #880) }
    e3a8:	f6 61 f0 11 	11f061f6     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:t e394 <_LDtentox+0xb4>
    e3ac:	e4 7f ff 59 	59ff7fe4       jump e370 <_LDtentox+0x90>
    e3b0:	01 c0 10 75 	7510c001       p1 = cmp.eq (r16, #0) }
    e3b4:	10 40 50 76 	76504010     { r16 = sub (#0, r16)
    e3b8:	33 44 00 00 	00004433       immext (#68800)
    e3bc:	12 43 00 78 	78004312       r18 = ##68824
    e3c0:	82 c4 c0 49 	49c0c482       r3:2 = memd (gp + #288) }
    e3c4:	11 40 00 78 	78004011     { r17 = #0
    e3c8:	00 40 00 7f 	7f004000       nop
    e3cc:	00 c0 00 7f 	7f00c000       nop }
    e3d0:	00 40 30 85 	85304000     { p0 = !tstbit (r16, #0)
    e3d4:	30 41 10 8c 	8c104130       r16 = lsr (r16, #1)
    e3d8:	31 40 11 b0 	b0114031       r17 = add (r17, #1)
    e3dc:	00 c2 03 f5 	f503c200       r1:0 = combine (r3, r2) }
    e3e0:	08 40 00 5c 	5c004008     { if (p0) jump e3f0 <_LDtentox+0x110>
    e3e4:	00 46 00 5a 	5a004600       call efe0 <__hexagon_muldf3>
    e3e8:	02 c0 d2 45 	45d2c002       if !p0 r3:2 = memd (r18 + #0) }
    e3ec:	02 c0 01 f5 	f501c002     r3:2 = combine (r1, r0)
    e3f0:	01 40 10 75 	75104001     { p1 = cmp.eq (r16, #0)
    e3f4:	00 60 70 73 	73706000       r0 = !cmp.eq (r16, #0)
    e3f8:	e0 40 91 75 	759140e0       p0 = cmp.gtu (r17, #7)
    e3fc:	12 c1 12 b0 	b012c112       r18 = add (r18, #8) }
    e400:	35 40 80 7a 	7a804035     { r21 = mux (p1, #1, #0)
    e404:	01 c0 00 75 	7500c001       p1 = cmp.eq (r0, #0) }
    e408:	33 40 80 7a 	7a804033     { r19 = mux (p1, #1, #0)
    e40c:	24 c0 20 5c 	5c20c024       if !p0 jump e450 <_LDtentox+0x170> }
    e410:	98 44 00 5a 	5a004498     { call ed40 <__hexagon_divdf3>
    e414:	80 c4 c0 49 	49c0c480       r1:0 = memd (gp + #288) }
    e418:	02 40 01 f5 	f5014002     { r3:2 = combine (r1, r0)
    e41c:	44 7f ff 5b 	5bff7f44       call e2a0 <dmul>
    e420:	00 c0 7d 70 	707dc000       r0 = r29 }
    e424:	a6 c3 bb 11 	11bbc3a6     p0 = tstbit (r19, #0) ; if (p0.new) jump:nt e370 <_LDtentox+0x90>
    e428:	01 40 15 85 	85154001     { p1 = tstbit (r21, #0)
    e42c:	a4 e1 b0 11 	11b0e1a4       p0 = cmp.gt (r0, #-1) ; if (p0.new) jump:t e370 <_LDtentox+0x90> }
    e430:	00 40 bd 74 	74bd4000     { if !p1 r0 = add (r29, #0)
    e434:	a0 61 df 5c 	5cdf61a0       if (p1) jump e370 <_LDtentox+0x90>
    e438:	f0 5f b0 74 	74b05ff0       if !p1 r16 = add (r16, #-1)
    e43c:	e2 cd c0 49 	49c0cde2       r3:2 = memd (gp + #888) }
    e440:	30 ff ff 5b 	5bffff30     call e2a0 <dmul>
    e444:	f6 61 f0 11 	11f061f6     { p0 = cmp.gt (r0, #-1) ; if (!p0.new) jump:t e430 <_LDtentox+0x150>
    e448:	96 7f ff 59 	59ff7f96       jump e370 <_LDtentox+0x90>
    e44c:	01 c0 10 75 	7510c001       p1 = cmp.eq (r16, #0) }
    e450:	c0 61 ff 5c 	5cff61c0     { if !p1 jump e3d0 <_LDtentox+0xf0>
    e454:	e0 ff ff 59 	59ffffe0       jump e410 <_LDtentox+0x130> }
    e458:	dc da ff 5b 	5bffdadc     call 9a10 <_Geterrno>
    e45c:	8e 40 3c 10 	103c408e     { p0 = cmp.eq (r20, #0) ; if (p0.new) jump:nt e378 <_LDtentox+0x98>
    e460:	00 40 dd 91 	91dd4000       r1:0 = memd (r29 + #0)
    e464:	22 c0 40 3c 	3c40c022       memw (r0 + #0) = #34 }
    e468:	8a 7f ff 59 	59ff7f8a     { jump e37c <_LDtentox+0x9c>
    e46c:	60 c0 54 3f 	3f54c060       memw (r20 + #0) = setbit (#0) }

0000e470 <_LDtest>:
    e470:	08 c4 ff 59 	59ffc408     jump 6c80 <_Dtest>
    e474:	00 c0 00 7f 	7f00c000     nop
    e478:	00 c0 00 7f 	7f00c000     nop
    e47c:	00 c0 00 7f 	7f00c000     nop

0000e480 <_Stoflt>:
    e480:	24 41 04 e0 	e0044124     { r4 = + mpyi (r4, #9)
    e484:	a0 41 00 5a 	5a0041a0       call e7c0 <__save_r16_through_r27>
    e488:	0c c0 9d a0 	a09dc00c       allocframe (#96) }
    e48c:	10 43 01 f5 	f5014310     { r17:16 = combine (r1, r3)
    e490:	0b 30 d1 2a 	2ad1300b       r1 = #45 ; r19 = r0 }
    e494:	12 44 a1 d5 	d5a14412     { r18 = min (r4, r1)
    e498:	19 40 62 70 	70624019       r25 = r2
    e49c:	81 10 80 f0 	f0801081       memw (r16 + #0) = #0 ; memw (r16 + #4) = #0 }
    e4a0:	00 c0 31 91 	9131c000     r0 = memub (r17 + #0)
    e4a4:	00 46 00 75 	75004600     { p0 = cmp.eq (r0, #48)
    e4a8:	10 48 20 5c 	5c204810       if !p0.new jump:nt e4c4 <_Stoflt+0x44>
    e4ac:	17 e0 80 7e 	7e80e017       if !p0.new r23 = #0 }
    e4b0:	31 c0 11 b0 	b011c031     r17 = add (r17, #1)
    e4b4:	00 c0 31 91 	9131c000     r0 = memub (r17 + #0)
    e4b8:	00 46 00 75 	75004600     { p0 = cmp.eq (r0, #48)
    e4bc:	fc 78 df 5c 	5cdf78fc       if (p0.new) jump:t e4b0 <_Stoflt+0x30>
    e4c0:	37 c0 00 78 	7800c037       r23 = #1 }
    e4c4:	18 40 7d 70 	707d4018     { r24 = r29
    e4c8:	10 40 0c 16 	160c4010       r20 = #0 ; jump e4e4 <_Stoflt+0x64>
    e4cc:	00 c0 00 7f 	7f00c000       nop }
    e4d0:	34 60 94 74 	74946034     { if !p0.new r20 = add (r20, #1)
    e4d4:	08 43 cd 11 	11cd4308       p0 = tstbit (r21, #0) ; if (!p0.new) jump:nt e4e0 <_Stoflt+0x60>
    e4d8:	01 d4 18 37 	3718d401       if !p0.new memb (r24 + r20 << #0) = r1 }
    e4dc:	01 c0 50 3f 	3f50c001     memw (r16 + #0) += #1
    e4e0:	1f 28 19 20 	2019281f     r17 = add (r17, #1) ; r23 = #1
    e4e4:	2e de ff 5b 	5bffde2e     call a140 <_Getpctype>
    e4e8:	00 52 54 f2 	f2545200     { p0 = cmp.gt (r20, r18)
    e4ec:	16 c0 31 91 	9131c016       r22 = memub (r17 + #0) }
    e4f0:	01 7a f6 bf 	bff67a01     { r1 = add (r22, #-48)
    e4f4:	35 40 00 7a 	7a004035       r21 = mux (p0, #1, #0)
    e4f8:	80 d6 40 3a 	3a40d680       r0 = memh (r0 + r22 << #1) }
    e4fc:	00 45 20 85 	85204500     { p0 = !tstbit (r0, #5)
    e500:	ea f8 ff 5c 	5cfff8ea       if !p0.new jump:t e4d0 <_Stoflt+0x50> }
    e504:	76 fc ff 5b 	5bfffc76     call ddf0 <localeconv>
    e508:	60 c1 80 91 	9180c160     r0 = memw (r0 + #44)
    e50c:	00 c0 20 91 	9120c000     r0 = memub (r0 + #0)
    e510:	00 56 00 f2 	f2005600     { p0 = cmp.eq (r0, r22)
    e514:	31 e0 11 74 	7411e031       if (p0.new) r17 = add (r17, #1) }
    e518:	1a c0 4c 10 	104cc01a     p0 = cmp.eq (r20, #0) ; if (!p0.new) jump:nt e54c <_Stoflt+0xcc>
    e51c:	00 c0 31 91 	9131c000     r0 = memub (r17 + #0)
    e520:	00 46 00 75 	75004600     { p0 = cmp.eq (r0, #48)
    e524:	16 48 20 5c 	5c204816       if !p0.new jump:nt e54c <_Stoflt+0xcc>
    e528:	00 40 00 7f 	7f004000       nop
    e52c:	00 c0 90 43 	4390c000       if (p0.new) r0 = memw (r16 + #0) }
    e530:	e0 7f e0 bf 	bfe07fe0     { r0 = add (r0, #-1)
    e534:	31 40 11 b0 	b0114031       r17 = add (r17, #1)
    e538:	00 d4 b0 a1 	a1b0d400       memw (r16 + #0) = r0.new }
    e53c:	01 c0 31 91 	9131c001     r1 = memub (r17 + #0)
    e540:	00 46 01 75 	75014600     { p0 = cmp.eq (r1, #48)
    e544:	f8 78 df 5c 	5cdf78f8       if (p0.new) jump:t e530 <_Stoflt+0xb0>
    e548:	1f 28 0c 28 	280c281f       r20 = #0 ; r23 = #1 }
    e54c:	00 52 54 f2 	f2545200     { p0 = cmp.gt (r20, r18)
    e550:	16 c0 7d 70 	707dc016       r22 = r29 }
    e554:	35 40 00 7a 	7a004035     { r21 = mux (p0, #1, #0)
    e558:	14 40 00 58 	58004014       jump e57c <_Stoflt+0xfc>
    e55c:	00 c0 00 7f 	7f00c000       nop }
    e560:	34 60 94 74 	74946034     { if !p0.new r20 = add (r20, #1)
    e564:	0c 43 8d 11 	118d430c       p0 = tstbit (r21, #0) ; if (p0.new) jump:nt e578 <_Stoflt+0xf8>
    e568:	01 d4 16 37 	3716d401       if !p0.new memb (r22 + r20 << #0) = r1 }
    e56c:	00 52 54 f2 	f2545200     { p0 = cmp.gt (r20, r18)
    e570:	21 c0 50 3f 	3f50c021       memw (r16 + #0) -= #1 }
    e574:	35 c0 00 7a 	7a00c035     r21 = mux (p0, #1, #0)
    e578:	1f 28 19 20 	2019281f     r17 = add (r17, #1) ; r23 = #1
    e57c:	e2 dd ff 5b 	5bffdde2     call a140 <_Getpctype>
    e580:	01 c0 31 91 	9131c001     r1 = memub (r17 + #0)
    e584:	01 7a e1 bf 	bfe17a01     { r1 = add (r1, #-48)
    e588:	80 c1 40 3a 	3a40c180       r0 = memh (r0 + r1 << #1) }
    e58c:	00 45 20 85 	85204500     { p0 = !tstbit (r0, #5)
    e590:	ea f8 ff 5c 	5cfff8ea       if !p0.new jump:t e560 <_Stoflt+0xe0> }
    e594:	00 40 7d 70 	707d4000     { r0 = r29
    e598:	0c c3 cd 11 	11cdc30c       p0 = tstbit (r21, #0) ; if (!p0.new) jump:nt e5ac <_Stoflt+0x12c> }
    e59c:	01 52 3d 3a 	3a3d5201     { r1 = memub (r29 + r18 << #0)
    e5a0:	a0 c4 03 25 	2503c4a0       if (cmp.gtu (r1.new, #4)) jump:nt e6dc <_Stoflt+0x25c> }
    e5a4:	14 40 72 70 	70724014     { r20 = r18
    e5a8:	01 c0 50 3f 	3f50c001       memw (r16 + #0) += #1 }
    e5ac:	e0 7f f4 bf 	bff47fe0     { r0 = add (r20, #-1)
    e5b0:	f0 c0 cc 10 	10ccc0f0       p0 = cmp.gt (r20, #0) ; if (!p0.new) jump:nt e78c <_Stoflt+0x30c> }
    e5b4:	d4 61 7d db 	db7d61d4     { r1 = add (r29, add (r20, #-2))
    e5b8:	02 40 3d 3a 	3a3d4002       r2 = memub (r29 + r0 << #0)
    e5bc:	1a c0 42 24 	2442c01a       if (!cmp.eq (r2.new, #0)) jump:nt e5e8 <_Stoflt+0x168> }
    e5c0:	0a 4c 00 17 	17004c0a     { r20 = r0 ; jump e5d4 <_Stoflt+0x154>
    e5c4:	00 c0 90 91 	9190c000       r0 = memw (r16 + #0) }
    e5c8:	e3 41 21 9b 	9b2141e3     { r3 = memub (r1 ++ #-1)
    e5cc:	d4 c0 43 24 	2443c0d4       if (!cmp.eq (r3.new, #0)) jump:nt e770 <_Stoflt+0x2f0> }
    e5d0:	14 c0 62 70 	7062c014     r20 = r2
    e5d4:	fa 60 7c 10 	107c60fa     { p0 = cmp.eq (r20, #0) ; if (!p0.new) jump:t e5c8 <_Stoflt+0x148>
    e5d8:	c2 33 00 31 	310033c2       r0 = add (r0, #1) ; r2 = add (r20, #-1) }
    e5dc:	00 c0 90 a1 	a190c000     memw (r16 + #0) = r0
    e5e0:	34 40 00 78 	78004034     { r20 = #1
    e5e4:	00 c0 1d 3c 	3c1dc000       memb (r29 + #0) = #0 }
    e5e8:	00 c0 17 75 	7517c000     p0 = cmp.eq (r23, #0)
    e5ec:	37 40 00 7a 	7a004037     { r23 = mux (p0, #1, #0)
    e5f0:	6a 40 00 5c 	5c00406a       if (p0) jump e6c0 <_Stoflt+0x240>
    e5f4:	14 40 11 74 	74114014       if (p0) r20 = add (r17, #0)
    e5f8:	12 c0 00 7e 	7e00c012       if (p0) r18 = #0 }
    e5fc:	38 4e 8e 03 	038e4e38     { immext (#954437120)
    e600:	21 47 00 78 	78004721       r1 = ##954437177
    e604:	00 c0 54 75 	7554c000       p0 = cmp.gt (r20, #0) }
    e608:	20 c1 14 ed 	ed14c120     r0 = mpy (r20, r1)
    e60c:	00 c1 00 8c 	8c00c100     r0 = asr (r0, #1)
    e610:	00 df 14 8e 	8e14df00     r0 -= asr (r20, #31)
    e614:	20 c1 00 e0 	e000c120     r0 = + mpyi (r0, #9)
    e618:	34 e0 80 db 	db80e034     r0 = add (r0, sub (#9, r20))
    e61c:	32 41 00 ed 	ed004132     { r18 = mpy (r0, r1)
    e620:	02 df 00 8c 	8c00df02       r2 = asr (r0, #31) }
    e624:	12 c1 12 8c 	8c12c112     r18 = asr (r18, #1)
    e628:	12 d2 22 f3 	f322d212     r18 = sub (r18, r2)
    e62c:	32 c1 12 e0 	e012c132     r18 = + mpyi (r18, #9)
    e630:	12 52 60 f3 	f3605212     { r18 = !cmp.eq (r0, r18)
    e634:	3a 40 20 5c 	5c20403a       if !p0 jump e6a4 <_Stoflt+0x224>
    e638:	01 40 7d 70 	707d4001       r1 = r29
    e63c:	14 dd 14 fb 	fb14dd14       if (p0) r20 = add (r20, r29) }
    e640:	38 4e 8e 03 	038e4e38     { immext (#954437120)
    e644:	24 47 00 78 	78004724       r4 = ##954437177
    e648:	12 40 00 58 	58004012       jump e664 <_Stoflt+0x1e4>
    e64c:	00 c0 00 7f 	7f00c000       nop }
    e650:	21 40 01 b0 	b0014021     { r1 = add (r1, #1)
    e654:	02 40 21 91 	91214002       r2 = memub (r1 + #0)
    e658:	12 f2 b0 3b 	3bb0f212       memw (r16 + r18 << #2) = r2.new }
    e65c:	02 5f 00 8c 	8c005f02     { r2 = asr (r0, #31)
    e660:	24 cc 01 14 	1401cc24       p0 = cmp.eq (r1, r20) ; if (p0.new) jump:nt e6a4 <_Stoflt+0x224> }
    e664:	23 c4 00 ed 	ed00c423     r3 = mpy (r0, r4)
    e668:	03 c1 03 8c 	8c03c103     r3 = asr (r3, #1)
    e66c:	02 c3 22 f3 	f322c302     r2 = sub (r3, r2)
    e670:	22 c1 02 e0 	e002c122     r2 = + mpyi (r2, #9)
    e674:	32 60 12 74 	74126032     { if (p0.new) r18 = add (r18, #1)
    e678:	ee 42 30 14 	143042ee       p0 = cmp.eq (r0, r2) ; if (p0.new) jump:nt e650 <_Stoflt+0x1d0>
    e67c:	20 e0 00 74 	7400e020       if (p0.new) r0 = add (r0, #1) }
    e680:	21 40 01 b0 	b0014021     { r1 = add (r1, #1)
    e684:	20 40 00 b0 	b0004020       r0 = add (r0, #1)
    e688:	02 40 21 91 	91214002       r2 = memub (r1 + #0)
    e68c:	03 f2 90 3a 	3a90f203       r3 = memw (r16 + r18 << #2) }
    e690:	42 62 83 df 	df836242     { r2 = add (r2, mpyi (r3, #10))
    e694:	00 54 01 f2 	f2015400       p0 = cmp.eq (r1, r20)
    e698:	14 f2 b0 3b 	3bb0f214       memw (r16 + r18 << #2) = r2.new }
    e69c:	02 5f 00 8c 	8c005f02     { r2 = asr (r0, #31)
    e6a0:	e4 e0 ff 5c 	5cffe0e4       if !p0 jump e664 <_Stoflt+0x1e4> }
    e6a4:	00 c0 31 91 	9131c000     r0 = memub (r17 + #0)
    e6a8:	a0 48 00 75 	750048a0     { p0 = cmp.eq (r0, #69)
    e6ac:	22 c8 00 5c 	5c00c822       if (p0.new) jump:nt e6ec <_Stoflt+0x26c> }
    e6b0:	a0 4c 00 75 	75004ca0     { p0 = cmp.eq (r0, #101)
    e6b4:	1e 48 00 5c 	5c00481e       if (p0.new) jump:nt e6ec <_Stoflt+0x26c>
    e6b8:	14 40 71 70 	70714014       r20 = r17
    e6bc:	00 c0 00 7f 	7f00c000       nop }
    e6c0:	00 40 19 75 	75194000     { p0 = cmp.eq (r25, #0)
    e6c4:	0a c8 00 5c 	5c00c80a       if (p0.new) jump:nt e6d4 <_Stoflt+0x254> }
    e6c8:	00 40 17 85 	85174000     { p0 = tstbit (r23, #0)
    e6cc:	14 e0 13 74 	7413e014       if (p0.new) r20 = add (r19, #0) }
    e6d0:	00 d4 99 a1 	a199d400     memw (r25 + #0) = r20
    e6d4:	05 40 00 00 	00004005     { immext (#320)
    e6d8:	58 c0 0a 17 	170ac058       r0 = r18 ; jump e840 <__restore_r16_through_r27_and_deallocframe> }
    e6dc:	e1 ff f2 bf 	bff2ffe1     r1 = add (r18, #-1)
    e6e0:	00 c1 00 f3 	f300c100     r0 = add (r0, r1)
    e6e4:	60 7f ff 59 	59ff7f60     { jump e5a4 <_Stoflt+0x124>
    e6e8:	01 c0 00 3f 	3f00c001       memb (r0 + #0) += #1 }
    e6ec:	34 40 11 b0 	b0114034     { r20 = add (r17, #1)
    e6f0:	3a c0 31 91 	9131c03a       r26 = memub (r17 + #1) }
    e6f4:	60 45 1a 75 	751a4560     { p0 = cmp.eq (r26, #43)
    e6f8:	42 c8 00 5c 	5c00c842       if (p0.new) jump:nt e778 <_Stoflt+0x2f8> }
    e6fc:	a0 c5 1a 75 	751ac5a0     p0 = cmp.eq (r26, #45)
    e700:	3a 40 00 7a 	7a00403a     { r26 = mux (p0, #1, #0)
    e704:	3e c0 00 5c 	5c00c03e       if (p0) jump e77c <_Stoflt+0x2fc> }
    e708:	1a 40 00 78 	7800401a     { r26 = #0
    e70c:	00 c0 00 7f 	7f00c000       nop }
    e710:	18 40 00 78 	78004018     { r24 = #0
    e714:	83 57 5f 00 	005f5783       immext (#99999936)
    e718:	0d 28 fe 2b 	2bfe280d       r22 = ##99999999 ; r21 = #0 }
    e71c:	0a c0 00 58 	5800c00a     jump e730 <_Stoflt+0x2b0>
    e720:	04 c0 00 5c 	5c00c004     if (p0) jump e728 <_Stoflt+0x2a8>
    e724:	41 f5 95 df 	df95f541     r21 = add (r1, mpyi (r21, #10))
    e728:	34 40 14 b0 	b0144034     { r20 = add (r20, #1)
    e72c:	38 c0 00 78 	7800c038       r24 = #1 }
    e730:	08 dd ff 5b 	5bffdd08     call a140 <_Getpctype>
    e734:	00 56 55 f2 	f2555600     { p0 = cmp.gt (r21, r22)
    e738:	01 c0 34 91 	9134c001       r1 = memub (r20 + #0) }
    e73c:	01 7a e1 bf 	bfe17a01     { r1 = add (r1, #-48)
    e740:	80 c1 40 3a 	3a40c180       r0 = memh (r0 + r1 << #1) }
    e744:	01 45 20 85 	85204501     { p1 = !tstbit (r0, #5)
    e748:	ee 79 ff 5c 	5cff79ee       if !p1.new jump:t e720 <_Stoflt+0x2a0>
    e74c:	00 c0 00 7f 	7f00c000       nop }
    e750:	00 40 1a 85 	851a4000     { p0 = tstbit (r26, #0)
    e754:	1a 48 00 5c 	5c00481a       if (p0.new) jump:nt e784 <_Stoflt+0x304>
    e758:	00 40 00 7f 	7f004000       nop
    e75c:	00 c0 00 7f 	7f00c000       nop }
    e760:	00 40 18 75 	75184000     { p0 = cmp.eq (r24, #0)
    e764:	b0 7f ff 59 	59ff7fb0       jump e6c0 <_Stoflt+0x240>
    e768:	14 60 11 74 	74116014       if (p0.new) r20 = add (r17, #0)
    e76c:	15 c0 50 3e 	3e50c015       memw (r16 + #0) += r21 }
    e770:	3c 7f ff 59 	59ff7f3c     { jump e5e8 <_Stoflt+0x168>
    e774:	00 c0 90 a1 	a190c000       memw (r16 + #0) = r0 }
    e778:	1a c0 00 78 	7800c01a     r26 = #0
    e77c:	34 40 14 b0 	b0144034     { r20 = add (r20, #1)
    e780:	ca ff ff 59 	59ffffca       jump e710 <_Stoflt+0x290> }
    e784:	15 40 55 76 	76554015     { r21 = sub (#0, r21)
    e788:	ee ff ff 59 	59ffffee       jump e760 <_Stoflt+0x2e0> }
    e78c:	2a 60 3c 10 	103c602a     { p0 = cmp.eq (r20, #0) ; if (p0.new) jump:t e5e0 <_Stoflt+0x160>
    e790:	2e ff ff 59 	59ffff2e       jump e5e8 <_Stoflt+0x168> }
    e794:	00 c0 00 7f 	7f00c000     nop
    e798:	00 c0 00 7f 	7f00c000     nop
    e79c:	00 c0 00 7f 	7f00c000     nop

0000e7a0 <div>:
    e7a0:	10 40 01 f5 	f5014010     { r17:16 = combine (r1, r0)
    e7a4:	c8 40 00 5a 	5a0040c8       call e930 <__hexagon_divsi3>
    e7a8:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    e7ac:	11 d1 00 ed 	ed00d111     r17 = mpyi (r0, r17)
    e7b0:	01 50 31 f3 	f3315001     { r1 = sub (r16, r17)
    e7b4:	40 1f 0c 3e 	3e0c1f40       r17:16 = memd (sp + #8) ; dealloc_return }
    e7b8:	00 c0 00 7f 	7f00c000     nop
    e7bc:	00 c0 00 7f 	7f00c000     nop

0000e7c0 <__save_r16_through_r27>:
    e7c0:	fa 7a de a7 	a7de7afa     { memd (r30 + #-48) = r27:26
    e7c4:	fb f8 de a7 	a7def8fb       memd (r30 + #-40) = r25:24 }

0000e7c8 <__save_r16_through_r23>:
    e7c8:	fc 76 de a7 	a7de76fc     { memd (r30 + #-32) = r23:22
    e7cc:	fd f4 de a7 	a7def4fd       memd (r30 + #-24) = r21:20 }

0000e7d0 <__save_r16_through_r19>:
    e7d0:	00 40 00 7f 	7f004000     { nop
    e7d4:	00 40 9f 52 	529f4000       jumpr r31
    e7d8:	fe 72 de a7 	a7de72fe       memd (r30 + #-16) = r19:18
    e7dc:	ff f0 de a7 	a7def0ff       memd (r30 + #-8) = r17:16 }

0000e7e0 <__save_r16_through_r25>:
    e7e0:	fb 78 de a7 	a7de78fb     { memd (r30 + #-40) = r25:24
    e7e4:	fc f6 de a7 	a7def6fc       memd (r30 + #-32) = r23:22 }

0000e7e8 <__save_r16_through_r21>:
    e7e8:	fd 74 de a7 	a7de74fd     { memd (r30 + #-24) = r21:20
    e7ec:	fe f2 de a7 	a7def2fe       memd (r30 + #-16) = r19:18 }

0000e7f0 <__save_r16_through_r17>:
    e7f0:	00 40 9f 52 	529f4000     { jumpr r31
    e7f4:	ff f0 de a7 	a7def0ff       memd (r30 + #-8) = r17:16 }

0000e7f8 <__restore_r16_through_r23_and_deallocframe_before_tailcall>:
    e7f8:	96 7f de 97 	97de7f96     { r23:22 = memd (r30 + #-32)
    e7fc:	b4 ff de 97 	97deffb4       r21:20 = memd (r30 + #-24) }

0000e800 <__restore_r16_through_r19_and_deallocframe_before_tailcall>:
    e800:	10 40 00 58 	58004010     { jump e820 <__restore_r16_through_r17_and_deallocframe_before_tailcall>
    e804:	d2 ff de 97 	97deffd2       r19:18 = memd (r30 + #-16) }

0000e808 <__restore_r16_through_r27_and_deallocframe_before_tailcall>:
    e808:	00 40 00 7f 	7f004000     { nop
    e80c:	5a ff de 97 	97deff5a       r27:26 = memd (r30 + #-48) }

0000e810 <__restore_r16_through_r25_and_deallocframe_before_tailcall>:
    e810:	78 7f de 97 	97de7f78     { r25:24 = memd (r30 + #-40)
    e814:	96 ff de 97 	97deff96       r23:22 = memd (r30 + #-32) }

0000e818 <__restore_r16_through_r21_and_deallocframe_before_tailcall>:
    e818:	b4 7f de 97 	97de7fb4     { r21:20 = memd (r30 + #-24)
    e81c:	d2 ff de 97 	97deffd2       r19:18 = memd (r30 + #-16) }

0000e820 <__restore_r16_through_r17_and_deallocframe_before_tailcall>:
    e820:	00 40 00 7f 	7f004000     { nop
    e824:	00 40 9f 52 	529f4000       jumpr r31
    e828:	f0 7f de 97 	97de7ff0       r17:16 = memd (r30 + #-8)
    e82c:	1e c0 1e 90 	901ec01e       deallocframe }

0000e830 <__restore_r16_through_r23_and_deallocframe>:
    e830:	96 7f de 97 	97de7f96     { r23:22 = memd (r30 + #-32)
    e834:	b4 ff de 97 	97deffb4       r21:20 = memd (r30 + #-24) }

0000e838 <__restore_r16_through_r19_and_deallocframe>:
    e838:	10 40 00 58 	58004010     { jump e858 <__restore_r16_through_r17_and_deallocframe>
    e83c:	d2 ff de 97 	97deffd2       r19:18 = memd (r30 + #-16) }

0000e840 <__restore_r16_through_r27_and_deallocframe>:
    e840:	5a ff de 97 	97deff5a     r27:26 = memd (r30 + #-48)

0000e844 <__restore_r16_through_r25_and_deallocframe>:
    e844:	00 40 00 7f 	7f004000     { nop
    e848:	78 7f de 97 	97de7f78       r25:24 = memd (r30 + #-40)
    e84c:	96 ff de 97 	97deff96       r23:22 = memd (r30 + #-32) }

0000e850 <__restore_r16_through_r21_and_deallocframe>:
    e850:	b4 7f de 97 	97de7fb4     { r21:20 = memd (r30 + #-24)
    e854:	d2 ff de 97 	97deffd2       r19:18 = memd (r30 + #-16) }

0000e858 <__restore_r16_through_r17_and_deallocframe>:
    e858:	f0 7f de 97 	97de7ff0     { r17:16 = memd (r30 + #-8)
    e85c:	1e c0 1e 96 	961ec01e       dealloc_return }

0000e860 <__deallocframe>:
    e860:	1e c0 1e 96 	961ec01e     dealloc_return
    e864:	00 c0 00 7f 	7f00c000     nop
    e868:	00 c0 00 7f 	7f00c000     nop
    e86c:	00 c0 00 7f 	7f00c000     nop

0000e870 <__hexagon_memcpy_likely_aligned_min32bytes_mult8bytes>:
    e870:	00 47 81 85 	85814700     { p0 = bitsclr (r1, #7)
    e874:	00 47 80 85 	85804700       p0 = bitsclr (r0, #7)
    e878:	a3 7f df 78 	78df7fa3       r3 = #-3
    e87c:	04 c0 c1 43 	43c1c004       if (p0.new) r5:4 = memd (r1 + #0) }
    e880:	e8 40 be 5c 	5cbe40e8     { if !p0 jump 6250 <memcpy>
    e884:	a3 43 02 8e 	8e0243a3       r3 += lsr (r2, #3)
    e888:	24 40 c1 41 	41c14024       if (p0) r5:4 = memd (r1 + #8)
    e88c:	08 e4 c0 ab 	abc0e408       if (p0) memd (r0 ++ #8) = r5:4 }
    e890:	00 41 03 60 	60034100     { loop0 (e8a0 <__hexagon_memcpy_likely_aligned_min32bytes_mult8bytes+0x30>, r3)
    e894:	01 43 01 b0 	b0014301       r1 = add (r1, #24)
    e898:	44 40 c1 91 	91c14044       r5:4 = memd (r1 + #16)
    e89c:	08 c4 c0 ab 	abc0c408       memd (r0 ++ #8) = r5:4 }
    e8a0:	24 80 c1 9b 	9bc18024     { r5:4 = memd (r1 ++ #8)
    e8a4:	08 c4 c0 ab 	abc0c408       memd (r0 ++ #8) = r5:4 }:endloop0
    e8a8:	00 5f 82 e2 	e2825f00     { r0 -= add (r2, #-8)
    e8ac:	00 40 9f 52 	529f4000       jumpr r31
    e8b0:	00 c4 c0 a1 	a1c0c400       memd (r0 + #0) = r5:4 }
    e8b4:	00 c0 00 7f 	7f00c000     nop
    e8b8:	00 c0 00 7f 	7f00c000     nop
    e8bc:	00 c0 00 7f 	7f00c000     nop

0000e8c0 <__hexagon_divdi3>:
    e8c0:	02 5f 01 85 	85015f02     { p2 = tstbit (r1, #31)
    e8c4:	03 df 03 85 	8503df03       p3 = tstbit (r3, #31) }
    e8c8:	c0 40 80 80 	808040c0     { r1:0 = abs (r1:0)
    e8cc:	c2 c0 82 80 	8082c0c2       r3:2 = abs (r3:2) }
    e8d0:	46 40 40 88 	88404046     { r6 = cl0 (r1:0)
    e8d4:	47 40 42 88 	88424047       r7 = cl0 (r3:2)
    e8d8:	04 42 03 f5 	f5034204       r5:4 = combine (r3, r2)
    e8dc:	02 c0 01 f5 	f501c002       r3:2 = combine (r1, r0) }
    e8e0:	03 43 42 6b 	6b424303     { p3 = xor (p2, p3)
    e8e4:	0a 47 26 f3 	f326470a       r10 = sub (r7, r6)
    e8e8:	00 40 00 7c 	7c004000       r1:0 = combine (#0, #0)
    e8ec:	0e e0 00 7c 	7c00e00e       r15:14 = combine (#0, #1) }
    e8f0:	cc 4a 84 c3 	c3844acc     { r13:12 = lsl (r5:4, r10)
    e8f4:	ce 4a 8e c3 	c38e4ace       r15:14 = lsl (r15:14, r10)
    e8f8:	2b c0 0a b0 	b00ac02b       r11 = add (r10, #1) }
    e8fc:	18 40 0b 60 	600b4018     { loop0 (e908 <__hexagon_divdi3+0x48>, r11)
    e900:	80 c2 84 d2 	d284c280       p0 = cmp.gtu (r5:4, r3:2) }
    e904:	10 c0 00 5c 	5c00c010     if (p0) jump e924 <.hexagon_divdi3_return>
    e908:	80 c2 8c d2 	d28cc280     p0 = cmp.gtu (r13:12, r3:2)
    e90c:	e6 42 2c d3 	d32c42e6     { r7:6 = sub (r3:2, r13:12)
    e910:	e8 ce 00 d3 	d300cee8       r9:8 = add (r1:0, r15:14) }
    e914:	00 48 00 d1 	d1004800     { r1:0 = vmux (p0, r1:0, r9:8)
    e918:	02 c6 02 d1 	d102c602       r3:2 = vmux (p0, r3:2, r7:6) }
    e91c:	2e 81 0e 80 	800e812e     { r15:14 = lsr (r15:14, #1)
    e920:	2c c1 0c 80 	800cc12c       r13:12 = lsr (r13:12, #1) }:endloop0

0000e924 <.hexagon_divdi3_return>:
    e924:	a2 c0 80 80 	8080c0a2     r3:2 = neg (r1:0)
    e928:	60 40 02 d1 	d1024060     { r1:0 = vmux (p3, r3:2, r1:0)
    e92c:	00 c0 9f 52 	529fc000       jumpr r31 }

0000e930 <__hexagon_divsi3>:
    e930:	81 40 80 8c 	8c804081     { r1 = abs (r0)
    e934:	82 40 81 8c 	8c814082       r2 = abs (r1)
    e938:	e0 7f 60 75 	75607fe0       p0 = cmp.gt (r0, #-1)
    e93c:	e1 ff 61 75 	7561ffe1       p1 = cmp.gt (r1, #-1) }
    e940:	a3 40 01 8c 	8c0140a3     { r3 = cl0 (r1)
    e944:	a4 40 02 8c 	8c0240a4       r4 = cl0 (r2)
    e948:	05 41 22 f3 	f3224105       r5 = sub (r1, r2)
    e94c:	02 c1 62 f2 	f262c102       p2 = cmp.gtu (r2, r1) }
    e950:	01 41 40 6b 	6b404101     { p1 = xor (p0, p1)
    e954:	00 42 5f 53 	535f4200       if (p2) jumpr r31
    e958:	00 40 00 78 	78004000       r0 = #0
    e95c:	00 c5 62 f2 	f262c500       p0 = cmp.gtu (r2, r5) }
    e960:	e0 7f 80 7a 	7a807fe0     { r0 = mux (p1, #-1, #1)
    e964:	04 44 23 f3 	f3234404       r4 = sub (r4, r3)
    e968:	c4 3f 13 48 	48133fc4       r3 = #1 ; if (p0) jumpr lr }
    e96c:	08 41 04 60 	60044108     { loop0 (e980 <__hexagon_divsi3+0x50>, r4)
    e970:	c2 44 02 c3 	c30244c2       r3:2 = vlslw (r3:2, r4)
    e974:	00 40 00 78 	78004000       r0 = #0
    e978:	00 c0 00 7f 	7f00c000       nop }
    e97c:	00 c0 00 7f 	7f00c000     nop
    e980:	00 81 62 f2 	f2628100     { p0 = cmp.gtu (r2, r1)
    e984:	22 41 42 80 	80424122       r3:2 = vlsrw (r3:2, #1)
    e988:	81 61 22 fb 	fb226181       if !p0.new r1 = sub (r1, r2)
    e98c:	80 e3 00 fb 	fb00e380       if !p0.new r0 = add (r0, r3) }:endloop0
    e990:	00 41 62 f2 	f2624100     { p0 = cmp.gtu (r2, r1)
    e994:	00 41 7f 53 	537f4100       if !p1 jumpr r31
    e998:	80 e3 00 fb 	fb00e380       if !p0.new r0 = add (r0, r3) }
    e99c:	00 40 40 76 	76404000     { r0 = sub (#0, r0)
    e9a0:	00 c0 9f 52 	529fc000       jumpr r31 }
    e9a4:	00 c0 00 7f 	7f00c000     nop
    e9a8:	00 c0 00 7f 	7f00c000     nop
    e9ac:	00 c0 00 7f 	7f00c000     nop

0000e9b0 <__hexagon_udivdi3>:
    e9b0:	46 40 40 88 	88404046     { r6 = cl0 (r1:0)
    e9b4:	47 40 42 88 	88424047       r7 = cl0 (r3:2)
    e9b8:	04 42 03 f5 	f5034204       r5:4 = combine (r3, r2)
    e9bc:	02 c0 01 f5 	f501c002       r3:2 = combine (r1, r0) }
    e9c0:	0a 47 26 f3 	f326470a     { r10 = sub (r7, r6)
    e9c4:	00 40 00 7c 	7c004000       r1:0 = combine (#0, #0)
    e9c8:	0e e0 00 7c 	7c00e00e       r15:14 = combine (#0, #1) }
    e9cc:	cc 4a 84 c3 	c3844acc     { r13:12 = lsl (r5:4, r10)
    e9d0:	ce 4a 8e c3 	c38e4ace       r15:14 = lsl (r15:14, r10)
    e9d4:	2b c0 0a b0 	b00ac02b       r11 = add (r10, #1) }
    e9d8:	18 40 0b 60 	600b4018     { loop0 (e9e4 <__hexagon_udivdi3+0x34>, r11)
    e9dc:	80 c2 84 d2 	d284c280       p0 = cmp.gtu (r5:4, r3:2) }
    e9e0:	00 c0 5f 53 	535fc000     if (p0) jumpr r31
    e9e4:	80 c2 8c d2 	d28cc280     p0 = cmp.gtu (r13:12, r3:2)
    e9e8:	e6 42 2c d3 	d32c42e6     { r7:6 = sub (r3:2, r13:12)
    e9ec:	e8 ce 00 d3 	d300cee8       r9:8 = add (r1:0, r15:14) }
    e9f0:	00 48 00 d1 	d1004800     { r1:0 = vmux (p0, r1:0, r9:8)
    e9f4:	02 c6 02 d1 	d102c602       r3:2 = vmux (p0, r3:2, r7:6) }
    e9f8:	2e 81 0e 80 	800e812e     { r15:14 = lsr (r15:14, #1)
    e9fc:	2c c1 0c 80 	800cc12c       r13:12 = lsr (r13:12, #1) }:endloop0
    ea00:	00 c0 9f 52 	529fc000     jumpr r31
    ea04:	00 c0 00 7f 	7f00c000     nop
    ea08:	00 c0 00 7f 	7f00c000     nop
    ea0c:	00 c0 00 7f 	7f00c000     nop

0000ea10 <__hexagon_udivsi3>:
    ea10:	a2 40 00 8c 	8c0040a2     { r2 = cl0 (r0)
    ea14:	a3 40 01 8c 	8c0140a3       r3 = cl0 (r1)
    ea18:	24 40 00 7c 	7c004024       r5:4 = combine (#1, #0)
    ea1c:	00 c0 61 f2 	f261c000       p0 = cmp.gtu (r1, r0) }
    ea20:	06 43 22 f3 	f3224306     { r6 = sub (r3, r2)
    ea24:	00 44 00 f5 	f5004400       r1:0 = combine (r0, r4)
    ea28:	c4 3f 14 50 	50143fc4       r4 = r1 ; if (p0) jumpr lr }
    ea2c:	08 41 06 60 	60064108     { loop0 (ea40 <__hexagon_udivsi3+0x30>, r6)
    ea30:	c2 46 04 c3 	c30446c2       r3:2 = vlslw (r5:4, r6)
    ea34:	00 40 00 7f 	7f004000       nop
    ea38:	00 c0 00 7f 	7f00c000       nop }
    ea3c:	00 c0 00 7f 	7f00c000     nop
    ea40:	00 81 62 f2 	f2628100     { p0 = cmp.gtu (r2, r1)
    ea44:	22 41 42 80 	80424122       r3:2 = vlsrw (r3:2, #1)
    ea48:	81 61 22 fb 	fb226181       if !p0.new r1 = sub (r1, r2)
    ea4c:	80 e3 00 fb 	fb00e380       if !p0.new r0 = add (r0, r3) }:endloop0
    ea50:	00 41 62 f2 	f2624100     { p0 = cmp.gtu (r2, r1)
    ea54:	00 40 9f 52 	529f4000       jumpr r31
    ea58:	80 e3 00 fb 	fb00e380       if !p0.new r0 = add (r0, r3) }
    ea5c:	00 c0 00 7f 	7f00c000     nop

0000ea60 <__hexagon_umoddi3>:
    ea60:	46 40 40 88 	88404046     { r6 = cl0 (r1:0)
    ea64:	47 40 42 88 	88424047       r7 = cl0 (r3:2)
    ea68:	04 42 03 f5 	f5034204       r5:4 = combine (r3, r2)
    ea6c:	02 c0 01 f5 	f501c002       r3:2 = combine (r1, r0) }
    ea70:	0a 47 26 f3 	f326470a     { r10 = sub (r7, r6)
    ea74:	00 40 00 7c 	7c004000       r1:0 = combine (#0, #0)
    ea78:	0e e0 00 7c 	7c00e00e       r15:14 = combine (#0, #1) }
    ea7c:	cc 4a 84 c3 	c3844acc     { r13:12 = lsl (r5:4, r10)
    ea80:	ce 4a 8e c3 	c38e4ace       r15:14 = lsl (r15:14, r10)
    ea84:	2b c0 0a b0 	b00ac02b       r11 = add (r10, #1) }
    ea88:	18 40 0b 60 	600b4018     { loop0 (ea94 <__hexagon_umoddi3+0x34>, r11)
    ea8c:	80 c2 84 d2 	d284c280       p0 = cmp.gtu (r5:4, r3:2) }
    ea90:	10 c0 00 5c 	5c00c010     if (p0) jump eab0 <.hexagon_umoddi3_return>
    ea94:	80 c2 8c d2 	d28cc280     p0 = cmp.gtu (r13:12, r3:2)
    ea98:	e6 42 2c d3 	d32c42e6     { r7:6 = sub (r3:2, r13:12)
    ea9c:	e8 ce 00 d3 	d300cee8       r9:8 = add (r1:0, r15:14) }
    eaa0:	00 48 00 d1 	d1004800     { r1:0 = vmux (p0, r1:0, r9:8)
    eaa4:	02 c6 02 d1 	d102c602       r3:2 = vmux (p0, r3:2, r7:6) }
    eaa8:	2e 81 0e 80 	800e812e     { r15:14 = lsr (r15:14, #1)
    eaac:	2c c1 0c 80 	800cc12c       r13:12 = lsr (r13:12, #1) }:endloop0

0000eab0 <.hexagon_umoddi3_return>:
    eab0:	00 42 03 f5 	f5034200     { r1:0 = combine (r3, r2)
    eab4:	00 c0 9f 52 	529fc000       jumpr r31 }
    eab8:	00 c0 00 7f 	7f00c000     nop
    eabc:	00 c0 00 7f 	7f00c000     nop

0000eac0 <__hexagon_adddf3>:
    eac0:	84 4b 41 8d 	8d414b84     { r4 = extractu (r1, #11, #20)
    eac4:	85 4b 43 8d 	8d434b85       r5 = extractu (r3, #11, #20)
    eac8:	00 40 00 02 	02004000       immext (#536870912)
    eacc:	0c c0 00 7c 	7c00c00c       r13:12 = combine (##536870912, #0) }
    ead0:	53 40 80 dc 	dc804053     { p3 = dfclass (r1:0, #2)
    ead4:	53 40 82 dc 	dc824053       p3 = dfclass (r3:2, #2)
    ead8:	08 4c 0d f5 	f50d4c08       r9:8 = combine (r13, r12)
    eadc:	02 c4 65 f2 	f265c402       p2 = cmp.gtu (r5, r4) }
    eae0:	a2 43 20 5c 	5c2043a2     { if !p3 jump ec24 <__hexagon_subdf3+0xc0>
    eae4:	40 42 03 fd 	fd034240       if (p2) r1:0 = combine (r3, r2)
    eae8:	42 40 01 fd 	fd014042       if (p2) r3:2 = combine (r1, r0)
    eaec:	44 c5 04 fd 	fd04c544       if (p2) r5:4 = combine (r4, r5) }
    eaf0:	2c 74 20 83 	8320742c     { r13:12 = insert (r1:0, #52, #9)
    eaf4:	28 74 22 83 	83227428       r9:8 = insert (r3:2, #52, #9)
    eaf8:	0f 44 25 f3 	f325440f       r15 = sub (r4, r5)
    eafc:	c6 e7 00 7c 	7c00e7c6       r7:6 = combine (#62, #1) }
    eb00:	0f 4f a7 d5 	d5a74f0f     { r15 = min (r15, r7)
    eb04:	aa 40 8c 80 	808c40aa       r11:10 = neg (r13:12)
    eb08:	e2 7f 61 75 	75617fe2       p2 = cmp.gt (r1, #-1)
    eb0c:	0e c0 00 78 	7800c00e       r14 = #0 }
    eb10:	0a 4e 08 c1 	c1084e0a     { r11:10 = extractu (r9:8, r15:14)
    eb14:	08 4f 88 c3 	c3884f08       r9:8 = asr (r9:8, r15)
    eb18:	cc 4a 0b fd 	fd0b4acc       if !p2 r13:12 = combine (r11, r10)
    eb1c:	0e c0 00 7c 	7c00c00e       r15:14 = combine (#0, #0) }
    eb20:	01 4e 8a d2 	d28a4e01     { p1 = cmp.eq (r11:10, r15:14)
    eb24:	a8 66 28 f9 	f92866a8       if !p1.new r8 = or (r8, r6)
    eb28:	85 78 a4 bf 	bfa47885       r5 = add (r4, #-1084)
    eb2c:	e3 ff 63 75 	7563ffe3       p3 = cmp.gt (r3, #-1) }
    eb30:	ec 48 0c d3 	d30c48ec     { r13:12 = add (r13:12, r9:8)
    eb34:	ea 4c 28 d3 	d3284cea       r11:10 = sub (r13:12, r9:8)
    eb38:	1f 40 00 00 	0000401f       immext (#1984)
    eb3c:	c6 e6 9e 7c 	7c9ee6c6       r7:6 = combine (#54, ##2045) }
    eb40:	10 46 64 f2 	f2644610     { p0 = !cmp.gtu (r4, r6)
    eb44:	28 47 44 15 	15444728       p0 = cmp.gtu (r4, r7) ; if (!p0.new) jump:nt eb90 <__hexagon_subdf3+0x2c>
    eb48:	ec ca 0b fd 	fd0bcaec       if !p3 r13:12 = combine (r11, r10) }
    eb4c:	60 40 ec 80 	80ec4060     { r1:0 = convert_d2df (r13:12)
    eb50:	12 48 00 5c 	5c004812       if (p0.new) jump:nt eb70 <__hexagon_subdf3+0xc>
    eb54:	00 40 0d 75 	750d4000       p0 = cmp.eq (r13, #0)
    eb58:	00 c0 0c 75 	750cc000       p0 = cmp.eq (r12, #0) }
    eb5c:	c1 54 05 8e 	8e0554c1     { r1 += asl (r5, #20)
    eb60:	00 c0 9f 52 	529fc000       jumpr r31 }

0000eb64 <__hexagon_subdf3>:
    eb64:	43 5f c3 8c 	8cc35f43     { r3 = togglebit (r3, #31)
    eb68:	ae 7f ff 59 	59ff7fae       jump eac0 <__hexagon_adddf3>
    eb6c:	00 c0 00 7f 	7f00c000       nop }
    eb70:	1c 40 08 6a 	6a08401c     { r28 = usr
    eb74:	00 3c 13 28 	28133c00       r3 = #1 ; r1:0 = combine (#0, #0) }
    eb78:	dc 42 5c 8d 	8d5c42dc     { r28 = extractu (r28, #2, #22)
    eb7c:	43 df 03 8c 	8c03df43       r3 = asl (r3, #31) }
    eb80:	40 40 1c 75 	751c4040     { p0 = cmp.eq (r28, #2)
    eb84:	00 40 9f 52 	529f4000       jumpr r31
    eb88:	01 63 61 f9 	f9616301       if (p0.new) r1 = xor (r1, r3)
    eb8c:	00 c0 00 7f 	7f00c000       nop }
    eb90:	60 40 ec 80 	80ec4060     { r1:0 = convert_d2df (r13:12)
    eb94:	f0 68 df 5c 	5cdf68f0       if (p0.new) jump:nt eb70 <__hexagon_subdf3+0xc>
    eb98:	00 40 0d 75 	750d4000       p0 = cmp.eq (r13, #0)
    eb9c:	00 c0 0c 75 	750cc000       p0 = cmp.eq (r12, #0) }
    eba0:	9c 4b 41 8d 	8d414b9c     { r28 = extractu (r1, #11, #20)
    eba4:	c1 d4 05 8e 	8e05d4c1       r1 += asl (r5, #20) }
    eba8:	05 5c 05 f3 	f3055c05     { r5 = add (r5, r28)
    ebac:	00 40 01 00 	00014000       immext (#1048576)
    ebb0:	02 c0 00 7c 	7c00c002       r3:2 = combine (##1048576, #0) }
    ebb4:	1f 40 00 00 	0000401f     { immext (#1984)
    ebb8:	c0 47 45 75 	754547c0       p0 = cmp.gt (r5, ##2046)
    ebbc:	16 c8 00 5c 	5c00c816       if (p0.new) jump:nt ebe0 <__hexagon_subdf3+0x7c> }
    ebc0:	00 40 45 75 	75454000     { p0 = cmp.gt (r5, #0)
    ebc4:	00 58 5f 53 	535f5800       if (p0.new) jumpr:t r31
    ebc8:	3c c0 45 76 	7645c03c       r28 = sub (#1, r5) }
    ebcc:	02 74 00 83 	83007402     { r3:2 = insert (r1:0, #52, #0)
    ebd0:	00 cc 0d f5 	f50dcc00       r1:0 = combine (r13, r12) }
    ebd4:	42 dc 82 c3 	c382dc42     r3:2 = lsr (r3:2, r28)
    ebd8:	00 7f 02 83 	83027f00     { r1:0 = insert (r3:2, #63, #0)
    ebdc:	00 c0 9f 52 	529fc000       jumpr r31 }
    ebe0:	1c 40 08 6a 	6a08401c     { r28 = usr
    ebe4:	00 4c 0d f5 	f50d4c00       r1:0 = combine (r13, r12)
    ebe8:	ff 7f fe 07 	07fe7fff       immext (#2146435008)
    ebec:	ec e7 7f 7c 	7c7fe7ec       r13:12 = combine (##2146435071, #-1) }
    ebf0:	c5 42 5c 8d 	8d5c42c5     { r5 = extractu (r28, #2, #22)
    ebf4:	1c 45 9c 76 	769c451c       r28 = or (r28, #40)
    ebf8:	00 40 ff 07 	07ff4000       immext (#2146435072)
    ebfc:	08 c0 00 7c 	7c00c008       r9:8 = combine (##2146435072, #0) }
    ec00:	08 40 3c 62 	623c4008     { usr = r28
    ec04:	25 5f 81 8e 	8e815f25       r5 ^= lsr (r1, #31)
    ec08:	1c c0 65 70 	7065c01c       r28 = r5 }
    ec0c:	30 40 1c 75 	751c4030     { p0 = !cmp.eq (r28, #1)
    ec10:	50 40 05 75 	75054050       p0 = !cmp.eq (r5, #2)
    ec14:	0c e8 09 fd 	fd09e80c       if (p0.new) r13:12 = combine (r9, r8) }
    ec18:	00 ff 0c 83 	830cff00     r1:0 = insert (r13:12, #63, #0)
    ec1c:	00 40 e0 d2 	d2e04000     { p0 = dfcmp.eq (r1:0, r1:0)
    ec20:	00 c0 9f 52 	529fc000       jumpr r31 }
    ec24:	0c 7f 00 81 	81007f0c     { r13:12 = extractu (r1:0, #63, #0)
    ec28:	08 ff 02 81 	8102ff08       r9:8 = extractu (r3:2, #63, #0) }
    ec2c:	83 48 8c d2 	d28c4883     { p3 = cmp.gtu (r13:12, r9:8)
    ec30:	e0 62 03 fd 	fd0362e0       if !p3.new r1:0 = combine (r3, r2)
    ec34:	e2 e0 01 fd 	fd01e0e2       if !p3.new r3:2 = combine (r1, r0) }
    ec38:	f0 41 80 dc 	dc8041f0     { p0 = dfclass (r1:0, #15)
    ec3c:	50 48 20 5c 	5c204850       if !p0.new jump:nt ecd8 <__hexagon_subdf3+0x174>
    ec40:	ec 48 09 fd 	fd0948ec       if !p3 r13:12 = combine (r9, r8)
    ec44:	e8 cc 0d fd 	fd0dcce8       if !p3 r9:8 = combine (r13, r12) }
    ec48:	11 41 80 dc 	dc804111     { p1 = dfclass (r1:0, #8)
    ec4c:	6a c9 00 5c 	5c00c96a       if (p1.new) jump:nt ed1c <__hexagon_subdf3+0x1b8> }
    ec50:	32 40 82 dc 	dc824032     { p2 = dfclass (r3:2, #1)
    ec54:	50 4a 00 5c 	5c004a50       if (p2.new) jump:nt ecf0 <__hexagon_subdf3+0x18c>
    ec58:	0c c0 00 7c 	7c00c00c       r13:12 = combine (#0, #0) }
    ec5c:	90 40 80 dc 	dc804090     { p0 = dfclass (r1:0, #4)
    ec60:	16 48 00 5c 	5c004816       if (p0.new) jump:nt ec88 <__hexagon_subdf3+0x124>
    ec64:	00 40 00 02 	02004000       immext (#536870912)
    ec68:	0c c0 00 7c 	7c00c00c       r13:12 = combine (##536870912, #0) }
    ec6c:	84 4b 41 8d 	8d414b84     { r4 = extractu (r1, #11, #20)
    ec70:	48 49 08 80 	80084948       r9:8 = asl (r9:8, #9)
    ec74:	25 c0 00 78 	7800c025       r5 = #1 }
    ec78:	2c 74 20 83 	8320742c     { r13:12 = insert (r1:0, #52, #9)
    ec7c:	44 7f ff 59 	59ff7f44       jump eb00 <__hexagon_adddf3+0x40>
    ec80:	0f 44 25 f3 	f325440f       r15 = sub (r4, r5)
    ec84:	c6 e7 00 7c 	7c00e7c6       r7:6 = combine (#62, #1) }
    ec88:	0c 7f 00 81 	81007f0c     { r13:12 = extractu (r1:0, #63, #0)
    ec8c:	08 ff 02 81 	8102ff08       r9:8 = extractu (r3:2, #63, #0) }
    ec90:	ac 40 8c 80 	808c40ac     { r13:12 = neg (r13:12)
    ec94:	a8 40 88 80 	808840a8       r9:8 = neg (r9:8)
    ec98:	e0 7f 61 75 	75617fe0       p0 = cmp.gt (r1, #-1)
    ec9c:	e1 ff 63 75 	7563ffe1       p1 = cmp.gt (r3, #-1) }
    eca0:	0c 40 01 fd 	fd01400c     { if (p0) r13:12 = combine (r1, r0)
    eca4:	28 c2 03 fd 	fd03c228       if (p1) r9:8 = combine (r3, r2) }
    eca8:	ec c8 0c d3 	d30cc8ec     r13:12 = add (r13:12, r9:8)
    ecac:	a8 40 8c 80 	808c40a8     { r9:8 = neg (r13:12)
    ecb0:	e0 7f 6d 75 	756d7fe0       p0 = cmp.gt (r13, #-1)
    ecb4:	02 c0 00 7c 	7c00c002       r3:2 = combine (#0, #0) }
    ecb8:	80 48 09 fd 	fd094880     { if !p0 r1:0 = combine (r9, r8)
    ecbc:	00 4c 0d fd 	fd0d4c00       if (p0) r1:0 = combine (r13, r12)
    ecc0:	00 40 00 08 	08004000       immext (#2147483648)
    ecc4:	03 c0 00 78 	7800c003       r3 = ##-2147483648 }
    ecc8:	00 42 e0 d2 	d2e04200     { p0 = dfcmp.eq (r1:0, r3:2)
    eccc:	18 48 00 5c 	5c004818       if (p0.new) jump:nt ecf8 <__hexagon_subdf3+0x194>
    ecd0:	81 c3 21 f9 	f921c381       if !p0 r1 = or (r1, r3) }
    ecd4:	00 c0 9f 52 	529fc000     jumpr r31
    ecd8:	3c 40 00 88 	8800403c     { r28 = convert_df2sf (r1:0)
    ecdc:	f0 41 82 dc 	dc8241f0       p0 = dfclass (r3:2, #15)
    ece0:	02 e0 01 fd 	fd01e002       if (p0.new) r3:2 = combine (r1, r0) }
    ece4:	22 40 02 88 	88024022     { r2 = convert_df2sf (r3:2)
    ece8:	00 40 9f 52 	529f4000       jumpr r31
    ecec:	e0 ff 7f 7c 	7c7fffe0       r1:0 = combine (#-1, #-1) }
    ecf0:	00 40 ec d2 	d2ec4000     { p0 = dfcmp.eq (r13:12, r1:0)
    ecf4:	00 d8 7f 53 	537fd800       if !p0.new jumpr:t r31 }
    ecf8:	00 42 80 d2 	d2804200     { p0 = cmp.eq (r1:0, r3:2)
    ecfc:	00 d8 5f 53 	535fd800       if (p0.new) jumpr:t r31 }
    ed00:	1c c0 08 6a 	6a08c01c     r28 = usr
    ed04:	dc 42 5c 8d 	8d5c42dc     { r28 = extractu (r28, #2, #22)
    ed08:	00 c0 00 7c 	7c00c000       r1:0 = combine (#0, #0) }
    ed0c:	40 40 1c 75 	751c4040     { p0 = cmp.eq (r28, #2)
    ed10:	00 40 9f 52 	529f4000       jumpr r31
    ed14:	00 40 00 08 	08004000       immext (#2147483648)
    ed18:	01 e0 00 7e 	7e00e001       if (p0.new) r1 = ##-2147483648 }
    ed1c:	10 41 82 dc 	dc824110     { p0 = dfclass (r3:2, #8)
    ed20:	00 58 7f 53 	537f5800       if !p0.new jumpr:t r31
    ed24:	10 c3 01 f2 	f201c310       p0 = !cmp.eq (r1, r3) }
    ed28:	00 40 f8 07 	07f84000     { immext (#2139095040)
    ed2c:	22 c0 00 78 	7800c022       r2 = ##2139095041 }
    ed30:	00 40 82 84 	84824000     { r1:0 = convert_sf2df (r2)
    ed34:	00 c0 9f 52 	529fc000       jumpr r31 }
    ed38:	00 c0 00 7f 	7f00c000     nop
    ed3c:	00 c0 00 7f 	7f00c000     nop

0000ed40 <__hexagon_divdf3>:
    ed40:	53 40 80 dc 	dc804053     { p3 = dfclass (r1:0, #2)
    ed44:	53 40 82 dc 	dc824053       p3 = dfclass (r3:2, #2)
    ed48:	00 40 00 04 	04004000       immext (#1073741824)
    ed4c:	0e c0 00 7c 	7c00c00e       r15:14 = combine (##1073741824, #0) }
    ed50:	c4 43 20 5c 	5c2043c4     { if !p3 jump eed8 <__hexagon_divdf3+0x198>
    ed54:	4e 74 20 83 	8320744e       r15:14 = insert (r1:0, #52, #10)
    ed58:	0c 4e 0f f5 	f50f4e0c       r13:12 = combine (r15, r14)
    ed5c:	06 c0 00 7c 	7c00c006       r7:6 = combine (#0, #0) }
    ed60:	84 4b 41 8d 	8d414b84     { r4 = extractu (r1, #11, #20)
    ed64:	85 4b 43 8d 	8d434b85       r5 = extractu (r3, #11, #20)
    ed68:	0a e0 00 7c 	7c00e00a       r11:10 = combine (#0, #1) }
    ed6c:	c0 41 01 69 	690141c0     { loop0 (ed7c <__hexagon_divdf3+0x3c>, #56)
    ed70:	4c 74 22 83 	8322744c       r13:12 = insert (r3:2, #52, #10)
    ed74:	08 4e 0f f5 	f50f4e08       r9:8 = combine (r15, r14)
    ed78:	04 c4 25 f3 	f325c404       r4 = sub (r4, r5) }
    ed7c:	ee c8 2c d3 	d32cc8ee     r15:14 = sub (r9:8, r13:12)
    ed80:	e0 7f 6f 75 	756f7fe0     { p0 = cmp.gt (r15, #-1)
    ed84:	08 ee 0f fd 	fd0fee08       if (p0.new) r9:8 = combine (r15, r14) }
    ed88:	06 86 c6 c2 	c2c68606     { r7:6 = add (r7:6, r7:6, p0):carry
    ed8c:	48 c1 08 80 	8008c148       r9:8 = asl (r9:8, #1) }:endloop0
    ed90:	81 48 8a d2 	d28a4881     { p1 = cmp.gtu (r11:10, r9:8)
    ed94:	a6 6a 26 f9 	f9266aa6       if !p1.new r6 = or (r6, r10)
    ed98:	49 40 de 78 	78de4049       r9 = #-1022
    ed9c:	c8 ff 01 78 	7801ffc8       r8 = #1022 }
    eda0:	ae 40 86 80 	808640ae     { r15:14 = neg (r7:6)
    eda4:	1c 43 61 f1 	f161431c       r28 = xor (r1, r3)
    eda8:	00 49 44 f2 	f2444900       p0 = cmp.gt (r4, r9)
    edac:	10 c8 44 f2 	f244c810       p0 = !cmp.gt (r4, r8) }
    edb0:	12 40 20 5c 	5c204012     { if !p0 jump edd4 <__hexagon_divdf3+0x94>
    edb4:	e1 7f 7c 75 	757c7fe1       p1 = cmp.gt (r28, #-1)
    edb8:	2e e6 07 fd 	fd07e62e       if (p1.new) r15:14 = combine (r7, r6) }
    edbc:	60 40 ee 80 	80ee4060     { r1:0 = convert_d2df (r15:14)
    edc0:	24 f9 e4 bf 	bfe4f924       r4 = add (r4, #-55) }
    edc4:	c1 54 04 8e 	8e0454c1     { r1 += asl (r4, #20)
    edc8:	00 c0 9f 52 	529fc000       jumpr r31 }
    edcc:	c0 5b 01 69 	69015bc0     { loop0 (ed7c <__hexagon_divdf3+0x3c>, #56)
    edd0:	d8 ff ff 59 	59ffffd8       jump ed7c <__hexagon_divdf3+0x3c> }
    edd4:	60 40 ee 80 	80ee4060     { r1:0 = convert_d2df (r15:14)
    edd8:	24 f9 e4 bf 	bfe4f924       r4 = add (r4, #-55) }
    eddc:	c1 54 04 8e 	8e0454c1     { r1 += asl (r4, #20)
    ede0:	85 cb 41 8d 	8d41cb85       r5 = extractu (r1, #11, #20) }
    ede4:	04 45 04 f3 	f3044504     { r4 = add (r4, r5)
    ede8:	cc c0 8e 80 	808ec0cc       r13:12 = abs (r15:14) }
    edec:	1f 40 00 00 	0000401f     { immext (#1984)
    edf0:	c0 47 44 75 	754447c0       p0 = cmp.gt (r4, ##2046)
    edf4:	54 c8 00 5c 	5c00c854       if (p0.new) jump:nt ee94 <__hexagon_divdf3+0x154> }
    edf8:	32 40 84 10 	10844032     { p0 = cmp.gt (r4, #0) ; if (p0.new) jump:nt ee5c <__hexagon_divdf3+0x11c>
    edfc:	fc c7 00 78 	7800c7fc       r28 = #63 }
    ee00:	07 40 08 6a 	6a084007     { r7 = usr
    ee04:	45 7a 6c 88 	886c7a45       r5 = add (clb (r13:12), #-6)
    ee08:	64 40 44 76 	76444064       r4 = sub (#3, r4)
    ee0c:	e3 ff 6f 75 	756fffe3       p3 = cmp.gt (r15, #-1) }
    ee10:	8c 45 8c c3 	c38c458c     { r13:12 = asl (r13:12, r5)
    ee14:	05 44 bc d5 	d5bc4405       r5 = min (r4, r28)
    ee18:	06 2b 04 28 	28042b06       r4 = #0 ; r6 = #48 }
    ee1c:	08 44 0c c1 	c10c4408     { r9:8 = extractu (r13:12, r5:4)
    ee20:	0c c5 8c c3 	c38cc50c       r13:12 = asr (r13:12, r5) }
    ee24:	80 48 8a d2 	d28a4880     { p0 = cmp.gtu (r11:10, r9:8)
    ee28:	0d 57 cd 8c 	8ccd570d       r13 = setbit (r13, #23)
    ee2c:	8c ea 2c f9 	f92cea8c       if !p0.new r12 = or (r12, r10) }
    ee30:	ae 40 8c 80 	808c40ae     { r15:14 = neg (r13:12)
    ee34:	01 47 8c 85 	858c4701       p1 = bitsclr (r12, #7)
    ee38:	a7 e6 27 f9 	f927e6a7       if !p1.new r7 = or (r7, r6) }
    ee3c:	08 40 27 62 	62274008     { usr = r7
    ee40:	6e 4c 0d fd 	fd0d4c6e       if (p3) r15:14 = combine (r13, r12)
    ee44:	02 40 00 7c 	7c004002       r3:2 = combine (#0, #0)
    ee48:	5c f9 dd 78 	78ddf95c       r28 = #-1078 }
    ee4c:	60 40 ee 80 	80ee4060     { r1:0 = convert_d2df (r15:14)
    ee50:	60 c2 e2 d2 	d2e2c260       p0 = dfcmp.uo (r3:2, r3:2) }
    ee54:	c1 54 1c 8e 	8e1c54c1     { r1 += asl (r28, #20)
    ee58:	00 c0 9f 52 	529fc000       jumpr r31 }
    ee5c:	ff 7f fe 07 	07fe7fff     { immext (#2146435008)
    ee60:	fc 47 00 78 	780047fc       r28 = ##2146435071
    ee64:	ce c0 8e 80 	808ec0ce       r15:14 = abs (r15:14) }
    ee68:	00 5c 81 c7 	c7815c00     { p0 = bitsclr (r1, r28)
    ee6c:	00 58 7f 53 	537f5800       if !p0.new jumpr:t r31
    ee70:	00 40 00 75 	75004000       p0 = cmp.eq (r0, #0)
    ee74:	fc ff 5f 78 	785ffffc       r28 = #32767 }
    ee78:	07 40 08 6a 	6a084007     { r7 = usr
    ee7c:	00 5c 4f c7 	c74f5c00       p0 = bitsset (r15, r28)
    ee80:	06 c6 00 78 	7800c606       r6 = #48 }
    ee84:	07 c6 27 f9 	f927c607     if (p0) r7 = or (r7, r6)
    ee88:	08 c0 27 62 	6227c008     usr = r7
    ee8c:	00 40 e0 d2 	d2e04000     { p0 = dfcmp.eq (r1:0, r1:0)
    ee90:	00 c0 9f 52 	529fc000       jumpr r31 }
    ee94:	1c 40 08 6a 	6a08401c     { r28 = usr
    ee98:	ff 7f fe 07 	07fe7fff       immext (#2146435008)
    ee9c:	ee 67 7f 7c 	7c7f67ee       r15:14 = combine (##2146435071, #-1)
    eea0:	00 ce 0f f5 	f50fce00       r1:0 = combine (r15, r14) }
    eea4:	00 40 ff 07 	07ff4000     { immext (#2146435072)
    eea8:	0c 40 00 7c 	7c00400c       r13:12 = combine (##2146435072, #0)
    eeac:	c7 42 5c 8d 	8d5c42c7       r7 = extractu (r28, #2, #22)
    eeb0:	1c c5 9c 76 	769cc51c       r28 = or (r28, #40) }
    eeb4:	08 40 3c 62 	623c4008     { usr = r28
    eeb8:	27 5f 81 8e 	8e815f27       r7 ^= lsr (r1, #31)
    eebc:	06 c0 67 70 	7067c006       r6 = r7 }
    eec0:	30 40 06 75 	75064030     { p0 = !cmp.eq (r6, #1)
    eec4:	00 4e ee d2 	d2ee4e00       p0 = dfcmp.eq (r15:14, r15:14)
    eec8:	50 40 07 75 	75074050       p0 = !cmp.eq (r7, #2)
    eecc:	0e ec 0d fd 	fd0dec0e       if (p0.new) r15:14 = combine (r13, r12) }
    eed0:	00 7f 0e 83 	830e7f00     { r1:0 = insert (r15:14, #63, #0)
    eed4:	00 c0 9f 52 	529fc000       jumpr r31 }
    eed8:	f0 41 80 dc 	dc8041f0     { p0 = dfclass (r1:0, #15)
    eedc:	f0 c1 82 dc 	dc82c1f0       p0 = dfclass (r3:2, #15) }
    eee0:	11 41 80 dc 	dc804111     { p1 = dfclass (r1:0, #8)
    eee4:	11 c1 82 dc 	dc82c111       p1 = dfclass (r3:2, #8) }
    eee8:	32 40 80 dc 	dc804032     { p2 = dfclass (r1:0, #1)
    eeec:	32 c0 82 dc 	dc82c032       p2 = dfclass (r3:2, #1) }
    eef0:	60 40 20 5c 	5c204060     { if !p0 jump efb0 <__hexagon_divdf3+0x270>
    eef4:	70 c1 00 5c 	5c00c170       if (p1) jump efd0 <__hexagon_divdf3+0x290> }
    eef8:	6c c2 00 5c 	5c00c26c     if (p2) jump efd0 <__hexagon_divdf3+0x290>
    eefc:	d0 41 80 dc 	dc8041d0     { p0 = dfclass (r1:0, #14)
    ef00:	f0 c0 82 dc 	dc82c0f0       p0 = dfclass (r3:2, #7) }
    ef04:	f1 40 80 dc 	dc8040f1     { p1 = dfclass (r1:0, #7)
    ef08:	d1 c1 82 dc 	dc82c1d1       p1 = dfclass (r3:2, #14) }
    ef0c:	32 40 20 5c 	5c204032     { if !p0 jump ef70 <__hexagon_divdf3+0x230>
    ef10:	3a c1 20 5c 	5c20c13a       if !p1 jump ef80 <__hexagon_divdf3+0x240> }
    ef14:	50 40 80 dc 	dc804050     { p0 = dfclass (r1:0, #2)
    ef18:	51 40 82 dc 	dc824051       p1 = dfclass (r3:2, #2)
    ef1c:	0e 40 00 7c 	7c00400e       r15:14 = combine (#0, #0)
    ef20:	0c c0 00 7c 	7c00c00c       r13:12 = combine (#0, #0) }
    ef24:	4e 74 20 83 	8320744e     { r15:14 = insert (r1:0, #52, #10)
    ef28:	4c 74 22 83 	8322744c       r13:12 = insert (r3:2, #52, #10)
    ef2c:	00 40 00 04 	04004000       immext (#1073741824)
    ef30:	1c c0 00 78 	7800c01c       r28 = ##1073741824 }
    ef34:	84 4b 41 8d 	8d414b84     { r4 = extractu (r1, #11, #20)
    ef38:	85 4b 43 8d 	8d434b85       r5 = extractu (r3, #11, #20)
    ef3c:	0f 5c 2f f9 	f92f5c0f       if (p0) r15 = or (r15, r28)
    ef40:	2d dc 2d f9 	f92ddc2d       if (p1) r13 = or (r13, r28) }
    ef44:	47 7f 6e 88 	886e7f47     { r7 = add (clb (r15:14), #-1)
    ef48:	46 7f 6c 88 	886c7f46       r6 = add (clb (r13:12), #-1)
    ef4c:	0a e0 00 7c 	7c00e00a       r11:10 = combine (#0, #1) }
    ef50:	8e 47 8e c3 	c38e478e     { r15:14 = asl (r15:14, r7)
    ef54:	8c 46 8c c3 	c38c468c       r13:12 = asl (r13:12, r6)
    ef58:	84 4a 27 fb 	fb274a84       if !p0 r4 = sub (r10, r7)
    ef5c:	a5 ca 26 fb 	fb26caa5       if !p1 r5 = sub (r10, r6) }
    ef60:	36 7f ff 59 	59ff7f36     { jump edcc <__hexagon_divdf3+0x8c>
    ef64:	06 40 00 7c 	7c004006       r7:6 = combine (#0, #0)
    ef68:	08 4e 0f f5 	f50f4e08       r9:8 = combine (r15, r14)
    ef6c:	04 c4 25 f3 	f325c404       r4 = sub (r4, r5) }
    ef70:	80 42 e0 d3 	d3e04280     { r1:0 = xor (r1:0, r3:2)
    ef74:	02 c0 00 7c 	7c00c002       r3:2 = combine (#0, #0) }
    ef78:	00 7f 02 83 	83027f00     { r1:0 = insert (r3:2, #63, #0)
    ef7c:	00 c0 9f 52 	529fc000       jumpr r31 }
    ef80:	32 40 82 dc 	dc824032     { p2 = dfclass (r3:2, #1)
    ef84:	f2 c0 80 dc 	dc80c0f2       p2 = dfclass (r1:0, #7) }
    ef88:	1c 40 08 6a 	6a08401c     { r28 = usr
    ef8c:	0a 42 20 5c 	5c20420a       if !p2 jump ef9c <__hexagon_divdf3+0x25c>
    ef90:	01 c3 61 f1 	f161c301       r1 = xor (r1, r3) }
    ef94:	9c c0 9c 76 	769cc09c     r28 = or (r28, #4)
    ef98:	08 c0 3c 62 	623cc008     usr = r28
    ef9c:	00 40 ff 07 	07ff4000     { immext (#2146435072)
    efa0:	02 40 00 7c 	7c004002       r3:2 = combine (##2146435072, #0)
    efa4:	60 c2 e2 d2 	d2e2c260       p0 = dfcmp.uo (r3:2, r3:2) }
    efa8:	00 7f 02 83 	83027f00     { r1:0 = insert (r3:2, #63, #0)
    efac:	00 c0 9f 52 	529fc000       jumpr r31 }
    efb0:	10 42 80 dc 	dc804210     { p0 = dfclass (r1:0, #16)
    efb4:	11 42 82 dc 	dc824211       p1 = dfclass (r3:2, #16)
    efb8:	80 62 03 fd 	fd036280       if !p0.new r1:0 = combine (r3, r2)
    efbc:	a2 e0 01 fd 	fd01e0a2       if !p1.new r3:2 = combine (r1, r0) }
    efc0:	2f 40 00 88 	8800402f     { r15 = convert_df2sf (r1:0)
    efc4:	2e c0 02 88 	8802c02e       r14 = convert_df2sf (r3:2) }
    efc8:	e0 7f 7f 7c 	7c7f7fe0     { r1:0 = combine (#-1, #-1)
    efcc:	00 c0 9f 52 	529fc000       jumpr r31 }
    efd0:	00 40 f8 07 	07f84000     { immext (#2139095040)
    efd4:	3c c0 00 78 	7800c03c       r28 = ##2139095041 }
    efd8:	00 40 9c 84 	849c4000     { r1:0 = convert_sf2df (r28)
    efdc:	00 c0 9f 52 	529fc000       jumpr r31 }

0000efe0 <__hexagon_muldf3>:
    efe0:	50 40 80 dc 	dc804050     { p0 = dfclass (r1:0, #2)
    efe4:	50 40 82 dc 	dc824050       p0 = dfclass (r3:2, #2)
    efe8:	00 40 00 04 	04004000       immext (#1073741824)
    efec:	0c c0 00 7c 	7c00c00c       r13:12 = combine (##1073741824, #0) }
    eff0:	4c 74 20 83 	8320744c     { r13:12 = insert (r1:0, #52, #10)
    eff4:	44 4a 02 80 	80024a44       r5:4 = asl (r3:2, #10)
    eff8:	1c 40 de 78 	78de401c       r28 = #-1024
    effc:	08 e0 00 7c 	7c00e008       r9:8 = combine (#0, #1) }
    f000:	06 4d 44 e5 	e5444d06     { r7:6 = mpyu (r4, r13)
    f004:	c4 c2 e8 83 	83e8c2c4       r5:4 = insert (r9:8, #2, #62) }
    f008:	0e 44 4c e5 	e54c440e     { r15:14 = mpyu (r12, r4)
    f00c:	06 c5 4c e7 	e74cc506       r7:6 += mpyu (r12, r5) }
    f010:	a6 60 0e 82 	820e60a6     { r7:6 += lsr (r15:14, #32)
    f014:	0a 45 4d e5 	e54d450a       r11:10 = mpyu (r13, r5)
    f018:	1f 40 00 00 	0000401f       immext (#1984)
    f01c:	84 c7 00 7c 	7c00c784       r5:4 = combine (##2044, #0) }
    f020:	aa 60 06 82 	820660aa     { r11:10 += lsr (r7:6, #32)
    f024:	b2 40 20 5c 	5c2040b2       if !p0 jump f184 <__hexagon_muldf3+0x1a4>
    f028:	01 40 0e 75 	750e4001       p1 = cmp.eq (r14, #0)
    f02c:	01 c0 06 75 	7506c001       p1 = cmp.eq (r6, #0) }
    f030:	86 4b 41 8d 	8d414b86     { r6 = extractu (r1, #11, #20)
    f034:	87 4b 43 8d 	8d434b87       r7 = extractu (r3, #11, #20)
    f038:	aa c8 2a f9 	f92ac8aa       if !p1 r10 = or (r10, r8) }
    f03c:	ae 40 8a 80 	808a40ae     { r15:14 = neg (r11:10)
    f040:	26 47 1c ef 	ef1c4726       r6 += add (r28, r7)
    f044:	1c c3 61 f1 	f161c31c       r28 = xor (r1, r3) }
    f048:	ca 6e 0f fd 	fd0f6eca     { if !p2.new r11:10 = combine (r15, r14)
    f04c:	2c 44 c6 14 	14c6442c       p0 = cmp.gt (r6, r4) ; if (!p0.new) jump:nt f0a0 <__hexagon_muldf3+0xc0>
    f050:	e2 7f 7c 75 	757c7fe2       p2 = cmp.gt (r28, #-1)
    f054:	10 c5 46 f2 	f246c510       p0 = !cmp.gt (r6, r5) }
    f058:	60 40 ea 80 	80ea4060     { r1:0 = convert_d2df (r11:10)
    f05c:	c6 f8 a6 bf 	bfa6f8c6       r6 = add (r6, #-1082) }
    f060:	c1 54 06 8e 	8e0654c1     { r1 += asl (r6, #20)
    f064:	00 40 9f 52 	529f4000       jumpr r31
    f068:	00 40 00 7f 	7f004000       nop
    f06c:	00 c0 00 7f 	7f00c000       nop }
    f070:	00 44 81 c7 	c7814400     { p0 = bitsclr (r1, r4)
    f074:	00 58 7f 53 	537f5800       if !p0.new jumpr:t r31
    f078:	00 40 00 75 	75004000       p0 = cmp.eq (r0, #0)
    f07c:	e5 ff 5f 78 	785fffe5       r5 = #32767 }
    f080:	04 40 08 6a 	6a084004     { r4 = usr
    f084:	00 45 4d c7 	c74d4500       p0 = bitsset (r13, r5)
    f088:	05 c6 00 78 	7800c605       r5 = #48 }
    f08c:	04 c5 24 f9 	f924c504     if (p0) r4 = or (r4, r5)
    f090:	08 c0 24 62 	6224c008     usr = r4
    f094:	00 40 e0 d2 	d2e04000     { p0 = dfcmp.eq (r1:0, r1:0)
    f098:	00 40 9f 52 	529f4000       jumpr r31
    f09c:	00 c0 00 7f 	7f00c000       nop }
    f0a0:	60 40 ea 80 	80ea4060     { r1:0 = convert_d2df (r11:10)
    f0a4:	cc 40 8a 80 	808a40cc       r13:12 = abs (r11:10)
    f0a8:	c7 f8 a6 bf 	bfa6f8c7       r7 = add (r6, #-1082) }
    f0ac:	c1 54 07 8e 	8e0754c1     { r1 += asl (r7, #20)
    f0b0:	87 4b 41 8d 	8d414b87       r7 = extractu (r1, #11, #20)
    f0b4:	ff 7f fe 07 	07fe7fff       immext (#2146435008)
    f0b8:	e4 c7 00 78 	7800c7e4       r4 = ##2146435071 }
    f0bc:	ef 7f ff 0f 	0fff7fef     { immext (#4294966208)
    f0c0:	c7 40 06 e2 	e20640c7       r7 += add (r6, ##-1082)
    f0c4:	05 c0 00 78 	7800c005       r5 = #0 }
    f0c8:	1f 40 00 00 	0000401f     { immext (#1984)
    f0cc:	c0 47 47 75 	754747c0       p0 = cmp.gt (r7, ##2046)
    f0d0:	3c c8 00 5c 	5c00c83c       if (p0.new) jump:nt f140 <__hexagon_muldf3+0x160> }
    f0d4:	ce 40 b7 10 	10b740ce     { p0 = cmp.gt (r7, #0) ; if (p0.new) jump:nt f070 <__hexagon_muldf3+0x90>
    f0d8:	05 46 25 f3 	f3254605       r5 = sub (r6, r5)
    f0dc:	fc c7 00 78 	7800c7fc       r28 = #63 }
    f0e0:	04 40 00 78 	78004004     { r4 = #0
    f0e4:	a5 c0 45 76 	7645c0a5       r5 = sub (#5, r5) }
    f0e8:	e3 7f 6b 75 	756b7fe3     { p3 = cmp.gt (r11, #-1)
    f0ec:	05 45 bc d5 	d5bc4505       r5 = min (r5, r28)
    f0f0:	0a cc 0d f5 	f50dcc0a       r11:10 = combine (r13, r12) }
    f0f4:	1c 40 08 6a 	6a08401c     { r28 = usr
    f0f8:	0e c4 0a c1 	c10ac40e       r15:14 = extractu (r11:10, r5:4) }
    f0fc:	0a 45 8a c3 	c38a450a     { r11:10 = asr (r11:10, r5)
    f100:	81 4b 49 8f 	8f494b81       r1 = insert (r9, #11, #20)
    f104:	04 c6 00 78 	7800c604       r4 = #48 }
    f108:	80 4e 88 d2 	d2884e80     { p0 = cmp.gtu (r9:8, r15:14)
    f10c:	0b 57 cb 8c 	8ccb570b       r11 = setbit (r11, #23)
    f110:	8a e8 2a f9 	f92ae88a       if !p0.new r10 = or (r10, r8) }
    f114:	ae 40 8a 80 	808a40ae     { r15:14 = neg (r11:10)
    f118:	01 47 8a 85 	858a4701       p1 = bitsclr (r10, #7)
    f11c:	bc fc 24 f9 	f924fcbc       if !p1.new r28 = or (r4, r28) }
    f120:	08 40 3c 62 	623c4008     { usr = r28
    f124:	ea ce 0f fd 	fd0fceea       if !p3 r11:10 = combine (r15, r14) }
    f128:	60 40 ea 80 	80ea4060     { r1:0 = convert_d2df (r11:10)
    f12c:	00 c0 e0 d2 	d2e0c000       p0 = dfcmp.eq (r1:0, r1:0) }
    f130:	a1 4a 49 8f 	8f494aa1     { r1 = insert (r9, #10, #21)
    f134:	00 40 9f 52 	529f4000       jumpr r31
    f138:	00 40 00 7f 	7f004000       nop
    f13c:	00 c0 00 7f 	7f00c000       nop }
    f140:	1c 40 08 6a 	6a08401c     { r28 = usr
    f144:	ff 7f fe 07 	07fe7fff       immext (#2146435008)
    f148:	ec 67 7f 7c 	7c7f67ec       r13:12 = combine (##2146435071, #-1)
    f14c:	00 ca 0b f5 	f50bca00       r1:0 = combine (r11, r10) }
    f150:	ce 42 5c 8d 	8d5c42ce     { r14 = extractu (r28, #2, #22)
    f154:	1c 45 9c 76 	769c451c       r28 = or (r28, #40)
    f158:	00 40 ff 07 	07ff4000       immext (#2146435072)
    f15c:	04 c0 00 7c 	7c00c004       r5:4 = combine (##2146435072, #0) }
    f160:	08 40 3c 62 	623c4008     { usr = r28
    f164:	2e 5f 81 8e 	8e815f2e       r14 ^= lsr (r1, #31)
    f168:	1c c0 6e 70 	706ec01c       r28 = r14 }
    f16c:	30 40 1c 75 	751c4030     { p0 = !cmp.eq (r28, #1)
    f170:	00 40 e0 d2 	d2e04000       p0 = dfcmp.eq (r1:0, r1:0)
    f174:	50 40 0e 75 	750e4050       p0 = !cmp.eq (r14, #2)
    f178:	0c e4 05 fd 	fd05e40c       if (p0.new) r13:12 = combine (r5, r4) }
    f17c:	00 7f 0c 83 	830c7f00     { r1:0 = insert (r13:12, #63, #0)
    f180:	00 c0 9f 52 	529fc000       jumpr r31 }
    f184:	0c 7f 00 81 	81007f0c     { r13:12 = extractu (r1:0, #63, #0)
    f188:	04 ff 02 81 	8102ff04       r5:4 = extractu (r3:2, #63, #0) }
    f18c:	83 44 8c d2 	d28c4483     { p3 = cmp.gtu (r13:12, r5:4)
    f190:	e0 62 03 fd 	fd0362e0       if !p3.new r1:0 = combine (r3, r2)
    f194:	e2 e0 01 fd 	fd01e0e2       if !p3.new r3:2 = combine (r1, r0) }
    f198:	f0 41 80 dc 	dc8041f0     { p0 = dfclass (r1:0, #15)
    f19c:	4e 48 20 5c 	5c20484e       if !p0.new jump:nt f234 <__hexagon_muldf3+0x254>
    f1a0:	ec 44 05 fd 	fd0544ec       if !p3 r13:12 = combine (r5, r4)
    f1a4:	e4 cc 0d fd 	fd0dcce4       if !p3 r5:4 = combine (r13, r12) }
    f1a8:	11 41 80 dc 	dc804111     { p1 = dfclass (r1:0, #8)
    f1ac:	d1 c1 82 dc 	dc82c1d1       p1 = dfclass (r3:2, #14) }
    f1b0:	10 41 80 dc 	dc804110     { p0 = dfclass (r1:0, #8)
    f1b4:	30 c0 82 dc 	dc82c030       p0 = dfclass (r3:2, #1) }
    f1b8:	50 41 00 5c 	5c004150     { if (p1) jump f258 <__hexagon_muldf3+0x278>
    f1bc:	32 c0 82 dc 	dc82c032       p2 = dfclass (r3:2, #1) }
    f1c0:	2e 40 00 5c 	5c00402e     { if (p0) jump f21c <__hexagon_muldf3+0x23c>
    f1c4:	48 42 00 5c 	5c004248       if (p2) jump f250 <__hexagon_muldf3+0x270>
    f1c8:	00 40 c0 07 	07c04000       immext (#2080374784)
    f1cc:	1c c0 00 78 	7800c01c       r28 = ##2080374784 }
    f1d0:	00 5c 81 c7 	c7815c00     { p0 = bitsclr (r1, r28)
    f1d4:	10 c8 00 5c 	5c00c810       if (p0.new) jump:nt f1f0 <__hexagon_muldf3+0x210> }
    f1d8:	5c c0 44 88 	8844c05c     r28 = cl0 (r5:4)
    f1dc:	bc fe fc bf 	bffcfebc     r28 = add (r28, #-11)
    f1e0:	84 dc 84 c3 	c384dc84     r5:4 = asl (r5:4, r28)
    f1e4:	02 7f 04 83 	83047f02     { r3:2 = insert (r5:4, #63, #0)
    f1e8:	41 d4 1c 8e 	8e1cd441       r1 -= asl (r28, #20) }
    f1ec:	fa fe ff 59 	59fffefa     jump efe0 <__hexagon_muldf3>
    f1f0:	1c 40 08 6a 	6a08401c     { r28 = usr
    f1f4:	80 c2 e0 d3 	d3e0c280       r1:0 = xor (r1:0, r3:2) }
    f1f8:	00 7f 08 83 	83087f00     { r1:0 = insert (r9:8, #63, #0)
    f1fc:	c5 42 5c 8d 	8d5c42c5       r5 = extractu (r28, #2, #22)
    f200:	1c c6 9c 76 	769cc61c       r28 = or (r28, #48) }
    f204:	08 40 3c 62 	623c4008     { usr = r28
    f208:	25 5f 81 8e 	8e815f25       r5 ^= lsr (r1, #31)
    f20c:	20 40 45 75 	75454020       p0 = cmp.gt (r5, #1)
    f210:	00 e0 80 7e 	7e80e000       if !p0.new r0 = #0 }
    f214:	00 60 80 7e 	7e806000     { if !p0.new r0 = #0
    f218:	c0 3f 53 59 	59533fc0       p0 = cmp.eq (r5, #3) ; jumpr lr }
    f21c:	1c c0 08 6a 	6a08c01c     r28 = usr
    f220:	e0 7f 7f 7c 	7c7f7fe0     { r1:0 = combine (#-1, #-1)
    f224:	5c c0 9c 76 	769cc05c       r28 = or (r28, #2) }
    f228:	08 c0 3c 62 	623cc008     usr = r28
    f22c:	60 40 e0 d2 	d2e04060     { p0 = dfcmp.uo (r1:0, r1:0)
    f230:	00 c0 9f 52 	529fc000       jumpr r31 }
    f234:	f0 41 82 dc 	dc8241f0     { p0 = dfclass (r3:2, #15)
    f238:	3c 40 00 88 	8800403c       r28 = convert_df2sf (r1:0)
    f23c:	02 e0 01 fd 	fd01e002       if (p0.new) r3:2 = combine (r1, r0) }
    f240:	22 40 02 88 	88024022     { r2 = convert_df2sf (r3:2)
    f244:	00 40 9f 52 	529f4000       jumpr r31
    f248:	e0 7f 7f 7c 	7c7f7fe0       r1:0 = combine (#-1, #-1)
    f24c:	00 c0 00 7f 	7f00c000       nop }
    f250:	00 42 03 f5 	f5034200     { r1:0 = combine (r3, r2)
    f254:	02 c0 01 f5 	f501c002       r3:2 = combine (r1, r0) }
    f258:	e3 c1 e3 8d 	8de3c1e3     r3 = extract (r3, #1, #31)
    f25c:	41 5f 83 8e 	8e835f41     { r1 ^= asl (r3, #31)
    f260:	00 c0 9f 52 	529fc000       jumpr r31 }
    f264:	00 c0 00 7f 	7f00c000     nop
    f268:	00 c0 00 7f 	7f00c000     nop
    f26c:	00 c0 00 7f 	7f00c000     nop
    f270:	00 c0 00 7f 	7f00c000     nop
    f274:	00 c0 00 7f 	7f00c000     nop
    f278:	00 c0 00 7f 	7f00c000     nop
    f27c:	00 c0 00 7f 	7f00c000     nop

0000f280 <__hexagon_sqrt>:
    f280:	53 40 80 dc 	dc804053     { p3 = dfclass (r1:0, #2)
    f284:	46 4b 20 5c 	5c204b46       if !p3.new jump:nt f30c <__hexagon_sqrt+0x8c>
    f288:	00 40 00 01 	01004000       immext (#268435456)
    f28c:	0e c0 00 7c 	7c00c00e       r15:14 = combine (##268435456, #0) }
    f290:	0e 74 20 83 	8320740e     { r15:14 = insert (r1:0, #52, #8)
    f294:	84 4b 41 8d 	8d414b84       r4 = extractu (r1, #11, #20)
    f298:	06 ce 0f f5 	f50fce06       r7:6 = combine (r15, r14) }
    f29c:	d0 42 01 69 	690142d0     { loop0 (f2c4 <__hexagon_sqrt+0x44>, #56)
    f2a0:	5c 41 c1 13 	13c1415c       p1 = cmp.gt (r1, #-1) ; if (!p1.new) jump:nt f354 <__hexagon_sqrt+0xd4>
    f2a4:	fc ff 01 78 	7801fffc       r28 = #1023 }
    f2a8:	00 40 04 85 	85044000     { p0 = tstbit (r4, #0)
    f2ac:	4c 41 0e 80 	800e414c       r13:12 = asl (r15:14, #1)
    f2b0:	04 c4 1c f7 	f71cc404       r4 = vavgh (r28, r4) }
    f2b4:	08 4c 0e d1 	d10e4c08     { r9:8 = vmux (p0, r15:14, r13:12)
    f2b8:	22 c1 06 80 	8006c122       r3:2 = lsr (r7:6, #1) }
    f2bc:	e8 48 26 d3 	d32648e8     { r9:8 = sub (r9:8, r7:6)
    f2c0:	3c c0 00 78 	7800c03c       r28 = #1 }
    f2c4:	c2 41 06 82 	820641c2     { r3:2 += asl (r7:6, #1)
    f2c8:	48 41 08 80 	80084148       r9:8 = asl (r9:8, #1)
    f2cc:	0a c2 03 f5 	f503c20a       r11:10 = combine (r3, r2) }
    f2d0:	e8 48 22 d3 	d32248e8     { r9:8 = sub (r9:8, r3:2)
    f2d4:	4a 4a e6 d3 	d3e64a4a       r11:10 = or (r7:6, r11:10)
    f2d8:	02 4a 0b f5 	f50b4a02       r3:2 = combine (r11, r10)
    f2dc:	0c c8 09 f5 	f509c80c       r13:12 = combine (r9, r8) }
    f2e0:	e0 bf 69 75 	7569bfe0     { p0 = cmp.gt (r9, #-1)
    f2e4:	22 41 02 80 	80024122       r3:2 = lsr (r3:2, #1)
    f2e8:	88 6c 0d fd 	fd0d6c88       if !p0.new r9:8 = combine (r13, r12)
    f2ec:	06 ea 0b fd 	fd0bea06       if (p0.new) r7:6 = combine (r11, r10) }:endloop0
    f2f0:	00 40 09 75 	75094000     { p0 = cmp.eq (r9, #0)
    f2f4:	00 40 08 75 	75084000       p0 = cmp.eq (r8, #0)
    f2f8:	86 fc 26 f9 	f926fc86       if !p0.new r6 = or (r6, r28) }
    f2fc:	60 40 e6 80 	80e64060     { r1:0 = convert_d2df (r7:6)
    f300:	a4 f8 a4 bf 	bfa4f8a4       r4 = add (r4, #-1083) }
    f304:	c1 54 04 8e 	8e0454c1     { r1 += asl (r4, #20)
    f308:	00 c0 9f 52 	529fc000       jumpr r31 }
    f30c:	10 42 80 dc 	dc804210     { p0 = dfclass (r1:0, #16)
    f310:	1c c8 00 5c 	5c00c81c       if (p0.new) jump:nt f344 <__hexagon_sqrt+0xc4> }
    f314:	30 40 80 dc 	dc804030     { p0 = dfclass (r1:0, #1)
    f318:	1e c8 00 5c 	5c00c81e       if (p0.new) jump:nt f350 <__hexagon_sqrt+0xd0> }
    f31c:	1c c1 c1 11 	11c1c11c     p0 = cmp.gt (r1, #-1) ; if (!p0.new) jump:nt f354 <__hexagon_sqrt+0xd4>
    f320:	10 41 80 dc 	dc804110     { p0 = dfclass (r1:0, #8)
    f324:	18 c8 00 5c 	5c00c818       if (p0.new) jump:nt f350 <__hexagon_sqrt+0xd0> }
    f328:	44 75 60 88 	88607544     { r4 = add (clb (r1:0), #-11)
    f32c:	00 40 00 01 	01004000       immext (#268435456)
    f330:	06 c0 00 7c 	7c00c006       r7:6 = combine (##268435456, #0) }
    f334:	24 40 44 76 	76444024     { r4 = sub (#1, r4)
    f338:	05 c1 04 b0 	b004c105       r5 = add (r4, #8) }
    f33c:	8e 45 80 c3 	c380458e     { r15:14 = asl (r1:0, r5)
    f340:	b0 ff ff 59 	59ffffb0       jump f29c <__hexagon_sqrt+0x1c> }
    f344:	24 40 00 88 	88004024     { r4 = convert_df2sf (r1:0)
    f348:	00 40 9f 52 	529f4000       jumpr r31
    f34c:	e0 ff 7f 7c 	7c7fffe0       r1:0 = combine (#-1, #-1) }
    f350:	00 c0 9f 52 	529fc000     jumpr r31
    f354:	00 40 f8 07 	07f84000     { immext (#2139095040)
    f358:	24 c0 00 78 	7800c024       r4 = ##2139095041 }
    f35c:	00 40 84 84 	84844000     { r1:0 = convert_sf2df (r4)
    f360:	00 c0 9f 52 	529fc000       jumpr r31 }
    f364:	00 c0 00 7f 	7f00c000     nop
    f368:	00 c0 00 7f 	7f00c000     nop
    f36c:	00 c0 00 7f 	7f00c000     nop

0000f370 <___exit>:
    f370:	03 40 60 70 	70604003     { r3 = r0
    f374:	50 44 00 00 	00004450       immext (#70656)
    f378:	00 47 80 49 	49804700       r0 = memw (gp + ##70712)
    f37c:	01 c0 9d a0 	a09dc001       allocframe (#8) }
    f380:	10 40 00 10 	10004010     { p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt f3a0 <___exit+0x30>
    f384:	13 28 14 6c 	6c142813       r4 = add (sp, #4) ; memw (sp + #4) = r3 }
    f388:	00 c3 00 78 	7800c300     r0 = #24
    f38c:	01 c0 64 70 	7064c001     r1 = r4
    f390:	02 c0 63 70 	7063c002     r2 = r3
    f394:	00 c0 00 54 	5400c000     trap0 (#0)
    f398:	03 c0 60 70 	7060c003     r3 = r0
    f39c:	40 3f 30 50 	50303f40     r0 = r3 ; dealloc_return
    f3a0:	d0 ee fe 5b 	5bfeeed0     call 5140 <thread_stop>
    f3a4:	03 c0 00 78 	7800c003     r3 = #0
    f3a8:	40 3f 30 50 	50303f40     r0 = r3 ; dealloc_return
    f3ac:	00 c0 00 7f 	7f00c000     nop

0000f3b0 <__lockMutex>:
    f3b0:	02 c0 00 92 	9200c002     r2 = memw_locked (r0)
    f3b4:	04 40 88 6e 	6e884004     { r4 = htid
    f3b8:	03 50 02 8c 	8c025003       r3 = asr (r2, #16)
    f3bc:	01 c0 e2 70 	70e2c001       r1 = sxth (r2) }
    f3c0:	01 44 03 f2 	f2034401     { p1 = cmp.eq (r3, r4)
    f3c4:	44 50 04 8c 	8c045044       r4 = asl (r4, #16)
    f3c8:	22 c0 02 b0 	b002c022       r2 = add (r2, #1) }
    f3cc:	0a c1 00 5c 	5c00c10a     if (p1) jump f3e0 <__lockMutex+0x30>
    f3d0:	01 40 01 75 	75014001     { p1 = cmp.eq (r1, #0)
    f3d4:	22 c0 04 b0 	b004c022       r2 = add (r4, #1) }
    f3d8:	04 c1 00 5c 	5c00c104     if (p1) jump f3e0 <__lockMutex+0x30>
    f3dc:	ea ff ff 59 	59ffffea     jump f3b0 <__lockMutex>
    f3e0:	00 c2 a0 a0 	a0a0c200     memw_locked (r0, p0) = r2
    f3e4:	e6 e0 ff 5c 	5cffe0e6     if !p0 jump f3b0 <__lockMutex>
    f3e8:	00 c0 9f 52 	529fc000     jumpr r31
    f3ec:	00 c0 00 7f 	7f00c000     nop

0000f3f0 <__sys_Mtxunlock>:
    f3f0:	01 c0 00 92 	9200c001     r1 = memw_locked (r0)
    f3f4:	04 40 88 6e 	6e884004     { r4 = htid
    f3f8:	05 43 41 8d 	8d414305       r5 = extractu (r1, #3, #16)
    f3fc:	23 c0 00 78 	7800c023       r3 = #1 }
    f400:	01 44 05 f2 	f2054401     { p1 = cmp.eq (r5, r4)
    f404:	03 c1 83 f6 	f683c103       r3 = vsubh (r1, r3) }
    f408:	00 c1 7f 53 	537fc100     if !p1 jumpr r31
    f40c:	00 c3 a0 a0 	a0a0c300     memw_locked (r0, p0) = r3
    f410:	f0 e0 ff 5c 	5cffe0f0     if !p0 jump f3f0 <__sys_Mtxunlock>
    f414:	00 c0 9f 52 	529fc000     jumpr r31
    f418:	00 40 00 7f 	7f004000     { nop
    f41c:	00 c0 00 7f 	7f00c000       nop }

0000f420 <__sys_Mtxinit>:
    f420:	01 c0 00 78 	7800c001     r1 = #0
    f424:	00 40 9f 52 	529f4000     { jumpr r31
    f428:	00 c1 80 a1 	a180c100       memw (r0 + #0) = r1 }
    f42c:	00 c0 00 7f 	7f00c000     nop

0000f430 <__sys_Mtxdst>:
    f430:	00 c0 9f 52 	529fc000     jumpr r31
    f434:	00 40 00 7f 	7f004000     { nop
    f438:	00 40 00 7f 	7f004000       nop
    f43c:	00 c0 00 7f 	7f00c000       nop }

0000f440 <__trylockMutex>:
    f440:	04 c0 88 6e 	6e88c004     r4 = htid
    f444:	02 c0 00 92 	9200c002     r2 = memw_locked (r0)
    f448:	03 d0 02 8c 	8c02d003     r3 = asr (r2, #16)
    f44c:	01 c4 03 f2 	f203c401     p1 = cmp.eq (r3, r4)
    f450:	22 c0 22 74 	7422c022     if (p1) r2 = add (r2, #1)
    f454:	10 c1 00 5c 	5c00c110     if (p1) jump f474 <__trylockMutex+0x34>
    f458:	03 c0 e2 70 	70e2c003     r3 = sxth (r2)
    f45c:	01 c0 03 75 	7503c001     p1 = cmp.eq (r3, #0)
    f460:	45 d0 04 8c 	8c04d045     r5 = asl (r4, #16)
    f464:	02 c0 25 74 	7425c002     if (p1) r2 = add (r5, #0)
    f468:	22 c0 22 74 	7422c022     if (p1) r2 = add (r2, #1)
    f46c:	04 c1 00 5c 	5c00c104     if (p1) jump f474 <__trylockMutex+0x34>
    f470:	c0 3f 00 48 	48003fc0     r0 = #0 ; jumpr lr
    f474:	00 c2 a0 a0 	a0a0c200     memw_locked (r0, p0) = r2
    f478:	e6 e0 ff 5c 	5cffe0e6     if !p0 jump f444 <__trylockMutex+0x4>
    f47c:	c0 3f 10 48 	48103fc0     r0 = #1 ; jumpr lr

0000f480 <__sys_close>:
    f480:	20 1c f4 eb 	ebf41c20     memd (sp + #-16) = r17:16 ; allocframe (#16)
    f484:	90 40 1d b0 	b01d4090     { r16 = add (r29, #4)
    f488:	50 44 00 00 	00004450       immext (#70656)
    f48c:	01 47 80 49 	49804701       r1 = memw (gp + ##70712)
    f490:	01 c0 9d a1 	a19dc001       memw (r29 + #4) = r0 }
    f494:	1c c0 01 10 	1001c01c     p0 = cmp.eq (r1, #0) ; if (p0.new) jump:nt f4cc <__sys_close+0x4c>
    f498:	80 60 30 73 	73306080     { r1:0 = combine (#4, r16)
    f49c:	0c fa fe 5b 	5bfefa0c       call 68b0 <hexagon_cache_cleaninv> }
    f4a0:	40 c0 00 78 	7800c040     r0 = #2
    f4a4:	01 c0 70 70 	7070c001     r1 = r16
    f4a8:	00 c0 00 54 	5400c000     trap0 (#0)
    f4ac:	10 c0 60 70 	7060c010     r16 = r0
    f4b0:	11 c0 61 70 	7061c011     r17 = r1
    f4b4:	06 c0 88 11 	1188c006     p0 = cmp.eq (r16, #-1) ; if (p0.new) jump:nt f4c0 <__sys_close+0x40>
    f4b8:	00 40 70 70 	70704000     { r0 = r16
    f4bc:	40 1f 0c 3e 	3e0c1f40       r17:16 = memd (sp + #8) ; dealloc_return }
    f4c0:	a8 d2 ff 5b 	5bffd2a8     call 9a10 <_Geterrno>
    f4c4:	09 00 80 70 	70800009     r0 = r16 ; memw (r0 + #0) = r17
    f4c8:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    f4cc:	a2 d2 ff 5b 	5bffd2a2     call 9a10 <_Geterrno>
    f4d0:	f0 7f df 78 	78df7ff0     { r16 = #-1
    f4d4:	f4 7f ff 59 	59ff7ff4       jump f4b8 <__sys_close+0x38>
    f4d8:	59 c0 40 3c 	3c40c059       memw (r0 + #0) = #89 }
    f4dc:	00 c0 00 7f 	7f00c000     nop

0000f4e0 <__sys_open>:
    f4e0:	50 44 00 00 	00004450     { immext (#70656)
    f4e4:	02 c7 80 49 	4980c702       r2 = memw (gp + ##70712) }
    f4e8:	00 40 02 75 	75024000     { p0 = cmp.eq (r2, #0)
    f4ec:	10 40 01 f5 	f5014010       r17:16 = combine (r1, r0)
    f4f0:	30 1c f4 eb 	ebf41c30       memd (sp + #-16) = r17:16 ; allocframe (#24) }
    f4f4:	44 40 00 5c 	5c004044     { if (p0) jump f57c <__sys_open+0x9c>
    f4f8:	00 50 9d 44 	449d5000       if !p0 memw (r29 + #0) = r16
    f4fc:	80 c0 dd 38 	38ddc080       if !p0 memw (r29 + #4) = #0 }
    f500:	1b 42 00 00 	0000421b     { immext (#34496)
    f504:	71 40 11 76 	76114071       r17 = and (r17, ##34499)
    f508:	88 f9 fe 5b 	5bfef988       call 6810 <strlen> }
    f50c:	2e 40 09 10 	1009402e     { p0 = cmp.eq (r17, #0) ; if (p0.new) jump:nt f568 <__sys_open+0x88>
    f510:	20 28 41 7a 	7a412820       if (p0.new) r1 = #0 ; memw (sp + #8) = r0 }
    f514:	79 40 00 69 	69004079     { loop0 (f520 <__sys_open+0x40>, #13)
    f518:	34 44 00 00 	00004434       immext (#68864)
    f51c:	20 c0 92 7c 	7c92c020       r1:0 = combine (#1, ##68900) }
    f520:	02 00 40 40 	40400002     r0 = add (r0, #4) ; r2 = memw (r0 + #0)
    f524:	21 60 81 74 	74816021     { if !p0.new r1 = add (r1, #1)
    f528:	22 c9 02 14 	1402c922       p0 = cmp.eq (r2, r17) ; if (p0.new) jump:nt f568 <__sys_open+0x88> }
    f52c:	00 80 00 7f 	7f008000     { nop
    f530:	00 c0 00 7f 	7f00c000       nop }:endloop0
    f534:	21 3c 80 50 	50803c21     r0 = r16 ; r1 = memw (sp + #8)
    f538:	21 40 01 b0 	b0014021     { r1 = add (r1, #1)
    f53c:	bc f9 fe 5b 	5bfef9bc       call 68b0 <hexagon_cache_cleaninv> }
    f540:	80 61 3d 73 	733d6180     { r1:0 = combine (#12, r29)
    f544:	b8 f9 fe 5b 	5bfef9b8       call 68b0 <hexagon_cache_cleaninv> }
    f548:	20 c0 00 78 	7800c020     r0 = #1
    f54c:	01 c0 7d 70 	707dc001     r1 = r29
    f550:	00 c0 00 54 	5400c000     trap0 (#0)
    f554:	10 c0 60 70 	7060c010     r16 = r0
    f558:	11 c0 61 70 	7061c011     r17 = r1
    f55c:	0a c0 88 11 	1188c00a     p0 = cmp.eq (r16, #-1) ; if (p0.new) jump:nt f570 <__sys_open+0x90>
    f560:	00 40 70 70 	70704000     { r0 = r16
    f564:	40 1f 14 3e 	3e141f40       r17:16 = memd (sp + #16) ; dealloc_return }
    f568:	e6 7f ff 59 	59ff7fe6     { jump f534 <__sys_open+0x54>
    f56c:	01 c1 9d a1 	a19dc101       memw (r29 + #4) = r1 }
    f570:	50 d2 ff 5b 	5bffd250     call 9a10 <_Geterrno>
    f574:	09 00 80 70 	70800009     r0 = r16 ; memw (r0 + #0) = r17
    f578:	40 1f 14 3e 	3e141f40     r17:16 = memd (sp + #16) ; dealloc_return
    f57c:	4a d2 ff 5b 	5bffd24a     call 9a10 <_Geterrno>
    f580:	f0 7f df 78 	78df7ff0     { r16 = #-1
    f584:	f0 7f ff 59 	59ff7ff0       jump f560 <__sys_open+0x80>
    f588:	59 c0 40 3c 	3c40c059       memw (r0 + #0) = #89 }
    f58c:	00 c0 00 7f 	7f00c000     nop

0000f590 <low_read>:
    f590:	30 1c f4 eb 	ebf41c30     memd (sp + #-16) = r17:16 ; allocframe (#24)
    f594:	80 61 3d 73 	733d6180     { r1:0 = combine (#12, r29)
    f598:	11 08 00 e8 	e8000811       memw (sp + #0) = r0 ; memw (sp + #4) = r1 }
    f59c:	8a 79 fe 5b 	5bfe798a     { call 68b0 <hexagon_cache_cleaninv>
    f5a0:	02 c2 9d a1 	a19dc202       memw (r29 + #8) = r2 }
    f5a4:	c0 c0 00 78 	7800c0c0     r0 = #6
    f5a8:	01 c0 7d 70 	707dc001     r1 = r29
    f5ac:	00 c0 00 54 	5400c000     trap0 (#0)
    f5b0:	10 c0 60 70 	7060c010     r16 = r0
    f5b4:	11 c0 61 70 	7061c011     r17 = r1
    f5b8:	00 40 70 70 	70704000     { r0 = r16
    f5bc:	08 40 88 11 	11884008       p0 = cmp.eq (r16, #-1) ; if (p0.new) jump:nt f5c8 <low_read+0x38>
    f5c0:	50 c0 dd 47 	47ddc050       if !p0.new r17:16 = memd (r29 + #16) }
    f5c4:	1e c0 1e 96 	961ec01e     dealloc_return
    f5c8:	24 d2 ff 5b 	5bffd224     call 9a10 <_Geterrno>
    f5cc:	09 00 80 70 	70800009     r0 = r16 ; memw (r0 + #0) = r17
    f5d0:	40 1f 14 3e 	3e141f40     r17:16 = memd (sp + #16) ; dealloc_return
    f5d4:	00 40 00 7f 	7f004000     { nop
    f5d8:	00 40 00 7f 	7f004000       nop
    f5dc:	00 c0 00 7f 	7f00c000       nop }

0000f5e0 <__sys_read>:
    f5e0:	00 79 ff 5b 	5bff7900     { call e7e0 <__save_r16_through_r25>
    f5e4:	05 c0 9d a0 	a09dc005       allocframe (#40) }
    f5e8:	f0 43 01 76 	760143f0     { r16 = and (r1, #31)
    f5ec:	0e 30 1c 30 	301c300e       r20 = r1 ; r22 = r0 }
    f5f0:	10 c4 50 76 	7650c410     r16 = sub (#32, r16)
    f5f4:	10 d0 a2 d5 	d5a2d010     r16 = min (r16, r2)
    f5f8:	12 42 30 f3 	f3304212     { r18 = sub (r2, r16)
    f5fc:	00 c0 10 75 	7510c000       p0 = cmp.eq (r16, #0) }
    f600:	11 7c 32 76 	76327c11     { r17 = and (r18, #-32)
    f604:	35 c0 00 7a 	7a00c035       r21 = mux (p0, #1, #0) }
    f608:	13 52 31 f3 	f3315213     { r19 = sub (r18, r17)
    f60c:	38 40 20 5c 	5c204038       if !p0 jump f678 <__sys_read+0x98>
    f610:	00 cc 00 78 	7800cc00       r0 = #96 }
    f614:	5e c0 49 10 	1049c05e     p0 = cmp.eq (r17, #0) ; if (!p0.new) jump:nt f6d0 <__sys_read+0xf0>
    f618:	12 60 00 7e 	7e006012     { if (p0.new) r18 = #0
    f61c:	2c c0 0b 10 	100bc02c       p0 = cmp.eq (r19, #0) ; if (p0.new) jump:nt f670 <__sys_read+0x90> }
    f620:	00 4c 00 78 	78004c00     { r0 = #96
    f624:	72 c3 8d 11 	118dc372       p0 = tstbit (r21, #0) ; if (p0.new) jump:nt f704 <__sys_read+0x124> }
    f628:	f5 43 17 b0 	b01743f5     { r21 = add (r23, #31)
    f62c:	01 c4 00 78 	7800c401       r1 = #32 }
    f630:	15 fc 35 76 	7635fc15     r21 = and (r21, #-32)
    f634:	00 40 75 70 	70754000     { r0 = r21
    f638:	3e f9 fe 5b 	5bfef93e       call 68b0 <hexagon_cache_cleaninv> }
    f63c:	02 40 73 70 	70734002     { r2 = r19
    f640:	aa 7f ff 5b 	5bff7faa       call f590 <low_read>
    f644:	00 d6 15 f5 	f515d600       r1:0 = combine (r21, r22) }
    f648:	12 40 60 70 	70604012     { r18 = r0
    f64c:	54 79 fe 5b 	5bfe7954       call 68f0 <hexagon_cache_inva>
    f650:	00 e4 35 73 	7335e400       r1:0 = combine (#32, r21) }
    f654:	01 40 75 70 	70754001     { r1 = r21
    f658:	b2 30 80 30 	308030b2       r0 = r16 ; r2 = r19 }
    f65c:	20 51 14 ef 	ef145120     { r0 += add (r20, r17)
    f660:	fa f5 fe 5b 	5bfef5fa       call 6250 <memcpy> }
    f664:	00 40 77 70 	70774000     { r0 = r23
    f668:	06 70 fe 5b 	5bfe7006       call 5670 <free>
    f66c:	00 c0 00 7f 	7f00c000       nop }
    f670:	c7 7f ff 0f 	0fff7fc7     { immext (#4294963648)
    f674:	28 c0 0a 17 	170ac028       r0 = r18 ; jump e844 <__restore_r16_through_r25_and_deallocframe> }
    f678:	4c f1 fe 5b 	5bfef14c     call 5910 <malloc>
    f67c:	f8 43 00 b0 	b00043f8     { r24 = add (r0, #31)
    f680:	0f 30 01 2a 	2a01300f       r1 = #32 ; r23 = r0 }
    f684:	18 fc 38 76 	7638fc18     r24 = and (r24, #-32)
    f688:	00 40 78 70 	70784000     { r0 = r24
    f68c:	14 f9 fe 5b 	5bfef914       call 68b0 <hexagon_cache_cleaninv> }
    f690:	02 40 70 70 	70704002     { r2 = r16
    f694:	80 7f ff 5b 	5bff7f80       call f590 <low_read>
    f698:	00 d6 18 f5 	f518d600       r1:0 = combine (r24, r22) }
    f69c:	19 40 60 70 	70604019     { r25 = r0
    f6a0:	2a 79 fe 5b 	5bfe792a       call 68f0 <hexagon_cache_inva>
    f6a4:	00 e4 38 73 	7338e400       r1:0 = combine (#32, r24) }
    f6a8:	00 54 18 f5 	f5185400     { r1:0 = combine (r24, r20)
    f6ac:	d4 75 fe 5b 	5bfe75d4       call 6250 <memcpy>
    f6b0:	02 c0 70 70 	7070c002       r2 = r16 }
    f6b4:	00 40 77 70 	70774000     { r0 = r23
    f6b8:	2c 40 0b 10 	100b402c       p0 = cmp.eq (r19, #0) ; if (p0.new) jump:nt f70c <__sys_read+0x12c>
    f6bc:	00 c0 00 7f 	7f00c000       nop }
    f6c0:	00 40 19 75 	75194000     { p0 = cmp.eq (r25, #0)
    f6c4:	d8 68 ff 5c 	5cff68d8       if !p0.new jump:nt f670 <__sys_read+0x90>
    f6c8:	92 f2 19 fb 	fb19f292       if !p0.new r18 = add (r25, r18) }
    f6cc:	a6 e0 39 10 	1039e0a6     p0 = cmp.eq (r17, #0) ; if (p0.new) jump:t f618 <__sys_read+0x38>
    f6d0:	18 d0 14 f3 	f314d018     r24 = add (r20, r16)
    f6d4:	00 58 11 f5 	f5115800     { r1:0 = combine (r17, r24)
    f6d8:	ee f8 fe 5b 	5bfef8ee       call 68b0 <hexagon_cache_cleaninv> }
    f6dc:	00 56 18 f5 	f5185600     { r1:0 = combine (r24, r22)
    f6e0:	5a 7f ff 5b 	5bff7f5a       call f590 <low_read>
    f6e4:	02 c0 71 70 	7071c002       r2 = r17 }
    f6e8:	12 40 60 70 	70604012     { r18 = r0
    f6ec:	04 79 fe 5b 	5bfe7904       call 68f0 <hexagon_cache_inva>
    f6f0:	00 d8 11 f5 	f511d800       r1:0 = combine (r17, r24) }
    f6f4:	92 73 12 fb 	fb127392     { if !p0.new r18 = add (r18, r19)
    f6f8:	92 e0 3a 10 	103ae092       p0 = cmp.eq (r18, #0) ; if (p0.new) jump:t f618 <__sys_read+0x38> }
    f6fc:	c5 7f ff 0f 	0fff7fc5     { immext (#4294963520)
    f700:	10 c0 0a 17 	170ac010       r0 = r18 ; jump e844 <__restore_r16_through_r25_and_deallocframe> }
    f704:	06 f1 fe 5b 	5bfef106     call 5910 <malloc>
    f708:	90 cf 30 17 	1730cf90     r23 = r0 ; jump f628 <__sys_read+0x48>
    f70c:	b2 ef fe 5b 	5bfeefb2     call 5670 <free>
    f710:	d8 ff ff 59 	59ffffd8     jump f6c0 <__sys_read+0xe0>
    f714:	00 c0 00 7f 	7f00c000     nop
    f718:	00 c0 00 7f 	7f00c000     nop
    f71c:	00 c0 00 7f 	7f00c000     nop

0000f720 <__sys_remove>:
    f720:	50 44 00 00 	00004450     { immext (#70656)
    f724:	01 c7 80 49 	4980c701       r1 = memw (gp + ##70712) }
    f728:	00 40 01 75 	75014000     { p0 = cmp.eq (r1, #0)
    f72c:	11 40 60 70 	70604011       r17 = r0
    f730:	20 1c f4 eb 	ebf41c20       memd (sp + #-16) = r17:16 ; allocframe (#16) }
    f734:	28 40 00 5c 	5c004028     { if (p0) jump f784 <__sys_remove+0x64>
    f738:	6e 78 fe 5b 	5bfe786e       call 6810 <strlen>
    f73c:	00 c0 9d 44 	449dc000       if !p0 memw (r29 + #0) = r0 }
    f740:	68 78 fe 5b 	5bfe7868     { call 6810 <strlen>
    f744:	10 28 90 70 	70902810       r0 = r17 ; memw (sp + #4) = r0 }
    f748:	b4 78 fe 5b 	5bfe78b4     { call 68b0 <hexagon_cache_cleaninv>
    f74c:	01 31 90 30 	30903101       r0 = r17 ; r1 = add (r0, #1) }
    f750:	00 61 3d 73 	733d6100     { r1:0 = combine (#8, r29)
    f754:	b0 f8 fe 5b 	5bfef8b0       call 68b0 <hexagon_cache_cleaninv> }
    f758:	c0 c1 00 78 	7800c1c0     r0 = #14
    f75c:	01 c0 7d 70 	707dc001     r1 = r29
    f760:	00 c0 00 54 	5400c000     trap0 (#0)
    f764:	10 c0 60 70 	7060c010     r16 = r0
    f768:	11 c0 61 70 	7061c011     r17 = r1
    f76c:	06 c0 88 11 	1188c006     p0 = cmp.eq (r16, #-1) ; if (p0.new) jump:nt f778 <__sys_remove+0x58>
    f770:	00 40 70 70 	70704000     { r0 = r16
    f774:	40 1f 0c 3e 	3e0c1f40       r17:16 = memd (sp + #8) ; dealloc_return }
    f778:	4c d1 ff 5b 	5bffd14c     call 9a10 <_Geterrno>
    f77c:	09 00 80 70 	70800009     r0 = r16 ; memw (r0 + #0) = r17
    f780:	40 1f 0c 3e 	3e0c1f40     r17:16 = memd (sp + #8) ; dealloc_return
    f784:	46 d1 ff 5b 	5bffd146     call 9a10 <_Geterrno>
    f788:	f0 7f df 78 	78df7ff0     { r16 = #-1
    f78c:	f4 7f ff 59 	59ff7ff4       jump f770 <__sys_remove+0x50>
    f790:	59 c0 40 3c 	3c40c059       memw (r0 + #0) = #89 }
    f794:	00 c0 00 7f 	7f00c000     nop
    f798:	00 c0 00 7f 	7f00c000     nop
    f79c:	00 c0 00 7f 	7f00c000     nop

0000f7a0 <__sys_sbrk>:
    f7a0:	11 40 60 70 	70604011     { r17 = r0
    f7a4:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    f7a8:	02 4f 00 00 	00004f02     { immext (#245888)
    f7ac:	80 43 00 78 	78004380       r0 = ##245916
    f7b0:	04 fe ff 5b 	5bfffe04       call f3b0 <__lockMutex> }
    f7b4:	00 40 00 7f 	7f004000     { nop
    f7b8:	d0 44 80 49 	498044d0       r16 = memw (gp + #152)
    f7bc:	38 c0 02 24 	2402c038       if (cmp.eq (r16.new, #0)) jump:nt f824 <__sys_sbrk+0x84> }
    f7c0:	f1 40 10 db 	db1040f1     { r0 = add (r16, add (r17, #7))
    f7c4:	1a c0 09 10 	1009c01a       p0 = cmp.eq (r17, #0) ; if (p0.new) jump:nt f7f4 <__sys_sbrk+0x54> }
    f7c8:	00 7f 20 76 	76207f00     { r0 = and (r0, #-8)
    f7cc:	40 44 00 00 	00004440       immext (#69632)
    f7d0:	01 c3 80 49 	4980c301       r1 = memw (gp + ##69656) }
    f7d4:	0a c0 01 15 	1501c00a     p0 = cmp.gtu (r1, r0) ; if (p0.new) jump:nt f7e8 <__sys_sbrk+0x48>
    f7d8:	40 44 00 00 	00004440     { immext (#69632)
    f7dc:	81 43 80 49 	49804381       r1 = memw (gp + ##69660)
    f7e0:	18 c0 03 24 	2403c018       if (cmp.eq (r1.new, #0)) jump:nt f808 <__sys_sbrk+0x68> }
    f7e4:	12 c0 01 15 	1501c012     p0 = cmp.gtu (r1, r0) ; if (p0.new) jump:nt f808 <__sys_sbrk+0x68>
    f7e8:	14 d1 ff 5b 	5bffd114     call 9a10 <_Geterrno>
    f7ec:	f0 7f df 78 	78df7ff0     { r16 = #-1
    f7f0:	0c c0 40 3c 	3c40c00c       memw (r0 + #0) = #12 }
    f7f4:	02 4f 00 00 	00004f02     { immext (#245888)
    f7f8:	80 43 00 78 	78004380       r0 = ##245916
    f7fc:	fe fd ff 5b 	5bfffdfe       call f3f0 <__sys_Mtxunlock> }
    f800:	00 40 70 70 	70704000     { r0 = r16
    f804:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    f808:	02 4f 00 00 	00004f02     { immext (#245888)
    f80c:	80 43 00 78 	78004380       r0 = ##245916
    f810:	26 40 80 48 	48804026       memw (gp + #152) = r0
    f814:	00 d1 90 a1 	a190d100       memw (r16 + #0) = r17 }
    f818:	ec fd ff 5b 	5bfffdec     call f3f0 <__sys_Mtxunlock>
    f81c:	00 40 70 70 	70704000     { r0 = r16
    f820:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    f824:	40 44 00 00 	00004440     { immext (#69632)
    f828:	10 c3 80 49 	4980c310       r16 = memw (gp + ##69656) }
    f82c:	00 40 10 75 	75104000     { p0 = cmp.eq (r16, #0)
    f830:	0e 4f 00 00 	00004f0e       immext (#246656)
    f834:	10 e0 00 7e 	7e00e010       if (p0.new) r16 = ##246656 }
    f838:	c4 7f ff 59 	59ff7fc4     { jump f7c0 <__sys_sbrk+0x20>
    f83c:	26 d0 80 48 	4880d026       memw (gp + #152) = r16 }

0000f840 <__sys_Tlsset>:
    f840:	c0 7e 1e 00 	001e7ec0     { immext (#32485376)
    f844:	00 c0 00 b0 	b000c000       r0 = add (r0, ##32485376) }
    f848:	e0 47 80 75 	758047e0     { p0 = cmp.gtu (r0, #63)
    f84c:	18 48 00 5c 	5c004818       if (p0.new) jump:nt f878 <__sys_Tlsset+0x38>
    f850:	52 4d 00 00 	00004d52       immext (#218240)
    f854:	02 c4 00 78 	7800c402       r2 = ##218272 }
    f858:	03 60 82 3a 	3a826003     { r3 = memw (r2 + r0 << #2)
    f85c:	10 c0 03 24 	2403c010       if (cmp.eq (r3.new, #0)) jump:nt f878 <__sys_Tlsset+0x38> }
    f860:	03 c0 88 6e 	6e88c003     r3 = htid
    f864:	c3 43 80 df 	df8043c3     { r3 = add (r3, mpyi (r0, #6))
    f868:	00 c0 00 78 	7800c000       r0 = #0 }
    f86c:	03 c8 03 b0 	b003c803     r3 = add (r3, #64)
    f870:	00 40 9f 52 	529f4000     { jumpr r31
    f874:	01 e3 82 3b 	3b82e301       memw (r2 + r3 << #2) = r1 }
    f878:	c0 3f 60 49 	49603fc0     r0 = #22 ; jumpr lr
    f87c:	00 c0 00 7f 	7f00c000     nop

0000f880 <__sys_Tlsget>:
    f880:	c0 7e 1e 00 	001e7ec0     { immext (#32485376)
    f884:	00 c0 00 b0 	b000c000       r0 = add (r0, ##32485376) }
    f888:	e0 47 80 75 	758047e0     { p0 = cmp.gtu (r0, #63)
    f88c:	0a 48 20 5c 	5c20480a       if !p0.new jump:nt f89c <__sys_Tlsget+0x1c>
    f890:	52 4d 00 00 	00004d52       immext (#218240)
    f894:	01 c4 00 78 	7800c401       r1 = ##218272 }
    f898:	c0 3f 00 48 	48003fc0     r0 = #0 ; jumpr lr
    f89c:	02 60 81 3a 	3a816002     { r2 = memw (r1 + r0 << #2)
    f8a0:	fe c0 32 24 	2432c0fe       if (cmp.eq (r2.new, #0)) jump:nt f898 <__sys_Tlsget+0x18> }
    f8a4:	02 c0 88 6e 	6e88c002     r2 = htid
    f8a8:	c2 c0 80 df 	df80c0c2     r0 = add (r2, mpyi (r0, #6))
    f8ac:	00 c8 00 b0 	b000c800     r0 = add (r0, #64)
    f8b0:	00 40 9f 52 	529f4000     { jumpr r31
    f8b4:	00 e0 81 3a 	3a81e000       r0 = memw (r1 + r0 << #2) }
    f8b8:	00 40 00 7f 	7f004000     { nop
    f8bc:	00 c0 00 7f 	7f00c000       nop }

0000f8c0 <__sys_Tlsfree>:
    f8c0:	c0 7e 1e 00 	001e7ec0     { immext (#32485376)
    f8c4:	10 40 00 b0 	b0004010       r16 = add (r0, ##32485376)
    f8c8:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    f8cc:	e0 47 90 75 	759047e0     { p0 = cmp.gtu (r16, #63)
    f8d0:	0c 48 00 5c 	5c00480c       if (p0.new) jump:nt f8e4 <__sys_Tlsfree+0x24>
    f8d4:	52 4d 00 00 	00004d52       immext (#218240)
    f8d8:	11 c4 00 78 	7800c411       r17 = ##218272 }
    f8dc:	00 70 91 3a 	3a917000     { r0 = memw (r17 + r16 << #2)
    f8e0:	08 c0 42 24 	2442c008       if (!cmp.eq (r0.new, #0)) jump:nt f8ec <__sys_Tlsfree+0x2c> }
    f8e4:	c0 42 00 78 	780042c0     { r0 = #22
    f8e8:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    f8ec:	02 4f 00 00 	00004f02     { immext (#245888)
    f8f0:	00 44 00 78 	78004400       r0 = ##245920
    f8f4:	62 fd ff 5b 	5bfffd62       call f3b0 <__lockMutex> }
    f8f8:	02 4f 00 00 	00004f02     { immext (#245888)
    f8fc:	00 c0 90 7c 	7c90c000       r1:0 = combine (#0, ##245920) }
    f900:	78 7d ff 5b 	5bff7d78     { call f3f0 <__sys_Mtxunlock>
    f904:	01 f0 91 3b 	3b91f001       memw (r17 + r16 << #2) = r1 }
    f908:	00 40 00 78 	78004000     { r0 = #0
    f90c:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }

0000f910 <__sys_Tlsalloc>:
    f910:	00 40 00 75 	75004000     { p0 = cmp.eq (r0, #0)
    f914:	10 40 60 70 	70604010       r16 = r0
    f918:	10 1c f4 eb 	ebf41c10       memd (sp + #-16) = r17:16 ; allocframe (#8) }
    f91c:	91 41 00 7e 	7e004191     { if (p0) r17 = #12
    f920:	24 40 00 5c 	5c004024       if (p0) jump f964 <__sys_Tlsalloc+0x54>
    f924:	02 4f 00 00 	00004f02       immext (#245888)
    f928:	00 c4 00 78 	7800c400       r0 = ##245920 }
    f92c:	42 fd ff 5b 	5bfffd42     call f3b0 <__lockMutex>
    f930:	00 41 02 69 	69024100     { loop0 (f940 <__sys_Tlsalloc+0x30>, #64)
    f934:	52 4d 00 00 	00004d52       immext (#218240)
    f938:	03 c4 00 78 	7800c403       r3 = ##218272 }
    f93c:	00 e0 23 73 	7323e000     r1:0 = combine (#0, r3)
    f940:	02 00 40 40 	40400002     r0 = add (r0, #4) ; r2 = memw (r0 + #0)
    f944:	21 60 81 74 	74816021     { if !p0.new r1 = add (r1, #1)
    f948:	14 40 02 10 	10024014       p0 = cmp.eq (r2, #0) ; if (p0.new) jump:nt f96c <__sys_Tlsalloc+0x5c>
    f94c:	28 c0 00 78 	7800c028       r8 = #1 }
    f950:	71 81 00 78 	78008171     { r17 = #11
    f954:	00 c0 00 7f 	7f00c000       nop }:endloop0
    f958:	02 4f 00 00 	00004f02     { immext (#245888)
    f95c:	00 44 00 78 	78004400       r0 = ##245920
    f960:	4c fd ff 5b 	5bfffd4c       call f3f0 <__sys_Mtxunlock> }
    f964:	00 40 71 70 	70714000     { r0 = r17
    f968:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    f96c:	c3 40 01 df 	df0140c3     { r0 = add (r3, mpyi (#24, r1))
    f970:	40 41 e1 0f 	0fe14140       immext (#4262481920)
    f974:	02 40 01 b0 	b0014002       r2 = add (r1, ##-32485376)
    f978:	08 e1 83 3b 	3b83e108       memw (r3 + r1 << #2) = r8 }
    f97c:	04 60 00 b0 	b0006004     { r4 = add (r0, #256)
    f980:	87 60 00 b0 	b0006087       r7 = add (r0, #260)
    f984:	06 61 00 b0 	b0006106       r6 = add (r0, #264)
    f988:	85 e1 00 b0 	b000e185       r5 = add (r0, #268) }
    f98c:	04 62 00 b0 	b0006204     { r4 = add (r0, #272)
    f990:	80 62 00 b0 	b0006280       r0 = add (r0, #276)
    f994:	70 10 40 f0 	f0401070       memw (r4 + #0) = #0 ; memw (r7 + #0) = #0 }
    f998:	11 40 00 78 	78004011     { r17 = #0
    f99c:	50 10 60 f0 	f0601050       memw (r6 + #0) = #0 ; memw (r5 + #0) = #0 }
    f9a0:	02 4f 00 00 	00004f02     { immext (#245888)
    f9a4:	00 44 00 78 	78004400       r0 = ##245920
    f9a8:	00 10 40 f0 	f0401000       memw (r4 + #0) = #0 ; memw (r0 + #0) = #0 }
    f9ac:	22 7d ff 5b 	5bff7d22     { call f3f0 <__sys_Mtxunlock>
    f9b0:	00 c2 90 a1 	a190c200       memw (r16 + #0) = r2 }
    f9b4:	00 40 71 70 	70714000     { r0 = r17
    f9b8:	40 1f 04 3e 	3e041f40       r17:16 = memd (sp + #0) ; dealloc_return }
    f9bc:	00 c0 00 7f 	7f00c000     nop

0000f9c0 <AtEnd>:
    f9c0:	02 4f 00 00 	00004f02     { immext (#245888)
    f9c4:	00 44 00 78 	78004400       r0 = ##245920
    f9c8:	38 fd ff 59 	59fffd38       jump f430 <__sys_Mtxdst> }
    f9cc:	00 c0 00 7f 	7f00c000     nop

0000f9d0 <BeforeBegin>:
    f9d0:	02 4f 00 00 	00004f02     { immext (#245888)
    f9d4:	00 44 00 78 	78004400       r0 = ##245920
    f9d8:	28 fd ff 59 	59fffd28       jump f420 <__sys_Mtxinit> }
    f9dc:	00 c0 00 7f 	7f00c000     nop

0000f9e0 <__sys_write>:
    f9e0:	03 40 61 70 	70614003     { r3 = r1
    f9e4:	50 44 00 00 	00004450       immext (#70656)
    f9e8:	04 c7 80 49 	4980c704       r4 = memw (gp + ##70712) }
    f9ec:	26 40 04 10 	10044026     { p0 = cmp.eq (r4, #0) ; if (p0.new) jump:nt fa38 <__sys_write+0x58>
    f9f0:	30 1c f4 eb 	ebf41c30       memd (sp + #-16) = r17:16 ; allocframe (#24) }
    f9f4:	00 41 02 f5 	f5024100     { r1:0 = combine (r2, r1)
    f9f8:	13 08 00 e8 	e8000813       memw (sp + #0) = r0 ; memw (sp + #4) = r3 }
    f9fc:	5a 77 fe 5b 	5bfe775a     { call 68b0 <hexagon_cache_cleaninv>
    fa00:	02 c2 9d a1 	a19dc202       memw (r29 + #8) = r2 }
    fa04:	80 61 3d 73 	733d6180     { r1:0 = combine (#12, r29)
    fa08:	56 f7 fe 5b 	5bfef756       call 68b0 <hexagon_cache_cleaninv> }
    fa0c:	a0 c0 00 78 	7800c0a0     r0 = #5
    fa10:	01 c0 7d 70 	707dc001     r1 = r29
    fa14:	00 c0 00 54 	5400c000     trap0 (#0)
    fa18:	10 c0 60 70 	7060c010     r16 = r0
    fa1c:	11 c0 61 70 	7061c011     r17 = r1
    fa20:	06 c0 88 11 	1188c006     p0 = cmp.eq (r16, #-1) ; if (p0.new) jump:nt fa2c <__sys_write+0x4c>
    fa24:	00 40 70 70 	70704000     { r0 = r16
    fa28:	40 1f 14 3e 	3e141f40       r17:16 = memd (sp + #16) ; dealloc_return }
    fa2c:	f2 cf ff 5b 	5bffcff2     call 9a10 <_Geterrno>
    fa30:	09 00 80 70 	70800009     r0 = r16 ; memw (r0 + #0) = r17
    fa34:	40 1f 14 3e 	3e141f40     r17:16 = memd (sp + #16) ; dealloc_return
    fa38:	ec cf ff 5b 	5bffcfec     call 9a10 <_Geterrno>
    fa3c:	f0 7f df 78 	78df7ff0     { r16 = #-1
    fa40:	f4 7f ff 59 	59ff7ff4       jump fa24 <__sys_write+0x44>
    fa44:	59 c0 40 3c 	3c40c059       memw (r0 + #0) = #89 }

Disassembly of section .fini:

0000fa60 <_fini>:
    fa60:	01 c0 9d a0 	a09dc001     allocframe (#8)
    fa64:	00 db 9d a1 	a19ddb00     memw (r29 + #0) = r27
    fa68:	01 c0 3b 72 	723bc001     r27.h = #1
    fa6c:	0c d0 3b 71 	713bd00c     r27.l = #4108
    fa70:	9b c0 1b b0 	b01bc09b     r27 = add (r27, #4)
    fa74:	00 c0 9b 91 	919bc000     r0 = memw (r27 + #0)
    fa78:	06 c0 00 10 	1000c006     p0 = cmp.eq (r0, #0) ; if (p0.new) jump:nt fa84 <_fini+0x24>
    fa7c:	00 c0 a0 50 	50a0c000     callr r0
    fa80:	f8 ff ff 59 	59fffff8     jump fa70 <_fini+0x10>
    fa84:	1b 40 9d 91 	919d401b     { r27 = memw (r29 + #0)
    fa88:	1e c0 1e 90 	901ec01e       deallocframe }
    fa8c:	00 c0 9f 52 	529fc000     jumpr r31
