;
; https://github.com/microsoft/Windows-classic-samples/tree/master/Samples/
;    Win7Samples/multimedia/Direct2D/Direct2DHelloWorld
;
include Direct2DHelloWorld.inc

    .code

;;
;; Provides the entry point to the application.
;;
wWinMain proc hInstance:HINSTANCE, hPrevInstance:HINSTANCE, lpCmdLine:LPWSTR, inCmdShow:int_t

  local vtable:DemoAppVtbl

    ;; Ignore the return value because we want to run the program even in the
    ;; unlikely event that HeapSetInformation fails.

    HeapSetInformation(NULL, HeapEnableTerminationOnCorruption, NULL, 0)

    CoInitialize(NULL)
    .if (SUCCEEDED(eax))

        .new app:DemoApp(&vtable)

        app.Initialize()

        .if (SUCCEEDED(eax))

            app.RunMessageLoop()
        .endif
        CoUninitialize()
    .endif
    xor eax,eax
    ret

wWinMain endp

;;
;; Initialize members.
;;

DemoApp::DemoApp proc uses rdi vtable:ptr

    mov [rcx].DemoApp.lpVtbl,rdx
    lea rdi,[rcx+8]
    xor eax,eax
    mov ecx,(DemoApp - 8) / 8
    rep stosq
    mov rdi,rdx
    for q,<Release,
           Initialize,
           RunMessageLoop,
           CreateDeviceIndependentResources,
           CreateDeviceResources,
           DiscardDeviceResources,
           OnRender,
           OnResize>
        lea rax,DemoApp_&q
        stosq
        endm
    ret

DemoApp::DemoApp endp

;;
;; Release resources.
;;
    assume rsi:ptr DemoApp

DemoApp::Release proc uses rsi

    mov rsi,rcx
    SafeRelease(&[rsi].m_pD2DFactory, ID2D1Factory)
    SafeRelease(&[rsi].m_pDWriteFactory, IDWriteFactory)
    SafeRelease(&[rsi].m_pRenderTarget, ID2D1HwndRenderTarget)
    SafeRelease(&[rsi].m_pTextFormat, IDWriteTextFormat)
    SafeRelease(&[rsi].m_pBlackBrush, ID2D1SolidColorBrush)
    ret

DemoApp::Release endp


;;
;; Creates the application window and initializes
;; device-independent resources.
;;
DemoApp::Initialize proc uses rsi

  local hr:HRESULT
  local wcex:WNDCLASSEX
  local dpiX:FLOAT, dpiY:FLOAT

    mov rsi,rcx

    ;; Initialize device-indpendent resources, such
    ;; as the Direct2D factory.

    mov hr,[rsi].CreateDeviceIndependentResources()

    .if (SUCCEEDED(hr))

        ;; Register the window class.
        mov wcex.cbSize,        WNDCLASSEX
        mov wcex.style,         CS_HREDRAW or CS_VREDRAW
        mov wcex.lpfnWndProc,   &WndProc
        mov wcex.cbClsExtra,    0
        mov wcex.cbWndExtra,    sizeof(LONG_PTR)
        mov wcex.hInstance,     HINST_THISCOMPONENT
        mov wcex.hIcon,         NULL
        mov wcex.hIconSm,       NULL
        mov wcex.hbrBackground, NULL
        mov wcex.lpszMenuName,  NULL
        mov wcex.hCursor,       LoadCursor(NULL, IDC_ARROW)
        mov wcex.lpszClassName, &@CStr(L"D2DDemoApp")
        RegisterClassEx(&wcex)

        ;; Create the application window.
        ;;
        ;; Because the CreateWindow function takes its size in pixels, we
        ;; obtain the system DPI and use it to scale the window size.

        mov rcx,[rsi].m_pD2DFactory
        [rcx].ID2D1Factory.GetDesktopDpi(&dpiX, &dpiY)

        movss xmm0,dpiX
        mulss xmm0,640.0
        divss xmm0,96.0
        ceilf(xmm0)
        cvtss2si eax,xmm0
        mov dpiX,eax

        movss xmm0,dpiY
        mulss xmm0,480.0
        divss xmm0,96.0
        ceilf(xmm0)
        cvtss2si eax,xmm0
        mov dpiY,eax

        mov [rsi].m_hwnd,CreateWindowEx(0, L"D2DDemoApp", L"Direct2D Demo Application",
            WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT, dpiX, dpiY, NULL, NULL,
            HINST_THISCOMPONENT, rsi)

        mov eax,S_OK
        .if rax == [rsi].m_hwnd
            mov eax,E_FAIL
        .endif
        mov hr,eax
        .if (SUCCEEDED(eax))

            ShowWindow([rsi].m_hwnd, SW_SHOWNORMAL)
            UpdateWindow([rsi].m_hwnd)
        .endif
    .endif

    .return hr

DemoApp::Initialize endp


;;
;; Create resources which are not bound
;; to any device. Their lifetime effectively extends for the
;; duration of the app. These resources include the Direct2D and
;; DirectWrite factories,  and a DirectWrite Text Format object
;; (used for identifying particular font characteristics).
;;

DemoApp::CreateDeviceIndependentResources proc uses rsi rdi

    local hr:HRESULT
    local pSink:ptr ID2D1GeometrySink

    mov rsi,rcx
    mov pSink,NULL

    ;; Create a Direct2D factory.
    mov hr,D2D1CreateFactory(D2D1_FACTORY_TYPE_SINGLE_THREADED,
            &IID_ID2D1Factory, NULL, &[rsi].m_pD2DFactory)

    .if (SUCCEEDED(hr))

        ;; Create a DirectWrite factory.
        mov hr,DWriteCreateFactory(DWRITE_FACTORY_TYPE_SHARED,
                &IID_IDWriteFactory, &[rsi].m_pDWriteFactory)

    .endif
    .if (SUCCEEDED(hr))

        ;; Create a DirectWrite text format object.

        mov rcx,[rsi].m_pDWriteFactory
        mov hr,[rcx].IDWriteFactory.CreateTextFormat("Verdana", NULL, DWRITE_FONT_WEIGHT_NORMAL,
            DWRITE_FONT_STYLE_NORMAL, DWRITE_FONT_STRETCH_NORMAL, 50.0, "", &[rsi].m_pTextFormat)
    .endif
    .if (SUCCEEDED(hr))

        ;; Center the text horizontally and vertically.
        mov rdi,[rsi].m_pTextFormat
        [rdi].IDWriteTextFormat.SetTextAlignment(DWRITE_TEXT_ALIGNMENT_CENTER)
        [rdi].IDWriteTextFormat.SetParagraphAlignment(DWRITE_PARAGRAPH_ALIGNMENT_CENTER)

    .endif

    SafeRelease(&pSink, ID2D1GeometrySink)

    .return hr

DemoApp::CreateDeviceIndependentResources endp

;;
;;  This method creates resources which are bound to a particular
;;  Direct3D device. It's all centralized here, in case the resources
;;  need to be recreated in case of Direct3D device loss (eg. display
;;  change, remoting, removal of video card, etc).
;;
DemoApp::CreateDeviceResources proc uses rsi

  local hr:HRESULT
  local rc:RECT
  local size:D2D1_SIZE_U

    mov hr,S_OK
    mov rsi,rcx

    .if (![rsi].m_pRenderTarget)

        GetClientRect([rsi].m_hwnd, &rc)

        mov eax,rc.right
        sub eax,rc.left
        mov size.width,eax
        mov eax,rc.bottom
        sub eax,rc.top
        mov size.height,eax

        ;; Create a Direct2D render target.

        mov rdi,D2D1::RenderTargetProperties()
        mov r8,D2D1::HwndRenderTargetProperties([rsi].m_hwnd, size)
        mov rcx,[rsi].m_pD2DFactory
        mov hr,[rcx].ID2D1Factory.CreateHwndRenderTarget(rdi, r8, &[rsi].m_pRenderTarget)

        .if (SUCCEEDED(hr))

            ;; Create a black brush.

            mov rdx,D3DCOLORVALUE(Black, 1.0)
            mov rcx,[rsi].m_pRenderTarget
            mov hr,[rcx].ID2D1HwndRenderTarget.CreateSolidColorBrush(rdx, NULL, &[rsi].m_pBlackBrush)
        .endif
    .endif

    .return hr

DemoApp::CreateDeviceResources endp

;;
;;  Discard device-specific resources which need to be recreated
;;  when a Direct3D device is lost
;;
DemoApp::DiscardDeviceResources proc uses rsi

    mov rsi,rcx
    SafeRelease(&[rsi].m_pRenderTarget, ID2D1HwndRenderTarget)
    SafeRelease(&[rsi].m_pBlackBrush, ID2D1SolidColorBrush)
    ret

DemoApp::DiscardDeviceResources endp

;;
;; The main window message loop.
;;
DemoApp::RunMessageLoop proc

  local msg:MSG

    .while GetMessage(&msg, NULL, 0, 0)

        TranslateMessage(&msg)
        DispatchMessage(&msg)
    .endw
    ret

DemoApp::RunMessageLoop endp


;;
;;  Called whenever the application needs to display the client
;;  window. This method writes "Hello, World"
;;
;;  Note that this function will not render anything if the window
;;  is occluded (e.g. when the screen is locked).
;;  Also, this function will automatically discard device-specific
;;  resources if the Direct3D device disappears during function
;;  invocation, and will recreate the resources the next time it's
;;  invoked.
;;

DemoApp::OnRender proc uses rsi rdi

  local renderTargetSize:D2D1_SIZE_F
  local hr:HRESULT

    mov rsi,rcx
    mov hr,[rsi].CreateDeviceResources()
    mov rdi,[rsi].m_pRenderTarget

    assume rdi:ptr ID2D1HwndRenderTarget

    [rdi].CheckWindowState()

    .if (SUCCEEDED(hr) && !(eax & D2D1_WINDOW_STATE_OCCLUDED))

        ;; Retrieve the size of the render target.

        [rdi].GetSize(&renderTargetSize)
        [rdi].BeginDraw()
        [rdi].SetTransform(Matrix3x2F::Identity())
        [rdi].Clear(D3DCOLORVALUE(White, 1.0))

        mov r10,D2D1::RectF(0.0, 0.0, renderTargetSize.width, renderTargetSize.height)
        [rdi].DrawText("Hello, World!", 13, [rsi].m_pTextFormat,
            r10, [rsi].m_pBlackBrush, D2D1_DRAW_TEXT_OPTIONS_NONE, DWRITE_MEASURING_MODE_NATURAL )

        mov hr,[rdi].EndDraw(NULL, NULL)

        .if (hr == D2DERR_RECREATE_TARGET)

            mov hr,S_OK
            [rsi].DiscardDeviceResources()
        .endif
    .endif
    .return hr

DemoApp::OnRender endp

;;
;;  If the application receives a WM_SIZE message, this method
;;  resizes the render target appropriately.
;;
DemoApp::OnResize proc width:UINT, height:UINT

  local size:D2D1_SIZE_U

    mov rcx,[rcx].DemoApp.m_pRenderTarget
    .if rcx

        mov size.width,edx
        mov size.height,r8d

        ;; Note: This method can fail, but it's okay to ignore the
        ;; error here -- it will be repeated on the next call to
        ;; EndDraw.

        [rcx].ID2D1HwndRenderTarget.Resize(size)
    .endif
    ret

DemoApp::OnResize endp


;;
;; The window message handler.
;;
WndProc proc hwnd:HWND, message:UINT, wParam:WPARAM, lParam:LPARAM

  local result:LRESULT
  local pDemoApp:ptr DemoApp
  local wasHandled:BOOL

    mov wasHandled,FALSE
    mov result,0

    .if edx == WM_CREATE

        mov r8,[r9].CREATESTRUCT.lpCreateParams
        SetWindowLongPtrW(rcx, GWLP_USERDATA, PtrToUlong(r8))
        mov result,1

    .else

        mov pDemoApp,GetWindowLongPtrW(rcx, GWLP_USERDATA)

        .if pDemoApp

            .switch message

            .case WM_SIZE

                movzx edx,word ptr lParam
                movzx r8d,word ptr lParam[2]
                pDemoApp.OnResize(edx, r8d)

                mov wasHandled,TRUE
                mov result,0
                .endc

            .case WM_PAINT
            .case WM_DISPLAYCHANGE

                .new ps:PAINTSTRUCT

                BeginPaint(hwnd, &ps)
                pDemoApp.OnRender()
                EndPaint(hwnd, &ps)

                mov wasHandled,TRUE
                mov result,0
                .endc

            .case WM_DESTROY
                PostQuitMessage(0)
                mov wasHandled,TRUE
                mov result,1
                .endc
            .endsw
        .endif

        .if !wasHandled

            mov result,DefWindowProc(hwnd, message, wParam, lParam)
        .endif
    .endif

    .return result

WndProc endp

    end _tstart