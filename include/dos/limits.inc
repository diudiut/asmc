
define CHAR_BIT		8 ; number of bits in a char
ifdef _CHAR_UNSIGNED
define CHAR_MAX		255
define CHAR_MIN		0
else
define CHAR_MAX		127
define CHAR_MIN		(-127-1)
endif
define SCHAR_MAX	127
define SCHAR_MIN	(-127-1)
define UCHAR_MAX	255

define _I8_MIN		(-127-1)
define _I8_MAX		127
define _UI8_MAX		0xff
define _I16_MIN		(-32767-1)
define _I16_MAX		32767
define _UI16_MAX	0xFFFF
define _I32_MIN		(-2147483647-1)
define _I32_MAX		2147483647
define _UI32_MAX	0xFFFFFFFF
define _I64_MIN		(-9223372036854775807-1)
define _I64_MAX		9223372036854775807
define _UI64_MAX	0xFFFFFFFFFFFFFFFF

define MB_LEN_MAX	2
define SHRT_MAX		0x7FFF
define SHRT_MIN		(-32767-1)
define USHRT_MAX	0xFFFF
define INT_MAX		2147483647
define INT_MIN		(-2147483647-1)
define UINT_MAX		0xFFFFFFFF
define LONG_MAX		2147483647
define LONG_MIN		(-2147483647-1)
define ULONG_MAX	0xFFFFFFFF
define LLONG_MAX	9223372036854775807
define LLONG_MIN	(-9223372036854775807-1)
define ULLONG_MAX	0xFFFFFFFFFFFFFFFF

ifndef SIZE_MAX
ifdef _WIN64
define SIZE_MAX _UI64_MAX
else
define SIZE_MAX UINT_MAX
endif
endif
