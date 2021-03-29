WIN32_LEAN_AND_MEAN equ 1
include windows.inc
include graph.inc

    .data

    hwnd    HANDLE 0
    stop    UINT 0
    delay   UINT 5

    .code

    assume rsi:ptr Graphics

ThrdProc proc uses rsi rdi rbx

  local hdc:HDC

    mov hdc,GetDC(hwnd)
    mov rsi,g

    .while !stop

        .while [rsi].flags & _G_SUSPENDED

            Sleep(2)
        .endw

        .if [rsi].flags & _G_UPDATE

            mov edi,[rsi].Getmaxx()
            mov ebx,[rsi].Getmaxy()
            and [rsi].flags,not _G_UPDATE

            SetDIBitsToDevice(
                hdc, 0, 0, edi, ebx, 0, 0, 0, ebx, [rsi].winptr, &[rsi].bmi, DIB_RGB_COLORS )
        .else

            [rsi].MoveObjects()

            or [rsi].flags,_G_UPDATE
            Sleep(delay)

        .endif

    .endw
    ReleaseDC(hwnd, hdc)
    ret

ThrdProc endp

    assume rsi:nothing

WndProc proc hWnd:HWND, message:UINT, wParam:WPARAM, lParam:LPARAM

    .switch rdx
    .case WM_SIZE
        .endc .if r8d == SIZE_MINIMIZED
        g.Suspend()
        mov r8,lParam
        movzx edx,r8w
        shr r8d,16
        g.Setsize(edx, r8d)
        g.Resume()
        .endc

    .case WM_KEYDOWN
        .switch r8d
        .case VK_SPACE
            .endc
        .case VK_RETURN
            g.Suspend()
            g.HideObjects()
            g.InitObjects()
            g.Resume()
            .endc
        .case VK_ESCAPE
            .gotosw(1:WM_CLOSE)
        .case VK_F1
            .gotosw(1:WM_RBUTTONDOWN)
        .case VK_UP
            .if delay
                dec delay
            .endif
            .endc
        .case VK_DOWN
            .if delay < 16
                inc delay
            .endif
            .endc
        .case VK_RIGHT
            .endc
        .endsw
        .endc

    .case WM_RBUTTONDOWN
        MessageBox(hWnd,
            "Random colour, count, speed, and size.\n\n"
            "Up:\tFast.\n"
            "Down:\tSlow.\n"
            "Enter:\tReset.\n"
            "Escape:\tExit the program.",
            "Random(pcg32)", MB_OK)
        .endc

    .case WM_LBUTTONDOWN
        .endc

    .case WM_CLOSE
    .case WM_DESTROY
        mov stop,1
        Sleep(10)
        PostQuitMessage(0)
        .endc

    .default
        .return DefWindowProc( rcx, edx, r8, r9 )
    .endsw
    xor eax,eax
    ret

WndProc endp

WinMain proc hInstance:HINSTANCE, hPrevInstance:HINSTANCE, lpCmdLine:LPSTR, nShowCmd:SINT

  local wc:WNDCLASSEX, msg:MSG, idThread:UINT, rc:RECT

    mov wc.cbSize,          WNDCLASSEX
    mov wc.style,           CS_HREDRAW or CS_VREDRAW or CS_BYTEALIGNCLIENT
    mov wc.lpfnWndProc,     &WndProc
    mov wc.cbClsExtra,      0
    mov wc.cbWndExtra,      0
    mov wc.hInstance,       rcx
    mov wc.hbrBackground,   COLOR_MENUTEXT
    mov wc.lpszMenuName,    NULL
    mov wc.lpszClassName,   &@CStr("WndClass")
    mov wc.hIcon,           LoadIcon(0, 500)
    mov wc.hIconSm,         rax
    mov wc.hCursor,         LoadCursor(0, IDC_ARROW)

    .return .ifd !RegisterClassEx(&wc)
    .return .if !CreateWindowEx(
                    WS_EX_OVERLAPPEDWINDOW,
                    "WndClass",
                    "Random(pcg32)",
                    WS_OVERLAPPEDWINDOW,
                    CW_USEDEFAULT,
                    CW_USEDEFAULT,
                    CW_USEDEFAULT,
                    CW_USEDEFAULT,
                    NULL,
                    NULL,
                    hInstance,
                    0)

    mov hwnd,rax
    GetClientRect(hwnd, &rc)
    Graphics::Graphics(&g)
    ShowWindow(hwnd, SW_SHOWNORMAL)
    UpdateWindow(hwnd)
    CreateThread(NULL, NULL, &ThrdProc, NULL, NORMAL_PRIORITY_CLASS, &idThread)
    CloseHandle(rax)

    .while GetMessage(&msg, 0, 0, 0)

        TranslateMessage(&msg)
        DispatchMessage(&msg)
    .endw
    mov rax,msg.wParam
    ret

WinMain endp

    end
