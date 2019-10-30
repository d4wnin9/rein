global _start

section .data
  retval db '1', 0x0A
  retval_len equ $ - retval
section .text

_start:
  mov rax, 1
  mov rdi, 1
  mov rsi, retval
  mov rdx, retval_len
  syscall

  mov rax, 60
  mov rdi, 1
  syscall
