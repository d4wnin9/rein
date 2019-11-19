section .data
    var1 db 4

    var2 db 2

    var3 db 8

section .text

  global _start

  _start:
    mov rcx, [var1]
    cmp rcx, [var2]
    jg check_third_var
    mov rcx, [var2]

  check_third_var:
    cmp rcx, [var3]
    jg _exit
    mov rcx, [var3]

  _exit:
    mov rax, 0x3c
    mov rdi, rcx
    syscall