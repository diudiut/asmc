; COSQF.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include quadmath.inc

    .code

cosqf proc Q:real16

    fldq()
    fcos
    fstq()
    ret

cosqf endp

    end
