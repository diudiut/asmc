; ROUND.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include math.inc
include intrin.inc

    .code

round proc d:double
ifdef _WIN64
    movq    rax,xmm0
    shl     rax,1
    sbb     edx,edx
    shr     rax,1
    movq    xmm0,rax
    cvtsd2si rax,xmm0
    cvtsi2sd xmm1,rax
    subsd   xmm0,xmm1
    .if _mm_comige_sd(xmm0, 0.5)
        inc rax
    .endif
    .if edx
        neg rax
    .endif
    cvtsi2sd xmm0,rax
else
    int 3
endif
    ret
round endp

    end
