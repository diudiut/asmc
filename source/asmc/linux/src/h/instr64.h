/****************************************************************************
*
* Description:	instructions which are to be replaced in long-mode
*
****************************************************************************/

/*   tok   (suffix)		op1-3	   byte1_info opnd_dir rm_info opcode rm_byte cpu  prefix evex */

insa(CALL, call,  OpCls( I32,	  NONE,	  NONE ), 0,	   0,  no_RM,  0xE8, 0x00, P_64,  0,0)
insn(CALL, 1,	  OpCls( R64_M64, NONE,	  NONE ), 0,	   0,  no_WDS, 0xFF, 0x10, P_64,  0,0)
//insn(CALL, 2,	  OpCls( M64,	  NONE,	  NONE ), 0,	   0,  no_WDS, 0xFF, 0x10, P_64,  0,0)
/* FAR call */
insm(CALL, 3,	  OpCls( M32,	NONE,	  NONE ), F_16,	   0,  no_WDS, 0xFF, 0x18, P_64,  0,0)
insn(CALL, 4,	  OpCls( M48,	NONE,	  NONE ), 0,	   0,  no_WDS, 0xFF, 0x18, P_64,  0,0)
insn(CALL, 5,	  OpCls( M80,	NONE,	  NONE ), F_48,	   0,  no_WDS, 0xFF, 0x18, P_64,  0,0)
insa(JMP, jmp,	  OpCls( I8,	NONE,	  NONE ), 0,	   0,  no_RM,  0xEB, 0x00, P_86,  0,0)
insn(JMP, 1,	  OpCls( I32,	NONE,	  NONE ), 0,	   0,  no_RM,  0xE9, 0x00, P_64,  0,0)
insn(JMP, 2,	  OpCls( R64_M64, NONE,	  NONE ), 0,	   0,  no_WDS, 0xFF, 0x20, P_64,  0,0)
//insn(JMP, 3,	  OpCls( M64,	  NONE,	    NONE ), 0,	   0,  no_WDS, 0xFF, 0x20, P_64,  0,0)
/* FAR jmp */
insm(JMP, 4,	  OpCls( M32,	NONE,	  NONE ), F_16,	   0,  no_WDS, 0xFF, 0x28, P_64,  0,0)
insn(JMP, 5,	  OpCls( M48,	NONE,	  NONE ), 0,	   0,  no_WDS, 0xFF, 0x28, P_64,  0,0)
insn(JMP, 6,	  OpCls( M80,	NONE,	  NONE ), F_48,	   0,  no_WDS, 0xFF, 0x28, P_64,  0,0)
insa(LGDT, lgdt,  OpCls( M80,	NONE,	  NONE ), F_0F,	   0,  no_WDS, 0x01, 0x10, P_64,  0,0)
insa(LIDT, lidt,  OpCls( M80,	NONE,	  NONE ), F_0F,	   0,  no_WDS, 0x01, 0x18, P_64,  0,0)

insa(SLDT, sldt,  OpCls( RGT8,	NONE,	  NONE ), F_0F,	   0,  no_WDS, 0x00, 0x00, P_64,  0,0)
insn(SLDT, 1,	  OpCls( M16,	NONE,	  NONE ), F_0FNO66,0,  no_WDS, 0x00, 0x00, P_286, 0,0)
insa(SMSW, smsw,  OpCls( RGT8,	NONE,	  NONE ), F_0F,	   0,  no_WDS, 0x01, 0x20, P_64,  0,0)
insn(SMSW, 1,	  OpCls( M16,	NONE,	  NONE ), F_0FNO66,0,  no_WDS, 0x01, 0x20, P_286, 0,0)
insa(STR,  str,	  OpCls( RGT8,	NONE,	  NONE ), F_0F,	   0,  no_WDS, 0x00, 0x08, P_64,  0,0)
insn(STR,  1,	  OpCls( M16,	NONE,	  NONE ), F_0FNO66,0,  no_WDS, 0x00, 0x08, P_286, 0,0)

/* v2.06: POP/PUSH added */
insa(POP, pop,	  OpCls( R16_R64, NONE,	  NONE ), 0,	   0,  R_in_OP,0x58, 0x00, P_86,  0,0)
insn(POP, 1,	  OpCls( M16_M64, NONE,	  NONE ), 0,	   0,  0,      0x8F, 0x00, P_86,  0,0)
insn(POP, 2,	  OpCls( SR386,	  NONE,	  NONE ), F_0F,	   1,  R_in_OP,0x81, 0x00, P_386, 0,0)
insa(PUSH, push,  OpCls( R16_R64, NONE,	  NONE ), 0,	   0,  R_in_OP,0x50, 0x00, P_86,  0,0)
insn(PUSH, 1,	  OpCls( I8,	  NONE,	  NONE ), 0,	   0,  no_RM,  0x6A, 0x00, P_186, 0,0)
insn(PUSH, 2,	  OpCls( I,	  NONE,	  NONE ), 0,	   0,  no_RM,  0x68, 0x00, P_186, 0,0)
insn(PUSH, 3,	  OpCls( M16_M64, NONE,	  NONE ), 0,	   0,  0,      0xFF, 0x30, P_86,  0,0)
insn(PUSH, 4,	  OpCls( SR386,	  NONE,	  NONE ), F_0F,	   1,  R_in_OP,0x80, 0x00, P_386, 0,0)
insa(VMREAD,  vmread,  OpCls( R64_M64, R64, NONE ), F_0F,  0,  no_WDS, 0x78, 0x00, P_686p,0,0)
insa(VMWRITE, vmwrite, OpCls( R64, R64_M64, NONE ), F_0F,  1,  no_WDS, 0x79, 0x00, P_686p,0,0)
