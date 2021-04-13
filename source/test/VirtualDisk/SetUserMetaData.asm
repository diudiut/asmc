;;
;; This sample demonstrates how to set a metadata item from a VHDX file.
;;
;; User metadata is not applicable to VHD files.
;;

include Storage.inc

;;
;; This sample metadata structure is for demonstration purposes only.  Any structure can be used
;; for metadata.
;;

SAMPLE_METADATA struct
    ID DWORD ?
SAMPLE_METADATA ends

.code

SampleSetUserMetaData proc \
    VHDPath: LPCWSTR,
    ID: DWORD

    .new openParameters:OPEN_VIRTUAL_DISK_PARAMETERS
    .new storageType:VIRTUAL_STORAGE_TYPE
    .new vhdHandle:HANDLE = NULL
    .new userMeta:SAMPLE_METADATA
    .new uniqueId:GUID
    .new status:DWORD = ERROR_SUCCESS

    .if (VHDPath == NULL)

        mov status,ERROR_INVALID_PARAMETER
        jmp Cleanup
    .endif

    ;;
    ;; Specify UNKNOWN for both device and vendor so the system will use the
    ;; file extension to determine the correct VHD format.
    ;;

    mov storageType.DeviceId,VIRTUAL_STORAGE_TYPE_DEVICE_UNKNOWN
    mov storageType.VendorId,VIRTUAL_STORAGE_TYPE_VENDOR_UNKNOWN

    ;;
    ;; Only V2 handles can be used to query/set/delete user metadata.
    ;;

    memset(&openParameters, 0, sizeof(openParameters))
    mov openParameters.Version,OPEN_VIRTUAL_DISK_VERSION_2

    ;;
    ;; Open the VHD/VHDX.
    ;;
    ;; VIRTUAL_DISK_ACCESS_NONE is the only acceptable access mask for V2 handle opens.
    ;; OPEN_VIRTUAL_DISK_FLAG_NO_PARENTS indicates the parent chain should not be opened.
    ;;

    mov status,OpenVirtualDisk(
        &storageType,
        VHDPath,
        VIRTUAL_DISK_ACCESS_NONE,
        OPEN_VIRTUAL_DISK_FLAG_NO_PARENTS,
        &openParameters,
        &vhdHandle)

    .if (status != ERROR_SUCCESS)

        jmp Cleanup
    .endif

    ;;
    ;; The specified ID is used as the contents of the metadata but any structure could be
    ;; used.
    ;;

    mov userMeta.ID,ID

    ;;
    ;; This GUID is arbitrary and any GUID can be utilized.
    ;;

    mov uniqueId.Data1,0x34a631f3
    mov uniqueId.Data2,0xa39d
    mov uniqueId.Data3,0x4e45
    mov uniqueId.Data4[0],0xbb
    mov uniqueId.Data4[1],0x2e
    mov uniqueId.Data4[2],0x98
    mov uniqueId.Data4[3],0xcf
    mov uniqueId.Data4[4],0x2d
    mov uniqueId.Data4[5],0xfe
    mov uniqueId.Data4[6],0x4f
    mov uniqueId.Data4[7],0x3d

    mov status,SetVirtualDiskMetadata(
        vhdHandle,
        &uniqueId,
        sizeof(userMeta),
        &userMeta)

Cleanup:

    .if (status == ERROR_SUCCESS)

        wprintf(L"success\n")
    .else
        wprintf(L"error = %u\n", status)
    .endif

    .if (vhdHandle != INVALID_HANDLE_VALUE)

        CloseHandle(vhdHandle)
    .endif

    .return status

SampleSetUserMetaData endp

    end
