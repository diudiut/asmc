; STRUPR.ASM--
; Copyright (C) 2015 Doszip Developers

include string.inc

	.code

strupr	PROC _CType PUBLIC USES si string:PTR BYTE
	push	ds
	lds	si,string
      @@:
	mov	al,[si]
	test	al,al
	jz	@F
	sub	al,'a'
	cmp	al,'Z' - 'A' + 1
	sbb	al,al
	and	al,'a' - 'A'
	xor	[si],al
	inc	si
	jmp	@B
      @@:
	lodm	string
	pop	ds
	ret
strupr	ENDP

	END
