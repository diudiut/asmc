include windows.inc
include commctrl.inc
include tchar.inc

    .code

_tmain proc

    MessageBox( NULL, "Hello World", "Dialog(0)", MB_OK )
    ret

_tmain  endp

    end _tstart
