section .data
msg db 'Hello NASM!!!!!'
len equ 15

section .text
global _start
_start:
mov eax, 4
mov edx, len
mov ecx, msg
int 0x80
mov eax, 1
mov ebx, 0
int 0x80

