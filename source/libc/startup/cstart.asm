; CSTART.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;
; Startup module for LIBC
;
include stdlib.inc

main	  proto __cdecl :dword, :ptr, :ptr
_initterm proto __cdecl :ptr, :ptr

externdef __xi_a:ptr ; pointers to initialization sections
externdef __xi_z:ptr

	.code

	dd 495A440Ah
	dd 564A4A50h
	db __LIBC__ / 100 + '0','.',__LIBC__ mod 100 / 10 + '0',__LIBC__ mod 10 + '0'

cstart::
_cstart::

mainCRTStartup proc
ifndef _WIN64
  local _exception_registration[2]:dword
endif
	_initterm( &__xi_a, &__xi_z )
	exit( main( __argc, __argv, _environ ) )

mainCRTStartup endp

	end cstart
