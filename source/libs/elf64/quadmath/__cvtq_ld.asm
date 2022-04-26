; __CVTQ_LD.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include quadmath.inc

    .code

    option win64:noauto

__cvtq_ld proc ld:ptr, q:ptr

    mov     rax,[rsi]
    mov     rdx,[rsi+8]
    shld    rcx,rdx,16
    shld    rdx,rax,16

    mov     eax,ecx
    and     eax,LD_EXPMASK
    neg     eax
    mov     rax,rdx
    rcr     rax,1

    ;; round result

    .ifc
        .if rax == -1
            mov rax,0x8000000000000000
            inc cx
        .else
            add rax,1
        .endif
    .endif

    mov [rdi],rax
    mov [rdi+8],cx
    ret

__cvtq_ld endp

    end
