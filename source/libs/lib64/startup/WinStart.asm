; WINSTART.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;
; Startup module for LIBC Windows 64
;
include stdlib.inc
include winbase.inc
include winuser.inc

externdef __xi_a:ptr
externdef __xi_z:ptr
_initterm proto __cdecl :ptr, :ptr

    .code

    dd 495A440Ah
    dd 564A4A50h
    db __LIBC__ / 100 + '0','.',__LIBC__ mod 100 / 10 + '0',__LIBC__ mod 10 + '0'

WinMainCRTStartup::

WinStart proc frame uses rbx

    _initterm( &__xi_a, &__xi_z )
    mov rbx,GetModuleHandle(0)
    ExitProcess(WinMain(rbx, 0, GetCommandLineA(), SW_SHOWDEFAULT))

WinStart endp

    end WinStart
