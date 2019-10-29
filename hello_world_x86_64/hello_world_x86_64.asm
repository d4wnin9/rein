global _start

section .data
  msg db 'Hello, World!', 0x0A  ; 0x0A == \n
  msg_len equ $ - msg

section .text

_start:
  ; write system call (Linux / x86_64)
  mov rax, 1
  mov rdi, 1
  mov rsi, msg
  mov rdx, msg_len
  syscall

  ; exit system call (Linux / x86_64)
  mov rax, 60
  mov rdi, 0
  syscall
