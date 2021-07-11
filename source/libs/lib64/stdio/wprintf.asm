; WPRINTF.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include stdio.inc

    .code

wprintf proc uses rsi format:LPWSTR, argptr:VARARG

    mov  rsi,_stbuf(&stdout)
    xchg rsi,_woutput(&stdout, format, &argptr)
    _ftbuf(eax, &stdout)
    mov rax,rsi
    ret

wprintf endp

    END
