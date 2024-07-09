
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	143800cf 	lu12i.w	$r15,114694(0x1c006)
1c00000c:	03b8e1ef 	ori	$r15,$r15,0xe38
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	038081ef 	ori	$r15,$r15,0x20
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	0384d1ad 	ori	$r13,$r13,0x134
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	5439e800 	bl	14824(0x39e8) # 1c004a78 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	543a3000 	bl	14896(0x3a30) # 1c004ac8 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543abc00 	bl	15036(0x3abc) # 1c004b5c <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543af000 	bl	15088(0x3af0) # 1c004b98 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54391000 	bl	14608(0x3910) # 1c0049c0 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543cc000 	bl	15552(0x3cc0) # 1c004d78 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543ba800 	bl	15272(0x3ba8) # 1c004c70 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b61084 	ld.w	$r4,$r4,-636(0xd84)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017c00 	bl	380(0x17c) # 1c0014cc <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54016400 	bl	356(0x164) # 1c0014cc <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014c00 	bl	332(0x14c) # 1c0014cc <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54013800 	bl	312(0x138) # 1c0014cc <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54012000 	bl	288(0x120) # 1c0014cc <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	5416a800 	bl	5800(0x16a8) # 1c002a7c <DisableInt>
1c0013d8:	5415d000 	bl	5584(0x15d0) # 1c0029a8 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	541ca000 	bl	7328(0x1ca0) # 1c003080 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	541be000 	bl	7136(0x1be0) # 1c002fc8 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	540ec000 	bl	3776(0xec0) # 1c0022b4 <Uart0_init>
1c0013f8:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013fc:	03880184 	ori	$r4,$r12,0x200
1c001400:	540f7800 	bl	3960(0xf78) # 1c002378 <Uart1_init>
1c001404:	54186c00 	bl	6252(0x186c) # 1c002c70 <ls1x_logo>
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	2880018e 	ld.w	$r14,$r12,0
1c001414:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001418:	0380118c 	ori	$r12,$r12,0x4
1c00141c:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001420:	001535cd 	or	$r13,$r14,$r13
1c001424:	2980018d 	st.w	$r13,$r12,0
1c001428:	54167800 	bl	5752(0x1678) # 1c002aa0 <EnableInt>
1c00142c:	54190c00 	bl	6412(0x190c) # 1c002d38 <open_count>
1c001430:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001434:	5416d400 	bl	5844(0x16d4) # 1c002b08 <Wake_Set>
1c001438:	541c1c00 	bl	7196(0x1c1c) # 1c003054 <WDG_DogFeed>
1c00143c:	54177800 	bl	6008(0x1778) # 1c002bb4 <PMU_GetRstRrc>
1c001440:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001448:	44003180 	bnez	$r12,48(0x30) # 1c001478 <bsp_init+0xb4>
1c00144c:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001450:	02a74084 	addi.w	$r4,$r4,-1584(0x9d0)
1c001454:	54062400 	bl	1572(0x624) # 1c001a78 <myprintf>
1c001458:	5417c800 	bl	6088(0x17c8) # 1c002c20 <PMU_GetBootSpiStatus>
1c00145c:	0015008c 	move	$r12,$r4
1c001460:	40001180 	beqz	$r12,16(0x10) # 1c001470 <bsp_init+0xac>
1c001464:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001468:	02a72084 	addi.w	$r4,$r4,-1592(0x9c8)
1c00146c:	54060c00 	bl	1548(0x60c) # 1c001a78 <myprintf>
1c001470:	54394000 	bl	14656(0x3940) # 1c004db0 <main>
1c001474:	50004000 	b	64(0x40) # 1c0014b4 <bsp_init+0xf0>
1c001478:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00147c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001480:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001498 <bsp_init+0xd4>
1c001484:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001488:	02a6d084 	addi.w	$r4,$r4,-1612(0x9b4)
1c00148c:	5405ec00 	bl	1516(0x5ec) # 1c001a78 <myprintf>
1c001490:	54392000 	bl	14624(0x3920) # 1c004db0 <main>
1c001494:	50002000 	b	32(0x20) # 1c0014b4 <bsp_init+0xf0>
1c001498:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00149c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0014a0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014b4 <bsp_init+0xf0>
1c0014a4:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0014a8:	02a69084 	addi.w	$r4,$r4,-1628(0x9a4)
1c0014ac:	5405cc00 	bl	1484(0x5cc) # 1c001a78 <myprintf>
1c0014b0:	57fd37ff 	bl	-716(0xffffd34) # 1c0011e4 <cpu_sleep>
1c0014b4:	0015000c 	move	$r12,$r0
1c0014b8:	00150184 	move	$r4,$r12
1c0014bc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014c0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014c8:	4c000020 	jirl	$r0,$r1,0

1c0014cc <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014d0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014dc:	001500ac 	move	$r12,$r5
1c0014e0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014e4:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014e8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014f0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014f8:	2880018c 	ld.w	$r12,$r12,0
1c0014fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001500:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c001504:	50006c00 	b	108(0x6c) # 1c001570 <AFIO_RemapConfig+0xa4>
1c001508:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c00150c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001510:	001831ac 	sra.w	$r12,$r13,$r12
1c001514:	0340058c 	andi	$r12,$r12,0x1
1c001518:	40004d80 	beqz	$r12,76(0x4c) # 1c001564 <AFIO_RemapConfig+0x98>
1c00151c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001520:	0040858c 	slli.w	$r12,$r12,0x1
1c001524:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001528:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00152c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001530:	001731ac 	sll.w	$r12,$r13,$r12
1c001534:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001538:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00153c:	0014300c 	nor	$r12,$r0,$r12
1c001540:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001544:	0014b1ac 	and	$r12,$r13,$r12
1c001548:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00154c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001550:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001554:	001731ac 	sll.w	$r12,$r13,$r12
1c001558:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00155c:	001531ac 	or	$r12,$r13,$r12
1c001560:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001564:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001568:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00156c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001570:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001574:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c001578:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c001508 <AFIO_RemapConfig+0x3c>
1c00157c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001580:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001584:	2980018d 	st.w	$r13,$r12,0
1c001588:	03400000 	andi	$r0,$r0,0x0
1c00158c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001590:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001594:	4c000020 	jirl	$r0,$r1,0

1c001598 <gpio_get_pin>:
gpio_get_pin():
1c001598:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00159c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015a4:	0015008c 	move	$r12,$r4
1c0015a8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015ac:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015b4:	0382018c 	ori	$r12,$r12,0x80
1c0015b8:	001031ac 	add.w	$r12,$r13,$r12
1c0015bc:	29000180 	st.b	$r0,$r12,0
1c0015c0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015c8:	0382018c 	ori	$r12,$r12,0x80
1c0015cc:	001031ac 	add.w	$r12,$r13,$r12
1c0015d0:	2a00018c 	ld.bu	$r12,$r12,0
1c0015d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015d8:	00150184 	move	$r4,$r12
1c0015dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0015e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0015e4:	4c000020 	jirl	$r0,$r1,0

1c0015e8 <gpio_write_pin>:
gpio_write_pin():
1c0015e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015f4:	0015008c 	move	$r12,$r4
1c0015f8:	001500ad 	move	$r13,$r5
1c0015fc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001600:	001501ac 	move	$r12,$r13
1c001604:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c001608:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00160c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001610:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c001634 <gpio_write_pin+0x4c>
1c001614:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001618:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00161c:	0382018c 	ori	$r12,$r12,0x80
1c001620:	001031ac 	add.w	$r12,$r13,$r12
1c001624:	0015018d 	move	$r13,$r12
1c001628:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00162c:	290001ac 	st.b	$r12,$r13,0
1c001630:	50002000 	b	32(0x20) # 1c001650 <gpio_write_pin+0x68>
1c001634:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001638:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00163c:	0382018c 	ori	$r12,$r12,0x80
1c001640:	001031ac 	add.w	$r12,$r13,$r12
1c001644:	0015018d 	move	$r13,$r12
1c001648:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00164c:	290001ac 	st.b	$r12,$r13,0
1c001650:	03400000 	andi	$r0,$r0,0x0
1c001654:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001658:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00165c:	4c000020 	jirl	$r0,$r1,0

1c001660 <gpio_pin_remap>:
gpio_pin_remap():
1c001660:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001664:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001668:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00166c:	0015008c 	move	$r12,$r4
1c001670:	001500ad 	move	$r13,$r5
1c001674:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001678:	001501ac 	move	$r12,$r13
1c00167c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001680:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001684:	0044918c 	srli.w	$r12,$r12,0x4
1c001688:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00168c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001690:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001694:	03403d8c 	andi	$r12,$r12,0xf
1c001698:	0040858c 	slli.w	$r12,$r12,0x1
1c00169c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0016a0:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0016a4:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c0016a8:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c00185c <gpio_pin_remap+0x1fc>
1c0016ac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016b0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0016b4:	580089ac 	beq	$r13,$r12,136(0x88) # 1c00173c <gpio_pin_remap+0xdc>
1c0016b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016bc:	40002180 	beqz	$r12,32(0x20) # 1c0016dc <gpio_pin_remap+0x7c>
1c0016c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016c4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0016c8:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c00179c <gpio_pin_remap+0x13c>
1c0016cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016d0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0016d4:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017fc <gpio_pin_remap+0x19c>
1c0016d8:	50018800 	b	392(0x188) # 1c001860 <gpio_pin_remap+0x200>
1c0016dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016e0:	0380418c 	ori	$r12,$r12,0x10
1c0016e4:	2880018d 	ld.w	$r13,$r12,0
1c0016e8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016f0:	001731cc 	sll.w	$r12,$r14,$r12
1c0016f4:	0014300c 	nor	$r12,$r0,$r12
1c0016f8:	0015018e 	move	$r14,$r12
1c0016fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001700:	0380418c 	ori	$r12,$r12,0x10
1c001704:	0014b9ad 	and	$r13,$r13,$r14
1c001708:	2980018d 	st.w	$r13,$r12,0
1c00170c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001710:	0380418c 	ori	$r12,$r12,0x10
1c001714:	2880018d 	ld.w	$r13,$r12,0
1c001718:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00171c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001720:	001731cc 	sll.w	$r12,$r14,$r12
1c001724:	0015018e 	move	$r14,$r12
1c001728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00172c:	0380418c 	ori	$r12,$r12,0x10
1c001730:	001539ad 	or	$r13,$r13,$r14
1c001734:	2980018d 	st.w	$r13,$r12,0
1c001738:	50012800 	b	296(0x128) # 1c001860 <gpio_pin_remap+0x200>
1c00173c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001740:	0380518c 	ori	$r12,$r12,0x14
1c001744:	2880018d 	ld.w	$r13,$r12,0
1c001748:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00174c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001750:	001731cc 	sll.w	$r12,$r14,$r12
1c001754:	0014300c 	nor	$r12,$r0,$r12
1c001758:	0015018e 	move	$r14,$r12
1c00175c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001760:	0380518c 	ori	$r12,$r12,0x14
1c001764:	0014b9ad 	and	$r13,$r13,$r14
1c001768:	2980018d 	st.w	$r13,$r12,0
1c00176c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001770:	0380518c 	ori	$r12,$r12,0x14
1c001774:	2880018d 	ld.w	$r13,$r12,0
1c001778:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00177c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001780:	001731cc 	sll.w	$r12,$r14,$r12
1c001784:	0015018e 	move	$r14,$r12
1c001788:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00178c:	0380518c 	ori	$r12,$r12,0x14
1c001790:	001539ad 	or	$r13,$r13,$r14
1c001794:	2980018d 	st.w	$r13,$r12,0
1c001798:	5000c800 	b	200(0xc8) # 1c001860 <gpio_pin_remap+0x200>
1c00179c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017a0:	0380618c 	ori	$r12,$r12,0x18
1c0017a4:	2880018d 	ld.w	$r13,$r12,0
1c0017a8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017b0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017b4:	0014300c 	nor	$r12,$r0,$r12
1c0017b8:	0015018e 	move	$r14,$r12
1c0017bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c0:	0380618c 	ori	$r12,$r12,0x18
1c0017c4:	0014b9ad 	and	$r13,$r13,$r14
1c0017c8:	2980018d 	st.w	$r13,$r12,0
1c0017cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017d0:	0380618c 	ori	$r12,$r12,0x18
1c0017d4:	2880018d 	ld.w	$r13,$r12,0
1c0017d8:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017e0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017e4:	0015018e 	move	$r14,$r12
1c0017e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017ec:	0380618c 	ori	$r12,$r12,0x18
1c0017f0:	001539ad 	or	$r13,$r13,$r14
1c0017f4:	2980018d 	st.w	$r13,$r12,0
1c0017f8:	50006800 	b	104(0x68) # 1c001860 <gpio_pin_remap+0x200>
1c0017fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001800:	0380718c 	ori	$r12,$r12,0x1c
1c001804:	2880018d 	ld.w	$r13,$r12,0
1c001808:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00180c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001810:	001731cc 	sll.w	$r12,$r14,$r12
1c001814:	0014300c 	nor	$r12,$r0,$r12
1c001818:	0015018e 	move	$r14,$r12
1c00181c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001820:	0380718c 	ori	$r12,$r12,0x1c
1c001824:	0014b9ad 	and	$r13,$r13,$r14
1c001828:	2980018d 	st.w	$r13,$r12,0
1c00182c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001830:	0380718c 	ori	$r12,$r12,0x1c
1c001834:	2880018d 	ld.w	$r13,$r12,0
1c001838:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00183c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001840:	001731cc 	sll.w	$r12,$r14,$r12
1c001844:	0015018e 	move	$r14,$r12
1c001848:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00184c:	0380718c 	ori	$r12,$r12,0x1c
1c001850:	001539ad 	or	$r13,$r13,$r14
1c001854:	2980018d 	st.w	$r13,$r12,0
1c001858:	50000800 	b	8(0x8) # 1c001860 <gpio_pin_remap+0x200>
1c00185c:	03400000 	andi	$r0,$r0,0x0
1c001860:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001864:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001868:	4c000020 	jirl	$r0,$r1,0

1c00186c <myputchar>:
myputchar():
1c00186c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001870:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001874:	29806076 	st.w	$r22,$r3,24(0x18)
1c001878:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00187c:	0015008c 	move	$r12,$r4
1c001880:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001884:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001888:	00150185 	move	$r5,$r12
1c00188c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c001890:	54098c00 	bl	2444(0x98c) # 1c00221c <UART_SendData>
1c001894:	03400000 	andi	$r0,$r0,0x0
1c001898:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00189c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0018a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0018a4:	4c000020 	jirl	$r0,$r1,0

1c0018a8 <printbase>:
printbase():
1c0018a8:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0018ac:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0018b0:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0018b4:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0018b8:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0018bc:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0018c0:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0018c4:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0018c8:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0018cc:	40002580 	beqz	$r12,36(0x24) # 1c0018f0 <printbase+0x48>
1c0018d0:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0018d4:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c0018f0 <printbase+0x48>
1c0018d8:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0018dc:	0011300c 	sub.w	$r12,$r0,$r12
1c0018e0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0018e4:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c0018e8:	57ff87ff 	bl	-124(0xfffff84) # 1c00186c <myputchar>
1c0018ec:	50000c00 	b	12(0xc) # 1c0018f8 <printbase+0x50>
1c0018f0:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0018f4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0018f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0018fc:	50005000 	b	80(0x50) # 1c00194c <printbase+0xa4>
1c001900:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001904:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001908:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c00190c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001914 <printbase+0x6c>
1c001910:	002a0007 	break	0x7
1c001914:	00005dcc 	ext.w.b	$r12,$r14
1c001918:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00191c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001920:	001035cd 	add.w	$r13,$r14,$r13
1c001924:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001928:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c00192c:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001930:	002135cc 	div.wu	$r12,$r14,$r13
1c001934:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00193c <printbase+0x94>
1c001938:	002a0007 	break	0x7
1c00193c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001940:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001944:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001948:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00194c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001950:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001900 <printbase+0x58>
1c001954:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001958:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00195c:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001960:	001231ad 	slt	$r13,$r13,$r12
1c001964:	0013b5ce 	masknez	$r14,$r14,$r13
1c001968:	0013358c 	maskeqz	$r12,$r12,$r13
1c00196c:	001531cc 	or	$r12,$r14,$r12
1c001970:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001974:	50007400 	b	116(0x74) # 1c0019e8 <printbase+0x140>
1c001978:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00197c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001980:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c00199c <printbase+0xf4>
1c001984:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001988:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00198c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001990:	001031ac 	add.w	$r12,$r13,$r12
1c001994:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001998:	50000800 	b	8(0x8) # 1c0019a0 <printbase+0xf8>
1c00199c:	0015000c 	move	$r12,$r0
1c0019a0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0019a4:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0019a8:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0019ac:	6000198d 	blt	$r12,$r13,24(0x18) # 1c0019c4 <printbase+0x11c>
1c0019b0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0019b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019b8:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0019bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019c0:	50001400 	b	20(0x14) # 1c0019d4 <printbase+0x12c>
1c0019c4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0019c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019cc:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c0019d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019d4:	00150184 	move	$r4,$r12
1c0019d8:	57fe97ff 	bl	-364(0xffffe94) # 1c00186c <myputchar>
1c0019dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0019e0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0019e4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0019e8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0019ec:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001978 <printbase+0xd0>
1c0019f0:	0015000c 	move	$r12,$r0
1c0019f4:	00150184 	move	$r4,$r12
1c0019f8:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c0019fc:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001a00:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001a04:	4c000020 	jirl	$r0,$r1,0

1c001a08 <puts>:
puts():
1c001a08:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001a0c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001a10:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001a14:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001a18:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001a1c:	50003000 	b	48(0x30) # 1c001a4c <puts+0x44>
1c001a20:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001a24:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001a28:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001a34 <puts+0x2c>
1c001a2c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001a30:	57fe3fff 	bl	-452(0xffffe3c) # 1c00186c <myputchar>
1c001a34:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001a38:	00150184 	move	$r4,$r12
1c001a3c:	57fe33ff 	bl	-464(0xffffe30) # 1c00186c <myputchar>
1c001a40:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a48:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001a4c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a50:	2a00018c 	ld.bu	$r12,$r12,0
1c001a54:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001a58:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001a5c:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001a20 <puts+0x18>
1c001a60:	0015000c 	move	$r12,$r0
1c001a64:	00150184 	move	$r4,$r12
1c001a68:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001a6c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001a70:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001a74:	4c000020 	jirl	$r0,$r1,0

1c001a78 <myprintf>:
myprintf():
1c001a78:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001a7c:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001a80:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001a84:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001a88:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001a8c:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001a90:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001a94:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001a98:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001a9c:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001aa0:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001aa4:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001aa8:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001aac:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001ab0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001ab4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ab8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001abc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001ac0:	50033000 	b	816(0x330) # 1c001df0 <myprintf+0x378>
1c001ac4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ac8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001acc:	001031ac 	add.w	$r12,$r13,$r12
1c001ad0:	2a00018c 	ld.bu	$r12,$r12,0
1c001ad4:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001ad8:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001adc:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001ae0:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001dc4 <myprintf+0x34c>
1c001ae4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001ae8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001aec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001af0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001af4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001af8:	001031ac 	add.w	$r12,$r13,$r12
1c001afc:	2800018c 	ld.b	$r12,$r12,0
1c001b00:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001b04:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001b08:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001db4 <myprintf+0x33c>
1c001b0c:	0040898d 	slli.w	$r13,$r12,0x2
1c001b10:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c001b14:	028d118c 	addi.w	$r12,$r12,836(0x344)
1c001b18:	001031ac 	add.w	$r12,$r13,$r12
1c001b1c:	2880018c 	ld.w	$r12,$r12,0
1c001b20:	4c000180 	jirl	$r0,$r12,0
1c001b24:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b28:	2880018c 	ld.w	$r12,$r12,0
1c001b2c:	00150184 	move	$r4,$r12
1c001b30:	57fedbff 	bl	-296(0xffffed8) # 1c001a08 <puts>
1c001b34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b38:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001b3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b4c:	50029800 	b	664(0x298) # 1c001de4 <myprintf+0x36c>
1c001b50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b54:	2880018c 	ld.w	$r12,$r12,0
1c001b58:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b5c:	00150184 	move	$r4,$r12
1c001b60:	57fd0fff 	bl	-756(0xffffd0c) # 1c00186c <myputchar>
1c001b64:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b68:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001b6c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b74:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b78:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b7c:	50026800 	b	616(0x268) # 1c001de4 <myprintf+0x36c>
1c001b80:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b84:	2880018c 	ld.w	$r12,$r12,0
1c001b88:	00150007 	move	$r7,$r0
1c001b8c:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001b90:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001b94:	00150184 	move	$r4,$r12
1c001b98:	57fd13ff 	bl	-752(0xffffd10) # 1c0018a8 <printbase>
1c001b9c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ba0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001ba4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ba8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001bb0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001bb4:	50023000 	b	560(0x230) # 1c001de4 <myprintf+0x36c>
1c001bb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001bbc:	2880018c 	ld.w	$r12,$r12,0
1c001bc0:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001bc4:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001bc8:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001bcc:	00150184 	move	$r4,$r12
1c001bd0:	57fcdbff 	bl	-808(0xffffcd8) # 1c0018a8 <printbase>
1c001bd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001bd8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001bdc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001be0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001be4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001be8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001bec:	5001f800 	b	504(0x1f8) # 1c001de4 <myprintf+0x36c>
1c001bf0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001bf4:	2880018c 	ld.w	$r12,$r12,0
1c001bf8:	00150007 	move	$r7,$r0
1c001bfc:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001c00:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001c04:	00150184 	move	$r4,$r12
1c001c08:	57fca3ff 	bl	-864(0xffffca0) # 1c0018a8 <printbase>
1c001c0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c10:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c14:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c24:	5001c000 	b	448(0x1c0) # 1c001de4 <myprintf+0x36c>
1c001c28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c2c:	2880018c 	ld.w	$r12,$r12,0
1c001c30:	00150007 	move	$r7,$r0
1c001c34:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001c38:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001c3c:	00150184 	move	$r4,$r12
1c001c40:	57fc6bff 	bl	-920(0xffffc68) # 1c0018a8 <printbase>
1c001c44:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c48:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c4c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c54:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c58:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c5c:	50018800 	b	392(0x188) # 1c001de4 <myprintf+0x36c>
1c001c60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c64:	2880018c 	ld.w	$r12,$r12,0
1c001c68:	00150007 	move	$r7,$r0
1c001c6c:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001c70:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001c74:	00150184 	move	$r4,$r12
1c001c78:	57fc33ff 	bl	-976(0xffffc30) # 1c0018a8 <printbase>
1c001c7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c80:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c84:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c94:	50015000 	b	336(0x150) # 1c001de4 <myprintf+0x36c>
1c001c98:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001c9c:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c00186c <myputchar>
1c001ca0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ca4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ca8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cac:	50013800 	b	312(0x138) # 1c001de4 <myprintf+0x36c>
1c001cb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cbc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001cc0:	50003c00 	b	60(0x3c) # 1c001cfc <myprintf+0x284>
1c001cc4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001cc8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ccc:	001c31ad 	mul.w	$r13,$r13,$r12
1c001cd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cd8:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001cdc:	001031cc 	add.w	$r12,$r14,$r12
1c001ce0:	2800018c 	ld.b	$r12,$r12,0
1c001ce4:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001ce8:	001031ac 	add.w	$r12,$r13,$r12
1c001cec:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001cf0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cf4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cf8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d04:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d08:	001031ac 	add.w	$r12,$r13,$r12
1c001d0c:	2800018d 	ld.b	$r13,$r12,0
1c001d10:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001d14:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001aec <myprintf+0x74>
1c001d18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d20:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d24:	001031ac 	add.w	$r12,$r13,$r12
1c001d28:	2800018d 	ld.b	$r13,$r12,0
1c001d2c:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001d30:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001cc4 <myprintf+0x24c>
1c001d34:	53fdbbff 	b	-584(0xffffdb8) # 1c001aec <myprintf+0x74>
1c001d38:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001d3c:	50003c00 	b	60(0x3c) # 1c001d78 <myprintf+0x300>
1c001d40:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001d44:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001d48:	001c31ad 	mul.w	$r13,$r13,$r12
1c001d4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d54:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001d58:	001031cc 	add.w	$r12,$r14,$r12
1c001d5c:	2800018c 	ld.b	$r12,$r12,0
1c001d60:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001d64:	001031ac 	add.w	$r12,$r13,$r12
1c001d68:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001d6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d80:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d84:	001031ac 	add.w	$r12,$r13,$r12
1c001d88:	2800018d 	ld.b	$r13,$r12,0
1c001d8c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001d90:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001aec <myprintf+0x74>
1c001d94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d9c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001da0:	001031ac 	add.w	$r12,$r13,$r12
1c001da4:	2800018d 	ld.b	$r13,$r12,0
1c001da8:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001dac:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001d40 <myprintf+0x2c8>
1c001db0:	53fd3fff 	b	-708(0xffffd3c) # 1c001aec <myprintf+0x74>
1c001db4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001db8:	57fab7ff 	bl	-1356(0xffffab4) # 1c00186c <myputchar>
1c001dbc:	03400000 	andi	$r0,$r0,0x0
1c001dc0:	50002400 	b	36(0x24) # 1c001de4 <myprintf+0x36c>
1c001dc4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001dc8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001dcc:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001dd8 <myprintf+0x360>
1c001dd0:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001dd4:	57fa9bff 	bl	-1384(0xffffa98) # 1c00186c <myputchar>
1c001dd8:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001ddc:	00150184 	move	$r4,$r12
1c001de0:	57fa8fff 	bl	-1396(0xffffa8c) # 1c00186c <myputchar>
1c001de4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001de8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001df0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001df4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001df8:	001031ac 	add.w	$r12,$r13,$r12
1c001dfc:	2800018c 	ld.b	$r12,$r12,0
1c001e00:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001ac4 <myprintf+0x4c>
1c001e04:	0015000c 	move	$r12,$r0
1c001e08:	00150184 	move	$r4,$r12
1c001e0c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001e10:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001e14:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001e18:	4c000020 	jirl	$r0,$r1,0

1c001e1c <UART_Init>:
UART_Init():
1c001e1c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001e20:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001e24:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001e28:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001e2c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001e30:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001e34:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e38:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001e3c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001e40:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001e44:	03403d8c 	andi	$r12,$r12,0xf
1c001e48:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e4c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001e50:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001e54:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001e58:	0044918c 	srli.w	$r12,$r12,0x4
1c001e5c:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001e60:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e64:	40000d80 	beqz	$r12,12(0xc) # 1c001e70 <UART_Init+0x54>
1c001e68:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001e6c:	44001980 	bnez	$r12,24(0x18) # 1c001e84 <UART_Init+0x68>
1c001e70:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001e74:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c001e78:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001e7c:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c001e80:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e84:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001e88:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c001e8c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001ea4 <UART_Init+0x88>
1c001e90:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001e94:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c001e98:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001e9c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001ea0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001ea4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ea8:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001eac:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001eb0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001eb4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c001eb8:	580011ac 	beq	$r13,$r12,16(0x10) # 1c001ec8 <UART_Init+0xac>
1c001ebc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001ec0:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c001ec4:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c001f24 <UART_Init+0x108>
1c001ec8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001ecc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c001ed0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001ed4:	2880018c 	ld.w	$r12,$r12,0
1c001ed8:	002131ae 	div.wu	$r14,$r13,$r12
1c001edc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001ee4 <UART_Init+0xc8>
1c001ee0:	002a0007 	break	0x7
1c001ee4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001ee8:	002135cc 	div.wu	$r12,$r14,$r13
1c001eec:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001ef4 <UART_Init+0xd8>
1c001ef0:	002a0007 	break	0x7
1c001ef4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ef8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001efc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c001f00:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001f04:	2880018e 	ld.w	$r14,$r12,0
1c001f08:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f0c:	001c31ce 	mul.w	$r14,$r14,$r12
1c001f10:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001f14:	001c31cc 	mul.w	$r12,$r14,$r12
1c001f18:	001131ac 	sub.w	$r12,$r13,$r12
1c001f1c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001f20:	50005400 	b	84(0x54) # 1c001f74 <UART_Init+0x158>
1c001f24:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001f28:	2880018c 	ld.w	$r12,$r12,0
1c001f2c:	1400010d 	lu12i.w	$r13,8(0x8)
1c001f30:	002131ae 	div.wu	$r14,$r13,$r12
1c001f34:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001f3c <UART_Init+0x120>
1c001f38:	002a0007 	break	0x7
1c001f3c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001f40:	002135cc 	div.wu	$r12,$r14,$r13
1c001f44:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001f4c <UART_Init+0x130>
1c001f48:	002a0007 	break	0x7
1c001f4c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001f50:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001f54:	2880018d 	ld.w	$r13,$r12,0
1c001f58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f5c:	001c31ad 	mul.w	$r13,$r13,$r12
1c001f60:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001f64:	001c31ac 	mul.w	$r12,$r13,$r12
1c001f68:	1400010d 	lu12i.w	$r13,8(0x8)
1c001f6c:	001131ac 	sub.w	$r12,$r13,$r12
1c001f70:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001f74:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001f78:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c001f7c:	001c31ad 	mul.w	$r13,$r13,$r12
1c001f80:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001f84:	2880018c 	ld.w	$r12,$r12,0
1c001f88:	002131ae 	div.wu	$r14,$r13,$r12
1c001f8c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001f94 <UART_Init+0x178>
1c001f90:	002a0007 	break	0x7
1c001f94:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001f98:	002135cc 	div.wu	$r12,$r14,$r13
1c001f9c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001fa4 <UART_Init+0x188>
1c001fa0:	002a0007 	break	0x7
1c001fa4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001fa8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fac:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c001fb0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001fb4:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c001fb8:	001531ac 	or	$r12,$r13,$r12
1c001fbc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001fc0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fc4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001fc8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001fcc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001fd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fd4:	2900018d 	st.b	$r13,$r12,0
1c001fd8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001fdc:	0044a18c 	srli.w	$r12,$r12,0x8
1c001fe0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001fe4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001fe8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001fec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ff0:	2900058d 	st.b	$r13,$r12,1(0x1)
1c001ff4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001ff8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001ffc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002000:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002004:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002008:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00200c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002010:	0341fd8c 	andi	$r12,$r12,0x7f
1c002014:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002018:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00201c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002020:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002024:	29000580 	st.b	$r0,$r12,1(0x1)
1c002028:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00202c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002030:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002034:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002038:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c00203c:	001531ac 	or	$r12,$r13,$r12
1c002040:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002044:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002048:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00204c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002050:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002054:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002058:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00205c:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c002060:	001531ac 	or	$r12,$r13,$r12
1c002064:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002068:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00206c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002070:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002074:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002078:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00207c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002080:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c002084:	001531ac 	or	$r12,$r13,$r12
1c002088:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00208c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002090:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002094:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002098:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00209c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020a0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0020a4:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c0020a8:	001531ac 	or	$r12,$r13,$r12
1c0020ac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0020b4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0020b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0020bc:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0020c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0020c8:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c0020cc:	001531ac 	or	$r12,$r13,$r12
1c0020d0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0020d8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0020dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0020e0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0020e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020e8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0020ec:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c0020f0:	001531ac 	or	$r12,$r13,$r12
1c0020f4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0020fc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002100:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002104:	2a00018c 	ld.bu	$r12,$r12,0
1c002108:	03400000 	andi	$r0,$r0,0x0
1c00210c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002110:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002114:	4c000020 	jirl	$r0,$r1,0

1c002118 <UART_StructInit>:
UART_StructInit():
1c002118:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00211c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002120:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002124:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002128:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00212c:	1400038d 	lu12i.w	$r13,28(0x1c)
1c002130:	038801ad 	ori	$r13,$r13,0x200
1c002134:	2980018d 	st.w	$r13,$r12,0
1c002138:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00213c:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002140:	038801ad 	ori	$r13,$r13,0x200
1c002144:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002148:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00214c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002150:	2900298d 	st.b	$r13,$r12,10(0xa)
1c002154:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002158:	29002d80 	st.b	$r0,$r12,11(0xb)
1c00215c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002160:	29003580 	st.b	$r0,$r12,13(0xd)
1c002164:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002168:	29003180 	st.b	$r0,$r12,12(0xc)
1c00216c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002170:	29003d80 	st.b	$r0,$r12,15(0xf)
1c002174:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002178:	29003980 	st.b	$r0,$r12,14(0xe)
1c00217c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002180:	29402180 	st.h	$r0,$r12,8(0x8)
1c002184:	03400000 	andi	$r0,$r0,0x0
1c002188:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00218c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002190:	4c000020 	jirl	$r0,$r1,0

1c002194 <UART_ITConfig>:
UART_ITConfig():
1c002194:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002198:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00219c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0021a0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0021a4:	001500ac 	move	$r12,$r5
1c0021a8:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c0021ac:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0021b0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0021b4:	40002980 	beqz	$r12,40(0x28) # 1c0021dc <UART_ITConfig+0x48>
1c0021b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021bc:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0021c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021c4:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0021c8:	001531ac 	or	$r12,$r13,$r12
1c0021cc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021d4:	2900058d 	st.b	$r13,$r12,1(0x1)
1c0021d8:	50003400 	b	52(0x34) # 1c00220c <UART_ITConfig+0x78>
1c0021dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021e0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0021e4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0021e8:	00005d8d 	ext.w.b	$r13,$r12
1c0021ec:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c0021f0:	0014300c 	nor	$r12,$r0,$r12
1c0021f4:	00005d8c 	ext.w.b	$r12,$r12
1c0021f8:	0014b1ac 	and	$r12,$r13,$r12
1c0021fc:	00005d8c 	ext.w.b	$r12,$r12
1c002200:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002204:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002208:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00220c:	03400000 	andi	$r0,$r0,0x0
1c002210:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002214:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002218:	4c000020 	jirl	$r0,$r1,0

1c00221c <UART_SendData>:
UART_SendData():
1c00221c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002220:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002224:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002228:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00222c:	001500ac 	move	$r12,$r5
1c002230:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002234:	03400000 	andi	$r0,$r0,0x0
1c002238:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00223c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002240:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002244:	0340818c 	andi	$r12,$r12,0x20
1c002248:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002238 <UART_SendData+0x1c>
1c00224c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002250:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c002254:	2900018d 	st.b	$r13,$r12,0
1c002258:	03400000 	andi	$r0,$r0,0x0
1c00225c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002260:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002264:	4c000020 	jirl	$r0,$r1,0

1c002268 <UART_ReceiveData>:
UART_ReceiveData():
1c002268:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00226c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002270:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002274:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002278:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00227c:	03400000 	andi	$r0,$r0,0x0
1c002280:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002284:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002288:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00228c:	0340058c 	andi	$r12,$r12,0x1
1c002290:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002280 <UART_ReceiveData+0x18>
1c002294:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002298:	2a00018c 	ld.bu	$r12,$r12,0
1c00229c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0022a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0022a4:	00150184 	move	$r4,$r12
1c0022a8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0022ac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0022b0:	4c000020 	jirl	$r0,$r1,0

1c0022b4 <Uart0_init>:
Uart0_init():
1c0022b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0022b8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0022bc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0022c0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0022c4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022c8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0022cc:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0022d0:	57f393ff 	bl	-3184(0xffff390) # 1c001660 <gpio_pin_remap>
1c0022d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0022d8:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c0022dc:	57f387ff 	bl	-3196(0xffff384) # 1c001660 <gpio_pin_remap>
1c0022e0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c0022e4:	00150184 	move	$r4,$r12
1c0022e8:	57fe33ff 	bl	-464(0xffffe30) # 1c002118 <UART_StructInit>
1c0022ec:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0022f0:	28b4718c 	ld.w	$r12,$r12,-740(0xd1c)
1c0022f4:	2880018c 	ld.w	$r12,$r12,0
1c0022f8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0022fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002300:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002304:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002308:	00150185 	move	$r5,$r12
1c00230c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002310:	57fb0fff 	bl	-1268(0xffffb0c) # 1c001e1c <UART_Init>
1c002314:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002318:	0380098c 	ori	$r12,$r12,0x2
1c00231c:	2a00018c 	ld.bu	$r12,$r12,0
1c002320:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002324:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002328:	0380098c 	ori	$r12,$r12,0x2
1c00232c:	038021ad 	ori	$r13,$r13,0x8
1c002330:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002334:	2900018d 	st.b	$r13,$r12,0
1c002338:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00233c:	2a00018c 	ld.bu	$r12,$r12,0
1c002340:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002344:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002348:	038021ad 	ori	$r13,$r13,0x8
1c00234c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002350:	2900018d 	st.b	$r13,$r12,0
1c002354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002358:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00235c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002360:	57fe37ff 	bl	-460(0xffffe34) # 1c002194 <UART_ITConfig>
1c002364:	03400000 	andi	$r0,$r0,0x0
1c002368:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00236c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002370:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002374:	4c000020 	jirl	$r0,$r1,0

1c002378 <Uart1_init>:
Uart1_init():
1c002378:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00237c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002380:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002384:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002388:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00238c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002390:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002394:	57f2cfff 	bl	-3380(0xffff2cc) # 1c001660 <gpio_pin_remap>
1c002398:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00239c:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0023a0:	57f2c3ff 	bl	-3392(0xffff2c0) # 1c001660 <gpio_pin_remap>
1c0023a4:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c0023a8:	00150184 	move	$r4,$r12
1c0023ac:	57fd6fff 	bl	-660(0xffffd6c) # 1c002118 <UART_StructInit>
1c0023b0:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0023b4:	28b1618c 	ld.w	$r12,$r12,-936(0xc58)
1c0023b8:	2880018c 	ld.w	$r12,$r12,0
1c0023bc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0023c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0023c4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0023c8:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c0023cc:	00150185 	move	$r5,$r12
1c0023d0:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0023d4:	57fa4bff 	bl	-1464(0xffffa48) # 1c001e1c <UART_Init>
1c0023d8:	00150006 	move	$r6,$r0
1c0023dc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0023e0:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0023e4:	57fdb3ff 	bl	-592(0xffffdb0) # 1c002194 <UART_ITConfig>
1c0023e8:	03400000 	andi	$r0,$r0,0x0
1c0023ec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0023f0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0023f4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0023f8:	4c000020 	jirl	$r0,$r1,0

1c0023fc <Uart_W_Bytes>:
Uart_W_Bytes():
1c0023fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002400:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002404:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002408:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00240c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002410:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002414:	001500cc 	move	$r12,$r6
1c002418:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c00241c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002420:	50002c00 	b	44(0x2c) # 1c00244c <Uart_W_Bytes+0x50>
1c002424:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002428:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00242c:	001031ac 	add.w	$r12,$r13,$r12
1c002430:	2a00018c 	ld.bu	$r12,$r12,0
1c002434:	00150185 	move	$r5,$r12
1c002438:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00243c:	57fde3ff 	bl	-544(0xffffde0) # 1c00221c <UART_SendData>
1c002440:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002444:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002448:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00244c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002450:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002454:	6bffd1ac 	bltu	$r13,$r12,-48(0x3ffd0) # 1c002424 <Uart_W_Bytes+0x28>
1c002458:	03400000 	andi	$r0,$r0,0x0
1c00245c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002460:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002464:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002468:	4c000020 	jirl	$r0,$r1,0

1c00246c <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c00246c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002470:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002474:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002478:	1400006c 	lu12i.w	$r12,3(0x3)
1c00247c:	03ba018c 	ori	$r12,$r12,0xe80
1c002480:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002484:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002488:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00248c:	2880018d 	ld.w	$r13,$r12,0
1c002490:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002494:	038101ad 	ori	$r13,$r13,0x40
1c002498:	2980018d 	st.w	$r13,$r12,0
1c00249c:	03400000 	andi	$r0,$r0,0x0
1c0024a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024a4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0024a8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0024ac:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c0024a0 <CLOCK_WaitForHSEStartUp+0x34>
1c0024b0:	50001c00 	b	28(0x1c) # 1c0024cc <CLOCK_WaitForHSEStartUp+0x60>
1c0024b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0024b8:	2880018e 	ld.w	$r14,$r12,0
1c0024bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0024c0:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c0024c4:	0014b5cd 	and	$r13,$r14,$r13
1c0024c8:	2980018d 	st.w	$r13,$r12,0
1c0024cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0024d0:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0024d4:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c0024b4 <CLOCK_WaitForHSEStartUp+0x48>
1c0024d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0024dc:	2880018d 	ld.w	$r13,$r12,0
1c0024e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0024e4:	038201ad 	ori	$r13,$r13,0x80
1c0024e8:	2980018d 	st.w	$r13,$r12,0
1c0024ec:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0024f0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0024f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0024f8:	00150184 	move	$r4,$r12
1c0024fc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002500:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002504:	4c000020 	jirl	$r0,$r1,0

1c002508 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002508:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00250c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002510:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002514:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002518:	50008800 	b	136(0x88) # 1c0025a0 <CLOCK_WaitForLSEStartUp+0x98>
1c00251c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002520:	2880018e 	ld.w	$r14,$r12,0
1c002524:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002528:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c00252c:	0014b5cd 	and	$r13,$r14,$r13
1c002530:	2980018d 	st.w	$r13,$r12,0
1c002534:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002538:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00253c:	50001400 	b	20(0x14) # 1c002550 <CLOCK_WaitForLSEStartUp+0x48>
1c002540:	03400000 	andi	$r0,$r0,0x0
1c002544:	03400000 	andi	$r0,$r0,0x0
1c002548:	03400000 	andi	$r0,$r0,0x0
1c00254c:	03400000 	andi	$r0,$r0,0x0
1c002550:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002554:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002558:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00255c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002540 <CLOCK_WaitForLSEStartUp+0x38>
1c002560:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002564:	2880018d 	ld.w	$r13,$r12,0
1c002568:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00256c:	038081ad 	ori	$r13,$r13,0x20
1c002570:	2980018d 	st.w	$r13,$r12,0
1c002574:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002578:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00257c:	50001400 	b	20(0x14) # 1c002590 <CLOCK_WaitForLSEStartUp+0x88>
1c002580:	03400000 	andi	$r0,$r0,0x0
1c002584:	03400000 	andi	$r0,$r0,0x0
1c002588:	03400000 	andi	$r0,$r0,0x0
1c00258c:	03400000 	andi	$r0,$r0,0x0
1c002590:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002594:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002598:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00259c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002580 <CLOCK_WaitForLSEStartUp+0x78>
1c0025a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025a4:	0380118c 	ori	$r12,$r12,0x4
1c0025a8:	2880018d 	ld.w	$r13,$r12,0
1c0025ac:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c0025b0:	0014b1ac 	and	$r12,$r13,$r12
1c0025b4:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c00251c <CLOCK_WaitForLSEStartUp+0x14>
1c0025b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025bc:	0380118c 	ori	$r12,$r12,0x4
1c0025c0:	2880018d 	ld.w	$r13,$r12,0
1c0025c4:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c0025c8:	0014b1ac 	and	$r12,$r13,$r12
1c0025cc:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c00251c <CLOCK_WaitForLSEStartUp+0x14>
1c0025d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0025d4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0025d8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0025dc:	00150184 	move	$r4,$r12
1c0025e0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0025e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0025e8:	4c000020 	jirl	$r0,$r1,0

1c0025ec <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c0025ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0025f0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0025f4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0025f8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0025fc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002600:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002604:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002608:	2880018e 	ld.w	$r14,$r12,0
1c00260c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002610:	0014300d 	nor	$r13,$r0,$r12
1c002614:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002618:	0014b5cd 	and	$r13,$r14,$r13
1c00261c:	2980018d 	st.w	$r13,$r12,0
1c002620:	1400002c 	lu12i.w	$r12,1(0x1)
1c002624:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002628:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00262c:	50001400 	b	20(0x14) # 1c002640 <CLOCK_HSEConfig+0x54>
1c002630:	03400000 	andi	$r0,$r0,0x0
1c002634:	03400000 	andi	$r0,$r0,0x0
1c002638:	03400000 	andi	$r0,$r0,0x0
1c00263c:	03400000 	andi	$r0,$r0,0x0
1c002640:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002644:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002648:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00264c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002630 <CLOCK_HSEConfig+0x44>
1c002650:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002654:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002658:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002668 <CLOCK_HSEConfig+0x7c>
1c00265c:	57fe13ff 	bl	-496(0xffffe10) # 1c00246c <CLOCK_WaitForHSEStartUp>
1c002660:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002664:	50002400 	b	36(0x24) # 1c002688 <CLOCK_HSEConfig+0x9c>
1c002668:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00266c:	2880018e 	ld.w	$r14,$r12,0
1c002670:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002674:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002678:	0014b5cd 	and	$r13,$r14,$r13
1c00267c:	2980018d 	st.w	$r13,$r12,0
1c002680:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002684:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002688:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00268c:	00150184 	move	$r4,$r12
1c002690:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002694:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002698:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00269c:	4c000020 	jirl	$r0,$r1,0

1c0026a0 <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c0026a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0026a4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0026a8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0026ac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0026b0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0026b4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0026b8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0026bc:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0026c0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0026d0 <CLOCK_LSEConfig+0x30>
1c0026c4:	57fe47ff 	bl	-444(0xffffe44) # 1c002508 <CLOCK_WaitForLSEStartUp>
1c0026c8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0026cc:	50002400 	b	36(0x24) # 1c0026f0 <CLOCK_LSEConfig+0x50>
1c0026d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026d4:	2880018e 	ld.w	$r14,$r12,0
1c0026d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026dc:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c0026e0:	0014b5cd 	and	$r13,$r14,$r13
1c0026e4:	2980018d 	st.w	$r13,$r12,0
1c0026e8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0026ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0026f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0026f4:	00150184 	move	$r4,$r12
1c0026f8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0026fc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002700:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002704:	4c000020 	jirl	$r0,$r1,0

1c002708 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002708:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00270c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002710:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002714:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002718:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00271c:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002720:	2980018d 	st.w	$r13,$r12,0
1c002724:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002728:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c00272c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002730:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002734:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002738:	2980218d 	st.w	$r13,$r12,8(0x8)
1c00273c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002740:	29803180 	st.w	$r0,$r12,12(0xc)
1c002744:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002748:	29804180 	st.w	$r0,$r12,16(0x10)
1c00274c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002750:	29805180 	st.w	$r0,$r12,20(0x14)
1c002754:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002758:	29806180 	st.w	$r0,$r12,24(0x18)
1c00275c:	03400000 	andi	$r0,$r0,0x0
1c002760:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002764:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002768:	4c000020 	jirl	$r0,$r1,0

1c00276c <CLOCK_Init>:
CLOCK_Init():
1c00276c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002770:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002774:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002778:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00277c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002780:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002784:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002788:	2880018e 	ld.w	$r14,$r12,0
1c00278c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002790:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002794:	0014b5cd 	and	$r13,$r14,$r13
1c002798:	2980018d 	st.w	$r13,$r12,0
1c00279c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027a0:	2880018e 	ld.w	$r14,$r12,0
1c0027a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027a8:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c0027ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027b0:	001535cd 	or	$r13,$r14,$r13
1c0027b4:	2980018d 	st.w	$r13,$r12,0
1c0027b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027bc:	2880018e 	ld.w	$r14,$r12,0
1c0027c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027c4:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c0027c8:	0014b5cd 	and	$r13,$r14,$r13
1c0027cc:	2980018d 	st.w	$r13,$r12,0
1c0027d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027d4:	2880018e 	ld.w	$r14,$r12,0
1c0027d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027dc:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0027e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027e4:	001535cd 	or	$r13,$r14,$r13
1c0027e8:	2980018d 	st.w	$r13,$r12,0
1c0027ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027f0:	2880018e 	ld.w	$r14,$r12,0
1c0027f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027f8:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c0027fc:	039ffdad 	ori	$r13,$r13,0x7ff
1c002800:	0014b5cd 	and	$r13,$r14,$r13
1c002804:	2980018d 	st.w	$r13,$r12,0
1c002808:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00280c:	2880018e 	ld.w	$r14,$r12,0
1c002810:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002814:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002818:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00281c:	001535cd 	or	$r13,$r14,$r13
1c002820:	2980018d 	st.w	$r13,$r12,0
1c002824:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002828:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c00282c:	00150184 	move	$r4,$r12
1c002830:	57fdbfff 	bl	-580(0xffffdbc) # 1c0025ec <CLOCK_HSEConfig>
1c002834:	0015008d 	move	$r13,$r4
1c002838:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00283c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002848 <CLOCK_Init+0xdc>
1c002840:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002844:	50015000 	b	336(0x150) # 1c002994 <CLOCK_Init+0x228>
1c002848:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00284c:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002850:	00150184 	move	$r4,$r12
1c002854:	57fe4fff 	bl	-436(0xffffe4c) # 1c0026a0 <CLOCK_LSEConfig>
1c002858:	0015008d 	move	$r13,$r4
1c00285c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002860:	58000dac 	beq	$r13,$r12,12(0xc) # 1c00286c <CLOCK_Init+0x100>
1c002864:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002868:	50012c00 	b	300(0x12c) # 1c002994 <CLOCK_Init+0x228>
1c00286c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002870:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002874:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002878:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c002974 <CLOCK_Init+0x208>
1c00287c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002880:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002884:	4000a180 	beqz	$r12,160(0xa0) # 1c002924 <CLOCK_Init+0x1b8>
1c002888:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00288c:	2880018e 	ld.w	$r14,$r12,0
1c002890:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002894:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002898:	03bffdad 	ori	$r13,$r13,0xfff
1c00289c:	0014b5cd 	and	$r13,$r14,$r13
1c0028a0:	2980018d 	st.w	$r13,$r12,0
1c0028a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028a8:	2880018e 	ld.w	$r14,$r12,0
1c0028ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028b0:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c0028b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028b8:	001535cd 	or	$r13,$r14,$r13
1c0028bc:	2980018d 	st.w	$r13,$r12,0
1c0028c0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0028c4:	0386c18c 	ori	$r12,$r12,0x1b0
1c0028c8:	2880018c 	ld.w	$r12,$r12,0
1c0028cc:	40004180 	beqz	$r12,64(0x40) # 1c00290c <CLOCK_Init+0x1a0>
1c0028d0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0028d4:	0386c18c 	ori	$r12,$r12,0x1b0
1c0028d8:	2880018c 	ld.w	$r12,$r12,0
1c0028dc:	0040898e 	slli.w	$r14,$r12,0x2
1c0028e0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0028e4:	002031cd 	div.w	$r13,$r14,$r12
1c0028e8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0028f0 <CLOCK_Init+0x184>
1c0028ec:	002a0007 	break	0x7
1c0028f0:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0028f4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0028f8:	0015018d 	move	$r13,$r12
1c0028fc:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002900:	029c618c 	addi.w	$r12,$r12,1816(0x718)
1c002904:	2980018d 	st.w	$r13,$r12,0
1c002908:	50008000 	b	128(0x80) # 1c002988 <CLOCK_Init+0x21c>
1c00290c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002910:	029c218c 	addi.w	$r12,$r12,1800(0x708)
1c002914:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002918:	038fe1ad 	ori	$r13,$r13,0x3f8
1c00291c:	2980018d 	st.w	$r13,$r12,0
1c002920:	50006800 	b	104(0x68) # 1c002988 <CLOCK_Init+0x21c>
1c002924:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002928:	0386c18c 	ori	$r12,$r12,0x1b0
1c00292c:	2880018c 	ld.w	$r12,$r12,0
1c002930:	40002d80 	beqz	$r12,44(0x2c) # 1c00295c <CLOCK_Init+0x1f0>
1c002934:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002938:	0386c18c 	ori	$r12,$r12,0x1b0
1c00293c:	2880018d 	ld.w	$r13,$r12,0
1c002940:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002944:	001c31ac 	mul.w	$r12,$r13,$r12
1c002948:	0015018d 	move	$r13,$r12
1c00294c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002950:	029b218c 	addi.w	$r12,$r12,1736(0x6c8)
1c002954:	2980018d 	st.w	$r13,$r12,0
1c002958:	50003000 	b	48(0x30) # 1c002988 <CLOCK_Init+0x21c>
1c00295c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002960:	029ae18c 	addi.w	$r12,$r12,1720(0x6b8)
1c002964:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002968:	038801ad 	ori	$r13,$r13,0x200
1c00296c:	2980018d 	st.w	$r13,$r12,0
1c002970:	50001800 	b	24(0x18) # 1c002988 <CLOCK_Init+0x21c>
1c002974:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002978:	029a818c 	addi.w	$r12,$r12,1696(0x6a0)
1c00297c:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002980:	038801ad 	ori	$r13,$r13,0x200
1c002984:	2980018d 	st.w	$r13,$r12,0
1c002988:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00298c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002990:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002994:	00150184 	move	$r4,$r12
1c002998:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00299c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0029a0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0029a4:	4c000020 	jirl	$r0,$r1,0

1c0029a8 <SystemClockInit>:
SystemClockInit():
1c0029a8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0029ac:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0029b0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0029b4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0029b8:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c0029bc:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c0029c0:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0029c4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0029c8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0029cc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0029d0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0029d4:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0029d8:	00150184 	move	$r4,$r12
1c0029dc:	57fd2fff 	bl	-724(0xffffd2c) # 1c002708 <CLOCK_StructInit>
1c0029e0:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0029e4:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0029e8:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0029ec:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0029f0:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0029f4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0029f8:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0029fc:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c002a00:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002a04:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002a08:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002a0c:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c002a10:	00150184 	move	$r4,$r12
1c002a14:	57fd5bff 	bl	-680(0xffffd58) # 1c00276c <CLOCK_Init>
1c002a18:	0015008d 	move	$r13,$r4
1c002a1c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002a20:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002a2c <SystemClockInit+0x84>
1c002a24:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002a28:	50000800 	b	8(0x8) # 1c002a30 <SystemClockInit+0x88>
1c002a2c:	0015000c 	move	$r12,$r0
1c002a30:	00150184 	move	$r4,$r12
1c002a34:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a38:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a3c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a40:	4c000020 	jirl	$r0,$r1,0

1c002a44 <IsGlobalIntOpen>:
IsGlobalIntOpen():
1c002a44:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a48:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002a4c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a50:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002a54:	0400000c 	csrrd	$r12,0x0
1c002a58:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002a5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a60:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a64:	0340118c 	andi	$r12,$r12,0x4
1c002a68:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a6c:	00150184 	move	$r4,$r12
1c002a70:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002a74:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a78:	4c000020 	jirl	$r0,$r1,0

1c002a7c <DisableInt>:
DisableInt():
1c002a7c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002a80:	29803076 	st.w	$r22,$r3,12(0xc)
1c002a84:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002a88:	0380100c 	ori	$r12,$r0,0x4
1c002a8c:	04000180 	csrxchg	$r0,$r12,0x0
1c002a90:	03400000 	andi	$r0,$r0,0x0
1c002a94:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002a98:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002a9c:	4c000020 	jirl	$r0,$r1,0

1c002aa0 <EnableInt>:
EnableInt():
1c002aa0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002aa4:	29803076 	st.w	$r22,$r3,12(0xc)
1c002aa8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002aac:	0380100c 	ori	$r12,$r0,0x4
1c002ab0:	0400018c 	csrxchg	$r12,$r12,0x0
1c002ab4:	03400000 	andi	$r0,$r0,0x0
1c002ab8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002abc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002ac0:	4c000020 	jirl	$r0,$r1,0

1c002ac4 <Set_Timer_stop>:
Set_Timer_stop():
1c002ac4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002ac8:	29803076 	st.w	$r22,$r3,12(0xc)
1c002acc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002ad0:	04010420 	csrwr	$r0,0x41
1c002ad4:	03400000 	andi	$r0,$r0,0x0
1c002ad8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002adc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002ae0:	4c000020 	jirl	$r0,$r1,0

1c002ae4 <Set_Timer_clear>:
Set_Timer_clear():
1c002ae4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002ae8:	29803076 	st.w	$r22,$r3,12(0xc)
1c002aec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002af0:	0380040c 	ori	$r12,$r0,0x1
1c002af4:	0401102c 	csrwr	$r12,0x44
1c002af8:	03400000 	andi	$r0,$r0,0x0
1c002afc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002b00:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002b04:	4c000020 	jirl	$r0,$r1,0

1c002b08 <Wake_Set>:
Wake_Set():
1c002b08:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002b0c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002b10:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002b14:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002b18:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b1c:	40006980 	beqz	$r12,104(0x68) # 1c002b84 <Wake_Set+0x7c>
1c002b20:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b24:	0040a18c 	slli.w	$r12,$r12,0x8
1c002b28:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b2c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002b30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b34:	0380218c 	ori	$r12,$r12,0x8
1c002b38:	2880018d 	ld.w	$r13,$r12,0
1c002b3c:	14001fec 	lu12i.w	$r12,255(0xff)
1c002b40:	03bffd8c 	ori	$r12,$r12,0xfff
1c002b44:	0014b1ac 	and	$r12,$r13,$r12
1c002b48:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002b4c:	001031ac 	add.w	$r12,$r13,$r12
1c002b50:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002b54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b58:	0380318c 	ori	$r12,$r12,0xc
1c002b5c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002b60:	2980018d 	st.w	$r13,$r12,0
1c002b64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b68:	0380118c 	ori	$r12,$r12,0x4
1c002b6c:	2880018d 	ld.w	$r13,$r12,0
1c002b70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b74:	0380118c 	ori	$r12,$r12,0x4
1c002b78:	038601ad 	ori	$r13,$r13,0x180
1c002b7c:	2980018d 	st.w	$r13,$r12,0
1c002b80:	50002400 	b	36(0x24) # 1c002ba4 <Wake_Set+0x9c>
1c002b84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b88:	0380118c 	ori	$r12,$r12,0x4
1c002b8c:	2880018e 	ld.w	$r14,$r12,0
1c002b90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b94:	0380118c 	ori	$r12,$r12,0x4
1c002b98:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c002b9c:	0014b5cd 	and	$r13,$r14,$r13
1c002ba0:	2980018d 	st.w	$r13,$r12,0
1c002ba4:	03400000 	andi	$r0,$r0,0x0
1c002ba8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002bac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002bb0:	4c000020 	jirl	$r0,$r1,0

1c002bb4 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c002bb4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002bb8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002bbc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002bc0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002bc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bc8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002bcc:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c002bd0:	0014b1ac 	and	$r12,$r13,$r12
1c002bd4:	44000d80 	bnez	$r12,12(0xc) # 1c002be0 <PMU_GetRstRrc+0x2c>
1c002bd8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002bdc:	50003000 	b	48(0x30) # 1c002c0c <PMU_GetRstRrc+0x58>
1c002be0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002be4:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002be8:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c002bec:	0014b1ad 	and	$r13,$r13,$r12
1c002bf0:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c002bf4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002c04 <PMU_GetRstRrc+0x50>
1c002bf8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002bfc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c00:	50000c00 	b	12(0xc) # 1c002c0c <PMU_GetRstRrc+0x58>
1c002c04:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c10:	00150184 	move	$r4,$r12
1c002c14:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c18:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c1c:	4c000020 	jirl	$r0,$r1,0

1c002c20 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c002c20:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c24:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c2c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002c30:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002c34:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002c38:	0380198c 	ori	$r12,$r12,0x6
1c002c3c:	2a00018c 	ld.bu	$r12,$r12,0
1c002c40:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002c44:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c48:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c4c:	0340058c 	andi	$r12,$r12,0x1
1c002c50:	40000d80 	beqz	$r12,12(0xc) # 1c002c5c <PMU_GetBootSpiStatus+0x3c>
1c002c54:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c58:	50000800 	b	8(0x8) # 1c002c60 <PMU_GetBootSpiStatus+0x40>
1c002c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c60:	00150184 	move	$r4,$r12
1c002c64:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c6c:	4c000020 	jirl	$r0,$r1,0

1c002c70 <ls1x_logo>:
ls1x_logo():
1c002c70:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002c74:	29803061 	st.w	$r1,$r3,12(0xc)
1c002c78:	29802076 	st.w	$r22,$r3,8(0x8)
1c002c7c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002c80:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002c84:	028c9084 	addi.w	$r4,$r4,804(0x324)
1c002c88:	57edf3ff 	bl	-4624(0xfffedf0) # 1c001a78 <myprintf>
1c002c8c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002c90:	028c7084 	addi.w	$r4,$r4,796(0x31c)
1c002c94:	57ede7ff 	bl	-4636(0xfffede4) # 1c001a78 <myprintf>
1c002c98:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002c9c:	028dd084 	addi.w	$r4,$r4,884(0x374)
1c002ca0:	57eddbff 	bl	-4648(0xfffedd8) # 1c001a78 <myprintf>
1c002ca4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002ca8:	028f3084 	addi.w	$r4,$r4,972(0x3cc)
1c002cac:	57edcfff 	bl	-4660(0xfffedcc) # 1c001a78 <myprintf>
1c002cb0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002cb4:	02909084 	addi.w	$r4,$r4,1060(0x424)
1c002cb8:	57edc3ff 	bl	-4672(0xfffedc0) # 1c001a78 <myprintf>
1c002cbc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002cc0:	0291f084 	addi.w	$r4,$r4,1148(0x47c)
1c002cc4:	57edb7ff 	bl	-4684(0xfffedb4) # 1c001a78 <myprintf>
1c002cc8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002ccc:	02935084 	addi.w	$r4,$r4,1236(0x4d4)
1c002cd0:	57edabff 	bl	-4696(0xfffeda8) # 1c001a78 <myprintf>
1c002cd4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002cd8:	0294b084 	addi.w	$r4,$r4,1324(0x52c)
1c002cdc:	57ed9fff 	bl	-4708(0xfffed9c) # 1c001a78 <myprintf>
1c002ce0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002ce4:	02961084 	addi.w	$r4,$r4,1412(0x584)
1c002ce8:	57ed93ff 	bl	-4720(0xfffed90) # 1c001a78 <myprintf>
1c002cec:	1c000064 	pcaddu12i	$r4,3(0x3)
1c002cf0:	02977084 	addi.w	$r4,$r4,1500(0x5dc)
1c002cf4:	57ed87ff 	bl	-4732(0xfffed84) # 1c001a78 <myprintf>
1c002cf8:	03400000 	andi	$r0,$r0,0x0
1c002cfc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002d00:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002d04:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002d08:	4c000020 	jirl	$r0,$r1,0

1c002d0c <get_count>:
get_count():
1c002d0c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002d10:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002d14:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002d18:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d1c:	0000600c 	rdtimel.w	$r12,$r0
1c002d20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d28:	00150184 	move	$r4,$r12
1c002d2c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d34:	4c000020 	jirl	$r0,$r1,0

1c002d38 <open_count>:
open_count():
1c002d38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002d3c:	29803076 	st.w	$r22,$r3,12(0xc)
1c002d40:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002d44:	0380400c 	ori	$r12,$r0,0x10
1c002d48:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c002d4c:	03400000 	andi	$r0,$r0,0x0
1c002d50:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002d54:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002d58:	4c000020 	jirl	$r0,$r1,0

1c002d5c <start_count>:
start_count():
1c002d5c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002d60:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002d64:	29806076 	st.w	$r22,$r3,24(0x18)
1c002d68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002d6c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002d70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d74:	29800180 	st.w	$r0,$r12,0
1c002d78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d7c:	29801180 	st.w	$r0,$r12,4(0x4)
1c002d80:	57ff8fff 	bl	-116(0xfffff8c) # 1c002d0c <get_count>
1c002d84:	0015008d 	move	$r13,$r4
1c002d88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d8c:	2980018d 	st.w	$r13,$r12,0
1c002d90:	03400000 	andi	$r0,$r0,0x0
1c002d94:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002d98:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002d9c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002da0:	4c000020 	jirl	$r0,$r1,0

1c002da4 <stop_count>:
stop_count():
1c002da4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002da8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002dac:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002db0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002db4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002db8:	57ff57ff 	bl	-172(0xfffff54) # 1c002d0c <get_count>
1c002dbc:	0015008d 	move	$r13,$r4
1c002dc0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002dc4:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002dc8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002dcc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002dd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002dd4:	2880018c 	ld.w	$r12,$r12,0
1c002dd8:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c002df4 <stop_count+0x50>
1c002ddc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002de0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002de4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002de8:	2880018c 	ld.w	$r12,$r12,0
1c002dec:	001131ac 	sub.w	$r12,$r13,$r12
1c002df0:	50002800 	b	40(0x28) # 1c002e18 <stop_count+0x74>
1c002df4:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002df8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002dfc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e00:	2880018c 	ld.w	$r12,$r12,0
1c002e04:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002e08:	001131ad 	sub.w	$r13,$r13,$r12
1c002e0c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e10:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002e14:	001031ac 	add.w	$r12,$r13,$r12
1c002e18:	00150184 	move	$r4,$r12
1c002e1c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e20:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e24:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e28:	4c000020 	jirl	$r0,$r1,0

1c002e2c <delay_cycle>:
delay_cycle():
1c002e2c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e30:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e34:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e38:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e3c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e40:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e44:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002e48:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002e4c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c002e50:	00150184 	move	$r4,$r12
1c002e54:	57ff0bff 	bl	-248(0xfffff08) # 1c002d5c <start_count>
1c002e58:	50001400 	b	20(0x14) # 1c002e6c <delay_cycle+0x40>
1c002e5c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c002e60:	00150184 	move	$r4,$r12
1c002e64:	57ff43ff 	bl	-192(0xfffff40) # 1c002da4 <stop_count>
1c002e68:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e6c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002e70:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e74:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c002e5c <delay_cycle+0x30>
1c002e78:	03400000 	andi	$r0,$r0,0x0
1c002e7c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e80:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e84:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e88:	4c000020 	jirl	$r0,$r1,0

1c002e8c <delay_us>:
delay_us():
1c002e8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e90:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002e94:	29806076 	st.w	$r22,$r3,24(0x18)
1c002e98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e9c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ea4:	00408d8c 	slli.w	$r12,$r12,0x3
1c002ea8:	00150184 	move	$r4,$r12
1c002eac:	57ff83ff 	bl	-128(0xfffff80) # 1c002e2c <delay_cycle>
1c002eb0:	03400000 	andi	$r0,$r0,0x0
1c002eb4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002eb8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002ebc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ec0:	4c000020 	jirl	$r0,$r1,0

1c002ec4 <delay_ms>:
delay_ms():
1c002ec4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002ec8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002ecc:	29806076 	st.w	$r22,$r3,24(0x18)
1c002ed0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002ed4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002ed8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002edc:	1400002c 	lu12i.w	$r12,1(0x1)
1c002ee0:	03bd018c 	ori	$r12,$r12,0xf40
1c002ee4:	001c31ac 	mul.w	$r12,$r13,$r12
1c002ee8:	00150184 	move	$r4,$r12
1c002eec:	57ff43ff 	bl	-192(0xfffff40) # 1c002e2c <delay_cycle>
1c002ef0:	03400000 	andi	$r0,$r0,0x0
1c002ef4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002ef8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002efc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002f00:	4c000020 	jirl	$r0,$r1,0

1c002f04 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c002f04:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002f08:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002f0c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002f10:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002f14:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c002f18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f1c:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002f20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002f24:	001531ad 	or	$r13,$r13,$r12
1c002f28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f2c:	2980318d 	st.w	$r13,$r12,12(0xc)
1c002f30:	03400000 	andi	$r0,$r0,0x0
1c002f34:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002f38:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002f3c:	4c000020 	jirl	$r0,$r1,0

1c002f40 <WDG_getOddValue>:
WDG_getOddValue():
1c002f40:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002f44:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002f48:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002f4c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002f50:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002f54:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002f58:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002f5c:	50003800 	b	56(0x38) # 1c002f94 <WDG_getOddValue+0x54>
1c002f60:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002f64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f68:	001731ac 	sll.w	$r12,$r13,$r12
1c002f6c:	0015018d 	move	$r13,$r12
1c002f70:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f74:	0014b1ac 	and	$r12,$r13,$r12
1c002f78:	40001180 	beqz	$r12,16(0x10) # 1c002f88 <WDG_getOddValue+0x48>
1c002f7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002f80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002f84:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002f88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002f90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002f94:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002f98:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c002f9c:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c002f60 <WDG_getOddValue+0x20>
1c002fa0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002fa4:	0340058c 	andi	$r12,$r12,0x1
1c002fa8:	44000d80 	bnez	$r12,12(0xc) # 1c002fb4 <WDG_getOddValue+0x74>
1c002fac:	1400010c 	lu12i.w	$r12,8(0x8)
1c002fb0:	50000800 	b	8(0x8) # 1c002fb8 <WDG_getOddValue+0x78>
1c002fb4:	0015000c 	move	$r12,$r0
1c002fb8:	00150184 	move	$r4,$r12
1c002fbc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002fc0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002fc4:	4c000020 	jirl	$r0,$r1,0

1c002fc8 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c002fc8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002fcc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002fd0:	29806076 	st.w	$r22,$r3,24(0x18)
1c002fd4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002fd8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002fdc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002fe0:	140000ec 	lu12i.w	$r12,7(0x7)
1c002fe4:	03bffd8c 	ori	$r12,$r12,0xfff
1c002fe8:	0014b1ac 	and	$r12,$r13,$r12
1c002fec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ff0:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c002ff4:	57ff4fff 	bl	-180(0xfffff4c) # 1c002f40 <WDG_getOddValue>
1c002ff8:	0015008c 	move	$r12,$r4
1c002ffc:	0015018d 	move	$r13,$r12
1c003000:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003004:	0015358c 	or	$r12,$r12,$r13
1c003008:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00300c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003010:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003014:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003018:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c00301c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003020:	0014300c 	nor	$r12,$r0,$r12
1c003024:	0040c18c 	slli.w	$r12,$r12,0x10
1c003028:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00302c:	001531ac 	or	$r12,$r13,$r12
1c003030:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003034:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003038:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00303c:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003040:	03400000 	andi	$r0,$r0,0x0
1c003044:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003048:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00304c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003050:	4c000020 	jirl	$r0,$r1,0

1c003054 <WDG_DogFeed>:
WDG_DogFeed():
1c003054:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003058:	29803076 	st.w	$r22,$r3,12(0xc)
1c00305c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003060:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003064:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003068:	0396a9ad 	ori	$r13,$r13,0x5aa
1c00306c:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003070:	03400000 	andi	$r0,$r0,0x0
1c003074:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003078:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00307c:	4c000020 	jirl	$r0,$r1,0

1c003080 <WdgInit>:
WdgInit():
1c003080:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003084:	29803061 	st.w	$r1,$r3,12(0xc)
1c003088:	29802076 	st.w	$r22,$r3,8(0x8)
1c00308c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003090:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003094:	03bffd84 	ori	$r4,$r12,0xfff
1c003098:	57ff33ff 	bl	-208(0xfffff30) # 1c002fc8 <WDG_SetWatchDog>
1c00309c:	03400000 	andi	$r0,$r0,0x0
1c0030a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0030a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0030a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0030ac:	4c000020 	jirl	$r0,$r1,0

1c0030b0 <MyI2C_Start>:
MyI2C_Start():
1c0030b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0030b4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0030b8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0030bc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0030c0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0030c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030c8:	2a00018c 	ld.bu	$r12,$r12,0
1c0030cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0030d0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0030d4:	00150184 	move	$r4,$r12
1c0030d8:	57e513ff 	bl	-6896(0xfffe510) # 1c0015e8 <gpio_write_pin>
1c0030dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030e0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0030e4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0030e8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0030ec:	00150184 	move	$r4,$r12
1c0030f0:	57e4fbff 	bl	-6920(0xfffe4f8) # 1c0015e8 <gpio_write_pin>
1c0030f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030f8:	2a00018c 	ld.bu	$r12,$r12,0
1c0030fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003100:	00150005 	move	$r5,$r0
1c003104:	00150184 	move	$r4,$r12
1c003108:	57e4e3ff 	bl	-6944(0xfffe4e0) # 1c0015e8 <gpio_write_pin>
1c00310c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003110:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c003114:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003118:	00150005 	move	$r5,$r0
1c00311c:	00150184 	move	$r4,$r12
1c003120:	57e4cbff 	bl	-6968(0xfffe4c8) # 1c0015e8 <gpio_write_pin>
1c003124:	03400000 	andi	$r0,$r0,0x0
1c003128:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00312c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003130:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003134:	4c000020 	jirl	$r0,$r1,0

1c003138 <MyI2C_Stop>:
MyI2C_Stop():
1c003138:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00313c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003140:	29806076 	st.w	$r22,$r3,24(0x18)
1c003144:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003148:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00314c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003150:	2a00018c 	ld.bu	$r12,$r12,0
1c003154:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003158:	00150005 	move	$r5,$r0
1c00315c:	00150184 	move	$r4,$r12
1c003160:	57e48bff 	bl	-7032(0xfffe488) # 1c0015e8 <gpio_write_pin>
1c003164:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003168:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00316c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003170:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003174:	00150184 	move	$r4,$r12
1c003178:	57e473ff 	bl	-7056(0xfffe470) # 1c0015e8 <gpio_write_pin>
1c00317c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003180:	2a00018c 	ld.bu	$r12,$r12,0
1c003184:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003188:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00318c:	00150184 	move	$r4,$r12
1c003190:	57e45bff 	bl	-7080(0xfffe458) # 1c0015e8 <gpio_write_pin>
1c003194:	03400000 	andi	$r0,$r0,0x0
1c003198:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00319c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0031a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0031a4:	4c000020 	jirl	$r0,$r1,0

1c0031a8 <MyI2C_SendAck>:
MyI2C_SendAck():
1c0031a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0031ac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0031b0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0031b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0031b8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0031bc:	001500ac 	move	$r12,$r5
1c0031c0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0031c4:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0031c8:	40002180 	beqz	$r12,32(0x20) # 1c0031e8 <MyI2C_SendAck+0x40>
1c0031cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031d0:	2a00018c 	ld.bu	$r12,$r12,0
1c0031d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0031d8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0031dc:	00150184 	move	$r4,$r12
1c0031e0:	57e40bff 	bl	-7160(0xfffe408) # 1c0015e8 <gpio_write_pin>
1c0031e4:	50001c00 	b	28(0x1c) # 1c003200 <MyI2C_SendAck+0x58>
1c0031e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031ec:	2a00018c 	ld.bu	$r12,$r12,0
1c0031f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0031f4:	00150005 	move	$r5,$r0
1c0031f8:	00150184 	move	$r4,$r12
1c0031fc:	57e3efff 	bl	-7188(0xfffe3ec) # 1c0015e8 <gpio_write_pin>
1c003200:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003204:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c003208:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00320c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003210:	00150184 	move	$r4,$r12
1c003214:	57e3d7ff 	bl	-7212(0xfffe3d4) # 1c0015e8 <gpio_write_pin>
1c003218:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00321c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c003220:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003224:	00150005 	move	$r5,$r0
1c003228:	00150184 	move	$r4,$r12
1c00322c:	57e3bfff 	bl	-7236(0xfffe3bc) # 1c0015e8 <gpio_write_pin>
1c003230:	03400000 	andi	$r0,$r0,0x0
1c003234:	00150184 	move	$r4,$r12
1c003238:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00323c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003240:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003244:	4c000020 	jirl	$r0,$r1,0

1c003248 <MyI2C_ReceiveAck>:
MyI2C_ReceiveAck():
1c003248:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00324c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003250:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003254:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003258:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00325c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003260:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c003264:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003268:	00150005 	move	$r5,$r0
1c00326c:	00150184 	move	$r4,$r12
1c003270:	57e37bff 	bl	-7304(0xfffe378) # 1c0015e8 <gpio_write_pin>
1c003274:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003278:	2a00018c 	ld.bu	$r12,$r12,0
1c00327c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003280:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003284:	00150184 	move	$r4,$r12
1c003288:	57e363ff 	bl	-7328(0xfffe360) # 1c0015e8 <gpio_write_pin>
1c00328c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003290:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c003294:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003298:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00329c:	00150184 	move	$r4,$r12
1c0032a0:	57e34bff 	bl	-7352(0xfffe348) # 1c0015e8 <gpio_write_pin>
1c0032a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032a8:	2a00018c 	ld.bu	$r12,$r12,0
1c0032ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0032b0:	00150184 	move	$r4,$r12
1c0032b4:	57e2e7ff 	bl	-7452(0xfffe2e4) # 1c001598 <gpio_get_pin>
1c0032b8:	0015008c 	move	$r12,$r4
1c0032bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0032c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032c4:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0032c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0032cc:	00150005 	move	$r5,$r0
1c0032d0:	00150184 	move	$r4,$r12
1c0032d4:	57e317ff 	bl	-7404(0xfffe314) # 1c0015e8 <gpio_write_pin>
1c0032d8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0032dc:	00150184 	move	$r4,$r12
1c0032e0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0032e4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0032e8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0032ec:	4c000020 	jirl	$r0,$r1,0

1c0032f0 <MyI2C_SendData>:
MyI2C_SendData():
1c0032f0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0032f4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0032f8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0032fc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003300:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003304:	001500ac 	move	$r12,$r5
1c003308:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c00330c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c003310:	50008c00 	b	140(0x8c) # 1c00339c <MyI2C_SendData+0xac>
1c003314:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c003318:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00331c:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c003320:	001831cc 	sra.w	$r12,$r14,$r12
1c003324:	0014b1ac 	and	$r12,$r13,$r12
1c003328:	6400200c 	bge	$r0,$r12,32(0x20) # 1c003348 <MyI2C_SendData+0x58>
1c00332c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003330:	2a00018c 	ld.bu	$r12,$r12,0
1c003334:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003338:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00333c:	00150184 	move	$r4,$r12
1c003340:	57e2abff 	bl	-7512(0xfffe2a8) # 1c0015e8 <gpio_write_pin>
1c003344:	50001c00 	b	28(0x1c) # 1c003360 <MyI2C_SendData+0x70>
1c003348:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00334c:	2a00018c 	ld.bu	$r12,$r12,0
1c003350:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003354:	00150005 	move	$r5,$r0
1c003358:	00150184 	move	$r4,$r12
1c00335c:	57e28fff 	bl	-7540(0xfffe28c) # 1c0015e8 <gpio_write_pin>
1c003360:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003364:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c003368:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00336c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003370:	00150184 	move	$r4,$r12
1c003374:	57e277ff 	bl	-7564(0xfffe274) # 1c0015e8 <gpio_write_pin>
1c003378:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00337c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c003380:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003384:	00150005 	move	$r5,$r0
1c003388:	00150184 	move	$r4,$r12
1c00338c:	57e25fff 	bl	-7588(0xfffe25c) # 1c0015e8 <gpio_write_pin>
1c003390:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003394:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003398:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00339c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0033a0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0033a4:	6fff718d 	bgeu	$r12,$r13,-144(0x3ff70) # 1c003314 <MyI2C_SendData+0x24>
1c0033a8:	03400000 	andi	$r0,$r0,0x0
1c0033ac:	00150184 	move	$r4,$r12
1c0033b0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0033b4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0033b8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0033bc:	4c000020 	jirl	$r0,$r1,0

1c0033c0 <MyI2C_ReceiveData>:
MyI2C_ReceiveData():
1c0033c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0033c4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0033c8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0033cc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0033d0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0033d4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0033d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0033dc:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0033e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0033e4:	00150005 	move	$r5,$r0
1c0033e8:	00150184 	move	$r4,$r12
1c0033ec:	57e1ffff 	bl	-7684(0xfffe1fc) # 1c0015e8 <gpio_write_pin>
1c0033f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0033f4:	2a00018c 	ld.bu	$r12,$r12,0
1c0033f8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0033fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003400:	00150184 	move	$r4,$r12
1c003404:	57e1e7ff 	bl	-7708(0xfffe1e4) # 1c0015e8 <gpio_write_pin>
1c003408:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c00340c:	50008c00 	b	140(0x8c) # 1c003498 <MyI2C_ReceiveData+0xd8>
1c003410:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003414:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c003418:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00341c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003420:	00150184 	move	$r4,$r12
1c003424:	57e1c7ff 	bl	-7740(0xfffe1c4) # 1c0015e8 <gpio_write_pin>
1c003428:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00342c:	2a00018c 	ld.bu	$r12,$r12,0
1c003430:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003434:	00150184 	move	$r4,$r12
1c003438:	57e163ff 	bl	-7840(0xfffe160) # 1c001598 <gpio_get_pin>
1c00343c:	0015008c 	move	$r12,$r4
1c003440:	0015018d 	move	$r13,$r12
1c003444:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003448:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c003474 <MyI2C_ReceiveData+0xb4>
1c00344c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c003450:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c003454:	001131ac 	sub.w	$r12,$r13,$r12
1c003458:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00345c:	001731ac 	sll.w	$r12,$r13,$r12
1c003460:	00005d8d 	ext.w.b	$r13,$r12
1c003464:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c003468:	001531ac 	or	$r12,$r13,$r12
1c00346c:	00005d8c 	ext.w.b	$r12,$r12
1c003470:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003474:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003478:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00347c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003480:	00150005 	move	$r5,$r0
1c003484:	00150184 	move	$r4,$r12
1c003488:	57e163ff 	bl	-7840(0xfffe160) # 1c0015e8 <gpio_write_pin>
1c00348c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c003490:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003494:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c003498:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00349c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0034a0:	6fff718d 	bgeu	$r12,$r13,-144(0x3ff70) # 1c003410 <MyI2C_ReceiveData+0x50>
1c0034a4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0034a8:	00150184 	move	$r4,$r12
1c0034ac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0034b0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0034b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0034b8:	4c000020 	jirl	$r0,$r1,0

1c0034bc <MyI2C_W_Byte>:
MyI2C_W_Byte():
1c0034bc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034c0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0034c4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0034c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034cc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0034d0:	001500ac 	move	$r12,$r5
1c0034d4:	001500ce 	move	$r14,$r6
1c0034d8:	001500ed 	move	$r13,$r7
1c0034dc:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0034e0:	001501cc 	move	$r12,$r14
1c0034e4:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c0034e8:	001501ac 	move	$r12,$r13
1c0034ec:	293fa6cc 	st.b	$r12,$r22,-23(0xfe9)
1c0034f0:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0034f4:	57fbbfff 	bl	-1092(0xffffbbc) # 1c0030b0 <MyI2C_Start>
1c0034f8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0034fc:	00150185 	move	$r5,$r12
1c003500:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003504:	57fdefff 	bl	-532(0xffffdec) # 1c0032f0 <MyI2C_SendData>
1c003508:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c00350c:	57fd3fff 	bl	-708(0xffffd3c) # 1c003248 <MyI2C_ReceiveAck>
1c003510:	0015008c 	move	$r12,$r4
1c003514:	0015018d 	move	$r13,$r12
1c003518:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00351c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c003530 <MyI2C_W_Byte+0x74>
1c003520:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003524:	57fc17ff 	bl	-1004(0xffffc14) # 1c003138 <MyI2C_Stop>
1c003528:	0015000c 	move	$r12,$r0
1c00352c:	50004000 	b	64(0x40) # 1c00356c <MyI2C_W_Byte+0xb0>
1c003530:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c003534:	00150185 	move	$r5,$r12
1c003538:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c00353c:	57fdb7ff 	bl	-588(0xffffdb4) # 1c0032f0 <MyI2C_SendData>
1c003540:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003544:	57fd07ff 	bl	-764(0xffffd04) # 1c003248 <MyI2C_ReceiveAck>
1c003548:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c00354c:	00150185 	move	$r5,$r12
1c003550:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003554:	57fd9fff 	bl	-612(0xffffd9c) # 1c0032f0 <MyI2C_SendData>
1c003558:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c00355c:	57fcefff 	bl	-788(0xffffcec) # 1c003248 <MyI2C_ReceiveAck>
1c003560:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003564:	57fbd7ff 	bl	-1068(0xffffbd4) # 1c003138 <MyI2C_Stop>
1c003568:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00356c:	00150184 	move	$r4,$r12
1c003570:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003574:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003578:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00357c:	4c000020 	jirl	$r0,$r1,0

1c003580 <MyI2C_R_Byte>:
MyI2C_R_Byte():
1c003580:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003584:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003588:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00358c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003590:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003594:	001500ac 	move	$r12,$r5
1c003598:	001500cd 	move	$r13,$r6
1c00359c:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c0035a0:	001501ac 	move	$r12,$r13
1c0035a4:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c0035a8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0035ac:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0035b0:	57fb03ff 	bl	-1280(0xffffb00) # 1c0030b0 <MyI2C_Start>
1c0035b4:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c0035b8:	00150185 	move	$r5,$r12
1c0035bc:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0035c0:	57fd33ff 	bl	-720(0xffffd30) # 1c0032f0 <MyI2C_SendData>
1c0035c4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0035c8:	57fc83ff 	bl	-896(0xffffc80) # 1c003248 <MyI2C_ReceiveAck>
1c0035cc:	0015008c 	move	$r12,$r4
1c0035d0:	0015018d 	move	$r13,$r12
1c0035d4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0035d8:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0035ec <MyI2C_R_Byte+0x6c>
1c0035dc:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0035e0:	57fb5bff 	bl	-1192(0xffffb58) # 1c003138 <MyI2C_Stop>
1c0035e4:	0015000c 	move	$r12,$r0
1c0035e8:	50009400 	b	148(0x94) # 1c00367c <MyI2C_R_Byte+0xfc>
1c0035ec:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c0035f0:	00150185 	move	$r5,$r12
1c0035f4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0035f8:	57fcfbff 	bl	-776(0xffffcf8) # 1c0032f0 <MyI2C_SendData>
1c0035fc:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c003600:	57fc4bff 	bl	-952(0xffffc48) # 1c003248 <MyI2C_ReceiveAck>
1c003604:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c003608:	57fb33ff 	bl	-1232(0xffffb30) # 1c003138 <MyI2C_Stop>
1c00360c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c003610:	57faa3ff 	bl	-1376(0xffffaa0) # 1c0030b0 <MyI2C_Start>
1c003614:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c003618:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00361c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003620:	00150185 	move	$r5,$r12
1c003624:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c003628:	57fccbff 	bl	-824(0xffffcc8) # 1c0032f0 <MyI2C_SendData>
1c00362c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c003630:	57fc1bff 	bl	-1000(0xffffc18) # 1c003248 <MyI2C_ReceiveAck>
1c003634:	0015008c 	move	$r12,$r4
1c003638:	0015018d 	move	$r13,$r12
1c00363c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003640:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c003654 <MyI2C_R_Byte+0xd4>
1c003644:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c003648:	57faf3ff 	bl	-1296(0xffffaf0) # 1c003138 <MyI2C_Stop>
1c00364c:	0015000c 	move	$r12,$r0
1c003650:	50002c00 	b	44(0x2c) # 1c00367c <MyI2C_R_Byte+0xfc>
1c003654:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c003658:	57fd6bff 	bl	-664(0xffffd68) # 1c0033c0 <MyI2C_ReceiveData>
1c00365c:	0015008c 	move	$r12,$r4
1c003660:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003664:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003668:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00366c:	57fb3fff 	bl	-1220(0xffffb3c) # 1c0031a8 <MyI2C_SendAck>
1c003670:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c003674:	57fac7ff 	bl	-1340(0xffffac4) # 1c003138 <MyI2C_Stop>
1c003678:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00367c:	00150184 	move	$r4,$r12
1c003680:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003684:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003688:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00368c:	4c000020 	jirl	$r0,$r1,0

1c003690 <I2C_Init>:
I2C_Init():
1c003690:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003694:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003698:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00369c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0036a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0036a4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0036a8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0036ac:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c0036b0:	0388018c 	ori	$r12,$r12,0x200
1c0036b4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0036b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036bc:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c0036c0:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0036c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0036c8:	2880018d 	ld.w	$r13,$r12,0
1c0036cc:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c0036d0:	002135cc 	div.wu	$r12,$r14,$r13
1c0036d4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0036dc <I2C_Init+0x4c>
1c0036d8:	002a0007 	break	0x7
1c0036dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036e4:	0044898c 	srli.w	$r12,$r12,0x2
1c0036e8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0036ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036f4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0036f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036fc:	2900018d 	st.b	$r13,$r12,0
1c003700:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003704:	0044a18c 	srli.w	$r12,$r12,0x8
1c003708:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00370c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003710:	2900058d 	st.b	$r13,$r12,1(0x1)
1c003714:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003718:	2a00118d 	ld.bu	$r13,$r12,4(0x4)
1c00371c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003720:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c003724:	001531ac 	or	$r12,$r13,$r12
1c003728:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00372c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003730:	2a001d8c 	ld.bu	$r12,$r12,7(0x7)
1c003734:	001531ac 	or	$r12,$r13,$r12
1c003738:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00373c:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c003740:	001531ac 	or	$r12,$r13,$r12
1c003744:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003748:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00374c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003750:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003754:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c003758:	40001180 	beqz	$r12,16(0x10) # 1c003768 <I2C_Init+0xd8>
1c00375c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003760:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003764:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003768:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00376c:	2a00158d 	ld.bu	$r13,$r12,5(0x5)
1c003770:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003774:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c003778:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c00377c:	5401ac00 	bl	428(0x1ac) # 1c003928 <I2C_wait>
1c003780:	03400000 	andi	$r0,$r0,0x0
1c003784:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003788:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00378c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003790:	4c000020 	jirl	$r0,$r1,0

1c003794 <I2C_StructInit>:
I2C_StructInit():
1c003794:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003798:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00379c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0037a0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0037a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037a8:	1400030d 	lu12i.w	$r13,24(0x18)
1c0037ac:	039a81ad 	ori	$r13,$r13,0x6a0
1c0037b0:	2980018d 	st.w	$r13,$r12,0
1c0037b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037b8:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c0037bc:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0037c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037c4:	0280a80d 	addi.w	$r13,$r0,42(0x2a)
1c0037c8:	2900158d 	st.b	$r13,$r12,5(0x5)
1c0037cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037d0:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0037d4:	2900198d 	st.b	$r13,$r12,6(0x6)
1c0037d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037dc:	29001d80 	st.b	$r0,$r12,7(0x7)
1c0037e0:	03400000 	andi	$r0,$r0,0x0
1c0037e4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0037e8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0037ec:	4c000020 	jirl	$r0,$r1,0

1c0037f0 <I2C_GenerateSTART>:
I2C_GenerateSTART():
1c0037f0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0037f4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0037f8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0037fc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003800:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003804:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003808:	40002980 	beqz	$r12,40(0x28) # 1c003830 <I2C_GenerateSTART+0x40>
1c00380c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003810:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003814:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003818:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c00381c:	001531ac 	or	$r12,$r13,$r12
1c003820:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003824:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003828:	2900118d 	st.b	$r13,$r12,4(0x4)
1c00382c:	50002000 	b	32(0x20) # 1c00384c <I2C_GenerateSTART+0x5c>
1c003830:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003834:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003838:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00383c:	0341fd8c 	andi	$r12,$r12,0x7f
1c003840:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003844:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003848:	2900118d 	st.b	$r13,$r12,4(0x4)
1c00384c:	03400000 	andi	$r0,$r0,0x0
1c003850:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003854:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003858:	4c000020 	jirl	$r0,$r1,0

1c00385c <I2C_GenerateSTOP>:
I2C_GenerateSTOP():
1c00385c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003860:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003864:	29806076 	st.w	$r22,$r3,24(0x18)
1c003868:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00386c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003870:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003874:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003878:	40002580 	beqz	$r12,36(0x24) # 1c00389c <I2C_GenerateSTOP+0x40>
1c00387c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003880:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003884:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003888:	0381018c 	ori	$r12,$r12,0x40
1c00388c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003890:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003894:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003898:	50002400 	b	36(0x24) # 1c0038bc <I2C_GenerateSTOP+0x60>
1c00389c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038a0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0038a4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0038a8:	02befc0c 	addi.w	$r12,$r0,-65(0xfbf)
1c0038ac:	0014b1ac 	and	$r12,$r13,$r12
1c0038b0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0038b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038b8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0038bc:	02806404 	addi.w	$r4,$r0,25(0x19)
1c0038c0:	57f5cfff 	bl	-2612(0xffff5cc) # 1c002e8c <delay_us>
1c0038c4:	03400000 	andi	$r0,$r0,0x0
1c0038c8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0038cc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0038d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038d4:	4c000020 	jirl	$r0,$r1,0

1c0038d8 <I2C_SendData>:
I2C_SendData():
1c0038d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0038dc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0038e0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0038e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0038e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0038ec:	001500ac 	move	$r12,$r5
1c0038f0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0038f4:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0038f8:	54007800 	bl	120(0x78) # 1c003970 <I2C_Unlock>
1c0038fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003900:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c003904:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c003908:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c00390c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c003910:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003914:	03400000 	andi	$r0,$r0,0x0
1c003918:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00391c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003920:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003924:	4c000020 	jirl	$r0,$r1,0

1c003928 <I2C_wait>:
I2C_wait():
1c003928:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00392c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003930:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003934:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003938:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00393c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003940:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003944:	50001000 	b	16(0x10) # 1c003954 <I2C_wait+0x2c>
1c003948:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00394c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003950:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003954:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003958:	0340098c 	andi	$r12,$r12,0x2
1c00395c:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c003948 <I2C_wait+0x20>
1c003960:	03400000 	andi	$r0,$r0,0x0
1c003964:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003968:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00396c:	4c000020 	jirl	$r0,$r1,0

1c003970 <I2C_Unlock>:
I2C_Unlock():
1c003970:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003974:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003978:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00397c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003980:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003984:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003988:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00398c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003990:	0340118c 	andi	$r12,$r12,0x4
1c003994:	40002180 	beqz	$r12,32(0x20) # 1c0039b4 <I2C_Unlock+0x44>
1c003998:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00399c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0039a0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0039a4:	0380118c 	ori	$r12,$r12,0x4
1c0039a8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0039ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0039b0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0039b4:	03400000 	andi	$r0,$r0,0x0
1c0039b8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0039bc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0039c0:	4c000020 	jirl	$r0,$r1,0

1c0039c4 <Adc_powerOn>:
Adc_powerOn():
1c0039c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0039cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0039d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039d4:	57f073ff 	bl	-3984(0xffff070) # 1c002a44 <IsGlobalIntOpen>
1c0039d8:	0015008c 	move	$r12,$r4
1c0039dc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0039e0:	57f09fff 	bl	-3940(0xffff09c) # 1c002a7c <DisableInt>
1c0039e4:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c0039e8:	288001ac 	ld.w	$r12,$r13,0
1c0039ec:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0039f0:	007041cc 	bstrins.w	$r12,$r14,0x10,0x10
1c0039f4:	298001ac 	st.w	$r12,$r13,0
1c0039f8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0039fc:	40000980 	beqz	$r12,8(0x8) # 1c003a04 <Adc_powerOn+0x40>
1c003a00:	57f0a3ff 	bl	-3936(0xffff0a0) # 1c002aa0 <EnableInt>
1c003a04:	03400000 	andi	$r0,$r0,0x0
1c003a08:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003a0c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003a10:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a14:	4c000020 	jirl	$r0,$r1,0

1c003a18 <Adc_open>:
Adc_open():
1c003a18:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003a1c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003a20:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003a24:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003a28:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003a2c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003a30:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003a34:	001731ac 	sll.w	$r12,$r13,$r12
1c003a38:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a40:	0340058c 	andi	$r12,$r12,0x1
1c003a44:	40003580 	beqz	$r12,52(0x34) # 1c003a78 <Adc_open+0x60>
1c003a48:	57efffff 	bl	-4100(0xfffeffc) # 1c002a44 <IsGlobalIntOpen>
1c003a4c:	0015008c 	move	$r12,$r4
1c003a50:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003a54:	57f02bff 	bl	-4056(0xffff028) # 1c002a7c <DisableInt>
1c003a58:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003a5c:	288001ac 	ld.w	$r12,$r13,0
1c003a60:	0071440c 	bstrins.w	$r12,$r0,0x11,0x11
1c003a64:	298001ac 	st.w	$r12,$r13,0
1c003a68:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003a6c:	40004980 	beqz	$r12,72(0x48) # 1c003ab4 <Adc_open+0x9c>
1c003a70:	57f033ff 	bl	-4048(0xffff030) # 1c002aa0 <EnableInt>
1c003a74:	50004000 	b	64(0x40) # 1c003ab4 <Adc_open+0x9c>
1c003a78:	57efcfff 	bl	-4148(0xfffefcc) # 1c002a44 <IsGlobalIntOpen>
1c003a7c:	0015008c 	move	$r12,$r4
1c003a80:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c003a84:	57effbff 	bl	-4104(0xfffeff8) # 1c002a7c <DisableInt>
1c003a88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a8c:	0044918c 	srli.w	$r12,$r12,0x4
1c003a90:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003a94:	03403d8c 	andi	$r12,$r12,0xf
1c003a98:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003a9c:	288001ac 	ld.w	$r12,$r13,0
1c003aa0:	007751cc 	bstrins.w	$r12,$r14,0x17,0x14
1c003aa4:	298001ac 	st.w	$r12,$r13,0
1c003aa8:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c003aac:	40000980 	beqz	$r12,8(0x8) # 1c003ab4 <Adc_open+0x9c>
1c003ab0:	57eff3ff 	bl	-4112(0xfffeff0) # 1c002aa0 <EnableInt>
1c003ab4:	03400000 	andi	$r0,$r0,0x0
1c003ab8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003abc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003ac0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003ac4:	4c000020 	jirl	$r0,$r1,0

1c003ac8 <Adc_Measure>:
Adc_Measure():
1c003ac8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003acc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003ad0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003ad4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003ad8:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c003adc:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c003ae0:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c003ae4:	50008400 	b	132(0x84) # 1c003b68 <Adc_Measure+0xa0>
1c003ae8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003aec:	0381b18c 	ori	$r12,$r12,0x6c
1c003af0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003af4:	038401ad 	ori	$r13,$r13,0x100
1c003af8:	2980018d 	st.w	$r13,$r12,0
1c003afc:	03400000 	andi	$r0,$r0,0x0
1c003b00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003b04:	0381b18c 	ori	$r12,$r12,0x6c
1c003b08:	2880018c 	ld.w	$r12,$r12,0
1c003b0c:	0344018c 	andi	$r12,$r12,0x100
1c003b10:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c003b00 <Adc_Measure+0x38>
1c003b14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003b18:	0381c18c 	ori	$r12,$r12,0x70
1c003b1c:	2880018c 	ld.w	$r12,$r12,0
1c003b20:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b24:	037ffd8c 	andi	$r12,$r12,0xfff
1c003b28:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c003b2c:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003b30:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003b34:	6c00298d 	bgeu	$r12,$r13,40(0x28) # 1c003b5c <Adc_Measure+0x94>
1c003b38:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003b3c:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003b40:	001031ac 	add.w	$r12,$r13,$r12
1c003b44:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c003b48:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c003b4c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003b50:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c003b5c <Adc_Measure+0x94>
1c003b54:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003b58:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003b5c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003b60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b64:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003b68:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003b6c:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003b70:	6fff798d 	bgeu	$r12,$r13,-136(0x3ff78) # 1c003ae8 <Adc_Measure+0x20>
1c003b74:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003b78:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003b7c:	001131ad 	sub.w	$r13,$r13,$r12
1c003b80:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003b84:	002031ae 	div.w	$r14,$r13,$r12
1c003b88:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003b90 <Adc_Measure+0xc8>
1c003b8c:	002a0007 	break	0x7
1c003b90:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003b94:	00150184 	move	$r4,$r12
1c003b98:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003b9c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003ba0:	4c000020 	jirl	$r0,$r1,0

1c003ba4 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003ba4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ba8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003bac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003bb0:	0015008c 	move	$r12,$r4
1c003bb4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003bb8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003bbc:	0040898c 	slli.w	$r12,$r12,0x2
1c003bc0:	0015018d 	move	$r13,$r12
1c003bc4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003bc8:	0381018c 	ori	$r12,$r12,0x40
1c003bcc:	001031ac 	add.w	$r12,$r13,$r12
1c003bd0:	2880018c 	ld.w	$r12,$r12,0
1c003bd4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003bd8:	037ffd8c 	andi	$r12,$r12,0xfff
1c003bdc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003be0:	00150184 	move	$r4,$r12
1c003be4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003be8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003bec:	4c000020 	jirl	$r0,$r1,0

1c003bf0 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003bf0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003bf4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003bf8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003bfc:	0015008c 	move	$r12,$r4
1c003c00:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003c04:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003c08:	0040898c 	slli.w	$r12,$r12,0x2
1c003c0c:	0015018d 	move	$r13,$r12
1c003c10:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003c14:	0382018c 	ori	$r12,$r12,0x80
1c003c18:	001031ac 	add.w	$r12,$r13,$r12
1c003c1c:	2880018c 	ld.w	$r12,$r12,0
1c003c20:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c24:	037ffd8c 	andi	$r12,$r12,0xfff
1c003c28:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c2c:	00150184 	move	$r4,$r12
1c003c30:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003c34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c38:	4c000020 	jirl	$r0,$r1,0

1c003c3c <Printf_KeyChannel>:
Printf_KeyChannel():
1c003c3c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003c40:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003c44:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003c48:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003c4c:	0015008c 	move	$r12,$r4
1c003c50:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003c54:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c58:	50003400 	b	52(0x34) # 1c003c8c <Printf_KeyChannel+0x50>
1c003c5c:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003c60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c64:	001831ac 	sra.w	$r12,$r13,$r12
1c003c68:	0340058c 	andi	$r12,$r12,0x1
1c003c6c:	40001580 	beqz	$r12,20(0x14) # 1c003c80 <Printf_KeyChannel+0x44>
1c003c70:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003c74:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003c78:	029ae084 	addi.w	$r4,$r4,1720(0x6b8)
1c003c7c:	57ddffff 	bl	-8708(0xfffddfc) # 1c001a78 <myprintf>
1c003c80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c8c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c90:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003c94:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003c5c <Printf_KeyChannel+0x20>
1c003c98:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003c9c:	029a6084 	addi.w	$r4,$r4,1688(0x698)
1c003ca0:	57dddbff 	bl	-8744(0xfffddd8) # 1c001a78 <myprintf>
1c003ca4:	03400000 	andi	$r0,$r0,0x0
1c003ca8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003cac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003cb0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003cb4:	4c000020 	jirl	$r0,$r1,0

1c003cb8 <Printf_KeyType>:
Printf_KeyType():
1c003cb8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003cbc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003cc0:	29806076 	st.w	$r22,$r3,24(0x18)
1c003cc4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003cc8:	0015008c 	move	$r12,$r4
1c003ccc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003cd0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003cd4:	0340058c 	andi	$r12,$r12,0x1
1c003cd8:	40001180 	beqz	$r12,16(0x10) # 1c003ce8 <Printf_KeyType+0x30>
1c003cdc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003ce0:	02996084 	addi.w	$r4,$r4,1624(0x658)
1c003ce4:	57dd97ff 	bl	-8812(0xfffdd94) # 1c001a78 <myprintf>
1c003ce8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003cec:	0340098c 	andi	$r12,$r12,0x2
1c003cf0:	40001180 	beqz	$r12,16(0x10) # 1c003d00 <Printf_KeyType+0x48>
1c003cf4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003cf8:	02992084 	addi.w	$r4,$r4,1608(0x648)
1c003cfc:	57dd7fff 	bl	-8836(0xfffdd7c) # 1c001a78 <myprintf>
1c003d00:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003d04:	0340118c 	andi	$r12,$r12,0x4
1c003d08:	40001180 	beqz	$r12,16(0x10) # 1c003d18 <Printf_KeyType+0x60>
1c003d0c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003d10:	0298e084 	addi.w	$r4,$r4,1592(0x638)
1c003d14:	57dd67ff 	bl	-8860(0xfffdd64) # 1c001a78 <myprintf>
1c003d18:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003d1c:	0340218c 	andi	$r12,$r12,0x8
1c003d20:	40001180 	beqz	$r12,16(0x10) # 1c003d30 <Printf_KeyType+0x78>
1c003d24:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003d28:	0298b084 	addi.w	$r4,$r4,1580(0x62c)
1c003d2c:	57dd4fff 	bl	-8884(0xfffdd4c) # 1c001a78 <myprintf>
1c003d30:	03400000 	andi	$r0,$r0,0x0
1c003d34:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003d38:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003d3c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d40:	4c000020 	jirl	$r0,$r1,0

1c003d44 <Printf_KeyVal>:
Printf_KeyVal():
1c003d44:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003d48:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003d4c:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003d50:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003d54:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d58:	5000d800 	b	216(0xd8) # 1c003e30 <Printf_KeyVal+0xec>
1c003d5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d60:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d64:	00150184 	move	$r4,$r12
1c003d68:	57fe8bff 	bl	-376(0xffffe88) # 1c003bf0 <TOUCH_GetCountValue>
1c003d6c:	0015008c 	move	$r12,$r4
1c003d70:	0015018d 	move	$r13,$r12
1c003d74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d78:	0040898c 	slli.w	$r12,$r12,0x2
1c003d7c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003d80:	001031cc 	add.w	$r12,$r14,$r12
1c003d84:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003d88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d8c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d90:	00150184 	move	$r4,$r12
1c003d94:	57fe13ff 	bl	-496(0xffffe10) # 1c003ba4 <TOUCH_GetBaseVal>
1c003d98:	0015008c 	move	$r12,$r4
1c003d9c:	0015018d 	move	$r13,$r12
1c003da0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003da4:	0040898c 	slli.w	$r12,$r12,0x2
1c003da8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003dac:	001031cc 	add.w	$r12,$r14,$r12
1c003db0:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003db4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003db8:	0040898c 	slli.w	$r12,$r12,0x2
1c003dbc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003dc0:	001031ac 	add.w	$r12,$r13,$r12
1c003dc4:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003dc8:	40004980 	beqz	$r12,72(0x48) # 1c003e10 <Printf_KeyVal+0xcc>
1c003dcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dd0:	0040898c 	slli.w	$r12,$r12,0x2
1c003dd4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003dd8:	001031ac 	add.w	$r12,$r13,$r12
1c003ddc:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003de0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003de4:	0040898c 	slli.w	$r12,$r12,0x2
1c003de8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003dec:	001031cc 	add.w	$r12,$r14,$r12
1c003df0:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003df4:	001131ad 	sub.w	$r13,$r13,$r12
1c003df8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dfc:	0040898c 	slli.w	$r12,$r12,0x2
1c003e00:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003e04:	001031cc 	add.w	$r12,$r14,$r12
1c003e08:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003e0c:	50001800 	b	24(0x18) # 1c003e24 <Printf_KeyVal+0xe0>
1c003e10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e14:	0040898c 	slli.w	$r12,$r12,0x2
1c003e18:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e1c:	001031ac 	add.w	$r12,$r13,$r12
1c003e20:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003e24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003e30:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003e34:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003e38:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003d5c <Printf_KeyVal+0x18>
1c003e3c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003e40:	02948084 	addi.w	$r4,$r4,1312(0x520)
1c003e44:	57dc37ff 	bl	-9164(0xfffdc34) # 1c001a78 <myprintf>
1c003e48:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003e4c:	0294f084 	addi.w	$r4,$r4,1340(0x53c)
1c003e50:	57dc2bff 	bl	-9176(0xfffdc28) # 1c001a78 <myprintf>
1c003e54:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003e58:	50003400 	b	52(0x34) # 1c003e8c <Printf_KeyVal+0x148>
1c003e5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e60:	0040898c 	slli.w	$r12,$r12,0x2
1c003e64:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e68:	001031ac 	add.w	$r12,$r13,$r12
1c003e6c:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003e70:	00150185 	move	$r5,$r12
1c003e74:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003e78:	02946084 	addi.w	$r4,$r4,1304(0x518)
1c003e7c:	57dbffff 	bl	-9220(0xfffdbfc) # 1c001a78 <myprintf>
1c003e80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003e8c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003e90:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003e94:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003e5c <Printf_KeyVal+0x118>
1c003e98:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003e9c:	0293f084 	addi.w	$r4,$r4,1276(0x4fc)
1c003ea0:	57dbdbff 	bl	-9256(0xfffdbd8) # 1c001a78 <myprintf>
1c003ea4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003ea8:	50003400 	b	52(0x34) # 1c003edc <Printf_KeyVal+0x198>
1c003eac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003eb0:	0040898c 	slli.w	$r12,$r12,0x2
1c003eb4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003eb8:	001031ac 	add.w	$r12,$r13,$r12
1c003ebc:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003ec0:	00150185 	move	$r5,$r12
1c003ec4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003ec8:	02932084 	addi.w	$r4,$r4,1224(0x4c8)
1c003ecc:	57dbafff 	bl	-9300(0xfffdbac) # 1c001a78 <myprintf>
1c003ed0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ed4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ed8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003edc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ee0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003ee4:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003eac <Printf_KeyVal+0x168>
1c003ee8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003eec:	0292e084 	addi.w	$r4,$r4,1208(0x4b8)
1c003ef0:	57db8bff 	bl	-9336(0xfffdb88) # 1c001a78 <myprintf>
1c003ef4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003ef8:	50007400 	b	116(0x74) # 1c003f6c <Printf_KeyVal+0x228>
1c003efc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f00:	0040898c 	slli.w	$r12,$r12,0x2
1c003f04:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f08:	001031ac 	add.w	$r12,$r13,$r12
1c003f0c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003f10:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003f3c <Printf_KeyVal+0x1f8>
1c003f14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f18:	0040898c 	slli.w	$r12,$r12,0x2
1c003f1c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f20:	001031ac 	add.w	$r12,$r13,$r12
1c003f24:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003f28:	00150185 	move	$r5,$r12
1c003f2c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003f30:	02920084 	addi.w	$r4,$r4,1152(0x480)
1c003f34:	57db47ff 	bl	-9404(0xfffdb44) # 1c001a78 <myprintf>
1c003f38:	50002800 	b	40(0x28) # 1c003f60 <Printf_KeyVal+0x21c>
1c003f3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f40:	0040898c 	slli.w	$r12,$r12,0x2
1c003f44:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f48:	001031ac 	add.w	$r12,$r13,$r12
1c003f4c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003f50:	00150185 	move	$r5,$r12
1c003f54:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003f58:	02918084 	addi.w	$r4,$r4,1120(0x460)
1c003f5c:	57db1fff 	bl	-9444(0xfffdb1c) # 1c001a78 <myprintf>
1c003f60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f64:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003f68:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f6c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f70:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003f74:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003efc <Printf_KeyVal+0x1b8>
1c003f78:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003f7c:	028ee084 	addi.w	$r4,$r4,952(0x3b8)
1c003f80:	57dafbff 	bl	-9480(0xfffdaf8) # 1c001a78 <myprintf>
1c003f84:	03400000 	andi	$r0,$r0,0x0
1c003f88:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003f8c:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003f90:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003f94:	4c000020 	jirl	$r0,$r1,0

1c003f98 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003f98:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003f9c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003fa0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003fa4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003fa8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003fac:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003fb0:	2880018d 	ld.w	$r13,$r12,0
1c003fb4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003fb8:	0014b1ac 	and	$r12,$r13,$r12
1c003fbc:	40001180 	beqz	$r12,16(0x10) # 1c003fcc <TIM_GetITStatus+0x34>
1c003fc0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003fc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003fc8:	50000800 	b	8(0x8) # 1c003fd0 <TIM_GetITStatus+0x38>
1c003fcc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003fd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fd4:	00150184 	move	$r4,$r12
1c003fd8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003fdc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003fe0:	4c000020 	jirl	$r0,$r1,0

1c003fe4 <TIM_ClearIT>:
TIM_ClearIT():
1c003fe4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003fe8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003fec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ff0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003ff4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ff8:	2880018e 	ld.w	$r14,$r12,0
1c003ffc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004000:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004004:	001535cd 	or	$r13,$r14,$r13
1c004008:	2980018d 	st.w	$r13,$r12,0
1c00400c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004010:	03800d8c 	ori	$r12,$r12,0x3
1c004014:	2a00018c 	ld.bu	$r12,$r12,0
1c004018:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00401c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004020:	03800d8c 	ori	$r12,$r12,0x3
1c004024:	038005ad 	ori	$r13,$r13,0x1
1c004028:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00402c:	2900018d 	st.b	$r13,$r12,0
1c004030:	03400000 	andi	$r0,$r0,0x0
1c004034:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004038:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00403c:	4c000020 	jirl	$r0,$r1,0

1c004040 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c004040:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004044:	29803061 	st.w	$r1,$r3,12(0xc)
1c004048:	29802076 	st.w	$r22,$r3,8(0x8)
1c00404c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004050:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004054:	029380c6 	addi.w	$r6,$r6,1248(0x4e0)
1c004058:	02804c05 	addi.w	$r5,$r0,19(0x13)
1c00405c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004060:	028d8084 	addi.w	$r4,$r4,864(0x360)
1c004064:	57da17ff 	bl	-9708(0xfffda14) # 1c001a78 <myprintf>
1c004068:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00406c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004070:	03808184 	ori	$r4,$r12,0x20
1c004074:	57ee93ff 	bl	-4464(0xfffee90) # 1c002f04 <EXTI_ClearITPendingBit>
1c004078:	03400000 	andi	$r0,$r0,0x0
1c00407c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004080:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004084:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004088:	4c000020 	jirl	$r0,$r1,0

1c00408c <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c00408c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004090:	29803061 	st.w	$r1,$r3,12(0xc)
1c004094:	29802076 	st.w	$r22,$r3,8(0x8)
1c004098:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00409c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0040a0:	0292b0c6 	addi.w	$r6,$r6,1196(0x4ac)
1c0040a4:	02806005 	addi.w	$r5,$r0,24(0x18)
1c0040a8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0040ac:	028c5084 	addi.w	$r4,$r4,788(0x314)
1c0040b0:	57d9cbff 	bl	-9784(0xfffd9c8) # 1c001a78 <myprintf>
1c0040b4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0040b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040bc:	03808184 	ori	$r4,$r12,0x20
1c0040c0:	57ee47ff 	bl	-4540(0xfffee44) # 1c002f04 <EXTI_ClearITPendingBit>
1c0040c4:	03400000 	andi	$r0,$r0,0x0
1c0040c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040d4:	4c000020 	jirl	$r0,$r1,0

1c0040d8 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c0040d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040e8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0040ec:	0291e0c6 	addi.w	$r6,$r6,1144(0x478)
1c0040f0:	02807405 	addi.w	$r5,$r0,29(0x1d)
1c0040f4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0040f8:	028b2084 	addi.w	$r4,$r4,712(0x2c8)
1c0040fc:	57d97fff 	bl	-9860(0xfffd97c) # 1c001a78 <myprintf>
1c004100:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004104:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004108:	03808184 	ori	$r4,$r12,0x20
1c00410c:	57edfbff 	bl	-4616(0xfffedf8) # 1c002f04 <EXTI_ClearITPendingBit>
1c004110:	03400000 	andi	$r0,$r0,0x0
1c004114:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004118:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00411c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004120:	4c000020 	jirl	$r0,$r1,0

1c004124 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c004124:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004128:	29803061 	st.w	$r1,$r3,12(0xc)
1c00412c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004130:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004134:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004138:	029110c6 	addi.w	$r6,$r6,1092(0x444)
1c00413c:	02808805 	addi.w	$r5,$r0,34(0x22)
1c004140:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004144:	0289f084 	addi.w	$r4,$r4,636(0x27c)
1c004148:	57d933ff 	bl	-9936(0xfffd930) # 1c001a78 <myprintf>
1c00414c:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004150:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004154:	03808184 	ori	$r4,$r12,0x20
1c004158:	57edafff 	bl	-4692(0xfffedac) # 1c002f04 <EXTI_ClearITPendingBit>
1c00415c:	03400000 	andi	$r0,$r0,0x0
1c004160:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004164:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004168:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00416c:	4c000020 	jirl	$r0,$r1,0

1c004170 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c004170:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004174:	29803061 	st.w	$r1,$r3,12(0xc)
1c004178:	29802076 	st.w	$r22,$r3,8(0x8)
1c00417c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004180:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004184:	029040c6 	addi.w	$r6,$r6,1040(0x410)
1c004188:	02809c05 	addi.w	$r5,$r0,39(0x27)
1c00418c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004190:	0288c084 	addi.w	$r4,$r4,560(0x230)
1c004194:	57d8e7ff 	bl	-10012(0xfffd8e4) # 1c001a78 <myprintf>
1c004198:	02804005 	addi.w	$r5,$r0,16(0x10)
1c00419c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041a0:	03808184 	ori	$r4,$r12,0x20
1c0041a4:	57ed63ff 	bl	-4768(0xfffed60) # 1c002f04 <EXTI_ClearITPendingBit>
1c0041a8:	03400000 	andi	$r0,$r0,0x0
1c0041ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041b8:	4c000020 	jirl	$r0,$r1,0

1c0041bc <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0041bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041cc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0041d0:	028f70c6 	addi.w	$r6,$r6,988(0x3dc)
1c0041d4:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c0041d8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0041dc:	02879084 	addi.w	$r4,$r4,484(0x1e4)
1c0041e0:	57d89bff 	bl	-10088(0xfffd898) # 1c001a78 <myprintf>
1c0041e4:	02808005 	addi.w	$r5,$r0,32(0x20)
1c0041e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041ec:	03808184 	ori	$r4,$r12,0x20
1c0041f0:	57ed17ff 	bl	-4844(0xfffed14) # 1c002f04 <EXTI_ClearITPendingBit>
1c0041f4:	03400000 	andi	$r0,$r0,0x0
1c0041f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004200:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004204:	4c000020 	jirl	$r0,$r1,0

1c004208 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004208:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00420c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004210:	29802076 	st.w	$r22,$r3,8(0x8)
1c004214:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004218:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00421c:	028ea0c6 	addi.w	$r6,$r6,936(0x3a8)
1c004220:	0280c405 	addi.w	$r5,$r0,49(0x31)
1c004224:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004228:	02866084 	addi.w	$r4,$r4,408(0x198)
1c00422c:	57d84fff 	bl	-10164(0xfffd84c) # 1c001a78 <myprintf>
1c004230:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004234:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004238:	03808184 	ori	$r4,$r12,0x20
1c00423c:	57eccbff 	bl	-4920(0xfffecc8) # 1c002f04 <EXTI_ClearITPendingBit>
1c004240:	03400000 	andi	$r0,$r0,0x0
1c004244:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004248:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00424c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004250:	4c000020 	jirl	$r0,$r1,0

1c004254 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c004254:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004258:	29803061 	st.w	$r1,$r3,12(0xc)
1c00425c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004260:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004264:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004268:	028dd0c6 	addi.w	$r6,$r6,884(0x374)
1c00426c:	0280d805 	addi.w	$r5,$r0,54(0x36)
1c004270:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004274:	02853084 	addi.w	$r4,$r4,332(0x14c)
1c004278:	57d803ff 	bl	-10240(0xfffd800) # 1c001a78 <myprintf>
1c00427c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c004280:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004284:	03808184 	ori	$r4,$r12,0x20
1c004288:	57ec7fff 	bl	-4996(0xfffec7c) # 1c002f04 <EXTI_ClearITPendingBit>
1c00428c:	03400000 	andi	$r0,$r0,0x0
1c004290:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004294:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004298:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00429c:	4c000020 	jirl	$r0,$r1,0

1c0042a0 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0042a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042b0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0042b4:	028d00c6 	addi.w	$r6,$r6,832(0x340)
1c0042b8:	0280ec05 	addi.w	$r5,$r0,59(0x3b)
1c0042bc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0042c0:	02840084 	addi.w	$r4,$r4,256(0x100)
1c0042c4:	57d7b7ff 	bl	-10316(0xfffd7b4) # 1c001a78 <myprintf>
1c0042c8:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0042cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042d0:	03808184 	ori	$r4,$r12,0x20
1c0042d4:	57ec33ff 	bl	-5072(0xfffec30) # 1c002f04 <EXTI_ClearITPendingBit>
1c0042d8:	03400000 	andi	$r0,$r0,0x0
1c0042dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042e8:	4c000020 	jirl	$r0,$r1,0

1c0042ec <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c0042ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042fc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004300:	028c30c6 	addi.w	$r6,$r6,780(0x30c)
1c004304:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004308:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00430c:	0282d084 	addi.w	$r4,$r4,180(0xb4)
1c004310:	57d76bff 	bl	-10392(0xfffd768) # 1c001a78 <myprintf>
1c004314:	02880005 	addi.w	$r5,$r0,512(0x200)
1c004318:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00431c:	03808184 	ori	$r4,$r12,0x20
1c004320:	57ebe7ff 	bl	-5148(0xfffebe4) # 1c002f04 <EXTI_ClearITPendingBit>
1c004324:	03400000 	andi	$r0,$r0,0x0
1c004328:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00432c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004330:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004334:	4c000020 	jirl	$r0,$r1,0

1c004338 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c004338:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00433c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004340:	29802076 	st.w	$r22,$r3,8(0x8)
1c004344:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004348:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00434c:	028b60c6 	addi.w	$r6,$r6,728(0x2d8)
1c004350:	02811405 	addi.w	$r5,$r0,69(0x45)
1c004354:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004358:	0281a084 	addi.w	$r4,$r4,104(0x68)
1c00435c:	57d71fff 	bl	-10468(0xfffd71c) # 1c001a78 <myprintf>
1c004360:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c004364:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004368:	03808184 	ori	$r4,$r12,0x20
1c00436c:	57eb9bff 	bl	-5224(0xfffeb98) # 1c002f04 <EXTI_ClearITPendingBit>
1c004370:	03400000 	andi	$r0,$r0,0x0
1c004374:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004378:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00437c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004380:	4c000020 	jirl	$r0,$r1,0

1c004384 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c004384:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004388:	29803061 	st.w	$r1,$r3,12(0xc)
1c00438c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004390:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004394:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004398:	028a90c6 	addi.w	$r6,$r6,676(0x2a4)
1c00439c:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c0043a0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0043a4:	02807084 	addi.w	$r4,$r4,28(0x1c)
1c0043a8:	57d6d3ff 	bl	-10544(0xfffd6d0) # 1c001a78 <myprintf>
1c0043ac:	03a00005 	ori	$r5,$r0,0x800
1c0043b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043b4:	03808184 	ori	$r4,$r12,0x20
1c0043b8:	57eb4fff 	bl	-5300(0xfffeb4c) # 1c002f04 <EXTI_ClearITPendingBit>
1c0043bc:	03400000 	andi	$r0,$r0,0x0
1c0043c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043cc:	4c000020 	jirl	$r0,$r1,0

1c0043d0 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c0043d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043e0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0043e4:	0289c0c6 	addi.w	$r6,$r6,624(0x270)
1c0043e8:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c0043ec:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0043f0:	02bf4084 	addi.w	$r4,$r4,-48(0xfd0)
1c0043f4:	57d687ff 	bl	-10620(0xfffd684) # 1c001a78 <myprintf>
1c0043f8:	14000025 	lu12i.w	$r5,1(0x1)
1c0043fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004400:	03808184 	ori	$r4,$r12,0x20
1c004404:	57eb03ff 	bl	-5376(0xfffeb00) # 1c002f04 <EXTI_ClearITPendingBit>
1c004408:	03400000 	andi	$r0,$r0,0x0
1c00440c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004410:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004414:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004418:	4c000020 	jirl	$r0,$r1,0

1c00441c <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c00441c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004420:	29803061 	st.w	$r1,$r3,12(0xc)
1c004424:	29802076 	st.w	$r22,$r3,8(0x8)
1c004428:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00442c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004430:	0288f0c6 	addi.w	$r6,$r6,572(0x23c)
1c004434:	02815005 	addi.w	$r5,$r0,84(0x54)
1c004438:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00443c:	02be1084 	addi.w	$r4,$r4,-124(0xf84)
1c004440:	57d63bff 	bl	-10696(0xfffd638) # 1c001a78 <myprintf>
1c004444:	14000045 	lu12i.w	$r5,2(0x2)
1c004448:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00444c:	03808184 	ori	$r4,$r12,0x20
1c004450:	57eab7ff 	bl	-5452(0xfffeab4) # 1c002f04 <EXTI_ClearITPendingBit>
1c004454:	03400000 	andi	$r0,$r0,0x0
1c004458:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00445c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004460:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004464:	4c000020 	jirl	$r0,$r1,0

1c004468 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c004468:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00446c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004470:	29802076 	st.w	$r22,$r3,8(0x8)
1c004474:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004478:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00447c:	028820c6 	addi.w	$r6,$r6,520(0x208)
1c004480:	02816405 	addi.w	$r5,$r0,89(0x59)
1c004484:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004488:	02bce084 	addi.w	$r4,$r4,-200(0xf38)
1c00448c:	57d5efff 	bl	-10772(0xfffd5ec) # 1c001a78 <myprintf>
1c004490:	14000085 	lu12i.w	$r5,4(0x4)
1c004494:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004498:	03808184 	ori	$r4,$r12,0x20
1c00449c:	57ea6bff 	bl	-5528(0xfffea68) # 1c002f04 <EXTI_ClearITPendingBit>
1c0044a0:	03400000 	andi	$r0,$r0,0x0
1c0044a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044b0:	4c000020 	jirl	$r0,$r1,0

1c0044b4 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0044b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044c4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0044c8:	028750c6 	addi.w	$r6,$r6,468(0x1d4)
1c0044cc:	02817805 	addi.w	$r5,$r0,94(0x5e)
1c0044d0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0044d4:	02bbb084 	addi.w	$r4,$r4,-276(0xeec)
1c0044d8:	57d5a3ff 	bl	-10848(0xfffd5a0) # 1c001a78 <myprintf>
1c0044dc:	14000105 	lu12i.w	$r5,8(0x8)
1c0044e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044e4:	03808184 	ori	$r4,$r12,0x20
1c0044e8:	57ea1fff 	bl	-5604(0xfffea1c) # 1c002f04 <EXTI_ClearITPendingBit>
1c0044ec:	03400000 	andi	$r0,$r0,0x0
1c0044f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044fc:	4c000020 	jirl	$r0,$r1,0

1c004500 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004500:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004504:	29803061 	st.w	$r1,$r3,12(0xc)
1c004508:	29802076 	st.w	$r22,$r3,8(0x8)
1c00450c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004510:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004514:	028680c6 	addi.w	$r6,$r6,416(0x1a0)
1c004518:	02819005 	addi.w	$r5,$r0,100(0x64)
1c00451c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004520:	02ba8084 	addi.w	$r4,$r4,-352(0xea0)
1c004524:	57d557ff 	bl	-10924(0xfffd554) # 1c001a78 <myprintf>
1c004528:	14000205 	lu12i.w	$r5,16(0x10)
1c00452c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004530:	03808184 	ori	$r4,$r12,0x20
1c004534:	57e9d3ff 	bl	-5680(0xfffe9d0) # 1c002f04 <EXTI_ClearITPendingBit>
1c004538:	03400000 	andi	$r0,$r0,0x0
1c00453c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004540:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004544:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004548:	4c000020 	jirl	$r0,$r1,0

1c00454c <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c00454c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004550:	29803061 	st.w	$r1,$r3,12(0xc)
1c004554:	29802076 	st.w	$r22,$r3,8(0x8)
1c004558:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00455c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004560:	0285b0c6 	addi.w	$r6,$r6,364(0x16c)
1c004564:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c004568:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00456c:	02b95084 	addi.w	$r4,$r4,-428(0xe54)
1c004570:	57d50bff 	bl	-11000(0xfffd508) # 1c001a78 <myprintf>
1c004574:	14000405 	lu12i.w	$r5,32(0x20)
1c004578:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00457c:	03808184 	ori	$r4,$r12,0x20
1c004580:	57e987ff 	bl	-5756(0xfffe984) # 1c002f04 <EXTI_ClearITPendingBit>
1c004584:	03400000 	andi	$r0,$r0,0x0
1c004588:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00458c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004590:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004594:	4c000020 	jirl	$r0,$r1,0

1c004598 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c004598:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00459c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045a8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0045ac:	0284e0c6 	addi.w	$r6,$r6,312(0x138)
1c0045b0:	0281b805 	addi.w	$r5,$r0,110(0x6e)
1c0045b4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0045b8:	02b82084 	addi.w	$r4,$r4,-504(0xe08)
1c0045bc:	57d4bfff 	bl	-11076(0xfffd4bc) # 1c001a78 <myprintf>
1c0045c0:	14000805 	lu12i.w	$r5,64(0x40)
1c0045c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045c8:	03808184 	ori	$r4,$r12,0x20
1c0045cc:	57e93bff 	bl	-5832(0xfffe938) # 1c002f04 <EXTI_ClearITPendingBit>
1c0045d0:	03400000 	andi	$r0,$r0,0x0
1c0045d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045e0:	4c000020 	jirl	$r0,$r1,0

1c0045e4 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c0045e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045f4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0045f8:	028410c6 	addi.w	$r6,$r6,260(0x104)
1c0045fc:	0281cc05 	addi.w	$r5,$r0,115(0x73)
1c004600:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004604:	02b6f084 	addi.w	$r4,$r4,-580(0xdbc)
1c004608:	57d473ff 	bl	-11152(0xfffd470) # 1c001a78 <myprintf>
1c00460c:	14001005 	lu12i.w	$r5,128(0x80)
1c004610:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004614:	03808184 	ori	$r4,$r12,0x20
1c004618:	57e8efff 	bl	-5908(0xfffe8ec) # 1c002f04 <EXTI_ClearITPendingBit>
1c00461c:	03400000 	andi	$r0,$r0,0x0
1c004620:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004624:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004628:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00462c:	4c000020 	jirl	$r0,$r1,0

1c004630 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c004630:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004634:	29803061 	st.w	$r1,$r3,12(0xc)
1c004638:	29802076 	st.w	$r22,$r3,8(0x8)
1c00463c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004640:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004644:	028340c6 	addi.w	$r6,$r6,208(0xd0)
1c004648:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c00464c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004650:	02b5c084 	addi.w	$r4,$r4,-656(0xd70)
1c004654:	57d427ff 	bl	-11228(0xfffd424) # 1c001a78 <myprintf>
1c004658:	14002005 	lu12i.w	$r5,256(0x100)
1c00465c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004660:	03808184 	ori	$r4,$r12,0x20
1c004664:	57e8a3ff 	bl	-5984(0xfffe8a0) # 1c002f04 <EXTI_ClearITPendingBit>
1c004668:	03400000 	andi	$r0,$r0,0x0
1c00466c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004670:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004674:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004678:	4c000020 	jirl	$r0,$r1,0

1c00467c <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c00467c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004680:	29803061 	st.w	$r1,$r3,12(0xc)
1c004684:	29802076 	st.w	$r22,$r3,8(0x8)
1c004688:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00468c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004690:	028270c6 	addi.w	$r6,$r6,156(0x9c)
1c004694:	0281f405 	addi.w	$r5,$r0,125(0x7d)
1c004698:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00469c:	02b49084 	addi.w	$r4,$r4,-732(0xd24)
1c0046a0:	57d3dbff 	bl	-11304(0xfffd3d8) # 1c001a78 <myprintf>
1c0046a4:	14004005 	lu12i.w	$r5,512(0x200)
1c0046a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046ac:	03808184 	ori	$r4,$r12,0x20
1c0046b0:	57e857ff 	bl	-6060(0xfffe854) # 1c002f04 <EXTI_ClearITPendingBit>
1c0046b4:	03400000 	andi	$r0,$r0,0x0
1c0046b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046c4:	4c000020 	jirl	$r0,$r1,0

1c0046c8 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0046c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046d8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0046dc:	0281a0c6 	addi.w	$r6,$r6,104(0x68)
1c0046e0:	02820805 	addi.w	$r5,$r0,130(0x82)
1c0046e4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0046e8:	02b36084 	addi.w	$r4,$r4,-808(0xcd8)
1c0046ec:	57d38fff 	bl	-11380(0xfffd38c) # 1c001a78 <myprintf>
1c0046f0:	14008005 	lu12i.w	$r5,1024(0x400)
1c0046f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046f8:	03808184 	ori	$r4,$r12,0x20
1c0046fc:	57e80bff 	bl	-6136(0xfffe808) # 1c002f04 <EXTI_ClearITPendingBit>
1c004700:	03400000 	andi	$r0,$r0,0x0
1c004704:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004708:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00470c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004710:	4c000020 	jirl	$r0,$r1,0

1c004714 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004714:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004718:	29803061 	st.w	$r1,$r3,12(0xc)
1c00471c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004720:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004724:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004728:	0280d0c6 	addi.w	$r6,$r6,52(0x34)
1c00472c:	02821c05 	addi.w	$r5,$r0,135(0x87)
1c004730:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004734:	02b23084 	addi.w	$r4,$r4,-884(0xc8c)
1c004738:	57d343ff 	bl	-11456(0xfffd340) # 1c001a78 <myprintf>
1c00473c:	14010005 	lu12i.w	$r5,2048(0x800)
1c004740:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004744:	03808184 	ori	$r4,$r12,0x20
1c004748:	57e7bfff 	bl	-6212(0xfffe7bc) # 1c002f04 <EXTI_ClearITPendingBit>
1c00474c:	03400000 	andi	$r0,$r0,0x0
1c004750:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004754:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004758:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00475c:	4c000020 	jirl	$r0,$r1,0

1c004760 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c004760:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004764:	29803061 	st.w	$r1,$r3,12(0xc)
1c004768:	29802076 	st.w	$r22,$r3,8(0x8)
1c00476c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004770:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004774:	028000c6 	addi.w	$r6,$r6,0
1c004778:	02823005 	addi.w	$r5,$r0,140(0x8c)
1c00477c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004780:	02b10084 	addi.w	$r4,$r4,-960(0xc40)
1c004784:	57d2f7ff 	bl	-11532(0xfffd2f4) # 1c001a78 <myprintf>
1c004788:	14020005 	lu12i.w	$r5,4096(0x1000)
1c00478c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004790:	03808184 	ori	$r4,$r12,0x20
1c004794:	57e773ff 	bl	-6288(0xfffe770) # 1c002f04 <EXTI_ClearITPendingBit>
1c004798:	03400000 	andi	$r0,$r0,0x0
1c00479c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047a8:	4c000020 	jirl	$r0,$r1,0

1c0047ac <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0047ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047bc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0047c0:	02bf30c6 	addi.w	$r6,$r6,-52(0xfcc)
1c0047c4:	02824405 	addi.w	$r5,$r0,145(0x91)
1c0047c8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0047cc:	02afd084 	addi.w	$r4,$r4,-1036(0xbf4)
1c0047d0:	57d2abff 	bl	-11608(0xfffd2a8) # 1c001a78 <myprintf>
1c0047d4:	14040005 	lu12i.w	$r5,8192(0x2000)
1c0047d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047dc:	03808184 	ori	$r4,$r12,0x20
1c0047e0:	57e727ff 	bl	-6364(0xfffe724) # 1c002f04 <EXTI_ClearITPendingBit>
1c0047e4:	03400000 	andi	$r0,$r0,0x0
1c0047e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047f4:	4c000020 	jirl	$r0,$r1,0

1c0047f8 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c0047f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004800:	29802076 	st.w	$r22,$r3,8(0x8)
1c004804:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004808:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00480c:	02be60c6 	addi.w	$r6,$r6,-104(0xf98)
1c004810:	02825805 	addi.w	$r5,$r0,150(0x96)
1c004814:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004818:	02aea084 	addi.w	$r4,$r4,-1112(0xba8)
1c00481c:	57d25fff 	bl	-11684(0xfffd25c) # 1c001a78 <myprintf>
1c004820:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004824:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004828:	03808184 	ori	$r4,$r12,0x20
1c00482c:	57e6dbff 	bl	-6440(0xfffe6d8) # 1c002f04 <EXTI_ClearITPendingBit>
1c004830:	03400000 	andi	$r0,$r0,0x0
1c004834:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004838:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00483c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004840:	4c000020 	jirl	$r0,$r1,0

1c004844 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004844:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004848:	29803061 	st.w	$r1,$r3,12(0xc)
1c00484c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004850:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004854:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004858:	02bd90c6 	addi.w	$r6,$r6,-156(0xf64)
1c00485c:	02826c05 	addi.w	$r5,$r0,155(0x9b)
1c004860:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004864:	02ad7084 	addi.w	$r4,$r4,-1188(0xb5c)
1c004868:	57d213ff 	bl	-11760(0xfffd210) # 1c001a78 <myprintf>
1c00486c:	14100005 	lu12i.w	$r5,32768(0x8000)
1c004870:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004874:	03808184 	ori	$r4,$r12,0x20
1c004878:	57e68fff 	bl	-6516(0xfffe68c) # 1c002f04 <EXTI_ClearITPendingBit>
1c00487c:	03400000 	andi	$r0,$r0,0x0
1c004880:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004884:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004888:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00488c:	4c000020 	jirl	$r0,$r1,0

1c004890 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c004890:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004894:	29803061 	st.w	$r1,$r3,12(0xc)
1c004898:	29802076 	st.w	$r22,$r3,8(0x8)
1c00489c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048a0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0048a4:	02bcc0c6 	addi.w	$r6,$r6,-208(0xf30)
1c0048a8:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c0048ac:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0048b0:	02ac4084 	addi.w	$r4,$r4,-1264(0xb10)
1c0048b4:	57d1c7ff 	bl	-11836(0xfffd1c4) # 1c001a78 <myprintf>
1c0048b8:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0048bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048c0:	03808184 	ori	$r4,$r12,0x20
1c0048c4:	57e643ff 	bl	-6592(0xfffe640) # 1c002f04 <EXTI_ClearITPendingBit>
1c0048c8:	03400000 	andi	$r0,$r0,0x0
1c0048cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048d8:	4c000020 	jirl	$r0,$r1,0

1c0048dc <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c0048dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048ec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0048f0:	02bbf0c6 	addi.w	$r6,$r6,-260(0xefc)
1c0048f4:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c0048f8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0048fc:	02ab1084 	addi.w	$r4,$r4,-1340(0xac4)
1c004900:	57d17bff 	bl	-11912(0xfffd178) # 1c001a78 <myprintf>
1c004904:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004908:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00490c:	03808184 	ori	$r4,$r12,0x20
1c004910:	57e5f7ff 	bl	-6668(0xfffe5f4) # 1c002f04 <EXTI_ClearITPendingBit>
1c004914:	03400000 	andi	$r0,$r0,0x0
1c004918:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00491c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004920:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004924:	4c000020 	jirl	$r0,$r1,0

1c004928 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004928:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00492c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004930:	29802076 	st.w	$r22,$r3,8(0x8)
1c004934:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004938:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00493c:	02bb20c6 	addi.w	$r6,$r6,-312(0xec8)
1c004940:	0282ac05 	addi.w	$r5,$r0,171(0xab)
1c004944:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004948:	02a9e084 	addi.w	$r4,$r4,-1416(0xa78)
1c00494c:	57d12fff 	bl	-11988(0xfffd12c) # 1c001a78 <myprintf>
1c004950:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004954:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004958:	03808184 	ori	$r4,$r12,0x20
1c00495c:	57e5abff 	bl	-6744(0xfffe5a8) # 1c002f04 <EXTI_ClearITPendingBit>
1c004960:	03400000 	andi	$r0,$r0,0x0
1c004964:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004968:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00496c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004970:	4c000020 	jirl	$r0,$r1,0

1c004974 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004974:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004978:	29803061 	st.w	$r1,$r3,12(0xc)
1c00497c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004980:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004984:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004988:	02ba50c6 	addi.w	$r6,$r6,-364(0xe94)
1c00498c:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c004990:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004994:	02a8b084 	addi.w	$r4,$r4,-1492(0xa2c)
1c004998:	57d0e3ff 	bl	-12064(0xfffd0e0) # 1c001a78 <myprintf>
1c00499c:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0049a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049a4:	03808184 	ori	$r4,$r12,0x20
1c0049a8:	57e55fff 	bl	-6820(0xfffe55c) # 1c002f04 <EXTI_ClearITPendingBit>
1c0049ac:	03400000 	andi	$r0,$r0,0x0
1c0049b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049bc:	4c000020 	jirl	$r0,$r1,0

1c0049c0 <ext_handler>:
ext_handler():
1c0049c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0049c4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0049c8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0049cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0049d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049d4:	0380f18c 	ori	$r12,$r12,0x3c
1c0049d8:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c0049dc:	2980018d 	st.w	$r13,$r12,0
1c0049e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049e4:	0380818c 	ori	$r12,$r12,0x20
1c0049e8:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0049ec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0049f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049f4:	0380818c 	ori	$r12,$r12,0x20
1c0049f8:	2880018c 	ld.w	$r12,$r12,0
1c0049fc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004a00:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004a04:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004a08:	0014b1ac 	and	$r12,$r13,$r12
1c004a0c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004a10:	03400000 	andi	$r0,$r0,0x0
1c004a14:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004a18:	50004000 	b	64(0x40) # 1c004a58 <ext_handler+0x98>
1c004a1c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004a20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a24:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004a28:	0340058c 	andi	$r12,$r12,0x1
1c004a2c:	40002180 	beqz	$r12,32(0x20) # 1c004a4c <ext_handler+0x8c>
1c004a30:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004a34:	02a8f1ad 	addi.w	$r13,$r13,-1476(0xa3c)
1c004a38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a3c:	0040898c 	slli.w	$r12,$r12,0x2
1c004a40:	001031ac 	add.w	$r12,$r13,$r12
1c004a44:	2880018c 	ld.w	$r12,$r12,0
1c004a48:	4c000181 	jirl	$r1,$r12,0
1c004a4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004a54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a58:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004a5c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004a60:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004a1c <ext_handler+0x5c>
1c004a64:	03400000 	andi	$r0,$r0,0x0
1c004a68:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a6c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004a70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a74:	4c000020 	jirl	$r0,$r1,0

1c004a78 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004a78:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a7c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a80:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a84:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a8c:	0380f18c 	ori	$r12,$r12,0x3c
1c004a90:	1400020d 	lu12i.w	$r13,16(0x10)
1c004a94:	2980018d 	st.w	$r13,$r12,0
1c004a98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a9c:	0380118c 	ori	$r12,$r12,0x4
1c004aa0:	2880018c 	ld.w	$r12,$r12,0
1c004aa4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004aa8:	57e5afff 	bl	-6740(0xfffe5ac) # 1c003054 <WDG_DogFeed>
1c004aac:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004ab0:	57e05bff 	bl	-8104(0xfffe058) # 1c002b08 <Wake_Set>
1c004ab4:	03400000 	andi	$r0,$r0,0x0
1c004ab8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004abc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004ac0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ac4:	4c000020 	jirl	$r0,$r1,0

1c004ac8 <TOUCH>:
TOUCH():
1c004ac8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004acc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004ad0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004ad4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ad8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004adc:	0380118c 	ori	$r12,$r12,0x4
1c004ae0:	2880018c 	ld.w	$r12,$r12,0
1c004ae4:	0044c18c 	srli.w	$r12,$r12,0x10
1c004ae8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004aec:	037ffd8c 	andi	$r12,$r12,0xfff
1c004af0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004af4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004af8:	0380118c 	ori	$r12,$r12,0x4
1c004afc:	2880018c 	ld.w	$r12,$r12,0
1c004b00:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004b04:	03403d8c 	andi	$r12,$r12,0xf
1c004b08:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004b0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b10:	0380f18c 	ori	$r12,$r12,0x3c
1c004b14:	1400040d 	lu12i.w	$r13,32(0x20)
1c004b18:	2980018d 	st.w	$r13,$r12,0
1c004b1c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004b20:	0380118c 	ori	$r12,$r12,0x4
1c004b24:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004b28:	2980018d 	st.w	$r13,$r12,0
1c004b2c:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004b30:	00150184 	move	$r4,$r12
1c004b34:	57f187ff 	bl	-3708(0xffff184) # 1c003cb8 <Printf_KeyType>
1c004b38:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004b3c:	00150184 	move	$r4,$r12
1c004b40:	57f0ffff 	bl	-3844(0xffff0fc) # 1c003c3c <Printf_KeyChannel>
1c004b44:	57f203ff 	bl	-3584(0xffff200) # 1c003d44 <Printf_KeyVal>
1c004b48:	03400000 	andi	$r0,$r0,0x0
1c004b4c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004b50:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004b54:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b58:	4c000020 	jirl	$r0,$r1,0

1c004b5c <UART2_INT>:
UART2_INT():
1c004b5c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b60:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004b64:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b6c:	0380f18c 	ori	$r12,$r12,0x3c
1c004b70:	1400080d 	lu12i.w	$r13,64(0x40)
1c004b74:	2980018d 	st.w	$r13,$r12,0
1c004b78:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004b7c:	0380098c 	ori	$r12,$r12,0x2
1c004b80:	2a00018c 	ld.bu	$r12,$r12,0
1c004b84:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004b88:	03400000 	andi	$r0,$r0,0x0
1c004b8c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004b90:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b94:	4c000020 	jirl	$r0,$r1,0

1c004b98 <BAT_FAIL>:
BAT_FAIL():
1c004b98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b9c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004ba0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004ba4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ba8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bac:	0380118c 	ori	$r12,$r12,0x4
1c004bb0:	2880018c 	ld.w	$r12,$r12,0
1c004bb4:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004bb8:	03407d8c 	andi	$r12,$r12,0x1f
1c004bbc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004bc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bc4:	0380118c 	ori	$r12,$r12,0x4
1c004bc8:	2880018e 	ld.w	$r14,$r12,0
1c004bcc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bd0:	0380f18c 	ori	$r12,$r12,0x3c
1c004bd4:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004bd8:	0014b5cd 	and	$r13,$r14,$r13
1c004bdc:	2980018d 	st.w	$r13,$r12,0
1c004be0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004be4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004be8:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004c58 <BAT_FAIL+0xc0>
1c004bec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004bf0:	0040898d 	slli.w	$r13,$r12,0x2
1c004bf4:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c004bf8:	02a3e18c 	addi.w	$r12,$r12,-1800(0x8f8)
1c004bfc:	001031ac 	add.w	$r12,$r13,$r12
1c004c00:	2880018c 	ld.w	$r12,$r12,0
1c004c04:	4c000180 	jirl	$r0,$r12,0
1c004c08:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004c0c:	029fe084 	addi.w	$r4,$r4,2040(0x7f8)
1c004c10:	57ce6bff 	bl	-12696(0xfffce68) # 1c001a78 <myprintf>
1c004c14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c18:	0380118c 	ori	$r12,$r12,0x4
1c004c1c:	29800180 	st.w	$r0,$r12,0
1c004c20:	50003c00 	b	60(0x3c) # 1c004c5c <BAT_FAIL+0xc4>
1c004c24:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004c28:	02a01084 	addi.w	$r4,$r4,-2044(0x804)
1c004c2c:	57ce4fff 	bl	-12724(0xfffce4c) # 1c001a78 <myprintf>
1c004c30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c34:	0380118c 	ori	$r12,$r12,0x4
1c004c38:	2880018e 	ld.w	$r14,$r12,0
1c004c3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c40:	0380118c 	ori	$r12,$r12,0x4
1c004c44:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004c48:	03bffdad 	ori	$r13,$r13,0xfff
1c004c4c:	0014b5cd 	and	$r13,$r14,$r13
1c004c50:	2980018d 	st.w	$r13,$r12,0
1c004c54:	50000800 	b	8(0x8) # 1c004c5c <BAT_FAIL+0xc4>
1c004c58:	03400000 	andi	$r0,$r0,0x0
1c004c5c:	03400000 	andi	$r0,$r0,0x0
1c004c60:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004c64:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004c68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c6c:	4c000020 	jirl	$r0,$r1,0

1c004c70 <intc_handler>:
intc_handler():
1c004c70:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c74:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004c78:	29806076 	st.w	$r22,$r3,24(0x18)
1c004c7c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c80:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004c84:	0380158c 	ori	$r12,$r12,0x5
1c004c88:	2a00018c 	ld.bu	$r12,$r12,0
1c004c8c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004c90:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004c94:	0340058c 	andi	$r12,$r12,0x1
1c004c98:	40001d80 	beqz	$r12,28(0x1c) # 1c004cb4 <intc_handler+0x44>
1c004c9c:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004ca0:	57f2fbff 	bl	-3336(0xffff2f8) # 1c003f98 <TIM_GetITStatus>
1c004ca4:	0015008c 	move	$r12,$r4
1c004ca8:	40000d80 	beqz	$r12,12(0xc) # 1c004cb4 <intc_handler+0x44>
1c004cac:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004cb0:	57f337ff 	bl	-3276(0xffff334) # 1c003fe4 <TIM_ClearIT>
1c004cb4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004cb8:	0340118c 	andi	$r12,$r12,0x4
1c004cbc:	40001580 	beqz	$r12,20(0x14) # 1c004cd0 <intc_handler+0x60>
1c004cc0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004cc4:	03800d8c 	ori	$r12,$r12,0x3
1c004cc8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004ccc:	2900018d 	st.b	$r13,$r12,0
1c004cd0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004cd4:	0340218c 	andi	$r12,$r12,0x8
1c004cd8:	40007d80 	beqz	$r12,124(0x7c) # 1c004d54 <intc_handler+0xe4>
1c004cdc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004ce0:	0380098c 	ori	$r12,$r12,0x2
1c004ce4:	2a00018c 	ld.bu	$r12,$r12,0
1c004ce8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004cec:	0340118c 	andi	$r12,$r12,0x4
1c004cf0:	40005580 	beqz	$r12,84(0x54) # 1c004d44 <intc_handler+0xd4>
1c004cf4:	50003800 	b	56(0x38) # 1c004d2c <intc_handler+0xbc>
1c004cf8:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c004cfc:	57d56fff 	bl	-10900(0xfffd56c) # 1c002268 <UART_ReceiveData>
1c004d00:	0015008c 	move	$r12,$r4
1c004d04:	0015018d 	move	$r13,$r12
1c004d08:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d0c:	028be18c 	addi.w	$r12,$r12,760(0x2f8)
1c004d10:	2900018d 	st.b	$r13,$r12,0
1c004d14:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004d18:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c004d1c:	028ba0a5 	addi.w	$r5,$r5,744(0x2e8)
1c004d20:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004d24:	288bb084 	ld.w	$r4,$r4,748(0x2ec)
1c004d28:	540e7000 	bl	3696(0xe70) # 1c005b98 <Queue_Wirte>
1c004d2c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004d30:	0380158c 	ori	$r12,$r12,0x5
1c004d34:	2a00018c 	ld.bu	$r12,$r12,0
1c004d38:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d3c:	0340058c 	andi	$r12,$r12,0x1
1c004d40:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c004cf8 <intc_handler+0x88>
1c004d44:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004d48:	03800d8c 	ori	$r12,$r12,0x3
1c004d4c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004d50:	2900018d 	st.b	$r13,$r12,0
1c004d54:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004d58:	03800d8c 	ori	$r12,$r12,0x3
1c004d5c:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004d60:	2900018d 	st.b	$r13,$r12,0
1c004d64:	03400000 	andi	$r0,$r0,0x0
1c004d68:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004d6c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004d70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004d74:	4c000020 	jirl	$r0,$r1,0

1c004d78 <TIMER_HANDLER>:
TIMER_HANDLER():
1c004d78:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004d7c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004d80:	29802076 	st.w	$r22,$r3,8(0x8)
1c004d84:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004d88:	57dd5fff 	bl	-8868(0xfffdd5c) # 1c002ae4 <Set_Timer_clear>
1c004d8c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004d90:	029b0084 	addi.w	$r4,$r4,1728(0x6c0)
1c004d94:	57cce7ff 	bl	-13084(0xfffcce4) # 1c001a78 <myprintf>
1c004d98:	57dd2fff 	bl	-8916(0xfffdd2c) # 1c002ac4 <Set_Timer_stop>
1c004d9c:	03400000 	andi	$r0,$r0,0x0
1c004da0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004da4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004da8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004dac:	4c000020 	jirl	$r0,$r1,0

1c004db0 <main>:
main():
1c004db0:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c004db4:	29813061 	st.w	$r1,$r3,76(0x4c)
1c004db8:	29812076 	st.w	$r22,$r3,72(0x48)
1c004dbc:	02814076 	addi.w	$r22,$r3,80(0x50)
1c004dc0:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c004dc4:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c004dc8:	54083800 	bl	2104(0x838) # 1c005600 <OLED_Init>
1c004dcc:	5406a400 	bl	1700(0x6a4) # 1c005470 <Light_Init>
1c004dd0:	540ea400 	bl	3748(0xea4) # 1c005c74 <AHT10_Init>
1c004dd4:	54023000 	bl	560(0x230) # 1c005004 <MPU9250_Init>
1c004dd8:	540f8800 	bl	3976(0xf88) # 1c005d60 <Lora_Init>
1c004ddc:	5409b800 	bl	2488(0x9b8) # 1c005794 <OLED_Clear>
1c004de0:	5402f800 	bl	760(0x2f8) # 1c0050d8 <MPU9250_Get_Temperature>
1c004de4:	0015008c 	move	$r12,$r4
1c004de8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c004dec:	02bf32cc 	addi.w	$r12,$r22,-52(0xfcc)
1c004df0:	00150184 	move	$r4,$r12
1c004df4:	54036000 	bl	864(0x360) # 1c005154 <MPU9250_GetRawData>
1c004df8:	5406bc00 	bl	1724(0x6bc) # 1c0054b4 <Light_Get>
1c004dfc:	0015008c 	move	$r12,$r4
1c004e00:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c004e04:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004e08:	02a8b0c6 	addi.w	$r6,$r6,-1492(0xa2c)
1c004e0c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e10:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004e14:	540c8000 	bl	3200(0xc80) # 1c005a94 <OLED_ShowString>
1c004e18:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c004e1c:	02801407 	addi.w	$r7,$r0,5(0x5)
1c004e20:	00150186 	move	$r6,$r12
1c004e24:	02801405 	addi.w	$r5,$r0,5(0x5)
1c004e28:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004e2c:	540b8400 	bl	2948(0xb84) # 1c0059b0 <OLED_ShowNum>
1c004e30:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004e34:	02a820c6 	addi.w	$r6,$r6,-1528(0xa08)
1c004e38:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e3c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004e40:	540c5400 	bl	3156(0xc54) # 1c005a94 <OLED_ShowString>
1c004e44:	287f6acc 	ld.h	$r12,$r22,-38(0xfda)
1c004e48:	02801407 	addi.w	$r7,$r0,5(0x5)
1c004e4c:	00150186 	move	$r6,$r12
1c004e50:	02801405 	addi.w	$r5,$r0,5(0x5)
1c004e54:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004e58:	540b5800 	bl	2904(0xb58) # 1c0059b0 <OLED_ShowNum>
1c004e5c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004e60:	02a790c6 	addi.w	$r6,$r6,-1564(0x9e4)
1c004e64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e68:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c004e6c:	540c2800 	bl	3112(0xc28) # 1c005a94 <OLED_ShowString>
1c004e70:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c004e74:	02801407 	addi.w	$r7,$r0,5(0x5)
1c004e78:	00150186 	move	$r6,$r12
1c004e7c:	02801c05 	addi.w	$r5,$r0,7(0x7)
1c004e80:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c004e84:	540b2c00 	bl	2860(0xb2c) # 1c0059b0 <OLED_ShowNum>
1c004e88:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c004e8c:	0044a18c 	srli.w	$r12,$r12,0x8
1c004e90:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004e94:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e98:	293efacc 	st.b	$r12,$r22,-66(0xfbe)
1c004e9c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c004ea0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004ea4:	293efecc 	st.b	$r12,$r22,-65(0xfbf)
1c004ea8:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c004eac:	0044a18c 	srli.w	$r12,$r12,0x8
1c004eb0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004eb4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004eb8:	293f02cc 	st.b	$r12,$r22,-64(0xfc0)
1c004ebc:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c004ec0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004ec4:	293f06cc 	st.b	$r12,$r22,-63(0xfc1)
1c004ec8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004ecc:	50011000 	b	272(0x110) # 1c004fdc <main+0x22c>
1c004ed0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ed4:	0040858c 	slli.w	$r12,$r12,0x1
1c004ed8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004edc:	001031ac 	add.w	$r12,$r13,$r12
1c004ee0:	287fa18c 	ld.h	$r12,$r12,-24(0xfe8)
1c004ee4:	60002980 	blt	$r12,$r0,40(0x28) # 1c004f0c <main+0x15c>
1c004ee8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004eec:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004ef0:	001c31ac 	mul.w	$r12,$r13,$r12
1c004ef4:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c004ef8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004efc:	001031ad 	add.w	$r13,$r13,$r12
1c004f00:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004f04:	293f31ac 	st.b	$r12,$r13,-52(0xfcc)
1c004f08:	50005800 	b	88(0x58) # 1c004f60 <main+0x1b0>
1c004f0c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004f10:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004f14:	001c31ac 	mul.w	$r12,$r13,$r12
1c004f18:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c004f1c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004f20:	001031ac 	add.w	$r12,$r13,$r12
1c004f24:	293f3180 	st.b	$r0,$r12,-52(0xfcc)
1c004f28:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004f2c:	0040858c 	slli.w	$r12,$r12,0x1
1c004f30:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004f34:	001031ac 	add.w	$r12,$r13,$r12
1c004f38:	287fa18c 	ld.h	$r12,$r12,-24(0xfe8)
1c004f3c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004f40:	0011300c 	sub.w	$r12,$r0,$r12
1c004f44:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004f48:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004f4c:	000059ad 	ext.w.h	$r13,$r13
1c004f50:	0040858c 	slli.w	$r12,$r12,0x1
1c004f54:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c004f58:	001031cc 	add.w	$r12,$r14,$r12
1c004f5c:	297fa18d 	st.h	$r13,$r12,-24(0xfe8)
1c004f60:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004f64:	0040858c 	slli.w	$r12,$r12,0x1
1c004f68:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004f6c:	001031ac 	add.w	$r12,$r13,$r12
1c004f70:	287fa18c 	ld.h	$r12,$r12,-24(0xfe8)
1c004f74:	0048a18c 	srai.w	$r12,$r12,0x8
1c004f78:	0000598e 	ext.w.h	$r14,$r12
1c004f7c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004f80:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004f84:	001c31ac 	mul.w	$r12,$r13,$r12
1c004f88:	02801d8d 	addi.w	$r13,$r12,7(0x7)
1c004f8c:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c004f90:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c004f94:	001035cd 	add.w	$r13,$r14,$r13
1c004f98:	293f31ac 	st.b	$r12,$r13,-52(0xfcc)
1c004f9c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004fa0:	0040858c 	slli.w	$r12,$r12,0x1
1c004fa4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004fa8:	001031ac 	add.w	$r12,$r13,$r12
1c004fac:	287fa18e 	ld.h	$r14,$r12,-24(0xfe8)
1c004fb0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004fb4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004fb8:	001c31ac 	mul.w	$r12,$r13,$r12
1c004fbc:	0280218d 	addi.w	$r13,$r12,8(0x8)
1c004fc0:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c004fc4:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c004fc8:	001035cd 	add.w	$r13,$r14,$r13
1c004fcc:	293f31ac 	st.b	$r12,$r13,-52(0xfcc)
1c004fd0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004fd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004fd8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004fdc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004fe0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004fe4:	6ffeed8d 	bgeu	$r12,$r13,-276(0x3feec) # 1c004ed0 <main+0x120>
1c004fe8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004fec:	293f2ecc 	st.b	$r12,$r22,-53(0xfcb)
1c004ff0:	02bef2cc 	addi.w	$r12,$r22,-68(0xfbc)
1c004ff4:	02804005 	addi.w	$r5,$r0,16(0x10)
1c004ff8:	00150184 	move	$r4,$r12
1c004ffc:	540d9400 	bl	3476(0xd94) # 1c005d90 <Lora_Send>
1c005000:	53fde3ff 	b	-544(0xffffde0) # 1c004de0 <main+0x30>

1c005004 <MPU9250_Init>:
MPU9250_Init():
1c005004:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005008:	29803061 	st.w	$r1,$r3,12(0xc)
1c00500c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005010:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005014:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005018:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00501c:	2a00018c 	ld.bu	$r12,$r12,0
1c005020:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005024:	00150005 	move	$r5,$r0
1c005028:	00150184 	move	$r4,$r12
1c00502c:	57c637ff 	bl	-14796(0xfffc634) # 1c001660 <gpio_pin_remap>
1c005030:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005034:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c005038:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00503c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005040:	00150005 	move	$r5,$r0
1c005044:	00150184 	move	$r4,$r12
1c005048:	57c61bff 	bl	-14824(0xfffc618) # 1c001660 <gpio_pin_remap>
1c00504c:	00150007 	move	$r7,$r0
1c005050:	0281ac06 	addi.w	$r6,$r0,107(0x6b)
1c005054:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c005058:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c00505c:	02bf0084 	addi.w	$r4,$r4,-64(0xfc0)
1c005060:	57e45fff 	bl	-7076(0xfffe45c) # 1c0034bc <MyI2C_W_Byte>
1c005064:	02801c07 	addi.w	$r7,$r0,7(0x7)
1c005068:	02806406 	addi.w	$r6,$r0,25(0x19)
1c00506c:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c005070:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005074:	02bea084 	addi.w	$r4,$r4,-88(0xfa8)
1c005078:	57e447ff 	bl	-7100(0xfffe444) # 1c0034bc <MyI2C_W_Byte>
1c00507c:	02801807 	addi.w	$r7,$r0,6(0x6)
1c005080:	02806806 	addi.w	$r6,$r0,26(0x1a)
1c005084:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c005088:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c00508c:	02be4084 	addi.w	$r4,$r4,-112(0xf90)
1c005090:	57e42fff 	bl	-7124(0xfffe42c) # 1c0034bc <MyI2C_W_Byte>
1c005094:	02806007 	addi.w	$r7,$r0,24(0x18)
1c005098:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c00509c:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c0050a0:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0050a4:	02bde084 	addi.w	$r4,$r4,-136(0xf78)
1c0050a8:	57e417ff 	bl	-7148(0xfffe414) # 1c0034bc <MyI2C_W_Byte>
1c0050ac:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0050b0:	02807006 	addi.w	$r6,$r0,28(0x1c)
1c0050b4:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c0050b8:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0050bc:	02bd8084 	addi.w	$r4,$r4,-160(0xf60)
1c0050c0:	57e3ffff 	bl	-7172(0xfffe3fc) # 1c0034bc <MyI2C_W_Byte>
1c0050c4:	03400000 	andi	$r0,$r0,0x0
1c0050c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0050cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0050d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0050d4:	4c000020 	jirl	$r0,$r1,0

1c0050d8 <MPU9250_Get_Temperature>:
MPU9250_Get_Temperature():
1c0050d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0050dc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0050e0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0050e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0050e8:	02810406 	addi.w	$r6,$r0,65(0x41)
1c0050ec:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c0050f0:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0050f4:	02bca084 	addi.w	$r4,$r4,-216(0xf28)
1c0050f8:	57e48bff 	bl	-7032(0xfffe488) # 1c003580 <MyI2C_R_Byte>
1c0050fc:	0015008c 	move	$r12,$r4
1c005100:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005104:	02810806 	addi.w	$r6,$r0,66(0x42)
1c005108:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c00510c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005110:	02bc3084 	addi.w	$r4,$r4,-244(0xf0c)
1c005114:	57e46fff 	bl	-7060(0xfffe46c) # 1c003580 <MyI2C_R_Byte>
1c005118:	0015008c 	move	$r12,$r4
1c00511c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005120:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005124:	0040a18c 	slli.w	$r12,$r12,0x8
1c005128:	0000598d 	ext.w.h	$r13,$r12
1c00512c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005130:	0000598c 	ext.w.h	$r12,$r12
1c005134:	001531ac 	or	$r12,$r13,$r12
1c005138:	0000598c 	ext.w.h	$r12,$r12
1c00513c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005140:	00150184 	move	$r4,$r12
1c005144:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005148:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00514c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005150:	4c000020 	jirl	$r0,$r1,0

1c005154 <MPU9250_GetRawData>:
MPU9250_GetRawData():
1c005154:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005158:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00515c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005160:	29805077 	st.w	$r23,$r3,20(0x14)
1c005164:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005168:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00516c:	0280ec06 	addi.w	$r6,$r0,59(0x3b)
1c005170:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c005174:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005178:	02ba9084 	addi.w	$r4,$r4,-348(0xea4)
1c00517c:	57e407ff 	bl	-7164(0xfffe404) # 1c003580 <MyI2C_R_Byte>
1c005180:	0015008c 	move	$r12,$r4
1c005184:	0040a18c 	slli.w	$r12,$r12,0x8
1c005188:	00005997 	ext.w.h	$r23,$r12
1c00518c:	0280f006 	addi.w	$r6,$r0,60(0x3c)
1c005190:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c005194:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005198:	02ba1084 	addi.w	$r4,$r4,-380(0xe84)
1c00519c:	57e3e7ff 	bl	-7196(0xfffe3e4) # 1c003580 <MyI2C_R_Byte>
1c0051a0:	0015008c 	move	$r12,$r4
1c0051a4:	0000598c 	ext.w.h	$r12,$r12
1c0051a8:	001532ec 	or	$r12,$r23,$r12
1c0051ac:	0000598d 	ext.w.h	$r13,$r12
1c0051b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0051b4:	2940018d 	st.h	$r13,$r12,0
1c0051b8:	0280f406 	addi.w	$r6,$r0,61(0x3d)
1c0051bc:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c0051c0:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0051c4:	02b96084 	addi.w	$r4,$r4,-424(0xe58)
1c0051c8:	57e3bbff 	bl	-7240(0xfffe3b8) # 1c003580 <MyI2C_R_Byte>
1c0051cc:	0015008c 	move	$r12,$r4
1c0051d0:	0040a18c 	slli.w	$r12,$r12,0x8
1c0051d4:	00005997 	ext.w.h	$r23,$r12
1c0051d8:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c0051dc:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c0051e0:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0051e4:	02b8e084 	addi.w	$r4,$r4,-456(0xe38)
1c0051e8:	57e39bff 	bl	-7272(0xfffe398) # 1c003580 <MyI2C_R_Byte>
1c0051ec:	0015008c 	move	$r12,$r4
1c0051f0:	0000598c 	ext.w.h	$r12,$r12
1c0051f4:	001532ec 	or	$r12,$r23,$r12
1c0051f8:	0000598d 	ext.w.h	$r13,$r12
1c0051fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005200:	2940098d 	st.h	$r13,$r12,2(0x2)
1c005204:	0280fc06 	addi.w	$r6,$r0,63(0x3f)
1c005208:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c00520c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005210:	02b83084 	addi.w	$r4,$r4,-500(0xe0c)
1c005214:	57e36fff 	bl	-7316(0xfffe36c) # 1c003580 <MyI2C_R_Byte>
1c005218:	0015008c 	move	$r12,$r4
1c00521c:	0040a18c 	slli.w	$r12,$r12,0x8
1c005220:	00005997 	ext.w.h	$r23,$r12
1c005224:	02810006 	addi.w	$r6,$r0,64(0x40)
1c005228:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c00522c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005230:	02b7b084 	addi.w	$r4,$r4,-532(0xdec)
1c005234:	57e34fff 	bl	-7348(0xfffe34c) # 1c003580 <MyI2C_R_Byte>
1c005238:	0015008c 	move	$r12,$r4
1c00523c:	0000598c 	ext.w.h	$r12,$r12
1c005240:	001532ec 	or	$r12,$r23,$r12
1c005244:	0000598d 	ext.w.h	$r13,$r12
1c005248:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00524c:	2940118d 	st.h	$r13,$r12,4(0x4)
1c005250:	02810c06 	addi.w	$r6,$r0,67(0x43)
1c005254:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c005258:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c00525c:	02b70084 	addi.w	$r4,$r4,-576(0xdc0)
1c005260:	57e323ff 	bl	-7392(0xfffe320) # 1c003580 <MyI2C_R_Byte>
1c005264:	0015008c 	move	$r12,$r4
1c005268:	0040a18c 	slli.w	$r12,$r12,0x8
1c00526c:	00005997 	ext.w.h	$r23,$r12
1c005270:	02811006 	addi.w	$r6,$r0,68(0x44)
1c005274:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c005278:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c00527c:	02b68084 	addi.w	$r4,$r4,-608(0xda0)
1c005280:	57e303ff 	bl	-7424(0xfffe300) # 1c003580 <MyI2C_R_Byte>
1c005284:	0015008c 	move	$r12,$r4
1c005288:	0000598c 	ext.w.h	$r12,$r12
1c00528c:	001532ec 	or	$r12,$r23,$r12
1c005290:	0000598d 	ext.w.h	$r13,$r12
1c005294:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005298:	2940198d 	st.h	$r13,$r12,6(0x6)
1c00529c:	02811406 	addi.w	$r6,$r0,69(0x45)
1c0052a0:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c0052a4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0052a8:	02b5d084 	addi.w	$r4,$r4,-652(0xd74)
1c0052ac:	57e2d7ff 	bl	-7468(0xfffe2d4) # 1c003580 <MyI2C_R_Byte>
1c0052b0:	0015008c 	move	$r12,$r4
1c0052b4:	0040a18c 	slli.w	$r12,$r12,0x8
1c0052b8:	00005997 	ext.w.h	$r23,$r12
1c0052bc:	02811806 	addi.w	$r6,$r0,70(0x46)
1c0052c0:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c0052c4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0052c8:	02b55084 	addi.w	$r4,$r4,-684(0xd54)
1c0052cc:	57e2b7ff 	bl	-7500(0xfffe2b4) # 1c003580 <MyI2C_R_Byte>
1c0052d0:	0015008c 	move	$r12,$r4
1c0052d4:	0000598c 	ext.w.h	$r12,$r12
1c0052d8:	001532ec 	or	$r12,$r23,$r12
1c0052dc:	0000598d 	ext.w.h	$r13,$r12
1c0052e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0052e4:	2940218d 	st.h	$r13,$r12,8(0x8)
1c0052e8:	02811c06 	addi.w	$r6,$r0,71(0x47)
1c0052ec:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c0052f0:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0052f4:	02b4a084 	addi.w	$r4,$r4,-728(0xd28)
1c0052f8:	57e28bff 	bl	-7544(0xfffe288) # 1c003580 <MyI2C_R_Byte>
1c0052fc:	0015008c 	move	$r12,$r4
1c005300:	0040a18c 	slli.w	$r12,$r12,0x8
1c005304:	00005997 	ext.w.h	$r23,$r12
1c005308:	02812006 	addi.w	$r6,$r0,72(0x48)
1c00530c:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c005310:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005314:	02b42084 	addi.w	$r4,$r4,-760(0xd08)
1c005318:	57e26bff 	bl	-7576(0xfffe268) # 1c003580 <MyI2C_R_Byte>
1c00531c:	0015008c 	move	$r12,$r4
1c005320:	0000598c 	ext.w.h	$r12,$r12
1c005324:	001532ec 	or	$r12,$r23,$r12
1c005328:	0000598d 	ext.w.h	$r13,$r12
1c00532c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005330:	2940298d 	st.h	$r13,$r12,10(0xa)
1c005334:	02800807 	addi.w	$r7,$r0,2(0x2)
1c005338:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c00533c:	02834005 	addi.w	$r5,$r0,208(0xd0)
1c005340:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005344:	02b36084 	addi.w	$r4,$r4,-808(0xcd8)
1c005348:	57e177ff 	bl	-7820(0xfffe174) # 1c0034bc <MyI2C_W_Byte>
1c00534c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005350:	57db77ff 	bl	-9356(0xfffdb74) # 1c002ec4 <delay_ms>
1c005354:	02804407 	addi.w	$r7,$r0,17(0x11)
1c005358:	02802806 	addi.w	$r6,$r0,10(0xa)
1c00535c:	02806005 	addi.w	$r5,$r0,24(0x18)
1c005360:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005364:	02b2e084 	addi.w	$r4,$r4,-840(0xcb8)
1c005368:	57e157ff 	bl	-7852(0xfffe154) # 1c0034bc <MyI2C_W_Byte>
1c00536c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005370:	57db57ff 	bl	-9388(0xfffdb54) # 1c002ec4 <delay_ms>
1c005374:	02801006 	addi.w	$r6,$r0,4(0x4)
1c005378:	02806005 	addi.w	$r5,$r0,24(0x18)
1c00537c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005380:	02b27084 	addi.w	$r4,$r4,-868(0xc9c)
1c005384:	57e1ffff 	bl	-7684(0xfffe1fc) # 1c003580 <MyI2C_R_Byte>
1c005388:	0015008c 	move	$r12,$r4
1c00538c:	0040a18c 	slli.w	$r12,$r12,0x8
1c005390:	00005997 	ext.w.h	$r23,$r12
1c005394:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c005398:	02806005 	addi.w	$r5,$r0,24(0x18)
1c00539c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0053a0:	02b1f084 	addi.w	$r4,$r4,-900(0xc7c)
1c0053a4:	57e1dfff 	bl	-7716(0xfffe1dc) # 1c003580 <MyI2C_R_Byte>
1c0053a8:	0015008c 	move	$r12,$r4
1c0053ac:	0000598c 	ext.w.h	$r12,$r12
1c0053b0:	001532ec 	or	$r12,$r23,$r12
1c0053b4:	0000598d 	ext.w.h	$r13,$r12
1c0053b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0053bc:	2940318d 	st.h	$r13,$r12,12(0xc)
1c0053c0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0053c4:	02806005 	addi.w	$r5,$r0,24(0x18)
1c0053c8:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0053cc:	02b14084 	addi.w	$r4,$r4,-944(0xc50)
1c0053d0:	57e1b3ff 	bl	-7760(0xfffe1b0) # 1c003580 <MyI2C_R_Byte>
1c0053d4:	0015008c 	move	$r12,$r4
1c0053d8:	0040a18c 	slli.w	$r12,$r12,0x8
1c0053dc:	00005997 	ext.w.h	$r23,$r12
1c0053e0:	02801406 	addi.w	$r6,$r0,5(0x5)
1c0053e4:	02806005 	addi.w	$r5,$r0,24(0x18)
1c0053e8:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0053ec:	02b0c084 	addi.w	$r4,$r4,-976(0xc30)
1c0053f0:	57e193ff 	bl	-7792(0xfffe190) # 1c003580 <MyI2C_R_Byte>
1c0053f4:	0015008c 	move	$r12,$r4
1c0053f8:	0000598c 	ext.w.h	$r12,$r12
1c0053fc:	001532ec 	or	$r12,$r23,$r12
1c005400:	0000598d 	ext.w.h	$r13,$r12
1c005404:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005408:	2940398d 	st.h	$r13,$r12,14(0xe)
1c00540c:	02802006 	addi.w	$r6,$r0,8(0x8)
1c005410:	02806005 	addi.w	$r5,$r0,24(0x18)
1c005414:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005418:	02b01084 	addi.w	$r4,$r4,-1020(0xc04)
1c00541c:	57e167ff 	bl	-7836(0xfffe164) # 1c003580 <MyI2C_R_Byte>
1c005420:	0015008c 	move	$r12,$r4
1c005424:	0040a18c 	slli.w	$r12,$r12,0x8
1c005428:	00005997 	ext.w.h	$r23,$r12
1c00542c:	02801c06 	addi.w	$r6,$r0,7(0x7)
1c005430:	02806005 	addi.w	$r5,$r0,24(0x18)
1c005434:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005438:	02af9084 	addi.w	$r4,$r4,-1052(0xbe4)
1c00543c:	57e147ff 	bl	-7868(0xfffe144) # 1c003580 <MyI2C_R_Byte>
1c005440:	0015008c 	move	$r12,$r4
1c005444:	0000598c 	ext.w.h	$r12,$r12
1c005448:	001532ec 	or	$r12,$r23,$r12
1c00544c:	0000598d 	ext.w.h	$r13,$r12
1c005450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005454:	2940418d 	st.h	$r13,$r12,16(0x10)
1c005458:	03400000 	andi	$r0,$r0,0x0
1c00545c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005460:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005464:	28805077 	ld.w	$r23,$r3,20(0x14)
1c005468:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00546c:	4c000020 	jirl	$r0,$r1,0

1c005470 <Light_Init>:
Light_Init():
1c005470:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005474:	29803061 	st.w	$r1,$r3,12(0xc)
1c005478:	29802076 	st.w	$r22,$r3,8(0x8)
1c00547c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005480:	00150006 	move	$r6,$r0
1c005484:	02804005 	addi.w	$r5,$r0,16(0x10)
1c005488:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00548c:	03805184 	ori	$r4,$r12,0x14
1c005490:	57c03fff 	bl	-16324(0xfffc03c) # 1c0014cc <AFIO_RemapConfig>
1c005494:	57e533ff 	bl	-6864(0xfffe530) # 1c0039c4 <Adc_powerOn>
1c005498:	02801404 	addi.w	$r4,$r0,5(0x5)
1c00549c:	57e57fff 	bl	-6788(0xfffe57c) # 1c003a18 <Adc_open>
1c0054a0:	03400000 	andi	$r0,$r0,0x0
1c0054a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0054a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0054ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0054b0:	4c000020 	jirl	$r0,$r1,0

1c0054b4 <Light_Get>:
Light_Get():
1c0054b4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0054b8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0054bc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0054c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0054c4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0054c8:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0054cc:	57e5ffff 	bl	-6660(0xfffe5fc) # 1c003ac8 <Adc_Measure>
1c0054d0:	0015008c 	move	$r12,$r4
1c0054d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0054d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054dc:	00150184 	move	$r4,$r12
1c0054e0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0054e4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0054e8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0054ec:	4c000020 	jirl	$r0,$r1,0

1c0054f0 <OLED_WriteCommand>:
OLED_WriteCommand():
1c0054f0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0054f4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0054f8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0054fc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005500:	0015008c 	move	$r12,$r4
1c005504:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005508:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00550c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005510:	57e2e3ff 	bl	-7456(0xfffe2e0) # 1c0037f0 <I2C_GenerateSTART>
1c005514:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c005518:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c00551c:	57e3bfff 	bl	-7236(0xfffe3bc) # 1c0038d8 <I2C_SendData>
1c005520:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005524:	57e407ff 	bl	-7164(0xfffe404) # 1c003928 <I2C_wait>
1c005528:	00150005 	move	$r5,$r0
1c00552c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005530:	57e3abff 	bl	-7256(0xfffe3a8) # 1c0038d8 <I2C_SendData>
1c005534:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005538:	57e3f3ff 	bl	-7184(0xfffe3f0) # 1c003928 <I2C_wait>
1c00553c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005540:	00150185 	move	$r5,$r12
1c005544:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005548:	57e393ff 	bl	-7280(0xfffe390) # 1c0038d8 <I2C_SendData>
1c00554c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005550:	57e3dbff 	bl	-7208(0xfffe3d8) # 1c003928 <I2C_wait>
1c005554:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005558:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c00555c:	57e303ff 	bl	-7424(0xfffe300) # 1c00385c <I2C_GenerateSTOP>
1c005560:	03400000 	andi	$r0,$r0,0x0
1c005564:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005568:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00556c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005570:	4c000020 	jirl	$r0,$r1,0

1c005574 <OLED_WriteData>:
OLED_WriteData():
1c005574:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005578:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00557c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005580:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005584:	0015008c 	move	$r12,$r4
1c005588:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00558c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005590:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005594:	57e25fff 	bl	-7588(0xfffe25c) # 1c0037f0 <I2C_GenerateSTART>
1c005598:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c00559c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0055a0:	57e33bff 	bl	-7368(0xfffe338) # 1c0038d8 <I2C_SendData>
1c0055a4:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0055a8:	57e383ff 	bl	-7296(0xfffe380) # 1c003928 <I2C_wait>
1c0055ac:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0055b0:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0055b4:	57e327ff 	bl	-7388(0xfffe324) # 1c0038d8 <I2C_SendData>
1c0055b8:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0055bc:	57e36fff 	bl	-7316(0xfffe36c) # 1c003928 <I2C_wait>
1c0055c0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0055c4:	00150185 	move	$r5,$r12
1c0055c8:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0055cc:	57e30fff 	bl	-7412(0xfffe30c) # 1c0038d8 <I2C_SendData>
1c0055d0:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0055d4:	57e357ff 	bl	-7340(0xfffe354) # 1c003928 <I2C_wait>
1c0055d8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0055dc:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0055e0:	57e27fff 	bl	-7556(0xfffe27c) # 1c00385c <I2C_GenerateSTOP>
1c0055e4:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0055e8:	57e343ff 	bl	-7360(0xfffe340) # 1c003928 <I2C_wait>
1c0055ec:	03400000 	andi	$r0,$r0,0x0
1c0055f0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0055f4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0055f8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0055fc:	4c000020 	jirl	$r0,$r1,0

1c005600 <OLED_Init>:
OLED_Init():
1c005600:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005604:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005608:	29806076 	st.w	$r22,$r3,24(0x18)
1c00560c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005610:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005614:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005618:	57c04bff 	bl	-16312(0xfffc048) # 1c001660 <gpio_pin_remap>
1c00561c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005620:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005624:	57c03fff 	bl	-16324(0xfffc03c) # 1c001660 <gpio_pin_remap>
1c005628:	02bfa2cc 	addi.w	$r12,$r22,-24(0xfe8)
1c00562c:	00150184 	move	$r4,$r12
1c005630:	57e167ff 	bl	-7836(0xfffe164) # 1c003794 <I2C_StructInit>
1c005634:	02bfa2cc 	addi.w	$r12,$r22,-24(0xfe8)
1c005638:	00150185 	move	$r5,$r12
1c00563c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005640:	57e053ff 	bl	-8112(0xfffe050) # 1c003690 <I2C_Init>
1c005644:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c005648:	57feabff 	bl	-344(0xffffea8) # 1c0054f0 <OLED_WriteCommand>
1c00564c:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c005650:	57fea3ff 	bl	-352(0xffffea0) # 1c0054f0 <OLED_WriteCommand>
1c005654:	02820004 	addi.w	$r4,$r0,128(0x80)
1c005658:	57fe9bff 	bl	-360(0xffffe98) # 1c0054f0 <OLED_WriteCommand>
1c00565c:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c005660:	57fe93ff 	bl	-368(0xffffe90) # 1c0054f0 <OLED_WriteCommand>
1c005664:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005668:	57fe8bff 	bl	-376(0xffffe88) # 1c0054f0 <OLED_WriteCommand>
1c00566c:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c005670:	57fe83ff 	bl	-384(0xffffe80) # 1c0054f0 <OLED_WriteCommand>
1c005674:	00150004 	move	$r4,$r0
1c005678:	57fe7bff 	bl	-392(0xffffe78) # 1c0054f0 <OLED_WriteCommand>
1c00567c:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005680:	57fe73ff 	bl	-400(0xffffe70) # 1c0054f0 <OLED_WriteCommand>
1c005684:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c005688:	57fe6bff 	bl	-408(0xffffe68) # 1c0054f0 <OLED_WriteCommand>
1c00568c:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c005690:	57fe63ff 	bl	-416(0xffffe60) # 1c0054f0 <OLED_WriteCommand>
1c005694:	02836804 	addi.w	$r4,$r0,218(0xda)
1c005698:	57fe5bff 	bl	-424(0xffffe58) # 1c0054f0 <OLED_WriteCommand>
1c00569c:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0056a0:	57fe53ff 	bl	-432(0xffffe50) # 1c0054f0 <OLED_WriteCommand>
1c0056a4:	02820404 	addi.w	$r4,$r0,129(0x81)
1c0056a8:	57fe4bff 	bl	-440(0xffffe48) # 1c0054f0 <OLED_WriteCommand>
1c0056ac:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c0056b0:	57fe43ff 	bl	-448(0xffffe40) # 1c0054f0 <OLED_WriteCommand>
1c0056b4:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c0056b8:	57fe3bff 	bl	-456(0xffffe38) # 1c0054f0 <OLED_WriteCommand>
1c0056bc:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c0056c0:	57fe33ff 	bl	-464(0xffffe30) # 1c0054f0 <OLED_WriteCommand>
1c0056c4:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c0056c8:	57fe2bff 	bl	-472(0xffffe28) # 1c0054f0 <OLED_WriteCommand>
1c0056cc:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c0056d0:	57fe23ff 	bl	-480(0xffffe20) # 1c0054f0 <OLED_WriteCommand>
1c0056d4:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c0056d8:	57fe1bff 	bl	-488(0xffffe18) # 1c0054f0 <OLED_WriteCommand>
1c0056dc:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0056e0:	57fe13ff 	bl	-496(0xffffe10) # 1c0054f0 <OLED_WriteCommand>
1c0056e4:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c0056e8:	57fe0bff 	bl	-504(0xffffe08) # 1c0054f0 <OLED_WriteCommand>
1c0056ec:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0056f0:	57fe03ff 	bl	-512(0xffffe00) # 1c0054f0 <OLED_WriteCommand>
1c0056f4:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0056f8:	57fdfbff 	bl	-520(0xffffdf8) # 1c0054f0 <OLED_WriteCommand>
1c0056fc:	54009800 	bl	152(0x98) # 1c005794 <OLED_Clear>
1c005700:	03400000 	andi	$r0,$r0,0x0
1c005704:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005708:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00570c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005710:	4c000020 	jirl	$r0,$r1,0

1c005714 <OLED_SetCursor>:
OLED_SetCursor():
1c005714:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005718:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00571c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005720:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005724:	0015008c 	move	$r12,$r4
1c005728:	001500ad 	move	$r13,$r5
1c00572c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005730:	001501ac 	move	$r12,$r13
1c005734:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005738:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00573c:	02bec00c 	addi.w	$r12,$r0,-80(0xfb0)
1c005740:	001531ac 	or	$r12,$r13,$r12
1c005744:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005748:	00150184 	move	$r4,$r12
1c00574c:	57fda7ff 	bl	-604(0xffffda4) # 1c0054f0 <OLED_WriteCommand>
1c005750:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005754:	0044918c 	srli.w	$r12,$r12,0x4
1c005758:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00575c:	0380418c 	ori	$r12,$r12,0x10
1c005760:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005764:	00150184 	move	$r4,$r12
1c005768:	57fd8bff 	bl	-632(0xffffd88) # 1c0054f0 <OLED_WriteCommand>
1c00576c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005770:	03403d8c 	andi	$r12,$r12,0xf
1c005774:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005778:	00150184 	move	$r4,$r12
1c00577c:	57fd77ff 	bl	-652(0xffffd74) # 1c0054f0 <OLED_WriteCommand>
1c005780:	03400000 	andi	$r0,$r0,0x0
1c005784:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005788:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00578c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005790:	4c000020 	jirl	$r0,$r1,0

1c005794 <OLED_Clear>:
OLED_Clear():
1c005794:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005798:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00579c:	29806076 	st.w	$r22,$r3,24(0x18)
1c0057a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0057a4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0057a8:	50004400 	b	68(0x44) # 1c0057ec <OLED_Clear+0x58>
1c0057ac:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0057b0:	00150005 	move	$r5,$r0
1c0057b4:	00150184 	move	$r4,$r12
1c0057b8:	57ff5fff 	bl	-164(0xfffff5c) # 1c005714 <OLED_SetCursor>
1c0057bc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0057c0:	50001800 	b	24(0x18) # 1c0057d8 <OLED_Clear+0x44>
1c0057c4:	00150004 	move	$r4,$r0
1c0057c8:	57fdafff 	bl	-596(0xffffdac) # 1c005574 <OLED_WriteData>
1c0057cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0057d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057d4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0057d8:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0057dc:	67ffe980 	bge	$r12,$r0,-24(0x3ffe8) # 1c0057c4 <OLED_Clear+0x30>
1c0057e0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0057e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057e8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0057ec:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0057f0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0057f4:	6fffb98d 	bgeu	$r12,$r13,-72(0x3ffb8) # 1c0057ac <OLED_Clear+0x18>
1c0057f8:	03400000 	andi	$r0,$r0,0x0
1c0057fc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005800:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005804:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005808:	4c000020 	jirl	$r0,$r1,0

1c00580c <OLED_ShowChar>:
OLED_ShowChar():
1c00580c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005810:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005814:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005818:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00581c:	0015008c 	move	$r12,$r4
1c005820:	001500ae 	move	$r14,$r5
1c005824:	001500cd 	move	$r13,$r6
1c005828:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00582c:	001501cc 	move	$r12,$r14
1c005830:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c005834:	001501ac 	move	$r12,$r13
1c005838:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c00583c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005840:	0281fd8c 	addi.w	$r12,$r12,127(0x7f)
1c005844:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005848:	0040858c 	slli.w	$r12,$r12,0x1
1c00584c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005850:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c005854:	02807d8c 	addi.w	$r12,$r12,31(0x1f)
1c005858:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00585c:	00408d8c 	slli.w	$r12,$r12,0x3
1c005860:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005864:	00150185 	move	$r5,$r12
1c005868:	001501a4 	move	$r4,$r13
1c00586c:	57feabff 	bl	-344(0xffffea8) # 1c005714 <OLED_SetCursor>
1c005870:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005874:	50003c00 	b	60(0x3c) # 1c0058b0 <OLED_ShowChar+0xa4>
1c005878:	283f76cc 	ld.b	$r12,$r22,-35(0xfdd)
1c00587c:	02bf818d 	addi.w	$r13,$r12,-32(0xfe0)
1c005880:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005884:	1c00002e 	pcaddu12i	$r14,1(0x1)
1c005888:	02bf11ce 	addi.w	$r14,$r14,-60(0xfc4)
1c00588c:	004091ad 	slli.w	$r13,$r13,0x4
1c005890:	001035cd 	add.w	$r13,$r14,$r13
1c005894:	001031ac 	add.w	$r12,$r13,$r12
1c005898:	2a00018c 	ld.bu	$r12,$r12,0
1c00589c:	00150184 	move	$r4,$r12
1c0058a0:	57fcd7ff 	bl	-812(0xffffcd4) # 1c005574 <OLED_WriteData>
1c0058a4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0058a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058ac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0058b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0058b4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0058b8:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c005878 <OLED_ShowChar+0x6c>
1c0058bc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0058c0:	0281fd8c 	addi.w	$r12,$r12,127(0x7f)
1c0058c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0058c8:	0040858c 	slli.w	$r12,$r12,0x1
1c0058cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0058d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058d4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0058d8:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c0058dc:	02807d8c 	addi.w	$r12,$r12,31(0x1f)
1c0058e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0058e4:	00408d8c 	slli.w	$r12,$r12,0x3
1c0058e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0058ec:	00150185 	move	$r5,$r12
1c0058f0:	001501a4 	move	$r4,$r13
1c0058f4:	57fe23ff 	bl	-480(0xffffe20) # 1c005714 <OLED_SetCursor>
1c0058f8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0058fc:	50004000 	b	64(0x40) # 1c00593c <OLED_ShowChar+0x130>
1c005900:	283f76cc 	ld.b	$r12,$r22,-35(0xfdd)
1c005904:	02bf818d 	addi.w	$r13,$r12,-32(0xfe0)
1c005908:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00590c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005910:	1c00002e 	pcaddu12i	$r14,1(0x1)
1c005914:	02bce1ce 	addi.w	$r14,$r14,-200(0xf38)
1c005918:	004091ad 	slli.w	$r13,$r13,0x4
1c00591c:	001035cd 	add.w	$r13,$r14,$r13
1c005920:	001031ac 	add.w	$r12,$r13,$r12
1c005924:	2a00018c 	ld.bu	$r12,$r12,0
1c005928:	00150184 	move	$r4,$r12
1c00592c:	57fc4bff 	bl	-952(0xffffc48) # 1c005574 <OLED_WriteData>
1c005930:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005934:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005938:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00593c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005940:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005944:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c005900 <OLED_ShowChar+0xf4>
1c005948:	03400000 	andi	$r0,$r0,0x0
1c00594c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005950:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005954:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005958:	4c000020 	jirl	$r0,$r1,0

1c00595c <OLED_Pow>:
OLED_Pow():
1c00595c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005960:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c005964:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005968:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00596c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005970:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005974:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005978:	50001400 	b	20(0x14) # 1c00598c <OLED_Pow+0x30>
1c00597c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005980:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005984:	001c31ac 	mul.w	$r12,$r13,$r12
1c005988:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00598c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005990:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005994:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c005998:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00597c <OLED_Pow+0x20>
1c00599c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0059a0:	00150184 	move	$r4,$r12
1c0059a4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0059a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0059ac:	4c000020 	jirl	$r0,$r1,0

1c0059b0 <OLED_ShowNum>:
OLED_ShowNum():
1c0059b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0059b4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0059b8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0059bc:	29809077 	st.w	$r23,$r3,36(0x24)
1c0059c0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0059c4:	0015008c 	move	$r12,$r4
1c0059c8:	001500ae 	move	$r14,$r5
1c0059cc:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0059d0:	001500ed 	move	$r13,$r7
1c0059d4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0059d8:	001501cc 	move	$r12,$r14
1c0059dc:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0059e0:	001501ac 	move	$r12,$r13
1c0059e4:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c0059e8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0059ec:	50008400 	b	132(0x84) # 1c005a70 <OLED_ShowNum+0xc0>
1c0059f0:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c0059f4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0059f8:	001031ac 	add.w	$r12,$r13,$r12
1c0059fc:	00678197 	bstrpick.w	$r23,$r12,0x7,0x0
1c005a00:	2a3f76cd 	ld.bu	$r13,$r22,-35(0xfdd)
1c005a04:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005a08:	001131ac 	sub.w	$r12,$r13,$r12
1c005a0c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005a10:	00150185 	move	$r5,$r12
1c005a14:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005a18:	57ff47ff 	bl	-188(0xfffff44) # 1c00595c <OLED_Pow>
1c005a1c:	0015008e 	move	$r14,$r4
1c005a20:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005a24:	0021398d 	div.wu	$r13,$r12,$r14
1c005a28:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c005a30 <OLED_ShowNum+0x80>
1c005a2c:	002a0007 	break	0x7
1c005a30:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005a34:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005a38:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005a40 <OLED_ShowNum+0x90>
1c005a3c:	002a0007 	break	0x7
1c005a40:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c005a44:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c005a48:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005a4c:	00005d8d 	ext.w.b	$r13,$r12
1c005a50:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005a54:	001501a6 	move	$r6,$r13
1c005a58:	001502e5 	move	$r5,$r23
1c005a5c:	00150184 	move	$r4,$r12
1c005a60:	57fdafff 	bl	-596(0xffffdac) # 1c00580c <OLED_ShowChar>
1c005a64:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005a68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a6c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005a70:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005a74:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c005a78:	6bff79ac 	bltu	$r13,$r12,-136(0x3ff78) # 1c0059f0 <OLED_ShowNum+0x40>
1c005a7c:	03400000 	andi	$r0,$r0,0x0
1c005a80:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005a84:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005a88:	28809077 	ld.w	$r23,$r3,36(0x24)
1c005a8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005a90:	4c000020 	jirl	$r0,$r1,0

1c005a94 <OLED_ShowString>:
OLED_ShowString():
1c005a94:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005a98:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005a9c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005aa0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005aa4:	0015008c 	move	$r12,$r4
1c005aa8:	001500ad 	move	$r13,$r5
1c005aac:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005ab0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005ab4:	001501ac 	move	$r12,$r13
1c005ab8:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c005abc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005ac0:	50004400 	b	68(0x44) # 1c005b04 <OLED_ShowString+0x70>
1c005ac4:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c005ac8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005acc:	001031ac 	add.w	$r12,$r13,$r12
1c005ad0:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005ad4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005ad8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005adc:	001031ac 	add.w	$r12,$r13,$r12
1c005ae0:	2800018d 	ld.b	$r13,$r12,0
1c005ae4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005ae8:	001501a6 	move	$r6,$r13
1c005aec:	001501c5 	move	$r5,$r14
1c005af0:	00150184 	move	$r4,$r12
1c005af4:	57fd1bff 	bl	-744(0xffffd18) # 1c00580c <OLED_ShowChar>
1c005af8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005afc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b00:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005b04:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005b08:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005b0c:	001031ac 	add.w	$r12,$r13,$r12
1c005b10:	2800018c 	ld.b	$r12,$r12,0
1c005b14:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c005ac4 <OLED_ShowString+0x30>
1c005b18:	03400000 	andi	$r0,$r0,0x0
1c005b1c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005b20:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005b24:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005b28:	4c000020 	jirl	$r0,$r1,0

1c005b2c <Queue_NoUse>:
Queue_NoUse():
1c005b2c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005b30:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005b34:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005b38:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005b3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b40:	44000d80 	bnez	$r12,12(0xc) # 1c005b4c <Queue_NoUse+0x20>
1c005b44:	0015000c 	move	$r12,$r0
1c005b48:	50004000 	b	64(0x40) # 1c005b88 <Queue_NoUse+0x5c>
1c005b4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b50:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005b54:	0015018d 	move	$r13,$r12
1c005b58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b5c:	2a40018c 	ld.hu	$r12,$r12,0
1c005b60:	001131ac 	sub.w	$r12,$r13,$r12
1c005b64:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c005b68:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005b6c:	0020b1ae 	mod.w	$r14,$r13,$r12
1c005b70:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005b78 <Queue_NoUse+0x4c>
1c005b74:	002a0007 	break	0x7
1c005b78:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005b7c:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c005b80:	001131ac 	sub.w	$r12,$r13,$r12
1c005b84:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005b88:	00150184 	move	$r4,$r12
1c005b8c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005b90:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005b94:	4c000020 	jirl	$r0,$r1,0

1c005b98 <Queue_Wirte>:
Queue_Wirte():
1c005b98:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005b9c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005ba0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005ba4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005ba8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005bac:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005bb0:	001500cc 	move	$r12,$r6
1c005bb4:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005bb8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005bbc:	44000d80 	bnez	$r12,12(0xc) # 1c005bc8 <Queue_Wirte+0x30>
1c005bc0:	0015000c 	move	$r12,$r0
1c005bc4:	50009c00 	b	156(0x9c) # 1c005c60 <Queue_Wirte+0xc8>
1c005bc8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005bcc:	57ff63ff 	bl	-160(0xfffff60) # 1c005b2c <Queue_NoUse>
1c005bd0:	0015008c 	move	$r12,$r4
1c005bd4:	0015018d 	move	$r13,$r12
1c005bd8:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005bdc:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c005be8 <Queue_Wirte+0x50>
1c005be0:	0015000c 	move	$r12,$r0
1c005be4:	50007c00 	b	124(0x7c) # 1c005c60 <Queue_Wirte+0xc8>
1c005be8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005bec:	50006400 	b	100(0x64) # 1c005c50 <Queue_Wirte+0xb8>
1c005bf0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005bf4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005bf8:	001031ac 	add.w	$r12,$r13,$r12
1c005bfc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005c00:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c005c04:	001501ae 	move	$r14,$r13
1c005c08:	2a00018d 	ld.bu	$r13,$r12,0
1c005c0c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c10:	0010398c 	add.w	$r12,$r12,$r14
1c005c14:	2900118d 	st.b	$r13,$r12,4(0x4)
1c005c18:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c1c:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005c20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c24:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c28:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005c2c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005c30:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005c38 <Queue_Wirte+0xa0>
1c005c34:	002a0007 	break	0x7
1c005c38:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005c3c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c40:	2940098d 	st.h	$r13,$r12,2(0x2)
1c005c44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c4c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005c50:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005c54:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005c58:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c005bf0 <Queue_Wirte+0x58>
1c005c5c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005c60:	00150184 	move	$r4,$r12
1c005c64:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005c68:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005c6c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005c70:	4c000020 	jirl	$r0,$r1,0

1c005c74 <AHT10_Init>:
AHT10_Init():
1c005c74:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005c78:	29803061 	st.w	$r1,$r3,12(0xc)
1c005c7c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005c80:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005c84:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c88:	028e618c 	addi.w	$r12,$r12,920(0x398)
1c005c8c:	2a00018c 	ld.bu	$r12,$r12,0
1c005c90:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c94:	00150005 	move	$r5,$r0
1c005c98:	00150184 	move	$r4,$r12
1c005c9c:	57b9c7ff 	bl	-17980(0xfffb9c4) # 1c001660 <gpio_pin_remap>
1c005ca0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ca4:	028df18c 	addi.w	$r12,$r12,892(0x37c)
1c005ca8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005cac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005cb0:	00150005 	move	$r5,$r0
1c005cb4:	00150184 	move	$r4,$r12
1c005cb8:	57b9abff 	bl	-18008(0xfffb9a8) # 1c001660 <gpio_pin_remap>
1c005cbc:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005cc0:	028d8084 	addi.w	$r4,$r4,864(0x360)
1c005cc4:	57d3efff 	bl	-11284(0xfffd3ec) # 1c0030b0 <MyI2C_Start>
1c005cc8:	0281c005 	addi.w	$r5,$r0,112(0x70)
1c005ccc:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005cd0:	028d4084 	addi.w	$r4,$r4,848(0x350)
1c005cd4:	57d61fff 	bl	-10724(0xfffd61c) # 1c0032f0 <MyI2C_SendData>
1c005cd8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005cdc:	028d1084 	addi.w	$r4,$r4,836(0x344)
1c005ce0:	57d56bff 	bl	-10904(0xfffd568) # 1c003248 <MyI2C_ReceiveAck>
1c005ce4:	02838405 	addi.w	$r5,$r0,225(0xe1)
1c005ce8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005cec:	028cd084 	addi.w	$r4,$r4,820(0x334)
1c005cf0:	57d603ff 	bl	-10752(0xfffd600) # 1c0032f0 <MyI2C_SendData>
1c005cf4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005cf8:	028ca084 	addi.w	$r4,$r4,808(0x328)
1c005cfc:	57d54fff 	bl	-10932(0xfffd54c) # 1c003248 <MyI2C_ReceiveAck>
1c005d00:	02802005 	addi.w	$r5,$r0,8(0x8)
1c005d04:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d08:	028c6084 	addi.w	$r4,$r4,792(0x318)
1c005d0c:	57d5e7ff 	bl	-10780(0xfffd5e4) # 1c0032f0 <MyI2C_SendData>
1c005d10:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d14:	028c3084 	addi.w	$r4,$r4,780(0x30c)
1c005d18:	57d533ff 	bl	-10960(0xfffd530) # 1c003248 <MyI2C_ReceiveAck>
1c005d1c:	00150005 	move	$r5,$r0
1c005d20:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d24:	028bf084 	addi.w	$r4,$r4,764(0x2fc)
1c005d28:	57d5cbff 	bl	-10808(0xfffd5c8) # 1c0032f0 <MyI2C_SendData>
1c005d2c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d30:	028bc084 	addi.w	$r4,$r4,752(0x2f0)
1c005d34:	57d517ff 	bl	-10988(0xfffd514) # 1c003248 <MyI2C_ReceiveAck>
1c005d38:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d3c:	028b9084 	addi.w	$r4,$r4,740(0x2e4)
1c005d40:	57d3fbff 	bl	-11272(0xfffd3f8) # 1c003138 <MyI2C_Stop>
1c005d44:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c005d48:	57d17fff 	bl	-11908(0xfffd17c) # 1c002ec4 <delay_ms>
1c005d4c:	03400000 	andi	$r0,$r0,0x0
1c005d50:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005d54:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005d58:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005d5c:	4c000020 	jirl	$r0,$r1,0

1c005d60 <Lora_Init>:
Lora_Init():
1c005d60:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005d64:	29803061 	st.w	$r1,$r3,12(0xc)
1c005d68:	29802076 	st.w	$r22,$r3,8(0x8)
1c005d6c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005d70:	1400004c 	lu12i.w	$r12,2(0x2)
1c005d74:	03960184 	ori	$r4,$r12,0x580
1c005d78:	57c603ff 	bl	-14848(0xfffc600) # 1c002378 <Uart1_init>
1c005d7c:	03400000 	andi	$r0,$r0,0x0
1c005d80:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005d84:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005d88:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005d8c:	4c000020 	jirl	$r0,$r1,0

1c005d90 <Lora_Send>:
Lora_Send():
1c005d90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005d94:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005d98:	29806076 	st.w	$r22,$r3,24(0x18)
1c005d9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005da0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005da4:	001500ac 	move	$r12,$r5
1c005da8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c005dac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005db0:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c005db4:	2900018d 	st.b	$r13,$r12,0
1c005db8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005dbc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005dc0:	0280880d 	addi.w	$r13,$r0,34(0x22)
1c005dc4:	2900018d 	st.b	$r13,$r12,0
1c005dc8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c005dcc:	00150186 	move	$r6,$r12
1c005dd0:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c005dd4:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c005dd8:	57c627ff 	bl	-14812(0xfffc624) # 1c0023fc <Uart_W_Bytes>
1c005ddc:	03400000 	andi	$r0,$r0,0x0
1c005de0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005de4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005de8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005dec:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c005e00 <msg_wakeup>:
msg_wakeup():
1c005e00:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01c960 <_sidata+0x15b28>
1c005e04:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c005e09 <hexdecarr>:
hexdecarr():
1c005e09:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c005e0d:	37363534 	0x37363534
1c005e11:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfebf49 <_start-0x140b7>
1c005e15:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfec379 <_start-0x13c87>
1c005e19:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005e1d:	79654b0a 	0x79654b0a
1c005e21:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c005e25:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c005e29:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c005e2d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01ce9d <_sidata+0x16065>
1c005e31:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffcd91 <_start-0x326f>
1c005e35:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c005e39:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffcd9d <_start-0x3263>
1c005e3d:	72616220 	0x72616220
1c005e41:	0a0d216b 	0x0a0d216b
1c005e45:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005e49:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffbfbd <_start-0x4043>
1c005e4d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c005e51:	98000a0d 	0x98000a0d
1c005e55:	b41c001c 	0xb41c001c
1c005e59:	b41c001d 	0xb41c001d
1c005e5d:	b41c001d 	0xb41c001d
1c005e61:	b41c001d 	0xb41c001d
1c005e65:	b41c001d 	0xb41c001d
1c005e69:	b41c001d 	0xb41c001d
1c005e6d:	b41c001d 	0xb41c001d
1c005e71:	b41c001d 	0xb41c001d
1c005e75:	b41c001d 	0xb41c001d
1c005e79:	b41c001d 	0xb41c001d
1c005e7d:	b01c001d 	0xb01c001d
1c005e81:	381c001c 	stx.d	$r28,$r0,$r0
1c005e85:	381c001d 	stx.d	$r29,$r0,$r0
1c005e89:	381c001d 	stx.d	$r29,$r0,$r0
1c005e8d:	381c001d 	stx.d	$r29,$r0,$r0
1c005e91:	381c001d 	stx.d	$r29,$r0,$r0
1c005e95:	381c001d 	stx.d	$r29,$r0,$r0
1c005e99:	381c001d 	stx.d	$r29,$r0,$r0
1c005e9d:	381c001d 	stx.d	$r29,$r0,$r0
1c005ea1:	381c001d 	stx.d	$r29,$r0,$r0
1c005ea5:	b41c001d 	0xb41c001d
1c005ea9:	b41c001d 	0xb41c001d
1c005ead:	b41c001d 	0xb41c001d
1c005eb1:	b41c001d 	0xb41c001d
1c005eb5:	b41c001d 	0xb41c001d
1c005eb9:	b41c001d 	0xb41c001d
1c005ebd:	b41c001d 	0xb41c001d
1c005ec1:	b41c001d 	0xb41c001d
1c005ec5:	b41c001d 	0xb41c001d
1c005ec9:	b41c001d 	0xb41c001d
1c005ecd:	b41c001d 	0xb41c001d
1c005ed1:	b41c001d 	0xb41c001d
1c005ed5:	b41c001d 	0xb41c001d
1c005ed9:	b41c001d 	0xb41c001d
1c005edd:	b41c001d 	0xb41c001d
1c005ee1:	b41c001d 	0xb41c001d
1c005ee5:	b41c001d 	0xb41c001d
1c005ee9:	b41c001d 	0xb41c001d
1c005eed:	b41c001d 	0xb41c001d
1c005ef1:	b41c001d 	0xb41c001d
1c005ef5:	b41c001d 	0xb41c001d
1c005ef9:	b41c001d 	0xb41c001d
1c005efd:	b41c001d 	0xb41c001d
1c005f01:	b41c001d 	0xb41c001d
1c005f05:	b41c001d 	0xb41c001d
1c005f09:	b41c001d 	0xb41c001d
1c005f0d:	b41c001d 	0xb41c001d
1c005f11:	b41c001d 	0xb41c001d
1c005f15:	b41c001d 	0xb41c001d
1c005f19:	b41c001d 	0xb41c001d
1c005f1d:	b41c001d 	0xb41c001d
1c005f21:	b41c001d 	0xb41c001d
1c005f25:	b41c001d 	0xb41c001d
1c005f29:	b41c001d 	0xb41c001d
1c005f2d:	b41c001d 	0xb41c001d
1c005f31:	b41c001d 	0xb41c001d
1c005f35:	b41c001d 	0xb41c001d
1c005f39:	b41c001d 	0xb41c001d
1c005f3d:	b41c001d 	0xb41c001d
1c005f41:	b41c001d 	0xb41c001d
1c005f45:	281c001d 	ld.b	$r29,$r0,1792(0x700)
1c005f49:	501c001c 	b	7347200(0x701c00) # 1c707b49 <_sidata+0x700d11>
1c005f4d:	b81c001b 	0xb81c001b
1c005f51:	b41c001b 	0xb41c001b
1c005f55:	b41c001d 	0xb41c001d
1c005f59:	b41c001d 	0xb41c001d
1c005f5d:	b41c001d 	0xb41c001d
1c005f61:	b41c001d 	0xb41c001d
1c005f65:	b41c001d 	0xb41c001d
1c005f69:	b41c001d 	0xb41c001d
1c005f6d:	b41c001d 	0xb41c001d
1c005f71:	b41c001d 	0xb41c001d
1c005f75:	b41c001d 	0xb41c001d
1c005f79:	f01c001d 	0xf01c001d
1c005f7d:	601c001b 	blt	$r0,$r27,7168(0x1c00) # 1c007b7d <_sidata+0xd45>
1c005f81:	b41c001c 	0xb41c001c
1c005f85:	b41c001d 	0xb41c001d
1c005f89:	241c001d 	ldptr.w	$r29,$r0,7168(0x1c00)
1c005f8d:	b41c001b 	0xb41c001b
1c005f91:	801c001d 	0x801c001d
1c005f95:	b41c001b 	0xb41c001b
1c005f99:	b41c001d 	0xb41c001d
1c005f9d:	601c001d 	blt	$r0,$r29,7168(0x1c00) # 1c007b9d <_sidata+0xd65>
1c005fa1:	0a1c001c 	xvfmadd.s	$xr28,$xr0,$xr0,$xr24
1c005fa5:	7c000000 	0x7c000000
1c005fa9:	7c7c7c7c 	0x7c7c7c7c
1c005fad:	7c7c7c7c 	0x7c7c7c7c
1c005fb1:	7c7c7c7c 	0x7c7c7c7c
1c005fb5:	7c7c7c7c 	0x7c7c7c7c
1c005fb9:	7c7c7c7c 	0x7c7c7c7c
1c005fbd:	7c7c7c7c 	0x7c7c7c7c
1c005fc1:	7c7c7c7c 	0x7c7c7c7c
1c005fc5:	7c7c7c7c 	0x7c7c7c7c
1c005fc9:	7c7c7c7c 	0x7c7c7c7c
1c005fcd:	7c7c7c7c 	0x7c7c7c7c
1c005fd1:	7c7c7c7c 	0x7c7c7c7c
1c005fd5:	7c7c7c7c 	0x7c7c7c7c
1c005fd9:	7c7c7c7c 	0x7c7c7c7c
1c005fdd:	7c7c7c7c 	0x7c7c7c7c
1c005fe1:	7c7c7c7c 	0x7c7c7c7c
1c005fe5:	7c7c7c7c 	0x7c7c7c7c
1c005fe9:	7c7c7c7c 	0x7c7c7c7c
1c005fed:	7c7c7c7c 	0x7c7c7c7c
1c005ff1:	7c7c7c7c 	0x7c7c7c7c
1c005ff5:	7c7c7c7c 	0x7c7c7c7c
1c005ff9:	7c7c7c7c 	0x7c7c7c7c
1c005ffd:	7c7c7c7c 	0x7c7c7c7c
1c006001:	7c7c7c7c 	0x7c7c7c7c
1c006005:	7c7c7c7c 	0x7c7c7c7c
1c006009:	7c00000a 	0x7c00000a
1c00600d:	7c20207c 	0x7c20207c
1c006011:	7c7c7c7c 	0x7c7c7c7c
1c006015:	7c7c7c7c 	0x7c7c7c7c
1c006019:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00601d:	7c202020 	0x7c202020
1c006021:	7c7c7c7c 	0x7c7c7c7c
1c006025:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006029:	7c202020 	0x7c202020
1c00602d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006031:	7c7c2020 	0x7c7c2020
1c006035:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006039:	7c7c7c20 	0x7c7c7c20
1c00603d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006041:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006045:	7c7c7c7c 	0x7c7c7c7c
1c006049:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00604d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006051:	7c7c7c7c 	0x7c7c7c7c
1c006055:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006059:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00605d:	7c7c7c7c 	0x7c7c7c7c
1c006061:	7c202020 	0x7c202020
1c006065:	7c7c7c7c 	0x7c7c7c7c
1c006069:	7c7c2020 	0x7c7c2020
1c00606d:	7c00000a 	0x7c00000a
1c006071:	7c20207c 	0x7c20207c
1c006075:	7c7c7c7c 	0x7c7c7c7c
1c006079:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00607d:	7c7c2020 	0x7c7c2020
1c006081:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006085:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006089:	7c7c2020 	0x7c7c2020
1c00608d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006091:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006095:	7c202020 	0x7c202020
1c006099:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00609d:	7c7c7c20 	0x7c7c7c20
1c0060a1:	7c20207c 	0x7c20207c
1c0060a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060a9:	7c7c7c20 	0x7c7c7c20
1c0060ad:	7c202020 	0x7c202020
1c0060b1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060b5:	7c7c7c20 	0x7c7c7c20
1c0060b9:	7c202020 	0x7c202020
1c0060bd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060c1:	7c7c7c20 	0x7c7c7c20
1c0060c5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0060c9:	7c7c7c7c 	0x7c7c7c7c
1c0060cd:	7c7c2020 	0x7c7c2020
1c0060d1:	7c00000a 	0x7c00000a
1c0060d5:	7c20207c 	0x7c20207c
1c0060d9:	7c7c7c7c 	0x7c7c7c7c
1c0060dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060e1:	7c7c7c20 	0x7c7c7c20
1c0060e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060e9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060ed:	7c7c7c20 	0x7c7c7c20
1c0060f1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060f5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0060f9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c0060fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006101:	7c7c7c20 	0x7c7c7c20
1c006105:	7c7c2020 	0x7c7c2020
1c006109:	7c7c7c7c 	0x7c7c7c7c
1c00610d:	7c7c7c7c 	0x7c7c7c7c
1c006111:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006115:	7c7c7c20 	0x7c7c7c20
1c006119:	7c7c7c7c 	0x7c7c7c7c
1c00611d:	7c7c2020 	0x7c7c2020
1c006121:	7c7c7c7c 	0x7c7c7c7c
1c006125:	7c7c7c20 	0x7c7c7c20
1c006129:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00612d:	7c7c7c20 	0x7c7c7c20
1c006131:	7c7c2020 	0x7c7c2020
1c006135:	7c00000a 	0x7c00000a
1c006139:	7c20207c 	0x7c20207c
1c00613d:	7c7c7c7c 	0x7c7c7c7c
1c006141:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006145:	7c7c7c20 	0x7c7c7c20
1c006149:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00614d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006151:	7c7c7c20 	0x7c7c7c20
1c006155:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006159:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00615d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006161:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006165:	7c7c7c20 	0x7c7c7c20
1c006169:	7c7c2020 	0x7c7c2020
1c00616d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006171:	7c7c7c20 	0x7c7c7c20
1c006175:	7c7c7c7c 	0x7c7c7c7c
1c006179:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00617d:	7c7c7c7c 	0x7c7c7c7c
1c006181:	7c7c2020 	0x7c7c2020
1c006185:	7c7c7c7c 	0x7c7c7c7c
1c006189:	7c7c7c20 	0x7c7c7c20
1c00618d:	7c7c2020 	0x7c7c2020
1c006191:	7c7c2020 	0x7c7c2020
1c006195:	7c7c2020 	0x7c7c2020
1c006199:	7c00000a 	0x7c00000a
1c00619d:	7c20207c 	0x7c20207c
1c0061a1:	7c7c7c7c 	0x7c7c7c7c
1c0061a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061a9:	7c7c7c20 	0x7c7c7c20
1c0061ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061b1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061b5:	7c7c7c20 	0x7c7c7c20
1c0061b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061bd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061c1:	7c7c7c20 	0x7c7c7c20
1c0061c5:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0061c9:	7c7c7c20 	0x7c7c7c20
1c0061cd:	7c7c2020 	0x7c7c2020
1c0061d1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061d5:	7c7c7c20 	0x7c7c7c20
1c0061d9:	7c7c7c7c 	0x7c7c7c7c
1c0061dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0061e1:	7c7c7c20 	0x7c7c7c20
1c0061e5:	7c7c2020 	0x7c7c2020
1c0061e9:	7c7c7c7c 	0x7c7c7c7c
1c0061ed:	7c7c7c20 	0x7c7c7c20
1c0061f1:	7c7c2020 	0x7c7c2020
1c0061f5:	7c20207c 	0x7c20207c
1c0061f9:	7c7c2020 	0x7c7c2020
1c0061fd:	7c00000a 	0x7c00000a
1c006201:	7c20207c 	0x7c20207c
1c006205:	7c7c7c7c 	0x7c7c7c7c
1c006209:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00620d:	7c7c2020 	0x7c7c2020
1c006211:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006215:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006219:	7c7c2020 	0x7c7c2020
1c00621d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006221:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006225:	7c7c7c20 	0x7c7c7c20
1c006229:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00622d:	7c7c7c20 	0x7c7c7c20
1c006231:	7c202020 	0x7c202020
1c006235:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006239:	7c7c7c20 	0x7c7c7c20
1c00623d:	7c202020 	0x7c202020
1c006241:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006245:	7c7c7c7c 	0x7c7c7c7c
1c006249:	7c202020 	0x7c202020
1c00624d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006251:	7c7c7c20 	0x7c7c7c20
1c006255:	7c7c2020 	0x7c7c2020
1c006259:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00625d:	7c7c2020 	0x7c7c2020
1c006261:	7c00000a 	0x7c00000a
1c006265:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006269:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00626d:	7c7c7c7c 	0x7c7c7c7c
1c006271:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006275:	7c202020 	0x7c202020
1c006279:	7c7c7c7c 	0x7c7c7c7c
1c00627d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006281:	7c202020 	0x7c202020
1c006285:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006289:	7c7c7c20 	0x7c7c7c20
1c00628d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006291:	7c7c7c20 	0x7c7c7c20
1c006295:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006299:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00629d:	7c7c7c7c 	0x7c7c7c7c
1c0062a1:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0062a5:	7c202020 	0x7c202020
1c0062a9:	7c7c7c7c 	0x7c7c7c7c
1c0062ad:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0062b1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0062b5:	7c7c7c7c 	0x7c7c7c7c
1c0062b9:	7c7c2020 	0x7c7c2020
1c0062bd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0062c1:	7c7c2020 	0x7c7c2020
1c0062c5:	7c00000a 	0x7c00000a
1c0062c9:	7c7c7c7c 	0x7c7c7c7c
1c0062cd:	7c7c7c7c 	0x7c7c7c7c
1c0062d1:	7c7c7c7c 	0x7c7c7c7c
1c0062d5:	7c7c7c7c 	0x7c7c7c7c
1c0062d9:	7c7c7c7c 	0x7c7c7c7c
1c0062dd:	7c7c7c7c 	0x7c7c7c7c
1c0062e1:	7c7c7c7c 	0x7c7c7c7c
1c0062e5:	7c7c7c7c 	0x7c7c7c7c
1c0062e9:	7c7c7c7c 	0x7c7c7c7c
1c0062ed:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c0062f1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c0062f5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c0062f9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c0062fd:	7c7c7c5d 	0x7c7c7c5d
1c006301:	7c7c7c7c 	0x7c7c7c7c
1c006305:	7c7c7c7c 	0x7c7c7c7c
1c006309:	7c7c7c7c 	0x7c7c7c7c
1c00630d:	7c7c7c7c 	0x7c7c7c7c
1c006311:	7c7c7c7c 	0x7c7c7c7c
1c006315:	7c7c7c7c 	0x7c7c7c7c
1c006319:	7c7c7c7c 	0x7c7c7c7c
1c00631d:	7c7c7c7c 	0x7c7c7c7c
1c006321:	7c7c7c7c 	0x7c7c7c7c
1c006325:	7c7c7c7c 	0x7c7c7c7c
1c006329:	0900000a 	0x0900000a
1c00632d:	0a006425 	0x0a006425
1c006331:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006335:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c006339:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00633d:	0050550a 	0x0050550a
1c006341:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006345:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00d891 <_sidata+0x6a59>
1c006349:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00634d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c006351:	756f430a 	0x756f430a
1c006355:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c006359:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00635d:	3030090a 	0x3030090a
1c006361:	09313009 	0x09313009
1c006365:	30093230 	0x30093230
1c006369:	34300933 	0x34300933
1c00636d:	09353009 	0x09353009
1c006371:	30093630 	0x30093630
1c006375:	38300937 	fldx.s	$f23,$r9,$r2
1c006379:	09393009 	0x09393009
1c00637d:	31093031 	0x31093031
1c006381:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c006385:	746e630a 	0x746e630a
1c006389:	09000000 	0x09000000
1c00638d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c006391:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006395:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c006399:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00c4ed <_sidata+0x56b5>
1c00639d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0063a1:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfed8f1 <_start-0x1270f>
1c0063a5:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c0063a9:	09000000 	0x09000000
1c0063ad:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c0063b1:	09000000 	0x09000000
1c0063b5:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c0063b9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0063bd:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c0063c1:	3a515249 	0x3a515249
1c0063c5:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c0063c9:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffd23d <_start-0x2dc3>
1c0063cd:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c0063d1:	0d3e2020 	0x0d3e2020
1c0063d5:	0a00000a 	0x0a00000a
1c0063d9:	2e2e2e2e 	0x2e2e2e2e
1c0063dd:	2e2e2e2e 	0x2e2e2e2e
1c0063e1:	2e2e2e2e 	0x2e2e2e2e
1c0063e5:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ab335 <_sidata+0x3a44fd>
1c0063e9:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c0063ed:	2e2e2e54 	0x2e2e2e54
1c0063f1:	2e2e2e2e 	0x2e2e2e2e
1c0063f5:	2e2e2e2e 	0x2e2e2e2e
1c0063f9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0063fd:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c006401:	2e2e2e0a 	0x2e2e2e0a
1c006405:	2e2e2e2e 	0x2e2e2e2e
1c006409:	2e2e2e2e 	0x2e2e2e2e
1c00640d:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39a639 <_sidata+0x393801>
1c006411:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1aa6d <_start-0x2e5593>
1c006415:	2e2e4c49 	0x2e2e4c49
1c006419:	2e2e2e2e 	0x2e2e2e2e
1c00641d:	2e2e2e2e 	0x2e2e2e2e
1c006421:	2e2e2e2e 	0x2e2e2e2e
1c006425:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c006429:	2e2e2e0a 	0x2e2e2e0a
1c00642d:	2e2e2e2e 	0x2e2e2e2e
1c006431:	2e2e2e2e 	0x2e2e2e2e
1c006435:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38a561 <_sidata+0x383729>
1c006439:	2e2e2e43 	0x2e2e2e43
1c00643d:	2e2e2e2e 	0x2e2e2e2e
1c006441:	2e2e2e2e 	0x2e2e2e2e
1c006445:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c006449:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b6449 <_sidata+0x2af611>
1c00644d:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c006451:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01d1b9 <_sidata+0x16381>
1c006455:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00c775 <_sidata+0x593d>
1c006459:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00645d:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01d8c9 <_sidata+0x16a91>
1c006461:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c006465:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c006469:	 	beqz	$r0,2621440(0x280000) # 1c286469 <_sidata+0x27f631>

1c00646c <Ext_IrqHandle>:
1c00646c:	1c004040 	pcaddu12i	$r0,514(0x202)
1c006470:	1c00408c 	pcaddu12i	$r12,516(0x204)
1c006474:	1c0040d8 	pcaddu12i	$r24,518(0x206)
1c006478:	1c004124 	pcaddu12i	$r4,521(0x209)
1c00647c:	1c004170 	pcaddu12i	$r16,523(0x20b)
1c006480:	1c0041bc 	pcaddu12i	$r28,525(0x20d)
1c006484:	1c004208 	pcaddu12i	$r8,528(0x210)
1c006488:	1c004254 	pcaddu12i	$r20,530(0x212)
1c00648c:	1c0042a0 	pcaddu12i	$r0,533(0x215)
1c006490:	1c0042ec 	pcaddu12i	$r12,535(0x217)
1c006494:	1c004338 	pcaddu12i	$r24,537(0x219)
1c006498:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c00649c:	1c0043d0 	pcaddu12i	$r16,542(0x21e)
1c0064a0:	1c00441c 	pcaddu12i	$r28,544(0x220)
1c0064a4:	1c004468 	pcaddu12i	$r8,547(0x223)
1c0064a8:	1c0044b4 	pcaddu12i	$r20,549(0x225)
1c0064ac:	1c004500 	pcaddu12i	$r0,552(0x228)
1c0064b0:	1c00454c 	pcaddu12i	$r12,554(0x22a)
1c0064b4:	1c004598 	pcaddu12i	$r24,556(0x22c)
1c0064b8:	1c0045e4 	pcaddu12i	$r4,559(0x22f)
1c0064bc:	1c004630 	pcaddu12i	$r16,561(0x231)
1c0064c0:	1c00467c 	pcaddu12i	$r28,563(0x233)
1c0064c4:	1c0046c8 	pcaddu12i	$r8,566(0x236)
1c0064c8:	1c004714 	pcaddu12i	$r20,568(0x238)
1c0064cc:	1c004760 	pcaddu12i	$r0,571(0x23b)
1c0064d0:	1c0047ac 	pcaddu12i	$r12,573(0x23d)
1c0064d4:	1c0047f8 	pcaddu12i	$r24,575(0x23f)
1c0064d8:	1c004844 	pcaddu12i	$r4,578(0x242)
1c0064dc:	1c004890 	pcaddu12i	$r16,580(0x244)
1c0064e0:	1c0048dc 	pcaddu12i	$r28,582(0x246)
1c0064e4:	1c004928 	pcaddu12i	$r8,585(0x249)
1c0064e8:	1c004974 	pcaddu12i	$r20,587(0x24b)
1c0064ec:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c0064f0:	1c004c08 	pcaddu12i	$r8,608(0x260)
1c0064f4:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c0064f8:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c0064fc:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c006500:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c006504:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c006508:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c00650c:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c006510:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c006514:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c006518:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c00651c:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c006520:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c006524:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c006528:	1c004c58 	pcaddu12i	$r24,610(0x262)
1c00652c:	1c004c24 	pcaddu12i	$r4,609(0x261)

1c006530 <__FUNCTION__.1646>:
1c006530:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9a8 <_sidata+0x16b70>
1c006534:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d598 <_sidata+0x16760>
1c006538:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff9598 <_start-0x6a68>
1c00653c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6ac <_start-0x2954>
1c006540:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3a0 <_sidata+0x6568>
1c006544:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006548 <__FUNCTION__.1650>:
1c006548:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9c0 <_sidata+0x16b88>
1c00654c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5b0 <_sidata+0x16778>
1c006550:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff96b0 <_start-0x6950>
1c006554:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6c4 <_start-0x293c>
1c006558:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3b8 <_sidata+0x6580>
1c00655c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006560 <__FUNCTION__.1654>:
1c006560:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9d8 <_sidata+0x16ba0>
1c006564:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5c8 <_sidata+0x16790>
1c006568:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff97c8 <_start-0x6838>
1c00656c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6dc <_start-0x2924>
1c006570:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3d0 <_sidata+0x6598>
1c006574:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006578 <__FUNCTION__.1658>:
1c006578:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9f0 <_sidata+0x16bb8>
1c00657c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5e0 <_sidata+0x167a8>
1c006580:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff98e0 <_start-0x6720>
1c006584:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6f4 <_start-0x290c>
1c006588:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3e8 <_sidata+0x65b0>
1c00658c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006590 <__FUNCTION__.1662>:
1c006590:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da08 <_sidata+0x16bd0>
1c006594:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5f8 <_sidata+0x167c0>
1c006598:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff99f8 <_start-0x6608>
1c00659c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd70c <_start-0x28f4>
1c0065a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d400 <_sidata+0x65c8>
1c0065a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065a8 <__FUNCTION__.1666>:
1c0065a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da20 <_sidata+0x16be8>
1c0065ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d610 <_sidata+0x167d8>
1c0065b0:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff9b10 <_start-0x64f0>
1c0065b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd724 <_start-0x28dc>
1c0065b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d418 <_sidata+0x65e0>
1c0065bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065c0 <__FUNCTION__.1670>:
1c0065c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da38 <_sidata+0x16c00>
1c0065c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d628 <_sidata+0x167f0>
1c0065c8:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff9c28 <_start-0x63d8>
1c0065cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd73c <_start-0x28c4>
1c0065d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d430 <_sidata+0x65f8>
1c0065d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065d8 <__FUNCTION__.1674>:
1c0065d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da50 <_sidata+0x16c18>
1c0065dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d640 <_sidata+0x16808>
1c0065e0:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff9d40 <_start-0x62c0>
1c0065e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd754 <_start-0x28ac>
1c0065e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d448 <_sidata+0x6610>
1c0065ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065f0 <__FUNCTION__.1678>:
1c0065f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da68 <_sidata+0x16c30>
1c0065f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d658 <_sidata+0x16820>
1c0065f8:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff9658 <_start-0x69a8>
1c0065fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd76c <_start-0x2894>
1c006600:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d460 <_sidata+0x6628>
1c006604:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006608 <__FUNCTION__.1682>:
1c006608:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da80 <_sidata+0x16c48>
1c00660c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d670 <_sidata+0x16838>
1c006610:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff9770 <_start-0x6890>
1c006614:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd784 <_start-0x287c>
1c006618:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d478 <_sidata+0x6640>
1c00661c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006620 <__FUNCTION__.1686>:
1c006620:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da98 <_sidata+0x16c60>
1c006624:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d688 <_sidata+0x16850>
1c006628:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff9888 <_start-0x6778>
1c00662c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd79c <_start-0x2864>
1c006630:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d490 <_sidata+0x6658>
1c006634:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006638 <__FUNCTION__.1690>:
1c006638:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dab0 <_sidata+0x16c78>
1c00663c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6a0 <_sidata+0x16868>
1c006640:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff99a0 <_start-0x6660>
1c006644:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7b4 <_start-0x284c>
1c006648:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4a8 <_sidata+0x6670>
1c00664c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006650 <__FUNCTION__.1694>:
1c006650:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dac8 <_sidata+0x16c90>
1c006654:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6b8 <_sidata+0x16880>
1c006658:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff9ab8 <_start-0x6548>
1c00665c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7cc <_start-0x2834>
1c006660:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4c0 <_sidata+0x6688>
1c006664:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006668 <__FUNCTION__.1698>:
1c006668:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dae0 <_sidata+0x16ca8>
1c00666c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6d0 <_sidata+0x16898>
1c006670:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff9bd0 <_start-0x6430>
1c006674:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7e4 <_start-0x281c>
1c006678:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4d8 <_sidata+0x66a0>
1c00667c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006680 <__FUNCTION__.1702>:
1c006680:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01daf8 <_sidata+0x16cc0>
1c006684:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6e8 <_sidata+0x168b0>
1c006688:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff9ce8 <_start-0x6318>
1c00668c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7fc <_start-0x2804>
1c006690:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4f0 <_sidata+0x66b8>
1c006694:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006698 <__FUNCTION__.1706>:
1c006698:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db10 <_sidata+0x16cd8>
1c00669c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d700 <_sidata+0x168c8>
1c0066a0:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff9e00 <_start-0x6200>
1c0066a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd814 <_start-0x27ec>
1c0066a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d508 <_sidata+0x66d0>
1c0066ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0066b0 <__FUNCTION__.1710>:
1c0066b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db28 <_sidata+0x16cf0>
1c0066b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d718 <_sidata+0x168e0>
1c0066b8:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff9718 <_start-0x68e8>
1c0066bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd82c <_start-0x27d4>
1c0066c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d520 <_sidata+0x66e8>
1c0066c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0066c8 <__FUNCTION__.1714>:
1c0066c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db40 <_sidata+0x16d08>
1c0066cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d730 <_sidata+0x168f8>
1c0066d0:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff9830 <_start-0x67d0>
1c0066d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd844 <_start-0x27bc>
1c0066d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d538 <_sidata+0x6700>
1c0066dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0066e0 <__FUNCTION__.1718>:
1c0066e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db58 <_sidata+0x16d20>
1c0066e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d748 <_sidata+0x16910>
1c0066e8:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff9948 <_start-0x66b8>
1c0066ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd85c <_start-0x27a4>
1c0066f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d550 <_sidata+0x6718>
1c0066f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0066f8 <__FUNCTION__.1722>:
1c0066f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db70 <_sidata+0x16d38>
1c0066fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d760 <_sidata+0x16928>
1c006700:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff9a60 <_start-0x65a0>
1c006704:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd874 <_start-0x278c>
1c006708:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d568 <_sidata+0x6730>
1c00670c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006710 <__FUNCTION__.1726>:
1c006710:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01db88 <_sidata+0x16d50>
1c006714:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d778 <_sidata+0x16940>
1c006718:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff9b78 <_start-0x6488>
1c00671c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd88c <_start-0x2774>
1c006720:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d580 <_sidata+0x6748>
1c006724:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006728 <__FUNCTION__.1730>:
1c006728:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dba0 <_sidata+0x16d68>
1c00672c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d790 <_sidata+0x16958>
1c006730:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff9c90 <_start-0x6370>
1c006734:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd8a4 <_start-0x275c>
1c006738:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d598 <_sidata+0x6760>
1c00673c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006740 <__FUNCTION__.1734>:
1c006740:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dbb8 <_sidata+0x16d80>
1c006744:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d7a8 <_sidata+0x16970>
1c006748:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff9da8 <_start-0x6258>
1c00674c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd8bc <_start-0x2744>
1c006750:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d5b0 <_sidata+0x6778>
1c006754:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006758 <__FUNCTION__.1738>:
1c006758:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dbd0 <_sidata+0x16d98>
1c00675c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d7c0 <_sidata+0x16988>
1c006760:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff9ec0 <_start-0x6140>
1c006764:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd8d4 <_start-0x272c>
1c006768:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d5c8 <_sidata+0x6790>
1c00676c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006770 <__FUNCTION__.1742>:
1c006770:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dbe8 <_sidata+0x16db0>
1c006774:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d7d8 <_sidata+0x169a0>
1c006778:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff97dc <_start-0x6824>
1c00677c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd8ec <_start-0x2714>
1c006780:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d5e0 <_sidata+0x67a8>
1c006784:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006788 <__FUNCTION__.1746>:
1c006788:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc00 <_sidata+0x16dc8>
1c00678c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d7f0 <_sidata+0x169b8>
1c006790:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff98f4 <_start-0x670c>
1c006794:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd904 <_start-0x26fc>
1c006798:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d5f8 <_sidata+0x67c0>
1c00679c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0067a0 <__FUNCTION__.1750>:
1c0067a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc18 <_sidata+0x16de0>
1c0067a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d808 <_sidata+0x169d0>
1c0067a8:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff9a0c <_start-0x65f4>
1c0067ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd91c <_start-0x26e4>
1c0067b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d610 <_sidata+0x67d8>
1c0067b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0067b8 <__FUNCTION__.1754>:
1c0067b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc30 <_sidata+0x16df8>
1c0067bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d820 <_sidata+0x169e8>
1c0067c0:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff9b24 <_start-0x64dc>
1c0067c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd934 <_start-0x26cc>
1c0067c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d628 <_sidata+0x67f0>
1c0067cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0067d0 <__FUNCTION__.1758>:
1c0067d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc48 <_sidata+0x16e10>
1c0067d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d838 <_sidata+0x16a00>
1c0067d8:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff9c3c <_start-0x63c4>
1c0067dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd94c <_start-0x26b4>
1c0067e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d640 <_sidata+0x6808>
1c0067e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0067e8 <__FUNCTION__.1762>:
1c0067e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc60 <_sidata+0x16e28>
1c0067ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d850 <_sidata+0x16a18>
1c0067f0:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff9d54 <_start-0x62ac>
1c0067f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd964 <_start-0x269c>
1c0067f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d658 <_sidata+0x6820>
1c0067fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006800 <__FUNCTION__.1766>:
1c006800:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc78 <_sidata+0x16e40>
1c006804:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d868 <_sidata+0x16a30>
1c006808:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff9e6c <_start-0x6194>
1c00680c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd97c <_start-0x2684>
1c006810:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d670 <_sidata+0x6838>
1c006814:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006818 <__FUNCTION__.1770>:
1c006818:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dc90 <_sidata+0x16e58>
1c00681c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d880 <_sidata+0x16a48>
1c006820:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff9f84 <_start-0x607c>
1c006824:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd994 <_start-0x266c>
1c006828:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d688 <_sidata+0x6850>
1c00682c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c006830:	3d6d6574 	0x3d6d6574
1c006834:	00000000 	0x00000000
1c006838:	3d67616d 	0x3d67616d
1c00683c:	00000000 	0x00000000
1c006840:	6867696c 	bltu	$r11,$r12,26472(0x6768) # 1c00cfa8 <_sidata+0x6170>
1c006844:	00003d74 	revb.d	$r20,$r11

1c006848 <Char_Font_16x8>:
	...
1c006858:	f8000000 	0xf8000000
1c00685c:	00000000 	0x00000000
1c006860:	33000000 	0x33000000
1c006864:	00000000 	0x00000000
1c006868:	020c1000 	slti	$r0,$r0,772(0x304)
1c00686c:	00020c10 	0x00020c10
	...
1c006878:	78c04000 	0x78c04000
1c00687c:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c006880:	043f0400 	csrrd	$r0,0xfc1
1c006884:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c006888:	88887000 	0x88887000
1c00688c:	003008fc 	0x003008fc
1c006890:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c006894:	001e21ff 	mulh.d	$r31,$r15,$r8
1c006898:	80f008f0 	0x80f008f0
1c00689c:	00001860 	cto.w	$r0,$r3
1c0068a0:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c0068a4:	001e211e 	mulh.d	$r30,$r8,$r8
1c0068a8:	8808f000 	0x8808f000
1c0068ac:	00000070 	0x00000070
1c0068b0:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c0068b4:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c0068b8:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c0068c8:	e0000000 	0xe0000000
1c0068cc:	00020418 	0x00020418
1c0068d0:	07000000 	0x07000000
1c0068d4:	00402018 	0x00402018
1c0068d8:	18040200 	pcaddi	$r0,8208(0x2010)
1c0068dc:	000000e0 	0x000000e0
1c0068e0:	18204000 	pcaddi	$r0,66048(0x10200)
1c0068e4:	00000007 	0x00000007
1c0068e8:	f0804040 	0xf0804040
1c0068ec:	00404080 	0x00404080
1c0068f0:	0f010202 	0x0f010202
1c0068f4:	00020201 	0x00020201
1c0068f8:	00000000 	0x00000000
1c0068fc:	000000e0 	0x000000e0
1c006900:	01010100 	fadd.d	$f0,$f8,$f0
1c006904:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c006910:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c006920:	01010100 	fadd.d	$f0,$f8,$f0
1c006924:	00010101 	0x00010101
	...
1c006930:	00303000 	0x00303000
	...
1c00693c:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c006940:	07186000 	0x07186000
1c006944:	00000000 	0x00000000
1c006948:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c00694c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006950:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c006954:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c006958:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c00695c:	000000f8 	0x000000f8
1c006960:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c006964:	0020203f 	div.w	$r31,$r1,$r8
1c006968:	08087000 	0x08087000
1c00696c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c006970:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c006974:	00302122 	0x00302122
1c006978:	08083000 	0x08083000
1c00697c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c006980:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c006984:	001c2221 	mul.w	$r1,$r17,$r8
1c006988:	40800000 	beqz	$r0,32768(0x8000) # 1c00e988 <_sidata+0x7b50>
1c00698c:	0000f830 	0x0000f830
1c006990:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c006994:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c006998:	8888f800 	0x8888f800
1c00699c:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c0069a0:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c0069a4:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0069a8:	8810e000 	0x8810e000
1c0069ac:	00009088 	0x00009088
1c0069b0:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c0069b4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c0069b8:	08081800 	0x08081800
1c0069bc:	00186888 	sra.w	$r8,$r4,$r26
1c0069c0:	3e000000 	0x3e000000
1c0069c4:	00000001 	0x00000001
1c0069c8:	08887000 	0x08887000
1c0069cc:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c0069d0:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c0069d4:	001c2221 	mul.w	$r1,$r17,$r8
1c0069d8:	0808f000 	0x0808f000
1c0069dc:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0069e0:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c0069e4:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c0069e8:	c0000000 	0xc0000000
1c0069ec:	000000c0 	0x000000c0
1c0069f0:	30000000 	0x30000000
1c0069f4:	00000030 	0x00000030
1c0069f8:	80000000 	0x80000000
1c0069fc:	00000000 	0x00000000
1c006a00:	e0000000 	0xe0000000
1c006a04:	00000000 	0x00000000
1c006a08:	40800000 	beqz	$r0,32768(0x8000) # 1c00ea08 <_sidata+0x7bd0>
1c006a0c:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c006a10:	04020100 	csrxchg	$r0,$r8,0x80
1c006a14:	00201008 	div.w	$r8,$r0,$r4
1c006a18:	40404000 	beqz	$r0,16448(0x4040) # 1c00aa58 <_sidata+0x3c20>
1c006a1c:	00404040 	0x00404040
1c006a20:	02020200 	slti	$r0,$r16,128(0x80)
1c006a24:	00020202 	0x00020202
1c006a28:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c006a2c:	00008040 	0x00008040
1c006a30:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c006a34:	00010204 	0x00010204
1c006a38:	08487000 	0x08487000
1c006a3c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c006a40:	30000000 	0x30000000
1c006a44:	00000037 	0x00000037
1c006a48:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c006a4c:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c006a50:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c006a54:	0017282f 	sll.w	$r15,$r1,$r10
1c006a58:	38c00000 	0x38c00000
1c006a5c:	000000e0 	0x000000e0
1c006a60:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c006a64:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c006a68:	8888f808 	0x8888f808
1c006a6c:	00007088 	0x00007088
1c006a70:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006a74:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c006a78:	080830c0 	0x080830c0
1c006a7c:	00380808 	0x00380808
1c006a80:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c006a84:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c006a88:	0808f808 	0x0808f808
1c006a8c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006a90:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006a94:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c006a98:	8888f808 	0x8888f808
1c006a9c:	001008e8 	add.w	$r8,$r7,$r2
1c006aa0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006aa4:	00182023 	sra.w	$r3,$r1,$r8
1c006aa8:	8888f808 	0x8888f808
1c006aac:	001008e8 	add.w	$r8,$r7,$r2
1c006ab0:	00203f20 	div.w	$r0,$r25,$r15
1c006ab4:	00000003 	0x00000003
1c006ab8:	080830c0 	0x080830c0
1c006abc:	00003808 	revb.2w	$r8,$r0
1c006ac0:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c006ac4:	00021e22 	0x00021e22
1c006ac8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c006acc:	08f80800 	0x08f80800
1c006ad0:	01213f20 	0x01213f20
1c006ad4:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c006ad8:	f8080800 	0xf8080800
1c006adc:	00000808 	0x00000808
1c006ae0:	3f202000 	0x3f202000
1c006ae4:	00002020 	clo.d	$r0,$r1
1c006ae8:	08080000 	0x08080000
1c006aec:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c006af0:	808080c0 	0x808080c0
1c006af4:	0000007f 	0x0000007f
1c006af8:	c088f808 	0xc088f808
1c006afc:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c006b00:	01203f20 	0x01203f20
1c006b04:	00203826 	div.w	$r6,$r1,$r14
1c006b08:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c006b0c:	00000000 	0x00000000
1c006b10:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c006b14:	00302020 	0x00302020
1c006b18:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c006b1c:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c006b20:	3e013f20 	0x3e013f20
1c006b24:	00203f01 	div.w	$r1,$r24,$r15
1c006b28:	c030f808 	0xc030f808
1c006b2c:	08f80800 	0x08f80800
1c006b30:	00203f20 	div.w	$r0,$r25,$r15
1c006b34:	003f1807 	0x003f1807
1c006b38:	080810e0 	0x080810e0
1c006b3c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006b40:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c006b44:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c006b48:	0808f808 	0x0808f808
1c006b4c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c006b50:	01213f20 	0x01213f20
1c006b54:	00000101 	0x00000101
1c006b58:	080810e0 	0x080810e0
1c006b5c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c006b60:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c006b64:	004f5030 	0x004f5030
1c006b68:	8888f808 	0x8888f808
1c006b6c:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c006b70:	00203f20 	div.w	$r0,$r25,$r15
1c006b74:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c006b78:	08887000 	0x08887000
1c006b7c:	00380808 	0x00380808
1c006b80:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c006b84:	001c2221 	mul.w	$r1,$r17,$r8
1c006b88:	f8080818 	0xf8080818
1c006b8c:	00180808 	sra.w	$r8,$r0,$r2
1c006b90:	3f200000 	0x3f200000
1c006b94:	00000020 	0x00000020
1c006b98:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c006b9c:	08f80800 	0x08f80800
1c006ba0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006ba4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c006ba8:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c006bac:	0838c800 	0x0838c800
1c006bb0:	38070000 	0x38070000
1c006bb4:	0000010e 	0x0000010e
1c006bb8:	f800f808 	0xf800f808
1c006bbc:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c006bc0:	013e0300 	0x013e0300
1c006bc4:	0000033e 	0x0000033e
1c006bc8:	80681808 	0x80681808
1c006bcc:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c006bd0:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c006bd4:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c006bd8:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c006bdc:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c006be0:	3f200000 	0x3f200000
1c006be4:	00000020 	0x00000020
1c006be8:	08080810 	0x08080810
1c006bec:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c006bf0:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c006bf4:	00182020 	sra.w	$r0,$r1,$r8
1c006bf8:	fe000000 	0xfe000000
1c006bfc:	00020202 	0x00020202
1c006c00:	7f000000 	0x7f000000
1c006c04:	00404040 	0x00404040
1c006c08:	c0380400 	0xc0380400
1c006c0c:	00000000 	0x00000000
1c006c10:	01000000 	0x01000000
1c006c14:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c006c18:	02020200 	slti	$r0,$r16,128(0x80)
1c006c1c:	000000fe 	0x000000fe
1c006c20:	40404000 	beqz	$r0,16448(0x4040) # 1c00ac60 <_sidata+0x3e28>
1c006c24:	0000007f 	0x0000007f
1c006c28:	02040000 	slti	$r0,$r0,256(0x100)
1c006c2c:	00000402 	0x00000402
	...
1c006c40:	80808080 	0x80808080
1c006c44:	80808080 	0x80808080
1c006c48:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c006c58:	80800000 	0x80800000
1c006c5c:	00000080 	0x00000080
1c006c60:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c006c64:	00203f12 	div.w	$r18,$r24,$r15
1c006c68:	8000f010 	0x8000f010
1c006c6c:	00000080 	0x00000080
1c006c70:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c006c74:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c006c78:	80000000 	0x80000000
1c006c7c:	00008080 	0x00008080
1c006c80:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c006c84:	00112020 	sub.w	$r0,$r1,$r8
1c006c88:	80800000 	0x80800000
1c006c8c:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c006c90:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006c94:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c006c98:	80800000 	0x80800000
1c006c9c:	00008080 	0x00008080
1c006ca0:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c006ca4:	00172424 	sll.w	$r4,$r1,$r9
1c006ca8:	e0808000 	0xe0808000
1c006cac:	00209090 	mod.w	$r16,$r4,$r4
1c006cb0:	3f202000 	0x3f202000
1c006cb4:	00002020 	clo.d	$r0,$r1
1c006cb8:	80800000 	0x80800000
1c006cbc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006cc0:	94946b00 	0x94946b00
1c006cc4:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c006cc8:	8000f010 	0x8000f010
1c006ccc:	00008080 	0x00008080
1c006cd0:	00213f20 	div.wu	$r0,$r25,$r15
1c006cd4:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c006cd8:	98988000 	0x98988000
1c006cdc:	00000000 	0x00000000
1c006ce0:	3f202000 	0x3f202000
1c006ce4:	00002020 	clo.d	$r0,$r1
1c006ce8:	80000000 	0x80000000
1c006cec:	00009898 	0x00009898
1c006cf0:	8080c000 	0x8080c000
1c006cf4:	00007f80 	0x00007f80
1c006cf8:	0000f010 	0x0000f010
1c006cfc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006d00:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c006d04:	00203029 	div.w	$r9,$r1,$r12
1c006d08:	f8101000 	0xf8101000
1c006d0c:	00000000 	0x00000000
1c006d10:	3f202000 	0x3f202000
1c006d14:	00002020 	clo.d	$r0,$r1
1c006d18:	80808080 	0x80808080
1c006d1c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006d20:	00203f20 	div.w	$r0,$r25,$r15
1c006d24:	3f00203f 	0x3f00203f
1c006d28:	80008080 	0x80008080
1c006d2c:	00008080 	0x00008080
1c006d30:	00213f20 	div.wu	$r0,$r25,$r15
1c006d34:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c006d38:	80800000 	0x80800000
1c006d3c:	00008080 	0x00008080
1c006d40:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006d44:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c006d48:	80008080 	0x80008080
1c006d4c:	00000080 	0x00000080
1c006d50:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c006d54:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c006d58:	80000000 	0x80000000
1c006d5c:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c006d60:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c006d64:	80ff9120 	0x80ff9120
1c006d68:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006d6c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006d70:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c006d74:	00010020 	asrtle.d	$r1,$r0
1c006d78:	80800000 	0x80800000
1c006d7c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006d80:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c006d84:	00192424 	srl.d	$r4,$r1,$r9
1c006d88:	e0808000 	0xe0808000
1c006d8c:	00008080 	0x00008080
1c006d90:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c006d94:	00102020 	add.w	$r0,$r1,$r8
1c006d98:	00008080 	0x00008080
1c006d9c:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c006da0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c006da4:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c006da8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006dac:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006db0:	300c0300 	0x300c0300
1c006db4:	0000030c 	0x0000030c
1c006db8:	80008080 	0x80008080
1c006dbc:	80800080 	0x80800080
1c006dc0:	0c300e01 	0x0c300e01
1c006dc4:	01063807 	0x01063807
1c006dc8:	80808000 	0x80808000
1c006dcc:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c006dd0:	0e312000 	0x0e312000
1c006dd4:	0020312e 	div.w	$r14,$r9,$r12
1c006dd8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006ddc:	80808000 	0x80808000
1c006de0:	78868100 	0x78868100
1c006de4:	00010618 	0x00010618
1c006de8:	80808000 	0x80808000
1c006dec:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c006df0:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c006df4:	00302122 	0x00302122
1c006df8:	00000000 	0x00000000
1c006dfc:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c006e00:	00000000 	0x00000000
1c006e04:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04ae40 <_sidata+0x44008>
1c006e08:	00000000 	0x00000000
1c006e0c:	000000ff 	0x000000ff
1c006e10:	00000000 	0x00000000
1c006e14:	000000ff 	0x000000ff
1c006e18:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c006e1c:	00000000 	0x00000000
1c006e20:	013e4040 	0x013e4040
1c006e24:	00000000 	0x00000000
1c006e28:	02010200 	slti	$r0,$r16,64(0x40)
1c006e2c:	00020402 	0x00020402
	...

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c005e09 	pcaddu12i	$r9,752(0x2f0)
80001008:	80001014 	0x80001014
8000100c:	80000004 	0x80000004
80001010:	1c005e00 	pcaddu12i	$r0,752(0x2f0)

80001014 <g_SystemFreq>:
80001014:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

80001018 <MPU9250_I2C>:
80001018:	00003f38 	revb.d	$r24,$r25

8000101c <ATH10_I2C>:
8000101c:	0000363f 	revb.4h	$r31,$r17

Disassembly of section .bss:

80000000 <_sbss>:
_sbss():
80000000:	00000000 	0x00000000

80000004 <Circular_queue>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
