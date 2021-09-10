; SECURITY.ASM--
;
; https://docs.microsoft.com/en-us/windows/win32/secauthz/creating-a-security-descriptor-for-a-new-object-in-c--
;

include windows.inc
include winreg.inc
include stdio.inc
include aclapi.inc
include tchar.inc

.code

main proc

    .new dwRes:DWORD, dwDisposition:DWORD
    .new pEveryoneSID:PSID = NULL
    .new pAdminSID:PSID = NULL
    .new pACL:PACL = NULL
    .new pSD:PSECURITY_DESCRIPTOR = NULL
    .new SIDAuthWorld:SID_IDENTIFIER_AUTHORITY = { SECURITY_WORLD_SID_AUTHORITY }
    .new SIDAuthNT:SID_IDENTIFIER_AUTHORITY = { SECURITY_NT_AUTHORITY }
    .new sa:SECURITY_ATTRIBUTES
    .new lRes:LONG
    .new hkSub:HKEY = NULL

    ;; Create a well-known SID for the Everyone group.
    .if !AllocateAndInitializeSid(&SIDAuthWorld, 1, SECURITY_WORLD_RID,
                 0, 0, 0, 0, 0, 0, 0, &pEveryoneSID)

        _tprintf("AllocateAndInitializeSid Error %u\n", GetLastError())
        jmp Cleanup
    .endif

    ;; Initialize an EXPLICIT_ACCESS structure for an ACE.
    ;; The ACE will allow Everyone read access to the key.

    ;; Create a SID for the BUILTIN\Administrators group.
    .if !AllocateAndInitializeSid(&SIDAuthNT, 2,
                     SECURITY_BUILTIN_DOMAIN_RID,
                     DOMAIN_ALIAS_RID_ADMINS,
                     0, 0, 0, 0, 0, 0,
                     &pAdminSID)

        _tprintf("AllocateAndInitializeSid Error %u\n", GetLastError())
        jmp Cleanup
    .endif

    ;; Initialize an EXPLICIT_ACCESS structure for an ACE.
    ;; The ACE will allow the Administrators group full access to
    ;; the key.

    .new ea[2]:EXPLICIT_ACCESS = {
        { KEY_READ, SET_ACCESS, NO_INHERITANCE, { NULL, 0, TRUSTEE_IS_SID,
          TRUSTEE_IS_WELL_KNOWN_GROUP, pEveryoneSID } },
        { KEY_ALL_ACCESS, SET_ACCESS, NO_INHERITANCE, { NULL, 0, TRUSTEE_IS_SID,
          TRUSTEE_IS_GROUP, pAdminSID } }
        }


    ;; Create a new ACL that contains the new ACEs.
    mov dwRes,SetEntriesInAcl(2, &ea, NULL, &pACL)
    .if (dwRes != ERROR_SUCCESS)

        _tprintf("SetEntriesInAcl Error %u\n", GetLastError())
        jmp Cleanup
    .endif

    ;; Initialize a security descriptor.
    mov pSD,LocalAlloc(LPTR, SECURITY_DESCRIPTOR_MIN_LENGTH)
    .if (pSD == NULL)

        _tprintf("LocalAlloc Error %u\n", GetLastError())
        jmp Cleanup
    .endif

    .if !InitializeSecurityDescriptor(pSD, SECURITY_DESCRIPTOR_REVISION)

        _tprintf("InitializeSecurityDescriptor Error %u\n",
                                GetLastError())
        jmp Cleanup
    .endif

    ;; Add the ACL to the security descriptor.
    .if !SetSecurityDescriptorDacl(pSD,
            TRUE,     ;; bDaclPresent flag
            pACL,
            FALSE)    ;; not a default DACL

        _tprintf("SetSecurityDescriptorDacl Error %u\n",
                GetLastError())
        jmp Cleanup
    .endif


    ;; Initialize a security attributes structure.
    mov sa.nLength,sizeof(SECURITY_ATTRIBUTES)
    mov sa.lpSecurityDescriptor,pSD
    mov sa.bInheritHandle,FALSE

    ;; Use the security attributes to set the security descriptor
    ;; when you create a key.

    mov lRes,RegCreateKeyEx(HKEY_CURRENT_USER, "mykey", 0, "", 0, KEY_READ or KEY_WRITE, &sa, &hkSub, &dwDisposition)
    _tprintf("RegCreateKeyEx result %u\n", lRes )

Cleanup:

    .if (pEveryoneSID)
        FreeSid(pEveryoneSID)
    .endif
    .if (pAdminSID)
        FreeSid(pAdminSID)
    .endif
    .if (pACL)
        LocalFree(pACL)
    .endif
    .if (pSD)
        LocalFree(pSD)
    .endif
    .if (hkSub)
        RegCloseKey(hkSub)
    .endif
    ret

main endp

    end _tstart
