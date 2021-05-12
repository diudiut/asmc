;
; v2.30.20 - .enum
;
ifndef __ASMC64__
    .x64
    .model flat
endif
    .code
    option casemap:none

    .enum
        y,
        n

    .enum C {
        a,
        b
    }

    .enum Day {
         Sat=1, Sun, Mon, Tue, Wed, Thu, Fri }


    .enum { a, b }
    .enum x : byte { A=5, B }

    mov al,y
    mov al,n
    mov al,a
    mov al,b
    mov al,Sat
    mov al,Sun
    mov al,Mon
    mov al,Tue
    mov al,Wed
    mov al,Thu
    mov al,Fri
    mov al,A
    mov al,B

    end
