
include stdio.inc
include twindow.inc

extern IDD_DZPanelOptions:ptr TResource

    .code

    assume rcx:ptr TWindow

WndProc proc private hwnd:ptr TWindow, uiMsg:uint_t, wParam:size_t, lParam:ptr

    .switch edx
      .case WM_CHAR
        .endc
      .case WM_CREATE
        [rcx].Show()
        [rcx].SetFocus(6)
        .return 0
      .case WM_CLOSE
        .if [rcx].GetFocus()
            mov rcx,rax
            [rcx].Send(WM_KILLFOCUS, 0, 0)
        .endif
        .return hwnd.Release()
    .endsw
    [rcx].DefWindowProc(edx, r8, r9)
    ret

WndProc endp


PanelOptions proc uses rcx hwnd:ptr TWindow

    mov rcx,[rcx].Resource(IDD_DZPanelOptions)
    [rcx].Register(&WndProc)
    ret

PanelOptions endp


cmain proc hwnd:ptr TWindow, argc:int_t, argv:array_t, environ:array_t

    PanelOptions(rcx)
    printf("result: %d\n", eax)
    xor eax,eax
    ret

cmain endp

    end
