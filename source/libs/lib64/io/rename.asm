; RENAME.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include io.inc
include errno.inc
include winbase.inc

    .code

rename proc Oldname:LPSTR, Newname:LPSTR

    .if MoveFile(rcx, rdx)
        xor eax,eax
    .else
        _dosmaperr(GetLastError())
    .endif
    ret

rename endp

    end
