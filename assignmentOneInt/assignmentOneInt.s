section .data
    val db 255

section .text
  global _start
  _start:
    mov rax, 0x3c
    mov rdi, [val]
    syscall