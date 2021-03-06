#include"auxFormat.h"

void P384(unsigned int *s, unsigned char *round, unsigned char lunNum) {
	u32 s_temp[12] = { 0 };
	u32 t1, t2, t3, t5, t6, t8, t9, t11;
	unsigned char  i;
	for (i = 0; i < lunNum; i++) {
		s[0] ^= (round[i] >> 6) & 0x3; \
			s[1] ^= (round[i] >> 3) & 0x7; \
			s[2] ^= round[i] & 0x7; \
			sbox(s[0], s[3], s[6], s[9], s_temp[3], s_temp[6], s_temp[9]); \
			sbox(s[1], s[4], s[7], s[10], s[3], s_temp[7], s_temp[10]); \
			sbox(s[2], s[5], s[8], s[11], s[4], s_temp[8], s_temp[11]); \
			s[5] = LOTR32(s_temp[3], 1); \
			U96_BIT_LOTR32_8(s_temp[6], s_temp[7], s_temp[8], s[6], s[7], s[8]); \
			U96_BIT_LOTR32_55(s_temp[9], s_temp[10], s_temp[11], s[9], s[10], s[11]); \
	}
}


//puck begin//
void unpackU96FormatToThreePacket(u8 * out, u32 * in) {
	u32 temp0[3] = { 0 };
	u32 temp1[3] = { 0 };
	u32 temp2[3] = { 0 };
	u32 t1_32, t2_64, t2_65;
	u32 t[3] = { 0 };
	temp0[0] = in[0] & 0xffe00000;
	temp1[0] = (in[0] & 0x001ffc00) << 11;
	temp2[0] = (in[0] & 0x000003ff) << 22;
	temp0[1] = in[1] & 0xffe00000;
	temp1[1] = (in[1] & 0x001ff800) << 11;
	t2_64 = ((in[1] & 0x00000400) << 21);
	temp2[1] = (in[1] & 0x000003ff) << 22;
	temp0[2] = in[2] & 0xffc00000;
	t1_32 = ((in[2] & 0x00200000) << 10);
	temp1[2] = (in[2] & 0x001ff800) << 11;
	t2_65 = ((in[2] & 0x00000400) << 20);
	temp2[2] = (in[2] & 0x000003ff) << 22;
	unpuckU32ToThree(temp0[0]);
	unpuckU32ToThree(temp0[1]);
	unpuckU32ToThree(temp0[2]);
	t[2] = temp0[0] | temp0[1] >> 1 | temp0[2] >> 2;
	unpuckU32ToThree(temp1[0]);
	unpuckU32ToThree(temp1[1]);
	unpuckU32ToThree(temp1[2]);
	t[1] = t1_32 | ((temp1[0] | temp1[1] >> 1 | temp1[2] >> 2) >> 1);
	unpuckU32ToThree(temp2[0]);
	unpuckU32ToThree(temp2[1]);
	unpuckU32ToThree(temp2[2]);
	t[0] = t2_65 | t2_64 | ((temp2[0] | temp2[1] >> 1 | temp2[2] >> 2) >> 2);
	memcpy(out, t, 12 * sizeof(unsigned char));
}
void packU96FormatToThreePacket(u32 * out, u8 * in) {
	u32 t0 = U32BIG(((u32*)in)[2]);
	u32 t1 = U32BIG(((u32*)in)[1]);
	u32 t2 = U32BIG(((u32*)in)[0]);
	u32 temp1[3] = { 0 };
	u32 temp2[3] = { 0 };
	u32 temp0[3] = { 0 };
	u8 t1_32 = (in[7] & 0x80) >> 7, t2_64 = (in[3] & 0x80) >> 7, t2_65 = (in[3] & 0x40) >> 6;
	t1 = t1 << 1;
	t2 = t2 << 2;
	temp0[0] = t0; temp0[1] = t0 << 1; temp0[2] = t0 << 2;
	puckU32ToThree(temp0[0]);
	puckU32ToThree(temp0[1]);
	puckU32ToThree(temp0[2]);
	temp1[0] = t1; temp1[1] = t1 << 1; temp1[2] = t1 << 2;
	puckU32ToThree(temp1[0]);
	puckU32ToThree(temp1[1]);
	puckU32ToThree(temp1[2]);
	temp2[0] = t2; temp2[1] = t2 << 1; temp2[2] = t2 << 2;
	puckU32ToThree(temp2[0]);
	puckU32ToThree(temp2[1]);
	puckU32ToThree(temp2[2]);
	out[0] = (temp0[0]) | (temp1[0] >> 11) | (temp2[0] >> 22);
	out[1] = (temp0[1]) | (temp1[1] >> 11) | (((u32)t2_64) << 10) | (temp2[1] >> 22);
	out[2] = (temp0[2]) | (((u32)t1_32) << 21) | (temp1[2] >> 11) | (((u32)t2_65) << 10) | (temp2[2] >> 22);
}

void packU48FormatToThreePacket(u32 * out, u8 * in) {
	u32 t1 = (u32)U16BIG(*(u16*)(in + 4));
	u32 t2 = U32BIG(*(u32*)(in));
	u32 temp1[3] = { 0 };
	u32 temp2[3] = { 0 };
	u8  t2_64 = (in[3] & 0x80) >> 7, t2_65 = (in[3] & 0x40) >> 6;
	t1 = t1 << 1;
	t2 = t2 << 2;
	temp1[0] = t1; temp1[1] = t1 << 1; temp1[2] = t1 << 2;
	puckU32ToThree(temp1[0]);
	puckU32ToThree(temp1[1]);
	puckU32ToThree(temp1[2]);
	temp2[0] = t2; temp2[1] = t2 << 1; temp2[2] = t2 << 2;
	puckU32ToThree(temp2[0]);
	puckU32ToThree(temp2[1]);
	puckU32ToThree(temp2[2]);
	out[0] = (temp1[0] >> 11) | (temp2[0] >> 22);
	out[1] = (temp1[1] >> 11) | (((u32)t2_64) << 10) | (temp2[1] >> 22);
	out[2] = (temp1[2] >> 11) | (((u32)t2_65) << 10) | (temp2[2] >> 22);
}
unsigned char  constant7Format[76] = {
	/*constant7Format[127]:*/
0x01,0x08,0x40,0x02,0x10,0x80,0x05,0x09,0x48,0x42,0x12,0x90,
0x85,0x0c,0x41,0x0a,0x50,0x82,0x15,0x89,0x4d,0x4b,0x5a,0xd2,
0x97,0x9c,0xc4,0x06,0x11,0x88,0x45,0x0b,0x58,0xc2,0x17,0x99,
0xcd,0x4e,0x53,0x9a,0xd5,0x8e,0x54,0x83,0x1d,0xc9,0x4f,0x5b,
0xda,0xd7,0x9e,0xd4,0x86,0x14,0x81,0x0d,0x49,0x4a,0x52,0x92,
0x95,0x8c,0x44,0x03,0x18,0xc0,0x07,0x19,0xc8,0x47,0x1b,0xd8,
0xc7,0x1e,0xd1,0x8f};
