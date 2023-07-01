  global _start
	bits 64

CR equ 0x0D
LF equ 0x0A

; -----------------------------------------------------------------------------
; TEXT
	section .text
; -----------------------------------------------------------------------------
_start:
  mov   rbx, rsp                ; save stack pointer
  mov   rdx, -9                 ; syscall code = debugPrintChar
  mov   rsi, 0                  ; info
  mov   r12, 0                  ; reply
  mov   rdi,  CR                ; dest = character to be printed
  syscall
  mov   rdi,  LF                ; dest = character to be printed
  syscall
  mov   rdi,  'H'               ; dest = character to be printed
  syscall
  mov   rdi,  'e'               ; dest = character to be printed
  syscall
  mov   rdi,  'l'               ; dest = character to be printed
  syscall
  mov   rdi,  'l'               ; dest = character to be printed
  syscall
  mov   rdi,  'o'               ; dest = character to be printed
  syscall
  mov   rdi,  ','               ; dest = character to be printed
  syscall
  mov   rdi,  ' '               ; dest = character to be printed
  syscall
  mov   rdi,  'W'               ; dest = character to be printed
  syscall
  mov   rdi,  'o'               ; dest = character to be printed
  syscall
  mov   rdi,  'r'               ; dest = character to be printed
  syscall
  mov   rdi,  'l'               ; dest = character to be printed
  syscall
  mov   rdi,  'd'               ; dest = character to be printed
  syscall
  mov   rdi,  '!'               ; dest = character to be printed
  syscall
  mov   rdi,  CR                ; dest = character to be printed
  syscall
  mov   rdi,  LF                ; dest = character to be printed
  syscall
  mov   rdi,  CR                ; dest = character to be printed
  syscall
  mov   rdi,  LF                ; dest = character to be printed
  syscall
  mov   rsp, rbx                ; restore stack pointer
halt:
  jmp halt
  hlt                           ; seL4 doen't actually let us halt
