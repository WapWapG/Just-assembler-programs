section .text
global start
;указываем 16-битный режим
[bits 16]
[org 0x7C00]
start:
mov ax, 0
mov ds, ax
mov es, ax
mov ss, ax
;Инит видео
mov ah, 00h
int 10h
;Заполняю оставшиеся пространство
times 510-($-$$) db 0
dw 0AA55h
