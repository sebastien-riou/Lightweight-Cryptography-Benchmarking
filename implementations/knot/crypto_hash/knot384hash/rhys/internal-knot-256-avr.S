#if defined(__AVR__)
#include <avr/io.h>
/* Automatically generated - do not edit */

	.section	.progmem.data,"a",@progbits
	.p2align	8
	.type	table_6, @object
	.size	table_6, 52
table_6:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	33
	.byte	3
	.byte	6
	.byte	12
	.byte	24
	.byte	49
	.byte	34
	.byte	5
	.byte	10
	.byte	20
	.byte	41
	.byte	19
	.byte	39
	.byte	15
	.byte	30
	.byte	61
	.byte	58
	.byte	52
	.byte	40
	.byte	17
	.byte	35
	.byte	7
	.byte	14
	.byte	28
	.byte	57
	.byte	50
	.byte	36
	.byte	9
	.byte	18
	.byte	37
	.byte	11
	.byte	22
	.byte	45
	.byte	27
	.byte	55
	.byte	46
	.byte	29
	.byte	59
	.byte	54
	.byte	44
	.byte	25
	.byte	51
	.byte	38
	.byte	13
	.byte	26
	.byte	53
	.byte	42

	.text
.global knot256_permute_6
	.type knot256_permute_6, @function
knot256_permute_6:
	push r28
	push r29
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	movw r30,r24
	in r28,0x3d
	in r29,0x3e
	sbiw r28,40
	in r0,0x3f
	cli
	out 0x3e,r29
	out 0x3f,r0
	out 0x3d,r28
.L__stack_usage = 57
	ld r18,Z
	ldd r19,Z+1
	ldd r20,Z+2
	ldd r21,Z+3
	ldd r26,Z+4
	ldd r27,Z+5
	ldd r2,Z+6
	ldd r3,Z+7
	ldd r8,Z+8
	ldd r9,Z+9
	ldd r10,Z+10
	ldd r11,Z+11
	ldd r12,Z+12
	ldd r13,Z+13
	ldd r14,Z+14
	ldd r15,Z+15
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
	ldd r8,Z+16
	ldd r9,Z+17
	ldd r10,Z+18
	ldd r11,Z+19
	ldd r12,Z+20
	ldd r13,Z+21
	ldd r14,Z+22
	ldd r15,Z+23
	std Y+9,r8
	std Y+10,r9
	std Y+11,r10
	std Y+12,r11
	std Y+13,r12
	std Y+14,r13
	std Y+15,r14
	std Y+16,r15
	ldd r8,Z+24
	ldd r9,Z+25
	ldd r10,Z+26
	ldd r11,Z+27
	ldd r12,Z+28
	ldd r13,Z+29
	ldd r14,Z+30
	ldd r15,Z+31
	std Y+17,r8
	std Y+18,r9
	std Y+19,r10
	std Y+20,r11
	std Y+21,r12
	std Y+22,r13
	std Y+23,r14
	std Y+24,r15
	push r31
	push r30
	ldi r30,lo8(table_6)
	ldi r31,hi8(table_6)
#if defined(RAMPZ)
	ldi r17,hh8(table_6)
	in r0,_SFR_IO_ADDR(RAMPZ)
	push r0
	out _SFR_IO_ADDR(RAMPZ),r17
#endif
59:
#if defined(RAMPZ)
	elpm r23,Z
#elif defined(__AVR_HAVE_LPMX__)
	lpm r23,Z
#elif defined(__AVR_TINY__)
	ld r23,Z
#else
	lpm
	mov r23,r0
#endif
	eor r18,r23
	inc r30
	ldd r23,Y+1
	ldd r4,Y+9
	ldd r5,Y+17
	mov r24,r18
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+33,r7
	mov r16,r5
	eor r16,r24
	mov r8,r23
	or r8,r4
	eor r8,r16
	mov r24,r23
	eor r24,r5
	mov r18,r25
	and r18,r16
	eor r18,r24
	mov r6,r8
	and r6,r24
	eor r6,r25
	std Y+25,r6
	ldd r23,Y+2
	ldd r4,Y+10
	ldd r5,Y+18
	mov r24,r19
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+34,r7
	mov r16,r5
	eor r16,r24
	mov r9,r23
	or r9,r4
	eor r9,r16
	mov r24,r23
	eor r24,r5
	mov r19,r25
	and r19,r16
	eor r19,r24
	mov r6,r9
	and r6,r24
	eor r6,r25
	std Y+26,r6
	ldd r23,Y+3
	ldd r4,Y+11
	ldd r5,Y+19
	mov r24,r20
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+35,r7
	mov r16,r5
	eor r16,r24
	mov r10,r23
	or r10,r4
	eor r10,r16
	mov r24,r23
	eor r24,r5
	mov r20,r25
	and r20,r16
	eor r20,r24
	mov r6,r10
	and r6,r24
	eor r6,r25
	std Y+27,r6
	ldd r23,Y+4
	ldd r4,Y+12
	ldd r5,Y+20
	mov r24,r21
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+36,r7
	mov r16,r5
	eor r16,r24
	mov r11,r23
	or r11,r4
	eor r11,r16
	mov r24,r23
	eor r24,r5
	mov r21,r25
	and r21,r16
	eor r21,r24
	mov r6,r11
	and r6,r24
	eor r6,r25
	std Y+28,r6
	ldd r23,Y+5
	ldd r4,Y+13
	ldd r5,Y+21
	mov r24,r26
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+37,r7
	mov r16,r5
	eor r16,r24
	mov r12,r23
	or r12,r4
	eor r12,r16
	mov r24,r23
	eor r24,r5
	mov r26,r25
	and r26,r16
	eor r26,r24
	mov r6,r12
	and r6,r24
	eor r6,r25
	std Y+29,r6
	ldd r23,Y+6
	ldd r4,Y+14
	ldd r5,Y+22
	mov r24,r27
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+38,r7
	mov r16,r5
	eor r16,r24
	mov r13,r23
	or r13,r4
	eor r13,r16
	mov r24,r23
	eor r24,r5
	mov r27,r25
	and r27,r16
	eor r27,r24
	mov r6,r13
	and r6,r24
	eor r6,r25
	std Y+30,r6
	ldd r23,Y+7
	ldd r4,Y+15
	ldd r5,Y+23
	mov r24,r2
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+39,r7
	mov r16,r5
	eor r16,r24
	mov r14,r23
	or r14,r4
	eor r14,r16
	mov r24,r23
	eor r24,r5
	mov r2,r25
	and r2,r16
	eor r2,r24
	mov r6,r14
	and r6,r24
	eor r6,r25
	std Y+31,r6
	ldd r23,Y+8
	ldd r4,Y+16
	ldd r5,Y+24
	mov r24,r3
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+40,r7
	mov r16,r5
	eor r16,r24
	mov r15,r23
	or r15,r4
	eor r15,r16
	mov r24,r23
	eor r24,r5
	mov r3,r25
	and r3,r16
	eor r3,r24
	mov r6,r15
	and r6,r24
	eor r6,r25
	std Y+32,r6
	std Y+9,r15
	std Y+10,r8
	std Y+11,r9
	std Y+12,r10
	std Y+13,r11
	std Y+14,r12
	std Y+15,r13
	std Y+16,r14
	ldd r8,Y+25
	ldd r9,Y+26
	ldd r10,Y+27
	ldd r11,Y+28
	ldd r12,Y+29
	ldd r13,Y+30
	ldd r14,Y+31
	ldd r15,Y+32
	lsl r8
	rol r9
	rol r10
	rol r11
	rol r12
	rol r13
	rol r14
	rol r15
	adc r8,r1
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
	ldd r8,Y+33
	ldd r9,Y+34
	ldd r10,Y+35
	ldd r11,Y+36
	ldd r12,Y+37
	ldd r13,Y+38
	ldd r14,Y+39
	ldd r15,Y+40
	lsl r8
	rol r9
	rol r10
	rol r11
	rol r12
	rol r13
	rol r14
	rol r15
	adc r8,r1
	std Y+17,r13
	std Y+18,r14
	std Y+19,r15
	std Y+20,r8
	std Y+21,r9
	std Y+22,r10
	std Y+23,r11
	std Y+24,r12
	dec r22
	breq 5322f
	rjmp 59b
5322:
#if defined(RAMPZ)
	pop r0
	out _SFR_IO_ADDR(RAMPZ),r0
#endif
	pop r30
	pop r31
	st Z,r18
	std Z+1,r19
	std Z+2,r20
	std Z+3,r21
	std Z+4,r26
	std Z+5,r27
	std Z+6,r2
	std Z+7,r3
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	std Z+8,r8
	std Z+9,r9
	std Z+10,r10
	std Z+11,r11
	std Z+12,r12
	std Z+13,r13
	std Z+14,r14
	std Z+15,r15
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
	std Z+16,r8
	std Z+17,r9
	std Z+18,r10
	std Z+19,r11
	std Z+20,r12
	std Z+21,r13
	std Z+22,r14
	std Z+23,r15
	ldd r8,Y+17
	ldd r9,Y+18
	ldd r10,Y+19
	ldd r11,Y+20
	ldd r12,Y+21
	ldd r13,Y+22
	ldd r14,Y+23
	ldd r15,Y+24
	std Z+24,r8
	std Z+25,r9
	std Z+26,r10
	std Z+27,r11
	std Z+28,r12
	std Z+29,r13
	std Z+30,r14
	std Z+31,r15
	adiw r28,40
	in r0,0x3f
	cli
	out 0x3e,r29
	out 0x3f,r0
	out 0x3d,r28
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r29
	pop r28
	ret
	.size knot256_permute_6, .-knot256_permute_6

	.section	.progmem.data,"a",@progbits
	.p2align	8
	.type	table_7, @object
	.size	table_7, 104
table_7:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	65
	.byte	3
	.byte	6
	.byte	12
	.byte	24
	.byte	48
	.byte	97
	.byte	66
	.byte	5
	.byte	10
	.byte	20
	.byte	40
	.byte	81
	.byte	35
	.byte	71
	.byte	15
	.byte	30
	.byte	60
	.byte	121
	.byte	114
	.byte	100
	.byte	72
	.byte	17
	.byte	34
	.byte	69
	.byte	11
	.byte	22
	.byte	44
	.byte	89
	.byte	51
	.byte	103
	.byte	78
	.byte	29
	.byte	58
	.byte	117
	.byte	106
	.byte	84
	.byte	41
	.byte	83
	.byte	39
	.byte	79
	.byte	31
	.byte	62
	.byte	125
	.byte	122
	.byte	116
	.byte	104
	.byte	80
	.byte	33
	.byte	67
	.byte	7
	.byte	14
	.byte	28
	.byte	56
	.byte	113
	.byte	98
	.byte	68
	.byte	9
	.byte	18
	.byte	36
	.byte	73
	.byte	19
	.byte	38
	.byte	77
	.byte	27
	.byte	54
	.byte	109
	.byte	90
	.byte	53
	.byte	107
	.byte	86
	.byte	45
	.byte	91
	.byte	55
	.byte	111
	.byte	94
	.byte	61
	.byte	123
	.byte	118
	.byte	108
	.byte	88
	.byte	49
	.byte	99
	.byte	70
	.byte	13
	.byte	26
	.byte	52
	.byte	105
	.byte	82
	.byte	37
	.byte	75
	.byte	23
	.byte	46
	.byte	93
	.byte	59
	.byte	119
	.byte	110
	.byte	92

	.text
.global knot256_permute_7
	.type knot256_permute_7, @function
knot256_permute_7:
	push r28
	push r29
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	movw r30,r24
	in r28,0x3d
	in r29,0x3e
	sbiw r28,40
	in r0,0x3f
	cli
	out 0x3e,r29
	out 0x3f,r0
	out 0x3d,r28
.L__stack_usage = 57
	ld r18,Z
	ldd r19,Z+1
	ldd r20,Z+2
	ldd r21,Z+3
	ldd r26,Z+4
	ldd r27,Z+5
	ldd r2,Z+6
	ldd r3,Z+7
	ldd r8,Z+8
	ldd r9,Z+9
	ldd r10,Z+10
	ldd r11,Z+11
	ldd r12,Z+12
	ldd r13,Z+13
	ldd r14,Z+14
	ldd r15,Z+15
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
	ldd r8,Z+16
	ldd r9,Z+17
	ldd r10,Z+18
	ldd r11,Z+19
	ldd r12,Z+20
	ldd r13,Z+21
	ldd r14,Z+22
	ldd r15,Z+23
	std Y+9,r8
	std Y+10,r9
	std Y+11,r10
	std Y+12,r11
	std Y+13,r12
	std Y+14,r13
	std Y+15,r14
	std Y+16,r15
	ldd r8,Z+24
	ldd r9,Z+25
	ldd r10,Z+26
	ldd r11,Z+27
	ldd r12,Z+28
	ldd r13,Z+29
	ldd r14,Z+30
	ldd r15,Z+31
	std Y+17,r8
	std Y+18,r9
	std Y+19,r10
	std Y+20,r11
	std Y+21,r12
	std Y+22,r13
	std Y+23,r14
	std Y+24,r15
	push r31
	push r30
	ldi r30,lo8(table_7)
	ldi r31,hi8(table_7)
#if defined(RAMPZ)
	ldi r17,hh8(table_7)
	in r0,_SFR_IO_ADDR(RAMPZ)
	push r0
	out _SFR_IO_ADDR(RAMPZ),r17
#endif
59:
#if defined(RAMPZ)
	elpm r23,Z
#elif defined(__AVR_HAVE_LPMX__)
	lpm r23,Z
#elif defined(__AVR_TINY__)
	ld r23,Z
#else
	lpm
	mov r23,r0
#endif
	eor r18,r23
	inc r30
	ldd r23,Y+1
	ldd r4,Y+9
	ldd r5,Y+17
	mov r24,r18
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+33,r7
	mov r16,r5
	eor r16,r24
	mov r8,r23
	or r8,r4
	eor r8,r16
	mov r24,r23
	eor r24,r5
	mov r18,r25
	and r18,r16
	eor r18,r24
	mov r6,r8
	and r6,r24
	eor r6,r25
	std Y+25,r6
	ldd r23,Y+2
	ldd r4,Y+10
	ldd r5,Y+18
	mov r24,r19
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+34,r7
	mov r16,r5
	eor r16,r24
	mov r9,r23
	or r9,r4
	eor r9,r16
	mov r24,r23
	eor r24,r5
	mov r19,r25
	and r19,r16
	eor r19,r24
	mov r6,r9
	and r6,r24
	eor r6,r25
	std Y+26,r6
	ldd r23,Y+3
	ldd r4,Y+11
	ldd r5,Y+19
	mov r24,r20
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+35,r7
	mov r16,r5
	eor r16,r24
	mov r10,r23
	or r10,r4
	eor r10,r16
	mov r24,r23
	eor r24,r5
	mov r20,r25
	and r20,r16
	eor r20,r24
	mov r6,r10
	and r6,r24
	eor r6,r25
	std Y+27,r6
	ldd r23,Y+4
	ldd r4,Y+12
	ldd r5,Y+20
	mov r24,r21
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+36,r7
	mov r16,r5
	eor r16,r24
	mov r11,r23
	or r11,r4
	eor r11,r16
	mov r24,r23
	eor r24,r5
	mov r21,r25
	and r21,r16
	eor r21,r24
	mov r6,r11
	and r6,r24
	eor r6,r25
	std Y+28,r6
	ldd r23,Y+5
	ldd r4,Y+13
	ldd r5,Y+21
	mov r24,r26
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+37,r7
	mov r16,r5
	eor r16,r24
	mov r12,r23
	or r12,r4
	eor r12,r16
	mov r24,r23
	eor r24,r5
	mov r26,r25
	and r26,r16
	eor r26,r24
	mov r6,r12
	and r6,r24
	eor r6,r25
	std Y+29,r6
	ldd r23,Y+6
	ldd r4,Y+14
	ldd r5,Y+22
	mov r24,r27
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+38,r7
	mov r16,r5
	eor r16,r24
	mov r13,r23
	or r13,r4
	eor r13,r16
	mov r24,r23
	eor r24,r5
	mov r27,r25
	and r27,r16
	eor r27,r24
	mov r6,r13
	and r6,r24
	eor r6,r25
	std Y+30,r6
	ldd r23,Y+7
	ldd r4,Y+15
	ldd r5,Y+23
	mov r24,r2
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+39,r7
	mov r16,r5
	eor r16,r24
	mov r14,r23
	or r14,r4
	eor r14,r16
	mov r24,r23
	eor r24,r5
	mov r2,r25
	and r2,r16
	eor r2,r24
	mov r6,r14
	and r6,r24
	eor r6,r25
	std Y+31,r6
	ldd r23,Y+8
	ldd r4,Y+16
	ldd r5,Y+24
	mov r24,r3
	com r24
	mov r25,r23
	and r25,r24
	eor r25,r4
	mov r7,r5
	eor r7,r25
	std Y+40,r7
	mov r16,r5
	eor r16,r24
	mov r15,r23
	or r15,r4
	eor r15,r16
	mov r24,r23
	eor r24,r5
	mov r3,r25
	and r3,r16
	eor r3,r24
	mov r6,r15
	and r6,r24
	eor r6,r25
	std Y+32,r6
	std Y+9,r15
	std Y+10,r8
	std Y+11,r9
	std Y+12,r10
	std Y+13,r11
	std Y+14,r12
	std Y+15,r13
	std Y+16,r14
	ldd r8,Y+25
	ldd r9,Y+26
	ldd r10,Y+27
	ldd r11,Y+28
	ldd r12,Y+29
	ldd r13,Y+30
	ldd r14,Y+31
	ldd r15,Y+32
	lsl r8
	rol r9
	rol r10
	rol r11
	rol r12
	rol r13
	rol r14
	rol r15
	adc r8,r1
	std Y+1,r8
	std Y+2,r9
	std Y+3,r10
	std Y+4,r11
	std Y+5,r12
	std Y+6,r13
	std Y+7,r14
	std Y+8,r15
	ldd r8,Y+33
	ldd r9,Y+34
	ldd r10,Y+35
	ldd r11,Y+36
	ldd r12,Y+37
	ldd r13,Y+38
	ldd r14,Y+39
	ldd r15,Y+40
	lsl r8
	rol r9
	rol r10
	rol r11
	rol r12
	rol r13
	rol r14
	rol r15
	adc r8,r1
	std Y+17,r13
	std Y+18,r14
	std Y+19,r15
	std Y+20,r8
	std Y+21,r9
	std Y+22,r10
	std Y+23,r11
	std Y+24,r12
	dec r22
	breq 5322f
	rjmp 59b
5322:
#if defined(RAMPZ)
	pop r0
	out _SFR_IO_ADDR(RAMPZ),r0
#endif
	pop r30
	pop r31
	st Z,r18
	std Z+1,r19
	std Z+2,r20
	std Z+3,r21
	std Z+4,r26
	std Z+5,r27
	std Z+6,r2
	std Z+7,r3
	ldd r8,Y+1
	ldd r9,Y+2
	ldd r10,Y+3
	ldd r11,Y+4
	ldd r12,Y+5
	ldd r13,Y+6
	ldd r14,Y+7
	ldd r15,Y+8
	std Z+8,r8
	std Z+9,r9
	std Z+10,r10
	std Z+11,r11
	std Z+12,r12
	std Z+13,r13
	std Z+14,r14
	std Z+15,r15
	ldd r8,Y+9
	ldd r9,Y+10
	ldd r10,Y+11
	ldd r11,Y+12
	ldd r12,Y+13
	ldd r13,Y+14
	ldd r14,Y+15
	ldd r15,Y+16
	std Z+16,r8
	std Z+17,r9
	std Z+18,r10
	std Z+19,r11
	std Z+20,r12
	std Z+21,r13
	std Z+22,r14
	std Z+23,r15
	ldd r8,Y+17
	ldd r9,Y+18
	ldd r10,Y+19
	ldd r11,Y+20
	ldd r12,Y+21
	ldd r13,Y+22
	ldd r14,Y+23
	ldd r15,Y+24
	std Z+24,r8
	std Z+25,r9
	std Z+26,r10
	std Z+27,r11
	std Z+28,r12
	std Z+29,r13
	std Z+30,r14
	std Z+31,r15
	adiw r28,40
	in r0,0x3f
	cli
	out 0x3e,r29
	out 0x3f,r0
	out 0x3d,r28
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r29
	pop r28
	ret
	.size knot256_permute_7, .-knot256_permute_7

#endif
