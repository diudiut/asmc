include winapifamily.inc

if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

if defined(PNRP_USE_V1_API) AND defined(PNRP_USE_V2_API)
.err <Conflicting versioning macros are defined>
endif

if(_WIN32_WINNT GE 0x0600)
if NOT defined(PNRP_USE_V1_API)
if NOT defined(PNRP_USE_V2_API)
PNRP_USE_V2_API equ 1
endif
endif
else
if NOT defined(PNRP_USE_V2_API)
if NOT defined(PNRP_USE_V1_API)
PNRP_USE_V1_API equ 1
endif
endif
endif ;; _WIN32_WINNT GE 0x0600


PNRP_MAX_ENDPOINT_ADDRESSES equ (10)

WSZ_SCOPE_GLOBAL	equ <L"GLOBAL">
WSZ_SCOPE_SITELOCAL	equ <L"SITELOCAL">
WSZ_SCOPE_LINKLOCAL	equ <L"LINKLOCAL">

PNRP_SCOPE		typedef SDWORD
PNRP_SCOPE_ANY		equ 0
PNRP_GLOBAL_SCOPE	equ 1
PNRP_SITE_LOCAL_SCOPE	equ 2
PNRP_LINK_LOCAL_SCOPE	equ 3

PNRP_CLOUD_STATE	typedef SDWORD
PNRP_CLOUD_STATE_VIRTUAL	equ 0
PNRP_CLOUD_STATE_SYNCHRONISING	equ 1
PNRP_CLOUD_STATE_ACTIVE		equ 2
PNRP_CLOUD_STATE_DEAD		equ 3
PNRP_CLOUD_STATE_DISABLED	equ 4
PNRP_CLOUD_STATE_NO_NET		equ 5
PNRP_CLOUD_STATE_ALONE		equ 6

PNRP_CLOUD_FLAGS	typedef SDWORD
PNRP_CLOUD_NO_FLAGS	equ 0
PNRP_CLOUD_NAME_LOCAL	equ 1
PNRP_CLOUD_RESOLVE_ONLY equ 2
PNRP_CLOUD_FULL_PARTICIPANT equ 4

PNRP_REGISTERED_ID_STATE typedef SDWORD
PNRP_REGISTERED_ID_STATE_OK equ 1
PNRP_REGISTERED_ID_STATE_PROBLEM equ 2

PNRP_RESOLVE_CRITERIA	typedef SDWORD
PNRP_RESOLVE_CRITERIA_DEFAULT equ 0
PNRP_RESOLVE_CRITERIA_REMOTE_PEER_NAME equ 1
PNRP_RESOLVE_CRITERIA_NEAREST_REMOTE_PEER_NAME equ 2
PNRP_RESOLVE_CRITERIA_NON_CURRENT_PROCESS_PEER_NAME equ 3
PNRP_RESOLVE_CRITERIA_NEAREST_NON_CURRENT_PROCESS_PEER_NAME equ 4
PNRP_RESOLVE_CRITERIA_ANY_PEER_NAME equ 5
PNRP_RESOLVE_CRITERIA_NEAREST_PEER_NAME equ 6

PNRP_CLOUD_ID		STRUC
AddressFamily		SINT ?
Scope			PNRP_SCOPE ?
ScopeId			ULONG ?
PNRP_CLOUD_ID		ENDS
PPNRP_CLOUD_ID		typedef ptr PNRP_CLOUD_ID


PNRP_EXTENDED_PAYLOAD_TYPE	typedef SDWORD
PNRP_EXTENDED_PAYLOAD_TYPE_NONE		equ 0
PNRP_EXTENDED_PAYLOAD_TYPE_BINARY	equ 1
PNRP_EXTENDED_PAYLOAD_TYPE_STRING	equ 2

PNRP_MAX_EXTENDED_PAYLOAD_BYTES		equ (0x1000)

endif ;; WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
