
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438010f 	lu12i.w	$r15,114696(0x1c008)
1c00000c:	03b9f1ef 	ori	$r15,$r15,0xe7c
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
1c000030:	0380f1ef 	ori	$r15,$r15,0x3c
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038b81ad 	ori	$r13,$r13,0x2e0
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
1c001090:	54381400 	bl	14356(0x3814) # 1c0048a4 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54385c00 	bl	14428(0x385c) # 1c0048f4 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	5438e800 	bl	14568(0x38e8) # 1c004988 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54391c00 	bl	14620(0x391c) # 1c0049c4 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54373c00 	bl	14140(0x373c) # 1c0047ec <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543aec00 	bl	15084(0x3aec) # 1c004ba4 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	5439d400 	bl	14804(0x39d4) # 1c004a9c <intc_handler>
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
1c001290:	28b64084 	ld.w	$r4,$r4,-624(0xd90)
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
1c0013d4:	541df800 	bl	7672(0x1df8) # 1c0031cc <DisableInt>
1c0013d8:	541d5800 	bl	7512(0x1d58) # 1c003130 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	5425c000 	bl	9664(0x25c0) # 1c0039a0 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54250000 	bl	9472(0x2500) # 1c0038e8 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	5416b800 	bl	5816(0x16b8) # 1c002aac <Uart0_init>
1c0013f8:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013fc:	03880184 	ori	$r4,$r12,0x200
1c001400:	54177000 	bl	6000(0x1770) # 1c002b70 <Uart1_init>
1c001404:	541fbc00 	bl	8124(0x1fbc) # 1c0033c0 <ls1x_logo>
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	2880018e 	ld.w	$r14,$r12,0
1c001414:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001418:	0380118c 	ori	$r12,$r12,0x4
1c00141c:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001420:	001535cd 	or	$r13,$r14,$r13
1c001424:	2980018d 	st.w	$r13,$r12,0
1c001428:	541dc800 	bl	7624(0x1dc8) # 1c0031f0 <EnableInt>
1c00142c:	54205c00 	bl	8284(0x205c) # 1c003488 <open_count>
1c001430:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001434:	541e2400 	bl	7716(0x1e24) # 1c003258 <Wake_Set>
1c001438:	54253c00 	bl	9532(0x253c) # 1c003974 <WDG_DogFeed>
1c00143c:	541ec800 	bl	7880(0x1ec8) # 1c003304 <PMU_GetRstRrc>
1c001440:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001448:	44003180 	bnez	$r12,48(0x30) # 1c001478 <bsp_init+0xb4>
1c00144c:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001450:	029cc084 	addi.w	$r4,$r4,1840(0x730)
1c001454:	54074c00 	bl	1868(0x74c) # 1c001ba0 <myprintf>
1c001458:	541f1800 	bl	7960(0x1f18) # 1c003370 <PMU_GetBootSpiStatus>
1c00145c:	0015008c 	move	$r12,$r4
1c001460:	40001180 	beqz	$r12,16(0x10) # 1c001470 <bsp_init+0xac>
1c001464:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001468:	029ca084 	addi.w	$r4,$r4,1832(0x728)
1c00146c:	54073400 	bl	1844(0x734) # 1c001ba0 <myprintf>
1c001470:	5444d800 	bl	17624(0x44d8) # 1c005948 <main>
1c001474:	50004000 	b	64(0x40) # 1c0014b4 <bsp_init+0xf0>
1c001478:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00147c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001480:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001498 <bsp_init+0xd4>
1c001484:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001488:	029c5084 	addi.w	$r4,$r4,1812(0x714)
1c00148c:	54071400 	bl	1812(0x714) # 1c001ba0 <myprintf>
1c001490:	5444b800 	bl	17592(0x44b8) # 1c005948 <main>
1c001494:	50002000 	b	32(0x20) # 1c0014b4 <bsp_init+0xf0>
1c001498:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00149c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0014a0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014b4 <bsp_init+0xf0>
1c0014a4:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0014a8:	029c1084 	addi.w	$r4,$r4,1796(0x704)
1c0014ac:	5406f400 	bl	1780(0x6f4) # 1c001ba0 <myprintf>
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

1c00186c <gpio_set_direction>:
gpio_set_direction():
1c00186c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001870:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001874:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001878:	0015008c 	move	$r12,$r4
1c00187c:	001500ad 	move	$r13,$r5
1c001880:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001884:	001501ac 	move	$r12,$r13
1c001888:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c00188c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001890:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001894:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001898:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00189c:	6800658d 	bltu	$r12,$r13,100(0x64) # 1c001900 <gpio_set_direction+0x94>
1c0018a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018a4:	0381018c 	ori	$r12,$r12,0x40
1c0018a8:	2880018d 	ld.w	$r13,$r12,0
1c0018ac:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018b4:	001731cc 	sll.w	$r12,$r14,$r12
1c0018b8:	0014300c 	nor	$r12,$r0,$r12
1c0018bc:	0015018e 	move	$r14,$r12
1c0018c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018c4:	0381018c 	ori	$r12,$r12,0x40
1c0018c8:	0014b9ad 	and	$r13,$r13,$r14
1c0018cc:	2980018d 	st.w	$r13,$r12,0
1c0018d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018d4:	0381018c 	ori	$r12,$r12,0x40
1c0018d8:	2880018d 	ld.w	$r13,$r12,0
1c0018dc:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0018e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018e4:	001731cc 	sll.w	$r12,$r14,$r12
1c0018e8:	0015018e 	move	$r14,$r12
1c0018ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018f0:	0381018c 	ori	$r12,$r12,0x40
1c0018f4:	001539ad 	or	$r13,$r13,$r14
1c0018f8:	2980018d 	st.w	$r13,$r12,0
1c0018fc:	50008c00 	b	140(0x8c) # 1c001988 <gpio_set_direction+0x11c>
1c001900:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001904:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001908:	6c007d8d 	bgeu	$r12,$r13,124(0x7c) # 1c001984 <gpio_set_direction+0x118>
1c00190c:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001910:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c001914:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c001984 <gpio_set_direction+0x118>
1c001918:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00191c:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001920:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001924:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001928:	0381418c 	ori	$r12,$r12,0x50
1c00192c:	2880018d 	ld.w	$r13,$r12,0
1c001930:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001934:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001938:	001731cc 	sll.w	$r12,$r14,$r12
1c00193c:	0014300c 	nor	$r12,$r0,$r12
1c001940:	0015018e 	move	$r14,$r12
1c001944:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001948:	0381418c 	ori	$r12,$r12,0x50
1c00194c:	0014b9ad 	and	$r13,$r13,$r14
1c001950:	2980018d 	st.w	$r13,$r12,0
1c001954:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001958:	0381418c 	ori	$r12,$r12,0x50
1c00195c:	2880018d 	ld.w	$r13,$r12,0
1c001960:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001964:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001968:	001731cc 	sll.w	$r12,$r14,$r12
1c00196c:	0015018e 	move	$r14,$r12
1c001970:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001974:	0381418c 	ori	$r12,$r12,0x50
1c001978:	001539ad 	or	$r13,$r13,$r14
1c00197c:	2980018d 	st.w	$r13,$r12,0
1c001980:	50000800 	b	8(0x8) # 1c001988 <gpio_set_direction+0x11c>
1c001984:	03400000 	andi	$r0,$r0,0x0
1c001988:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00198c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001990:	4c000020 	jirl	$r0,$r1,0

1c001994 <myputchar>:
myputchar():
1c001994:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001998:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00199c:	29806076 	st.w	$r22,$r3,24(0x18)
1c0019a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0019a4:	0015008c 	move	$r12,$r4
1c0019a8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0019ac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0019b0:	00150185 	move	$r5,$r12
1c0019b4:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0019b8:	540fe400 	bl	4068(0xfe4) # 1c00299c <UART_SendData>
1c0019bc:	03400000 	andi	$r0,$r0,0x0
1c0019c0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0019c4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0019c8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019cc:	4c000020 	jirl	$r0,$r1,0

1c0019d0 <printbase>:
printbase():
1c0019d0:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0019d4:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0019d8:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0019dc:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0019e0:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0019e4:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0019e8:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0019ec:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0019f0:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0019f4:	40002580 	beqz	$r12,36(0x24) # 1c001a18 <printbase+0x48>
1c0019f8:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019fc:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001a18 <printbase+0x48>
1c001a00:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a04:	0011300c 	sub.w	$r12,$r0,$r12
1c001a08:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a0c:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001a10:	57ff87ff 	bl	-124(0xfffff84) # 1c001994 <myputchar>
1c001a14:	50000c00 	b	12(0xc) # 1c001a20 <printbase+0x50>
1c001a18:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a1c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a20:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a24:	50005000 	b	80(0x50) # 1c001a74 <printbase+0xa4>
1c001a28:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001a2c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001a30:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001a34:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001a3c <printbase+0x6c>
1c001a38:	002a0007 	break	0x7
1c001a3c:	00005dcc 	ext.w.b	$r12,$r14
1c001a40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a44:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001a48:	001035cd 	add.w	$r13,$r14,$r13
1c001a4c:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001a50:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001a54:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001a58:	002135cc 	div.wu	$r12,$r14,$r13
1c001a5c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001a64 <printbase+0x94>
1c001a60:	002a0007 	break	0x7
1c001a64:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a74:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001a78:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001a28 <printbase+0x58>
1c001a7c:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a84:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001a88:	001231ad 	slt	$r13,$r13,$r12
1c001a8c:	0013b5ce 	masknez	$r14,$r14,$r13
1c001a90:	0013358c 	maskeqz	$r12,$r12,$r13
1c001a94:	001531cc 	or	$r12,$r14,$r12
1c001a98:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a9c:	50007400 	b	116(0x74) # 1c001b10 <printbase+0x140>
1c001aa0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001aa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001aa8:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001ac4 <printbase+0xf4>
1c001aac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ab0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001ab4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001ab8:	001031ac 	add.w	$r12,$r13,$r12
1c001abc:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001ac0:	50000800 	b	8(0x8) # 1c001ac8 <printbase+0xf8>
1c001ac4:	0015000c 	move	$r12,$r0
1c001ac8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001acc:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001ad0:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001ad4:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001aec <printbase+0x11c>
1c001ad8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001adc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ae0:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001ae4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ae8:	50001400 	b	20(0x14) # 1c001afc <printbase+0x12c>
1c001aec:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001af0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001af4:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001af8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001afc:	00150184 	move	$r4,$r12
1c001b00:	57fe97ff 	bl	-364(0xffffe94) # 1c001994 <myputchar>
1c001b04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b08:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b0c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b14:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001aa0 <printbase+0xd0>
1c001b18:	0015000c 	move	$r12,$r0
1c001b1c:	00150184 	move	$r4,$r12
1c001b20:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001b24:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001b28:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001b2c:	4c000020 	jirl	$r0,$r1,0

1c001b30 <puts>:
puts():
1c001b30:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b34:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b38:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b3c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b40:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b44:	50003000 	b	48(0x30) # 1c001b74 <puts+0x44>
1c001b48:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001b4c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001b50:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001b5c <puts+0x2c>
1c001b54:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001b58:	57fe3fff 	bl	-452(0xffffe3c) # 1c001994 <myputchar>
1c001b5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001b60:	00150184 	move	$r4,$r12
1c001b64:	57fe33ff 	bl	-464(0xffffe30) # 1c001994 <myputchar>
1c001b68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b70:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001b74:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b78:	2a00018c 	ld.bu	$r12,$r12,0
1c001b7c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001b80:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001b84:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001b48 <puts+0x18>
1c001b88:	0015000c 	move	$r12,$r0
1c001b8c:	00150184 	move	$r4,$r12
1c001b90:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001b94:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001b98:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001b9c:	4c000020 	jirl	$r0,$r1,0

1c001ba0 <myprintf>:
myprintf():
1c001ba0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001ba4:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001ba8:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001bac:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001bb0:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001bb4:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001bb8:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001bbc:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001bc0:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001bc4:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001bc8:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001bcc:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001bd0:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001bd4:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001bd8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bdc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001be0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001be4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001be8:	50033000 	b	816(0x330) # 1c001f18 <myprintf+0x378>
1c001bec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bf0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001bf4:	001031ac 	add.w	$r12,$r13,$r12
1c001bf8:	2a00018c 	ld.bu	$r12,$r12,0
1c001bfc:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001c00:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001c04:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001c08:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001eec <myprintf+0x34c>
1c001c0c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001c10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c1c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c20:	001031ac 	add.w	$r12,$r13,$r12
1c001c24:	2800018c 	ld.b	$r12,$r12,0
1c001c28:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001c2c:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001c30:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001edc <myprintf+0x33c>
1c001c34:	0040898d 	slli.w	$r13,$r12,0x2
1c001c38:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c001c3c:	02bdf18c 	addi.w	$r12,$r12,-132(0xf7c)
1c001c40:	001031ac 	add.w	$r12,$r13,$r12
1c001c44:	2880018c 	ld.w	$r12,$r12,0
1c001c48:	4c000180 	jirl	$r0,$r12,0
1c001c4c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c50:	2880018c 	ld.w	$r12,$r12,0
1c001c54:	00150184 	move	$r4,$r12
1c001c58:	57fedbff 	bl	-296(0xffffed8) # 1c001b30 <puts>
1c001c5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c60:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c64:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c74:	50029800 	b	664(0x298) # 1c001f0c <myprintf+0x36c>
1c001c78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c7c:	2880018c 	ld.w	$r12,$r12,0
1c001c80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001c84:	00150184 	move	$r4,$r12
1c001c88:	57fd0fff 	bl	-756(0xffffd0c) # 1c001994 <myputchar>
1c001c8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c90:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c94:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ca0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ca4:	50026800 	b	616(0x268) # 1c001f0c <myprintf+0x36c>
1c001ca8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cac:	2880018c 	ld.w	$r12,$r12,0
1c001cb0:	00150007 	move	$r7,$r0
1c001cb4:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cb8:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cbc:	00150184 	move	$r4,$r12
1c001cc0:	57fd13ff 	bl	-752(0xffffd10) # 1c0019d0 <printbase>
1c001cc4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cc8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001ccc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cd8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cdc:	50023000 	b	560(0x230) # 1c001f0c <myprintf+0x36c>
1c001ce0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ce4:	2880018c 	ld.w	$r12,$r12,0
1c001ce8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001cec:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cf0:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cf4:	00150184 	move	$r4,$r12
1c001cf8:	57fcdbff 	bl	-808(0xffffcd8) # 1c0019d0 <printbase>
1c001cfc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d00:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d14:	5001f800 	b	504(0x1f8) # 1c001f0c <myprintf+0x36c>
1c001d18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d1c:	2880018c 	ld.w	$r12,$r12,0
1c001d20:	00150007 	move	$r7,$r0
1c001d24:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001d28:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d2c:	00150184 	move	$r4,$r12
1c001d30:	57fca3ff 	bl	-864(0xffffca0) # 1c0019d0 <printbase>
1c001d34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d38:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d4c:	5001c000 	b	448(0x1c0) # 1c001f0c <myprintf+0x36c>
1c001d50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d54:	2880018c 	ld.w	$r12,$r12,0
1c001d58:	00150007 	move	$r7,$r0
1c001d5c:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001d60:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d64:	00150184 	move	$r4,$r12
1c001d68:	57fc6bff 	bl	-920(0xffffc68) # 1c0019d0 <printbase>
1c001d6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d70:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d74:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d84:	50018800 	b	392(0x188) # 1c001f0c <myprintf+0x36c>
1c001d88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d8c:	2880018c 	ld.w	$r12,$r12,0
1c001d90:	00150007 	move	$r7,$r0
1c001d94:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001d98:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d9c:	00150184 	move	$r4,$r12
1c001da0:	57fc33ff 	bl	-976(0xffffc30) # 1c0019d0 <printbase>
1c001da4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001da8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001dac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001db0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001db4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001db8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dbc:	50015000 	b	336(0x150) # 1c001f0c <myprintf+0x36c>
1c001dc0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001dc4:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001994 <myputchar>
1c001dc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dcc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dd0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dd4:	50013800 	b	312(0x138) # 1c001f0c <myprintf+0x36c>
1c001dd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ddc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001de0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001de4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001de8:	50003c00 	b	60(0x3c) # 1c001e24 <myprintf+0x284>
1c001dec:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001df0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001df4:	001c31ad 	mul.w	$r13,$r13,$r12
1c001df8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dfc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e00:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e04:	001031cc 	add.w	$r12,$r14,$r12
1c001e08:	2800018c 	ld.b	$r12,$r12,0
1c001e0c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e10:	001031ac 	add.w	$r12,$r13,$r12
1c001e14:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e2c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e30:	001031ac 	add.w	$r12,$r13,$r12
1c001e34:	2800018d 	ld.b	$r13,$r12,0
1c001e38:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001e3c:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001c14 <myprintf+0x74>
1c001e40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e48:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e4c:	001031ac 	add.w	$r12,$r13,$r12
1c001e50:	2800018d 	ld.b	$r13,$r12,0
1c001e54:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001e58:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001dec <myprintf+0x24c>
1c001e5c:	53fdbbff 	b	-584(0xffffdb8) # 1c001c14 <myprintf+0x74>
1c001e60:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e64:	50003c00 	b	60(0x3c) # 1c001ea0 <myprintf+0x300>
1c001e68:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001e6c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e70:	001c31ad 	mul.w	$r13,$r13,$r12
1c001e74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e7c:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e80:	001031cc 	add.w	$r12,$r14,$r12
1c001e84:	2800018c 	ld.b	$r12,$r12,0
1c001e88:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e8c:	001031ac 	add.w	$r12,$r13,$r12
1c001e90:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ea4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ea8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001eac:	001031ac 	add.w	$r12,$r13,$r12
1c001eb0:	2800018d 	ld.b	$r13,$r12,0
1c001eb4:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001eb8:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001c14 <myprintf+0x74>
1c001ebc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ec0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ec4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ec8:	001031ac 	add.w	$r12,$r13,$r12
1c001ecc:	2800018d 	ld.b	$r13,$r12,0
1c001ed0:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001ed4:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001e68 <myprintf+0x2c8>
1c001ed8:	53fd3fff 	b	-708(0xffffd3c) # 1c001c14 <myprintf+0x74>
1c001edc:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ee0:	57fab7ff 	bl	-1356(0xffffab4) # 1c001994 <myputchar>
1c001ee4:	03400000 	andi	$r0,$r0,0x0
1c001ee8:	50002400 	b	36(0x24) # 1c001f0c <myprintf+0x36c>
1c001eec:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ef0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ef4:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001f00 <myprintf+0x360>
1c001ef8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001efc:	57fa9bff 	bl	-1384(0xffffa98) # 1c001994 <myputchar>
1c001f00:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001f04:	00150184 	move	$r4,$r12
1c001f08:	57fa8fff 	bl	-1396(0xffffa8c) # 1c001994 <myputchar>
1c001f0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f1c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f20:	001031ac 	add.w	$r12,$r13,$r12
1c001f24:	2800018c 	ld.b	$r12,$r12,0
1c001f28:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001bec <myprintf+0x4c>
1c001f2c:	0015000c 	move	$r12,$r0
1c001f30:	00150184 	move	$r4,$r12
1c001f34:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001f38:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001f3c:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001f40:	4c000020 	jirl	$r0,$r1,0

1c001f44 <vsputs>:
vsputs():
1c001f44:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001f48:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001f4c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001f50:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001f54:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001f58:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001f5c:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c001f60:	54187800 	bl	6264(0x1878) # 1c0037d8 <strlen>
1c001f64:	0015008c 	move	$r12,$r4
1c001f68:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f6c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001f70:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001f74:	54180800 	bl	6152(0x1808) # 1c00377c <strcpy>
1c001f78:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001f7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f80:	001031ac 	add.w	$r12,$r13,$r12
1c001f84:	00150184 	move	$r4,$r12
1c001f88:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001f8c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001f90:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001f94:	4c000020 	jirl	$r0,$r1,0

1c001f98 <vsputchar>:
vsputchar():
1c001f98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f9c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001fa0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001fa4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001fa8:	001500ac 	move	$r12,$r5
1c001fac:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001fb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fb4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001fb8:	2900018d 	st.b	$r13,$r12,0
1c001fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fcc:	00150184 	move	$r4,$r12
1c001fd0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001fd4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001fd8:	4c000020 	jirl	$r0,$r1,0

1c001fdc <vsprintbase>:
vsprintbase():
1c001fdc:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001fe0:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001fe4:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001fe8:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001fec:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001ff0:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001ff4:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001ff8:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001ffc:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c002000:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c002004:	40002d80 	beqz	$r12,44(0x2c) # 1c002030 <vsprintbase+0x54>
1c002008:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c00200c:	64002580 	bge	$r12,$r0,36(0x24) # 1c002030 <vsprintbase+0x54>
1c002010:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002014:	0011300c 	sub.w	$r12,$r0,$r12
1c002018:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00201c:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c002020:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002024:	57ff77ff 	bl	-140(0xfffff74) # 1c001f98 <vsputchar>
1c002028:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c00202c:	50000c00 	b	12(0xc) # 1c002038 <vsprintbase+0x5c>
1c002030:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002034:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002038:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00203c:	50005000 	b	80(0x50) # 1c00208c <vsprintbase+0xb0>
1c002040:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c002044:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002048:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c00204c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002054 <vsprintbase+0x78>
1c002050:	002a0007 	break	0x7
1c002054:	00005dcc 	ext.w.b	$r12,$r14
1c002058:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00205c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002060:	001035cd 	add.w	$r13,$r14,$r13
1c002064:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c002068:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c00206c:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c002070:	002135cc 	div.wu	$r12,$r14,$r13
1c002074:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00207c <vsprintbase+0xa0>
1c002078:	002a0007 	break	0x7
1c00207c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002080:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002084:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002088:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00208c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002090:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c002040 <vsprintbase+0x64>
1c002094:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c002098:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00209c:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c0020a0:	001231ad 	slt	$r13,$r13,$r12
1c0020a4:	0013b5ce 	masknez	$r14,$r14,$r13
1c0020a8:	0013358c 	maskeqz	$r12,$r12,$r13
1c0020ac:	001531cc 	or	$r12,$r14,$r12
1c0020b0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0020b4:	50008400 	b	132(0x84) # 1c002138 <vsprintbase+0x15c>
1c0020b8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0020bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020c0:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020dc <vsprintbase+0x100>
1c0020c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0020c8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0020cc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0020d0:	001031ac 	add.w	$r12,$r13,$r12
1c0020d4:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0020d8:	50000800 	b	8(0x8) # 1c0020e0 <vsprintbase+0x104>
1c0020dc:	0015000c 	move	$r12,$r0
1c0020e0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0020e4:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0020e8:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0020ec:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c002108 <vsprintbase+0x12c>
1c0020f0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0020f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020f8:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0020fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002100:	00005d8c 	ext.w.b	$r12,$r12
1c002104:	50001800 	b	24(0x18) # 1c00211c <vsprintbase+0x140>
1c002108:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00210c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002110:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c002114:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002118:	00005d8c 	ext.w.b	$r12,$r12
1c00211c:	00150185 	move	$r5,$r12
1c002120:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002124:	57fe77ff 	bl	-396(0xffffe74) # 1c001f98 <vsputchar>
1c002128:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c00212c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002130:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002134:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002138:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00213c:	63ff7c0c 	blt	$r0,$r12,-132(0x3ff7c) # 1c0020b8 <vsprintbase+0xdc>
1c002140:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c002144:	00150184 	move	$r4,$r12
1c002148:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c00214c:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c002150:	02820063 	addi.w	$r3,$r3,128(0x80)
1c002154:	4c000020 	jirl	$r0,$r1,0

1c002158 <vsprintf>:
vsprintf():
1c002158:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00215c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002160:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002164:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002168:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00216c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002170:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002174:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002178:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00217c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002180:	50036c00 	b	876(0x36c) # 1c0024ec <vsprintf+0x394>
1c002184:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002188:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00218c:	001031ac 	add.w	$r12,$r13,$r12
1c002190:	2a00018c 	ld.bu	$r12,$r12,0
1c002194:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c002198:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c00219c:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c0021a0:	5c0311ac 	bne	$r13,$r12,784(0x310) # 1c0024b0 <vsprintf+0x358>
1c0021a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0021a8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021b4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0021b8:	001031ac 	add.w	$r12,$r13,$r12
1c0021bc:	2800018c 	ld.b	$r12,$r12,0
1c0021c0:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0021c4:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0021c8:	6802d1ac 	bltu	$r13,$r12,720(0x2d0) # 1c002498 <vsprintf+0x340>
1c0021cc:	0040898d 	slli.w	$r13,$r12,0x2
1c0021d0:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c0021d4:	02acd18c 	addi.w	$r12,$r12,-1228(0xb34)
1c0021d8:	001031ac 	add.w	$r12,$r13,$r12
1c0021dc:	2880018c 	ld.w	$r12,$r12,0
1c0021e0:	4c000180 	jirl	$r0,$r12,0
1c0021e4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0021e8:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0021ec:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0021f0:	2880018c 	ld.w	$r12,$r12,0
1c0021f4:	00150185 	move	$r5,$r12
1c0021f8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0021fc:	57fd4bff 	bl	-696(0xffffd48) # 1c001f44 <vsputs>
1c002200:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002204:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002208:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00220c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002210:	5002d000 	b	720(0x2d0) # 1c0024e0 <vsprintf+0x388>
1c002214:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002218:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c00221c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002220:	2880018c 	ld.w	$r12,$r12,0
1c002224:	00005d8c 	ext.w.b	$r12,$r12
1c002228:	00150185 	move	$r5,$r12
1c00222c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002230:	57fd6bff 	bl	-664(0xffffd68) # 1c001f98 <vsputchar>
1c002234:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002238:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00223c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002240:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002244:	50029c00 	b	668(0x29c) # 1c0024e0 <vsprintf+0x388>
1c002248:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00224c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002250:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002254:	2880018c 	ld.w	$r12,$r12,0
1c002258:	00150008 	move	$r8,$r0
1c00225c:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002260:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002264:	00150185 	move	$r5,$r12
1c002268:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00226c:	57fd73ff 	bl	-656(0xffffd70) # 1c001fdc <vsprintbase>
1c002270:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002274:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002278:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00227c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002280:	50026000 	b	608(0x260) # 1c0024e0 <vsprintf+0x388>
1c002284:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002288:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c00228c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002290:	2880018c 	ld.w	$r12,$r12,0
1c002294:	02800408 	addi.w	$r8,$r0,1(0x1)
1c002298:	02802807 	addi.w	$r7,$r0,10(0xa)
1c00229c:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0022a0:	00150185 	move	$r5,$r12
1c0022a4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0022a8:	57fd37ff 	bl	-716(0xffffd34) # 1c001fdc <vsprintbase>
1c0022ac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022bc:	50022400 	b	548(0x224) # 1c0024e0 <vsprintf+0x388>
1c0022c0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022c4:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022c8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022cc:	2880018c 	ld.w	$r12,$r12,0
1c0022d0:	00150008 	move	$r8,$r0
1c0022d4:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0022d8:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0022dc:	00150185 	move	$r5,$r12
1c0022e0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0022e4:	57fcfbff 	bl	-776(0xffffcf8) # 1c001fdc <vsprintbase>
1c0022e8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022f8:	5001e800 	b	488(0x1e8) # 1c0024e0 <vsprintf+0x388>
1c0022fc:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002300:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002304:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002308:	2880018c 	ld.w	$r12,$r12,0
1c00230c:	00150008 	move	$r8,$r0
1c002310:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002314:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002318:	00150185 	move	$r5,$r12
1c00231c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002320:	57fcbfff 	bl	-836(0xffffcbc) # 1c001fdc <vsprintbase>
1c002324:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002328:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00232c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002330:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002334:	5001ac00 	b	428(0x1ac) # 1c0024e0 <vsprintf+0x388>
1c002338:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00233c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002340:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002344:	2880018c 	ld.w	$r12,$r12,0
1c002348:	00150008 	move	$r8,$r0
1c00234c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c002350:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002354:	00150185 	move	$r5,$r12
1c002358:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00235c:	57fc83ff 	bl	-896(0xffffc80) # 1c001fdc <vsprintbase>
1c002360:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002364:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002368:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00236c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002370:	50017000 	b	368(0x170) # 1c0024e0 <vsprintf+0x388>
1c002374:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002378:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00237c:	57fc1fff 	bl	-996(0xffffc1c) # 1c001f98 <vsputchar>
1c002380:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002384:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002388:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00238c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002390:	50015000 	b	336(0x150) # 1c0024e0 <vsprintf+0x388>
1c002394:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002398:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00239c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023a0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0023a4:	50003c00 	b	60(0x3c) # 1c0023e0 <vsprintf+0x288>
1c0023a8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0023ac:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0023b0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0023b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023bc:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0023c0:	001031cc 	add.w	$r12,$r14,$r12
1c0023c4:	2800018c 	ld.b	$r12,$r12,0
1c0023c8:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0023cc:	001031ac 	add.w	$r12,$r13,$r12
1c0023d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023e8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023ec:	001031ac 	add.w	$r12,$r13,$r12
1c0023f0:	2800018d 	ld.b	$r13,$r12,0
1c0023f4:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0023f8:	67fdb58d 	bge	$r12,$r13,-588(0x3fdb4) # 1c0021ac <vsprintf+0x54>
1c0023fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002400:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002404:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002408:	001031ac 	add.w	$r12,$r13,$r12
1c00240c:	2800018d 	ld.b	$r13,$r12,0
1c002410:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002414:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0023a8 <vsprintf+0x250>
1c002418:	53fd97ff 	b	-620(0xffffd94) # 1c0021ac <vsprintf+0x54>
1c00241c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002420:	50003c00 	b	60(0x3c) # 1c00245c <vsprintf+0x304>
1c002424:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002428:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00242c:	001c31ad 	mul.w	$r13,$r13,$r12
1c002430:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002434:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002438:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c00243c:	001031cc 	add.w	$r12,$r14,$r12
1c002440:	2800018c 	ld.b	$r12,$r12,0
1c002444:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002448:	001031ac 	add.w	$r12,$r13,$r12
1c00244c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002454:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002458:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00245c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002460:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002464:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002468:	001031ac 	add.w	$r12,$r13,$r12
1c00246c:	2800018d 	ld.b	$r13,$r12,0
1c002470:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002474:	67fd398d 	bge	$r12,$r13,-712(0x3fd38) # 1c0021ac <vsprintf+0x54>
1c002478:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00247c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002480:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002484:	001031ac 	add.w	$r12,$r13,$r12
1c002488:	2800018d 	ld.b	$r13,$r12,0
1c00248c:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002490:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002424 <vsprintf+0x2cc>
1c002494:	53fd1bff 	b	-744(0xffffd18) # 1c0021ac <vsprintf+0x54>
1c002498:	02809405 	addi.w	$r5,$r0,37(0x25)
1c00249c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024a0:	57fafbff 	bl	-1288(0xffffaf8) # 1c001f98 <vsputchar>
1c0024a4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024a8:	03400000 	andi	$r0,$r0,0x0
1c0024ac:	50003400 	b	52(0x34) # 1c0024e0 <vsprintf+0x388>
1c0024b0:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0024b4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0024b8:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0024cc <vsprintf+0x374>
1c0024bc:	02803405 	addi.w	$r5,$r0,13(0xd)
1c0024c0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024c4:	57fad7ff 	bl	-1324(0xffffad4) # 1c001f98 <vsputchar>
1c0024c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024cc:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c0024d0:	00150185 	move	$r5,$r12
1c0024d4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024d8:	57fac3ff 	bl	-1344(0xffffac0) # 1c001f98 <vsputchar>
1c0024dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024f0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0024f4:	001031ac 	add.w	$r12,$r13,$r12
1c0024f8:	2800018c 	ld.b	$r12,$r12,0
1c0024fc:	47fc899f 	bnez	$r12,-888(0x7ffc88) # 1c002184 <vsprintf+0x2c>
1c002500:	00150005 	move	$r5,$r0
1c002504:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002508:	57fa93ff 	bl	-1392(0xffffa90) # 1c001f98 <vsputchar>
1c00250c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002510:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002514:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002518:	001131ac 	sub.w	$r12,$r13,$r12
1c00251c:	00150184 	move	$r4,$r12
1c002520:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002524:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002528:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00252c:	4c000020 	jirl	$r0,$r1,0

1c002530 <sprintf>:
sprintf():
1c002530:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c002534:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002538:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00253c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002540:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002544:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002548:	298022c6 	st.w	$r6,$r22,8(0x8)
1c00254c:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002550:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002554:	298052c9 	st.w	$r9,$r22,20(0x14)
1c002558:	298062ca 	st.w	$r10,$r22,24(0x18)
1c00255c:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002560:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002564:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c002568:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00256c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002570:	00150186 	move	$r6,$r12
1c002574:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c002578:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00257c:	57fbdfff 	bl	-1060(0xffffbdc) # 1c002158 <vsprintf>
1c002580:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002584:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002588:	00150184 	move	$r4,$r12
1c00258c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002590:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002594:	02814063 	addi.w	$r3,$r3,80(0x50)
1c002598:	4c000020 	jirl	$r0,$r1,0

1c00259c <UART_Init>:
UART_Init():
1c00259c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0025a0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0025a4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0025a8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0025ac:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0025b0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0025b4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0025b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025bc:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025c4:	03403d8c 	andi	$r12,$r12,0xf
1c0025c8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025d0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025d8:	0044918c 	srli.w	$r12,$r12,0x4
1c0025dc:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0025e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025e4:	40000d80 	beqz	$r12,12(0xc) # 1c0025f0 <UART_Init+0x54>
1c0025e8:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0025ec:	44001980 	bnez	$r12,24(0x18) # 1c002604 <UART_Init+0x68>
1c0025f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025f4:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0025f8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0025fc:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c002600:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002604:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002608:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c00260c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c002624 <UART_Init+0x88>
1c002610:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002614:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c002618:	2900118d 	st.b	$r13,$r12,4(0x4)
1c00261c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002620:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002624:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002628:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00262c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002630:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002634:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002638:	580011ac 	beq	$r13,$r12,16(0x10) # 1c002648 <UART_Init+0xac>
1c00263c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002640:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002644:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c0026a4 <UART_Init+0x108>
1c002648:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00264c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002650:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002654:	2880018c 	ld.w	$r12,$r12,0
1c002658:	002131ae 	div.wu	$r14,$r13,$r12
1c00265c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002664 <UART_Init+0xc8>
1c002660:	002a0007 	break	0x7
1c002664:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002668:	002135cc 	div.wu	$r12,$r14,$r13
1c00266c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002674 <UART_Init+0xd8>
1c002670:	002a0007 	break	0x7
1c002674:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002678:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00267c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002680:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002684:	2880018e 	ld.w	$r14,$r12,0
1c002688:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00268c:	001c31ce 	mul.w	$r14,$r14,$r12
1c002690:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002694:	001c31cc 	mul.w	$r12,$r14,$r12
1c002698:	001131ac 	sub.w	$r12,$r13,$r12
1c00269c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0026a0:	50005400 	b	84(0x54) # 1c0026f4 <UART_Init+0x158>
1c0026a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026a8:	2880018c 	ld.w	$r12,$r12,0
1c0026ac:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026b0:	002131ae 	div.wu	$r14,$r13,$r12
1c0026b4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0026bc <UART_Init+0x120>
1c0026b8:	002a0007 	break	0x7
1c0026bc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0026c0:	002135cc 	div.wu	$r12,$r14,$r13
1c0026c4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0026cc <UART_Init+0x130>
1c0026c8:	002a0007 	break	0x7
1c0026cc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0026d0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026d4:	2880018d 	ld.w	$r13,$r12,0
1c0026d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026dc:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026e4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0026e8:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026ec:	001131ac 	sub.w	$r12,$r13,$r12
1c0026f0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0026f4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0026f8:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0026fc:	001c31ad 	mul.w	$r13,$r13,$r12
1c002700:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002704:	2880018c 	ld.w	$r12,$r12,0
1c002708:	002131ae 	div.wu	$r14,$r13,$r12
1c00270c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002714 <UART_Init+0x178>
1c002710:	002a0007 	break	0x7
1c002714:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002718:	002135cc 	div.wu	$r12,$r14,$r13
1c00271c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002724 <UART_Init+0x188>
1c002720:	002a0007 	break	0x7
1c002724:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002728:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00272c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002730:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002734:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c002738:	001531ac 	or	$r12,$r13,$r12
1c00273c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002740:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002744:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002748:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00274c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002750:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002754:	2900018d 	st.b	$r13,$r12,0
1c002758:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00275c:	0044a18c 	srli.w	$r12,$r12,0x8
1c002760:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002764:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002768:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00276c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002770:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002774:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002778:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00277c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002780:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002784:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002788:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00278c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002790:	0341fd8c 	andi	$r12,$r12,0x7f
1c002794:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002798:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00279c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027a4:	29000580 	st.b	$r0,$r12,1(0x1)
1c0027a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027ac:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027b0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027b4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027b8:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c0027bc:	001531ac 	or	$r12,$r13,$r12
1c0027c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027c8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027d0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027d4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027d8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027dc:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0027e0:	001531ac 	or	$r12,$r13,$r12
1c0027e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027ec:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027f4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027f8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027fc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002800:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c002804:	001531ac 	or	$r12,$r13,$r12
1c002808:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00280c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002810:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002814:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002818:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00281c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002820:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002824:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c002828:	001531ac 	or	$r12,$r13,$r12
1c00282c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002830:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002834:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002838:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00283c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002840:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002844:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002848:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c00284c:	001531ac 	or	$r12,$r13,$r12
1c002850:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002854:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002858:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00285c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002860:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002864:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002868:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00286c:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002870:	001531ac 	or	$r12,$r13,$r12
1c002874:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002878:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00287c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002880:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002884:	2a00018c 	ld.bu	$r12,$r12,0
1c002888:	03400000 	andi	$r0,$r0,0x0
1c00288c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002890:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002894:	4c000020 	jirl	$r0,$r1,0

1c002898 <UART_StructInit>:
UART_StructInit():
1c002898:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00289c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0028a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0028a4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0028a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028ac:	1400038d 	lu12i.w	$r13,28(0x1c)
1c0028b0:	038801ad 	ori	$r13,$r13,0x200
1c0028b4:	2980018d 	st.w	$r13,$r12,0
1c0028b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028bc:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0028c0:	038801ad 	ori	$r13,$r13,0x200
1c0028c4:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0028c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028cc:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0028d0:	2900298d 	st.b	$r13,$r12,10(0xa)
1c0028d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028d8:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0028dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028e0:	29003580 	st.b	$r0,$r12,13(0xd)
1c0028e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028e8:	29003180 	st.b	$r0,$r12,12(0xc)
1c0028ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028f0:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0028f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028f8:	29003980 	st.b	$r0,$r12,14(0xe)
1c0028fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002900:	29402180 	st.h	$r0,$r12,8(0x8)
1c002904:	03400000 	andi	$r0,$r0,0x0
1c002908:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00290c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002910:	4c000020 	jirl	$r0,$r1,0

1c002914 <UART_ITConfig>:
UART_ITConfig():
1c002914:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002918:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00291c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002920:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002924:	001500ac 	move	$r12,$r5
1c002928:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c00292c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002930:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002934:	40002980 	beqz	$r12,40(0x28) # 1c00295c <UART_ITConfig+0x48>
1c002938:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00293c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002940:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002944:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c002948:	001531ac 	or	$r12,$r13,$r12
1c00294c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002950:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002954:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002958:	50003400 	b	52(0x34) # 1c00298c <UART_ITConfig+0x78>
1c00295c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002960:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002964:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002968:	00005d8d 	ext.w.b	$r13,$r12
1c00296c:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002970:	0014300c 	nor	$r12,$r0,$r12
1c002974:	00005d8c 	ext.w.b	$r12,$r12
1c002978:	0014b1ac 	and	$r12,$r13,$r12
1c00297c:	00005d8c 	ext.w.b	$r12,$r12
1c002980:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002984:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002988:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00298c:	03400000 	andi	$r0,$r0,0x0
1c002990:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002994:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002998:	4c000020 	jirl	$r0,$r1,0

1c00299c <UART_SendData>:
UART_SendData():
1c00299c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029a0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0029a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029a8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029ac:	001500ac 	move	$r12,$r5
1c0029b0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0029b4:	03400000 	andi	$r0,$r0,0x0
1c0029b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029bc:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0029c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0029c4:	0340818c 	andi	$r12,$r12,0x20
1c0029c8:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0029b8 <UART_SendData+0x1c>
1c0029cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029d0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0029d4:	2900018d 	st.b	$r13,$r12,0
1c0029d8:	03400000 	andi	$r0,$r0,0x0
1c0029dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0029e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029e4:	4c000020 	jirl	$r0,$r1,0

1c0029e8 <UART_SendDataALL>:
UART_SendDataALL():
1c0029e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0029f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029f4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029f8:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0029fc:	001500cc 	move	$r12,$r6
1c002a00:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c002a04:	50004400 	b	68(0x44) # 1c002a48 <UART_SendDataALL+0x60>
1c002a08:	03400000 	andi	$r0,$r0,0x0
1c002a0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a10:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002a14:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a18:	0340818c 	andi	$r12,$r12,0x20
1c002a1c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002a0c <UART_SendDataALL+0x24>
1c002a20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a24:	2a00018d 	ld.bu	$r13,$r12,0
1c002a28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a2c:	2900018d 	st.b	$r13,$r12,0
1c002a30:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a34:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002a38:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002a3c:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c002a40:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002a44:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c002a48:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c002a4c:	47ffbd9f 	bnez	$r12,-68(0x7fffbc) # 1c002a08 <UART_SendDataALL+0x20>
1c002a50:	03400000 	andi	$r0,$r0,0x0
1c002a54:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002a58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a5c:	4c000020 	jirl	$r0,$r1,0

1c002a60 <UART_ReceiveData>:
UART_ReceiveData():
1c002a60:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a64:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002a68:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a6c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002a70:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002a74:	03400000 	andi	$r0,$r0,0x0
1c002a78:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a7c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002a80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a84:	0340058c 	andi	$r12,$r12,0x1
1c002a88:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002a78 <UART_ReceiveData+0x18>
1c002a8c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a90:	2a00018c 	ld.bu	$r12,$r12,0
1c002a94:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a98:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a9c:	00150184 	move	$r4,$r12
1c002aa0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002aa4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002aa8:	4c000020 	jirl	$r0,$r1,0

1c002aac <Uart0_init>:
Uart0_init():
1c002aac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ab0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ab4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ab8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002abc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002ac0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ac4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002ac8:	57eb9bff 	bl	-5224(0xfffeb98) # 1c001660 <gpio_pin_remap>
1c002acc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ad0:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002ad4:	57eb8fff 	bl	-5236(0xfffeb8c) # 1c001660 <gpio_pin_remap>
1c002ad8:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002adc:	00150184 	move	$r4,$r12
1c002ae0:	57fdbbff 	bl	-584(0xffffdb8) # 1c002898 <UART_StructInit>
1c002ae4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ae8:	2894a18c 	ld.w	$r12,$r12,1320(0x528)
1c002aec:	2880018c 	ld.w	$r12,$r12,0
1c002af0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002af4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002af8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002afc:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002b00:	00150185 	move	$r5,$r12
1c002b04:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002b08:	57fa97ff 	bl	-1388(0xffffa94) # 1c00259c <UART_Init>
1c002b0c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b10:	0380098c 	ori	$r12,$r12,0x2
1c002b14:	2a00018c 	ld.bu	$r12,$r12,0
1c002b18:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b1c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b20:	0380098c 	ori	$r12,$r12,0x2
1c002b24:	038021ad 	ori	$r13,$r13,0x8
1c002b28:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b2c:	2900018d 	st.b	$r13,$r12,0
1c002b30:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b34:	2a00018c 	ld.bu	$r12,$r12,0
1c002b38:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b3c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b40:	038021ad 	ori	$r13,$r13,0x8
1c002b44:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b48:	2900018d 	st.b	$r13,$r12,0
1c002b4c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002b50:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b54:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002b58:	57fdbfff 	bl	-580(0xffffdbc) # 1c002914 <UART_ITConfig>
1c002b5c:	03400000 	andi	$r0,$r0,0x0
1c002b60:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b64:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b68:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b6c:	4c000020 	jirl	$r0,$r1,0

1c002b70 <Uart1_init>:
Uart1_init():
1c002b70:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002b74:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002b78:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002b7c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002b80:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002b84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b88:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002b8c:	57ead7ff 	bl	-5420(0xfffead4) # 1c001660 <gpio_pin_remap>
1c002b90:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b94:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002b98:	57eacbff 	bl	-5432(0xfffeac8) # 1c001660 <gpio_pin_remap>
1c002b9c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002ba0:	00150184 	move	$r4,$r12
1c002ba4:	57fcf7ff 	bl	-780(0xffffcf4) # 1c002898 <UART_StructInit>
1c002ba8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002bac:	2891918c 	ld.w	$r12,$r12,1124(0x464)
1c002bb0:	2880018c 	ld.w	$r12,$r12,0
1c002bb4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002bb8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002bbc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002bc0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002bc4:	00150185 	move	$r5,$r12
1c002bc8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002bcc:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c00259c <UART_Init>
1c002bd0:	00150006 	move	$r6,$r0
1c002bd4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002bd8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002bdc:	57fd3bff 	bl	-712(0xffffd38) # 1c002914 <UART_ITConfig>
1c002be0:	03400000 	andi	$r0,$r0,0x0
1c002be4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002be8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002bec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002bf0:	4c000020 	jirl	$r0,$r1,0

1c002bf4 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002bf4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002bf8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002bfc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c00:	1400006c 	lu12i.w	$r12,3(0x3)
1c002c04:	03ba018c 	ori	$r12,$r12,0xe80
1c002c08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c0c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002c10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c14:	2880018d 	ld.w	$r13,$r12,0
1c002c18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c1c:	038101ad 	ori	$r13,$r13,0x40
1c002c20:	2980018d 	st.w	$r13,$r12,0
1c002c24:	03400000 	andi	$r0,$r0,0x0
1c002c28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c2c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c30:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c34:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002c28 <CLOCK_WaitForHSEStartUp+0x34>
1c002c38:	50001c00 	b	28(0x1c) # 1c002c54 <CLOCK_WaitForHSEStartUp+0x60>
1c002c3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c40:	2880018e 	ld.w	$r14,$r12,0
1c002c44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c48:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002c4c:	0014b5cd 	and	$r13,$r14,$r13
1c002c50:	2980018d 	st.w	$r13,$r12,0
1c002c54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c58:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002c5c:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002c3c <CLOCK_WaitForHSEStartUp+0x48>
1c002c60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c64:	2880018d 	ld.w	$r13,$r12,0
1c002c68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c6c:	038201ad 	ori	$r13,$r13,0x80
1c002c70:	2980018d 	st.w	$r13,$r12,0
1c002c74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c78:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c80:	00150184 	move	$r4,$r12
1c002c84:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c8c:	4c000020 	jirl	$r0,$r1,0

1c002c90 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002c90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c94:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c9c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002ca0:	50008800 	b	136(0x88) # 1c002d28 <CLOCK_WaitForLSEStartUp+0x98>
1c002ca4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ca8:	2880018e 	ld.w	$r14,$r12,0
1c002cac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cb0:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002cb4:	0014b5cd 	and	$r13,$r14,$r13
1c002cb8:	2980018d 	st.w	$r13,$r12,0
1c002cbc:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002cc0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002cc4:	50001400 	b	20(0x14) # 1c002cd8 <CLOCK_WaitForLSEStartUp+0x48>
1c002cc8:	03400000 	andi	$r0,$r0,0x0
1c002ccc:	03400000 	andi	$r0,$r0,0x0
1c002cd0:	03400000 	andi	$r0,$r0,0x0
1c002cd4:	03400000 	andi	$r0,$r0,0x0
1c002cd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cdc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002ce0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002ce4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002cc8 <CLOCK_WaitForLSEStartUp+0x38>
1c002ce8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cec:	2880018d 	ld.w	$r13,$r12,0
1c002cf0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cf4:	038081ad 	ori	$r13,$r13,0x20
1c002cf8:	2980018d 	st.w	$r13,$r12,0
1c002cfc:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002d00:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d04:	50001400 	b	20(0x14) # 1c002d18 <CLOCK_WaitForLSEStartUp+0x88>
1c002d08:	03400000 	andi	$r0,$r0,0x0
1c002d0c:	03400000 	andi	$r0,$r0,0x0
1c002d10:	03400000 	andi	$r0,$r0,0x0
1c002d14:	03400000 	andi	$r0,$r0,0x0
1c002d18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d1c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d20:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002d24:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002d08 <CLOCK_WaitForLSEStartUp+0x78>
1c002d28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d2c:	0380118c 	ori	$r12,$r12,0x4
1c002d30:	2880018d 	ld.w	$r13,$r12,0
1c002d34:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002d38:	0014b1ac 	and	$r12,$r13,$r12
1c002d3c:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002ca4 <CLOCK_WaitForLSEStartUp+0x14>
1c002d40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d44:	0380118c 	ori	$r12,$r12,0x4
1c002d48:	2880018d 	ld.w	$r13,$r12,0
1c002d4c:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002d50:	0014b1ac 	and	$r12,$r13,$r12
1c002d54:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002ca4 <CLOCK_WaitForLSEStartUp+0x14>
1c002d58:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d5c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002d60:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002d64:	00150184 	move	$r4,$r12
1c002d68:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d70:	4c000020 	jirl	$r0,$r1,0

1c002d74 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002d74:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d78:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d7c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d80:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d84:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d88:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d90:	2880018e 	ld.w	$r14,$r12,0
1c002d94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d98:	0014300d 	nor	$r13,$r0,$r12
1c002d9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002da0:	0014b5cd 	and	$r13,$r14,$r13
1c002da4:	2980018d 	st.w	$r13,$r12,0
1c002da8:	1400002c 	lu12i.w	$r12,1(0x1)
1c002dac:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002db0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002db4:	50001400 	b	20(0x14) # 1c002dc8 <CLOCK_HSEConfig+0x54>
1c002db8:	03400000 	andi	$r0,$r0,0x0
1c002dbc:	03400000 	andi	$r0,$r0,0x0
1c002dc0:	03400000 	andi	$r0,$r0,0x0
1c002dc4:	03400000 	andi	$r0,$r0,0x0
1c002dc8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002dcc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002dd0:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002dd4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002db8 <CLOCK_HSEConfig+0x44>
1c002dd8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002ddc:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002de0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002df0 <CLOCK_HSEConfig+0x7c>
1c002de4:	57fe13ff 	bl	-496(0xffffe10) # 1c002bf4 <CLOCK_WaitForHSEStartUp>
1c002de8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002dec:	50002400 	b	36(0x24) # 1c002e10 <CLOCK_HSEConfig+0x9c>
1c002df0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002df4:	2880018e 	ld.w	$r14,$r12,0
1c002df8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dfc:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002e00:	0014b5cd 	and	$r13,$r14,$r13
1c002e04:	2980018d 	st.w	$r13,$r12,0
1c002e08:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e14:	00150184 	move	$r4,$r12
1c002e18:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e1c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e20:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e24:	4c000020 	jirl	$r0,$r1,0

1c002e28 <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002e28:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e2c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e30:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e34:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e38:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e3c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e40:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002e44:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002e48:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002e58 <CLOCK_LSEConfig+0x30>
1c002e4c:	57fe47ff 	bl	-444(0xffffe44) # 1c002c90 <CLOCK_WaitForLSEStartUp>
1c002e50:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e54:	50002400 	b	36(0x24) # 1c002e78 <CLOCK_LSEConfig+0x50>
1c002e58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e5c:	2880018e 	ld.w	$r14,$r12,0
1c002e60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e64:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002e68:	0014b5cd 	and	$r13,$r14,$r13
1c002e6c:	2980018d 	st.w	$r13,$r12,0
1c002e70:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e7c:	00150184 	move	$r4,$r12
1c002e80:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e84:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e88:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e8c:	4c000020 	jirl	$r0,$r1,0

1c002e90 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002e90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e94:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002e98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e9c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ea4:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002ea8:	2980018d 	st.w	$r13,$r12,0
1c002eac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002eb0:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002eb4:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002eb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ebc:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002ec0:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002ec4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ec8:	29803180 	st.w	$r0,$r12,12(0xc)
1c002ecc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ed0:	29804180 	st.w	$r0,$r12,16(0x10)
1c002ed4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ed8:	29805180 	st.w	$r0,$r12,20(0x14)
1c002edc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ee0:	29806180 	st.w	$r0,$r12,24(0x18)
1c002ee4:	03400000 	andi	$r0,$r0,0x0
1c002ee8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002eec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ef0:	4c000020 	jirl	$r0,$r1,0

1c002ef4 <CLOCK_Init>:
CLOCK_Init():
1c002ef4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ef8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002efc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002f00:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002f04:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002f08:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002f0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f10:	2880018e 	ld.w	$r14,$r12,0
1c002f14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f18:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002f1c:	0014b5cd 	and	$r13,$r14,$r13
1c002f20:	2980018d 	st.w	$r13,$r12,0
1c002f24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f28:	2880018e 	ld.w	$r14,$r12,0
1c002f2c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f30:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002f34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f38:	001535cd 	or	$r13,$r14,$r13
1c002f3c:	2980018d 	st.w	$r13,$r12,0
1c002f40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f44:	2880018e 	ld.w	$r14,$r12,0
1c002f48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f4c:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002f50:	0014b5cd 	and	$r13,$r14,$r13
1c002f54:	2980018d 	st.w	$r13,$r12,0
1c002f58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f5c:	2880018e 	ld.w	$r14,$r12,0
1c002f60:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f64:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002f68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f6c:	001535cd 	or	$r13,$r14,$r13
1c002f70:	2980018d 	st.w	$r13,$r12,0
1c002f74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f78:	2880018e 	ld.w	$r14,$r12,0
1c002f7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f80:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002f84:	039ffdad 	ori	$r13,$r13,0x7ff
1c002f88:	0014b5cd 	and	$r13,$r14,$r13
1c002f8c:	2980018d 	st.w	$r13,$r12,0
1c002f90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f94:	2880018e 	ld.w	$r14,$r12,0
1c002f98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f9c:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002fa0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fa4:	001535cd 	or	$r13,$r14,$r13
1c002fa8:	2980018d 	st.w	$r13,$r12,0
1c002fac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fb0:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002fb4:	00150184 	move	$r4,$r12
1c002fb8:	57fdbfff 	bl	-580(0xffffdbc) # 1c002d74 <CLOCK_HSEConfig>
1c002fbc:	0015008d 	move	$r13,$r4
1c002fc0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fc4:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002fd0 <CLOCK_Init+0xdc>
1c002fc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fcc:	50015000 	b	336(0x150) # 1c00311c <CLOCK_Init+0x228>
1c002fd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fd4:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002fd8:	00150184 	move	$r4,$r12
1c002fdc:	57fe4fff 	bl	-436(0xffffe4c) # 1c002e28 <CLOCK_LSEConfig>
1c002fe0:	0015008d 	move	$r13,$r4
1c002fe4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fe8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002ff4 <CLOCK_Init+0x100>
1c002fec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ff0:	50012c00 	b	300(0x12c) # 1c00311c <CLOCK_Init+0x228>
1c002ff4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ff8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002ffc:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003000:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c0030fc <CLOCK_Init+0x208>
1c003004:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003008:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c00300c:	4000a180 	beqz	$r12,160(0xa0) # 1c0030ac <CLOCK_Init+0x1b8>
1c003010:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003014:	2880018e 	ld.w	$r14,$r12,0
1c003018:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00301c:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c003020:	03bffdad 	ori	$r13,$r13,0xfff
1c003024:	0014b5cd 	and	$r13,$r14,$r13
1c003028:	2980018d 	st.w	$r13,$r12,0
1c00302c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003030:	2880018e 	ld.w	$r14,$r12,0
1c003034:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003038:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c00303c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003040:	001535cd 	or	$r13,$r14,$r13
1c003044:	2980018d 	st.w	$r13,$r12,0
1c003048:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c00304c:	0386c18c 	ori	$r12,$r12,0x1b0
1c003050:	2880018c 	ld.w	$r12,$r12,0
1c003054:	40004180 	beqz	$r12,64(0x40) # 1c003094 <CLOCK_Init+0x1a0>
1c003058:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c00305c:	0386c18c 	ori	$r12,$r12,0x1b0
1c003060:	2880018c 	ld.w	$r12,$r12,0
1c003064:	0040898e 	slli.w	$r14,$r12,0x2
1c003068:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00306c:	002031cd 	div.w	$r13,$r14,$r12
1c003070:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003078 <CLOCK_Init+0x184>
1c003074:	002a0007 	break	0x7
1c003078:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c00307c:	001c31ac 	mul.w	$r12,$r13,$r12
1c003080:	0015018d 	move	$r13,$r12
1c003084:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003088:	02be818c 	addi.w	$r12,$r12,-96(0xfa0)
1c00308c:	2980018d 	st.w	$r13,$r12,0
1c003090:	50008000 	b	128(0x80) # 1c003110 <CLOCK_Init+0x21c>
1c003094:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003098:	02be418c 	addi.w	$r12,$r12,-112(0xf90)
1c00309c:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c0030a0:	038fe1ad 	ori	$r13,$r13,0x3f8
1c0030a4:	2980018d 	st.w	$r13,$r12,0
1c0030a8:	50006800 	b	104(0x68) # 1c003110 <CLOCK_Init+0x21c>
1c0030ac:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0030b0:	0386c18c 	ori	$r12,$r12,0x1b0
1c0030b4:	2880018c 	ld.w	$r12,$r12,0
1c0030b8:	40002d80 	beqz	$r12,44(0x2c) # 1c0030e4 <CLOCK_Init+0x1f0>
1c0030bc:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0030c0:	0386c18c 	ori	$r12,$r12,0x1b0
1c0030c4:	2880018d 	ld.w	$r13,$r12,0
1c0030c8:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0030cc:	001c31ac 	mul.w	$r12,$r13,$r12
1c0030d0:	0015018d 	move	$r13,$r12
1c0030d4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030d8:	02bd418c 	addi.w	$r12,$r12,-176(0xf50)
1c0030dc:	2980018d 	st.w	$r13,$r12,0
1c0030e0:	50003000 	b	48(0x30) # 1c003110 <CLOCK_Init+0x21c>
1c0030e4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030e8:	02bd018c 	addi.w	$r12,$r12,-192(0xf40)
1c0030ec:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0030f0:	038801ad 	ori	$r13,$r13,0x200
1c0030f4:	2980018d 	st.w	$r13,$r12,0
1c0030f8:	50001800 	b	24(0x18) # 1c003110 <CLOCK_Init+0x21c>
1c0030fc:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003100:	02bca18c 	addi.w	$r12,$r12,-216(0xf28)
1c003104:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003108:	038801ad 	ori	$r13,$r13,0x200
1c00310c:	2980018d 	st.w	$r13,$r12,0
1c003110:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003114:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003118:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00311c:	00150184 	move	$r4,$r12
1c003120:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003124:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003128:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00312c:	4c000020 	jirl	$r0,$r1,0

1c003130 <SystemClockInit>:
SystemClockInit():
1c003130:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003134:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003138:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00313c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003140:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c003144:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c003148:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c00314c:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003150:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003154:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003158:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00315c:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003160:	00150184 	move	$r4,$r12
1c003164:	57fd2fff 	bl	-724(0xffffd2c) # 1c002e90 <CLOCK_StructInit>
1c003168:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00316c:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003170:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003174:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003178:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c00317c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003180:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003184:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c003188:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00318c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003190:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003194:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003198:	00150184 	move	$r4,$r12
1c00319c:	57fd5bff 	bl	-680(0xffffd58) # 1c002ef4 <CLOCK_Init>
1c0031a0:	0015008d 	move	$r13,$r4
1c0031a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0031a8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0031b4 <SystemClockInit+0x84>
1c0031ac:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0031b0:	50000800 	b	8(0x8) # 1c0031b8 <SystemClockInit+0x88>
1c0031b4:	0015000c 	move	$r12,$r0
1c0031b8:	00150184 	move	$r4,$r12
1c0031bc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0031c0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0031c4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0031c8:	4c000020 	jirl	$r0,$r1,0

1c0031cc <DisableInt>:
DisableInt():
1c0031cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031d0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031d8:	0380100c 	ori	$r12,$r0,0x4
1c0031dc:	04000180 	csrxchg	$r0,$r12,0x0
1c0031e0:	03400000 	andi	$r0,$r0,0x0
1c0031e4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031ec:	4c000020 	jirl	$r0,$r1,0

1c0031f0 <EnableInt>:
EnableInt():
1c0031f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031f4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031fc:	0380100c 	ori	$r12,$r0,0x4
1c003200:	0400018c 	csrxchg	$r12,$r12,0x0
1c003204:	03400000 	andi	$r0,$r0,0x0
1c003208:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00320c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003210:	4c000020 	jirl	$r0,$r1,0

1c003214 <Set_Timer_stop>:
Set_Timer_stop():
1c003214:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003218:	29803076 	st.w	$r22,$r3,12(0xc)
1c00321c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003220:	04010420 	csrwr	$r0,0x41
1c003224:	03400000 	andi	$r0,$r0,0x0
1c003228:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00322c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003230:	4c000020 	jirl	$r0,$r1,0

1c003234 <Set_Timer_clear>:
Set_Timer_clear():
1c003234:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003238:	29803076 	st.w	$r22,$r3,12(0xc)
1c00323c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003240:	0380040c 	ori	$r12,$r0,0x1
1c003244:	0401102c 	csrwr	$r12,0x44
1c003248:	03400000 	andi	$r0,$r0,0x0
1c00324c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003250:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003254:	4c000020 	jirl	$r0,$r1,0

1c003258 <Wake_Set>:
Wake_Set():
1c003258:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00325c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003260:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003264:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003268:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00326c:	40006980 	beqz	$r12,104(0x68) # 1c0032d4 <Wake_Set+0x7c>
1c003270:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003274:	0040a18c 	slli.w	$r12,$r12,0x8
1c003278:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00327c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003280:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003284:	0380218c 	ori	$r12,$r12,0x8
1c003288:	2880018d 	ld.w	$r13,$r12,0
1c00328c:	14001fec 	lu12i.w	$r12,255(0xff)
1c003290:	03bffd8c 	ori	$r12,$r12,0xfff
1c003294:	0014b1ac 	and	$r12,$r13,$r12
1c003298:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00329c:	001031ac 	add.w	$r12,$r13,$r12
1c0032a0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0032a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032a8:	0380318c 	ori	$r12,$r12,0xc
1c0032ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0032b0:	2980018d 	st.w	$r13,$r12,0
1c0032b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032b8:	0380118c 	ori	$r12,$r12,0x4
1c0032bc:	2880018d 	ld.w	$r13,$r12,0
1c0032c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032c4:	0380118c 	ori	$r12,$r12,0x4
1c0032c8:	038601ad 	ori	$r13,$r13,0x180
1c0032cc:	2980018d 	st.w	$r13,$r12,0
1c0032d0:	50002400 	b	36(0x24) # 1c0032f4 <Wake_Set+0x9c>
1c0032d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032d8:	0380118c 	ori	$r12,$r12,0x4
1c0032dc:	2880018e 	ld.w	$r14,$r12,0
1c0032e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032e4:	0380118c 	ori	$r12,$r12,0x4
1c0032e8:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c0032ec:	0014b5cd 	and	$r13,$r14,$r13
1c0032f0:	2980018d 	st.w	$r13,$r12,0
1c0032f4:	03400000 	andi	$r0,$r0,0x0
1c0032f8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0032fc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003300:	4c000020 	jirl	$r0,$r1,0

1c003304 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c003304:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003308:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00330c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003310:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003314:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003318:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00331c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003320:	0014b1ac 	and	$r12,$r13,$r12
1c003324:	44000d80 	bnez	$r12,12(0xc) # 1c003330 <PMU_GetRstRrc+0x2c>
1c003328:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00332c:	50003000 	b	48(0x30) # 1c00335c <PMU_GetRstRrc+0x58>
1c003330:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003334:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003338:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c00333c:	0014b1ad 	and	$r13,$r13,$r12
1c003340:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003344:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c003354 <PMU_GetRstRrc+0x50>
1c003348:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00334c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003350:	50000c00 	b	12(0xc) # 1c00335c <PMU_GetRstRrc+0x58>
1c003354:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003358:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00335c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003360:	00150184 	move	$r4,$r12
1c003364:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003368:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00336c:	4c000020 	jirl	$r0,$r1,0

1c003370 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c003370:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003374:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003378:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00337c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003380:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003384:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003388:	0380198c 	ori	$r12,$r12,0x6
1c00338c:	2a00018c 	ld.bu	$r12,$r12,0
1c003390:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003394:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003398:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00339c:	0340058c 	andi	$r12,$r12,0x1
1c0033a0:	40000d80 	beqz	$r12,12(0xc) # 1c0033ac <PMU_GetBootSpiStatus+0x3c>
1c0033a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0033a8:	50000800 	b	8(0x8) # 1c0033b0 <PMU_GetBootSpiStatus+0x40>
1c0033ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033b0:	00150184 	move	$r4,$r12
1c0033b4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0033b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033bc:	4c000020 	jirl	$r0,$r1,0

1c0033c0 <ls1x_logo>:
ls1x_logo():
1c0033c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0033c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0033c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0033cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0033d0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033d4:	02aa1084 	addi.w	$r4,$r4,-1404(0xa84)
1c0033d8:	57e7cbff 	bl	-6200(0xfffe7c8) # 1c001ba0 <myprintf>
1c0033dc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033e0:	02a9f084 	addi.w	$r4,$r4,-1412(0xa7c)
1c0033e4:	57e7bfff 	bl	-6212(0xfffe7bc) # 1c001ba0 <myprintf>
1c0033e8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033ec:	02ab5084 	addi.w	$r4,$r4,-1324(0xad4)
1c0033f0:	57e7b3ff 	bl	-6224(0xfffe7b0) # 1c001ba0 <myprintf>
1c0033f4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033f8:	02acb084 	addi.w	$r4,$r4,-1236(0xb2c)
1c0033fc:	57e7a7ff 	bl	-6236(0xfffe7a4) # 1c001ba0 <myprintf>
1c003400:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003404:	02ae1084 	addi.w	$r4,$r4,-1148(0xb84)
1c003408:	57e79bff 	bl	-6248(0xfffe798) # 1c001ba0 <myprintf>
1c00340c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003410:	02af7084 	addi.w	$r4,$r4,-1060(0xbdc)
1c003414:	57e78fff 	bl	-6260(0xfffe78c) # 1c001ba0 <myprintf>
1c003418:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00341c:	02b0d084 	addi.w	$r4,$r4,-972(0xc34)
1c003420:	57e783ff 	bl	-6272(0xfffe780) # 1c001ba0 <myprintf>
1c003424:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003428:	02b23084 	addi.w	$r4,$r4,-884(0xc8c)
1c00342c:	57e777ff 	bl	-6284(0xfffe774) # 1c001ba0 <myprintf>
1c003430:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003434:	02b39084 	addi.w	$r4,$r4,-796(0xce4)
1c003438:	57e76bff 	bl	-6296(0xfffe768) # 1c001ba0 <myprintf>
1c00343c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003440:	02b4f084 	addi.w	$r4,$r4,-708(0xd3c)
1c003444:	57e75fff 	bl	-6308(0xfffe75c) # 1c001ba0 <myprintf>
1c003448:	03400000 	andi	$r0,$r0,0x0
1c00344c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003450:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003454:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003458:	4c000020 	jirl	$r0,$r1,0

1c00345c <get_count>:
get_count():
1c00345c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003460:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003464:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003468:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00346c:	0000600c 	rdtimel.w	$r12,$r0
1c003470:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003474:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003478:	00150184 	move	$r4,$r12
1c00347c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003480:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003484:	4c000020 	jirl	$r0,$r1,0

1c003488 <open_count>:
open_count():
1c003488:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00348c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003490:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003494:	0380400c 	ori	$r12,$r0,0x10
1c003498:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c00349c:	03400000 	andi	$r0,$r0,0x0
1c0034a0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0034a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0034a8:	4c000020 	jirl	$r0,$r1,0

1c0034ac <start_count>:
start_count():
1c0034ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034b0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0034b4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0034b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034bc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0034c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034c4:	29800180 	st.w	$r0,$r12,0
1c0034c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034cc:	29801180 	st.w	$r0,$r12,4(0x4)
1c0034d0:	57ff8fff 	bl	-116(0xfffff8c) # 1c00345c <get_count>
1c0034d4:	0015008d 	move	$r13,$r4
1c0034d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034dc:	2980018d 	st.w	$r13,$r12,0
1c0034e0:	03400000 	andi	$r0,$r0,0x0
1c0034e4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0034e8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0034ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034f0:	4c000020 	jirl	$r0,$r1,0

1c0034f4 <stop_count>:
stop_count():
1c0034f4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034f8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0034fc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003500:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003504:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003508:	57ff57ff 	bl	-172(0xfffff54) # 1c00345c <get_count>
1c00350c:	0015008d 	move	$r13,$r4
1c003510:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003514:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003518:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00351c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003520:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003524:	2880018c 	ld.w	$r12,$r12,0
1c003528:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c003544 <stop_count+0x50>
1c00352c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003530:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003534:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003538:	2880018c 	ld.w	$r12,$r12,0
1c00353c:	001131ac 	sub.w	$r12,$r13,$r12
1c003540:	50002800 	b	40(0x28) # 1c003568 <stop_count+0x74>
1c003544:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003548:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00354c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003550:	2880018c 	ld.w	$r12,$r12,0
1c003554:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003558:	001131ad 	sub.w	$r13,$r13,$r12
1c00355c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003560:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003564:	001031ac 	add.w	$r12,$r13,$r12
1c003568:	00150184 	move	$r4,$r12
1c00356c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003570:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003574:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003578:	4c000020 	jirl	$r0,$r1,0

1c00357c <delay_cycle>:
delay_cycle():
1c00357c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003580:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003584:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003588:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00358c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003590:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003594:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003598:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00359c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0035a0:	00150184 	move	$r4,$r12
1c0035a4:	57ff0bff 	bl	-248(0xfffff08) # 1c0034ac <start_count>
1c0035a8:	50001400 	b	20(0x14) # 1c0035bc <delay_cycle+0x40>
1c0035ac:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0035b0:	00150184 	move	$r4,$r12
1c0035b4:	57ff43ff 	bl	-192(0xfffff40) # 1c0034f4 <stop_count>
1c0035b8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035bc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0035c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035c4:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c0035ac <delay_cycle+0x30>
1c0035c8:	03400000 	andi	$r0,$r0,0x0
1c0035cc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0035d0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0035d4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035d8:	4c000020 	jirl	$r0,$r1,0

1c0035dc <delay_us>:
delay_us():
1c0035dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0035e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0035e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0035e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0035ec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035f4:	00408d8c 	slli.w	$r12,$r12,0x3
1c0035f8:	00150184 	move	$r4,$r12
1c0035fc:	57ff83ff 	bl	-128(0xfffff80) # 1c00357c <delay_cycle>
1c003600:	03400000 	andi	$r0,$r0,0x0
1c003604:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003608:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00360c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003610:	4c000020 	jirl	$r0,$r1,0

1c003614 <delay_ms>:
delay_ms():
1c003614:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003618:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00361c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003620:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003624:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003628:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00362c:	1400002c 	lu12i.w	$r12,1(0x1)
1c003630:	03bd018c 	ori	$r12,$r12,0xf40
1c003634:	001c31ac 	mul.w	$r12,$r13,$r12
1c003638:	00150184 	move	$r4,$r12
1c00363c:	57ff43ff 	bl	-192(0xfffff40) # 1c00357c <delay_cycle>
1c003640:	03400000 	andi	$r0,$r0,0x0
1c003644:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003648:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00364c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003650:	4c000020 	jirl	$r0,$r1,0

1c003654 <memset>:
memset():
1c003654:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003658:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00365c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003660:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003664:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003668:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c00366c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003670:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003674:	50001c00 	b	28(0x1c) # 1c003690 <memset+0x3c>
1c003678:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00367c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003680:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003684:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003688:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00368c:	2900018d 	st.b	$r13,$r12,0
1c003690:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003694:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003698:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c00369c:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003678 <memset+0x24>
1c0036a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036a4:	00150184 	move	$r4,$r12
1c0036a8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0036ac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0036b0:	4c000020 	jirl	$r0,$r1,0

1c0036b4 <pstrstr>:
pstrstr():
1c0036b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0036b8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0036bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0036c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0036c4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0036c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036d0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0036d4:	2800018c 	ld.b	$r12,$r12,0
1c0036d8:	44008580 	bnez	$r12,132(0x84) # 1c00375c <pstrstr+0xa8>
1c0036dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036e0:	50008c00 	b	140(0x8c) # 1c00376c <pstrstr+0xb8>
1c0036e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036e8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0036ec:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0036f0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0036f4:	50001c00 	b	28(0x1c) # 1c003710 <pstrstr+0x5c>
1c0036f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003700:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003704:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003708:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00370c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003710:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003714:	2800018c 	ld.b	$r12,$r12,0
1c003718:	40002580 	beqz	$r12,36(0x24) # 1c00373c <pstrstr+0x88>
1c00371c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003720:	2800018c 	ld.b	$r12,$r12,0
1c003724:	40001980 	beqz	$r12,24(0x18) # 1c00373c <pstrstr+0x88>
1c003728:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00372c:	2800018d 	ld.b	$r13,$r12,0
1c003730:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003734:	2800018c 	ld.b	$r12,$r12,0
1c003738:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c0036f8 <pstrstr+0x44>
1c00373c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003740:	2800018c 	ld.b	$r12,$r12,0
1c003744:	44000d80 	bnez	$r12,12(0xc) # 1c003750 <pstrstr+0x9c>
1c003748:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00374c:	50002000 	b	32(0x20) # 1c00376c <pstrstr+0xb8>
1c003750:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003754:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003758:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00375c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003760:	2800018c 	ld.b	$r12,$r12,0
1c003764:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c0036e4 <pstrstr+0x30>
1c003768:	0015000c 	move	$r12,$r0
1c00376c:	00150184 	move	$r4,$r12
1c003770:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003774:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003778:	4c000020 	jirl	$r0,$r1,0

1c00377c <strcpy>:
strcpy():
1c00377c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003780:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003784:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003788:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00378c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003790:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003794:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003798:	03400000 	andi	$r0,$r0,0x0
1c00379c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0037a0:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c0037a4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0037a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0037ac:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c0037b0:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c0037b4:	280001ad 	ld.b	$r13,$r13,0
1c0037b8:	2900018d 	st.b	$r13,$r12,0
1c0037bc:	2800018c 	ld.b	$r12,$r12,0
1c0037c0:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c00379c <strcpy+0x20>
1c0037c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037c8:	00150184 	move	$r4,$r12
1c0037cc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0037d0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0037d4:	4c000020 	jirl	$r0,$r1,0

1c0037d8 <strlen>:
strlen():
1c0037d8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0037dc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0037e0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0037e4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0037e8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0037ec:	50001000 	b	16(0x10) # 1c0037fc <strlen+0x24>
1c0037f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0037f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003800:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003804:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003808:	2800018c 	ld.b	$r12,$r12,0
1c00380c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0037f0 <strlen+0x18>
1c003810:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003814:	00150184 	move	$r4,$r12
1c003818:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00381c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003820:	4c000020 	jirl	$r0,$r1,0

1c003824 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003824:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003828:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00382c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003830:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003834:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003838:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00383c:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003840:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003844:	001531ad 	or	$r13,$r13,$r12
1c003848:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00384c:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003850:	03400000 	andi	$r0,$r0,0x0
1c003854:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003858:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00385c:	4c000020 	jirl	$r0,$r1,0

1c003860 <WDG_getOddValue>:
WDG_getOddValue():
1c003860:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003864:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003868:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00386c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003870:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003874:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003878:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00387c:	50003800 	b	56(0x38) # 1c0038b4 <WDG_getOddValue+0x54>
1c003880:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003884:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003888:	001731ac 	sll.w	$r12,$r13,$r12
1c00388c:	0015018d 	move	$r13,$r12
1c003890:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003894:	0014b1ac 	and	$r12,$r13,$r12
1c003898:	40001180 	beqz	$r12,16(0x10) # 1c0038a8 <WDG_getOddValue+0x48>
1c00389c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0038a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0038a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0038a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0038b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0038b8:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0038bc:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c003880 <WDG_getOddValue+0x20>
1c0038c0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0038c4:	0340058c 	andi	$r12,$r12,0x1
1c0038c8:	44000d80 	bnez	$r12,12(0xc) # 1c0038d4 <WDG_getOddValue+0x74>
1c0038cc:	1400010c 	lu12i.w	$r12,8(0x8)
1c0038d0:	50000800 	b	8(0x8) # 1c0038d8 <WDG_getOddValue+0x78>
1c0038d4:	0015000c 	move	$r12,$r0
1c0038d8:	00150184 	move	$r4,$r12
1c0038dc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0038e0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0038e4:	4c000020 	jirl	$r0,$r1,0

1c0038e8 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c0038e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0038ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0038f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0038f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0038f8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0038fc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003900:	140000ec 	lu12i.w	$r12,7(0x7)
1c003904:	03bffd8c 	ori	$r12,$r12,0xfff
1c003908:	0014b1ac 	and	$r12,$r13,$r12
1c00390c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003910:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003914:	57ff4fff 	bl	-180(0xfffff4c) # 1c003860 <WDG_getOddValue>
1c003918:	0015008c 	move	$r12,$r4
1c00391c:	0015018d 	move	$r13,$r12
1c003920:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003924:	0015358c 	or	$r12,$r12,$r13
1c003928:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00392c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003930:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003934:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003938:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c00393c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003940:	0014300c 	nor	$r12,$r0,$r12
1c003944:	0040c18c 	slli.w	$r12,$r12,0x10
1c003948:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00394c:	001531ac 	or	$r12,$r13,$r12
1c003950:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003954:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003958:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00395c:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003960:	03400000 	andi	$r0,$r0,0x0
1c003964:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003968:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00396c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003970:	4c000020 	jirl	$r0,$r1,0

1c003974 <WDG_DogFeed>:
WDG_DogFeed():
1c003974:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003978:	29803076 	st.w	$r22,$r3,12(0xc)
1c00397c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003980:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003984:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003988:	0396a9ad 	ori	$r13,$r13,0x5aa
1c00398c:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003990:	03400000 	andi	$r0,$r0,0x0
1c003994:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003998:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00399c:	4c000020 	jirl	$r0,$r1,0

1c0039a0 <WdgInit>:
WdgInit():
1c0039a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0039a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0039a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0039ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0039b0:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c0039b4:	03bffd84 	ori	$r4,$r12,0xfff
1c0039b8:	57ff33ff 	bl	-208(0xfffff30) # 1c0038e8 <WDG_SetWatchDog>
1c0039bc:	03400000 	andi	$r0,$r0,0x0
1c0039c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0039c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0039c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0039cc:	4c000020 	jirl	$r0,$r1,0

1c0039d0 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c0039d0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039d4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0039d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039dc:	0015008c 	move	$r12,$r4
1c0039e0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0039e4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0039e8:	0040898c 	slli.w	$r12,$r12,0x2
1c0039ec:	0015018d 	move	$r13,$r12
1c0039f0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0039f4:	0381018c 	ori	$r12,$r12,0x40
1c0039f8:	001031ac 	add.w	$r12,$r13,$r12
1c0039fc:	2880018c 	ld.w	$r12,$r12,0
1c003a00:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a04:	037ffd8c 	andi	$r12,$r12,0xfff
1c003a08:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a0c:	00150184 	move	$r4,$r12
1c003a10:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003a14:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a18:	4c000020 	jirl	$r0,$r1,0

1c003a1c <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003a1c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a20:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003a24:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a28:	0015008c 	move	$r12,$r4
1c003a2c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003a30:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003a34:	0040898c 	slli.w	$r12,$r12,0x2
1c003a38:	0015018d 	move	$r13,$r12
1c003a3c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003a40:	0382018c 	ori	$r12,$r12,0x80
1c003a44:	001031ac 	add.w	$r12,$r13,$r12
1c003a48:	2880018c 	ld.w	$r12,$r12,0
1c003a4c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a50:	037ffd8c 	andi	$r12,$r12,0xfff
1c003a54:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a58:	00150184 	move	$r4,$r12
1c003a5c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003a60:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a64:	4c000020 	jirl	$r0,$r1,0

1c003a68 <Printf_KeyChannel>:
Printf_KeyChannel():
1c003a68:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003a6c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003a70:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003a74:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003a78:	0015008c 	move	$r12,$r4
1c003a7c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003a80:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003a84:	50003400 	b	52(0x34) # 1c003ab8 <Printf_KeyChannel+0x50>
1c003a88:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003a8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a90:	001831ac 	sra.w	$r12,$r13,$r12
1c003a94:	0340058c 	andi	$r12,$r12,0x1
1c003a98:	40001580 	beqz	$r12,20(0x14) # 1c003aac <Printf_KeyChannel+0x44>
1c003a9c:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003aa0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003aa4:	029cf084 	addi.w	$r4,$r4,1852(0x73c)
1c003aa8:	57e0fbff 	bl	-7944(0xfffe0f8) # 1c001ba0 <myprintf>
1c003aac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ab0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ab4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ab8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003abc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003ac0:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003a88 <Printf_KeyChannel+0x20>
1c003ac4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ac8:	029c7084 	addi.w	$r4,$r4,1820(0x71c)
1c003acc:	57e0d7ff 	bl	-7980(0xfffe0d4) # 1c001ba0 <myprintf>
1c003ad0:	03400000 	andi	$r0,$r0,0x0
1c003ad4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003ad8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003adc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003ae0:	4c000020 	jirl	$r0,$r1,0

1c003ae4 <Printf_KeyType>:
Printf_KeyType():
1c003ae4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ae8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003aec:	29806076 	st.w	$r22,$r3,24(0x18)
1c003af0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003af4:	0015008c 	move	$r12,$r4
1c003af8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003afc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b00:	0340058c 	andi	$r12,$r12,0x1
1c003b04:	40001180 	beqz	$r12,16(0x10) # 1c003b14 <Printf_KeyType+0x30>
1c003b08:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b0c:	029b7084 	addi.w	$r4,$r4,1756(0x6dc)
1c003b10:	57e093ff 	bl	-8048(0xfffe090) # 1c001ba0 <myprintf>
1c003b14:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b18:	0340098c 	andi	$r12,$r12,0x2
1c003b1c:	40001180 	beqz	$r12,16(0x10) # 1c003b2c <Printf_KeyType+0x48>
1c003b20:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b24:	029b3084 	addi.w	$r4,$r4,1740(0x6cc)
1c003b28:	57e07bff 	bl	-8072(0xfffe078) # 1c001ba0 <myprintf>
1c003b2c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b30:	0340118c 	andi	$r12,$r12,0x4
1c003b34:	40001180 	beqz	$r12,16(0x10) # 1c003b44 <Printf_KeyType+0x60>
1c003b38:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b3c:	029af084 	addi.w	$r4,$r4,1724(0x6bc)
1c003b40:	57e063ff 	bl	-8096(0xfffe060) # 1c001ba0 <myprintf>
1c003b44:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b48:	0340218c 	andi	$r12,$r12,0x8
1c003b4c:	40001180 	beqz	$r12,16(0x10) # 1c003b5c <Printf_KeyType+0x78>
1c003b50:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b54:	029ac084 	addi.w	$r4,$r4,1712(0x6b0)
1c003b58:	57e04bff 	bl	-8120(0xfffe048) # 1c001ba0 <myprintf>
1c003b5c:	03400000 	andi	$r0,$r0,0x0
1c003b60:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003b64:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003b68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b6c:	4c000020 	jirl	$r0,$r1,0

1c003b70 <Printf_KeyVal>:
Printf_KeyVal():
1c003b70:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003b74:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003b78:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003b7c:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003b80:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b84:	5000d800 	b	216(0xd8) # 1c003c5c <Printf_KeyVal+0xec>
1c003b88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b8c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b90:	00150184 	move	$r4,$r12
1c003b94:	57fe8bff 	bl	-376(0xffffe88) # 1c003a1c <TOUCH_GetCountValue>
1c003b98:	0015008c 	move	$r12,$r4
1c003b9c:	0015018d 	move	$r13,$r12
1c003ba0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ba4:	0040898c 	slli.w	$r12,$r12,0x2
1c003ba8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003bac:	001031cc 	add.w	$r12,$r14,$r12
1c003bb0:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003bb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bb8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003bbc:	00150184 	move	$r4,$r12
1c003bc0:	57fe13ff 	bl	-496(0xffffe10) # 1c0039d0 <TOUCH_GetBaseVal>
1c003bc4:	0015008c 	move	$r12,$r4
1c003bc8:	0015018d 	move	$r13,$r12
1c003bcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bd0:	0040898c 	slli.w	$r12,$r12,0x2
1c003bd4:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003bd8:	001031cc 	add.w	$r12,$r14,$r12
1c003bdc:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003be0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003be4:	0040898c 	slli.w	$r12,$r12,0x2
1c003be8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003bec:	001031ac 	add.w	$r12,$r13,$r12
1c003bf0:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003bf4:	40004980 	beqz	$r12,72(0x48) # 1c003c3c <Printf_KeyVal+0xcc>
1c003bf8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bfc:	0040898c 	slli.w	$r12,$r12,0x2
1c003c00:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c04:	001031ac 	add.w	$r12,$r13,$r12
1c003c08:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003c0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c10:	0040898c 	slli.w	$r12,$r12,0x2
1c003c14:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003c18:	001031cc 	add.w	$r12,$r14,$r12
1c003c1c:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003c20:	001131ad 	sub.w	$r13,$r13,$r12
1c003c24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c28:	0040898c 	slli.w	$r12,$r12,0x2
1c003c2c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003c30:	001031cc 	add.w	$r12,$r14,$r12
1c003c34:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003c38:	50001800 	b	24(0x18) # 1c003c50 <Printf_KeyVal+0xe0>
1c003c3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c40:	0040898c 	slli.w	$r12,$r12,0x2
1c003c44:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c48:	001031ac 	add.w	$r12,$r13,$r12
1c003c4c:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003c50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c54:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c58:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c5c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c60:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003c64:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003b88 <Printf_KeyVal+0x18>
1c003c68:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c6c:	02969084 	addi.w	$r4,$r4,1444(0x5a4)
1c003c70:	57df33ff 	bl	-8400(0xfffdf30) # 1c001ba0 <myprintf>
1c003c74:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c78:	02970084 	addi.w	$r4,$r4,1472(0x5c0)
1c003c7c:	57df27ff 	bl	-8412(0xfffdf24) # 1c001ba0 <myprintf>
1c003c80:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c84:	50003400 	b	52(0x34) # 1c003cb8 <Printf_KeyVal+0x148>
1c003c88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c8c:	0040898c 	slli.w	$r12,$r12,0x2
1c003c90:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c94:	001031ac 	add.w	$r12,$r13,$r12
1c003c98:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003c9c:	00150185 	move	$r5,$r12
1c003ca0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ca4:	02967084 	addi.w	$r4,$r4,1436(0x59c)
1c003ca8:	57defbff 	bl	-8456(0xfffdef8) # 1c001ba0 <myprintf>
1c003cac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cb0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003cb4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003cb8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003cbc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003cc0:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003c88 <Printf_KeyVal+0x118>
1c003cc4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003cc8:	02960084 	addi.w	$r4,$r4,1408(0x580)
1c003ccc:	57ded7ff 	bl	-8492(0xfffded4) # 1c001ba0 <myprintf>
1c003cd0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003cd4:	50003400 	b	52(0x34) # 1c003d08 <Printf_KeyVal+0x198>
1c003cd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cdc:	0040898c 	slli.w	$r12,$r12,0x2
1c003ce0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ce4:	001031ac 	add.w	$r12,$r13,$r12
1c003ce8:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003cec:	00150185 	move	$r5,$r12
1c003cf0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003cf4:	02953084 	addi.w	$r4,$r4,1356(0x54c)
1c003cf8:	57deabff 	bl	-8536(0xfffdea8) # 1c001ba0 <myprintf>
1c003cfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d08:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d0c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d10:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003cd8 <Printf_KeyVal+0x168>
1c003d14:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d18:	0294f084 	addi.w	$r4,$r4,1340(0x53c)
1c003d1c:	57de87ff 	bl	-8572(0xfffde84) # 1c001ba0 <myprintf>
1c003d20:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d24:	50007400 	b	116(0x74) # 1c003d98 <Printf_KeyVal+0x228>
1c003d28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d2c:	0040898c 	slli.w	$r12,$r12,0x2
1c003d30:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d34:	001031ac 	add.w	$r12,$r13,$r12
1c003d38:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003d3c:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003d68 <Printf_KeyVal+0x1f8>
1c003d40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d44:	0040898c 	slli.w	$r12,$r12,0x2
1c003d48:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d4c:	001031ac 	add.w	$r12,$r13,$r12
1c003d50:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003d54:	00150185 	move	$r5,$r12
1c003d58:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d5c:	02941084 	addi.w	$r4,$r4,1284(0x504)
1c003d60:	57de43ff 	bl	-8640(0xfffde40) # 1c001ba0 <myprintf>
1c003d64:	50002800 	b	40(0x28) # 1c003d8c <Printf_KeyVal+0x21c>
1c003d68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d6c:	0040898c 	slli.w	$r12,$r12,0x2
1c003d70:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d74:	001031ac 	add.w	$r12,$r13,$r12
1c003d78:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003d7c:	00150185 	move	$r5,$r12
1c003d80:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d84:	02939084 	addi.w	$r4,$r4,1252(0x4e4)
1c003d88:	57de1bff 	bl	-8680(0xfffde18) # 1c001ba0 <myprintf>
1c003d8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d98:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d9c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003da0:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003d28 <Printf_KeyVal+0x1b8>
1c003da4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003da8:	0290f084 	addi.w	$r4,$r4,1084(0x43c)
1c003dac:	57ddf7ff 	bl	-8716(0xfffddf4) # 1c001ba0 <myprintf>
1c003db0:	03400000 	andi	$r0,$r0,0x0
1c003db4:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003db8:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003dbc:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003dc0:	4c000020 	jirl	$r0,$r1,0

1c003dc4 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003dc4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003dc8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003dcc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003dd0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003dd4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003dd8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ddc:	2880018d 	ld.w	$r13,$r12,0
1c003de0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003de4:	0014b1ac 	and	$r12,$r13,$r12
1c003de8:	40001180 	beqz	$r12,16(0x10) # 1c003df8 <TIM_GetITStatus+0x34>
1c003dec:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003df0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003df4:	50000800 	b	8(0x8) # 1c003dfc <TIM_GetITStatus+0x38>
1c003df8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003dfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e00:	00150184 	move	$r4,$r12
1c003e04:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003e08:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003e0c:	4c000020 	jirl	$r0,$r1,0

1c003e10 <TIM_ClearIT>:
TIM_ClearIT():
1c003e10:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003e14:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003e18:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003e1c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003e20:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e24:	2880018e 	ld.w	$r14,$r12,0
1c003e28:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e2c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003e30:	001535cd 	or	$r13,$r14,$r13
1c003e34:	2980018d 	st.w	$r13,$r12,0
1c003e38:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003e3c:	03800d8c 	ori	$r12,$r12,0x3
1c003e40:	2a00018c 	ld.bu	$r12,$r12,0
1c003e44:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003e48:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003e4c:	03800d8c 	ori	$r12,$r12,0x3
1c003e50:	038005ad 	ori	$r13,$r13,0x1
1c003e54:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003e58:	2900018d 	st.b	$r13,$r12,0
1c003e5c:	03400000 	andi	$r0,$r0,0x0
1c003e60:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003e64:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e68:	4c000020 	jirl	$r0,$r1,0

1c003e6c <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003e6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e70:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e74:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e78:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e7c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003e80:	029590c6 	addi.w	$r6,$r6,1380(0x564)
1c003e84:	02804c05 	addi.w	$r5,$r0,19(0x13)
1c003e88:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e8c:	028f9084 	addi.w	$r4,$r4,996(0x3e4)
1c003e90:	57dd13ff 	bl	-8944(0xfffdd10) # 1c001ba0 <myprintf>
1c003e94:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003e98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e9c:	03808184 	ori	$r4,$r12,0x20
1c003ea0:	57f987ff 	bl	-1660(0xffff984) # 1c003824 <EXTI_ClearITPendingBit>
1c003ea4:	03400000 	andi	$r0,$r0,0x0
1c003ea8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003eac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003eb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003eb4:	4c000020 	jirl	$r0,$r1,0

1c003eb8 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c003eb8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ebc:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ec0:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ec4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ec8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003ecc:	0294c0c6 	addi.w	$r6,$r6,1328(0x530)
1c003ed0:	02806005 	addi.w	$r5,$r0,24(0x18)
1c003ed4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ed8:	028e6084 	addi.w	$r4,$r4,920(0x398)
1c003edc:	57dcc7ff 	bl	-9020(0xfffdcc4) # 1c001ba0 <myprintf>
1c003ee0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003ee4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ee8:	03808184 	ori	$r4,$r12,0x20
1c003eec:	57f93bff 	bl	-1736(0xffff938) # 1c003824 <EXTI_ClearITPendingBit>
1c003ef0:	03400000 	andi	$r0,$r0,0x0
1c003ef4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ef8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003efc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f00:	4c000020 	jirl	$r0,$r1,0

1c003f04 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c003f04:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f08:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f0c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f10:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f14:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003f18:	0293f0c6 	addi.w	$r6,$r6,1276(0x4fc)
1c003f1c:	02807405 	addi.w	$r5,$r0,29(0x1d)
1c003f20:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f24:	028d3084 	addi.w	$r4,$r4,844(0x34c)
1c003f28:	57dc7bff 	bl	-9096(0xfffdc78) # 1c001ba0 <myprintf>
1c003f2c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003f30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f34:	03808184 	ori	$r4,$r12,0x20
1c003f38:	57f8efff 	bl	-1812(0xffff8ec) # 1c003824 <EXTI_ClearITPendingBit>
1c003f3c:	03400000 	andi	$r0,$r0,0x0
1c003f40:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f44:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f48:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f4c:	4c000020 	jirl	$r0,$r1,0

1c003f50 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c003f50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f54:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f58:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f5c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f60:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003f64:	029320c6 	addi.w	$r6,$r6,1224(0x4c8)
1c003f68:	02808805 	addi.w	$r5,$r0,34(0x22)
1c003f6c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f70:	028c0084 	addi.w	$r4,$r4,768(0x300)
1c003f74:	57dc2fff 	bl	-9172(0xfffdc2c) # 1c001ba0 <myprintf>
1c003f78:	02802005 	addi.w	$r5,$r0,8(0x8)
1c003f7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f80:	03808184 	ori	$r4,$r12,0x20
1c003f84:	57f8a3ff 	bl	-1888(0xffff8a0) # 1c003824 <EXTI_ClearITPendingBit>
1c003f88:	03400000 	andi	$r0,$r0,0x0
1c003f8c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f90:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f98:	4c000020 	jirl	$r0,$r1,0

1c003f9c <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c003f9c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fa0:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fa4:	29802076 	st.w	$r22,$r3,8(0x8)
1c003fa8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fac:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003fb0:	029250c6 	addi.w	$r6,$r6,1172(0x494)
1c003fb4:	02809c05 	addi.w	$r5,$r0,39(0x27)
1c003fb8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fbc:	028ad084 	addi.w	$r4,$r4,692(0x2b4)
1c003fc0:	57dbe3ff 	bl	-9248(0xfffdbe0) # 1c001ba0 <myprintf>
1c003fc4:	02804005 	addi.w	$r5,$r0,16(0x10)
1c003fc8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003fcc:	03808184 	ori	$r4,$r12,0x20
1c003fd0:	57f857ff 	bl	-1964(0xffff854) # 1c003824 <EXTI_ClearITPendingBit>
1c003fd4:	03400000 	andi	$r0,$r0,0x0
1c003fd8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fdc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003fe0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003fe4:	4c000020 	jirl	$r0,$r1,0

1c003fe8 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c003fe8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fec:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ff0:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ff4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ff8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c003ffc:	029180c6 	addi.w	$r6,$r6,1120(0x460)
1c004000:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c004004:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004008:	0289a084 	addi.w	$r4,$r4,616(0x268)
1c00400c:	57db97ff 	bl	-9324(0xfffdb94) # 1c001ba0 <myprintf>
1c004010:	02808005 	addi.w	$r5,$r0,32(0x20)
1c004014:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004018:	03808184 	ori	$r4,$r12,0x20
1c00401c:	57f80bff 	bl	-2040(0xffff808) # 1c003824 <EXTI_ClearITPendingBit>
1c004020:	03400000 	andi	$r0,$r0,0x0
1c004024:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004028:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00402c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004030:	4c000020 	jirl	$r0,$r1,0

1c004034 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004034:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004038:	29803061 	st.w	$r1,$r3,12(0xc)
1c00403c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004040:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004044:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004048:	0290b0c6 	addi.w	$r6,$r6,1068(0x42c)
1c00404c:	0280c405 	addi.w	$r5,$r0,49(0x31)
1c004050:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004054:	02887084 	addi.w	$r4,$r4,540(0x21c)
1c004058:	57db4bff 	bl	-9400(0xfffdb48) # 1c001ba0 <myprintf>
1c00405c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004060:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004064:	03808184 	ori	$r4,$r12,0x20
1c004068:	57f7bfff 	bl	-2116(0xffff7bc) # 1c003824 <EXTI_ClearITPendingBit>
1c00406c:	03400000 	andi	$r0,$r0,0x0
1c004070:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004074:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004078:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00407c:	4c000020 	jirl	$r0,$r1,0

1c004080 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c004080:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004084:	29803061 	st.w	$r1,$r3,12(0xc)
1c004088:	29802076 	st.w	$r22,$r3,8(0x8)
1c00408c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004090:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004094:	028fe0c6 	addi.w	$r6,$r6,1016(0x3f8)
1c004098:	0280d805 	addi.w	$r5,$r0,54(0x36)
1c00409c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040a0:	02874084 	addi.w	$r4,$r4,464(0x1d0)
1c0040a4:	57daffff 	bl	-9476(0xfffdafc) # 1c001ba0 <myprintf>
1c0040a8:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0040ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040b0:	03808184 	ori	$r4,$r12,0x20
1c0040b4:	57f773ff 	bl	-2192(0xffff770) # 1c003824 <EXTI_ClearITPendingBit>
1c0040b8:	03400000 	andi	$r0,$r0,0x0
1c0040bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040c8:	4c000020 	jirl	$r0,$r1,0

1c0040cc <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0040cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040dc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0040e0:	028f10c6 	addi.w	$r6,$r6,964(0x3c4)
1c0040e4:	0280ec05 	addi.w	$r5,$r0,59(0x3b)
1c0040e8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040ec:	02861084 	addi.w	$r4,$r4,388(0x184)
1c0040f0:	57dab3ff 	bl	-9552(0xfffdab0) # 1c001ba0 <myprintf>
1c0040f4:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0040f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040fc:	03808184 	ori	$r4,$r12,0x20
1c004100:	57f727ff 	bl	-2268(0xffff724) # 1c003824 <EXTI_ClearITPendingBit>
1c004104:	03400000 	andi	$r0,$r0,0x0
1c004108:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00410c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004110:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004114:	4c000020 	jirl	$r0,$r1,0

1c004118 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c004118:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00411c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004120:	29802076 	st.w	$r22,$r3,8(0x8)
1c004124:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004128:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00412c:	028e40c6 	addi.w	$r6,$r6,912(0x390)
1c004130:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004134:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004138:	0284e084 	addi.w	$r4,$r4,312(0x138)
1c00413c:	57da67ff 	bl	-9628(0xfffda64) # 1c001ba0 <myprintf>
1c004140:	02880005 	addi.w	$r5,$r0,512(0x200)
1c004144:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004148:	03808184 	ori	$r4,$r12,0x20
1c00414c:	57f6dbff 	bl	-2344(0xffff6d8) # 1c003824 <EXTI_ClearITPendingBit>
1c004150:	03400000 	andi	$r0,$r0,0x0
1c004154:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004158:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00415c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004160:	4c000020 	jirl	$r0,$r1,0

1c004164 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c004164:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004168:	29803061 	st.w	$r1,$r3,12(0xc)
1c00416c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004170:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004174:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004178:	028d70c6 	addi.w	$r6,$r6,860(0x35c)
1c00417c:	02811405 	addi.w	$r5,$r0,69(0x45)
1c004180:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004184:	0283b084 	addi.w	$r4,$r4,236(0xec)
1c004188:	57da1bff 	bl	-9704(0xfffda18) # 1c001ba0 <myprintf>
1c00418c:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c004190:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004194:	03808184 	ori	$r4,$r12,0x20
1c004198:	57f68fff 	bl	-2420(0xffff68c) # 1c003824 <EXTI_ClearITPendingBit>
1c00419c:	03400000 	andi	$r0,$r0,0x0
1c0041a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041ac:	4c000020 	jirl	$r0,$r1,0

1c0041b0 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c0041b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041c0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0041c4:	028ca0c6 	addi.w	$r6,$r6,808(0x328)
1c0041c8:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c0041cc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0041d0:	02828084 	addi.w	$r4,$r4,160(0xa0)
1c0041d4:	57d9cfff 	bl	-9780(0xfffd9cc) # 1c001ba0 <myprintf>
1c0041d8:	03a00005 	ori	$r5,$r0,0x800
1c0041dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041e0:	03808184 	ori	$r4,$r12,0x20
1c0041e4:	57f643ff 	bl	-2496(0xffff640) # 1c003824 <EXTI_ClearITPendingBit>
1c0041e8:	03400000 	andi	$r0,$r0,0x0
1c0041ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041f8:	4c000020 	jirl	$r0,$r1,0

1c0041fc <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c0041fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004200:	29803061 	st.w	$r1,$r3,12(0xc)
1c004204:	29802076 	st.w	$r22,$r3,8(0x8)
1c004208:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00420c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004210:	028bd0c6 	addi.w	$r6,$r6,756(0x2f4)
1c004214:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c004218:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00421c:	02815084 	addi.w	$r4,$r4,84(0x54)
1c004220:	57d983ff 	bl	-9856(0xfffd980) # 1c001ba0 <myprintf>
1c004224:	14000025 	lu12i.w	$r5,1(0x1)
1c004228:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00422c:	03808184 	ori	$r4,$r12,0x20
1c004230:	57f5f7ff 	bl	-2572(0xffff5f4) # 1c003824 <EXTI_ClearITPendingBit>
1c004234:	03400000 	andi	$r0,$r0,0x0
1c004238:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00423c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004240:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004244:	4c000020 	jirl	$r0,$r1,0

1c004248 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c004248:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00424c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004250:	29802076 	st.w	$r22,$r3,8(0x8)
1c004254:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004258:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00425c:	028b00c6 	addi.w	$r6,$r6,704(0x2c0)
1c004260:	02815005 	addi.w	$r5,$r0,84(0x54)
1c004264:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004268:	02802084 	addi.w	$r4,$r4,8(0x8)
1c00426c:	57d937ff 	bl	-9932(0xfffd934) # 1c001ba0 <myprintf>
1c004270:	14000045 	lu12i.w	$r5,2(0x2)
1c004274:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004278:	03808184 	ori	$r4,$r12,0x20
1c00427c:	57f5abff 	bl	-2648(0xffff5a8) # 1c003824 <EXTI_ClearITPendingBit>
1c004280:	03400000 	andi	$r0,$r0,0x0
1c004284:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004288:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00428c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004290:	4c000020 	jirl	$r0,$r1,0

1c004294 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c004294:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004298:	29803061 	st.w	$r1,$r3,12(0xc)
1c00429c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042a4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042a8:	028a30c6 	addi.w	$r6,$r6,652(0x28c)
1c0042ac:	02816405 	addi.w	$r5,$r0,89(0x59)
1c0042b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042b4:	02bef084 	addi.w	$r4,$r4,-68(0xfbc)
1c0042b8:	57d8ebff 	bl	-10008(0xfffd8e8) # 1c001ba0 <myprintf>
1c0042bc:	14000085 	lu12i.w	$r5,4(0x4)
1c0042c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042c4:	03808184 	ori	$r4,$r12,0x20
1c0042c8:	57f55fff 	bl	-2724(0xffff55c) # 1c003824 <EXTI_ClearITPendingBit>
1c0042cc:	03400000 	andi	$r0,$r0,0x0
1c0042d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042dc:	4c000020 	jirl	$r0,$r1,0

1c0042e0 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0042e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042f0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042f4:	028960c6 	addi.w	$r6,$r6,600(0x258)
1c0042f8:	02817805 	addi.w	$r5,$r0,94(0x5e)
1c0042fc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004300:	02bdc084 	addi.w	$r4,$r4,-144(0xf70)
1c004304:	57d89fff 	bl	-10084(0xfffd89c) # 1c001ba0 <myprintf>
1c004308:	14000105 	lu12i.w	$r5,8(0x8)
1c00430c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004310:	03808184 	ori	$r4,$r12,0x20
1c004314:	57f513ff 	bl	-2800(0xffff510) # 1c003824 <EXTI_ClearITPendingBit>
1c004318:	03400000 	andi	$r0,$r0,0x0
1c00431c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004320:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004324:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004328:	4c000020 	jirl	$r0,$r1,0

1c00432c <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c00432c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004330:	29803061 	st.w	$r1,$r3,12(0xc)
1c004334:	29802076 	st.w	$r22,$r3,8(0x8)
1c004338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00433c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004340:	028890c6 	addi.w	$r6,$r6,548(0x224)
1c004344:	02819005 	addi.w	$r5,$r0,100(0x64)
1c004348:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00434c:	02bc9084 	addi.w	$r4,$r4,-220(0xf24)
1c004350:	57d853ff 	bl	-10160(0xfffd850) # 1c001ba0 <myprintf>
1c004354:	14000205 	lu12i.w	$r5,16(0x10)
1c004358:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00435c:	03808184 	ori	$r4,$r12,0x20
1c004360:	57f4c7ff 	bl	-2876(0xffff4c4) # 1c003824 <EXTI_ClearITPendingBit>
1c004364:	03400000 	andi	$r0,$r0,0x0
1c004368:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00436c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004370:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004374:	4c000020 	jirl	$r0,$r1,0

1c004378 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c004378:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00437c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004380:	29802076 	st.w	$r22,$r3,8(0x8)
1c004384:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004388:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00438c:	0287c0c6 	addi.w	$r6,$r6,496(0x1f0)
1c004390:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c004394:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004398:	02bb6084 	addi.w	$r4,$r4,-296(0xed8)
1c00439c:	57d807ff 	bl	-10236(0xfffd804) # 1c001ba0 <myprintf>
1c0043a0:	14000405 	lu12i.w	$r5,32(0x20)
1c0043a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043a8:	03808184 	ori	$r4,$r12,0x20
1c0043ac:	57f47bff 	bl	-2952(0xffff478) # 1c003824 <EXTI_ClearITPendingBit>
1c0043b0:	03400000 	andi	$r0,$r0,0x0
1c0043b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043c0:	4c000020 	jirl	$r0,$r1,0

1c0043c4 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c0043c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043d4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043d8:	0286f0c6 	addi.w	$r6,$r6,444(0x1bc)
1c0043dc:	0281b805 	addi.w	$r5,$r0,110(0x6e)
1c0043e0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043e4:	02ba3084 	addi.w	$r4,$r4,-372(0xe8c)
1c0043e8:	57d7bbff 	bl	-10312(0xfffd7b8) # 1c001ba0 <myprintf>
1c0043ec:	14000805 	lu12i.w	$r5,64(0x40)
1c0043f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043f4:	03808184 	ori	$r4,$r12,0x20
1c0043f8:	57f42fff 	bl	-3028(0xffff42c) # 1c003824 <EXTI_ClearITPendingBit>
1c0043fc:	03400000 	andi	$r0,$r0,0x0
1c004400:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004404:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004408:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00440c:	4c000020 	jirl	$r0,$r1,0

1c004410 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004410:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004414:	29803061 	st.w	$r1,$r3,12(0xc)
1c004418:	29802076 	st.w	$r22,$r3,8(0x8)
1c00441c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004420:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004424:	028620c6 	addi.w	$r6,$r6,392(0x188)
1c004428:	0281cc05 	addi.w	$r5,$r0,115(0x73)
1c00442c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004430:	02b90084 	addi.w	$r4,$r4,-448(0xe40)
1c004434:	57d76fff 	bl	-10388(0xfffd76c) # 1c001ba0 <myprintf>
1c004438:	14001005 	lu12i.w	$r5,128(0x80)
1c00443c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004440:	03808184 	ori	$r4,$r12,0x20
1c004444:	57f3e3ff 	bl	-3104(0xffff3e0) # 1c003824 <EXTI_ClearITPendingBit>
1c004448:	03400000 	andi	$r0,$r0,0x0
1c00444c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004450:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004454:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004458:	4c000020 	jirl	$r0,$r1,0

1c00445c <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c00445c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004460:	29803061 	st.w	$r1,$r3,12(0xc)
1c004464:	29802076 	st.w	$r22,$r3,8(0x8)
1c004468:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00446c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004470:	028550c6 	addi.w	$r6,$r6,340(0x154)
1c004474:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c004478:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00447c:	02b7d084 	addi.w	$r4,$r4,-524(0xdf4)
1c004480:	57d723ff 	bl	-10464(0xfffd720) # 1c001ba0 <myprintf>
1c004484:	14002005 	lu12i.w	$r5,256(0x100)
1c004488:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00448c:	03808184 	ori	$r4,$r12,0x20
1c004490:	57f397ff 	bl	-3180(0xffff394) # 1c003824 <EXTI_ClearITPendingBit>
1c004494:	03400000 	andi	$r0,$r0,0x0
1c004498:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00449c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044a4:	4c000020 	jirl	$r0,$r1,0

1c0044a8 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c0044a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044b8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044bc:	028480c6 	addi.w	$r6,$r6,288(0x120)
1c0044c0:	0281f405 	addi.w	$r5,$r0,125(0x7d)
1c0044c4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044c8:	02b6a084 	addi.w	$r4,$r4,-600(0xda8)
1c0044cc:	57d6d7ff 	bl	-10540(0xfffd6d4) # 1c001ba0 <myprintf>
1c0044d0:	14004005 	lu12i.w	$r5,512(0x200)
1c0044d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044d8:	03808184 	ori	$r4,$r12,0x20
1c0044dc:	57f34bff 	bl	-3256(0xffff348) # 1c003824 <EXTI_ClearITPendingBit>
1c0044e0:	03400000 	andi	$r0,$r0,0x0
1c0044e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044f0:	4c000020 	jirl	$r0,$r1,0

1c0044f4 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0044f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004500:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004504:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004508:	0283b0c6 	addi.w	$r6,$r6,236(0xec)
1c00450c:	02820805 	addi.w	$r5,$r0,130(0x82)
1c004510:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004514:	02b57084 	addi.w	$r4,$r4,-676(0xd5c)
1c004518:	57d68bff 	bl	-10616(0xfffd688) # 1c001ba0 <myprintf>
1c00451c:	14008005 	lu12i.w	$r5,1024(0x400)
1c004520:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004524:	03808184 	ori	$r4,$r12,0x20
1c004528:	57f2ffff 	bl	-3332(0xffff2fc) # 1c003824 <EXTI_ClearITPendingBit>
1c00452c:	03400000 	andi	$r0,$r0,0x0
1c004530:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004534:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004538:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00453c:	4c000020 	jirl	$r0,$r1,0

1c004540 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004540:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004544:	29803061 	st.w	$r1,$r3,12(0xc)
1c004548:	29802076 	st.w	$r22,$r3,8(0x8)
1c00454c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004550:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004554:	0282e0c6 	addi.w	$r6,$r6,184(0xb8)
1c004558:	02821c05 	addi.w	$r5,$r0,135(0x87)
1c00455c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004560:	02b44084 	addi.w	$r4,$r4,-752(0xd10)
1c004564:	57d63fff 	bl	-10692(0xfffd63c) # 1c001ba0 <myprintf>
1c004568:	14010005 	lu12i.w	$r5,2048(0x800)
1c00456c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004570:	03808184 	ori	$r4,$r12,0x20
1c004574:	57f2b3ff 	bl	-3408(0xffff2b0) # 1c003824 <EXTI_ClearITPendingBit>
1c004578:	03400000 	andi	$r0,$r0,0x0
1c00457c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004580:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004584:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004588:	4c000020 	jirl	$r0,$r1,0

1c00458c <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c00458c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004590:	29803061 	st.w	$r1,$r3,12(0xc)
1c004594:	29802076 	st.w	$r22,$r3,8(0x8)
1c004598:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00459c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045a0:	028210c6 	addi.w	$r6,$r6,132(0x84)
1c0045a4:	02823005 	addi.w	$r5,$r0,140(0x8c)
1c0045a8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045ac:	02b31084 	addi.w	$r4,$r4,-828(0xcc4)
1c0045b0:	57d5f3ff 	bl	-10768(0xfffd5f0) # 1c001ba0 <myprintf>
1c0045b4:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0045b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045bc:	03808184 	ori	$r4,$r12,0x20
1c0045c0:	57f267ff 	bl	-3484(0xffff264) # 1c003824 <EXTI_ClearITPendingBit>
1c0045c4:	03400000 	andi	$r0,$r0,0x0
1c0045c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045d4:	4c000020 	jirl	$r0,$r1,0

1c0045d8 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0045d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045e8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045ec:	028140c6 	addi.w	$r6,$r6,80(0x50)
1c0045f0:	02824405 	addi.w	$r5,$r0,145(0x91)
1c0045f4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045f8:	02b1e084 	addi.w	$r4,$r4,-904(0xc78)
1c0045fc:	57d5a7ff 	bl	-10844(0xfffd5a4) # 1c001ba0 <myprintf>
1c004600:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004604:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004608:	03808184 	ori	$r4,$r12,0x20
1c00460c:	57f21bff 	bl	-3560(0xffff218) # 1c003824 <EXTI_ClearITPendingBit>
1c004610:	03400000 	andi	$r0,$r0,0x0
1c004614:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004618:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00461c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004620:	4c000020 	jirl	$r0,$r1,0

1c004624 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004624:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004628:	29803061 	st.w	$r1,$r3,12(0xc)
1c00462c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004630:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004634:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004638:	028070c6 	addi.w	$r6,$r6,28(0x1c)
1c00463c:	02825805 	addi.w	$r5,$r0,150(0x96)
1c004640:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004644:	02b0b084 	addi.w	$r4,$r4,-980(0xc2c)
1c004648:	57d55bff 	bl	-10920(0xfffd558) # 1c001ba0 <myprintf>
1c00464c:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004650:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004654:	03808184 	ori	$r4,$r12,0x20
1c004658:	57f1cfff 	bl	-3636(0xffff1cc) # 1c003824 <EXTI_ClearITPendingBit>
1c00465c:	03400000 	andi	$r0,$r0,0x0
1c004660:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004664:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004668:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00466c:	4c000020 	jirl	$r0,$r1,0

1c004670 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004670:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004674:	29803061 	st.w	$r1,$r3,12(0xc)
1c004678:	29802076 	st.w	$r22,$r3,8(0x8)
1c00467c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004680:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004684:	02bfa0c6 	addi.w	$r6,$r6,-24(0xfe8)
1c004688:	02826c05 	addi.w	$r5,$r0,155(0x9b)
1c00468c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004690:	02af8084 	addi.w	$r4,$r4,-1056(0xbe0)
1c004694:	57d50fff 	bl	-10996(0xfffd50c) # 1c001ba0 <myprintf>
1c004698:	14100005 	lu12i.w	$r5,32768(0x8000)
1c00469c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046a0:	03808184 	ori	$r4,$r12,0x20
1c0046a4:	57f183ff 	bl	-3712(0xffff180) # 1c003824 <EXTI_ClearITPendingBit>
1c0046a8:	03400000 	andi	$r0,$r0,0x0
1c0046ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046b8:	4c000020 	jirl	$r0,$r1,0

1c0046bc <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c0046bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046cc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046d0:	02bed0c6 	addi.w	$r6,$r6,-76(0xfb4)
1c0046d4:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c0046d8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046dc:	02ae5084 	addi.w	$r4,$r4,-1132(0xb94)
1c0046e0:	57d4c3ff 	bl	-11072(0xfffd4c0) # 1c001ba0 <myprintf>
1c0046e4:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0046e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046ec:	03808184 	ori	$r4,$r12,0x20
1c0046f0:	57f137ff 	bl	-3788(0xffff134) # 1c003824 <EXTI_ClearITPendingBit>
1c0046f4:	03400000 	andi	$r0,$r0,0x0
1c0046f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004700:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004704:	4c000020 	jirl	$r0,$r1,0

1c004708 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004708:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00470c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004710:	29802076 	st.w	$r22,$r3,8(0x8)
1c004714:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004718:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00471c:	02be00c6 	addi.w	$r6,$r6,-128(0xf80)
1c004720:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c004724:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004728:	02ad2084 	addi.w	$r4,$r4,-1208(0xb48)
1c00472c:	57d477ff 	bl	-11148(0xfffd474) # 1c001ba0 <myprintf>
1c004730:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004734:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004738:	03808184 	ori	$r4,$r12,0x20
1c00473c:	57f0ebff 	bl	-3864(0xffff0e8) # 1c003824 <EXTI_ClearITPendingBit>
1c004740:	03400000 	andi	$r0,$r0,0x0
1c004744:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004748:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00474c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004750:	4c000020 	jirl	$r0,$r1,0

1c004754 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004754:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004758:	29803061 	st.w	$r1,$r3,12(0xc)
1c00475c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004760:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004764:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004768:	02bd30c6 	addi.w	$r6,$r6,-180(0xf4c)
1c00476c:	0282ac05 	addi.w	$r5,$r0,171(0xab)
1c004770:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004774:	02abf084 	addi.w	$r4,$r4,-1284(0xafc)
1c004778:	57d42bff 	bl	-11224(0xfffd428) # 1c001ba0 <myprintf>
1c00477c:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004780:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004784:	03808184 	ori	$r4,$r12,0x20
1c004788:	57f09fff 	bl	-3940(0xffff09c) # 1c003824 <EXTI_ClearITPendingBit>
1c00478c:	03400000 	andi	$r0,$r0,0x0
1c004790:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004794:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004798:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00479c:	4c000020 	jirl	$r0,$r1,0

1c0047a0 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c0047a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047b0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047b4:	02bc60c6 	addi.w	$r6,$r6,-232(0xf18)
1c0047b8:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c0047bc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0047c0:	02aac084 	addi.w	$r4,$r4,-1360(0xab0)
1c0047c4:	57d3dfff 	bl	-11300(0xfffd3dc) # 1c001ba0 <myprintf>
1c0047c8:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0047cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047d0:	03808184 	ori	$r4,$r12,0x20
1c0047d4:	57f053ff 	bl	-4016(0xffff050) # 1c003824 <EXTI_ClearITPendingBit>
1c0047d8:	03400000 	andi	$r0,$r0,0x0
1c0047dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047e8:	4c000020 	jirl	$r0,$r1,0

1c0047ec <ext_handler>:
ext_handler():
1c0047ec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0047f0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0047f4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0047f8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0047fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004800:	0380f18c 	ori	$r12,$r12,0x3c
1c004804:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004808:	2980018d 	st.w	$r13,$r12,0
1c00480c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004810:	0380818c 	ori	$r12,$r12,0x20
1c004814:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004818:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00481c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004820:	0380818c 	ori	$r12,$r12,0x20
1c004824:	2880018c 	ld.w	$r12,$r12,0
1c004828:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00482c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004830:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004834:	0014b1ac 	and	$r12,$r13,$r12
1c004838:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00483c:	03400000 	andi	$r0,$r0,0x0
1c004840:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004844:	50004000 	b	64(0x40) # 1c004884 <ext_handler+0x98>
1c004848:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00484c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004850:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004854:	0340058c 	andi	$r12,$r12,0x1
1c004858:	40002180 	beqz	$r12,32(0x20) # 1c004878 <ext_handler+0x8c>
1c00485c:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c004860:	02ab01ad 	addi.w	$r13,$r13,-1344(0xac0)
1c004864:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004868:	0040898c 	slli.w	$r12,$r12,0x2
1c00486c:	001031ac 	add.w	$r12,$r13,$r12
1c004870:	2880018c 	ld.w	$r12,$r12,0
1c004874:	4c000181 	jirl	$r1,$r12,0
1c004878:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00487c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004880:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004884:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004888:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00488c:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004848 <ext_handler+0x5c>
1c004890:	03400000 	andi	$r0,$r0,0x0
1c004894:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004898:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00489c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0048a0:	4c000020 	jirl	$r0,$r1,0

1c0048a4 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c0048a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0048a8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0048ac:	29806076 	st.w	$r22,$r3,24(0x18)
1c0048b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0048b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048b8:	0380f18c 	ori	$r12,$r12,0x3c
1c0048bc:	1400020d 	lu12i.w	$r13,16(0x10)
1c0048c0:	2980018d 	st.w	$r13,$r12,0
1c0048c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048c8:	0380118c 	ori	$r12,$r12,0x4
1c0048cc:	2880018c 	ld.w	$r12,$r12,0
1c0048d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0048d4:	57f0a3ff 	bl	-3936(0xffff0a0) # 1c003974 <WDG_DogFeed>
1c0048d8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0048dc:	57e97fff 	bl	-5764(0xfffe97c) # 1c003258 <Wake_Set>
1c0048e0:	03400000 	andi	$r0,$r0,0x0
1c0048e4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0048e8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0048ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0048f0:	4c000020 	jirl	$r0,$r1,0

1c0048f4 <TOUCH>:
TOUCH():
1c0048f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0048f8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0048fc:	29806076 	st.w	$r22,$r3,24(0x18)
1c004900:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004904:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004908:	0380118c 	ori	$r12,$r12,0x4
1c00490c:	2880018c 	ld.w	$r12,$r12,0
1c004910:	0044c18c 	srli.w	$r12,$r12,0x10
1c004914:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004918:	037ffd8c 	andi	$r12,$r12,0xfff
1c00491c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004920:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004924:	0380118c 	ori	$r12,$r12,0x4
1c004928:	2880018c 	ld.w	$r12,$r12,0
1c00492c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004930:	03403d8c 	andi	$r12,$r12,0xf
1c004934:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004938:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00493c:	0380f18c 	ori	$r12,$r12,0x3c
1c004940:	1400040d 	lu12i.w	$r13,32(0x20)
1c004944:	2980018d 	st.w	$r13,$r12,0
1c004948:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00494c:	0380118c 	ori	$r12,$r12,0x4
1c004950:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004954:	2980018d 	st.w	$r13,$r12,0
1c004958:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c00495c:	00150184 	move	$r4,$r12
1c004960:	57f187ff 	bl	-3708(0xffff184) # 1c003ae4 <Printf_KeyType>
1c004964:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004968:	00150184 	move	$r4,$r12
1c00496c:	57f0ffff 	bl	-3844(0xffff0fc) # 1c003a68 <Printf_KeyChannel>
1c004970:	57f203ff 	bl	-3584(0xffff200) # 1c003b70 <Printf_KeyVal>
1c004974:	03400000 	andi	$r0,$r0,0x0
1c004978:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00497c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004980:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004984:	4c000020 	jirl	$r0,$r1,0

1c004988 <UART2_INT>:
UART2_INT():
1c004988:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00498c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004990:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004994:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004998:	0380f18c 	ori	$r12,$r12,0x3c
1c00499c:	1400080d 	lu12i.w	$r13,64(0x40)
1c0049a0:	2980018d 	st.w	$r13,$r12,0
1c0049a4:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0049a8:	0380098c 	ori	$r12,$r12,0x2
1c0049ac:	2a00018c 	ld.bu	$r12,$r12,0
1c0049b0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0049b4:	03400000 	andi	$r0,$r0,0x0
1c0049b8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0049bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0049c0:	4c000020 	jirl	$r0,$r1,0

1c0049c4 <BAT_FAIL>:
BAT_FAIL():
1c0049c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0049c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0049cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0049d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0049d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049d8:	0380118c 	ori	$r12,$r12,0x4
1c0049dc:	2880018c 	ld.w	$r12,$r12,0
1c0049e0:	0044cd8c 	srli.w	$r12,$r12,0x13
1c0049e4:	03407d8c 	andi	$r12,$r12,0x1f
1c0049e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0049ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049f0:	0380118c 	ori	$r12,$r12,0x4
1c0049f4:	2880018e 	ld.w	$r14,$r12,0
1c0049f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049fc:	0380f18c 	ori	$r12,$r12,0x3c
1c004a00:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004a04:	0014b5cd 	and	$r13,$r14,$r13
1c004a08:	2980018d 	st.w	$r13,$r12,0
1c004a0c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004a10:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004a14:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004a84 <BAT_FAIL+0xc0>
1c004a18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a1c:	0040898d 	slli.w	$r13,$r12,0x2
1c004a20:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c004a24:	02a5f18c 	addi.w	$r12,$r12,-1668(0x97c)
1c004a28:	001031ac 	add.w	$r12,$r13,$r12
1c004a2c:	2880018c 	ld.w	$r12,$r12,0
1c004a30:	4c000180 	jirl	$r0,$r12,0
1c004a34:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004a38:	02a1f084 	addi.w	$r4,$r4,-1924(0x87c)
1c004a3c:	57d167ff 	bl	-11932(0xfffd164) # 1c001ba0 <myprintf>
1c004a40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a44:	0380118c 	ori	$r12,$r12,0x4
1c004a48:	29800180 	st.w	$r0,$r12,0
1c004a4c:	50003c00 	b	60(0x3c) # 1c004a88 <BAT_FAIL+0xc4>
1c004a50:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004a54:	02a22084 	addi.w	$r4,$r4,-1912(0x888)
1c004a58:	57d14bff 	bl	-11960(0xfffd148) # 1c001ba0 <myprintf>
1c004a5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a60:	0380118c 	ori	$r12,$r12,0x4
1c004a64:	2880018e 	ld.w	$r14,$r12,0
1c004a68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a6c:	0380118c 	ori	$r12,$r12,0x4
1c004a70:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004a74:	03bffdad 	ori	$r13,$r13,0xfff
1c004a78:	0014b5cd 	and	$r13,$r14,$r13
1c004a7c:	2980018d 	st.w	$r13,$r12,0
1c004a80:	50000800 	b	8(0x8) # 1c004a88 <BAT_FAIL+0xc4>
1c004a84:	03400000 	andi	$r0,$r0,0x0
1c004a88:	03400000 	andi	$r0,$r0,0x0
1c004a8c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a90:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004a94:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a98:	4c000020 	jirl	$r0,$r1,0

1c004a9c <intc_handler>:
intc_handler():
1c004a9c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004aa0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004aa4:	29806076 	st.w	$r22,$r3,24(0x18)
1c004aa8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004aac:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004ab0:	0380158c 	ori	$r12,$r12,0x5
1c004ab4:	2a00018c 	ld.bu	$r12,$r12,0
1c004ab8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004abc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ac0:	0340058c 	andi	$r12,$r12,0x1
1c004ac4:	40001d80 	beqz	$r12,28(0x1c) # 1c004ae0 <intc_handler+0x44>
1c004ac8:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004acc:	57f2fbff 	bl	-3336(0xffff2f8) # 1c003dc4 <TIM_GetITStatus>
1c004ad0:	0015008c 	move	$r12,$r4
1c004ad4:	40000d80 	beqz	$r12,12(0xc) # 1c004ae0 <intc_handler+0x44>
1c004ad8:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004adc:	57f337ff 	bl	-3276(0xffff334) # 1c003e10 <TIM_ClearIT>
1c004ae0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ae4:	0340118c 	andi	$r12,$r12,0x4
1c004ae8:	40001580 	beqz	$r12,20(0x14) # 1c004afc <intc_handler+0x60>
1c004aec:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004af0:	03800d8c 	ori	$r12,$r12,0x3
1c004af4:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004af8:	2900018d 	st.b	$r13,$r12,0
1c004afc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004b00:	0340218c 	andi	$r12,$r12,0x8
1c004b04:	40007d80 	beqz	$r12,124(0x7c) # 1c004b80 <intc_handler+0xe4>
1c004b08:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004b0c:	0380098c 	ori	$r12,$r12,0x2
1c004b10:	2a00018c 	ld.bu	$r12,$r12,0
1c004b14:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004b18:	0340118c 	andi	$r12,$r12,0x4
1c004b1c:	40005580 	beqz	$r12,84(0x54) # 1c004b70 <intc_handler+0xd4>
1c004b20:	50003800 	b	56(0x38) # 1c004b58 <intc_handler+0xbc>
1c004b24:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c004b28:	57df3bff 	bl	-8392(0xfffdf38) # 1c002a60 <UART_ReceiveData>
1c004b2c:	0015008c 	move	$r12,$r4
1c004b30:	0015018d 	move	$r13,$r12
1c004b34:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004b38:	0293318c 	addi.w	$r12,$r12,1228(0x4cc)
1c004b3c:	2900018d 	st.b	$r13,$r12,0
1c004b40:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004b44:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c004b48:	0292f0a5 	addi.w	$r5,$r5,1212(0x4bc)
1c004b4c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004b50:	28932084 	ld.w	$r4,$r4,1224(0x4c8)
1c004b54:	541d3800 	bl	7480(0x1d38) # 1c00688c <Queue_Wirte>
1c004b58:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004b5c:	0380158c 	ori	$r12,$r12,0x5
1c004b60:	2a00018c 	ld.bu	$r12,$r12,0
1c004b64:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004b68:	0340058c 	andi	$r12,$r12,0x1
1c004b6c:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c004b24 <intc_handler+0x88>
1c004b70:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004b74:	03800d8c 	ori	$r12,$r12,0x3
1c004b78:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004b7c:	2900018d 	st.b	$r13,$r12,0
1c004b80:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004b84:	03800d8c 	ori	$r12,$r12,0x3
1c004b88:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004b8c:	2900018d 	st.b	$r13,$r12,0
1c004b90:	03400000 	andi	$r0,$r0,0x0
1c004b94:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004b98:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004b9c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ba0:	4c000020 	jirl	$r0,$r1,0

1c004ba4 <TIMER_HANDLER>:
TIMER_HANDLER():
1c004ba4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ba8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004bac:	29802076 	st.w	$r22,$r3,8(0x8)
1c004bb0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004bb4:	57e683ff 	bl	-6528(0xfffe680) # 1c003234 <Set_Timer_clear>
1c004bb8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004bbc:	029d1084 	addi.w	$r4,$r4,1860(0x744)
1c004bc0:	57cfe3ff 	bl	-12320(0xfffcfe0) # 1c001ba0 <myprintf>
1c004bc4:	57e653ff 	bl	-6576(0xfffe650) # 1c003214 <Set_Timer_stop>
1c004bc8:	03400000 	andi	$r0,$r0,0x0
1c004bcc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004bd0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004bd4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004bd8:	4c000020 	jirl	$r0,$r1,0

1c004bdc <IIC_Delay>:
IIC_Delay():
1c004bdc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004be0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004be4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004be8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004bec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004bf0:	50001000 	b	16(0x10) # 1c004c00 <IIC_Delay+0x24>
1c004bf4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004bf8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004bfc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004c00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c04:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004bf4 <IIC_Delay+0x18>
1c004c08:	03400000 	andi	$r0,$r0,0x0
1c004c0c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004c10:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c14:	4c000020 	jirl	$r0,$r1,0

1c004c18 <IIC_Init>:
IIC_Init():
1c004c18:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c1c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c20:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c24:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c28:	00150005 	move	$r5,$r0
1c004c2c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004c30:	57ca33ff 	bl	-13776(0xfffca30) # 1c001660 <gpio_pin_remap>
1c004c34:	00150005 	move	$r5,$r0
1c004c38:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004c3c:	57ca27ff 	bl	-13788(0xfffca24) # 1c001660 <gpio_pin_remap>
1c004c40:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c44:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004c48:	57cc27ff 	bl	-13276(0xfffcc24) # 1c00186c <gpio_set_direction>
1c004c4c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c50:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004c54:	57cc1bff 	bl	-13288(0xfffcc18) # 1c00186c <gpio_set_direction>
1c004c58:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c5c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004c60:	57c98bff 	bl	-13944(0xfffc988) # 1c0015e8 <gpio_write_pin>
1c004c64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c68:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004c6c:	57c97fff 	bl	-13956(0xfffc97c) # 1c0015e8 <gpio_write_pin>
1c004c70:	03400000 	andi	$r0,$r0,0x0
1c004c74:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c78:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c80:	4c000020 	jirl	$r0,$r1,0

1c004c84 <SDA_IN>:
SDA_IN():
1c004c84:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c88:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c8c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c90:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c94:	00150005 	move	$r5,$r0
1c004c98:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004c9c:	57cbd3ff 	bl	-13360(0xfffcbd0) # 1c00186c <gpio_set_direction>
1c004ca0:	03400000 	andi	$r0,$r0,0x0
1c004ca4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ca8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004cac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004cb0:	4c000020 	jirl	$r0,$r1,0

1c004cb4 <SDA_OUT>:
SDA_OUT():
1c004cb4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004cb8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004cbc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004cc0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004cc4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004cc8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004ccc:	57cba3ff 	bl	-13408(0xfffcba0) # 1c00186c <gpio_set_direction>
1c004cd0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004cd4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004cd8:	57c913ff 	bl	-14064(0xfffc910) # 1c0015e8 <gpio_write_pin>
1c004cdc:	03400000 	andi	$r0,$r0,0x0
1c004ce0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ce4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ce8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004cec:	4c000020 	jirl	$r0,$r1,0

1c004cf0 <IIC_Start>:
IIC_Start():
1c004cf0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004cf4:	29803061 	st.w	$r1,$r3,12(0xc)
1c004cf8:	29802076 	st.w	$r22,$r3,8(0x8)
1c004cfc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004d00:	57ffb7ff 	bl	-76(0xfffffb4) # 1c004cb4 <SDA_OUT>
1c004d04:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d08:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004d0c:	57c8dfff 	bl	-14116(0xfffc8dc) # 1c0015e8 <gpio_write_pin>
1c004d10:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d14:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004d18:	57c8d3ff 	bl	-14128(0xfffc8d0) # 1c0015e8 <gpio_write_pin>
1c004d1c:	57fec3ff 	bl	-320(0xffffec0) # 1c004bdc <IIC_Delay>
1c004d20:	00150005 	move	$r5,$r0
1c004d24:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004d28:	57c8c3ff 	bl	-14144(0xfffc8c0) # 1c0015e8 <gpio_write_pin>
1c004d2c:	57feb3ff 	bl	-336(0xffffeb0) # 1c004bdc <IIC_Delay>
1c004d30:	00150005 	move	$r5,$r0
1c004d34:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004d38:	57c8b3ff 	bl	-14160(0xfffc8b0) # 1c0015e8 <gpio_write_pin>
1c004d3c:	03400000 	andi	$r0,$r0,0x0
1c004d40:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004d44:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004d48:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004d4c:	4c000020 	jirl	$r0,$r1,0

1c004d50 <IIC_Stop>:
IIC_Stop():
1c004d50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004d54:	29803061 	st.w	$r1,$r3,12(0xc)
1c004d58:	29802076 	st.w	$r22,$r3,8(0x8)
1c004d5c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004d60:	57ff57ff 	bl	-172(0xfffff54) # 1c004cb4 <SDA_OUT>
1c004d64:	00150005 	move	$r5,$r0
1c004d68:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004d6c:	57c87fff 	bl	-14212(0xfffc87c) # 1c0015e8 <gpio_write_pin>
1c004d70:	00150005 	move	$r5,$r0
1c004d74:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004d78:	57c873ff 	bl	-14224(0xfffc870) # 1c0015e8 <gpio_write_pin>
1c004d7c:	57fe63ff 	bl	-416(0xffffe60) # 1c004bdc <IIC_Delay>
1c004d80:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d84:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004d88:	57c863ff 	bl	-14240(0xfffc860) # 1c0015e8 <gpio_write_pin>
1c004d8c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d90:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004d94:	57c857ff 	bl	-14252(0xfffc854) # 1c0015e8 <gpio_write_pin>
1c004d98:	57fe47ff 	bl	-444(0xffffe44) # 1c004bdc <IIC_Delay>
1c004d9c:	03400000 	andi	$r0,$r0,0x0
1c004da0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004da4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004da8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004dac:	4c000020 	jirl	$r0,$r1,0

1c004db0 <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c004db0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004db4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004db8:	29806076 	st.w	$r22,$r3,24(0x18)
1c004dbc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004dc0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004dc4:	57fec3ff 	bl	-320(0xffffec0) # 1c004c84 <SDA_IN>
1c004dc8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004dcc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004dd0:	57c81bff 	bl	-14312(0xfffc818) # 1c0015e8 <gpio_write_pin>
1c004dd4:	57fe0bff 	bl	-504(0xffffe08) # 1c004bdc <IIC_Delay>
1c004dd8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ddc:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004de0:	57c80bff 	bl	-14328(0xfffc808) # 1c0015e8 <gpio_write_pin>
1c004de4:	57fdfbff 	bl	-520(0xffffdf8) # 1c004bdc <IIC_Delay>
1c004de8:	50002800 	b	40(0x28) # 1c004e10 <IIC_Wait_Ack+0x60>
1c004dec:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004df0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004df4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004df8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004dfc:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c004e00:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c004e10 <IIC_Wait_Ack+0x60>
1c004e04:	57ff4fff 	bl	-180(0xfffff4c) # 1c004d50 <IIC_Stop>
1c004e08:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004e0c:	50002400 	b	36(0x24) # 1c004e30 <IIC_Wait_Ack+0x80>
1c004e10:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004e14:	57c787ff 	bl	-14460(0xfffc784) # 1c001598 <gpio_get_pin>
1c004e18:	0015008c 	move	$r12,$r4
1c004e1c:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c004dec <IIC_Wait_Ack+0x3c>
1c004e20:	00150005 	move	$r5,$r0
1c004e24:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004e28:	57c7c3ff 	bl	-14400(0xfffc7c0) # 1c0015e8 <gpio_write_pin>
1c004e2c:	0015000c 	move	$r12,$r0
1c004e30:	00150184 	move	$r4,$r12
1c004e34:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004e38:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004e3c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004e40:	4c000020 	jirl	$r0,$r1,0

1c004e44 <IIC_Send_Byte>:
IIC_Send_Byte():
1c004e44:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004e48:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004e4c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004e50:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004e54:	0015008c 	move	$r12,$r4
1c004e58:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004e5c:	57fe5bff 	bl	-424(0xffffe58) # 1c004cb4 <SDA_OUT>
1c004e60:	00150005 	move	$r5,$r0
1c004e64:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004e68:	57c783ff 	bl	-14464(0xfffc780) # 1c0015e8 <gpio_write_pin>
1c004e6c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004e70:	50006000 	b	96(0x60) # 1c004ed0 <IIC_Send_Byte+0x8c>
1c004e74:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c004e78:	64001580 	bge	$r12,$r0,20(0x14) # 1c004e8c <IIC_Send_Byte+0x48>
1c004e7c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e80:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004e84:	57c767ff 	bl	-14492(0xfffc764) # 1c0015e8 <gpio_write_pin>
1c004e88:	50001000 	b	16(0x10) # 1c004e98 <IIC_Send_Byte+0x54>
1c004e8c:	00150005 	move	$r5,$r0
1c004e90:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004e94:	57c757ff 	bl	-14508(0xfffc754) # 1c0015e8 <gpio_write_pin>
1c004e98:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004e9c:	0040858c 	slli.w	$r12,$r12,0x1
1c004ea0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004ea4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ea8:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004eac:	57c73fff 	bl	-14532(0xfffc73c) # 1c0015e8 <gpio_write_pin>
1c004eb0:	57fd2fff 	bl	-724(0xffffd2c) # 1c004bdc <IIC_Delay>
1c004eb4:	00150005 	move	$r5,$r0
1c004eb8:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004ebc:	57c72fff 	bl	-14548(0xfffc72c) # 1c0015e8 <gpio_write_pin>
1c004ec0:	57fd1fff 	bl	-740(0xffffd1c) # 1c004bdc <IIC_Delay>
1c004ec4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ec8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ecc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004ed0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004ed4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004ed8:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c004e74 <IIC_Send_Byte+0x30>
1c004edc:	03400000 	andi	$r0,$r0,0x0
1c004ee0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004ee4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004ee8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004eec:	4c000020 	jirl	$r0,$r1,0

1c004ef0 <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c004ef0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ef4:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ef8:	29802076 	st.w	$r22,$r3,8(0x8)
1c004efc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f00:	57fd1bff 	bl	-744(0xffffd18) # 1c004c18 <IIC_Init>
1c004f04:	03400000 	andi	$r0,$r0,0x0
1c004f08:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f0c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f10:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f14:	4c000020 	jirl	$r0,$r1,0

1c004f18 <OLED_WR_Byte>:
OLED_WR_Byte():
1c004f18:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004f1c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004f20:	29806076 	st.w	$r22,$r3,24(0x18)
1c004f24:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004f28:	0015008c 	move	$r12,$r4
1c004f2c:	001500ad 	move	$r13,$r5
1c004f30:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004f34:	001501ac 	move	$r12,$r13
1c004f38:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004f3c:	57fdb7ff 	bl	-588(0xffffdb4) # 1c004cf0 <IIC_Start>
1c004f40:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c004f44:	57ff03ff 	bl	-256(0xfffff00) # 1c004e44 <IIC_Send_Byte>
1c004f48:	57fe6bff 	bl	-408(0xffffe68) # 1c004db0 <IIC_Wait_Ack>
1c004f4c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004f50:	00150184 	move	$r4,$r12
1c004f54:	57fef3ff 	bl	-272(0xffffef0) # 1c004e44 <IIC_Send_Byte>
1c004f58:	57fe5bff 	bl	-424(0xffffe58) # 1c004db0 <IIC_Wait_Ack>
1c004f5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004f60:	00150184 	move	$r4,$r12
1c004f64:	57fee3ff 	bl	-288(0xffffee0) # 1c004e44 <IIC_Send_Byte>
1c004f68:	57fe4bff 	bl	-440(0xffffe48) # 1c004db0 <IIC_Wait_Ack>
1c004f6c:	57fde7ff 	bl	-540(0xffffde4) # 1c004d50 <IIC_Stop>
1c004f70:	03400000 	andi	$r0,$r0,0x0
1c004f74:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004f78:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004f7c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004f80:	4c000020 	jirl	$r0,$r1,0

1c004f84 <OLED_Set_Pos>:
OLED_Set_Pos():
1c004f84:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004f88:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004f8c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004f90:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004f94:	0015008c 	move	$r12,$r4
1c004f98:	001500ad 	move	$r13,$r5
1c004f9c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004fa0:	001501ac 	move	$r12,$r13
1c004fa4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004fa8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004fac:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c004fb0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004fb4:	00150005 	move	$r5,$r0
1c004fb8:	00150184 	move	$r4,$r12
1c004fbc:	57ff5fff 	bl	-164(0xfffff5c) # 1c004f18 <OLED_WR_Byte>
1c004fc0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004fc4:	0044918c 	srli.w	$r12,$r12,0x4
1c004fc8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004fcc:	0380418c 	ori	$r12,$r12,0x10
1c004fd0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004fd4:	00150005 	move	$r5,$r0
1c004fd8:	00150184 	move	$r4,$r12
1c004fdc:	57ff3fff 	bl	-196(0xfffff3c) # 1c004f18 <OLED_WR_Byte>
1c004fe0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004fe4:	03403d8c 	andi	$r12,$r12,0xf
1c004fe8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004fec:	00150005 	move	$r5,$r0
1c004ff0:	00150184 	move	$r4,$r12
1c004ff4:	57ff27ff 	bl	-220(0xfffff24) # 1c004f18 <OLED_WR_Byte>
1c004ff8:	03400000 	andi	$r0,$r0,0x0
1c004ffc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005000:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005004:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005008:	4c000020 	jirl	$r0,$r1,0

1c00500c <OLED_Clear>:
OLED_Clear():
1c00500c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005010:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005014:	29806076 	st.w	$r22,$r3,24(0x18)
1c005018:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00501c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005020:	50006800 	b	104(0x68) # 1c005088 <OLED_Clear+0x7c>
1c005024:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005028:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c00502c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005030:	00150005 	move	$r5,$r0
1c005034:	00150184 	move	$r4,$r12
1c005038:	57fee3ff 	bl	-288(0xffffee0) # 1c004f18 <OLED_WR_Byte>
1c00503c:	00150005 	move	$r5,$r0
1c005040:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005044:	57fed7ff 	bl	-300(0xffffed4) # 1c004f18 <OLED_WR_Byte>
1c005048:	00150005 	move	$r5,$r0
1c00504c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005050:	57fecbff 	bl	-312(0xffffec8) # 1c004f18 <OLED_WR_Byte>
1c005054:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005058:	50001c00 	b	28(0x1c) # 1c005074 <OLED_Clear+0x68>
1c00505c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005060:	00150004 	move	$r4,$r0
1c005064:	57feb7ff 	bl	-332(0xffffeb4) # 1c004f18 <OLED_WR_Byte>
1c005068:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00506c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005070:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005074:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c005078:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c00505c <OLED_Clear+0x50>
1c00507c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005080:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005084:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005088:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00508c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005090:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c005024 <OLED_Clear+0x18>
1c005094:	03400000 	andi	$r0,$r0,0x0
1c005098:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00509c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0050a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0050a4:	4c000020 	jirl	$r0,$r1,0

1c0050a8 <OLED_Init>:
OLED_Init():
1c0050a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0050ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0050b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0050b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0050b8:	57fe3bff 	bl	-456(0xffffe38) # 1c004ef0 <OLED_Hardware_Init>
1c0050bc:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0050c0:	57e557ff 	bl	-6828(0xfffe554) # 1c003614 <delay_ms>
1c0050c4:	57ff4bff 	bl	-184(0xfffff48) # 1c00500c <OLED_Clear>
1c0050c8:	00150005 	move	$r5,$r0
1c0050cc:	00150004 	move	$r4,$r0
1c0050d0:	57feb7ff 	bl	-332(0xffffeb4) # 1c004f84 <OLED_Set_Pos>
1c0050d4:	00150005 	move	$r5,$r0
1c0050d8:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c0050dc:	57fe3fff 	bl	-452(0xffffe3c) # 1c004f18 <OLED_WR_Byte>
1c0050e0:	00150005 	move	$r5,$r0
1c0050e4:	00150004 	move	$r4,$r0
1c0050e8:	57fe33ff 	bl	-464(0xffffe30) # 1c004f18 <OLED_WR_Byte>
1c0050ec:	00150005 	move	$r5,$r0
1c0050f0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0050f4:	57fe27ff 	bl	-476(0xffffe24) # 1c004f18 <OLED_WR_Byte>
1c0050f8:	00150005 	move	$r5,$r0
1c0050fc:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005100:	57fe1bff 	bl	-488(0xffffe18) # 1c004f18 <OLED_WR_Byte>
1c005104:	00150005 	move	$r5,$r0
1c005108:	02820404 	addi.w	$r4,$r0,129(0x81)
1c00510c:	57fe0fff 	bl	-500(0xffffe0c) # 1c004f18 <OLED_WR_Byte>
1c005110:	00150005 	move	$r5,$r0
1c005114:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c005118:	57fe03ff 	bl	-512(0xffffe00) # 1c004f18 <OLED_WR_Byte>
1c00511c:	00150005 	move	$r5,$r0
1c005120:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c005124:	57fdf7ff 	bl	-524(0xffffdf4) # 1c004f18 <OLED_WR_Byte>
1c005128:	00150005 	move	$r5,$r0
1c00512c:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c005130:	57fdebff 	bl	-536(0xffffde8) # 1c004f18 <OLED_WR_Byte>
1c005134:	00150005 	move	$r5,$r0
1c005138:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c00513c:	57fddfff 	bl	-548(0xffffddc) # 1c004f18 <OLED_WR_Byte>
1c005140:	00150005 	move	$r5,$r0
1c005144:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c005148:	57fdd3ff 	bl	-560(0xffffdd0) # 1c004f18 <OLED_WR_Byte>
1c00514c:	00150005 	move	$r5,$r0
1c005150:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005154:	57fdc7ff 	bl	-572(0xffffdc4) # 1c004f18 <OLED_WR_Byte>
1c005158:	00150005 	move	$r5,$r0
1c00515c:	02820404 	addi.w	$r4,$r0,129(0x81)
1c005160:	57fdbbff 	bl	-584(0xffffdb8) # 1c004f18 <OLED_WR_Byte>
1c005164:	00150005 	move	$r5,$r0
1c005168:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c00516c:	57fdafff 	bl	-596(0xffffdac) # 1c004f18 <OLED_WR_Byte>
1c005170:	00150005 	move	$r5,$r0
1c005174:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c005178:	57fda3ff 	bl	-608(0xffffda0) # 1c004f18 <OLED_WR_Byte>
1c00517c:	00150005 	move	$r5,$r0
1c005180:	00150004 	move	$r4,$r0
1c005184:	57fd97ff 	bl	-620(0xffffd94) # 1c004f18 <OLED_WR_Byte>
1c005188:	00150005 	move	$r5,$r0
1c00518c:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c005190:	57fd8bff 	bl	-632(0xffffd88) # 1c004f18 <OLED_WR_Byte>
1c005194:	00150005 	move	$r5,$r0
1c005198:	02820004 	addi.w	$r4,$r0,128(0x80)
1c00519c:	57fd7fff 	bl	-644(0xffffd7c) # 1c004f18 <OLED_WR_Byte>
1c0051a0:	00150005 	move	$r5,$r0
1c0051a4:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c0051a8:	57fd73ff 	bl	-656(0xffffd70) # 1c004f18 <OLED_WR_Byte>
1c0051ac:	00150005 	move	$r5,$r0
1c0051b0:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c0051b4:	57fd67ff 	bl	-668(0xffffd64) # 1c004f18 <OLED_WR_Byte>
1c0051b8:	00150005 	move	$r5,$r0
1c0051bc:	02836804 	addi.w	$r4,$r0,218(0xda)
1c0051c0:	57fd5bff 	bl	-680(0xffffd58) # 1c004f18 <OLED_WR_Byte>
1c0051c4:	00150005 	move	$r5,$r0
1c0051c8:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0051cc:	57fd4fff 	bl	-692(0xffffd4c) # 1c004f18 <OLED_WR_Byte>
1c0051d0:	00150005 	move	$r5,$r0
1c0051d4:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c0051d8:	57fd43ff 	bl	-704(0xffffd40) # 1c004f18 <OLED_WR_Byte>
1c0051dc:	00150005 	move	$r5,$r0
1c0051e0:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0051e4:	57fd37ff 	bl	-716(0xffffd34) # 1c004f18 <OLED_WR_Byte>
1c0051e8:	00150005 	move	$r5,$r0
1c0051ec:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0051f0:	57fd2bff 	bl	-728(0xffffd28) # 1c004f18 <OLED_WR_Byte>
1c0051f4:	00150005 	move	$r5,$r0
1c0051f8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0051fc:	57fd1fff 	bl	-740(0xffffd1c) # 1c004f18 <OLED_WR_Byte>
1c005200:	00150005 	move	$r5,$r0
1c005204:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c005208:	57fd13ff 	bl	-752(0xffffd10) # 1c004f18 <OLED_WR_Byte>
1c00520c:	00150005 	move	$r5,$r0
1c005210:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005214:	57fd07ff 	bl	-764(0xffffd04) # 1c004f18 <OLED_WR_Byte>
1c005218:	00150005 	move	$r5,$r0
1c00521c:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c005220:	57fcfbff 	bl	-776(0xffffcf8) # 1c004f18 <OLED_WR_Byte>
1c005224:	00150005 	move	$r5,$r0
1c005228:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c00522c:	57fcefff 	bl	-788(0xffffcec) # 1c004f18 <OLED_WR_Byte>
1c005230:	00150005 	move	$r5,$r0
1c005234:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c005238:	57fce3ff 	bl	-800(0xffffce0) # 1c004f18 <OLED_WR_Byte>
1c00523c:	00150005 	move	$r5,$r0
1c005240:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c005244:	57fcd7ff 	bl	-812(0xffffcd4) # 1c004f18 <OLED_WR_Byte>
1c005248:	57fdc7ff 	bl	-572(0xffffdc4) # 1c00500c <OLED_Clear>
1c00524c:	00150005 	move	$r5,$r0
1c005250:	00150004 	move	$r4,$r0
1c005254:	57fd33ff 	bl	-720(0xffffd30) # 1c004f84 <OLED_Set_Pos>
1c005258:	03400000 	andi	$r0,$r0,0x0
1c00525c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005260:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005264:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005268:	4c000020 	jirl	$r0,$r1,0

1c00526c <OLED_ShowChar>:
OLED_ShowChar():
1c00526c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005270:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005274:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005278:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00527c:	0015008c 	move	$r12,$r4
1c005280:	001500af 	move	$r15,$r5
1c005284:	001500ce 	move	$r14,$r6
1c005288:	001500ed 	move	$r13,$r7
1c00528c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005290:	001501ec 	move	$r12,$r15
1c005294:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005298:	001501cc 	move	$r12,$r14
1c00529c:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c0052a0:	001501ac 	move	$r12,$r13
1c0052a4:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c0052a8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0052ac:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0052b0:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c0052b4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0052b8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0052c4 <OLED_ShowChar+0x58>
1c0052bc:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0052c0:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c0052c4:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c0052c8:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0052cc:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c0052d0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0052d4:	50009800 	b	152(0x98) # 1c00536c <OLED_ShowChar+0x100>
1c0052d8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0052dc:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0052e0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0052e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0052e8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0052ec:	001031ac 	add.w	$r12,$r13,$r12
1c0052f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0052f4:	00150185 	move	$r5,$r12
1c0052f8:	001501c4 	move	$r4,$r14
1c0052fc:	57fc8bff 	bl	-888(0xffffc88) # 1c004f84 <OLED_Set_Pos>
1c005300:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005304:	50004800 	b	72(0x48) # 1c00534c <OLED_ShowChar+0xe0>
1c005308:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c00530c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005310:	00408d8e 	slli.w	$r14,$r12,0x3
1c005314:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005318:	001031cc 	add.w	$r12,$r14,$r12
1c00531c:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c005320:	028f11ce 	addi.w	$r14,$r14,964(0x3c4)
1c005324:	004091ad 	slli.w	$r13,$r13,0x4
1c005328:	001035cd 	add.w	$r13,$r14,$r13
1c00532c:	001031ac 	add.w	$r12,$r13,$r12
1c005330:	2a00018c 	ld.bu	$r12,$r12,0
1c005334:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005338:	00150184 	move	$r4,$r12
1c00533c:	57fbdfff 	bl	-1060(0xffffbdc) # 1c004f18 <OLED_WR_Byte>
1c005340:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005344:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005348:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00534c:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c005350:	0044858c 	srli.w	$r12,$r12,0x1
1c005354:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005358:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00535c:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c005308 <OLED_ShowChar+0x9c>
1c005360:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005364:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005368:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00536c:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c005370:	00448d8c 	srli.w	$r12,$r12,0x3
1c005374:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005378:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00537c:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c0052d8 <OLED_ShowChar+0x6c>
1c005380:	03400000 	andi	$r0,$r0,0x0
1c005384:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005388:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00538c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005390:	4c000020 	jirl	$r0,$r1,0

1c005394 <OLED_DrawFont16>:
OLED_DrawFont16():
1c005394:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005398:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00539c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0053a0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0053a4:	0015008c 	move	$r12,$r4
1c0053a8:	001500ad 	move	$r13,$r5
1c0053ac:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0053b0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0053b4:	001501ac 	move	$r12,$r13
1c0053b8:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0053bc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0053c0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0053c4:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0053c8:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c0053cc:	0280b80c 	addi.w	$r12,$r0,46(0x2e)
1c0053d0:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0053d4:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0053d8:	50013800 	b	312(0x138) # 1c005510 <OLED_DrawFont16+0x17c>
1c0053dc:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0053e0:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c0053e4:	02a3c1ad 	addi.w	$r13,$r13,-1808(0x8f0)
1c0053e8:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0053ec:	001c31cc 	mul.w	$r12,$r14,$r12
1c0053f0:	001031ac 	add.w	$r12,$r13,$r12
1c0053f4:	2a00018d 	ld.bu	$r13,$r12,0
1c0053f8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0053fc:	2a00018c 	ld.bu	$r12,$r12,0
1c005400:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c005504 <OLED_DrawFont16+0x170>
1c005404:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005408:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c00540c:	02a321ad 	addi.w	$r13,$r13,-1848(0x8c8)
1c005410:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005414:	001c31cc 	mul.w	$r12,$r14,$r12
1c005418:	001031ac 	add.w	$r12,$r13,$r12
1c00541c:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c005420:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005424:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005428:	2a00018c 	ld.bu	$r12,$r12,0
1c00542c:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c005504 <OLED_DrawFont16+0x170>
1c005430:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005434:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c005438:	02a271ad 	addi.w	$r13,$r13,-1892(0x89c)
1c00543c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005440:	001c31cc 	mul.w	$r12,$r14,$r12
1c005444:	001031ac 	add.w	$r12,$r13,$r12
1c005448:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c00544c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005450:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c005454:	2a00018c 	ld.bu	$r12,$r12,0
1c005458:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c005504 <OLED_DrawFont16+0x170>
1c00545c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005460:	50009400 	b	148(0x94) # 1c0054f4 <OLED_DrawFont16+0x160>
1c005464:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005468:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c00546c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005470:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005474:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005478:	001031ac 	add.w	$r12,$r13,$r12
1c00547c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005480:	00150185 	move	$r5,$r12
1c005484:	001501c4 	move	$r4,$r14
1c005488:	57faffff 	bl	-1284(0xffffafc) # 1c004f84 <OLED_Set_Pos>
1c00548c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005490:	50004c00 	b	76(0x4c) # 1c0054dc <OLED_DrawFont16+0x148>
1c005494:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c005498:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00549c:	0040918d 	slli.w	$r13,$r12,0x4
1c0054a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0054a4:	001031ad 	add.w	$r13,$r13,$r12
1c0054a8:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c0054ac:	02a0a1ce 	addi.w	$r14,$r14,-2008(0x828)
1c0054b0:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0054b4:	001c31ec 	mul.w	$r12,$r15,$r12
1c0054b8:	001031cc 	add.w	$r12,$r14,$r12
1c0054bc:	0010358c 	add.w	$r12,$r12,$r13
1c0054c0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0054c4:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0054c8:	00150184 	move	$r4,$r12
1c0054cc:	57fa4fff 	bl	-1460(0xffffa4c) # 1c004f18 <OLED_WR_Byte>
1c0054d0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0054d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0054d8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0054dc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0054e0:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0054e4:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c005494 <OLED_DrawFont16+0x100>
1c0054e8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0054ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0054f0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0054f4:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0054f8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0054fc:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c005464 <OLED_DrawFont16+0xd0>
1c005500:	50001c00 	b	28(0x1c) # 1c00551c <OLED_DrawFont16+0x188>
1c005504:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005508:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00550c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005510:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005514:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005518:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c0053dc <OLED_DrawFont16+0x48>
1c00551c:	03400000 	andi	$r0,$r0,0x0
1c005520:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005524:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005528:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00552c:	4c000020 	jirl	$r0,$r1,0

1c005530 <OLED_DrawFont32>:
OLED_DrawFont32():
1c005530:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005534:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005538:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00553c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005540:	0015008c 	move	$r12,$r4
1c005544:	001500ad 	move	$r13,$r5
1c005548:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c00554c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005550:	001501ac 	move	$r12,$r13
1c005554:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005558:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00555c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005560:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005564:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c005568:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c00556c:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c005570:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005574:	50014400 	b	324(0x144) # 1c0056b8 <OLED_DrawFont32+0x188>
1c005578:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c00557c:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c005580:	029d51ad 	addi.w	$r13,$r13,1876(0x754)
1c005584:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005588:	001c31cc 	mul.w	$r12,$r14,$r12
1c00558c:	001031ac 	add.w	$r12,$r13,$r12
1c005590:	2a00018c 	ld.bu	$r12,$r12,0
1c005594:	0015018d 	move	$r13,$r12
1c005598:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00559c:	2800018c 	ld.b	$r12,$r12,0
1c0055a0:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c0056ac <OLED_DrawFont32+0x17c>
1c0055a4:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0055a8:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0055ac:	029ca1ad 	addi.w	$r13,$r13,1832(0x728)
1c0055b0:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0055b4:	001c31cc 	mul.w	$r12,$r14,$r12
1c0055b8:	001031ac 	add.w	$r12,$r13,$r12
1c0055bc:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0055c0:	0015018d 	move	$r13,$r12
1c0055c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0055c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0055cc:	2800018c 	ld.b	$r12,$r12,0
1c0055d0:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c0056ac <OLED_DrawFont32+0x17c>
1c0055d4:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0055d8:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0055dc:	029be1ad 	addi.w	$r13,$r13,1784(0x6f8)
1c0055e0:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0055e4:	001c31cc 	mul.w	$r12,$r14,$r12
1c0055e8:	001031ac 	add.w	$r12,$r13,$r12
1c0055ec:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0055f0:	0015018d 	move	$r13,$r12
1c0055f4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0055f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0055fc:	2800018c 	ld.b	$r12,$r12,0
1c005600:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c0056ac <OLED_DrawFont32+0x17c>
1c005604:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005608:	50009400 	b	148(0x94) # 1c00569c <OLED_DrawFont32+0x16c>
1c00560c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005610:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005614:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005618:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00561c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005620:	001031ac 	add.w	$r12,$r13,$r12
1c005624:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005628:	00150185 	move	$r5,$r12
1c00562c:	001501c4 	move	$r4,$r14
1c005630:	57f957ff 	bl	-1708(0xffff954) # 1c004f84 <OLED_Set_Pos>
1c005634:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005638:	50004c00 	b	76(0x4c) # 1c005684 <OLED_DrawFont32+0x154>
1c00563c:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c005640:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005644:	0040958d 	slli.w	$r13,$r12,0x5
1c005648:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00564c:	001031ad 	add.w	$r13,$r13,$r12
1c005650:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c005654:	02b331ce 	addi.w	$r14,$r14,-820(0xccc)
1c005658:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c00565c:	001c31ec 	mul.w	$r12,$r15,$r12
1c005660:	001031cc 	add.w	$r12,$r14,$r12
1c005664:	0010358c 	add.w	$r12,$r12,$r13
1c005668:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00566c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005670:	00150184 	move	$r4,$r12
1c005674:	57f8a7ff 	bl	-1884(0xffff8a4) # 1c004f18 <OLED_WR_Byte>
1c005678:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00567c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005680:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005684:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005688:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00568c:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c00563c <OLED_DrawFont32+0x10c>
1c005690:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005694:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005698:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00569c:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0056a0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0056a4:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c00560c <OLED_DrawFont32+0xdc>
1c0056a8:	50001c00 	b	28(0x1c) # 1c0056c4 <OLED_DrawFont32+0x194>
1c0056ac:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0056b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056b4:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0056b8:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c0056bc:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c0056c0:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c005578 <OLED_DrawFont32+0x48>
1c0056c4:	03400000 	andi	$r0,$r0,0x0
1c0056c8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0056cc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0056d0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0056d4:	4c000020 	jirl	$r0,$r1,0

1c0056d8 <OLED_Show_Str>:
OLED_Show_Str():
1c0056d8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0056dc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0056e0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0056e4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0056e8:	0015008c 	move	$r12,$r4
1c0056ec:	001500ae 	move	$r14,$r5
1c0056f0:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0056f4:	001500ed 	move	$r13,$r7
1c0056f8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0056fc:	001501cc 	move	$r12,$r14
1c005700:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005704:	001501ac 	move	$r12,$r13
1c005708:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c00570c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005710:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005714:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005718:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c00571c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005720:	580209ac 	beq	$r13,$r12,520(0x208) # 1c005928 <OLED_Show_Str+0x250>
1c005724:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005728:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c00572c:	5001fc00 	b	508(0x1fc) # 1c005928 <OLED_Show_Str+0x250>
1c005730:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005734:	44012580 	bnez	$r12,292(0x124) # 1c005858 <OLED_Show_Str+0x180>
1c005738:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c00573c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005740:	0044858c 	srli.w	$r12,$r12,0x1
1c005744:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005748:	0015018e 	move	$r14,$r12
1c00574c:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005750:	0011398c 	sub.w	$r12,$r12,$r14
1c005754:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005780 <OLED_Show_Str+0xa8>
1c005758:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c00575c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005760:	00448d8c 	srli.w	$r12,$r12,0x3
1c005764:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005768:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00576c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005770:	001031ac 	add.w	$r12,$r13,$r12
1c005774:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005778:	03401d8c 	andi	$r12,$r12,0x7
1c00577c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005780:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005784:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005788:	00448d8c 	srli.w	$r12,$r12,0x3
1c00578c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005790:	0015018e 	move	$r14,$r12
1c005794:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005798:	0011398c 	sub.w	$r12,$r12,$r14
1c00579c:	6400098d 	bge	$r12,$r13,8(0x8) # 1c0057a4 <OLED_Show_Str+0xcc>
1c0057a0:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c0057a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0057a8:	2800018c 	ld.b	$r12,$r12,0
1c0057ac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0057b0:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0057b4:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0057c4 <OLED_Show_Str+0xec>
1c0057b8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0057bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0057c0:	50016800 	b	360(0x168) # 1c005928 <OLED_Show_Str+0x250>
1c0057c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0057c8:	2800018d 	ld.b	$r13,$r12,0
1c0057cc:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0057d0:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c005800 <OLED_Show_Str+0x128>
1c0057d4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0057d8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0057dc:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0057e0:	001031ac 	add.w	$r12,$r13,$r12
1c0057e4:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0057e8:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0057ec:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0057f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0057f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057f8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0057fc:	50004c00 	b	76(0x4c) # 1c005848 <OLED_Show_Str+0x170>
1c005800:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005804:	2800018c 	ld.b	$r12,$r12,0
1c005808:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c00580c:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c005810:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005814:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005818:	001501e7 	move	$r7,$r15
1c00581c:	001501c6 	move	$r6,$r14
1c005820:	001501a5 	move	$r5,$r13
1c005824:	00150184 	move	$r4,$r12
1c005828:	57fa47ff 	bl	-1468(0xffffa44) # 1c00526c <OLED_ShowChar>
1c00582c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005830:	0044858c 	srli.w	$r12,$r12,0x1
1c005834:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005838:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00583c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005840:	001031ac 	add.w	$r12,$r13,$r12
1c005844:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005848:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00584c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005850:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005854:	5000d400 	b	212(0xd4) # 1c005928 <OLED_Show_Str+0x250>
1c005858:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c00585c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005860:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c005864:	001131cc 	sub.w	$r12,$r14,$r12
1c005868:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005894 <OLED_Show_Str+0x1bc>
1c00586c:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c005870:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005874:	00448d8c 	srli.w	$r12,$r12,0x3
1c005878:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00587c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005880:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005884:	001031ac 	add.w	$r12,$r13,$r12
1c005888:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00588c:	03401d8c 	andi	$r12,$r12,0x7
1c005890:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005894:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005898:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c00589c:	00448d8c 	srli.w	$r12,$r12,0x3
1c0058a0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0058a4:	0015018e 	move	$r14,$r12
1c0058a8:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0058ac:	0011398c 	sub.w	$r12,$r12,$r14
1c0058b0:	6400098d 	bge	$r12,$r13,8(0x8) # 1c0058b8 <OLED_Show_Str+0x1e0>
1c0058b4:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c0058b8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0058bc:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c0058c0:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0058c4:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c0058e4 <OLED_Show_Str+0x20c>
1c0058c8:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c0058cc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0058d0:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c0058d4:	001501a5 	move	$r5,$r13
1c0058d8:	00150184 	move	$r4,$r12
1c0058dc:	57fc57ff 	bl	-940(0xffffc54) # 1c005530 <OLED_DrawFont32>
1c0058e0:	50002800 	b	40(0x28) # 1c005908 <OLED_Show_Str+0x230>
1c0058e4:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c0058e8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0058ec:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c005908 <OLED_Show_Str+0x230>
1c0058f0:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c0058f4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0058f8:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c0058fc:	001501a5 	move	$r5,$r13
1c005900:	00150184 	move	$r4,$r12
1c005904:	57fa93ff 	bl	-1392(0xffffa90) # 1c005394 <OLED_DrawFont16>
1c005908:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00590c:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005910:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005914:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005918:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00591c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005920:	001031ac 	add.w	$r12,$r13,$r12
1c005924:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005928:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00592c:	2800018c 	ld.b	$r12,$r12,0
1c005930:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c005730 <OLED_Show_Str+0x58>
1c005934:	03400000 	andi	$r0,$r0,0x0
1c005938:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00593c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005940:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005944:	4c000020 	jirl	$r0,$r1,0

1c005948 <main>:
main():
1c005948:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00594c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005950:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005954:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005958:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00595c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005960:	57d7d3ff 	bl	-10288(0xfffd7d0) # 1c003130 <SystemClockInit>
1c005964:	57b9cbff 	bl	-17976(0xfffb9c8) # 1c00132c <GPIOInit>
1c005968:	57f743ff 	bl	-2240(0xffff740) # 1c0050a8 <OLED_Init>
1c00596c:	57d887ff 	bl	-10108(0xfffd884) # 1c0031f0 <EnableInt>
1c005970:	540a8800 	bl	2696(0xa88) # 1c0063f8 <hx711_Init>
1c005974:	00150005 	move	$r5,$r0
1c005978:	02805804 	addi.w	$r4,$r0,22(0x16)
1c00597c:	57bef3ff 	bl	-16656(0xfffbef0) # 1c00186c <gpio_set_direction>
1c005980:	5410c400 	bl	4292(0x10c4) # 1c006a44 <BEEP_Init>
1c005984:	1400004c 	lu12i.w	$r12,2(0x2)
1c005988:	03960184 	ori	$r4,$r12,0x580
1c00598c:	57d123ff 	bl	-12000(0xfffd120) # 1c002aac <Uart0_init>
1c005990:	540b9000 	bl	2960(0xb90) # 1c006520 <Get_Maopi>
1c005994:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005998:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00599c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0059a0:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0059a4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0059a8:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c0059ac:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0059b0:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0059b4:	00150005 	move	$r5,$r0
1c0059b8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0059bc:	57beb3ff 	bl	-16720(0xfffbeb0) # 1c00186c <gpio_set_direction>
1c0059c0:	00150005 	move	$r5,$r0
1c0059c4:	02805c04 	addi.w	$r4,$r0,23(0x17)
1c0059c8:	57bea7ff 	bl	-16732(0xfffbea4) # 1c00186c <gpio_set_direction>
1c0059cc:	00150005 	move	$r5,$r0
1c0059d0:	02806004 	addi.w	$r4,$r0,24(0x18)
1c0059d4:	57be9bff 	bl	-16744(0xfffbe98) # 1c00186c <gpio_set_direction>
1c0059d8:	00150005 	move	$r5,$r0
1c0059dc:	02806404 	addi.w	$r4,$r0,25(0x19)
1c0059e0:	57be8fff 	bl	-16756(0xfffbe8c) # 1c00186c <gpio_set_direction>
1c0059e4:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0059e8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0059ec:	028dc0c6 	addi.w	$r6,$r6,880(0x370)
1c0059f0:	00150005 	move	$r5,$r0
1c0059f4:	00150004 	move	$r4,$r0
1c0059f8:	57fce3ff 	bl	-800(0xffffce0) # 1c0056d8 <OLED_Show_Str>
1c0059fc:	50001c00 	b	28(0x1c) # 1c005a18 <main+0xd0>
1c005a00:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005a04:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005a08:	028dc0c6 	addi.w	$r6,$r6,880(0x370)
1c005a0c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005a10:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005a14:	57fcc7ff 	bl	-828(0xffffcc4) # 1c0056d8 <OLED_Show_Str>
1c005a18:	5409a000 	bl	2464(0x9a0) # 1c0063b8 <DHT11_Init>
1c005a1c:	0015008c 	move	$r12,$r4
1c005a20:	47ffe19f 	bnez	$r12,-32(0x7fffe0) # 1c005a00 <main+0xb8>
1c005a24:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005a28:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005a2c:	028d90c6 	addi.w	$r6,$r6,868(0x364)
1c005a30:	02801005 	addi.w	$r5,$r0,4(0x4)
1c005a34:	00150004 	move	$r4,$r0
1c005a38:	57fca3ff 	bl	-864(0xffffca0) # 1c0056d8 <OLED_Show_Str>
1c005a3c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005a40:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005a44:	028d80c6 	addi.w	$r6,$r6,864(0x360)
1c005a48:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005a4c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005a50:	57fc8bff 	bl	-888(0xffffc88) # 1c0056d8 <OLED_Show_Str>
1c005a54:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005a58:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005a5c:	028d60c6 	addi.w	$r6,$r6,856(0x358)
1c005a60:	02801805 	addi.w	$r5,$r0,6(0x6)
1c005a64:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005a68:	57fc73ff 	bl	-912(0xffffc70) # 1c0056d8 <OLED_Show_Str>
1c005a6c:	1cc7ff45 	pcaddu12i	$r5,409594(0x63ffa)
1c005a70:	029660a5 	addi.w	$r5,$r5,1432(0x598)
1c005a74:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c005a78:	02963884 	addi.w	$r4,$r4,1422(0x58e)
1c005a7c:	54083000 	bl	2096(0x830) # 1c0062ac <DHT11_Read_Data>
1c005a80:	540ad800 	bl	2776(0xad8) # 1c006558 <Get_Weight>
1c005a84:	0015008c 	move	$r12,$r4
1c005a88:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005a8c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005a90:	0295f18c 	addi.w	$r12,$r12,1404(0x57c)
1c005a94:	2940018d 	st.h	$r13,$r12,0
1c005a98:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005a9c:	0295c18c 	addi.w	$r12,$r12,1392(0x570)
1c005aa0:	2a40018d 	ld.hu	$r13,$r12,0
1c005aa4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005aa8:	002131ae 	div.wu	$r14,$r13,$r12
1c005aac:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005ab4 <main+0x16c>
1c005ab0:	002a0007 	break	0x7
1c005ab4:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005ab8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005abc:	0295398c 	addi.w	$r12,$r12,1358(0x54e)
1c005ac0:	2940018d 	st.h	$r13,$r12,0
1c005ac4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ac8:	0294f98c 	addi.w	$r12,$r12,1342(0x53e)
1c005acc:	2a40018d 	ld.hu	$r13,$r12,0
1c005ad0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005ad4:	002131ae 	div.wu	$r14,$r13,$r12
1c005ad8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005ae0 <main+0x198>
1c005adc:	002a0007 	break	0x7
1c005ae0:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005ae4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005ae8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005aec:	0295018c 	addi.w	$r12,$r12,1344(0x540)
1c005af0:	2900098d 	st.b	$r13,$r12,2(0x2)
1c005af4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005af8:	0294418c 	addi.w	$r12,$r12,1296(0x510)
1c005afc:	2a40018d 	ld.hu	$r13,$r12,0
1c005b00:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005b04:	002131ae 	div.wu	$r14,$r13,$r12
1c005b08:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005b10 <main+0x1c8>
1c005b0c:	002a0007 	break	0x7
1c005b10:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005b14:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005b18:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005b1c:	0294418c 	addi.w	$r12,$r12,1296(0x510)
1c005b20:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c005b24:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005b28:	0293898c 	addi.w	$r12,$r12,1250(0x4e2)
1c005b2c:	2a40018c 	ld.hu	$r12,$r12,0
1c005b30:	0044a18c 	srli.w	$r12,$r12,0x8
1c005b34:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005b38:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005b3c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005b40:	0293b18c 	addi.w	$r12,$r12,1260(0x4ec)
1c005b44:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c005b48:	02805804 	addi.w	$r4,$r0,22(0x16)
1c005b4c:	57ba4fff 	bl	-17844(0xfffba4c) # 1c001598 <gpio_get_pin>
1c005b50:	0015008c 	move	$r12,$r4
1c005b54:	44005580 	bnez	$r12,84(0x54) # 1c005ba8 <main+0x260>
1c005b58:	0280640c 	addi.w	$r12,$r0,25(0x19)
1c005b5c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005b60:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005b64:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005b68:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005b6c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005b70:	02812c0c 	addi.w	$r12,$r0,75(0x4b)
1c005b74:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c005b78:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005b7c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005b80:	028910c6 	addi.w	$r6,$r6,580(0x244)
1c005b84:	00150005 	move	$r5,$r0
1c005b88:	00150004 	move	$r4,$r0
1c005b8c:	57fb4fff 	bl	-1204(0xffffb4c) # 1c0056d8 <OLED_Show_Str>
1c005b90:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005b94:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005b98:	0288c0c6 	addi.w	$r6,$r6,560(0x230)
1c005b9c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005ba0:	00150004 	move	$r4,$r0
1c005ba4:	57fb37ff 	bl	-1228(0xffffb34) # 1c0056d8 <OLED_Show_Str>
1c005ba8:	02805c04 	addi.w	$r4,$r0,23(0x17)
1c005bac:	57b9efff 	bl	-17940(0xfffb9ec) # 1c001598 <gpio_get_pin>
1c005bb0:	0015008c 	move	$r12,$r4
1c005bb4:	44005580 	bnez	$r12,84(0x54) # 1c005c08 <main+0x2c0>
1c005bb8:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005bbc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005bc0:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c005bc4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005bc8:	0280a00c 	addi.w	$r12,$r0,40(0x28)
1c005bcc:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005bd0:	0281400c 	addi.w	$r12,$r0,80(0x50)
1c005bd4:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c005bd8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005bdc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005be0:	0287b0c6 	addi.w	$r6,$r6,492(0x1ec)
1c005be4:	00150005 	move	$r5,$r0
1c005be8:	00150004 	move	$r4,$r0
1c005bec:	57faefff 	bl	-1300(0xffffaec) # 1c0056d8 <OLED_Show_Str>
1c005bf0:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005bf4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005bf8:	028760c6 	addi.w	$r6,$r6,472(0x1d8)
1c005bfc:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005c00:	00150004 	move	$r4,$r0
1c005c04:	57fad7ff 	bl	-1324(0xffffad4) # 1c0056d8 <OLED_Show_Str>
1c005c08:	02806004 	addi.w	$r4,$r0,24(0x18)
1c005c0c:	57b98fff 	bl	-18036(0xfffb98c) # 1c001598 <gpio_get_pin>
1c005c10:	0015008c 	move	$r12,$r4
1c005c14:	44005580 	bnez	$r12,84(0x54) # 1c005c68 <main+0x320>
1c005c18:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005c1c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005c20:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005c24:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005c28:	0281180c 	addi.w	$r12,$r0,70(0x46)
1c005c2c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005c30:	0281400c 	addi.w	$r12,$r0,80(0x50)
1c005c34:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c005c38:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005c3c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005c40:	028650c6 	addi.w	$r6,$r6,404(0x194)
1c005c44:	00150005 	move	$r5,$r0
1c005c48:	00150004 	move	$r4,$r0
1c005c4c:	57fa8fff 	bl	-1396(0xffffa8c) # 1c0056d8 <OLED_Show_Str>
1c005c50:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005c54:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005c58:	028600c6 	addi.w	$r6,$r6,384(0x180)
1c005c5c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005c60:	00150004 	move	$r4,$r0
1c005c64:	57fa77ff 	bl	-1420(0xffffa74) # 1c0056d8 <OLED_Show_Str>
1c005c68:	02806404 	addi.w	$r4,$r0,25(0x19)
1c005c6c:	57b92fff 	bl	-18132(0xfffb92c) # 1c001598 <gpio_get_pin>
1c005c70:	0015008c 	move	$r12,$r4
1c005c74:	44004d80 	bnez	$r12,76(0x4c) # 1c005cc0 <main+0x378>
1c005c78:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005c7c:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c005c80:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005c84:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c005c88:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c005c8c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c005c90:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005c94:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005c98:	028510c6 	addi.w	$r6,$r6,324(0x144)
1c005c9c:	00150005 	move	$r5,$r0
1c005ca0:	00150004 	move	$r4,$r0
1c005ca4:	57fa37ff 	bl	-1484(0xffffa34) # 1c0056d8 <OLED_Show_Str>
1c005ca8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005cac:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005cb0:	0284c0c6 	addi.w	$r6,$r6,304(0x130)
1c005cb4:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005cb8:	00150004 	move	$r4,$r0
1c005cbc:	57fa1fff 	bl	-1508(0xffffa1c) # 1c0056d8 <OLED_Show_Str>
1c005cc0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005cc4:	028d198c 	addi.w	$r12,$r12,838(0x346)
1c005cc8:	2a40018c 	ld.hu	$r12,$r12,0
1c005ccc:	00150186 	move	$r6,$r12
1c005cd0:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005cd4:	028440a5 	addi.w	$r5,$r5,272(0x110)
1c005cd8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005cdc:	288d0084 	ld.w	$r4,$r4,832(0x340)
1c005ce0:	57c853ff 	bl	-14256(0xfffc850) # 1c002530 <sprintf>
1c005ce4:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005ce8:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c005cec:	288cc0c6 	ld.w	$r6,$r6,816(0x330)
1c005cf0:	00150005 	move	$r5,$r0
1c005cf4:	02814004 	addi.w	$r4,$r0,80(0x50)
1c005cf8:	57f9e3ff 	bl	-1568(0xffff9e0) # 1c0056d8 <OLED_Show_Str>
1c005cfc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d00:	028c198c 	addi.w	$r12,$r12,774(0x306)
1c005d04:	2a40018d 	ld.hu	$r13,$r12,0
1c005d08:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005d0c:	002131ae 	div.wu	$r14,$r13,$r12
1c005d10:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005d18 <main+0x3d0>
1c005d14:	002a0007 	break	0x7
1c005d18:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005d1c:	00150186 	move	$r6,$r12
1c005d20:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005d24:	028300a5 	addi.w	$r5,$r5,192(0xc0)
1c005d28:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d2c:	288bc084 	ld.w	$r4,$r4,752(0x2f0)
1c005d30:	57c803ff 	bl	-14336(0xfffc800) # 1c002530 <sprintf>
1c005d34:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005d38:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c005d3c:	288b80c6 	ld.w	$r6,$r6,736(0x2e0)
1c005d40:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005d44:	02814004 	addi.w	$r4,$r0,80(0x50)
1c005d48:	57f993ff 	bl	-1648(0xffff990) # 1c0056d8 <OLED_Show_Str>
1c005d4c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d50:	028ae18c 	addi.w	$r12,$r12,696(0x2b8)
1c005d54:	2a40018d 	ld.hu	$r13,$r12,0
1c005d58:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005d5c:	002131ae 	div.wu	$r14,$r13,$r12
1c005d60:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005d68 <main+0x420>
1c005d64:	002a0007 	break	0x7
1c005d68:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005d6c:	00150186 	move	$r6,$r12
1c005d70:	1c000065 	pcaddu12i	$r5,3(0x3)
1c005d74:	0281c0a5 	addi.w	$r5,$r5,112(0x70)
1c005d78:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d7c:	288a8084 	ld.w	$r4,$r4,672(0x2a0)
1c005d80:	57c7b3ff 	bl	-14416(0xfffc7b0) # 1c002530 <sprintf>
1c005d84:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005d88:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c005d8c:	288a40c6 	ld.w	$r6,$r6,656(0x290)
1c005d90:	02801805 	addi.w	$r5,$r0,6(0x6)
1c005d94:	02814004 	addi.w	$r4,$r0,80(0x50)
1c005d98:	57f943ff 	bl	-1728(0xffff940) # 1c0056d8 <OLED_Show_Str>
1c005d9c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005da0:	0289998c 	addi.w	$r12,$r12,614(0x266)
1c005da4:	2a40018d 	ld.hu	$r13,$r12,0
1c005da8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005dac:	002131ae 	div.wu	$r14,$r13,$r12
1c005db0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005db8 <main+0x470>
1c005db4:	002a0007 	break	0x7
1c005db8:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005dbc:	0015018d 	move	$r13,$r12
1c005dc0:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c005dc4:	6000318d 	blt	$r12,$r13,48(0x30) # 1c005df4 <main+0x4ac>
1c005dc8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005dcc:	0288e98c 	addi.w	$r12,$r12,570(0x23a)
1c005dd0:	2a40018d 	ld.hu	$r13,$r12,0
1c005dd4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005dd8:	002131ae 	div.wu	$r14,$r13,$r12
1c005ddc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005de4 <main+0x49c>
1c005de0:	002a0007 	break	0x7
1c005de4:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005de8:	0015018d 	move	$r13,$r12
1c005dec:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005df0:	640025ac 	bge	$r13,$r12,36(0x24) # 1c005e14 <main+0x4cc>
1c005df4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005df8:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005dfc:	57b7efff 	bl	-18452(0xfffb7ec) # 1c0015e8 <gpio_write_pin>
1c005e00:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c005e04:	57d813ff 	bl	-10224(0xfffd810) # 1c003614 <delay_ms>
1c005e08:	00150005 	move	$r5,$r0
1c005e0c:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005e10:	57b7dbff 	bl	-18472(0xfffb7d8) # 1c0015e8 <gpio_write_pin>
1c005e14:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e18:	0287c18c 	addi.w	$r12,$r12,496(0x1f0)
1c005e1c:	2a40018d 	ld.hu	$r13,$r12,0
1c005e20:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005e24:	002131ae 	div.wu	$r14,$r13,$r12
1c005e28:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005e30 <main+0x4e8>
1c005e2c:	002a0007 	break	0x7
1c005e30:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005e34:	0015018d 	move	$r13,$r12
1c005e38:	283fb2cc 	ld.b	$r12,$r22,-20(0xfec)
1c005e3c:	6000318d 	blt	$r12,$r13,48(0x30) # 1c005e6c <main+0x524>
1c005e40:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e44:	0287118c 	addi.w	$r12,$r12,452(0x1c4)
1c005e48:	2a40018d 	ld.hu	$r13,$r12,0
1c005e4c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005e50:	002131ae 	div.wu	$r14,$r13,$r12
1c005e54:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005e5c <main+0x514>
1c005e58:	002a0007 	break	0x7
1c005e5c:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005e60:	0015018d 	move	$r13,$r12
1c005e64:	283fb6cc 	ld.b	$r12,$r22,-19(0xfed)
1c005e68:	640025ac 	bge	$r13,$r12,36(0x24) # 1c005e8c <main+0x544>
1c005e6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005e70:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005e74:	57b777ff 	bl	-18572(0xfffb774) # 1c0015e8 <gpio_write_pin>
1c005e78:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c005e7c:	57d79bff 	bl	-10344(0xfffd798) # 1c003614 <delay_ms>
1c005e80:	00150005 	move	$r5,$r0
1c005e84:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005e88:	57b763ff 	bl	-18592(0xfffb760) # 1c0015e8 <gpio_write_pin>
1c005e8c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e90:	2886118c 	ld.w	$r12,$r12,388(0x184)
1c005e94:	2a00018c 	ld.bu	$r12,$r12,0
1c005e98:	4400c980 	bnez	$r12,200(0xc8) # 1c005f60 <main+0x618>
1c005e9c:	02815004 	addi.w	$r4,$r0,84(0x54)
1c005ea0:	540bd400 	bl	3028(0xbd4) # 1c006a74 <esp8266_check_cmd>
1c005ea4:	0015008c 	move	$r12,$r4
1c005ea8:	4000b980 	beqz	$r12,184(0xb8) # 1c005f60 <main+0x618>
1c005eac:	57f163ff 	bl	-3744(0xffff160) # 1c00500c <OLED_Clear>
1c005eb0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005eb4:	2885818c 	ld.w	$r12,$r12,352(0x160)
1c005eb8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005ebc:	2900018d 	st.b	$r13,$r12,0
1c005ec0:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005ec4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005ec8:	02bc80c6 	addi.w	$r6,$r6,-224(0xf20)
1c005ecc:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005ed0:	02803004 	addi.w	$r4,$r0,12(0xc)
1c005ed4:	57f807ff 	bl	-2044(0xffff804) # 1c0056d8 <OLED_Show_Str>
1c005ed8:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c005edc:	57d73bff 	bl	-10440(0xfffd738) # 1c003614 <delay_ms>
1c005ee0:	57f12fff 	bl	-3796(0xffff12c) # 1c00500c <OLED_Clear>
1c005ee4:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c005ee8:	57d72fff 	bl	-10452(0xfffd72c) # 1c003614 <delay_ms>
1c005eec:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005ef0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005ef4:	02bc20c6 	addi.w	$r6,$r6,-248(0xf08)
1c005ef8:	00150005 	move	$r5,$r0
1c005efc:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005f00:	57f7dbff 	bl	-2088(0xffff7d8) # 1c0056d8 <OLED_Show_Str>
1c005f04:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005f08:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005f0c:	02bc00c6 	addi.w	$r6,$r6,-256(0xf00)
1c005f10:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005f14:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005f18:	57f7c3ff 	bl	-2112(0xffff7c0) # 1c0056d8 <OLED_Show_Str>
1c005f1c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005f20:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005f24:	02bbe0c6 	addi.w	$r6,$r6,-264(0xef8)
1c005f28:	02801805 	addi.w	$r5,$r0,6(0x6)
1c005f2c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c005f30:	57f7abff 	bl	-2136(0xffff7a8) # 1c0056d8 <OLED_Show_Str>
1c005f34:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005f38:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005f3c:	57b6afff 	bl	-18772(0xfffb6ac) # 1c0015e8 <gpio_write_pin>
1c005f40:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005f44:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005f48:	57b6a3ff 	bl	-18784(0xfffb6a0) # 1c0015e8 <gpio_write_pin>
1c005f4c:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c005f50:	57d6c7ff 	bl	-10556(0xfffd6c4) # 1c003614 <delay_ms>
1c005f54:	00150005 	move	$r5,$r0
1c005f58:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005f5c:	57b68fff 	bl	-18804(0xfffb68c) # 1c0015e8 <gpio_write_pin>
1c005f60:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005f64:	2882c18c 	ld.w	$r12,$r12,176(0xb0)
1c005f68:	2a00018d 	ld.bu	$r13,$r12,0
1c005f6c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005f70:	5ffafdac 	bne	$r13,$r12,-1284(0x3fafc) # 1c005a6c <main+0x124>
1c005f74:	02977004 	addi.w	$r4,$r0,1500(0x5dc)
1c005f78:	57d69fff 	bl	-10596(0xfffd69c) # 1c003614 <delay_ms>
1c005f7c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005f80:	0282b18c 	addi.w	$r12,$r12,172(0xac)
1c005f84:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005f88:	0015018d 	move	$r13,$r12
1c005f8c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005f90:	0282718c 	addi.w	$r12,$r12,156(0x9c)
1c005f94:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c005f98:	001031ac 	add.w	$r12,$r13,$r12
1c005f9c:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c005fa0:	028231ad 	addi.w	$r13,$r13,140(0x8c)
1c005fa4:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c005fa8:	0010358c 	add.w	$r12,$r12,$r13
1c005fac:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c005fb0:	0281f1ad 	addi.w	$r13,$r13,124(0x7c)
1c005fb4:	2a0015ad 	ld.bu	$r13,$r13,5(0x5)
1c005fb8:	0010358d 	add.w	$r13,$r12,$r13
1c005fbc:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c005fc0:	0020b1ae 	mod.w	$r14,$r13,$r12
1c005fc4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005fcc <main+0x684>
1c005fc8:	002a0007 	break	0x7
1c005fcc:	006781cd 	bstrpick.w	$r13,$r14,0x7,0x0
1c005fd0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005fd4:	0281618c 	addi.w	$r12,$r12,88(0x58)
1c005fd8:	2900198d 	st.b	$r13,$r12,6(0x6)
1c005fdc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005fe0:	0280a98c 	addi.w	$r12,$r12,42(0x2a)
1c005fe4:	2a40018c 	ld.hu	$r12,$r12,0
1c005fe8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005fec:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ff0:	0280f18c 	addi.w	$r12,$r12,60(0x3c)
1c005ff4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c005ff8:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005ffc:	0280c0a5 	addi.w	$r5,$r5,48(0x30)
1c006000:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006004:	02b8a084 	addi.w	$r4,$r4,-472(0xe28)
1c006008:	57bb9bff 	bl	-17512(0xfffbb98) # 1c001ba0 <myprintf>
1c00600c:	02802006 	addi.w	$r6,$r0,8(0x8)
1c006010:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c006014:	028060a5 	addi.w	$r5,$r5,24(0x18)
1c006018:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00601c:	57c9cfff 	bl	-13876(0xfffc9cc) # 1c0029e8 <UART_SendDataALL>
1c006020:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006024:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c006028:	29001180 	st.b	$r0,$r12,4(0x4)
1c00602c:	53fa43ff 	b	-1472(0xffffa40) # 1c005a6c <main+0x124>

1c006030 <DHT11_Rst>:
DHT11_Rst():
1c006030:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006034:	29803061 	st.w	$r1,$r3,12(0xc)
1c006038:	29802076 	st.w	$r22,$r3,8(0x8)
1c00603c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006040:	54007000 	bl	112(0x70) # 1c0060b0 <DHT11_IO_Out>
1c006044:	00150005 	move	$r5,$r0
1c006048:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00604c:	57b59fff 	bl	-19044(0xfffb59c) # 1c0015e8 <gpio_write_pin>
1c006050:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006054:	57d5c3ff 	bl	-10816(0xfffd5c0) # 1c003614 <delay_ms>
1c006058:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00605c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006060:	57b58bff 	bl	-19064(0xfffb588) # 1c0015e8 <gpio_write_pin>
1c006064:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006068:	57d577ff 	bl	-10892(0xfffd574) # 1c0035dc <delay_us>
1c00606c:	03400000 	andi	$r0,$r0,0x0
1c006070:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006074:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006078:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00607c:	4c000020 	jirl	$r0,$r1,0

1c006080 <DHT11_IO_In>:
DHT11_IO_In():
1c006080:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006084:	29803061 	st.w	$r1,$r3,12(0xc)
1c006088:	29802076 	st.w	$r22,$r3,8(0x8)
1c00608c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006090:	00150005 	move	$r5,$r0
1c006094:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006098:	57b7d7ff 	bl	-18476(0xfffb7d4) # 1c00186c <gpio_set_direction>
1c00609c:	03400000 	andi	$r0,$r0,0x0
1c0060a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0060a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0060a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0060ac:	4c000020 	jirl	$r0,$r1,0

1c0060b0 <DHT11_IO_Out>:
DHT11_IO_Out():
1c0060b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0060b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0060b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0060bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0060c0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060c4:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0060c8:	57b7a7ff 	bl	-18524(0xfffb7a4) # 1c00186c <gpio_set_direction>
1c0060cc:	03400000 	andi	$r0,$r0,0x0
1c0060d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0060d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0060d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0060dc:	4c000020 	jirl	$r0,$r1,0

1c0060e0 <DHT11_Check>:
DHT11_Check():
1c0060e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0060e4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0060e8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0060ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0060f0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0060f4:	57ff8fff 	bl	-116(0xfffff8c) # 1c006080 <DHT11_IO_In>
1c0060f8:	50001000 	b	16(0x10) # 1c006108 <DHT11_Check+0x28>
1c0060fc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006100:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006104:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006108:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00610c:	57b48fff 	bl	-19316(0xfffb48c) # 1c001598 <gpio_get_pin>
1c006110:	0015008c 	move	$r12,$r4
1c006114:	40001180 	beqz	$r12,16(0x10) # 1c006124 <DHT11_Check+0x44>
1c006118:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00611c:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c006120:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c0060fc <DHT11_Check+0x1c>
1c006124:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006128:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c00612c:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c006138 <DHT11_Check+0x58>
1c006130:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006134:	50004c00 	b	76(0x4c) # 1c006180 <DHT11_Check+0xa0>
1c006138:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00613c:	50001000 	b	16(0x10) # 1c00614c <DHT11_Check+0x6c>
1c006140:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006144:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006148:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00614c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006150:	57b44bff 	bl	-19384(0xfffb448) # 1c001598 <gpio_get_pin>
1c006154:	0015008c 	move	$r12,$r4
1c006158:	44001180 	bnez	$r12,16(0x10) # 1c006168 <DHT11_Check+0x88>
1c00615c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006160:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c006164:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c006140 <DHT11_Check+0x60>
1c006168:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00616c:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c006170:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c00617c <DHT11_Check+0x9c>
1c006174:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006178:	50000800 	b	8(0x8) # 1c006180 <DHT11_Check+0xa0>
1c00617c:	0015000c 	move	$r12,$r0
1c006180:	00150184 	move	$r4,$r12
1c006184:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006188:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00618c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006190:	4c000020 	jirl	$r0,$r1,0

1c006194 <DHT11_Read_Bit>:
DHT11_Read_Bit():
1c006194:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006198:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00619c:	29806076 	st.w	$r22,$r3,24(0x18)
1c0061a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0061a4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0061a8:	50001000 	b	16(0x10) # 1c0061b8 <DHT11_Read_Bit+0x24>
1c0061ac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0061b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0061b4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0061b8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0061bc:	57b3dfff 	bl	-19492(0xfffb3dc) # 1c001598 <gpio_get_pin>
1c0061c0:	0015008c 	move	$r12,$r4
1c0061c4:	40001180 	beqz	$r12,16(0x10) # 1c0061d4 <DHT11_Read_Bit+0x40>
1c0061c8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0061cc:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0061d0:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c0061ac <DHT11_Read_Bit+0x18>
1c0061d4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0061d8:	50001000 	b	16(0x10) # 1c0061e8 <DHT11_Read_Bit+0x54>
1c0061dc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0061e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0061e4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0061e8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0061ec:	57b3afff 	bl	-19540(0xfffb3ac) # 1c001598 <gpio_get_pin>
1c0061f0:	0015008c 	move	$r12,$r4
1c0061f4:	44001180 	bnez	$r12,16(0x10) # 1c006204 <DHT11_Read_Bit+0x70>
1c0061f8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0061fc:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c006200:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c0061dc <DHT11_Read_Bit+0x48>
1c006204:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006208:	57d3d7ff 	bl	-11308(0xfffd3d4) # 1c0035dc <delay_us>
1c00620c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006210:	57b38bff 	bl	-19576(0xfffb388) # 1c001598 <gpio_get_pin>
1c006214:	0015008c 	move	$r12,$r4
1c006218:	40000d80 	beqz	$r12,12(0xc) # 1c006224 <DHT11_Read_Bit+0x90>
1c00621c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006220:	50000800 	b	8(0x8) # 1c006228 <DHT11_Read_Bit+0x94>
1c006224:	0015000c 	move	$r12,$r0
1c006228:	00150184 	move	$r4,$r12
1c00622c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006230:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006234:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006238:	4c000020 	jirl	$r0,$r1,0

1c00623c <DHT11_Read_Byte>:
DHT11_Read_Byte():
1c00623c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006240:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006244:	29806076 	st.w	$r22,$r3,24(0x18)
1c006248:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00624c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006250:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006254:	50003400 	b	52(0x34) # 1c006288 <DHT11_Read_Byte+0x4c>
1c006258:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00625c:	0040858c 	slli.w	$r12,$r12,0x1
1c006260:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006264:	57ff33ff 	bl	-208(0xfffff30) # 1c006194 <DHT11_Read_Bit>
1c006268:	0015008c 	move	$r12,$r4
1c00626c:	0015018d 	move	$r13,$r12
1c006270:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006274:	001531ac 	or	$r12,$r13,$r12
1c006278:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00627c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006280:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006284:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006288:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00628c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006290:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c006258 <DHT11_Read_Byte+0x1c>
1c006294:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006298:	00150184 	move	$r4,$r12
1c00629c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0062a0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0062a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0062a8:	4c000020 	jirl	$r0,$r1,0

1c0062ac <DHT11_Read_Data>:
DHT11_Read_Data():
1c0062ac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0062b0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0062b4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0062b8:	29809077 	st.w	$r23,$r3,36(0x24)
1c0062bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0062c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0062c4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0062c8:	57fd6bff 	bl	-664(0xffffd68) # 1c006030 <DHT11_Rst>
1c0062cc:	57fe17ff 	bl	-492(0xffffe14) # 1c0060e0 <DHT11_Check>
1c0062d0:	0015008c 	move	$r12,$r4
1c0062d4:	4400c180 	bnez	$r12,192(0xc0) # 1c006394 <DHT11_Read_Data+0xe8>
1c0062d8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0062dc:	50002800 	b	40(0x28) # 1c006304 <DHT11_Read_Data+0x58>
1c0062e0:	2a3fbed7 	ld.bu	$r23,$r22,-17(0xfef)
1c0062e4:	57ff5bff 	bl	-168(0xfffff58) # 1c00623c <DHT11_Read_Byte>
1c0062e8:	0015008c 	move	$r12,$r4
1c0062ec:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0062f0:	00105dad 	add.w	$r13,$r13,$r23
1c0062f4:	293fe1ac 	st.b	$r12,$r13,-8(0xff8)
1c0062f8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0062fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006300:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006304:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006308:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00630c:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c0062e0 <DHT11_Read_Data+0x34>
1c006310:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c006314:	0015018d 	move	$r13,$r12
1c006318:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c00631c:	001031ac 	add.w	$r12,$r13,$r12
1c006320:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c006324:	0010358c 	add.w	$r12,$r12,$r13
1c006328:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c00632c:	0010358c 	add.w	$r12,$r12,$r13
1c006330:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c006334:	5c00698d 	bne	$r12,$r13,104(0x68) # 1c00639c <DHT11_Read_Data+0xf0>
1c006338:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c00633c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006340:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006344:	001c31ac 	mul.w	$r12,$r13,$r12
1c006348:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00634c:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c006350:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006354:	001031ac 	add.w	$r12,$r13,$r12
1c006358:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00635c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006360:	2940018d 	st.h	$r13,$r12,0
1c006364:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c006368:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00636c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006370:	001c31ac 	mul.w	$r12,$r13,$r12
1c006374:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006378:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00637c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006380:	001031ac 	add.w	$r12,$r13,$r12
1c006384:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006388:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00638c:	2940018d 	st.h	$r13,$r12,0
1c006390:	50000c00 	b	12(0xc) # 1c00639c <DHT11_Read_Data+0xf0>
1c006394:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006398:	50000800 	b	8(0x8) # 1c0063a0 <DHT11_Read_Data+0xf4>
1c00639c:	0015000c 	move	$r12,$r0
1c0063a0:	00150184 	move	$r4,$r12
1c0063a4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0063a8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0063ac:	28809077 	ld.w	$r23,$r3,36(0x24)
1c0063b0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0063b4:	4c000020 	jirl	$r0,$r1,0

1c0063b8 <DHT11_Init>:
DHT11_Init():
1c0063b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0063bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0063c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0063c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0063c8:	00150005 	move	$r5,$r0
1c0063cc:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0063d0:	57b293ff 	bl	-19824(0xfffb290) # 1c001660 <gpio_pin_remap>
1c0063d4:	57fcdfff 	bl	-804(0xffffcdc) # 1c0060b0 <DHT11_IO_Out>
1c0063d8:	57fc5bff 	bl	-936(0xffffc58) # 1c006030 <DHT11_Rst>
1c0063dc:	57fd07ff 	bl	-764(0xffffd04) # 1c0060e0 <DHT11_Check>
1c0063e0:	0015008c 	move	$r12,$r4
1c0063e4:	00150184 	move	$r4,$r12
1c0063e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0063ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0063f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0063f4:	4c000020 	jirl	$r0,$r1,0

1c0063f8 <hx711_Init>:
hx711_Init():
1c0063f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0063fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c006400:	29802076 	st.w	$r22,$r3,8(0x8)
1c006404:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006408:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00640c:	02809804 	addi.w	$r4,$r0,38(0x26)
1c006410:	57b253ff 	bl	-19888(0xfffb250) # 1c001660 <gpio_pin_remap>
1c006414:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006418:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c00641c:	57b247ff 	bl	-19900(0xfffb244) # 1c001660 <gpio_pin_remap>
1c006420:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006424:	02809804 	addi.w	$r4,$r0,38(0x26)
1c006428:	57b447ff 	bl	-19388(0xfffb444) # 1c00186c <gpio_set_direction>
1c00642c:	00150005 	move	$r5,$r0
1c006430:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c006434:	57b43bff 	bl	-19400(0xfffb438) # 1c00186c <gpio_set_direction>
1c006438:	03400000 	andi	$r0,$r0,0x0
1c00643c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006440:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006444:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006448:	4c000020 	jirl	$r0,$r1,0

1c00644c <HX711_Read>:
HX711_Read():
1c00644c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006450:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006454:	29806076 	st.w	$r22,$r3,24(0x18)
1c006458:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00645c:	00150005 	move	$r5,$r0
1c006460:	02809804 	addi.w	$r4,$r0,38(0x26)
1c006464:	57b187ff 	bl	-20092(0xfffb184) # 1c0015e8 <gpio_write_pin>
1c006468:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00646c:	03400000 	andi	$r0,$r0,0x0
1c006470:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c006474:	57b127ff 	bl	-20188(0xfffb124) # 1c001598 <gpio_get_pin>
1c006478:	0015008c 	move	$r12,$r4
1c00647c:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c006470 <HX711_Read+0x24>
1c006480:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c006484:	50005000 	b	80(0x50) # 1c0064d4 <HX711_Read+0x88>
1c006488:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00648c:	02809804 	addi.w	$r4,$r0,38(0x26)
1c006490:	57b15bff 	bl	-20136(0xfffb158) # 1c0015e8 <gpio_write_pin>
1c006494:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006498:	0040858c 	slli.w	$r12,$r12,0x1
1c00649c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0064a0:	00150005 	move	$r5,$r0
1c0064a4:	02809804 	addi.w	$r4,$r0,38(0x26)
1c0064a8:	57b143ff 	bl	-20160(0xfffb140) # 1c0015e8 <gpio_write_pin>
1c0064ac:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0064b0:	57b0ebff 	bl	-20248(0xfffb0e8) # 1c001598 <gpio_get_pin>
1c0064b4:	0015008c 	move	$r12,$r4
1c0064b8:	40001180 	beqz	$r12,16(0x10) # 1c0064c8 <HX711_Read+0x7c>
1c0064bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0064c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0064c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0064c8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0064cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0064d0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0064d4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0064d8:	02805c0c 	addi.w	$r12,$r0,23(0x17)
1c0064dc:	6fffad8d 	bgeu	$r12,$r13,-84(0x3ffac) # 1c006488 <HX711_Read+0x3c>
1c0064e0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0064e4:	02809804 	addi.w	$r4,$r0,38(0x26)
1c0064e8:	57b103ff 	bl	-20224(0xfffb100) # 1c0015e8 <gpio_write_pin>
1c0064ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0064f0:	1401000c 	lu12i.w	$r12,2048(0x800)
1c0064f4:	0015b1ac 	xor	$r12,$r13,$r12
1c0064f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0064fc:	00150005 	move	$r5,$r0
1c006500:	02809804 	addi.w	$r4,$r0,38(0x26)
1c006504:	57b0e7ff 	bl	-20252(0xfffb0e4) # 1c0015e8 <gpio_write_pin>
1c006508:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00650c:	00150184 	move	$r4,$r12
1c006510:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006514:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006518:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00651c:	4c000020 	jirl	$r0,$r1,0

1c006520 <Get_Maopi>:
Get_Maopi():
1c006520:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006524:	29803061 	st.w	$r1,$r3,12(0xc)
1c006528:	29802076 	st.w	$r22,$r3,8(0x8)
1c00652c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006530:	57ff1fff 	bl	-228(0xfffff1c) # 1c00644c <HX711_Read>
1c006534:	0015008d 	move	$r13,$r4
1c006538:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00653c:	02abf18c 	addi.w	$r12,$r12,-1284(0xafc)
1c006540:	2980018d 	st.w	$r13,$r12,0
1c006544:	03400000 	andi	$r0,$r0,0x0
1c006548:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00654c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006550:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006554:	4c000020 	jirl	$r0,$r1,0

1c006558 <Get_Weight>:
Get_Weight():
1c006558:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c00655c:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c006560:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006564:	02810076 	addi.w	$r22,$r3,64(0x40)
1c006568:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c00656c:	02a3118c 	addi.w	$r12,$r12,-1852(0x8c4)
1c006570:	2880018d 	ld.w	$r13,$r12,0
1c006574:	29bf02cd 	st.w	$r13,$r22,-64(0xfc0)
1c006578:	2a40118c 	ld.hu	$r12,$r12,4(0x4)
1c00657c:	297f12cc 	st.h	$r12,$r22,-60(0xfc4)
1c006580:	57fecfff 	bl	-308(0xffffecc) # 1c00644c <HX711_Read>
1c006584:	0015008d 	move	$r13,$r4
1c006588:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00658c:	02aa118c 	addi.w	$r12,$r12,-1404(0xa84)
1c006590:	2980018d 	st.w	$r13,$r12,0
1c006594:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006598:	02a9e18c 	addi.w	$r12,$r12,-1416(0xa78)
1c00659c:	2880018c 	ld.w	$r12,$r12,0
1c0065a0:	0015018d 	move	$r13,$r12
1c0065a4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065a8:	02a9b18c 	addi.w	$r12,$r12,-1428(0xa6c)
1c0065ac:	2980018d 	st.w	$r13,$r12,0
1c0065b0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065b4:	02a9818c 	addi.w	$r12,$r12,-1440(0xa60)
1c0065b8:	2880018c 	ld.w	$r12,$r12,0
1c0065bc:	0015018d 	move	$r13,$r12
1c0065c0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0065c4:	02a9d18c 	addi.w	$r12,$r12,-1420(0xa74)
1c0065c8:	2880018c 	ld.w	$r12,$r12,0
1c0065cc:	001131ac 	sub.w	$r12,$r13,$r12
1c0065d0:	0015018d 	move	$r13,$r12
1c0065d4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065d8:	02a8f18c 	addi.w	$r12,$r12,-1476(0xa3c)
1c0065dc:	2980018d 	st.w	$r13,$r12,0
1c0065e0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065e4:	02a8c18c 	addi.w	$r12,$r12,-1488(0xa30)
1c0065e8:	2880018c 	ld.w	$r12,$r12,0
1c0065ec:	6400380c 	bge	$r0,$r12,56(0x38) # 1c006624 <Get_Weight+0xcc>
1c0065f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065f4:	02a8818c 	addi.w	$r12,$r12,-1504(0xa20)
1c0065f8:	2880018e 	ld.w	$r14,$r12,0
1c0065fc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006600:	02a8f18c 	addi.w	$r12,$r12,-1476(0xa3c)
1c006604:	2880018c 	ld.w	$r12,$r12,0
1c006608:	002031cd 	div.w	$r13,$r14,$r12
1c00660c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006614 <Get_Weight+0xbc>
1c006610:	002a0007 	break	0x7
1c006614:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006618:	02a7f18c 	addi.w	$r12,$r12,-1540(0x9fc)
1c00661c:	2980018d 	st.w	$r13,$r12,0
1c006620:	50001000 	b	16(0x10) # 1c006630 <Get_Weight+0xd8>
1c006624:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006628:	02a7b18c 	addi.w	$r12,$r12,-1556(0x9ec)
1c00662c:	29800180 	st.w	$r0,$r12,0
1c006630:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006634:	02a7818c 	addi.w	$r12,$r12,-1568(0x9e0)
1c006638:	2880018e 	ld.w	$r14,$r12,0
1c00663c:	1400004c 	lu12i.w	$r12,2(0x2)
1c006640:	039c418c 	ori	$r12,$r12,0x710
1c006644:	002031cd 	div.w	$r13,$r14,$r12
1c006648:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006650 <Get_Weight+0xf8>
1c00664c:	002a0007 	break	0x7
1c006650:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006654:	0020b1ae 	mod.w	$r14,$r13,$r12
1c006658:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006660 <Get_Weight+0x108>
1c00665c:	002a0007 	break	0x7
1c006660:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c006664:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c006668:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00666c:	293f02cc 	st.b	$r12,$r22,-64(0xfc0)
1c006670:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006674:	02a6818c 	addi.w	$r12,$r12,-1632(0x9a0)
1c006678:	2880018e 	ld.w	$r14,$r12,0
1c00667c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c006680:	002031cd 	div.w	$r13,$r14,$r12
1c006684:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00668c <Get_Weight+0x134>
1c006688:	002a0007 	break	0x7
1c00668c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006690:	0020b1ae 	mod.w	$r14,$r13,$r12
1c006694:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00669c <Get_Weight+0x144>
1c006698:	002a0007 	break	0x7
1c00669c:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c0066a0:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0066a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0066a8:	293f06cc 	st.b	$r12,$r22,-63(0xfc1)
1c0066ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0066b0:	02a5918c 	addi.w	$r12,$r12,-1692(0x964)
1c0066b4:	2880018e 	ld.w	$r14,$r12,0
1c0066b8:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c0066bc:	002031cd 	div.w	$r13,$r14,$r12
1c0066c0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0066c8 <Get_Weight+0x170>
1c0066c4:	002a0007 	break	0x7
1c0066c8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0066cc:	0020b1ae 	mod.w	$r14,$r13,$r12
1c0066d0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0066d8 <Get_Weight+0x180>
1c0066d4:	002a0007 	break	0x7
1c0066d8:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c0066dc:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0066e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0066e4:	293f0acc 	st.b	$r12,$r22,-62(0xfc2)
1c0066e8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0066ec:	02a4a18c 	addi.w	$r12,$r12,-1752(0x928)
1c0066f0:	2880018e 	ld.w	$r14,$r12,0
1c0066f4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0066f8:	002031cd 	div.w	$r13,$r14,$r12
1c0066fc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006704 <Get_Weight+0x1ac>
1c006700:	002a0007 	break	0x7
1c006704:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006708:	0020b1ae 	mod.w	$r14,$r13,$r12
1c00670c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006714 <Get_Weight+0x1bc>
1c006710:	002a0007 	break	0x7
1c006714:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c006718:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c00671c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006720:	293f0ecc 	st.b	$r12,$r22,-61(0xfc3)
1c006724:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006728:	02a3b18c 	addi.w	$r12,$r12,-1812(0x8ec)
1c00672c:	2880018e 	ld.w	$r14,$r12,0
1c006730:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006734:	002031cd 	div.w	$r13,$r14,$r12
1c006738:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006740 <Get_Weight+0x1e8>
1c00673c:	002a0007 	break	0x7
1c006740:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006744:	02a3518c 	addi.w	$r12,$r12,-1836(0x8d4)
1c006748:	2980018d 	st.w	$r13,$r12,0
1c00674c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006750:	02a3118c 	addi.w	$r12,$r12,-1852(0x8c4)
1c006754:	2880018c 	ld.w	$r12,$r12,0
1c006758:	00150184 	move	$r4,$r12
1c00675c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006760:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006764:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006768:	4c000020 	jirl	$r0,$r1,0

1c00676c <Queue_isEmpty>:
Queue_isEmpty():
1c00676c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006770:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006774:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006778:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00677c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006780:	44000d80 	bnez	$r12,12(0xc) # 1c00678c <Queue_isEmpty+0x20>
1c006784:	0015000c 	move	$r12,$r0
1c006788:	50002400 	b	36(0x24) # 1c0067ac <Queue_isEmpty+0x40>
1c00678c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006790:	2a40018d 	ld.hu	$r13,$r12,0
1c006794:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006798:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c00679c:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c0067a8 <Queue_isEmpty+0x3c>
1c0067a0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0067a4:	50000800 	b	8(0x8) # 1c0067ac <Queue_isEmpty+0x40>
1c0067a8:	0015000c 	move	$r12,$r0
1c0067ac:	00150184 	move	$r4,$r12
1c0067b0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0067b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0067b8:	4c000020 	jirl	$r0,$r1,0

1c0067bc <Queue_HadUse>:
Queue_HadUse():
1c0067bc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0067c0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0067c4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0067c8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0067cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067d0:	44000d80 	bnez	$r12,12(0xc) # 1c0067dc <Queue_HadUse+0x20>
1c0067d4:	0015000c 	move	$r12,$r0
1c0067d8:	50003800 	b	56(0x38) # 1c006810 <Queue_HadUse+0x54>
1c0067dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067e0:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c0067e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067e8:	2a40018c 	ld.hu	$r12,$r12,0
1c0067ec:	001131ac 	sub.w	$r12,$r13,$r12
1c0067f0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0067f4:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c0067f8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0067fc:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006800:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006804:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00680c <Queue_HadUse+0x50>
1c006808:	002a0007 	break	0x7
1c00680c:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006810:	00150184 	move	$r4,$r12
1c006814:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006818:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00681c:	4c000020 	jirl	$r0,$r1,0

1c006820 <Queue_NoUse>:
Queue_NoUse():
1c006820:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006824:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006828:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00682c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006830:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006834:	44000d80 	bnez	$r12,12(0xc) # 1c006840 <Queue_NoUse+0x20>
1c006838:	0015000c 	move	$r12,$r0
1c00683c:	50004000 	b	64(0x40) # 1c00687c <Queue_NoUse+0x5c>
1c006840:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006844:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c006848:	0015018d 	move	$r13,$r12
1c00684c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006850:	2a40018c 	ld.hu	$r12,$r12,0
1c006854:	001131ac 	sub.w	$r12,$r13,$r12
1c006858:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c00685c:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006860:	0020b1ae 	mod.w	$r14,$r13,$r12
1c006864:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00686c <Queue_NoUse+0x4c>
1c006868:	002a0007 	break	0x7
1c00686c:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006870:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c006874:	001131ac 	sub.w	$r12,$r13,$r12
1c006878:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00687c:	00150184 	move	$r4,$r12
1c006880:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006884:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006888:	4c000020 	jirl	$r0,$r1,0

1c00688c <Queue_Wirte>:
Queue_Wirte():
1c00688c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006890:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006894:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006898:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00689c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0068a0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0068a4:	001500cc 	move	$r12,$r6
1c0068a8:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c0068ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0068b0:	44000d80 	bnez	$r12,12(0xc) # 1c0068bc <Queue_Wirte+0x30>
1c0068b4:	0015000c 	move	$r12,$r0
1c0068b8:	50009c00 	b	156(0x9c) # 1c006954 <Queue_Wirte+0xc8>
1c0068bc:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0068c0:	57ff63ff 	bl	-160(0xfffff60) # 1c006820 <Queue_NoUse>
1c0068c4:	0015008c 	move	$r12,$r4
1c0068c8:	0015018d 	move	$r13,$r12
1c0068cc:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0068d0:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c0068dc <Queue_Wirte+0x50>
1c0068d4:	0015000c 	move	$r12,$r0
1c0068d8:	50007c00 	b	124(0x7c) # 1c006954 <Queue_Wirte+0xc8>
1c0068dc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0068e0:	50006400 	b	100(0x64) # 1c006944 <Queue_Wirte+0xb8>
1c0068e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0068e8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0068ec:	001031ac 	add.w	$r12,$r13,$r12
1c0068f0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0068f4:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c0068f8:	001501ae 	move	$r14,$r13
1c0068fc:	2a00018d 	ld.bu	$r13,$r12,0
1c006900:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006904:	0010398c 	add.w	$r12,$r12,$r14
1c006908:	2900118d 	st.b	$r13,$r12,4(0x4)
1c00690c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006910:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c006914:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006918:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00691c:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006920:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006924:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00692c <Queue_Wirte+0xa0>
1c006928:	002a0007 	break	0x7
1c00692c:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c006930:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006934:	2940098d 	st.h	$r13,$r12,2(0x2)
1c006938:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00693c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006940:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006944:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006948:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00694c:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c0068e4 <Queue_Wirte+0x58>
1c006950:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006954:	00150184 	move	$r4,$r12
1c006958:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00695c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006960:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006964:	4c000020 	jirl	$r0,$r1,0

1c006968 <Queue_Read>:
Queue_Read():
1c006968:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00696c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006970:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006974:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006978:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00697c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006980:	001500cc 	move	$r12,$r6
1c006984:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c006988:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00698c:	44000d80 	bnez	$r12,12(0xc) # 1c006998 <Queue_Read+0x30>
1c006990:	0015000c 	move	$r12,$r0
1c006994:	50009c00 	b	156(0x9c) # 1c006a30 <Queue_Read+0xc8>
1c006998:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00699c:	57fe23ff 	bl	-480(0xffffe20) # 1c0067bc <Queue_HadUse>
1c0069a0:	0015008c 	move	$r12,$r4
1c0069a4:	0015018d 	move	$r13,$r12
1c0069a8:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0069ac:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c0069b8 <Queue_Read+0x50>
1c0069b0:	0015000c 	move	$r12,$r0
1c0069b4:	50007c00 	b	124(0x7c) # 1c006a30 <Queue_Read+0xc8>
1c0069b8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0069bc:	50006400 	b	100(0x64) # 1c006a20 <Queue_Read+0xb8>
1c0069c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0069c4:	2a40018c 	ld.hu	$r12,$r12,0
1c0069c8:	0015018e 	move	$r14,$r12
1c0069cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0069d0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0069d4:	001031ac 	add.w	$r12,$r13,$r12
1c0069d8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0069dc:	001039ad 	add.w	$r13,$r13,$r14
1c0069e0:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c0069e4:	2900018d 	st.b	$r13,$r12,0
1c0069e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0069ec:	2a40018c 	ld.hu	$r12,$r12,0
1c0069f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0069f4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0069f8:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0069fc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006a00:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006a08 <Queue_Read+0xa0>
1c006a04:	002a0007 	break	0x7
1c006a08:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c006a0c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006a10:	2940018d 	st.h	$r13,$r12,0
1c006a14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006a1c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006a20:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006a24:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006a28:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c0069c0 <Queue_Read+0x58>
1c006a2c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006a30:	00150184 	move	$r4,$r12
1c006a34:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006a38:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006a3c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006a40:	4c000020 	jirl	$r0,$r1,0

1c006a44 <BEEP_Init>:
BEEP_Init():
1c006a44:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006a48:	29803061 	st.w	$r1,$r3,12(0xc)
1c006a4c:	29802076 	st.w	$r22,$r3,8(0x8)
1c006a50:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006a54:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006a58:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c006a5c:	57ae13ff 	bl	-20976(0xfffae10) # 1c00186c <gpio_set_direction>
1c006a60:	03400000 	andi	$r0,$r0,0x0
1c006a64:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006a68:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006a6c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006a70:	4c000020 	jirl	$r0,$r1,0

1c006a74 <esp8266_check_cmd>:
esp8266_check_cmd():
1c006a74:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006a78:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006a7c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006a80:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006a84:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006a88:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006a8c:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006a90:	28962084 	ld.w	$r4,$r4,1416(0x588)
1c006a94:	57fcdbff 	bl	-808(0xffffcd8) # 1c00676c <Queue_isEmpty>
1c006a98:	0015008c 	move	$r12,$r4
1c006a9c:	44009580 	bnez	$r12,148(0x94) # 1c006b30 <esp8266_check_cmd+0xbc>
1c006aa0:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006aa4:	2895d084 	ld.w	$r4,$r4,1396(0x574)
1c006aa8:	57fd17ff 	bl	-748(0xffffd14) # 1c0067bc <Queue_HadUse>
1c006aac:	0015008c 	move	$r12,$r4
1c006ab0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006ab4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006ab8:	2895518c 	ld.w	$r12,$r12,1364(0x554)
1c006abc:	2900018d 	st.b	$r13,$r12,0
1c006ac0:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c006ac4:	00150005 	move	$r5,$r0
1c006ac8:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006acc:	28956084 	ld.w	$r4,$r4,1368(0x558)
1c006ad0:	57cb87ff 	bl	-13436(0xfffcb84) # 1c003654 <memset>
1c006ad4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006ad8:	2894d18c 	ld.w	$r12,$r12,1332(0x534)
1c006adc:	2a00018c 	ld.bu	$r12,$r12,0
1c006ae0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006ae4:	00150186 	move	$r6,$r12
1c006ae8:	1cc7ff45 	pcaddu12i	$r5,409594(0x63ffa)
1c006aec:	2894e0a5 	ld.w	$r5,$r5,1336(0x538)
1c006af0:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006af4:	28949084 	ld.w	$r4,$r4,1316(0x524)
1c006af8:	57fe73ff 	bl	-400(0xffffe70) # 1c006968 <Queue_Read>
1c006afc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006b00:	2894318c 	ld.w	$r12,$r12,1292(0x50c)
1c006b04:	2a00018c 	ld.bu	$r12,$r12,0
1c006b08:	0015018d 	move	$r13,$r12
1c006b0c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006b10:	2894518c 	ld.w	$r12,$r12,1300(0x514)
1c006b14:	0010358c 	add.w	$r12,$r12,$r13
1c006b18:	29000180 	st.b	$r0,$r12,0
1c006b1c:	1cc7ff45 	pcaddu12i	$r5,409594(0x63ffa)
1c006b20:	289410a5 	ld.w	$r5,$r5,1284(0x504)
1c006b24:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006b28:	028c4084 	addi.w	$r4,$r4,784(0x310)
1c006b2c:	57b077ff 	bl	-20364(0xfffb074) # 1c001ba0 <myprintf>
1c006b30:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c006b34:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006b38:	2893b084 	ld.w	$r4,$r4,1260(0x4ec)
1c006b3c:	57cb7bff 	bl	-13448(0xfffcb78) # 1c0036b4 <pstrstr>
1c006b40:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006b44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006b48:	00150184 	move	$r4,$r12
1c006b4c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006b50:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006b54:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006b58:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c006b60 <msg_wakeup>:
msg_wakeup():
1c006b60:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01d6c0 <_sidata+0x14844>
1c006b64:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c006b69 <hexdecarr>:
hexdecarr():
1c006b69:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c006b6d:	37363534 	0x37363534
1c006b71:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfecca9 <_start-0x13357>
1c006b75:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfed0d9 <_start-0x12f27>
1c006b79:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006b7d:	79654b0a 	0x79654b0a
1c006b81:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c006b85:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c006b89:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c006b8d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01dbfd <_sidata+0x14d81>
1c006b91:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffdaf1 <_start-0x250f>
1c006b95:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c006b99:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffdafd <_start-0x2503>
1c006b9d:	72616220 	0x72616220
1c006ba1:	0a0d216b 	0x0a0d216b
1c006ba5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006ba9:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffcd1d <_start-0x32e3>
1c006bad:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c006bb1:	c0000a0d 	0xc0000a0d
1c006bb5:	dc1c001d 	0xdc1c001d
1c006bb9:	dc1c001e 	0xdc1c001e
1c006bbd:	dc1c001e 	0xdc1c001e
1c006bc1:	dc1c001e 	0xdc1c001e
1c006bc5:	dc1c001e 	0xdc1c001e
1c006bc9:	dc1c001e 	0xdc1c001e
1c006bcd:	dc1c001e 	0xdc1c001e
1c006bd1:	dc1c001e 	0xdc1c001e
1c006bd5:	dc1c001e 	0xdc1c001e
1c006bd9:	dc1c001e 	0xdc1c001e
1c006bdd:	d81c001e 	0xd81c001e
1c006be1:	601c001d 	blt	$r0,$r29,7168(0x1c00) # 1c0087e1 <tfont32+0x4c5>
1c006be5:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0087e5 <tfont32+0x4c9>
1c006be9:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0087e9 <tfont32+0x4cd>
1c006bed:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0087ed <tfont32+0x4d1>
1c006bf1:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0087f1 <tfont32+0x4d5>
1c006bf5:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0087f5 <tfont32+0x4d9>
1c006bf9:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0087f9 <tfont32+0x4dd>
1c006bfd:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c0087fd <tfont32+0x4e1>
1c006c01:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c008801 <tfont32+0x4e5>
1c006c05:	dc1c001e 	0xdc1c001e
1c006c09:	dc1c001e 	0xdc1c001e
1c006c0d:	dc1c001e 	0xdc1c001e
1c006c11:	dc1c001e 	0xdc1c001e
1c006c15:	dc1c001e 	0xdc1c001e
1c006c19:	dc1c001e 	0xdc1c001e
1c006c1d:	dc1c001e 	0xdc1c001e
1c006c21:	dc1c001e 	0xdc1c001e
1c006c25:	dc1c001e 	0xdc1c001e
1c006c29:	dc1c001e 	0xdc1c001e
1c006c2d:	dc1c001e 	0xdc1c001e
1c006c31:	dc1c001e 	0xdc1c001e
1c006c35:	dc1c001e 	0xdc1c001e
1c006c39:	dc1c001e 	0xdc1c001e
1c006c3d:	dc1c001e 	0xdc1c001e
1c006c41:	dc1c001e 	0xdc1c001e
1c006c45:	dc1c001e 	0xdc1c001e
1c006c49:	dc1c001e 	0xdc1c001e
1c006c4d:	dc1c001e 	0xdc1c001e
1c006c51:	dc1c001e 	0xdc1c001e
1c006c55:	dc1c001e 	0xdc1c001e
1c006c59:	dc1c001e 	0xdc1c001e
1c006c5d:	dc1c001e 	0xdc1c001e
1c006c61:	dc1c001e 	0xdc1c001e
1c006c65:	dc1c001e 	0xdc1c001e
1c006c69:	dc1c001e 	0xdc1c001e
1c006c6d:	dc1c001e 	0xdc1c001e
1c006c71:	dc1c001e 	0xdc1c001e
1c006c75:	dc1c001e 	0xdc1c001e
1c006c79:	dc1c001e 	0xdc1c001e
1c006c7d:	dc1c001e 	0xdc1c001e
1c006c81:	dc1c001e 	0xdc1c001e
1c006c85:	dc1c001e 	0xdc1c001e
1c006c89:	dc1c001e 	0xdc1c001e
1c006c8d:	dc1c001e 	0xdc1c001e
1c006c91:	dc1c001e 	0xdc1c001e
1c006c95:	dc1c001e 	0xdc1c001e
1c006c99:	dc1c001e 	0xdc1c001e
1c006c9d:	dc1c001e 	0xdc1c001e
1c006ca1:	dc1c001e 	0xdc1c001e
1c006ca5:	501c001e 	b	7871488(0x781c00) # 1c7888a5 <_sidata+0x77fa29>
1c006ca9:	781c001d 	0x781c001d
1c006cad:	e01c001c 	0xe01c001c
1c006cb1:	dc1c001c 	0xdc1c001c
1c006cb5:	dc1c001e 	0xdc1c001e
1c006cb9:	dc1c001e 	0xdc1c001e
1c006cbd:	dc1c001e 	0xdc1c001e
1c006cc1:	dc1c001e 	0xdc1c001e
1c006cc5:	dc1c001e 	0xdc1c001e
1c006cc9:	dc1c001e 	0xdc1c001e
1c006ccd:	dc1c001e 	0xdc1c001e
1c006cd1:	dc1c001e 	0xdc1c001e
1c006cd5:	dc1c001e 	0xdc1c001e
1c006cd9:	181c001e 	pcaddi	$r30,57344(0xe000)
1c006cdd:	881c001d 	0x881c001d
1c006ce1:	dc1c001d 	0xdc1c001d
1c006ce5:	dc1c001e 	0xdc1c001e
1c006ce9:	4c1c001e 	jirl	$r30,$r0,7168(0x1c00)
1c006ced:	dc1c001c 	0xdc1c001c
1c006cf1:	a81c001e 	0xa81c001e
1c006cf5:	dc1c001c 	0xdc1c001c
1c006cf9:	dc1c001e 	0xdc1c001e
1c006cfd:	881c001e 	0x881c001e
1c006d01:	741c001d 	0x741c001d
1c006d05:	981c0023 	0x981c0023
1c006d09:	981c0024 	0x981c0024
1c006d0d:	981c0024 	0x981c0024
1c006d11:	981c0024 	0x981c0024
1c006d15:	981c0024 	0x981c0024
1c006d19:	981c0024 	0x981c0024
1c006d1d:	981c0024 	0x981c0024
1c006d21:	981c0024 	0x981c0024
1c006d25:	981c0024 	0x981c0024
1c006d29:	981c0024 	0x981c0024
1c006d2d:	941c0024 	0x941c0024
1c006d31:	1c1c0023 	pcaddu12i	$r3,57345(0xe001)
1c006d35:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006d39:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006d3d:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006d41:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006d45:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006d49:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006d4d:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006d51:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006d55:	981c0024 	0x981c0024
1c006d59:	981c0024 	0x981c0024
1c006d5d:	981c0024 	0x981c0024
1c006d61:	981c0024 	0x981c0024
1c006d65:	981c0024 	0x981c0024
1c006d69:	981c0024 	0x981c0024
1c006d6d:	981c0024 	0x981c0024
1c006d71:	981c0024 	0x981c0024
1c006d75:	981c0024 	0x981c0024
1c006d79:	981c0024 	0x981c0024
1c006d7d:	981c0024 	0x981c0024
1c006d81:	981c0024 	0x981c0024
1c006d85:	981c0024 	0x981c0024
1c006d89:	981c0024 	0x981c0024
1c006d8d:	981c0024 	0x981c0024
1c006d91:	981c0024 	0x981c0024
1c006d95:	981c0024 	0x981c0024
1c006d99:	981c0024 	0x981c0024
1c006d9d:	981c0024 	0x981c0024
1c006da1:	981c0024 	0x981c0024
1c006da5:	981c0024 	0x981c0024
1c006da9:	981c0024 	0x981c0024
1c006dad:	981c0024 	0x981c0024
1c006db1:	981c0024 	0x981c0024
1c006db5:	981c0024 	0x981c0024
1c006db9:	981c0024 	0x981c0024
1c006dbd:	981c0024 	0x981c0024
1c006dc1:	981c0024 	0x981c0024
1c006dc5:	981c0024 	0x981c0024
1c006dc9:	981c0024 	0x981c0024
1c006dcd:	981c0024 	0x981c0024
1c006dd1:	981c0024 	0x981c0024
1c006dd5:	981c0024 	0x981c0024
1c006dd9:	981c0024 	0x981c0024
1c006ddd:	981c0024 	0x981c0024
1c006de1:	981c0024 	0x981c0024
1c006de5:	981c0024 	0x981c0024
1c006de9:	981c0024 	0x981c0024
1c006ded:	981c0024 	0x981c0024
1c006df1:	981c0024 	0x981c0024
1c006df5:	fc1c0024 	0xfc1c0024
1c006df9:	141c0022 	lu12i.w	$r2,57345(0xe001)
1c006dfd:	841c0022 	0x841c0022
1c006e01:	981c0022 	0x981c0022
1c006e05:	981c0024 	0x981c0024
1c006e09:	981c0024 	0x981c0024
1c006e0d:	981c0024 	0x981c0024
1c006e11:	981c0024 	0x981c0024
1c006e15:	981c0024 	0x981c0024
1c006e19:	981c0024 	0x981c0024
1c006e1d:	981c0024 	0x981c0024
1c006e21:	981c0024 	0x981c0024
1c006e25:	981c0024 	0x981c0024
1c006e29:	c01c0024 	0xc01c0024
1c006e2d:	381c0022 	stx.d	$r2,$r1,$r0
1c006e31:	981c0023 	0x981c0023
1c006e35:	981c0024 	0x981c0024
1c006e39:	e41c0024 	0xe41c0024
1c006e3d:	981c0021 	0x981c0021
1c006e41:	481c0024 	bceqz	$fcc1,1055744(0x101c00) # 1c108a41 <_sidata+0xffbc5>
1c006e45:	981c0022 	0x981c0022
1c006e49:	981c0024 	0x981c0024
1c006e4d:	381c0024 	stx.d	$r4,$r1,$r0
1c006e51:	0a1c0023 	xvfmadd.s	$xr3,$xr1,$xr0,$xr24
1c006e55:	7c000000 	0x7c000000
1c006e59:	7c7c7c7c 	0x7c7c7c7c
1c006e5d:	7c7c7c7c 	0x7c7c7c7c
1c006e61:	7c7c7c7c 	0x7c7c7c7c
1c006e65:	7c7c7c7c 	0x7c7c7c7c
1c006e69:	7c7c7c7c 	0x7c7c7c7c
1c006e6d:	7c7c7c7c 	0x7c7c7c7c
1c006e71:	7c7c7c7c 	0x7c7c7c7c
1c006e75:	7c7c7c7c 	0x7c7c7c7c
1c006e79:	7c7c7c7c 	0x7c7c7c7c
1c006e7d:	7c7c7c7c 	0x7c7c7c7c
1c006e81:	7c7c7c7c 	0x7c7c7c7c
1c006e85:	7c7c7c7c 	0x7c7c7c7c
1c006e89:	7c7c7c7c 	0x7c7c7c7c
1c006e8d:	7c7c7c7c 	0x7c7c7c7c
1c006e91:	7c7c7c7c 	0x7c7c7c7c
1c006e95:	7c7c7c7c 	0x7c7c7c7c
1c006e99:	7c7c7c7c 	0x7c7c7c7c
1c006e9d:	7c7c7c7c 	0x7c7c7c7c
1c006ea1:	7c7c7c7c 	0x7c7c7c7c
1c006ea5:	7c7c7c7c 	0x7c7c7c7c
1c006ea9:	7c7c7c7c 	0x7c7c7c7c
1c006ead:	7c7c7c7c 	0x7c7c7c7c
1c006eb1:	7c7c7c7c 	0x7c7c7c7c
1c006eb5:	7c7c7c7c 	0x7c7c7c7c
1c006eb9:	7c00000a 	0x7c00000a
1c006ebd:	7c20207c 	0x7c20207c
1c006ec1:	7c7c7c7c 	0x7c7c7c7c
1c006ec5:	7c7c7c7c 	0x7c7c7c7c
1c006ec9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006ecd:	7c202020 	0x7c202020
1c006ed1:	7c7c7c7c 	0x7c7c7c7c
1c006ed5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006ed9:	7c202020 	0x7c202020
1c006edd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006ee1:	7c7c2020 	0x7c7c2020
1c006ee5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006ee9:	7c7c7c20 	0x7c7c7c20
1c006eed:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006ef1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006ef5:	7c7c7c7c 	0x7c7c7c7c
1c006ef9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006efd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006f01:	7c7c7c7c 	0x7c7c7c7c
1c006f05:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006f09:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006f0d:	7c7c7c7c 	0x7c7c7c7c
1c006f11:	7c202020 	0x7c202020
1c006f15:	7c7c7c7c 	0x7c7c7c7c
1c006f19:	7c7c2020 	0x7c7c2020
1c006f1d:	7c00000a 	0x7c00000a
1c006f21:	7c20207c 	0x7c20207c
1c006f25:	7c7c7c7c 	0x7c7c7c7c
1c006f29:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f2d:	7c7c2020 	0x7c7c2020
1c006f31:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006f35:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f39:	7c7c2020 	0x7c7c2020
1c006f3d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006f41:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f45:	7c202020 	0x7c202020
1c006f49:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f4d:	7c7c7c20 	0x7c7c7c20
1c006f51:	7c20207c 	0x7c20207c
1c006f55:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f59:	7c7c7c20 	0x7c7c7c20
1c006f5d:	7c202020 	0x7c202020
1c006f61:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f65:	7c7c7c20 	0x7c7c7c20
1c006f69:	7c202020 	0x7c202020
1c006f6d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f71:	7c7c7c20 	0x7c7c7c20
1c006f75:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006f79:	7c7c7c7c 	0x7c7c7c7c
1c006f7d:	7c7c2020 	0x7c7c2020
1c006f81:	7c00000a 	0x7c00000a
1c006f85:	7c20207c 	0x7c20207c
1c006f89:	7c7c7c7c 	0x7c7c7c7c
1c006f8d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f91:	7c7c7c20 	0x7c7c7c20
1c006f95:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f99:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f9d:	7c7c7c20 	0x7c7c7c20
1c006fa1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006fa5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006fa9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c006fad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006fb1:	7c7c7c20 	0x7c7c7c20
1c006fb5:	7c7c2020 	0x7c7c2020
1c006fb9:	7c7c7c7c 	0x7c7c7c7c
1c006fbd:	7c7c7c7c 	0x7c7c7c7c
1c006fc1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006fc5:	7c7c7c20 	0x7c7c7c20
1c006fc9:	7c7c7c7c 	0x7c7c7c7c
1c006fcd:	7c7c2020 	0x7c7c2020
1c006fd1:	7c7c7c7c 	0x7c7c7c7c
1c006fd5:	7c7c7c20 	0x7c7c7c20
1c006fd9:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c006fdd:	7c7c7c20 	0x7c7c7c20
1c006fe1:	7c7c2020 	0x7c7c2020
1c006fe5:	7c00000a 	0x7c00000a
1c006fe9:	7c20207c 	0x7c20207c
1c006fed:	7c7c7c7c 	0x7c7c7c7c
1c006ff1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006ff5:	7c7c7c20 	0x7c7c7c20
1c006ff9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006ffd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007001:	7c7c7c20 	0x7c7c7c20
1c007005:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007009:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00700d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007011:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007015:	7c7c7c20 	0x7c7c7c20
1c007019:	7c7c2020 	0x7c7c2020
1c00701d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007021:	7c7c7c20 	0x7c7c7c20
1c007025:	7c7c7c7c 	0x7c7c7c7c
1c007029:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00702d:	7c7c7c7c 	0x7c7c7c7c
1c007031:	7c7c2020 	0x7c7c2020
1c007035:	7c7c7c7c 	0x7c7c7c7c
1c007039:	7c7c7c20 	0x7c7c7c20
1c00703d:	7c7c2020 	0x7c7c2020
1c007041:	7c7c2020 	0x7c7c2020
1c007045:	7c7c2020 	0x7c7c2020
1c007049:	7c00000a 	0x7c00000a
1c00704d:	7c20207c 	0x7c20207c
1c007051:	7c7c7c7c 	0x7c7c7c7c
1c007055:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007059:	7c7c7c20 	0x7c7c7c20
1c00705d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007061:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007065:	7c7c7c20 	0x7c7c7c20
1c007069:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00706d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007071:	7c7c7c20 	0x7c7c7c20
1c007075:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c007079:	7c7c7c20 	0x7c7c7c20
1c00707d:	7c7c2020 	0x7c7c2020
1c007081:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007085:	7c7c7c20 	0x7c7c7c20
1c007089:	7c7c7c7c 	0x7c7c7c7c
1c00708d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007091:	7c7c7c20 	0x7c7c7c20
1c007095:	7c7c2020 	0x7c7c2020
1c007099:	7c7c7c7c 	0x7c7c7c7c
1c00709d:	7c7c7c20 	0x7c7c7c20
1c0070a1:	7c7c2020 	0x7c7c2020
1c0070a5:	7c20207c 	0x7c20207c
1c0070a9:	7c7c2020 	0x7c7c2020
1c0070ad:	7c00000a 	0x7c00000a
1c0070b1:	7c20207c 	0x7c20207c
1c0070b5:	7c7c7c7c 	0x7c7c7c7c
1c0070b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0070bd:	7c7c2020 	0x7c7c2020
1c0070c1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0070c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0070c9:	7c7c2020 	0x7c7c2020
1c0070cd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0070d1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0070d5:	7c7c7c20 	0x7c7c7c20
1c0070d9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0070dd:	7c7c7c20 	0x7c7c7c20
1c0070e1:	7c202020 	0x7c202020
1c0070e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0070e9:	7c7c7c20 	0x7c7c7c20
1c0070ed:	7c202020 	0x7c202020
1c0070f1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0070f5:	7c7c7c7c 	0x7c7c7c7c
1c0070f9:	7c202020 	0x7c202020
1c0070fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007101:	7c7c7c20 	0x7c7c7c20
1c007105:	7c7c2020 	0x7c7c2020
1c007109:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00710d:	7c7c2020 	0x7c7c2020
1c007111:	7c00000a 	0x7c00000a
1c007115:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007119:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00711d:	7c7c7c7c 	0x7c7c7c7c
1c007121:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007125:	7c202020 	0x7c202020
1c007129:	7c7c7c7c 	0x7c7c7c7c
1c00712d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007131:	7c202020 	0x7c202020
1c007135:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007139:	7c7c7c20 	0x7c7c7c20
1c00713d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007141:	7c7c7c20 	0x7c7c7c20
1c007145:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007149:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00714d:	7c7c7c7c 	0x7c7c7c7c
1c007151:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007155:	7c202020 	0x7c202020
1c007159:	7c7c7c7c 	0x7c7c7c7c
1c00715d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007161:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007165:	7c7c7c7c 	0x7c7c7c7c
1c007169:	7c7c2020 	0x7c7c2020
1c00716d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007171:	7c7c2020 	0x7c7c2020
1c007175:	7c00000a 	0x7c00000a
1c007179:	7c7c7c7c 	0x7c7c7c7c
1c00717d:	7c7c7c7c 	0x7c7c7c7c
1c007181:	7c7c7c7c 	0x7c7c7c7c
1c007185:	7c7c7c7c 	0x7c7c7c7c
1c007189:	7c7c7c7c 	0x7c7c7c7c
1c00718d:	7c7c7c7c 	0x7c7c7c7c
1c007191:	7c7c7c7c 	0x7c7c7c7c
1c007195:	7c7c7c7c 	0x7c7c7c7c
1c007199:	7c7c7c7c 	0x7c7c7c7c
1c00719d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c0071a1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c0071a5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c0071a9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c0071ad:	7c7c7c5d 	0x7c7c7c5d
1c0071b1:	7c7c7c7c 	0x7c7c7c7c
1c0071b5:	7c7c7c7c 	0x7c7c7c7c
1c0071b9:	7c7c7c7c 	0x7c7c7c7c
1c0071bd:	7c7c7c7c 	0x7c7c7c7c
1c0071c1:	7c7c7c7c 	0x7c7c7c7c
1c0071c5:	7c7c7c7c 	0x7c7c7c7c
1c0071c9:	7c7c7c7c 	0x7c7c7c7c
1c0071cd:	7c7c7c7c 	0x7c7c7c7c
1c0071d1:	7c7c7c7c 	0x7c7c7c7c
1c0071d5:	7c7c7c7c 	0x7c7c7c7c
1c0071d9:	0900000a 	0x0900000a
1c0071dd:	0a006425 	0x0a006425
1c0071e1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0071e5:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c0071e9:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0071ed:	0050550a 	0x0050550a
1c0071f1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0071f5:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00e741 <_sidata+0x58c5>
1c0071f9:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c0071fd:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c007201:	756f430a 	0x756f430a
1c007205:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c007209:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00720d:	3030090a 	0x3030090a
1c007211:	09313009 	0x09313009
1c007215:	30093230 	0x30093230
1c007219:	34300933 	0x34300933
1c00721d:	09353009 	0x09353009
1c007221:	30093630 	0x30093630
1c007225:	38300937 	fldx.s	$f23,$r9,$r2
1c007229:	09393009 	0x09393009
1c00722d:	31093031 	0x31093031
1c007231:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c007235:	746e630a 	0x746e630a
1c007239:	09000000 	0x09000000
1c00723d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c007241:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007245:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c007249:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00d39d <_sidata+0x4521>
1c00724d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007251:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfee7a1 <_start-0x1185f>
1c007255:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c007259:	09000000 	0x09000000
1c00725d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c007261:	09000000 	0x09000000
1c007265:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c007269:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00726d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c007271:	3a515249 	0x3a515249
1c007275:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c007279:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffe0ed <_start-0x1f13>
1c00727d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c007281:	0d3e2020 	0x0d3e2020
1c007285:	0a00000a 	0x0a00000a
1c007289:	2e2e2e2e 	0x2e2e2e2e
1c00728d:	2e2e2e2e 	0x2e2e2e2e
1c007291:	2e2e2e2e 	0x2e2e2e2e
1c007295:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ac1e5 <_sidata+0x3a3369>
1c007299:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00729d:	2e2e2e54 	0x2e2e2e54
1c0072a1:	2e2e2e2e 	0x2e2e2e2e
1c0072a5:	2e2e2e2e 	0x2e2e2e2e
1c0072a9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0072ad:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c0072b1:	2e2e2e0a 	0x2e2e2e0a
1c0072b5:	2e2e2e2e 	0x2e2e2e2e
1c0072b9:	2e2e2e2e 	0x2e2e2e2e
1c0072bd:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39b4e9 <_sidata+0x39266d>
1c0072c1:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1b91d <_start-0x2e46e3>
1c0072c5:	2e2e4c49 	0x2e2e4c49
1c0072c9:	2e2e2e2e 	0x2e2e2e2e
1c0072cd:	2e2e2e2e 	0x2e2e2e2e
1c0072d1:	2e2e2e2e 	0x2e2e2e2e
1c0072d5:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c0072d9:	2e2e2e0a 	0x2e2e2e0a
1c0072dd:	2e2e2e2e 	0x2e2e2e2e
1c0072e1:	2e2e2e2e 	0x2e2e2e2e
1c0072e5:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38b411 <_sidata+0x382595>
1c0072e9:	2e2e2e43 	0x2e2e2e43
1c0072ed:	2e2e2e2e 	0x2e2e2e2e
1c0072f1:	2e2e2e2e 	0x2e2e2e2e
1c0072f5:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c0072f9:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b72f9 <_sidata+0x2ae47d>
1c0072fd:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c007301:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01e069 <_sidata+0x151ed>
1c007305:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00d625 <_sidata+0x47a9>
1c007309:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00730d:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01e779 <_sidata+0x158fd>
1c007311:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c007315:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c007319:	 	bgeu	$r0,$r10,0 # 1c007319 <hexdecarr+0x7b0>

1c00731c <Ext_IrqHandle>:
1c00731c:	1c003e6c 	pcaddu12i	$r12,499(0x1f3)
1c007320:	1c003eb8 	pcaddu12i	$r24,501(0x1f5)
1c007324:	1c003f04 	pcaddu12i	$r4,504(0x1f8)
1c007328:	1c003f50 	pcaddu12i	$r16,506(0x1fa)
1c00732c:	1c003f9c 	pcaddu12i	$r28,508(0x1fc)
1c007330:	1c003fe8 	pcaddu12i	$r8,511(0x1ff)
1c007334:	1c004034 	pcaddu12i	$r20,513(0x201)
1c007338:	1c004080 	pcaddu12i	$r0,516(0x204)
1c00733c:	1c0040cc 	pcaddu12i	$r12,518(0x206)
1c007340:	1c004118 	pcaddu12i	$r24,520(0x208)
1c007344:	1c004164 	pcaddu12i	$r4,523(0x20b)
1c007348:	1c0041b0 	pcaddu12i	$r16,525(0x20d)
1c00734c:	1c0041fc 	pcaddu12i	$r28,527(0x20f)
1c007350:	1c004248 	pcaddu12i	$r8,530(0x212)
1c007354:	1c004294 	pcaddu12i	$r20,532(0x214)
1c007358:	1c0042e0 	pcaddu12i	$r0,535(0x217)
1c00735c:	1c00432c 	pcaddu12i	$r12,537(0x219)
1c007360:	1c004378 	pcaddu12i	$r24,539(0x21b)
1c007364:	1c0043c4 	pcaddu12i	$r4,542(0x21e)
1c007368:	1c004410 	pcaddu12i	$r16,544(0x220)
1c00736c:	1c00445c 	pcaddu12i	$r28,546(0x222)
1c007370:	1c0044a8 	pcaddu12i	$r8,549(0x225)
1c007374:	1c0044f4 	pcaddu12i	$r20,551(0x227)
1c007378:	1c004540 	pcaddu12i	$r0,554(0x22a)
1c00737c:	1c00458c 	pcaddu12i	$r12,556(0x22c)
1c007380:	1c0045d8 	pcaddu12i	$r24,558(0x22e)
1c007384:	1c004624 	pcaddu12i	$r4,561(0x231)
1c007388:	1c004670 	pcaddu12i	$r16,563(0x233)
1c00738c:	1c0046bc 	pcaddu12i	$r28,565(0x235)
1c007390:	1c004708 	pcaddu12i	$r8,568(0x238)
1c007394:	1c004754 	pcaddu12i	$r20,570(0x23a)
1c007398:	1c0047a0 	pcaddu12i	$r0,573(0x23d)
1c00739c:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073a0:	1c004a34 	pcaddu12i	$r20,593(0x251)
1c0073a4:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073a8:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073ac:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073b0:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073b4:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073b8:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073bc:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073c0:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073c4:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073c8:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073cc:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073d0:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073d4:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073d8:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0073dc:	1c004a50 	pcaddu12i	$r16,594(0x252)

1c0073e0 <__FUNCTION__.1646>:
1c0073e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e858 <_sidata+0x159dc>
1c0073e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e448 <_sidata+0x155cc>
1c0073e8:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffa448 <_start-0x5bb8>
1c0073ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe55c <_start-0x1aa4>
1c0073f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e250 <_sidata+0x53d4>
1c0073f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0073f8 <__FUNCTION__.1650>:
1c0073f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e870 <_sidata+0x159f4>
1c0073fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e460 <_sidata+0x155e4>
1c007400:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffa560 <_start-0x5aa0>
1c007404:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe574 <_start-0x1a8c>
1c007408:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e268 <_sidata+0x53ec>
1c00740c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007410 <__FUNCTION__.1654>:
1c007410:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e888 <_sidata+0x15a0c>
1c007414:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e478 <_sidata+0x155fc>
1c007418:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffa678 <_start-0x5988>
1c00741c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe58c <_start-0x1a74>
1c007420:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e280 <_sidata+0x5404>
1c007424:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007428 <__FUNCTION__.1658>:
1c007428:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e8a0 <_sidata+0x15a24>
1c00742c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e490 <_sidata+0x15614>
1c007430:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffa790 <_start-0x5870>
1c007434:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe5a4 <_start-0x1a5c>
1c007438:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e298 <_sidata+0x541c>
1c00743c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007440 <__FUNCTION__.1662>:
1c007440:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e8b8 <_sidata+0x15a3c>
1c007444:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e4a8 <_sidata+0x1562c>
1c007448:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffa8a8 <_start-0x5758>
1c00744c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe5bc <_start-0x1a44>
1c007450:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e2b0 <_sidata+0x5434>
1c007454:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007458 <__FUNCTION__.1666>:
1c007458:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e8d0 <_sidata+0x15a54>
1c00745c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e4c0 <_sidata+0x15644>
1c007460:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffa9c0 <_start-0x5640>
1c007464:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe5d4 <_start-0x1a2c>
1c007468:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e2c8 <_sidata+0x544c>
1c00746c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007470 <__FUNCTION__.1670>:
1c007470:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e8e8 <_sidata+0x15a6c>
1c007474:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e4d8 <_sidata+0x1565c>
1c007478:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffaad8 <_start-0x5528>
1c00747c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe5ec <_start-0x1a14>
1c007480:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e2e0 <_sidata+0x5464>
1c007484:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007488 <__FUNCTION__.1674>:
1c007488:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e900 <_sidata+0x15a84>
1c00748c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e4f0 <_sidata+0x15674>
1c007490:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffabf0 <_start-0x5410>
1c007494:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe604 <_start-0x19fc>
1c007498:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e2f8 <_sidata+0x547c>
1c00749c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0074a0 <__FUNCTION__.1678>:
1c0074a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e918 <_sidata+0x15a9c>
1c0074a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e508 <_sidata+0x1568c>
1c0074a8:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffa508 <_start-0x5af8>
1c0074ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe61c <_start-0x19e4>
1c0074b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e310 <_sidata+0x5494>
1c0074b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0074b8 <__FUNCTION__.1682>:
1c0074b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e930 <_sidata+0x15ab4>
1c0074bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e520 <_sidata+0x156a4>
1c0074c0:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffa620 <_start-0x59e0>
1c0074c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe634 <_start-0x19cc>
1c0074c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e328 <_sidata+0x54ac>
1c0074cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0074d0 <__FUNCTION__.1686>:
1c0074d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e948 <_sidata+0x15acc>
1c0074d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e538 <_sidata+0x156bc>
1c0074d8:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffa738 <_start-0x58c8>
1c0074dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe64c <_start-0x19b4>
1c0074e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e340 <_sidata+0x54c4>
1c0074e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0074e8 <__FUNCTION__.1690>:
1c0074e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e960 <_sidata+0x15ae4>
1c0074ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e550 <_sidata+0x156d4>
1c0074f0:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffa850 <_start-0x57b0>
1c0074f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe664 <_start-0x199c>
1c0074f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e358 <_sidata+0x54dc>
1c0074fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007500 <__FUNCTION__.1694>:
1c007500:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e978 <_sidata+0x15afc>
1c007504:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e568 <_sidata+0x156ec>
1c007508:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffa968 <_start-0x5698>
1c00750c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe67c <_start-0x1984>
1c007510:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e370 <_sidata+0x54f4>
1c007514:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007518 <__FUNCTION__.1698>:
1c007518:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e990 <_sidata+0x15b14>
1c00751c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e580 <_sidata+0x15704>
1c007520:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffaa80 <_start-0x5580>
1c007524:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe694 <_start-0x196c>
1c007528:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e388 <_sidata+0x550c>
1c00752c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007530 <__FUNCTION__.1702>:
1c007530:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e9a8 <_sidata+0x15b2c>
1c007534:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e598 <_sidata+0x1571c>
1c007538:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffab98 <_start-0x5468>
1c00753c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe6ac <_start-0x1954>
1c007540:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e3a0 <_sidata+0x5524>
1c007544:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007548 <__FUNCTION__.1706>:
1c007548:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e9c0 <_sidata+0x15b44>
1c00754c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e5b0 <_sidata+0x15734>
1c007550:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffacb0 <_start-0x5350>
1c007554:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe6c4 <_start-0x193c>
1c007558:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e3b8 <_sidata+0x553c>
1c00755c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007560 <__FUNCTION__.1710>:
1c007560:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e9d8 <_sidata+0x15b5c>
1c007564:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e5c8 <_sidata+0x1574c>
1c007568:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffa5c8 <_start-0x5a38>
1c00756c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe6dc <_start-0x1924>
1c007570:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e3d0 <_sidata+0x5554>
1c007574:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007578 <__FUNCTION__.1714>:
1c007578:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e9f0 <_sidata+0x15b74>
1c00757c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e5e0 <_sidata+0x15764>
1c007580:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffa6e0 <_start-0x5920>
1c007584:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe6f4 <_start-0x190c>
1c007588:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e3e8 <_sidata+0x556c>
1c00758c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007590 <__FUNCTION__.1718>:
1c007590:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea08 <_sidata+0x15b8c>
1c007594:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e5f8 <_sidata+0x1577c>
1c007598:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffa7f8 <_start-0x5808>
1c00759c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe70c <_start-0x18f4>
1c0075a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e400 <_sidata+0x5584>
1c0075a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0075a8 <__FUNCTION__.1722>:
1c0075a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea20 <_sidata+0x15ba4>
1c0075ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e610 <_sidata+0x15794>
1c0075b0:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffa910 <_start-0x56f0>
1c0075b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe724 <_start-0x18dc>
1c0075b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e418 <_sidata+0x559c>
1c0075bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0075c0 <__FUNCTION__.1726>:
1c0075c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea38 <_sidata+0x15bbc>
1c0075c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e628 <_sidata+0x157ac>
1c0075c8:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffaa28 <_start-0x55d8>
1c0075cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe73c <_start-0x18c4>
1c0075d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e430 <_sidata+0x55b4>
1c0075d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0075d8 <__FUNCTION__.1730>:
1c0075d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea50 <_sidata+0x15bd4>
1c0075dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e640 <_sidata+0x157c4>
1c0075e0:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffab40 <_start-0x54c0>
1c0075e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe754 <_start-0x18ac>
1c0075e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e448 <_sidata+0x55cc>
1c0075ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0075f0 <__FUNCTION__.1734>:
1c0075f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea68 <_sidata+0x15bec>
1c0075f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e658 <_sidata+0x157dc>
1c0075f8:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffac58 <_start-0x53a8>
1c0075fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe76c <_start-0x1894>
1c007600:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e460 <_sidata+0x55e4>
1c007604:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007608 <__FUNCTION__.1738>:
1c007608:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea80 <_sidata+0x15c04>
1c00760c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e670 <_sidata+0x157f4>
1c007610:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffad70 <_start-0x5290>
1c007614:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe784 <_start-0x187c>
1c007618:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e478 <_sidata+0x55fc>
1c00761c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007620 <__FUNCTION__.1742>:
1c007620:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea98 <_sidata+0x15c1c>
1c007624:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e688 <_sidata+0x1580c>
1c007628:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffa68c <_start-0x5974>
1c00762c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe79c <_start-0x1864>
1c007630:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e490 <_sidata+0x5614>
1c007634:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007638 <__FUNCTION__.1746>:
1c007638:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eab0 <_sidata+0x15c34>
1c00763c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e6a0 <_sidata+0x15824>
1c007640:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffa7a4 <_start-0x585c>
1c007644:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe7b4 <_start-0x184c>
1c007648:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e4a8 <_sidata+0x562c>
1c00764c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007650 <__FUNCTION__.1750>:
1c007650:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eac8 <_sidata+0x15c4c>
1c007654:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e6b8 <_sidata+0x1583c>
1c007658:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffa8bc <_start-0x5744>
1c00765c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe7cc <_start-0x1834>
1c007660:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e4c0 <_sidata+0x5644>
1c007664:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007668 <__FUNCTION__.1754>:
1c007668:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eae0 <_sidata+0x15c64>
1c00766c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e6d0 <_sidata+0x15854>
1c007670:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffa9d4 <_start-0x562c>
1c007674:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe7e4 <_start-0x181c>
1c007678:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e4d8 <_sidata+0x565c>
1c00767c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007680 <__FUNCTION__.1758>:
1c007680:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eaf8 <_sidata+0x15c7c>
1c007684:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e6e8 <_sidata+0x1586c>
1c007688:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffaaec <_start-0x5514>
1c00768c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe7fc <_start-0x1804>
1c007690:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e4f0 <_sidata+0x5674>
1c007694:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007698 <__FUNCTION__.1762>:
1c007698:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb10 <_sidata+0x15c94>
1c00769c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e700 <_sidata+0x15884>
1c0076a0:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffac04 <_start-0x53fc>
1c0076a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe814 <_start-0x17ec>
1c0076a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e508 <_sidata+0x568c>
1c0076ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076b0 <__FUNCTION__.1766>:
1c0076b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb28 <_sidata+0x15cac>
1c0076b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e718 <_sidata+0x1589c>
1c0076b8:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffad1c <_start-0x52e4>
1c0076bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe82c <_start-0x17d4>
1c0076c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e520 <_sidata+0x56a4>
1c0076c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076c8 <__FUNCTION__.1770>:
1c0076c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb40 <_sidata+0x15cc4>
1c0076cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e730 <_sidata+0x158b4>
1c0076d0:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffae34 <_start-0x51cc>
1c0076d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe844 <_start-0x17bc>
1c0076d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e538 <_sidata+0x56bc>
1c0076dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076e0 <asc2_1608>:
	...
1c0076f0:	f8000000 	0xf8000000
1c0076f4:	00000000 	0x00000000
1c0076f8:	33000000 	0x33000000
1c0076fc:	00000000 	0x00000000
1c007700:	020c1000 	slti	$r0,$r0,772(0x304)
1c007704:	00020c10 	0x00020c10
	...
1c007710:	78c04000 	0x78c04000
1c007714:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c007718:	043f0400 	csrrd	$r0,0xfc1
1c00771c:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c007720:	88887000 	0x88887000
1c007724:	003008fc 	0x003008fc
1c007728:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c00772c:	001e21ff 	mulh.d	$r31,$r15,$r8
1c007730:	80f008f0 	0x80f008f0
1c007734:	00001860 	cto.w	$r0,$r3
1c007738:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c00773c:	001e211e 	mulh.d	$r30,$r8,$r8
1c007740:	8808f000 	0x8808f000
1c007744:	00000070 	0x00000070
1c007748:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c00774c:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c007750:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c007760:	e0000000 	0xe0000000
1c007764:	00020418 	0x00020418
1c007768:	07000000 	0x07000000
1c00776c:	00402018 	0x00402018
1c007770:	18040200 	pcaddi	$r0,8208(0x2010)
1c007774:	000000e0 	0x000000e0
1c007778:	18204000 	pcaddi	$r0,66048(0x10200)
1c00777c:	00000007 	0x00000007
1c007780:	f0804040 	0xf0804040
1c007784:	00404080 	0x00404080
1c007788:	0f010202 	0x0f010202
1c00778c:	00020201 	0x00020201
1c007790:	00000000 	0x00000000
1c007794:	000000e0 	0x000000e0
1c007798:	01010100 	fadd.d	$f0,$f8,$f0
1c00779c:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c0077a8:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c0077b8:	01010100 	fadd.d	$f0,$f8,$f0
1c0077bc:	00010101 	0x00010101
	...
1c0077c8:	00303000 	0x00303000
	...
1c0077d4:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c0077d8:	07186000 	0x07186000
1c0077dc:	00000000 	0x00000000
1c0077e0:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c0077e4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0077e8:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c0077ec:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c0077f0:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c0077f4:	000000f8 	0x000000f8
1c0077f8:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c0077fc:	0020203f 	div.w	$r31,$r1,$r8
1c007800:	08087000 	0x08087000
1c007804:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007808:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c00780c:	00302122 	0x00302122
1c007810:	08083000 	0x08083000
1c007814:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007818:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c00781c:	001c2221 	mul.w	$r1,$r17,$r8
1c007820:	40800000 	beqz	$r0,32768(0x8000) # 1c00f820 <_sidata+0x69a4>
1c007824:	0000f830 	0x0000f830
1c007828:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c00782c:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c007830:	8888f800 	0x8888f800
1c007834:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c007838:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c00783c:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007840:	8810e000 	0x8810e000
1c007844:	00009088 	0x00009088
1c007848:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c00784c:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007850:	08081800 	0x08081800
1c007854:	00186888 	sra.w	$r8,$r4,$r26
1c007858:	3e000000 	0x3e000000
1c00785c:	00000001 	0x00000001
1c007860:	08887000 	0x08887000
1c007864:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007868:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c00786c:	001c2221 	mul.w	$r1,$r17,$r8
1c007870:	0808f000 	0x0808f000
1c007874:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007878:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c00787c:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c007880:	c0000000 	0xc0000000
1c007884:	000000c0 	0x000000c0
1c007888:	30000000 	0x30000000
1c00788c:	00000030 	0x00000030
1c007890:	80000000 	0x80000000
1c007894:	00000000 	0x00000000
1c007898:	e0000000 	0xe0000000
1c00789c:	00000000 	0x00000000
1c0078a0:	40800000 	beqz	$r0,32768(0x8000) # 1c00f8a0 <_sidata+0x6a24>
1c0078a4:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c0078a8:	04020100 	csrxchg	$r0,$r8,0x80
1c0078ac:	00201008 	div.w	$r8,$r0,$r4
1c0078b0:	40404000 	beqz	$r0,16448(0x4040) # 1c00b8f0 <_sidata+0x2a74>
1c0078b4:	00404040 	0x00404040
1c0078b8:	02020200 	slti	$r0,$r16,128(0x80)
1c0078bc:	00020202 	0x00020202
1c0078c0:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c0078c4:	00008040 	0x00008040
1c0078c8:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c0078cc:	00010204 	0x00010204
1c0078d0:	08487000 	0x08487000
1c0078d4:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c0078d8:	30000000 	0x30000000
1c0078dc:	00000037 	0x00000037
1c0078e0:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c0078e4:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c0078e8:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c0078ec:	0017282f 	sll.w	$r15,$r1,$r10
1c0078f0:	38c00000 	0x38c00000
1c0078f4:	000000e0 	0x000000e0
1c0078f8:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c0078fc:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c007900:	8888f808 	0x8888f808
1c007904:	00007088 	0x00007088
1c007908:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00790c:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007910:	080830c0 	0x080830c0
1c007914:	00380808 	0x00380808
1c007918:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00791c:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007920:	0808f808 	0x0808f808
1c007924:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007928:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00792c:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007930:	8888f808 	0x8888f808
1c007934:	001008e8 	add.w	$r8,$r7,$r2
1c007938:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00793c:	00182023 	sra.w	$r3,$r1,$r8
1c007940:	8888f808 	0x8888f808
1c007944:	001008e8 	add.w	$r8,$r7,$r2
1c007948:	00203f20 	div.w	$r0,$r25,$r15
1c00794c:	00000003 	0x00000003
1c007950:	080830c0 	0x080830c0
1c007954:	00003808 	revb.2w	$r8,$r0
1c007958:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00795c:	00021e22 	0x00021e22
1c007960:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007964:	08f80800 	0x08f80800
1c007968:	01213f20 	0x01213f20
1c00796c:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c007970:	f8080800 	0xf8080800
1c007974:	00000808 	0x00000808
1c007978:	3f202000 	0x3f202000
1c00797c:	00002020 	clo.d	$r0,$r1
1c007980:	08080000 	0x08080000
1c007984:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c007988:	808080c0 	0x808080c0
1c00798c:	0000007f 	0x0000007f
1c007990:	c088f808 	0xc088f808
1c007994:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c007998:	01203f20 	0x01203f20
1c00799c:	00203826 	div.w	$r6,$r1,$r14
1c0079a0:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0079a4:	00000000 	0x00000000
1c0079a8:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0079ac:	00302020 	0x00302020
1c0079b0:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c0079b4:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c0079b8:	3e013f20 	0x3e013f20
1c0079bc:	00203f01 	div.w	$r1,$r24,$r15
1c0079c0:	c030f808 	0xc030f808
1c0079c4:	08f80800 	0x08f80800
1c0079c8:	00203f20 	div.w	$r0,$r25,$r15
1c0079cc:	003f1807 	0x003f1807
1c0079d0:	080810e0 	0x080810e0
1c0079d4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0079d8:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c0079dc:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c0079e0:	0808f808 	0x0808f808
1c0079e4:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c0079e8:	01213f20 	0x01213f20
1c0079ec:	00000101 	0x00000101
1c0079f0:	080810e0 	0x080810e0
1c0079f4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0079f8:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c0079fc:	004f5030 	0x004f5030
1c007a00:	8888f808 	0x8888f808
1c007a04:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c007a08:	00203f20 	div.w	$r0,$r25,$r15
1c007a0c:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c007a10:	08887000 	0x08887000
1c007a14:	00380808 	0x00380808
1c007a18:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c007a1c:	001c2221 	mul.w	$r1,$r17,$r8
1c007a20:	f8080818 	0xf8080818
1c007a24:	00180808 	sra.w	$r8,$r0,$r2
1c007a28:	3f200000 	0x3f200000
1c007a2c:	00000020 	0x00000020
1c007a30:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007a34:	08f80800 	0x08f80800
1c007a38:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007a3c:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007a40:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c007a44:	0838c800 	0x0838c800
1c007a48:	38070000 	0x38070000
1c007a4c:	0000010e 	0x0000010e
1c007a50:	f800f808 	0xf800f808
1c007a54:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c007a58:	013e0300 	0x013e0300
1c007a5c:	0000033e 	0x0000033e
1c007a60:	80681808 	0x80681808
1c007a64:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c007a68:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c007a6c:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c007a70:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c007a74:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007a78:	3f200000 	0x3f200000
1c007a7c:	00000020 	0x00000020
1c007a80:	08080810 	0x08080810
1c007a84:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007a88:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c007a8c:	00182020 	sra.w	$r0,$r1,$r8
1c007a90:	fe000000 	0xfe000000
1c007a94:	00020202 	0x00020202
1c007a98:	7f000000 	0x7f000000
1c007a9c:	00404040 	0x00404040
1c007aa0:	c0380400 	0xc0380400
1c007aa4:	00000000 	0x00000000
1c007aa8:	01000000 	0x01000000
1c007aac:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c007ab0:	02020200 	slti	$r0,$r16,128(0x80)
1c007ab4:	000000fe 	0x000000fe
1c007ab8:	40404000 	beqz	$r0,16448(0x4040) # 1c00baf8 <_sidata+0x2c7c>
1c007abc:	0000007f 	0x0000007f
1c007ac0:	02040000 	slti	$r0,$r0,256(0x100)
1c007ac4:	00000402 	0x00000402
	...
1c007ad8:	80808080 	0x80808080
1c007adc:	80808080 	0x80808080
1c007ae0:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c007af0:	80800000 	0x80800000
1c007af4:	00000080 	0x00000080
1c007af8:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c007afc:	00203f12 	div.w	$r18,$r24,$r15
1c007b00:	8000f010 	0x8000f010
1c007b04:	00000080 	0x00000080
1c007b08:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c007b0c:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007b10:	80000000 	0x80000000
1c007b14:	00008080 	0x00008080
1c007b18:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c007b1c:	00112020 	sub.w	$r0,$r1,$r8
1c007b20:	80800000 	0x80800000
1c007b24:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c007b28:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007b2c:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c007b30:	80800000 	0x80800000
1c007b34:	00008080 	0x00008080
1c007b38:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c007b3c:	00172424 	sll.w	$r4,$r1,$r9
1c007b40:	e0808000 	0xe0808000
1c007b44:	00209090 	mod.w	$r16,$r4,$r4
1c007b48:	3f202000 	0x3f202000
1c007b4c:	00002020 	clo.d	$r0,$r1
1c007b50:	80800000 	0x80800000
1c007b54:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007b58:	94946b00 	0x94946b00
1c007b5c:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c007b60:	8000f010 	0x8000f010
1c007b64:	00008080 	0x00008080
1c007b68:	00213f20 	div.wu	$r0,$r25,$r15
1c007b6c:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c007b70:	98988000 	0x98988000
1c007b74:	00000000 	0x00000000
1c007b78:	3f202000 	0x3f202000
1c007b7c:	00002020 	clo.d	$r0,$r1
1c007b80:	80000000 	0x80000000
1c007b84:	00009898 	0x00009898
1c007b88:	8080c000 	0x8080c000
1c007b8c:	00007f80 	0x00007f80
1c007b90:	0000f010 	0x0000f010
1c007b94:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007b98:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c007b9c:	00203029 	div.w	$r9,$r1,$r12
1c007ba0:	f8101000 	0xf8101000
1c007ba4:	00000000 	0x00000000
1c007ba8:	3f202000 	0x3f202000
1c007bac:	00002020 	clo.d	$r0,$r1
1c007bb0:	80808080 	0x80808080
1c007bb4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007bb8:	00203f20 	div.w	$r0,$r25,$r15
1c007bbc:	3f00203f 	0x3f00203f
1c007bc0:	80008080 	0x80008080
1c007bc4:	00008080 	0x00008080
1c007bc8:	00213f20 	div.wu	$r0,$r25,$r15
1c007bcc:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c007bd0:	80800000 	0x80800000
1c007bd4:	00008080 	0x00008080
1c007bd8:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007bdc:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007be0:	80008080 	0x80008080
1c007be4:	00000080 	0x00000080
1c007be8:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c007bec:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007bf0:	80000000 	0x80000000
1c007bf4:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c007bf8:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c007bfc:	80ff9120 	0x80ff9120
1c007c00:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007c04:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007c08:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c007c0c:	00010020 	asrtle.d	$r1,$r0
1c007c10:	80800000 	0x80800000
1c007c14:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007c18:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c007c1c:	00192424 	srl.d	$r4,$r1,$r9
1c007c20:	e0808000 	0xe0808000
1c007c24:	00008080 	0x00008080
1c007c28:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c007c2c:	00102020 	add.w	$r0,$r1,$r8
1c007c30:	00008080 	0x00008080
1c007c34:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c007c38:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007c3c:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c007c40:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007c44:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007c48:	300c0300 	0x300c0300
1c007c4c:	0000030c 	0x0000030c
1c007c50:	80008080 	0x80008080
1c007c54:	80800080 	0x80800080
1c007c58:	0c300e01 	0x0c300e01
1c007c5c:	01063807 	0x01063807
1c007c60:	80808000 	0x80808000
1c007c64:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c007c68:	0e312000 	0x0e312000
1c007c6c:	0020312e 	div.w	$r14,$r9,$r12
1c007c70:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007c74:	80808000 	0x80808000
1c007c78:	78868100 	0x78868100
1c007c7c:	00010618 	0x00010618
1c007c80:	80808000 	0x80808000
1c007c84:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007c88:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c007c8c:	00302122 	0x00302122
1c007c90:	00000000 	0x00000000
1c007c94:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c007c98:	00000000 	0x00000000
1c007c9c:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04bcd8 <_sidata+0x42e5c>
1c007ca0:	00000000 	0x00000000
1c007ca4:	000000ff 	0x000000ff
1c007ca8:	00000000 	0x00000000
1c007cac:	000000ff 	0x000000ff
1c007cb0:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c007cb4:	00000000 	0x00000000
1c007cb8:	013e4040 	0x013e4040
1c007cbc:	00000000 	0x00000000
1c007cc0:	02010200 	slti	$r0,$r16,64(0x40)
1c007cc4:	00020402 	0x00020402
	...

1c007cd0 <tfont16>:
1c007cd0:	00b2b7e5 	bstrins.d	$r5,$r31,0x32,0x2d
1c007cd4:	8282e200 	0x8282e200
1c007cd8:	82828282 	0x82828282
1c007cdc:	00fe8282 	bstrpick.d	$r2,$r20,0x3e,0x20
1c007ce0:	00000000 	0x00000000
1c007ce4:	40403f00 	beqz	$r24,16444(0x403c) # 1c00bd20 <_sidata+0x2ea4>
1c007ce8:	40404040 	beqz	$r2,16448(0x4040) # 1c00bd28 <_sidata+0x2eac>
1c007cec:	40404040 	beqz	$r2,16448(0x4040) # 1c00bd2c <_sidata+0x2eb0>
1c007cf0:	e8000078 	0xe8000078
1c007cf4:	40409ebf 	beqz	$r21,-245604(0x7c409c) # 1bfcbd90 <_start-0x34270>
1c007cf8:	0400cc42 	csrxchg	$r2,$r2,0x33
1c007cfc:	475c6444 	bnez	$r2,1268836(0x135c64) # 1c13d960 <_sidata+0x134ae4>
1c007d00:	444444f4 	bnez	$r7,-3128252(0x504444) # 1bd0c144 <_start-0x2f3ebc>
1c007d04:	40000004 	beqz	$r0,1048576(0x100000) # 1c107d04 <_sidata+0xfee88>
1c007d08:	44201f20 	bnez	$r25,8220(0x201c) # 1c009d24 <_sidata+0xea8>
1c007d0c:	44444444 	bnez	$r2,1066052(0x104444) # 1c10c150 <_sidata+0x1032d4>
1c007d10:	4444447f 	bnez	$r3,-244668(0x7c4444) # 1bfcc154 <_start-0x33eac>
1c007d14:	8ee60044 	0x8ee60044
1c007d18:	101010a5 	addu16i.d	$r5,$r5,1028(0x404)
1c007d1c:	445010ff 	bnez	$r7,-241648(0x7c5010) # 1bfccd2c <_start-0x332d4>
1c007d20:	44c66554 	bnez	$r10,-3094940(0x50c664) # 1bd14384 <_start-0x2ebc7c>
1c007d24:	40445464 	beqz	$r3,1066068(0x104454) # 1c10c178 <_sidata+0x1032fc>
1c007d28:	82440400 	0x82440400
1c007d2c:	8282017f 	0x8282017f
1c007d30:	2223564a 	ll.d	$r10,$r18,9044(0x2354)
1c007d34:	02824e52 	addi.w	$r18,$r18,147(0x93)
1c007d38:	b088e500 	0xb088e500
1c007d3c:	4a526242 	0x4a526242
1c007d40:	625242c6 	blt	$r22,$r6,-110016(0x25240) # 1bfecf80 <_start-0x13080>
1c007d44:	00f800c2 	bstrpick.d	$r2,$r6,0x38,0x0
1c007d48:	0000ff00 	0x0000ff00
1c007d4c:	4444c440 	bnez	$r2,17604(0x44c4) # 1c00c210 <_sidata+0x3394>
1c007d50:	2424247f 	ldptr.w	$r31,$r3,9252(0x2424)
1c007d54:	400f0020 	beqz	$r1,3840(0xf00) # 1c008c54 <tfont32+0x938>
1c007d58:	00007f80 	0x00007f80
1c007d5c:	068384e2 	0x068384e2
1c007d60:	f8e60909 	0xf8e60909
1c007d64:	0202040c 	slti	$r12,$r0,129(0x81)
1c007d68:	04020202 	csrxchg	$r2,$r16,0x80
1c007d6c:	0000001e 	0x0000001e
1c007d70:	1f070000 	pcaddu18i	$r0,-509952(0x83800)
1c007d74:	40402030 	beqz	$r1,-4177888(0x404020) # 1bc0bd94 <_start-0x3f426c>
1c007d78:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c007d7c:	e6000010 	0xe6000010
1c007d80:	8080aa9c 	0x8080aa9c
1c007d84:	88888888 	0x88888888
1c007d88:	8888ff88 	0x8888ff88
1c007d8c:	80888888 	0x80888888
1c007d90:	20200080 	ll.w	$r0,$r4,8192(0x2000)
1c007d94:	02040810 	slti	$r16,$r0,258(0x102)
1c007d98:	0201ff01 	slti	$r1,$r24,127(0x7f)
1c007d9c:	20100804 	ll.w	$r4,$r0,4104(0x1008)
1c007da0:	a3e60020 	0xa3e60020
1c007da4:	d0101080 	0xd0101080
1c007da8:	205090ff 	ll.w	$r31,$r7,20624(0x5090)
1c007dac:	4c434c50 	jirl	$r16,$r2,17228(0x434c)
1c007db0:	40402050 	beqz	$r2,-4177888(0x404020) # 1bc0bdd0 <_start-0x3f4230>
1c007db4:	00030400 	0x00030400
1c007db8:	444100ff 	bnez	$r7,-245504(0x7c4100) # 1bfcbeb8 <_start-0x34148>
1c007dbc:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 1c00cbfc <_sidata+0x3d80>
1c007dc0:	40404758 	beqz	$r26,-2080700(0x604044) # 1be0be04 <_start-0x1f41fc>
1c007dc4:	8bb5e600 	0x8bb5e600
1c007dc8:	8c026010 	0x8c026010
1c007dcc:	f202fe00 	0xf202fe00
1c007dd0:	f800fe02 	0xf800fe02
1c007dd4:	0000ff00 	0x0000ff00
1c007dd8:	017e0404 	0x017e0404
1c007ddc:	0f304780 	0x0f304780
1c007de0:	47002710 	bnez	$r24,-3997660(0x430024) # 1bc37e04 <_start-0x3c81fc>
1c007de4:	00007f80 	0x00007f80
1c007de8:	42b088e5 	beqz	$r7,1486984(0x16b088) # 1c172e70 <_sidata+0x169ff4>
1c007dec:	c64a5262 	0xc64a5262
1c007df0:	c2625242 	0xc2625242
1c007df4:	0000f800 	0x0000f800
1c007df8:	400000ff 	beqz	$r7,-262144(0x7c0000) # 1bfc7df8 <_start-0x38208>
1c007dfc:	7f4444c4 	0x7f4444c4
1c007e00:	20242424 	ll.w	$r4,$r1,9252(0x2424)
1c007e04:	80400f00 	0x80400f00
1c007e08:	e400007f 	0xe400007f
1c007e0c:	8000a0bc 	0x8000a0bc
1c007e10:	4007f860 	beqz	$r3,2040(0x7f8) # 1c008608 <tfont32+0x2ec>
1c007e14:	5fe84848 	bne	$r2,$r8,-6072(0x3e848) # 1c00665c <Get_Weight+0x104>
1c007e18:	40484848 	beqz	$r2,2115656(0x204848) # 1c20c660 <_sidata+0x2037e4>
1c007e1c:	00010040 	asrtle.d	$r2,$r0
1c007e20:	0000ff00 	0x0000ff00
1c007e24:	22120b02 	ll.d	$r2,$r24,4616(0x1208)
1c007e28:	00060ad2 	alsl.wu	$r18,$r22,$r2,0x1
1c007e2c:	84e60000 	0x84e60000
1c007e30:	fc00009f 	0xfc00009f
1c007e34:	5454d404 	bl	1070292(0x1054d4) # 1c10d308 <_sidata+0x10448c>
1c007e38:	7f04d454 	0x7f04d454
1c007e3c:	0436c584 	csrxchg	$r4,$r12,0xdb1
1c007e40:	01668800 	0x01668800
1c007e44:	82826300 	0x82826300
1c007e48:	8284ab92 	0x8284ab92
1c007e4c:	cf2402c1 	0xcf2402c1
1c007e50:	a899e500 	0xa899e500
1c007e54:	929e8080 	0x929e8080
1c007e58:	e09e9292 	0xe09e9292
1c007e5c:	d2b29e80 	0xd2b29e80
1c007e60:	00809e92 	bstrins.d	$r18,$r20,0x0,0x27
1c007e64:	94f40808 	0x94f40808
1c007e68:	00f19292 	bstrpick.d	$r18,$r20,0x31,0x24
1c007e6c:	9492f201 	0x9492f201
1c007e70:	0008f894 	bytepick.w	$r20,$r4,$r30,0x1
1c007e74:	10a9b8e6 	addu16i.d	$r6,$r7,10862(0x2a6e)
1c007e78:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c007e7c:	9292fe00 	0x9292fe00
1c007e80:	fe929292 	0xfe929292
1c007e84:	04000000 	csrrd	$r0,0x0
1c007e88:	40017e04 	beqz	$r16,1048956(0x10017c) # 1c108004 <_sidata+0xff188>
1c007e8c:	7e42427e 	0x7e42427e
1c007e90:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0ac10c <_sidata+0xa3290>
1c007e94:	e600407e 	0xe600407e
1c007e98:	6010bfb9 	blt	$r29,$r25,4284(0x10bc) # 1c008f54 <_sidata+0xd8>
1c007e9c:	fe008c02 	0xfe008c02
1c007ea0:	92929292 	0x92929292
1c007ea4:	00fe9292 	bstrpick.d	$r18,$r20,0x3e,0x24
1c007ea8:	04040000 	csrrd	$r0,0x100
1c007eac:	4844017e 	bcnez	$fcc3,-506880(0x784400) # 1bf8c2ac <_start-0x73d54>
1c007eb0:	40407f50 	beqz	$r26,-4177796(0x40407c) # 1bc0bf2c <_start-0x3f40d4>
1c007eb4:	4448507f 	bnez	$r3,-243632(0x7c4850) # 1bfcc704 <_start-0x338fc>
1c007eb8:	bae50040 	0xbae50040
1c007ebc:	fc0000a6 	0xfc0000a6
1c007ec0:	fc242424 	0xfc242424
1c007ec4:	fc242625 	0xfc242625
1c007ec8:	04242424 	csrwr	$r4,0x909
1c007ecc:	8f304000 	0x8f304000
1c007ed0:	554c8480 	bl	33639556(0x2014c84) # 1e01cb54 <_sidata+0x2013cd8>
1c007ed4:	55252525 	bl	76883236(0x4952524) # 2095a3f8 <_sidata+0x495157c>
1c007ed8:	8080804c 	0x8080804c
1c007edc:	919be700 	0x919be700
1c007ee0:	007e0000 	bstrins.w	$r0,$r0,0x1e,0x0
1c007ee4:	4000ff00 	beqz	$r24,252(0xfc) # 1c007fe0 <tfont16+0x310>
1c007ee8:	14040f30 	lu12i.w	$r16,8313(0x2079)
1c007eec:	00000464 	0x00000464
1c007ef0:	427e4040 	beqz	$r2,163392(0x27e40) # 1c02fd30 <_sidata+0x26eb4>
1c007ef4:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0ac170 <_sidata+0xa32f4>
1c007ef8:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0ac174 <_sidata+0xa32f8>
1c007efc:	0040407e 	0x0040407e
1c007f00:	108bb5e6 	addu16i.d	$r6,$r15,8941(0x22ed)
1c007f04:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c007f08:	02f202fe 	addi.d	$r30,$r23,-896(0xc80)
1c007f0c:	00f800fe 	bstrpick.d	$r30,$r7,0x38,0x0
1c007f10:	040000ff 	csrxchg	$r31,$r7,0x0
1c007f14:	80017e04 	0x80017e04
1c007f18:	100f3047 	addu16i.d	$r7,$r2,972(0x3cc)
1c007f1c:	80470027 	0x80470027
1c007f20:	e500007f 	0xe500007f
1c007f24:	0c109eae 	0x0c109eae
1c007f28:	64148404 	bge	$r0,$r4,5252(0x1484) # 1c0093ac <_sidata+0x530>
1c007f2c:	04f40605 	csrxchg	$r5,$r16,0x3d01
1c007f30:	14040404 	lu12i.w	$r4,8224(0x2020)
1c007f34:	8404000c 	0x8404000c
1c007f38:	24474484 	ldptr.w	$r4,$r4,18244(0x4744)
1c007f3c:	0c070c14 	0x0c070c14
1c007f40:	84442414 	0x84442414
1c007f44:	aae90004 	0xaae90004
1c007f48:	82fa028c 	0x82fa028c
1c007f4c:	4080fe82 	beqz	$r20,557308(0x880fc) # 1c090048 <_sidata+0x871cc>
1c007f50:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03cba0 <_sidata+0x33d24>
1c007f54:	4020504c 	beqz	$r2,3154000(0x302050) # 1c309fa4 <_sidata+0x301128>
1c007f58:	48180800 	bceqz	$fcc0,6152(0x1808) # 1c009760 <_sidata+0x8e4>
1c007f5c:	403f4484 	beqz	$r4,1064772(0x103f44) # 1c10bea0 <_sidata+0x103024>
1c007f60:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c007f64:	40475860 	beqz	$r3,18264(0x4758) # 1c00c6bc <_sidata+0x3840>
1c007f68:	baa4e700 	0xbaa4e700
1c007f6c:	42424040 	beqz	$r2,148032(0x24240) # 1c02c1ac <_sidata+0x23330>
1c007f70:	c2424242 	0xc2424242
1c007f74:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac1b4 <_sidata+0xa3338>
1c007f78:	00404042 	0x00404042
1c007f7c:	06081020 	cacop	0x0,$r1,516(0x204)
1c007f80:	7f804000 	0x7f804000
1c007f84:	02000000 	slti	$r0,$r0,0
1c007f88:	00300804 	0x00300804
1c007f8c:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c007f90:	92fe0000 	0x92fe0000
1c007f94:	92929292 	0x92929292
1c007f98:	00fe9292 	bstrpick.d	$r18,$r20,0x3e,0x24
1c007f9c:	40000000 	beqz	$r0,0 # 1c007f9c <tfont16+0x2cc>
1c007fa0:	40584442 	beqz	$r2,546884(0x85844) # 1c08d7e4 <_sidata+0x84968>
1c007fa4:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcbfe4 <_start-0x3401c>
1c007fa8:	4850407f 	bceqz	$fcc3,-241600(0x7c5040) # 1bfccfe8 <_start-0x33018>
1c007fac:	e5004046 	0xe5004046
1c007fb0:	0c109eae 	0x0c109eae
1c007fb4:	64148404 	bge	$r0,$r4,5252(0x1484) # 1c009438 <_sidata+0x5bc>
1c007fb8:	04f40605 	csrxchg	$r5,$r16,0x3d01
1c007fbc:	14040404 	lu12i.w	$r4,8224(0x2020)
1c007fc0:	8404000c 	0x8404000c
1c007fc4:	24474484 	ldptr.w	$r4,$r4,18244(0x4744)
1c007fc8:	0c070c14 	0x0c070c14
1c007fcc:	84442414 	0x84442414
1c007fd0:	aae90004 	0xaae90004
1c007fd4:	82fa028c 	0x82fa028c
1c007fd8:	4080fe82 	beqz	$r20,557308(0x880fc) # 1c0900d4 <_sidata+0x87258>
1c007fdc:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03cc2c <_sidata+0x33db0>
1c007fe0:	4020504c 	beqz	$r2,3154000(0x302050) # 1c30a030 <_sidata+0x3011b4>
1c007fe4:	48180800 	bceqz	$fcc0,6152(0x1808) # 1c0097ec <_sidata+0x970>
1c007fe8:	403f4484 	beqz	$r4,1064772(0x103f44) # 1c10bf2c <_sidata+0x1030b0>
1c007fec:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c007ff0:	40475860 	beqz	$r3,18264(0x4758) # 1c00c748 <_sidata+0x38cc>
1c007ff4:	be99e700 	0xbe99e700
1c007ff8:	22e20202 	ll.d	$r2,$r16,-7680(0xe200)
1c007ffc:	262a3222 	ldptr.d	$r2,$r17,10800(0x2a30)
1c008000:	22222222 	ll.d	$r2,$r17,8736(0x2220)
1c008004:	000202e2 	0x000202e2
1c008008:	42ff0000 	beqz	$r0,196352(0x2ff00) # 1c037f08 <_sidata+0x2f08c>
1c00800c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac24c <_sidata+0xa33d0>
1c008010:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac250 <_sidata+0xa33d4>
1c008014:	000000ff 	0x000000ff
1c008018:	2491a7e7 	ldptr.w	$r7,$r31,-28252(0x91a4)
1c00801c:	a3fea424 	0xa3fea424
1c008020:	cc220022 	0xcc220022
1c008024:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008028:	08000000 	0x08000000
1c00802c:	00ff0106 	bstrpick.d	$r6,$r8,0x3f,0x0
1c008030:	04040401 	csrrd	$r1,0x101
1c008034:	02ff0404 	addi.d	$r4,$r0,-63(0xfc1)
1c008038:	e8000202 	0xe8000202
1c00803c:	6484a38d 	bge	$r28,$r13,33952(0x84a0) # 1c0104dc <_sidata+0x7660>
1c008040:	242f2424 	ldptr.w	$r4,$r1,12068(0x2f24)
1c008044:	2424a424 	ldptr.w	$r4,$r1,9380(0x24a4)
1c008048:	a424242f 	0xa424242f
1c00804c:	42400064 	beqz	$r3,1196032(0x124000) # 1c12c04c <_sidata+0x1231d0>
1c008050:	0a122222 	xvfmadd.s	$xr2,$xr17,$xr8,$xr4
1c008054:	0a06ff06 	0x0a06ff06
1c008058:	42222212 	beqz	$r16,-3530208(0x4a2220) # 1bcaa278 <_start-0x355d88>
1c00805c:	88e50040 	0x88e50040
1c008060:	d020409b 	0xd020409b
1c008064:	c844434c 	0xc844434c
1c008068:	f8002010 	0xf8002010
1c00806c:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008070:	3f000000 	0x3f000000
1c008074:	47484440 	bnez	$r2,215108(0x34844) # 1c03c8b8 <_sidata+0x33a3c>
1c008078:	0f007040 	0x0f007040
1c00807c:	007f8040 	bstrpick.w	$r0,$r2,0x1f,0x0
1c008080:	8d87e900 	0x8d87e900
1c008084:	d4141010 	0xd4141010
1c008088:	fc545454 	0xfc545454
1c00808c:	d3525252 	0xd3525252
1c008090:	00101012 	add.w	$r18,$r0,$r4
1c008094:	57504040 	bl	16994368(0x1035040) # 1d03d0d4 <_sidata+0x1034258>
1c008098:	7f555555 	0x7f555555
1c00809c:	57555555 	bl	89609556(0x5575554) # 2157d5f0 <_sidata+0x5574774>
1c0080a0:	00404050 	0x00404050
1c0080a4:	208f87e9 	ll.w	$r9,$r31,-28796(0x8f84)
1c0080a8:	aabe2020 	0xaabe2020
1c0080ac:	aaaaaaaa 	0xaaaaaaaa
1c0080b0:	20beaaaa 	ll.w	$r10,$r21,-16728(0xbea8)
1c0080b4:	00002020 	clo.d	$r0,$r1
1c0080b8:	aaaf8080 	0xaaaf8080
1c0080bc:	aaffaaaa 	0xaaffaaaa
1c0080c0:	80afaaaa 	0x80afaaaa
1c0080c4:	e6000080 	0xe6000080
1c0080c8:	9410ba99 	0x9410ba99
1c0080cc:	321e3253 	0x321e3253
1c0080d0:	7e001052 	0x7e001052
1c0080d4:	7e424242 	0x7e424242
1c0080d8:	00000000 	0x00000000
1c0080dc:	4949ff00 	0x4949ff00
1c0080e0:	49494949 	bcnez	$fcc2,2443592(0x254948) # 1c25ca28 <_sidata+0x253bac>
1c0080e4:	0000ff49 	0x0000ff49
1c0080e8:	83e80000 	0x83e80000
1c0080ec:	4acc08bd 	bceqz	$fcc5,-603128(0x76cc08) # 1bf74cf4 <_start-0x8b30c>
1c0080f0:	cc4a4849 	0xcc4a4849
1c0080f4:	887f0018 	0x887f0018
1c0080f8:	e0828488 	0xe0828488
1c0080fc:	12ff0000 	addu16i.d	$r0,$r0,-16448(0xbfc0)
1c008100:	7f925212 	0x7f925212
1c008104:	887e0000 	0x887e0000
1c008108:	e0828488 	0xe0828488
1c00810c:	829ce800 	0x829ce800
1c008110:	ff08f800 	0xff08f800
1c008114:	9080f808 	0x9080f808
1c008118:	54a4574c 	bl	-47143852(0xd30a454) # 1931256c <_start-0x2ceda94>
1c00811c:	0080844c 	bstrins.d	$r12,$r2,0x0,0x21
1c008120:	1f216320 	pcaddu18i	$r0,-455911(0x90b19)
1c008124:	10103911 	addu16i.d	$r17,$r8,1038(0x40e)
1c008128:	15ff1515 	lu12i.w	$r21,-1880(0xff8a8)
1c00812c:	00101015 	add.w	$r21,$r0,$r4
1c008130:	20b1aee7 	ll.w	$r7,$r23,-20052(0xb1ac)
1c008134:	ec878c90 	0xec878c90
1c008138:	c8148494 	0xc8148494
1c00813c:	544c4447 	bl	18631748(0x11c4c44) # 1d1ccd80 <_sidata+0x11c3f04>
1c008140:	400004c4 	beqz	$r6,1048580(0x100004) # 1c108144 <_sidata+0xff2c8>
1c008144:	ff061820 	0xff061820
1c008148:	ff001804 	0xff001804
1c00814c:	92929292 	0x92929292
1c008150:	e70000ff 	0xe70000ff
1c008154:	0000919b 	0x0000919b
1c008158:	ff00007e 	0xff00007e
1c00815c:	0f304000 	0x0f304000
1c008160:	04641404 	csrrd	$r4,0x1905
1c008164:	40400000 	beqz	$r0,16384(0x4000) # 1c00c164 <_sidata+0x32e8>
1c008168:	7e42427e 	0x7e42427e
1c00816c:	7e424242 	0x7e424242
1c008170:	407e4242 	beqz	$r18,556608(0x87e40) # 1c08ffb0 <_sidata+0x87134>
1c008174:	8ee60040 	0x8ee60040
1c008178:	101010a7 	addu16i.d	$r7,$r5,1028(0x404)
1c00817c:	982090ff 	0x982090ff
1c008180:	0e092848 	0x0e092848
1c008184:	18a84828 	pcaddi	$r8,344641(0x54241)
1c008188:	81420200 	0x81420200
1c00818c:	4040007f 	beqz	$r3,-245760(0x7c4000) # 1bfcc18c <_start-0x33e74>
1c008190:	7e424242 	0x7e424242
1c008194:	40424242 	beqz	$r18,541248(0x84240) # 1c08c3d4 <_sidata+0x83558>
1c008198:	bbb3e700 	0xbbb3e700
1c00819c:	32220000 	xvldrepl.w	$xr0,$r0,512(0x200)
1c0081a0:	62a2a62a 	blt	$r17,$r10,-89436(0x2a2a4) # 1bff2444 <_start-0xdbbc>
1c0081a4:	81091121 	0x81091121
1c0081a8:	00000001 	0x00000001
1c0081ac:	13224200 	addu16i.d	$r0,$r16,-14192(0xc890)
1c0081b0:	7e82420b 	0x7e82420b
1c0081b4:	120a0202 	addu16i.d	$r2,$r16,-32128(0x8280)
1c0081b8:	00004623 	revh.d	$r3,$r17
1c0081bc:	209fbbe7 	ll.w	$r7,$r31,-24648(0x9fb8)
1c0081c0:	3063ac30 	0x3063ac30
1c0081c4:	a8c88800 	0xa8c88800
1c0081c8:	a8888e99 	0xa8888e99
1c0081cc:	220088c8 	ll.d	$r8,$r6,136(0x88)
1c0081d0:	12122267 	addu16i.d	$r7,$r19,-31608(0x8488)
1c0081d4:	0f304080 	0x0f304080
1c0081d8:	403f0000 	beqz	$r0,16128(0x3f00) # 1c00c0d8 <_sidata+0x325c>
1c0081dc:	e6007140 	0xe6007140
1c0081e0:	60108bb5 	blt	$r29,$r21,4232(0x1088) # 1c009268 <_sidata+0x3ec>
1c0081e4:	fe008c02 	0xfe008c02
1c0081e8:	fe02f202 	0xfe02f202
1c0081ec:	ff00f800 	0xff00f800
1c0081f0:	04040000 	csrrd	$r0,0x100
1c0081f4:	4780017e 	bnez	$r11,-294912(0x7b8000) # 1bfc01f4 <_start-0x3fe0c>
1c0081f8:	27100f30 	stptr.d	$r16,$r25,4108(0x100c)
1c0081fc:	7f804700 	0x7f804700
1c008200:	ade60000 	0xade60000
1c008204:	020200a3 	slti	$r3,$r5,128(0x80)
1c008208:	020202c2 	slti	$r2,$r22,128(0x80)
1c00820c:	828282fe 	0x828282fe
1c008210:	00028282 	0x00028282
1c008214:	40404000 	beqz	$r0,16448(0x4040) # 1c00c254 <_sidata+0x33d8>
1c008218:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcc258 <_start-0x33da8>
1c00821c:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcc25c <_start-0x33da4>
1c008220:	40404040 	beqz	$r2,16448(0x4040) # 1c00c260 <_sidata+0x33e4>
1c008224:	b8b8e500 	0xb8b8e500
1c008228:	ea081820 	0xea081820
1c00822c:	afa8a8ac 	0xafa8a8ac
1c008230:	eaaca8a8 	0xeaaca8a8
1c008234:	00182808 	sra.w	$r8,$r0,$r10
1c008238:	023e0000 	slti	$r0,$r0,-128(0xf80)
1c00823c:	ff020202 	0xff020202
1c008240:	22120202 	ll.d	$r2,$r16,4608(0x1200)
1c008244:	0000001e 	0x0000001e
1c008248:	2881b9e7 	ld.w	$r7,$r15,110(0x6e)
1c00824c:	faaabbe4 	0xfaaabbe4
1c008250:	10a2faaa 	addu16i.d	$r10,$r21,10430(0x28be)
1c008254:	bc44b708 	0xbc44b708
1c008258:	00000404 	0x00000404
1c00825c:	16549000 	lu32i.d	$r0,173184(0x2a480)
1c008260:	12749c55 	addu16i.d	$r21,$r2,-25305(0x9d27)
1c008264:	30985011 	vldrepl.b	$vr17,$r0,1556(0x614)
1c008268:	e6000101 	0xe6000101
1c00826c:	c20296ae 	0xc20296ae
1c008270:	e222223e 	0xe222223e
1c008274:	a4a4e404 	0xa4a4e404
1c008278:	e4a4a4bf 	0xe4a4a4bf
1c00827c:	41820004 	beqz	$r0,1147392(0x118200) # 1c12047c <_sidata+0x117600>
1c008280:	430c1221 	beqz	$r17,461840(0x70c10) # 1c078e90 <_sidata+0x70014>
1c008284:	4a4a7f40 	0x4a4a7f40
1c008288:	7f4a4a4a 	0x7f4a4a4a
1c00828c:	86e50040 	0x86e50040
1c008290:	102000ac 	addu16i.d	$r12,$r5,2048(0x800)
1c008294:	44a79408 	bnez	$r0,2140052(0x20a794) # 1c212a28 <_sidata+0x209bac>
1c008298:	94a44444 	0x94a44444
1c00829c:	0000000c 	0x0000000c
1c0082a0:	01020200 	0x01020200
1c0082a4:	24242001 	ldptr.w	$r1,$r0,9248(0x2420)
1c0082a8:	10884844 	addu16i.d	$r4,$r2,8722(0x2212)
1c0082ac:	02020101 	slti	$r1,$r8,128(0x80)
1c0082b0:	a3ade500 	0xa3ade500
1c0082b4:	92901000 	0x92901000
1c0082b8:	fe123252 	0xfe123252
1c0082bc:	91513112 	0x91513112
1c0082c0:	00001090 	clo.w	$r16,$r4
1c0082c4:	08080909 	0x08080909
1c0082c8:	79894909 	0x79894909
1c0082cc:	08090b0d 	0x08090b0d
1c0082d0:	00090908 	bytepick.w	$r8,$r8,$r2,0x2
1c0082d4:	809c81e5 	0x809c81e5
1c0082d8:	0007f860 	alsl.wu	$r0,$r3,$r30,0x4
1c0082dc:	55547404 	bl	1135732(0x115474) # 1c11d750 <_sidata+0x1148d4>
1c0082e0:	74545456 	xvhaddw.h.b	$xr22,$xr2,$xr21
1c0082e4:	00000004 	0x00000004
1c0082e8:	0300ff00 	lu52i.d	$r0,$r24,63(0x3f)
1c0082ec:	85450501 	0x85450501
1c0082f0:	0505057d 	0x0505057d
1c0082f4:	e6000301 	0xe6000301
1c0082f8:	1010a58a 	addu16i.d	$r10,$r12,1065(0x429)
1c0082fc:	9010ff10 	0x9010ff10
1c008300:	8282fe00 	0x8282fe00
1c008304:	9ea29282 	0x9ea29282
1c008308:	44040000 	bnez	$r0,1024(0x400) # 1c008708 <tfont32+0x3ec>
1c00830c:	00017f82 	0x00017f82
1c008310:	4380ff00 	beqz	$r24,229628(0x380fc) # 1c04040c <_sidata+0x37590>
1c008314:	432c102c 	beqz	$r1,3353616(0x332c10) # 1c33af24 <_sidata+0x3320a8>
1c008318:	00000080 	0x00000080

1c00831c <tfont32>:
1c00831c:	00be99e7 	bstrins.d	$r7,$r15,0x3e,0x26
1c008320:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008324:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008328:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00832c:	70f0f010 	vsrlr.h	$vr16,$vr0,$vr28
1c008330:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008334:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008338:	10181010 	addu16i.d	$r16,$r0,1540(0x604)
	...
1c008344:	f8fc0000 	0xf8fc0000
1c008348:	08080808 	0x08080808
1c00834c:	08080b0c 	0x08080b0c
1c008350:	08080808 	0x08080808
1c008354:	f8fc0808 	0xf8fc0808
	...
1c008364:	ffff0000 	0xffff0000
1c008368:	08080808 	0x08080808
1c00836c:	08080808 	0x08080808
1c008370:	08080808 	0x08080808
1c008374:	ffff0808 	0xffff0808
	...
1c008384:	3f7f0000 	0x3f7f0000
1c008388:	08080808 	0x08080808
1c00838c:	08080808 	0x08080808
1c008390:	08080808 	0x08080808
1c008394:	3f7f0808 	0x3f7f0808
1c008398:	00000000 	0x00000000
1c00839c:	e7000000 	0xe7000000
1c0083a0:	000091a7 	0x000091a7
1c0083a4:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c0083a8:	e0e02020 	0xe0e02020
1c0083ac:	18181030 	pcaddi	$r16,49281(0xc081)
1c0083b0:	80000000 	0x80000000
1c0083b4:	00000080 	0x00000080
1c0083b8:	f8fc0000 	0xf8fc0000
1c0083bc:	00000008 	0x00000008
1c0083c0:	00000000 	0x00000000
1c0083c4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0083c8:	ffff9010 	0xffff9010
1c0083cc:	18101010 	pcaddi	$r16,32896(0x8080)
1c0083d0:	c0000010 	0xc0000010
1c0083d4:	00060781 	alsl.wu	$r1,$r28,$r1,0x1
1c0083d8:	ffff0000 	0xffff0000
	...
1c0083e4:	18204080 	pcaddi	$r0,66052(0x10204)
1c0083e8:	ffff030e 	0xffff030e
1c0083ec:	5e060301 	bne	$r24,$r1,-129536(0x20600) # 1bfe89ec <_start-0x17614>
1c0083f0:	20202040 	ll.w	$r0,$r2,8224(0x2020)
1c0083f4:	10102321 	addu16i.d	$r1,$r25,1032(0x408)
1c0083f8:	ffff1010 	0xffff1010
1c0083fc:	0c0c0808 	0x0c0c0808
1c008400:	01000000 	0x01000000
1c008404:	00000000 	0x00000000
1c008408:	3f7f0000 	0x3f7f0000
	...
1c008418:	3f7f0000 	0x3f7f0000
1c00841c:	00000000 	0x00000000
1c008420:	8de80000 	0x8de80000
1c008424:	000000a3 	0x000000a3
1c008428:	80808080 	0x80808080
1c00842c:	80808080 	0x80808080
1c008430:	8088f8fc 	0x8088f8fc
1c008434:	80808080 	0x80808080
1c008438:	8088f8fc 	0x8088f8fc
1c00843c:	e0c08080 	0xe0c08080
1c008440:	000080c0 	0x000080c0
1c008444:	00000000 	0x00000000
1c008448:	10f8c080 	addu16i.d	$r0,$r4,15920(0x3e30)
1c00844c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008450:	10101717 	addu16i.d	$r23,$r24,1029(0x405)
1c008454:	1050f0f0 	addu16i.d	$r16,$r7,5180(0x143c)
1c008458:	10101317 	addu16i.d	$r23,$r24,1028(0x404)
1c00845c:	f0d01010 	0xf0d01010
1c008460:	00001038 	clo.w	$r24,$r1
1c008464:	00000000 	0x00000000
1c008468:	02020200 	slti	$r0,$r16,128(0x80)
1c00846c:	c2820202 	0xc2820202
1c008470:	061e3a62 	cacop	0x2,$r19,1934(0x78e)
1c008474:	0e02ffff 	0x0e02ffff
1c008478:	82c26212 	0x82c26212
1c00847c:	03020282 	lu52i.d	$r2,$r20,128(0x80)
1c008480:	00000203 	0x00000203
1c008484:	10000000 	addu16i.d	$r0,$r0,0
1c008488:	06040808 	cacop	0x8,$r0,258(0x102)
1c00848c:	00010102 	0x00010102
1c008490:	00000000 	0x00000000
1c008494:	00003f7f 	revb.d	$r31,$r27
1c008498:	01000000 	0x01000000
1c00849c:	0e060303 	0x0e060303
1c0084a0:	0004040e 	alsl.w	$r14,$r0,$r1,0x1
1c0084a4:	9b88e500 	0x9b88e500
1c0084a8:	00000000 	0x00000000
1c0084ac:	c0000000 	0xc0000000
1c0084b0:	28183cf0 	ld.b	$r16,$r7,1551(0x60f)
1c0084b4:	80c04060 	0x80c04060
	...
1c0084c0:	f8000000 	0xf8000000
1c0084c4:	000000f8 	0x000000f8
1c0084c8:	40800000 	beqz	$r0,32768(0x8000) # 1c0104c8 <_sidata+0x764c>
1c0084cc:	23e6f830 	sc.d	$r16,$r1,-6408(0xe6f8)
1c0084d0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0084d4:	23f0e020 	sc.d	$r0,$r1,-3872(0xf0e0)
1c0084d8:	00000207 	0x00000207
1c0084dc:	0002ff00 	0x0002ff00
1c0084e0:	ff000000 	0xff000000
1c0084e4:	000000ff 	0x000000ff
1c0084e8:	00000100 	0x00000100
1c0084ec:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c0084f0:	60200000 	blt	$r0,$r0,8192(0x2000) # 1c00a4f0 <_sidata+0x1674>
1c0084f4:	001f3f60 	mulw.d.w	$r0,$r27,$r15
1c0084f8:	00008000 	0x00008000
1c0084fc:	00007f00 	0x00007f00
1c008500:	ff000000 	0xff000000
1c008504:	000000ff 	0x000000ff
1c008508:	00000000 	0x00000000
1c00850c:	303f0700 	0x303f0700
1c008510:	30303030 	0x30303030
1c008514:	30303030 	0x30303030
1c008518:	00103f38 	add.w	$r24,$r25,$r15
1c00851c:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008520:	3f703030 	0x3f703030
1c008524:	0000001f 	0x0000001f
1c008528:	0088bcef 	bstrins.d	$r15,$r7,0x8,0x2f
	...
1c008540:	40800000 	beqz	$r0,32768(0x8000) # 1c010540 <_sidata+0x76c4>
1c008544:	00102040 	add.w	$r0,$r2,$r8
	...
1c00855c:	1cf00000 	pcaddu12i	$r0,491520(0x78000)
1c008560:	00000306 	0x00000306
	...
1c00857c:	701f0000 	vaddwev.d.w	$vr0,$vr0,$vr0
1c008580:	000000c0 	0x000000c0
	...
1c0085a0:	04020100 	csrxchg	$r0,$r8,0x80
1c0085a4:	0010080c 	add.w	$r12,$r0,$r2
1c0085a8:	e5000000 	0xe5000000
1c0085ac:	0000978c 	0x0000978c
	...
1c0085b8:	08f8fc00 	0x08f8fc00
1c0085bc:	00000000 	0x00000000
1c0085c0:	0008f8fc 	bytepick.w	$r28,$r7,$r30,0x1
	...
1c0085d0:	08080808 	0x08080808
1c0085d4:	08080808 	0x08080808
1c0085d8:	00ffff08 	bstrpick.d	$r8,$r24,0x3f,0x3f
1c0085dc:	00000000 	0x00000000
1c0085e0:	4040ffff 	beqz	$r31,-245508(0x7c40fc) # 1bfcc6dc <_start-0x33924>
1c0085e4:	18103020 	pcaddi	$r0,33153(0x8181)
1c0085e8:	00040e0c 	alsl.w	$r12,$r16,$r3,0x1
	...
1c0085f4:	80000000 	0x80000000
1c0085f8:	00ffff80 	bstrpick.d	$r0,$r28,0x3f,0x3f
1c0085fc:	00000000 	0x00000000
1c008600:	0000ffff 	0x0000ffff
1c008604:	00000000 	0x00000000
1c008608:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
1c00860c:	00000000 	0x00000000
1c008610:	03060606 	lu52i.d	$r6,$r16,385(0x181)
1c008614:	00010103 	0x00010103
1c008618:	003f7f00 	0x003f7f00
1c00861c:	00000000 	0x00000000
1c008620:	30303f1f 	0x30303f1f
1c008624:	30303030 	0x30303030
1c008628:	183f3830 	pcaddi	$r16,129473(0x1f9c1)
1c00862c:	bae40000 	0xbae40000
1c008630:	800000ac 	0x800000ac
1c008634:	80808080 	0x80808080
1c008638:	80808080 	0x80808080
1c00863c:	8c808080 	0x8c808080
1c008640:	80b0f898 	0x80b0f898
1c008644:	80808080 	0x80808080
1c008648:	c0808080 	0xc0808080
1c00864c:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
	...
1c008658:	08f8f800 	0x08f8f800
1c00865c:	08080808 	0x08080808
1c008660:	08080808 	0x08080808
1c008664:	f8080808 	0xf8080808
1c008668:	000008fc 	0x000008fc
	...
1c008678:	e4cf0f00 	0xe4cf0f00
1c00867c:	04040444 	csrxchg	$r4,$r2,0x101
1c008680:	0404fcfc 	csrxchg	$r28,$r7,0x13f
1c008684:	cf442404 	0xcf442404
1c008688:	0000008f 	0x0000008f
1c00868c:	00000000 	0x00000000
1c008690:	20000000 	ll.w	$r0,$r0,0
1c008694:	04081010 	csrrd	$r16,0x204
1c008698:	00010306 	0x00010306
1c00869c:	70301010 	vsubwev.h.bu	$vr16,$vr0,$vr4
1c0086a0:	00003f3f 	revb.d	$r31,$r25
1c0086a4:	00000000 	0x00000000
1c0086a8:	1e0e0301 	pcaddu18i	$r1,28696(0x7018)
1c0086ac:	00000018 	0x00000018
1c0086b0:	89bcef00 	0x89bcef00
1c0086b4:	00000000 	0x00000000
1c0086b8:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c0086bc:	0080c060 	bstrins.d	$r0,$r3,0x0,0x30
	...
1c0086dc:	06010000 	cacop	0x0,$r0,64(0x40)
1c0086e0:	0000f03c 	0x0000f03c
	...
1c0086fc:	c0800000 	0xc0800000
1c008700:	00000f78 	0x00000f78
	...
1c008718:	0c081000 	0x0c081000
1c00871c:	00010306 	0x00010306
	...
1c008734:	0091a7e7 	bstrins.d	$r7,$r31,0x11,0x29
1c008738:	40404000 	beqz	$r0,16448(0x4040) # 1c00c778 <_sidata+0x38fc>
1c00873c:	e0202020 	0xe0202020
1c008740:	181030e0 	pcaddi	$r0,33159(0x8187)
1c008744:	00000018 	0x00000018
1c008748:	00008080 	0x00008080
1c00874c:	fc000000 	0xfc000000
1c008750:	000008f8 	0x000008f8
1c008754:	00000000 	0x00000000
1c008758:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c00875c:	ff901010 	0xff901010
1c008760:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c008764:	00001018 	clo.w	$r24,$r0
1c008768:	060781c0 	cacop	0x0,$r14,480(0x1e0)
1c00876c:	ff000000 	0xff000000
1c008770:	000000ff 	0x000000ff
1c008774:	00000000 	0x00000000
1c008778:	20408000 	ll.w	$r0,$r0,16512(0x4080)
1c00877c:	ff030e18 	0xff030e18
1c008780:	060301ff 	cacop	0x1f,$r15,192(0xc0)
1c008784:	2020405e 	ll.w	$r30,$r2,8256(0x2040)
1c008788:	10232120 	addu16i.d	$r0,$r9,2248(0x8c8)
1c00878c:	ff101010 	0xff101010
1c008790:	0c0808ff 	0x0c0808ff
1c008794:	0000000c 	0x0000000c
1c008798:	00000001 	0x00000001
1c00879c:	7f000000 	0x7f000000
1c0087a0:	0000003f 	0x0000003f
	...
1c0087ac:	7f000000 	0x7f000000
1c0087b0:	0000003f 	0x0000003f
1c0087b4:	e6000000 	0xe6000000
1c0087b8:	0000808a 	0x0000808a
1c0087bc:	00000000 	0x00000000
1c0087c0:	08f8fc00 	0x08f8fc00
	...
1c0087cc:	f8fc0000 	0xf8fc0000
1c0087d0:	00000008 	0x00000008
	...
1c0087dc:	02020202 	slti	$r2,$r16,128(0x80)
1c0087e0:	02ffff02 	addi.d	$r2,$r24,-1(0xfff)
1c0087e4:	42438382 	beqz	$r28,672640(0xa4380) # 1c0acb64 <_sidata+0xa3ce8>
1c0087e8:	82828282 	0x82828282
1c0087ec:	ffff8282 	0xffff8282
1c0087f0:	82828282 	0x82828282
1c0087f4:	020383c2 	slti	$r2,$r30,224(0xe0)
1c0087f8:	00000000 	0x00000000
1c0087fc:	06060c0c 	cacop	0xc,$r0,387(0x183)
1c008800:	01ffff02 	0x01ffff02
1c008804:	00000000 	0x00000000
1c008808:	1c030000 	pcaddu12i	$r0,6144(0x1800)
1c00880c:	8000c070 	0x8000c070
1c008810:	0f3c70c0 	0x0f3c70c0
1c008814:	00000003 	0x00000003
1c008818:	00000000 	0x00000000
1c00881c:	30101000 	vldrepl.d	$vr0,$r0,32(0x20)
1c008820:	003f3f70 	0x003f3f70
1c008824:	20204040 	ll.w	$r0,$r2,8256(0x2040)
1c008828:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c00882c:	0703060c 	0x0703060c
1c008830:	38180c0f 	stx.w	$r15,$r0,$r3
1c008834:	20303030 	ll.w	$r16,$r1,12336(0x3030)
1c008838:	8fe50000 	0x8fe50000
1c00883c:	00000091 	0x00000091
1c008840:	f0800000 	0xf0800000
1c008844:	00000070 	0x00000070
1c008848:	18fcc000 	pcaddi	$r0,517632(0x7e600)
1c00884c:	00000000 	0x00000000
1c008850:	70100800 	0x70100800
1c008854:	0000c0e0 	0x0000c0e0
	...
1c008860:	05070e04 	0x05070e04
1c008864:	84040404 	0x84040404
1c008868:	8487fff4 	0x8487fff4
1c00886c:	84848484 	0x84848484
1c008870:	84848484 	0x84848484
1c008874:	0484c584 	csrxchg	$r4,$r12,0x2131
1c008878:	00040606 	alsl.w	$r6,$r16,$r1,0x1
	...
1c008884:	0f3ce080 	0x0f3ce080
1c008888:	06010003 	cacop	0x3,$r0,64(0x40)
1c00888c:	80e03018 	0x80e03018
1c008890:	1e3860c0 	pcaddu18i	$r0,115462(0x1c306)
1c008894:	00000307 	0x00000307
1c008898:	00000000 	0x00000000
1c00889c:	20000000 	ll.w	$r0,$r0,0
1c0088a0:	03040810 	lu52i.d	$r16,$r0,258(0x102)
1c0088a4:	20204041 	ll.w	$r1,$r2,8256(0x2040)
1c0088a8:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c0088ac:	0303060c 	lu52i.d	$r12,$r16,193(0xc1)
1c0088b0:	0c060703 	0x0c060703
1c0088b4:	3038181c 	0x3038181c
1c0088b8:	00103030 	add.w	$r16,$r1,$r12
1c0088bc:	95b1e500 	0x95b1e500
1c0088c0:	00000000 	0x00000000
1c0088c4:	08f80400 	0x08f80400
1c0088c8:	08080808 	0x08080808
1c0088cc:	08080808 	0x08080808
1c0088d0:	08080808 	0x08080808
1c0088d4:	08080808 	0x08080808
1c0088d8:	08f8fc08 	0x08f8fc08
	...
1c0088e4:	21ff0000 	sc.w	$r0,$r0,-256(0xff00)
1c0088e8:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c0088ec:	21fdff21 	sc.w	$r1,$r25,-516(0xfdfc)
1c0088f0:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c0088f4:	2121fdff 	sc.w	$r31,$r15,8700(0x21fc)
1c0088f8:	00233321 	div.du	$r1,$r25,$r12
	...
1c008904:	043fff00 	csrxchg	$r0,$r24,0xfff
1c008908:	fc040404 	0xfc040404
1c00890c:	040707fc 	csrxchg	$r28,$r31,0x1c1
1c008910:	04c4740c 	csrrd	$r12,0x311d
1c008914:	64448707 	bge	$r24,$r7,17540(0x4484) # 1c00cd98 <_sidata+0x3f1c>
1c008918:	06062434 	cacop	0x14,$r1,393(0x189)
1c00891c:	00000004 	0x00000004
1c008920:	18204000 	pcaddi	$r0,66048(0x10200)
1c008924:	00000107 	0x00000107
1c008928:	3f000000 	0x3f000000
1c00892c:	0818103f 	fmadd.s	$f31,$f1,$f4,$f16
1c008930:	03000004 	lu52i.d	$r4,$r0,0
1c008934:	180c0607 	pcaddi	$r7,24624(0x6030)
1c008938:	30383818 	0x30383818
1c00893c:	00001010 	clo.w	$r16,$r0
1c008940:	00899ce6 	bstrins.d	$r6,$r7,0x9,0x27
1c008944:	80808000 	0x80808000
1c008948:	80808080 	0x80808080
1c00894c:	80808080 	0x80808080
1c008950:	88b8fce0 	0x88b8fce0
1c008954:	80808080 	0x80808080
1c008958:	80808080 	0x80808080
1c00895c:	c0e0c080 	0xc0e0c080
1c008960:	00000080 	0x00000080
1c008964:	00000000 	0x00000000
1c008968:	c0800000 	0xc0800000
1c00896c:	171cf8e0 	lu32i.d	$r0,-464953(0x8e7c7)
1c008970:	10101013 	addu16i.d	$r19,$r0,1028(0x404)
1c008974:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008978:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
	...
1c008984:	04081000 	csrrd	$r0,0x204
1c008988:	00010306 	0x00010306
1c00898c:	4242ffff 	beqz	$r31,-113924(0x7e42fc) # 1bfecc88 <_start-0x13378>
1c008990:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acbd0 <_sidata+0xa3d54>
1c008994:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acbd4 <_sidata+0xa3d58>
1c008998:	00ff4242 	bstrpick.d	$r2,$r18,0x3f,0x10
	...
1c0089ac:	00003f7f 	revb.d	$r31,$r27
1c0089b0:	00000000 	0x00000000
1c0089b4:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c0089b8:	003f7030 	0x003f7030
1c0089bc:	00000000 	0x00000000
1c0089c0:	e9000000 	0xe9000000
1c0089c4:	00009099 	0x00009099
1c0089c8:	10f00800 	addu16i.d	$r0,$r0,15362(0x3c02)
1c0089cc:	f0101010 	0xf0101010
1c0089d0:	00001078 	clo.w	$r24,$r3
1c0089d4:	1010f0f8 	addu16i.d	$r24,$r7,1084(0x43c)
1c0089d8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0089dc:	f8101010 	0xf8101010
1c0089e0:	00000010 	0x00000010
1c0089e4:	00000000 	0x00000000
1c0089e8:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c0089ec:	c33e0000 	0xc33e0000
1c0089f0:	00000000 	0x00000000
1c0089f4:	8484ffff 	0x8484ffff
1c0089f8:	84848484 	0x84848484
1c0089fc:	ff848484 	0xff848484
	...
1c008a08:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008a0c:	c0c04000 	0xc0c04000
1c008a10:	00007eff 	0x00007eff
1c008a14:	0000ffff 	0x0000ffff
1c008a18:	c0701e01 	0xc0701e01
1c008a1c:	0d1030a0 	vbitsel.v	$vr0,$vr5,$vr12,$vr0
1c008a20:	0000040e 	0x0000040e
1c008a24:	00000000 	0x00000000
1c008a28:	007f0000 	bstrins.w	$r0,$r0,0x1f,0x0
1c008a2c:	00010000 	asrtle.d	$r0,$r0
1c008a30:	00000000 	0x00000000
1c008a34:	08183f1f 	fmadd.s	$f31,$f24,$f15,$f16
1c008a38:	01020204 	0x01020204
1c008a3c:	1c0e0703 	pcaddu12i	$r3,28728(0x7038)
1c008a40:	00183818 	sra.w	$r24,$r0,$r14
1c008a44:	85e50000 	0x85e50000
1c008a48:	000000ac 	0x000000ac
1c008a4c:	00000000 	0x00000000
1c008a50:	80000000 	0x80000000
1c008a54:	001078e0 	add.w	$r0,$r7,$r30
1c008a58:	1c000000 	pcaddu12i	$r0,0
1c008a5c:	000080e0 	0x000080e0
	...
1c008a6c:	c0800000 	0xc0800000
1c008a70:	070e3860 	0x070e3860
1c008a74:	00000001 	0x00000001
1c008a78:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
1c008a7c:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
1c008a80:	c0c0e070 	0xc0c0e070
1c008a84:	00000080 	0x00000080
1c008a88:	04000000 	csrrd	$r0,0x0
1c008a8c:	00010302 	0x00010302
1c008a90:	c0000000 	0xc0000000
1c008a94:	071c3860 	0x071c3860
1c008a98:	00000103 	0x00000103
1c008a9c:	0080c020 	bstrins.d	$r0,$r1,0x0,0x30
1c008aa0:	03010000 	lu52i.d	$r0,$r0,64(0x40)
1c008aa4:	00010103 	0x00010103
1c008aa8:	00000000 	0x00000000
1c008aac:	38080000 	ldx.w	$r0,$r0,$r0
1c008ab0:	191b1e3c 	pcaddi	$r28,-468751(0x8d8f1)
1c008ab4:	08081818 	0x08081818
1c008ab8:	08080808 	0x08080808
1c008abc:	0f090808 	0x0f090808
1c008ac0:	00307c1e 	0x00307c1e
1c008ac4:	00000000 	0x00000000
1c008ac8:	b88fe500 	0xb88fe500
1c008acc:	00000000 	0x00000000
1c008ad0:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008ad4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008ad8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008adc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008ae0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008ae4:	00f0f810 	bstrpick.d	$r16,$r0,0x30,0x3e
1c008ae8:	00000000 	0x00000000
1c008aec:	04000000 	csrrd	$r0,0x0
1c008af0:	84c40404 	0x84c40404
1c008af4:	84848484 	0x84848484
1c008af8:	84848484 	0x84848484
1c008afc:	0684c484 	0x0684c484
1c008b00:	00000406 	0x00000406
1c008b04:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c008b10:	ffff0000 	0xffff0000
1c008b14:	40404040 	beqz	$r2,16448(0x4040) # 1c00cb54 <_sidata+0x3cd8>
1c008b18:	40404040 	beqz	$r2,16448(0x4040) # 1c00cb58 <_sidata+0x3cdc>
1c008b1c:	0000ff40 	0x0000ff40
1c008b20:	00000000 	0x00000000
1c008b24:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c008b30:	01030000 	fsub.d	$f0,$f0,$f0
	...
1c008b3c:	00010100 	asrtle.d	$r8,$r0
1c008b40:	30101010 	vldrepl.d	$vr16,$r0,32(0x20)
1c008b44:	000f3f70 	bytepick.d	$r16,$r27,$r15,0x6
1c008b48:	00000000 	0x00000000
1c008b4c:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c008b50:	00000000 	0x00000000
1c008b54:	f0080000 	0xf0080000
1c008b58:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b5c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b60:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b64:	f0f81010 	0xf0f81010
	...
1c008b74:	ff000000 	0xff000000
1c008b78:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acdb8 <_sidata+0xa3f3c>
1c008b7c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acdbc <_sidata+0xa3f40>
1c008b80:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acdc0 <_sidata+0xa3f44>
1c008b84:	ffff4242 	0xffff4242
	...
1c008b90:	08000000 	0x08000000
1c008b94:	c0e17030 	0xc0e17030
1c008b98:	fe000000 	0xfe000000
1c008b9c:	000000fe 	0x000000fe
1c008ba0:	00fefe00 	bstrpick.d	$r0,$r16,0x3e,0x3f
1c008ba4:	60c08000 	blt	$r0,$r0,49280(0xc080) # 1c014c24 <_sidata+0xbda8>
1c008ba8:	00081c38 	bytepick.w	$r24,$r1,$r7,0x0
1c008bac:	00000000 	0x00000000
1c008bb0:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008bb4:	13111010 	addu16i.d	$r16,$r0,-15292(0xc444)
1c008bb8:	1f101010 	pcaddu18i	$r16,-491392(0x88080)
1c008bbc:	1010101f 	addu16i.d	$r31,$r0,1028(0x404)
1c008bc0:	141f1f10 	lu12i.w	$r16,63736(0xf8f8)
1c008bc4:	10101112 	addu16i.d	$r18,$r8,1028(0x404)
1c008bc8:	10181810 	addu16i.d	$r16,$r0,1542(0x606)
1c008bcc:	e7000000 	0xe7000000
1c008bd0:	0000baa4 	0x0000baa4
1c008bd4:	00000000 	0x00000000
1c008bd8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008bdc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008be0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008be4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008be8:	30382020 	0x30382020
1c008bec:	00000020 	0x00000020
1c008bf0:	00000000 	0x00000000
1c008bf4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008bf8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008bfc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c00:	20e0e020 	ll.w	$r0,$r1,-7968(0xe0e0)
1c008c04:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c08:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c0c:	20303020 	ll.w	$r0,$r1,12336(0x3030)
1c008c10:	00000000 	0x00000000
1c008c14:	80000000 	0x80000000
1c008c18:	1e3c70c0 	pcaddu18i	$r0,123782(0x1e386)
1c008c1c:	00000406 	0x00000406
1c008c20:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c008c24:	04020000 	csrrd	$r0,0x80
1c008c28:	e0701808 	0xe0701808
1c008c2c:	000080c0 	0x000080c0
1c008c30:	00000000 	0x00000000
1c008c34:	01030408 	fsub.d	$f8,$f0,$f1
1c008c38:	08000000 	0x08000000
1c008c3c:	30101008 	vldrepl.d	$vr8,$r0,32(0x20)
1c008c40:	001f3f70 	mulw.d.w	$r16,$r27,$r15
	...
1c008c4c:	00030701 	0x00030701
1c008c50:	aee50000 	0xaee50000
1c008c54:	0000009e 	0x0000009e
1c008c58:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
1c008c5c:	00000000 	0x00000000
1c008c60:	04000000 	csrrd	$r0,0x0
1c008c64:	0070f818 	bstrpick.w	$r24,$r0,0x10,0x1e
	...
1c008c70:	00000080 	0x00000080
1c008c74:	00000000 	0x00000000
1c008c78:	810f1c18 	0x810f1c18
1c008c7c:	09010101 	0x09010101
1c008c80:	01713919 	0x01713919
1c008c84:	fdff0101 	0xfdff0101
1c008c88:	01010105 	fadd.d	$f5,$f8,$f0
1c008c8c:	07090101 	0x07090101
1c008c90:	00020307 	0x00020307
1c008c94:	10000000 	addu16i.d	$r0,$r0,0
1c008c98:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008c9c:	1e171311 	pcaddu18i	$r17,47256(0xb898)
1c008ca0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008ca4:	93bffcd0 	0x93bffcd0
1c008ca8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008cac:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008cb0:	00101818 	add.w	$r24,$r0,$r6
1c008cb4:	40000000 	beqz	$r0,0 # 1c008cb4 <tfont32+0x998>
1c008cb8:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c008cbc:	10102020 	addu16i.d	$r0,$r1,1032(0x408)
1c008cc0:	070e0c18 	0x070e0c18
1c008cc4:	01000003 	0x01000003
1c008cc8:	06020301 	cacop	0x1,$r24,128(0x80)
1c008ccc:	383c1c0e 	fstx.d	$f14,$r0,$r7
1c008cd0:	00000030 	0x00000030
1c008cd4:	8caae900 	0x8caae900
1c008cd8:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008cdc:	10109090 	addu16i.d	$r16,$r4,1060(0x424)
1c008ce0:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
1c008ce4:	00000000 	0x00000000
1c008ce8:	f0800000 	0xf0800000
1c008cec:	80e8183c 	0x80e8183c
	...
1c008cf8:	80000000 	0x80000000
1c008cfc:	00001fff 	ctz.w	$r31,$r31
1c008d00:	003fff00 	0x003fff00
1c008d04:	50204080 	b	33562688(0x2002040) # 1e00ad44 <_sidata+0x2001ec8>
1c008d08:	4043474c 	beqz	$r26,3162948(0x304344) # 1c30d04c <_sidata+0x3041d0>
1c008d0c:	43404040 	beqz	$r2,213056(0x34040) # 1c03cd4c <_sidata+0x33ed0>
1c008d10:	70784c66 	0x70784c66
1c008d14:	00202070 	div.w	$r16,$r3,$r8
1c008d18:	c1c14000 	0xc1c14000
1c008d1c:	21214143 	sc.w	$r3,$r10,8512(0x2140)
1c008d20:	ff810121 	0xff810121
1c008d24:	1c00000f 	pcaddu12i	$r15,0
1c008d28:	0c02c0f0 	0x0c02c0f0
1c008d2c:	0000e0f8 	0x0000e0f8
1c008d30:	061f7cc0 	cacop	0x0,$r6,2015(0x7df)
	...
1c008d3c:	18080800 	pcaddi	$r0,16448(0x4040)
1c008d40:	070f1838 	0x070f1838
1c008d44:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008d48:	10101113 	addu16i.d	$r19,$r8,1028(0x404)
1c008d4c:	1e101011 	pcaddu18i	$r17,32896(0x8080)
1c008d50:	18101013 	pcaddi	$r19,32896(0x8080)
1c008d54:	00001018 	clo.w	$r24,$r0
1c008d58:	e8ba99e6 	0xe8ba99e6
1c008d5c:	9ce8bd83 	0x9ce8bd83
1c008d60:	b1aee782 	0xb1aee782
1c008d64:	e6919be7 	0xe6919be7
1c008d68:	b3e78bb5 	0xb3e78bb5
1c008d6c:	9fbbe7bb 	0x9fbbe7bb
1c008d70:	00000000 	0x00000000
1c008d74:	e6aa9ce6 	0xe6aa9ce6
1c008d78:	b5e680a3 	0xb5e680a3
1c008d7c:	b088e58b 	0xb088e58b
1c008d80:	e6a0bce4 	0xe6a0bce4
1c008d84:	99e59f84 	0x99e59f84
1c008d88:	000000a8 	0x000000a8
1c008d8c:	e98d87e9 	0xe98d87e9
1c008d90:	bcef8f87 	0xbcef8f87
1c008d94:	2020209a 	ll.w	$r26,$r4,8224(0x2020)
1c008d98:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008d9c:	00000067 	0x00000067
1c008da0:	e5a9b8e6 	0xe5a9b8e6
1c008da4:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c008da8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008dac:	008384e2 	bstrins.d	$r2,$r7,0x3,0x21
1c008db0:	e5bfb9e6 	0xe5bfb9e6
1c008db4:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c008db8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008dbc:	00485225 	0x00485225
1c008dc0:	00a3ade6 	bstrins.d	$r6,$r15,0x23,0x2b
1c008dc4:	00b8b8e5 	bstrins.d	$r5,$r7,0x38,0x2e
1c008dc8:	0081b9e7 	bstrins.d	$r7,$r15,0x1,0x2e
1c008dcc:	0096aee6 	bstrins.d	$r6,$r23,0x16,0x2b
1c008dd0:	00ac86e5 	bstrins.d	$r5,$r23,0x2c,0x21
1c008dd4:	00a3ade5 	bstrins.d	$r5,$r15,0x23,0x2b
1c008dd8:	009c81e5 	bstrins.d	$r5,$r15,0x1c,0x20
1c008ddc:	00a58ae6 	bstrins.d	$r6,$r23,0x25,0x22
1c008de0:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c008de4:	e8b2b7e5 	0xe8b2b7e5
1c008de8:	8ee69ebf 	0x8ee69ebf
1c008dec:	b088e5a5 	0xb088e5a5
1c008df0:	49464957 	bcnez	$fcc2,-2275768(0x5d4648) # 1bddd438 <_start-0x222bc8>
1c008df4:	00000000 	0x00000000
1c008df8:	e98d87e9 	0xe98d87e9
1c008dfc:	203a8f87 	ll.w	$r7,$r28,14988(0x3a8c)
1c008e00:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008e04:	00006720 	rdtimeh.w	$r0,$r25
1c008e08:	e5a9b8e6 	0xe5a9b8e6
1c008e0c:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c008e10:	e2202020 	0xe2202020
1c008e14:	00008384 	0x00008384
1c008e18:	e5bfb9e6 	0xe5bfb9e6
1c008e1c:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c008e20:	25202020 	stptr.w	$r0,$r1,8224(0x2020)
1c008e24:	00004852 	bitrev.4b	$r18,$r2
1c008e28:	00007325 	0x00007325
1c008e2c:	30303030 	0x30303030
1c008e30:	00000000 	0x00000000
1c008e34:	63656863 	blt	$r3,$r3,-39576(0x36568) # 1bfff39c <_start-0xc64>
1c008e38:	4155206b 	beqz	$r3,2970912(0x2d5520) # 1c2de358 <_sidata+0x2d54dc>
1c008e3c:	5f305452 	bne	$r2,$r18,-53164(0x33054) # 1bffbe90 <_start-0x4170>
1c008e40:	425f5852 	beqz	$r2,-3514536(0x4a5f58) # 1bcaed98 <_start-0x351268>
1c008e44:	253a4655 	stptr.w	$r21,$r18,14916(0x3a44)
1c008e48:	000a0d73 	0x000a0d73
1c008e4c:	3a646d63 	0x3a646d63
1c008e50:	0a0d7325 	0x0a0d7325
1c008e54:	00000000 	0x00000000
1c008e58:	0a0d7325 	0x0a0d7325
1c008e5c:	00000000 	0x00000000
1c008e60:	3a6b6361 	0x3a6b6361
1c008e64:	0a0d7325 	0x0a0d7325
1c008e68:	00000000 	0x00000000
1c008e6c:	3a736572 	0x3a736572
1c008e70:	0a0d6425 	0x0a0d6425
1c008e74:	00000000 	0x00000000
1c008e78:	00007325 	0x00007325

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c006b69 	pcaddu12i	$r9,859(0x35b)
80001008:	800001b0 	0x800001b0
8000100c:	80001024 	0x80001024
80001010:	80000018 	0x80000018
80001014:	80000080 	0x80000080
80001018:	80000048 	0x80000048
8000101c:	1c006b60 	pcaddu12i	$r0,859(0x35b)
80001020:	800001b4 	0x800001b4

80001024 <g_SystemFreq>:
80001024:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

80001028 <data>:
80001028:	0000aa55 	0x0000aa55
8000102c:	00000000 	0x00000000
80001030:	000000bb 	0x000000bb

80001034 <Weight_Maopi>:
80001034:	0000000a 	0x0000000a

80001038 <GapValue>:
80001038:	0000004c 	0x0000004c

Disassembly of section .bss:

80000000 <_sbss>:
	...

80000002 <temperature>:
	...

80000004 <humidity>:
	...

80000006 <weight00>:
	...

80000008 <Weight_Value>:
_sbss():
80000008:	00000000 	0x00000000

8000000c <HX711_Buffer>:
8000000c:	00000000 	0x00000000

80000010 <Weight_object>:
80000010:	00000000 	0x00000000

80000014 <usart_weight>:
80000014:	00000000 	0x00000000

80000018 <wifi_connected>:
80000018:	00000000 	0x00000000

8000001c <try>:
8000001c:	00000000 	0x00000000

80000020 <temp>:
	...

80000040 <num>:
80000040:	00000000 	0x00000000

80000044 <pi_weight>:
80000044:	00000000 	0x00000000

80000048 <str>:
	...

8000007c <weight>:
8000007c:	00000000 	0x00000000

80000080 <Circular_queue>:
	...

800001b0 <Read_length>:
800001b0:	00000000 	0x00000000

800001b4 <Read_Buffer>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
