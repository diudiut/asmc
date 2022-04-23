; _IOINIT.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include io.inc
include crtl.inc

    .data

    _nfile  dd _NFILE_
    _osfile db FH_OPEN or FH_DEVICE or FH_TEXT
            db FH_OPEN or FH_DEVICE or FH_TEXT
            db FH_OPEN or FH_DEVICE or FH_TEXT
            db _NFILE_ - 3 dup(0)

    .code

_ioexit proc uses rsi rdi

    .for ( esi = 3, rdi = &_osfile : esi < _NFILE_ : esi++ )

        .if BYTE PTR [rdi+rsi] & FH_OPEN

            _close( esi )
        .endif
    .endf
    ret

_ioexit endp

.pragma(exit(_ioexit, 2))

    END