; _FORCDECPT.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include string.inc
include fltintrn.inc

    .code
    ;
    ; '#' and precision == 0 means force a decimal point
    ;
_forcdecpt proc buffer:string_t

    .if !strchr( buffer, '.' )

        strcat( buffer, ".0" )
    .endif
    ret

_forcdecpt endp

    end
