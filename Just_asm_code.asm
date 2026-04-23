section .data
msg db 'Hello NASM!!!!!         '
ms1 db 'What you say? I am dont know how make if!                 '
len equ 15
lennew equ 50

section .text
global _start
_start:
;Write msg
mov eax, 4
mov edx, len
mov ecx, msg
int 0x80
;Read what user write
mov eax, 3
int 0x80
;Write ms1
mov eax, 4
mov edx, lennew
mov ecx, ms1
int 0x80
;Quit
mov eax, 1
mov ebx, 0
int 0x80

