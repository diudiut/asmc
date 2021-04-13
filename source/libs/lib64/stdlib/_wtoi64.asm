; _WTOI64.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include stdlib.inc

    option win64:rsp nosave noauto

    .code

_wtoi64 proc string:wstring_t

    mov rdx,rcx ; string
    xor ecx,ecx
    .repeat

        movzx eax,word ptr [rdx]
        add rdx,2
        .continue(0) .if eax == ' '
    .until 1

    push rax

    .if eax == '-' || eax == '+'

        mov ax,[rdx]
        add rdx,2
    .endif

    mov ecx,eax
    xor eax,eax
    .while 1

        sub ecx,'0'
        .break .ifc
        .break .if ecx > 9
        lea rcx,[rax*8+rcx]
        lea rax,[rax*2+rcx]
        movzx ecx,word ptr [rdx]
        add rdx,2
    .endw

    pop rcx
    .if ecx == '-'

        neg rax
    .endif
    ret

_wtoi64 endp

    END
