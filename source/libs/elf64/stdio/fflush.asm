; FFLUSH.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include stdio.inc
include io.inc

    .code

    assume r12:LPFILE

fflush proc uses rbx r12 r13 r14 fp:LPFILE

    mov r12,rdi
    xor r14,r14
    mov eax,[r12]._flag
    mov ebx,eax
    and eax,_IOREAD or _IOWRT

    .if ( eax == _IOWRT && ebx & _IOMYBUF or _IOYOURBUF )

        mov r13,[r12]._ptr
        sub r13,[r12]._base
        .ifg
            .ifd _write([r12]._file, [r12]._base, r13d) == r13d
                mov eax,[r12]._flag
                .if eax & _IORW
                    and eax,not _IOWRT
                    mov [r12]._flag,eax
                .endif
            .else
                or  ebx,_IOERR
                mov [r12]._flag,ebx
                mov r14,-1
            .endif
        .endif
    .endif
    mov rax,[r12]._base
    mov [r12]._ptr,rax
    mov [r12]._cnt,0
    mov rax,r14
    ret

fflush endp

    end