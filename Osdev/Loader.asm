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
;сброс позиции курсора
mov ah, 02h
mov dh, 0
mov dl, 2
int 10h
;Попытка вывода "H"
mov ah, 0Ah
mov al, 'H'
mov cx, 1
int 10h
;Обновление позиции курсора
mov ah, 03h
int 10h
add dl, 1
mov ah, 02h
int 10h
;Попытка вывода "e"
mov ah, 0Ah
mov al, 'e'
mov cx, 1
int 10h
;Обновление позиции курсора
mov ah, 03h
int 10h
add dl, 1
mov ah, 02h
int 10h
;Попытка вывода "l"
mov ah, 0Ah
mov al, 'l'
mov cx, 1
int 10h
;Обновление позиции курсора
mov ah, 03h
int 10h
add dl, 1
mov ah, 02h
int 10h
;Попытка вывода "l"
mov ah, 0Ah
mov al, 'l'
mov cx, 1
int 10h
;Обновление позиции курсора
mov ah, 03h
int 10h
add dl, 1
mov ah, 02h
int 10h
;Попытка вывода "o"
mov ah, 0Ah
mov al, 'o'
mov cx, 1
int 10h
;Обновление позиции курсора
mov ah, 03h
int 10h
add dl, 1
mov ah, 02h
int 10h
;Заполняю оставшиеся пространство
times 510-($-$$) db 0
dw 0AA55h
