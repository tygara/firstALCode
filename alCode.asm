section .data
  line1 db "I came,", 10  ; 10 is ASCII for newline
  len1 equ $ - line1      ; length of line 1  

  line2 db "I saw,", 10
  len2 equ $ - line2      ; length of line1

  line3 db "I conquered.", 10
  len3 equ $ - line3


section .text
  global _start

_start:
  ; Print line1
  mov eax, 4              ; syscall number for sys_write
  mov ebx, 1              ; file descriptor 1 = stdout
  mov ecx, line1          ; address of string to print
  mov edx, len1           ; length of the string
  int 0x80

  ; Print line2
  mov eax, 4              ; syscall number for sys_write
  mov ebx, 1              ; file descriptor 1 = stdout
  mov ecx, line2          ; address of string to print
  mov edx, len2           ; length of the string
  int 0x80

  ; Print line3
  mov eax, 4              ; syscall number for sys_write
  mov ebx, 1              ; file descriptor 1 = stdout
  mov ecx, line3          ; address of string to print
  mov edx, len3           ; length of the string
  int 0x80

  ; Exit the program
  mov eax, 1              ; syscall number for sys_exit
  xor ebx, ebx            ; return 0 status
  int 0x80
