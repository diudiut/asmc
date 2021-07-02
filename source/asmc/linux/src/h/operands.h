/****************************************************************************
*
*			     Open Watcom Project
*
*    Portions Copyright (c) 1983-2002 Sybase, Inc. All Rights Reserved.
*
*  ========================================================================
*
*    This file contains Original Code and/or Modifications of Original
*    Code as defined in and that are subject to the Sybase Open Watcom
*    Public License version 1.0 (the 'License'). You may not use this file
*    except in compliance with the License. BY USING THIS FILE YOU AGREE TO
*    ALL TERMS AND CONDITIONS OF THE LICENSE. A copy of the License is
*    provided with the Original Code and Modifications, and is also
*    available at www.sybase.com/developer/opensource.
*
*    The Original Code and all software distributed under the License are
*    distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER
*    EXPRESS OR IMPLIED, AND SYBASE AND ALL CONTRIBUTORS HEREBY DISCLAIM
*    ALL SUCH WARRANTIES, INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF
*    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR
*    NON-INFRINGEMENT. Please see the License for the specific language
*    governing rights and limitations under the License.
*
*  ========================================================================
*
* Description:	parser/code generator operand definitions.
*		This file is included by parser.h
*
****************************************************************************/

#ifndef OPERANDS_H
#define OPERANDS_H

/* v1.96: OP_J32 (for far CALL/JMP) has been removed, now used for OP_I64.
 * v2.04: 2 bits freed ( OP_CR, OP_DR and OP_TR replaced by OP_SPECREG )
 * Also OP_SPECREG, OP_SRxx and OP_STxx moved just behind the other
 * register operands.
 * Note: register-related flags must be in bits 0-15, because register items
 * in SpecialTable[] have these bits stored in a uint field (JWASMR!).
 */

enum operand_type {
OP_NONE		= 0,
OP_R8		= 0x00000001,
OP_R16		= 0x00000002,
OP_R32		= 0x00000004,
OP_R64		= 0x00000008,
OP_XMM		= 0x00000010,
OP_YMM		= 0x00000020,
OP_ZMM		= 0x00000040,
OP_A		= 0x00000080, /* AL, AX, EAX, RAX registers */
OP_M08		= 0x00000100,
OP_M16		= 0x00000200,
OP_M32		= 0x00000400,
OP_M64		= 0x00000800,
OP_M128		= 0x00001000,
OP_M256		= 0x00002000,
OP_M512		= 0x00004000,
OP_MMX		= 0x00008000,
OP_I8		= 0x00010000,
OP_I16		= 0x00020000,
OP_I32		= 0x00040000,
OP_I64		= 0x00080000,
OP_K		= 0x00100000, /* Mask reg */
OP_M48		= 0x00200000,
OP_M80		= 0x00400000,
OP_CL_ONLY	= 0x00800000, /* CL register */
OP_DX_ONLY	= 0x01000000, /* DX register */
OP_RSPEC	= 0x02000000, /* CRx, DRx, TRx registers */
OP_SR86		= 0x04000000, /* CS, DS, ES, SS registers */
OP_SR386	= 0x08000000, /* FS, GS registers */
OP_ST		= 0x10000000, /* ST0 register */
OP_ST_REG	= 0x20000000, /* ST1-ST7 registers */
OP_I48		= 0x40000000, /* used for immediate FAR call/jmp */


    /* OP_I_1, OP_I_3 and OP_I8_U aren't flags. They are
     * used as values in SWITCH statements only. It's possible to
     * "compress" them if room for another flag is needed
     */
    OP_I_1	= ( 0x00200000 | OP_I8 ),
    OP_I_3	= ( 0x00400000 | OP_I8 ),
    OP_I8_U	= ( 0x00800000 | OP_I8 | OP_I16 | OP_I32 ),

    OP_AL	= ( OP_A | OP_R8 ),
    OP_AX	= ( OP_A | OP_R16 ),
    OP_EAX	= ( OP_A | OP_R32 ),
    OP_RAX	= ( OP_A | OP_R64 ),
    OP_RIP	= ( 16 | OP_RSPEC),
    OP_CL	= ( OP_CL_ONLY | OP_R8 ),
    OP_DX	= ( OP_DX_ONLY | OP_R16 ),
    OP_RGT8	= ( OP_R16 | OP_R32 | OP_R64 ),
    OP_RGT16	= ( OP_R32 | OP_R64 ),
    OP_R	= ( OP_R8 | OP_R16 | OP_R32 | OP_R64 ),
    OP_SR	= ( OP_SR86 | OP_SR386 ),
    OP_STI	= ( OP_ST | OP_ST_REG ),

    OP_I	= ( OP_I8 | OP_I16 | OP_I32 ),
    OP_IGE8	= ( OP_I8 | OP_I16 | OP_I32 ),
    OP_IGE16	= ( OP_I16 | OP_I32 ),
    OP_I_ANY	= ( OP_I | OP_I64 | OP_I48 ),

    OP_MGT8	= ( OP_M16 | OP_M32 | OP_M64 ),
    OP_MGT16	= ( OP_M32 | OP_M64 ),
    OP_MFPTR	= ( OP_M32 | OP_M48 | OP_M80 ),
    OP_M_ANY	= ( OP_M08 | OP_M16 | OP_M32 | OP_M64 | OP_M128 | OP_M256 | OP_M512 | OP_M48 | OP_M80 ),
    OP_M	= ( OP_M08 | OP_M16 | OP_M32 | OP_M64 | OP_M80 | OP_M128 ),
    /* v2.06: items in instruction table now use OP_MS instead of OP_M */
    OP_MS	= ( OP_M08 | OP_M16 | OP_M32 | OP_M64 ),
};

/* since v2.06, this is a 8-bit field. Previously it was 4-bit only. */
enum operand3_type {
    OP3_NONE = 0, /* must be 0, identical to OP_NONE */
    OP3_CL,
    OP3_I8_U,	  /* this is also used for signed values (IMUL) */
    OP3_XMM0,	  /* v2.01: introduced with SSE4.1 */
    OP3_I,	  /* v2.06: added to avoid the IMUL hack */
    OP3_HID,	  /* hidden data ( CMPxxx[PD|PS|SD|SS] ) */
    OP3_XMM = OP3_XMM0, /* for VEX encoding only */
    OP3_YMM = OP3_XMM0, /* for VEX encoding only */
    OP3_ZMM = OP3_XMM0, /* for VEX encoding only */
    OP3_K   = OP3_XMM0, /* for VEX encoding only */
    OP3_RGT16 = OP3_XMM0,
    OP3_R_MS = OP3_XMM0,
};

#endif
