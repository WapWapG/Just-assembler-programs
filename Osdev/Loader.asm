section .text
global start
;указываем 16-битный режим
;We indicate 16 bits mode
[bits 16]
[org 0x7C00]
start:
mov ax, 0
mov ds, ax
mov es, ax
mov ss, ax
;Инит видео
;Init video
mov ah, 00h
int 10h
;сброс позиции курсора
;Reset position of cursor
mov ah, 02h
mov dh, 0
mov dl, 2
int 10h
;Попытка вывода "H"
;Try write "H"
mov ah, 0Ah
mov al, 'H'
mov cx, 1
int 10h
;Обновление позиции курсора
;Update сursor
mov ah, 03h
int 10h
add dl, 1
mov ah, 02h
int 10h
;Попытка вывода "e"
;Translate up
mov ah, 0Ah
mov al, 'e'
mov cx, 1
int 10h
;Обновление позиции курсора
;Translate up
mov ah, 03h
int 10h
add dl, 1
mov ah, 02h
int 10h
;Попытка вывода "l"
;Translate up
mov ah, 0Ah
mov al, 'l'
mov cx, 1
int 10h
;Обновление позиции курсора
;Translate up
mov ah, 03h
int 10h
add dl, 1
mov ah, 02h
int 10h
;Попытка вывода "l"
;Translate up
mov ah, 0Ah
mov al, 'l'
mov cx, 1
int 10h
;Обновление позиции курсора
;Translate up
mov ah, 03h
int 10h
add dl, 1
mov ah, 02h
int 10h
;Попытка вывода "o"
;Translate up
mov ah, 0Ah
mov al, 'o'
mov cx, 1
int 10h
;Обновление позиции курсора
;Translate up
mov ah, 03h
int 10h
add dl, 1
mov ah, 02h
int 10h
;Заполняю оставшиеся пространство
;Filling all space
times 510-($-$$) db 0
dw 0AA55h
