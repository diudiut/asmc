; _WFINDFIRST.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include io.inc
include time.inc
include winbase.inc

.code

_wfindnext proc uses esi edi handle:SINT, ff:ptr _wfinddata_t

local FindFileData:WIN32_FIND_DATAW

    mov edi,ff
    lea esi,FindFileData

    .if FindNextFileW(handle, esi)

        copyblock()
        xor eax,eax
    .else
        osmaperr()
    .endif
    ret

_wfindnext endp

_wfindfirst proc uses esi edi ebx lpFileName:LPWSTR, ff:ptr _wfinddata_t

  local FindFileData:WIN32_FIND_DATAW, result:DWORD

    mov edi,ff
    lea esi,FindFileData
    ;
    ; single file fails in FindFirstFileW
    ;
    FindFirstFileW(lpFileName, esi)

    mov result,eax
    .if eax != -1

        copyblock()
    .else
        osmaperr()
    .endif
    mov eax,result
    ret

_wfindfirst endp

    ASSUME esi:ptr WIN32_FIND_DATAW
    ASSUME edi:ptr _wfinddata_t

copyblock:
    mov eax,[esi].dwFileAttributes
    mov [edi].attrib,eax
    mov eax,[esi].nFileSizeLow
    mov [edi].size,eax
    mov [edi].time_create,FileTimeToTime(&[esi].ftCreationTime)
    mov [edi].time_access,FileTimeToTime(&[esi].ftLastAccessTime)
    mov [edi].time_write, FileTimeToTime(&[esi].ftLastWriteTime)
    lea esi,[esi].cFileName
    lea edi,[edi].name
    mov ecx,260/2
    rep movsd
    ret

    END
