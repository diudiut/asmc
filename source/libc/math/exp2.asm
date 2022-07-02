; EXP2.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include math.inc

ifdef _WIN64
include immintrin.inc

externdef exp2_table:double

    .data
    X0 oword 0x4038B31B87EB89044034FFDE7CC02CF4
    X1 oword 0xBFE13B4D4879E55E401EF1584AF17ECD
    D0 real8 7.73568837260218089745241122384476
    D1 real8 20.9994886368921956041911010330331
endif

    .code

exp2 proc x:double

ifdef _WIN64

    movq    rax,xmm0
    add     rax,rax
    sbb     rdx,rdx
    shr     rax,1
    mov     rcx,0x3f70000000000000
    sub     rax,rcx
    add     rdx,64
    mov     rcx,0x011ff00000000000

    .repeat

        .if rax >= rcx

            .ifnl

                mov rcx,0x0120cc0000000000
                .if rax >= rcx

                    .if _mm_ucominnan_sd(xmm0, xmm0)

                        .if _mm_comilt_sd(xmm0, _mm_xor_pd(xmm1, xmm1))


                            _mm_move_sd(xmm1, 0fff0000000000000r)
                            _mm_cmpneq_sd(xmm1, xmm0)
                            _mm_move_sd(xmm0, 00010000000000001r)
                            _mm_and_pd(xmm1, xmm0)
                            _mm_mul_sd(xmm0, xmm1)
                            ret
                        .endif
                    .endif
                    _mm_mul_sd(xmm0, 07fefffffffffffffr)
                    ret
                .endif

                .if _mm_comilt_sd(xmm0, _mm_xor_pd(xmm1, xmm1))

                    movapd  xmm1,xmm0
                    mulsd   xmm0,04060000000000000r
                    cvttsd2si rax,xmm0
                    add     rax,rdx
                    mov     rdx,rax
                    sar     rax,7

                    cvtsi2sd xmm0,rax

                    .if _mm_comieq_sd(xmm0, xmm1)

                        mov     rdx,1
                        movq    xmm0,rdx
                        add     rax,1074
                        movq    xmm1,rax
                        psllq   xmm0,xmm1
                        ret
                    .endif

                    movsd   xmm5,00010000000000001r
                    mulsd   xmm5,xmm5

                    subsd   xmm1,xmm0
                    and     rdx,0x7f
                    sal     rdx,4

                    movsd   xmm0,03ff0000000000000r

                    lea     rcx,exp2_table
                    subsd   xmm1,[rdx+rcx]
                    movsd   xmm2,[rdx+rcx+8]

                    movlhps xmm1,xmm1
                    movapd  xmm3,xmm1
                    addpd   xmm1,D0
                    mulpd   xmm1,xmm3
                    mulsd   xmm3,0.133636821875765095445302638781823e-2
                    addpd   xmm1,D1
                    movhlps xmm4,xmm1
                    mulsd   xmm3,xmm4

                    add     rax,1022
                    movq    xmm4,rax
                    psllq   xmm4,52
                    paddd   xmm2,xmm4
                    mulsd   xmm1,xmm2
                    mulsd   xmm1,xmm3

                    movapd  xmm3,xmm2
                    addsd   xmm2,xmm0
                    movapd  xmm4,xmm2
                    subsd   xmm2,xmm0
                    subsd   xmm3,xmm2
                    addsd   xmm1,xmm3

                    addsd   xmm4,xmm1
                    xorpd   xmm0,xmm4
                    ret

                .endif

                mov rcx,0x0120000000000000
                .break .if rax < rcx
                ret

            .endif

            mov rcx,0xfd10000000000000
            .if rax <= rcx

                _mm_add_sd(xmm0, 03ff0000000000000r)
                ret
            .endif

            _mm_move_pd(xmm1, xmm0)
            _mm_mul_sd(xmm1, 0.133335622192926517572920729812647e-2)
            _mm_add_sd(xmm1, 0.961813204561913206522420450734562e-2)
            _mm_add_sd(_mm_mul_sd(xmm1, xmm0), 0.555041086648186946112103135980407e-1)
            _mm_add_sd(_mm_mul_sd(xmm1, xmm0), 0.240226506959089504788316195798243)
            _mm_add_sd(_mm_mul_sd(xmm1, xmm0), 0.693147180559945309420618787399210)
            _mm_add_sd(_mm_mul_sd(xmm0, xmm1), 03ff0000000000000r)
            ret
        .endif
    .until 1

    _mm_move_pd(xmm1, xmm0)
    _mm_mul_sd(xmm0, 04060000000000000r)
    _mm_cvttsd_si64()
    add rax,rdx
    mov rdx,rax
    sar rax,7

    .if _mm_ucomieq_sd(_mm_cvtsi64_sd(), xmm1)

        add rax,1023
        _mm_slli_epi64(_mm_move_epi64(), 52)
        ret
    .endif

    _mm_sub_sd(xmm1, xmm0)
    and rdx,0x7f
    sal rdx,4
    lea rcx,exp2_table

    _mm_sub_sd(xmm1, [rcx+rdx])
    _mm_move_sd(xmm2, [rcx+rdx+8])
    _mm_movelh_ps(xmm1, xmm1)
    _mm_move_pd(xmm3, xmm1)
    _mm_add_pd(xmm1, X1)
    _mm_mul_pd(xmm1, xmm3)
    _mm_mul_sd(xmm3, 0.133636821875765095445302638781823e-2)
    _mm_add_pd(xmm1, X0)
    _mm_movehl_ps(xmm4, xmm1)
    _mm_mul_sd(xmm1, xmm2)
    _mm_mul_sd(xmm3, xmm4)
    _mm_mul_sd(xmm1, xmm3)
    _mm_add_sd(xmm2, xmm1)
    _mm_slli_epi64(_mm_move_epi64(), 52)
    _mm_add_pi32(xmm0, xmm2)
else
    int 3
endif
    ret

exp2 endp

    end
