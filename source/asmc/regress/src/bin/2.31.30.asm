
    ; : public template

    .x64
    .model flat, fastcall

    option casemap:none
    option win64:auto

.template template

    atom        db ?

    template    proc :ptr
    Release     proc

    .ends

.class class : public template

    class       proc :ptr

    .ends

    .code

main proc

  local T:template
  local C:class

    mov C.lpVtbl,rax    ; lpVtbl added to class
    mov C.atom,al

    ret

main endp

    end
