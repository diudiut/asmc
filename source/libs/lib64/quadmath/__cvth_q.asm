; __CVTH_Q.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include quadmath.inc
include errno.inc

    .code

    option win64:rsp nosave noauto

__cvth_q proc x:ptr, h:ptr

    mov     r8,rcx
    movsx   eax,word ptr [rdx]  ; get half value
    mov     ecx,eax             ; get exponent and sign
    shl     eax,H_EXPBITS+16    ; shift fraction into place
    sar     ecx,15-H_EXPBITS    ; shift to bottom
    and     cx,H_EXPMASK        ; isolate exponent

    .if cl
        .if cl != H_EXPMASK
            add cx,Q_EXPBIAS-H_EXPBIAS
        .else
            or cx,0x7FE0
            .if (eax & 0x7FFFFFFF)
                ;
                ; Invalid exception
                ;
                _set_errno(EDOM)
                mov ecx,0xFFFF
                mov eax,0x40000000 ; QNaN
            .else
                xor eax,eax
            .endif
        .endif
    .elseif eax
        or cx,Q_EXPBIAS-H_EXPBIAS+1 ; set exponent
        .while 1
            ;
            ; normalize number
            ;
            test eax,eax
            .break .ifs
            shl eax,1
            dec cx
        .endw
    .endif

    shl     eax,1
    mov     [r8+10],eax
    xor     eax,eax
    mov     [r8],rax
    mov     [r8+8],ax
    shl     ecx,1
    rcr     cx,1
    mov     [r8+14],cx
    mov     rax,r8
    ret

__cvth_q endp

    end
