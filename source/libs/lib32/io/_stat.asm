; _STAT.ASM--
;
; Copyright (c) The Asmc Contributors. All rights reserved.
; Consult your license regarding permissions and restrictions.
;

include io.inc
include time.inc
include direct.inc
include errno.inc
include sys/stat.inc
include string.inc
include stdlib.inc
include malloc.inc
include crtl.inc
include winbase.inc

A_D equ 0x10

.code

_lk_getltime proc private ft

  local SystemTime:SYSTEMTIME
  local LocalFTime:FILETIME

    .if FileTimeToLocalFileTime(ft, &LocalFTime)
        .if FileTimeToSystemTime(&LocalFTime, &SystemTime)
            _loctotime_t(
                SystemTime.wYear,
                SystemTime.wMonth,
                SystemTime.wDay,
                SystemTime.wHour,
                SystemTime.wMinute,
                SystemTime.wSecond
                )
        .endif
    .endif
    ret
_lk_getltime ENDP

_stat proc uses esi edi ebx fname:ptr sbyte, buf:ptr stat

  local path, drive, ff:WIN32_FIND_DATA, pathbuf[_MAX_PATH]:BYTE

    mov esi,fname
    mov edi,buf
    _mbspbrk(esi, "?*")
    test eax,eax
    jnz error_1

    mov eax,[esi]
    .if ah == ':'
        test  eax,00FF0000h
        jz    error_1
        or    al,20h
        sub   al,'a' - 1
        movzx eax,al
    .else
        _getdrive()
    .endif
    mov drive,eax

    .if FindFirstFileA(esi, addr ff) == -1

        _mbspbrk(esi, "\\./")
        test eax,eax
        jnz error_1
        mov path,_getdcwd(0, addr pathbuf, _MAX_PATH)
        test eax,eax
        jz  error_1
        cmp strlen(eax),3
        jne error_1
        cmp GetDriveType(path),1
        jna error_1
        xor eax,eax
        mov ff.dwFileAttributes,A_D
        mov ff.nFileSizeHigh,eax
        mov ff.nFileSizeLow,eax
        mov ff.cFileName,al
        _loctotime_t(80, 1, 1, eax, eax, eax)
        mov [edi].stat.st_mtime,eax
        mov [edi].stat.st_atime,eax
        mov [edi].stat.st_ctime,eax
    .else
        FindClose(eax)
        _lk_getltime(addr ff.ftLastWriteTime)
        test eax,eax
        jz error_2
        mov [edi].stat.st_mtime,eax
        .if !_lk_getltime( addr ff.ftLastAccessTime )
        mov eax,[edi].stat.st_mtime
        .endif
        mov [edi].stat.st_atime,eax
        .if !_lk_getltime( addr ff.ftCreationTime )
        mov eax,[edi].stat.st_mtime
        .endif
        mov [edi].stat.st_ctime,eax
    .endif

    mov eax,[esi]
    mov edx,ff.dwFileAttributes
    mov ecx,_S_IFDIR or _S_IEXEC
    mov ebx,_S_IREAD
    .if ah == ':'
        add esi,2
        shr eax,16
    .endif
    .if (al && !(dl & A_D)) && (ah || (al != '\' && al != '/'))
        mov ecx,_S_IFREG
    .endif
    .if !(dl & A_D)
        mov ebx,_S_IREAD or _S_IWRITE
    .endif
    or ebx,ecx
    .if __isexec(esi)
        or ebx,_S_IEXEC
    .endif

    mov ecx,ebx
    and ecx,01C0h
    mov eax,ecx
    shr ecx,3
    or  ebx,ecx
    shr eax,6
    or  eax,ebx
    mov [edi].stat.st_mode,ax
    mov [edi].stat.st_nlink,1
    mov eax,ff.nFileSizeLow
    mov [edi].stat.st_size,eax
    xor eax,eax
    mov [edi].stat.st_uid,ax
    mov [edi].stat.st_ino,ax
    mov [edi].stat.st_gid,ax
    mov eax,drive
    dec eax
    mov [edi].stat.st_dev,eax
    mov [edi].stat.st_rdev,eax
    xor eax,eax
toend:
    ret
error_1:
    mov errno,ENOENT
    mov _doserrno,ERROR_PATH_NOT_FOUND
    mov eax,-1
    jmp toend
error_2:
    osmaperr()
    mov eax,-1
    jmp toend
_stat endp

    end
