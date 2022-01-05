; _ACCESS.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include io.inc

.code

_access proc fname:LPSTR, amode:UINT

    .ifd getfattr(rcx) != -1
        .if amode == 2 && eax & _A_RDONLY
            mov eax,-1
        .else
            xor eax,eax
        .endif
    .endif
    ret

_access endp

    END