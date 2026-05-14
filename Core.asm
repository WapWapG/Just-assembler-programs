section .text
global _start
_start:
mov ah, 00h
int 10h
mov ah, 0Bh
mov bh, 01h
int 10h
