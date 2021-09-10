;
; https://docs.microsoft.com/en-us/windows/win32/api/sysinfoapi/nf-sysinfoapi-getlogicalprocessorinformation
;
include winbase.inc
include stdio.inc
include malloc.inc
include tchar.inc

CALLBACK(LPFN_GLPI, :PSYSTEM_LOGICAL_PROCESSOR_INFORMATION, :LPDWORD)

.code

;; Helper function to count set bits in the processor mask.

CountSetBits macro bitMask
    mov rcx,bitMask
    popcnt rax,rcx
    retm<eax>
    endm

    option win64: align

_tmain proc

  local glpi                    : LPFN_GLPI,
        done                    : BOOL,
        buffer                  : PSYSTEM_LOGICAL_PROCESSOR_INFORMATION,
        returnLength            : UINT,
        logicalProcessorCount   : UINT,
        numaNodeCount           : UINT,
        processorCoreCount      : UINT,
        processorL1CacheCount   : UINT,
        processorL2CacheCount   : UINT,
        processorL3CacheCount   : UINT,
        processorPackageCount   : UINT,
        LineSize                : UINT,
        CacheSize               : UINT

    lea rdi,CacheSize
    lea rcx,glpi
    sub rcx,rdi
    xor eax,eax
    rep stosb

    .if !GetProcAddress(GetModuleHandle("kernel32"), "GetLogicalProcessorInformation")

        _tprintf("\nGetLogicalProcessorInformation is not supported.\n")
        .return 1
    .endif
    mov glpi,rax

    .while (!done)
        .if !glpi(buffer, &returnLength)
            .if (GetLastError() == ERROR_INSUFFICIENT_BUFFER)
                .if (buffer)
                    free(buffer)
                .endif
                mov buffer,malloc(returnLength)
                .if (buffer == NULL)
                    _tprintf("\nError: Allocation failure\n")
                    .return 2
                .endif
            .else
                _tprintf("\nError %d\n", GetLastError())
                .return 3
            .endif
        .else
            mov done,TRUE
        .endif
    .endw

    mov rdi,buffer
    mov ebx,SYSTEM_LOGICAL_PROCESSOR_INFORMATION

    assume rdi:ptr SYSTEM_LOGICAL_PROCESSOR_INFORMATION

    .while (ebx <= returnLength)

        .switch ([rdi].Relationship)

        .case RelationNumaNode
            ;; Non-NUMA systems report a single record of this type.
            inc numaNodeCount
            .endc

        .case RelationProcessorCore
            inc processorCoreCount

            ;; A hyperthreaded core supplies more than one logical processor.
            CountSetBits([rdi].ProcessorMask)
            add logicalProcessorCount,eax
            .endc

        .case RelationCache
            ;; Cache data is in ptr->Cache, one CACHE_DESCRIPTOR structure for each cache.
            mov al,[rdi].Cache.Level
            .if (al == 1)
                inc processorL1CacheCount
            .elseif (al == 2)
                inc processorL2CacheCount
            .elseif (al == 3)
                inc processorL3CacheCount
            .endif
            movzx eax,[rdi].Cache.LineSize
            mov LineSize,eax
            mov eax,[rdi].Cache.Size
            mov CacheSize,eax
            .endc

        .case RelationProcessorPackage
            ;; Logical processors share a physical package.
            inc processorPackageCount
            .endc

        .default
            _tprintf("\nError: Unsupported LOGICAL_PROCESSOR_RELATIONSHIP value.\n")
            .endc
        .endsw
        add ebx,SYSTEM_LOGICAL_PROCESSOR_INFORMATION
        add rdi,SYSTEM_LOGICAL_PROCESSOR_INFORMATION
    .endw

    _tprintf(
        "\nGetLogicalProcessorInformation results:\n"
        "Number of NUMA nodes: %d\n"
        "Number of physical processor packages: %d\n"
        "Number of processor cores: %d\n"
        "Number of logical processors: %d\n"
        "Number of processor L1/L2/L3 caches: %d/%d/%d\n"
        "Cache LineSize: %d\n"
        "Cache Size: %X\n",
        numaNodeCount,
        processorPackageCount,
        processorCoreCount,
        logicalProcessorCount,
        processorL1CacheCount,
        processorL2CacheCount,
        processorL3CacheCount,
        LineSize,
        CacheSize)

    free(buffer)
    xor eax,eax
    ret

_tmain endp

    end _tstart
