global _start  ; _startというシンボルを外部に公開

section .text  ; プログラムのtext領域がここから始まることの宣言

_start:
  ; exit system call (Linux / x86)
mov eax, 1 ; system call id
mov ebx, 0 ; return code
int 0x80 ; soft interrupt
