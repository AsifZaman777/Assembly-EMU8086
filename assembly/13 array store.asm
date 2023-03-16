
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
arr dw 0 0 0 0

.code  

mov ax, 0df8eh
mov cx, 0a3b9h

div cx   

mov arr,dx
mov ax,0
mov ax,arr



ret




