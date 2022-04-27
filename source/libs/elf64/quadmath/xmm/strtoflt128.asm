; STRTOFLT128.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;
;
; strtoflt128() - string to Quadruple float
;
include quadmath.inc

    .code

strtoflt128 proc string:string_t, endptr:ptr string_t

    cvta_q(string, endptr)
    ret

strtoflt128 endp

    end
