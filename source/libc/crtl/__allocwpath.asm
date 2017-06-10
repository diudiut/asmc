include alloc.inc
include winnls.inc

	.code

	option	cstack:on

__allocwpath PROC USES esi edi path:LPSTR

	mov esi,path
	xor eax,eax

	.if MultiByteToWideChar( CP_ACP, eax, esi, -1, eax, eax )

		mov edx,eax
		mov edi,alloca( addr [eax*2+8] )
		add eax,8

		.if MultiByteToWideChar( CP_ACP, 0, esi, -1, eax, edx )

			mov dword ptr [edi],  0x005C005C	; "\\?\"
			mov dword ptr [edi+4],0x005C003F
			mov eax,edi
			mov ecx,[ebp+12]
			mov esi,[ebp+8]
			mov edi,[ebp+4]
			mov ebp,[ebp]
			jmp ecx
		.endif

		mov esp,ebp
	.endif
	mov eax,esi
	ret

__allocwpath ENDP

	END
