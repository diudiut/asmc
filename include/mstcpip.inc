ifndef _MSTCPIP_
_MSTCPIP_ equ <>

include windef.inc

if (NTDDI_VERSION GE NTDDI_WIN7)
DEFINE_GUID(SOCKET_DEFAULT2_QM_POLICY,0xaec2ef9c,0x3a4d,0x4d3e,0x88,0x42,0x23,0x99,0x42,0xe3,0x9a,0x47)
DEFINE_GUID(REAL_TIME_NOTIFICATION_CAPABILITY,0x6b59819a,0x5cae,0x492d,0xa9,0x01,0x2a,0x3c,0x2c,0x50,0x16,0x4f)
endif

ifndef GUID_DEFS_ONLY

include winapifamily.inc
include nldef.inc

ifndef _TRANSPORT_SETTING_COMMON_
_TRANSPORT_SETTING_COMMON_ equ <>

TRANSPORT_SETTING_ID	STRUC
Guid			GUID <>
TRANSPORT_SETTING_ID	ENDS
PTRANSPORT_SETTING_ID	typedef ptr TRANSPORT_SETTING_ID

endif

tcp_keepalive		STRUC
onoff			ULONG ?
keepalivetime		ULONG ?
keepaliveinterval	ULONG ?
tcp_keepalive		ENDS

CONTROL_CHANNEL_TRIGGER_STATUS	typedef SDWORD
PCONTROL_CHANNEL_TRIGGER_STATUS typedef ptr SDWORD

CONTROL_CHANNEL_TRIGGER_STATUS_INVALID equ 0
CONTROL_CHANNEL_TRIGGER_STATUS_SOFTWARE_SLOT_ALLOCATED equ 1
CONTROL_CHANNEL_TRIGGER_STATUS_HARDWARE_SLOT_ALLOCATED equ 2
CONTROL_CHANNEL_TRIGGER_STATUS_POLICY_ERROR equ 3
CONTROL_CHANNEL_TRIGGER_STATUS_SYSTEM_ERROR equ 4
CONTROL_CHANNEL_TRIGGER_STATUS_TRANSPORT_DISCONNECTED equ 5
CONTROL_CHANNEL_TRIGGER_STATUS_SERVICE_UNAVAILABLE equ 6

CONTROL_CHANNEL_TRIGGER_STATUS_MAX equ CONTROL_CHANNEL_TRIGGER_STATUS_SYSTEM_ERROR

REAL_TIME_NOTIFICATION_SETTING_INPUT STRUC
TransportSettingId	TRANSPORT_SETTING_ID <>
BrokerEventGuid		GUID <>
REAL_TIME_NOTIFICATION_SETTING_INPUT ENDS
PREAL_TIME_NOTIFICATION_SETTING_INPUT typedef ptr REAL_TIME_NOTIFICATION_SETTING_INPUT

REAL_TIME_NOTIFICATION_SETTING_OUTPUT STRUC
ChannelStatus		CONTROL_CHANNEL_TRIGGER_STATUS ?
REAL_TIME_NOTIFICATION_SETTING_OUTPUT ENDS
PREAL_TIME_NOTIFICATION_SETTING_OUTPUT typedef ptr REAL_TIME_NOTIFICATION_SETTING_OUTPUT

SIO_RCVALL		equ _WSAIOW(IOC_VENDOR,1)
SIO_RCVALL_MCAST	equ _WSAIOW(IOC_VENDOR,2)
SIO_RCVALL_IGMPMCAST	equ _WSAIOW(IOC_VENDOR,3)
SIO_KEEPALIVE_VALS	equ _WSAIOW(IOC_VENDOR,4)
SIO_ABSORB_RTRALERT	equ _WSAIOW(IOC_VENDOR,5)
SIO_UCAST_IF		equ _WSAIOW(IOC_VENDOR,6)
SIO_LIMIT_BROADCASTS	equ _WSAIOW(IOC_VENDOR,7)
SIO_INDEX_BIND		equ _WSAIOW(IOC_VENDOR,8)
SIO_INDEX_MCASTIF	equ _WSAIOW(IOC_VENDOR,9)
SIO_INDEX_ADD_MCAST	equ _WSAIOW(IOC_VENDOR,10)
SIO_INDEX_DEL_MCAST	equ _WSAIOW(IOC_VENDOR,11)

SIO_RCVALL_MCAST_IF	equ _WSAIOW(IOC_VENDOR,13)
SIO_RCVALL_IF		equ _WSAIOW(IOC_VENDOR,14)
SIO_LOOPBACK_FAST_PATH	equ _WSAIOW(IOC_VENDOR,16)
SIO_TCP_INITIAL_RTO	equ _WSAIOW(IOC_VENDOR,17)
SIO_APPLY_TRANSPORT_SETTING equ _WSAIOW(IOC_VENDOR,19)
SIO_QUERY_TRANSPORT_SETTING equ _WSAIOW(IOC_VENDOR,20)
SIO_TCP_SET_ICW		equ _WSAIOW(IOC_VENDOR,22)
SIO_TCP_SET_ACK_FREQUENCY equ _WSAIOW(IOC_VENDOR,23)

RCVALL_VALUE		typedef SDWORD
RCVALL_OFF		equ 0
RCVALL_ON		equ 1
RCVALL_SOCKETLEVELONLY	equ 2
RCVALL_IPLEVEL		equ 3
RCVALL_MAX		equ RCVALL_IPLEVE

RCVALL_IF		STRUC
Mode			RCVALL_VALUE ?
Interface		ULONG ?
RCVALL_IF		ENDS
PRCVALL_IF		typedef ptr RCVALL_IF

TCP_INITIAL_RTO_UNSPECIFIED_RTT equ (-1)
TCP_INITIAL_RTO_UNSPECIFIED_MAX_SYN_RETRANSMISSIONS equ (-1)

TCP_INITIAL_RTO_DEFAULT_RTT equ (0)
TCP_INITIAL_RTO_DEFAULT_MAX_SYN_RETRANSMISSIONS equ (0)

TCP_INITIAL_RTO_PARAMETERS  STRUC
Rtt			dw ?
MaxSynRetransmissions	db ?
TCP_INITIAL_RTO_PARAMETERS ENDS
PTCP_INITIAL_RTO_PARAMETERS typedef ptr TCP_INITIAL_RTO_PARAMETERS

TCP_ICW_LEVEL		typedef SDWORD
PTCP_ICW_LEVEL		typedef ptr SDWORD
TCP_ICW_LEVEL_DEFAULT	equ 0
TCP_ICW_LEVEL_HIGH	equ 1

TCP_ICW_PARAMETERS	STRUC
Level			TCP_ICW_LEVEL ?
TCP_ICW_PARAMETERS	ENDS
PTCP_ICW_PARAMETERS	typedef ptr TCP_ICW_PARAMETERS

TCP_ACK_FREQUENCY_PARAMETERS  STRUC
TcpDelayedAckFrequency	db ?
TCP_ACK_FREQUENCY_PARAMETERS ENDS
PTCP_ACK_FREQUENCY_PARAMETERS typedef ptr TCP_ACK_FREQUENCY_PARAMETERS

SIO_ACQUIRE_PORT_RESERVATION equ _WSAIOW(IOC_VENDOR, 100)
SIO_RELEASE_PORT_RESERVATION equ _WSAIOW(IOC_VENDOR, 101)
SIO_ASSOCIATE_PORT_RESERVATION equ _WSAIOW(IOC_VENDOR, 102)

INET_PORT_RANGE		STRUC
StartPort		dw ?
NumberOfPorts		dw ?
INET_PORT_RANGE		ENDS
PINET_PORT_RANGE	typedef ptr INET_PORT_RANGE

INET_PORT_RESERVATION  typedef INET_PORT_RANGE
PINET_PORT_RESERVATION typedef ptr INET_PORT_RANGE

INET_PORT_RESERVATION_TOKEN STRUC
Token			ULONG64 ?
INET_PORT_RESERVATION_TOKEN ENDS
PINET_PORT_RESERVATION_TOKEN typedef ptr INET_PORT_RESERVATION_TOKEN

INVALID_PORT_RESERVATION_TOKEN equ (0)

INET_PORT_RESERVATION_INSTANCE STRUC
INET_PORT_RESERVATION_INSTANCE ENDS
PINET_PORT_RESERVATION_INSTANCE typedef ptr INET_PORT_RESERVATION_INSTANCE

INET_PORT_RESERVATION_INFORMATION STRUC
AssignmentCount		ULONG ?
OwningPid		ULONG ?
INET_PORT_RESERVATION_INFORMATION ENDS
PINET_PORT_RESERVATION_INFORMATION typedef ptr INET_PORT_RESERVATION_INFORMATION


ifdef _WS2DEF_
if (NTDDI_VERSION GE NTDDI_VISTA)
if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

_SECURE_SOCKET_TYPES_DEFINED_ equ <>

SIO_SET_SECURITY	equ _WSAIOW(IOC_VENDOR, 200)
SIO_QUERY_SECURITY	equ _WSAIORW(IOC_VENDOR, 201)
SIO_SET_PEER_TARGET_NAME equ _WSAIOW(IOC_VENDOR, 202)
SIO_DELETE_PEER_TARGET_NAME equ _WSAIOW(IOC_VENDOR, 203)

SIO_QUERY_WFP_CONNECTION_REDIRECT_RECORDS equ _WSAIOW(IOC_VENDOR, 220)
SIO_QUERY_WFP_CONNECTION_REDIRECT_CONTEXT equ _WSAIOW(IOC_VENDOR, 221)
SIO_SET_WFP_CONNECTION_REDIRECT_RECORDS equ _WSAIOW(IOC_VENDOR, 222)

SIO_SOCKET_USAGE_NOTIFICATION equ _WSAIOW(IOC_VENDOR, 204)
SOCKET_USAGE_TYPE	typedef SDWORD
SYSTEM_CRITICAL_SOCKET	equ 1

SOCKET_SECURITY_PROTOCOL typedef SDWORD
SOCKET_SECURITY_PROTOCOL_DEFAULT equ 0
SOCKET_SECURITY_PROTOCOL_IPSEC equ 1
if (NTDDI_VERSION GE NTDDI_WIN7)
SOCKET_SECURITY_PROTOCOL_IPSEC2 equ 2
endif
SOCKET_SECURITY_PROTOCOL_INVALID equ 3

SOCKET_SETTINGS_GUARANTEE_ENCRYPTION equ 0x1
SOCKET_SETTINGS_ALLOW_INSECURE equ 0x2

SOCKET_SECURITY_SETTINGS STRUC
SecurityProtocol	SOCKET_SECURITY_PROTOCOL ?
SecurityFlags		ULONG ?
SOCKET_SECURITY_SETTINGS ENDS

SOCKET_SETTINGS_IPSEC_SKIP_FILTER_INSTANTIATION equ 0x1
if (NTDDI_VERSION GE NTDDI_WIN7)
SOCKET_SETTINGS_IPSEC__PEER_NAME_VERIFICATION equ 0x2
SOCKET_SETTINGS_IPSEC_ALLOW_FIRST_INBOUND_PKT_UNENCRYPTED equ 0x4
SOCKET_SETTINGS_IPSEC_PEER_NAME_IS_RAW_FORMAT equ 0x8
endif

SOCKET_SECURITY_SETTINGS_IPSEC STRUC
SecurityProtocol	SOCKET_SECURITY_PROTOCOL ?
SecurityFlags		ULONG ?
IpsecFlags		ULONG ?
AuthipMMPolicyKey	GUID <>
AuthipQMPolicyKey	GUID <>
Reserved		GUID <>
Reserved2		UINT64 ?
UserNameStringLen	ULONG ?
DomainNameStringLen	ULONG ?
PasswordStringLen	ULONG ?
AllStrings		wchar_t 0 dup(?)
SOCKET_SECURITY_SETTINGS_IPSEC ENDS

SOCKET_PEER_TARGET_NAME STRUC
SecurityProtocol	SOCKET_SECURITY_PROTOCOL ?
PeerAddress		SOCKADDR_STORAGE <>
PeerTargetNameStringLen ULONG ?
AllStrings		wchar_t 0 dup(?)
SOCKET_PEER_TARGET_NAME ENDS

SOCKET_SECURITY_QUERY_TEMPLATE STRUC
SecurityProtocol	SOCKET_SECURITY_PROTOCOL ?
PeerAddress		SOCKADDR_STORAGE <>
PeerTokenAccessMask	ULONG ?
SOCKET_SECURITY_QUERY_TEMPLATE ENDS

if (NTDDI_VERSION GE NTDDI_WIN7)

SOCKET_QUERY_IPSEC2_ABORT_CONNECTION_ON_FIELD_CHANGE equ 0x1

SOCKET_QUERY_IPSEC2_FIELD_MASK_MM_SA_ID equ 0x1
SOCKET_QUERY_IPSEC2_FIELD_MASK_QM_SA_ID equ 0x2

SOCKET_SECURITY_QUERY_TEMPLATE_IPSEC2 STRUC
SecurityProtocol	SOCKET_SECURITY_PROTOCOL ?
PeerAddress		SOCKADDR_STORAGE <>
PeerTokenAccessMask	ULONG ?
Flags			ULONG ?
FieldMask		ULONG ?
SOCKET_SECURITY_QUERY_TEMPLATE_IPSEC2 ENDS
endif

SOCKET_INFO_CONNECTION_SECURED equ 0x1
SOCKET_INFO_CONNECTION_ENCRYPTED equ 0x2
SOCKET_INFO_CONNECTION_IMPERSONATED equ 0x4

SOCKET_SECURITY_QUERY_INFO STRUC
SecurityProtocol	SOCKET_SECURITY_PROTOCOL ?
Flags			ULONG ?
PeerApplicationAccessTokenHandle UINT64 ?
PeerMachineAccessTokenHandle UINT64 ?
SOCKET_SECURITY_QUERY_INFO ENDS

if (NTDDI_VERSION GE NTDDI_WIN7)

SOCKET_SECURITY_QUERY_INFO_IPSEC2 STRUC
SecurityProtocol	SOCKET_SECURITY_PROTOCOL ?
Flags			ULONG ?
PeerApplicationAccessTokenHandle UINT64 ?
PeerMachineAccessTokenHandle UINT64 ?
MmSaId			UINT64 ?
QmSaId			UINT64 ?
NegotiationWinerr	UINT32 ?
SaLookupContext		GUID <>
SOCKET_SECURITY_QUERY_INFO_IPSEC2 ENDS

endif

SIO_QUERY_WFP_ALE_ENDPOINT_HANDLE equ _WSAIOR(IOC_VENDOR, 205)

endif ;; WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

SIO_QUERY_RSS_SCALABILITY_INFO equ _WSAIOR(IOC_VENDOR, 210)

RSS_SCALABILITY_INFO	STRUC
RssEnabled		BOOLEAN ?
RSS_SCALABILITY_INFO	ENDS
PRSS_SCALABILITY_INFO	typedef ptr RSS_SCALABILITY_INFO

endif ;; (NTDDI_VERSION GE NTDDI_VISTA)

IN4_CLASSA macro i
	exitm<(((i) AND 0x00000080) EQ 0)>
	endm
IN4_CLASSB macro i
	exitm<(((i) AND 0x000000c0) EQ 0x00000080)>
	endm
IN4_CLASSC macro i
	exitm<(((i) AND 0x000000e0) EQ 0x000000c0)>
	endm
IN4_CLASSD macro i
	exitm<(((i) AND 0x000000f0) EQ 0x000000e0)>
	endm
IN4_MULTICAST macro i
	exitm<IN4_CLASSD(i)>
	endm

IN4ADDR_ANY		equ INADDR_ANY
IN4ADDR_LOOPBACK	equ 0x0100007f
IN4ADDR_BROADCAST	equ INADDR_BROADCAST
IN4ADDR_NONE		equ INADDR_NONE
IN4ADDR_ANY_INIT	equ <{ 0 }>
IN4ADDR_LOOPBACK_INIT	equ <{ 0x7f, 0, 0, 1 }>
IN4ADDR_BROADCAST_INIT	equ <{ 0xff, 0xff, 0xff, 0xff }>
IN4ADDR_ALLNODESONLINK_INIT equ <{ 0xe0, 0, 0, 1 }>
IN4ADDR_ALLROUTERSONLINK_INIT equ <{ 0xe0, 0, 0, 2 }>
IN4ADDR_ALLIGMPV3ROUTERSONLINK_INIT equ <{ 0xe0, 0, 0, 0x16 }>
IN4ADDR_ALLTEREDONODESONLINK_INIT equ <{ 0xe0, 0, 0, 0xfd }>
IN4ADDR_LINKLOCALPREFIX_INIT equ <{ 0xa9, 0xfe, }>
IN4ADDR_MULTICASTPREFIX_INIT equ <{ 0xe0, }>

IN4ADDR_LOOPBACKPREFIX_LENGTH equ 8
IN4ADDR_LINKLOCALPREFIX_LENGTH equ 16
IN4ADDR_MULTICASTPREFIX_LENGTH equ 4

INET_IS_ALIGNED macro Pointer, T
	exitm<((Pointer & (sizeof(T)-1)) EQ 0)>
	endm

endif ;; _WS2DEF_


ifdef _WS2IPDEF_

endif ;; _WS2IPDEF_

;endif ;; (NTDDI_VERSION GE NTDDI_WIN2KSP1)


ifndef __IP2STRING__
__IP2STRING__ equ <>

if (NTDDI_VERSION GE NTDDI_VISTA)

ifdef _WS2DEF_

;PSTR
RtlIpv4AddressToStringA proto WINAPI :ptr, :ptr

;LONG
RtlIpv4AddressToStringExA proto WINAPI \
		      : ptr,
		  Port: WORD,
	 AddressString: LPSTR,
   AddressStringLength: PULONG


;PWSTR
RtlIpv4AddressToStringW proto WINAPI \
		      : ptr,
		      : ptr

;LONG
RtlIpv4AddressToStringExW proto WINAPI \
		      : ptr,
		  Port: WORD,
	 AddressString: LPWSTR,
   AddressStringLength: PULONG


;LONG
RtlIpv4StringToAddressA proto WINAPI \
		     S: LPCSTR,
		Strict: BOOLEAN,
	    Terminator: ptr LPCSTR,
		      : ptr


;LONG
RtlIpv4StringToAddressExA proto WINAPI \
	 AddressString: PCSTR,
		Strict: BOOLEAN,
		      : ptr,
		  Port: PUSHORT


;LONG
RtlIpv4StringToAddressW proto WINAPI \
		     S: PCWSTR,
		Strict: BOOLEAN,
	    Terminator: ptr LPCWSTR,
		      : ptr


;LONG
RtlIpv4StringToAddressExW proto WINAPI \
	 AddressString: PCWSTR,
		Strict: BOOLEAN,
		      : ptr,
		  Port: PUSHORT


ifdef _UNICODE
RtlIpv4AddressToString	equ <RtlIpv4AddressToStringW>
RtlIpv4StringToAddress	equ <RtlIpv4StringToAddressW>
RtlIpv4AddressToStringEx equ <RtlIpv4AddressToStringExW>
RtlIpv4StringToAddressEx equ <RtlIpv4StringToAddressExW>
else
RtlIpv4AddressToString	equ <RtlIpv4AddressToStringA>
RtlIpv4StringToAddress	equ <RtlIpv4StringToAddressA>
RtlIpv4AddressToStringEx equ <RtlIpv4AddressToStringExA>
RtlIpv4StringToAddressEx equ <RtlIpv4StringToAddressExA>
endif ;; UNICODE

endif ;;_WS2DEF_

ifdef _WS2IPDEF_

;PSTR
RtlIpv6AddressToStringA proto WINAPI \
		      : ptr,
		      : ptr

;LONG
RtlIpv6AddressToStringExA proto WINAPI \
		      : ptr,
	       ScopeId: ULONG,
		  Port: USHORT,
	 AddressString: PSTR,
   AddressStringLength: PULONG


;PWSTR
RtlIpv6AddressToStringW proto WINAPI \
		      : ptr,
		      : ptr

;LONG
RtlIpv6AddressToStringExW proto WINAPI \
		      : ptr,
	       ScopeId: ULONG,
		  Port: USHORT,
	 AddressString: PWSTR,
   AddressStringLength: PULONG


;LONG
RtlIpv6StringToAddressA proto WINAPI \
		     S: PCSTR,
	    Terminator: ptr PCSTR,
		      : ptr


;LONG
RtlIpv6StringToAddressExA proto WINAPI \
	 AddressString: PCSTR,
		      : ptr,
	       ScopeId: PULONG,
		  Port: PUSHORT

;LONG
RtlIpv6StringToAddressW proto WINAPI \
		     S: PCWSTR,
	    Terminator: ptr PCWSTR,
		      : ptr


;LONG
RtlIpv6StringToAddressExW proto WINAPI \
	 AddressString: PCWSTR,
		      : ptr,
	       ScopeId: PULONG,
		  Port: PUSHORT


ifdef _UNICODE
RtlIpv6AddressToString	equ <RtlIpv6AddressToStringW>
RtlIpv6StringToAddress	equ <RtlIpv6StringToAddressW>
RtlIpv6StringToAddressEx equ <RtlIpv6StringToAddressExW>
RtlIpv6AddressToStringEx equ <RtlIpv6AddressToStringExW>
else
RtlIpv6AddressToString	equ <RtlIpv6AddressToStringA>
RtlIpv6StringToAddress	equ <RtlIpv6StringToAddressA>
RtlIpv6StringToAddressEx equ <RtlIpv6StringToAddressExA>
RtlIpv6AddressToStringEx equ <RtlIpv6AddressToStringExA>
endif ;; UNICODE

endif ;; __WS2IPDEF__

ifdef _WS2DEF_

;PDL_EUI48		typedef ptr ;DL_EUI48

;PSTR
RtlEthernetAddressToStringA proto WINAPI \
		      : ptr,
		      : ptr

;PWSTR
RtlEthernetAddressToStringW proto WINAPI \
		      : ptr,
		      : ptr

;LONG
RtlEthernetStringToAddressA proto WINAPI \
		     S: PCSTR,
	    Terminator: ptr PCSTR,
		   Adr: ptr DL_EUI48


;LONG
RtlEthernetStringToAddressW proto WINAPI \
		     S: PCWSTR,
	    Terminator: ptr LPCWSTR,
		   Adr: ptr DL_EUI48


ifdef _UNICODE
RtlEthernetAddressToString equ <RtlEthernetAddressToStringW>
RtlEthernetStringToAddress equ <RtlEthernetStringToAddressW>
else
RtlEthernetAddressToString equ <RtlEthernetAddressToStringA>
RtlEthernetStringToAddress equ <RtlEthernetStringToAddressA>
endif ;; UNICODE

endif ;;_WS2DEF_

endif ;; (NTDDI GE NTDDI_VISTA)
endif ;; __IP2STRING__

endif ;; GUID_DEFS_ONLY
endif ;; NOT _MSTCPIP_

