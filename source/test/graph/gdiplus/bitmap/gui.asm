include windows.inc
include gdiplus.inc
include tchar.inc

    .data
    hBitmap HBITMAP 0

    .code

WndProc proc hWnd:HWND, message:UINT, wParam:WPARAM, lParam:LPARAM

    .switch edx

    .case WM_CREATE

       .new gdiplus:GdiPlus()
       .new bitmap:Bitmap(L"image.png")

        bitmap.GetHBITMAP(0, &hBitmap)
        bitmap.Release()
        gdiplus.Release()
        .endc

    .case WM_PAINT

        .new ps:PAINTSTRUCT
        .new hdc:HDC
        .new hMemDC:HANDLE
        .new bm:BITMAP

        mov hdc,BeginPaint(rcx, &ps)
        mov hMemDC,CreateCompatibleDC(rax)

        SelectObject(rax, hBitmap)
        GetObject(hBitmap, BITMAP, &bm)
        BitBlt(hdc, 0, 0, bm.bmWidth, bm.bmHeight, hMemDC, 0, 0, SRCCOPY)
        DeleteDC(hMemDC)
        EndPaint(hWnd, &ps)
        .endc

    .case WM_DESTROY
        DeleteObject(hBitmap)
        PostQuitMessage(0)
        .endc
    .case WM_CHAR
        .gotosw(WM_DESTROY) .if r8d == VK_ESCAPE
        .endc
    .default
        .return DefWindowProc(rcx, edx, r8, r9)
    .endsw
    xor eax,eax
    ret

WndProc endp

_tWinMain proc WINAPI hInstance:HINSTANCE, hPrevInstance:HINSTANCE, lpCmdLine:LPTSTR, nShowCmd:SINT

  local wc:WNDCLASSEX, msg:MSG, hwnd:HANDLE

    xor eax,eax
    mov wc.cbSize,          WNDCLASSEX
    mov wc.style,           CS_HREDRAW or CS_VREDRAW
    mov wc.cbClsExtra,      eax
    mov wc.cbWndExtra,      eax
    mov wc.hbrBackground,   COLOR_WINDOW+1
    mov wc.lpszMenuName,    rax
    mov wc.hInstance,       hInstance
    mov wc.lpfnWndProc,     &WndProc
    mov wc.lpszClassName,   &@CStr("BitmapClass")
    mov wc.hIcon,           LoadIcon(0, IDI_APPLICATION)
    mov wc.hIconSm,         rax
    mov wc.hCursor,         LoadCursor(0, IDC_ARROW)

    .ifd RegisterClassEx(&wc)

        .if CreateWindowEx(0, "BitmapClass", "Bitmap from file", WS_OVERLAPPEDWINDOW,
                CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, NULL, NULL, hInstance, 0)

            mov hwnd,rax
            ShowWindow(hwnd, SW_SHOWNORMAL)
            UpdateWindow(hwnd)
            .while GetMessage(&msg,0,0,0)
                TranslateMessage(&msg)
                DispatchMessage(&msg)
            .endw
            mov rax,msg.wParam
        .endif
    .endif
    ret

_tWinMain endp

    end _tstart
