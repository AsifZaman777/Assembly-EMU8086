

org 100h
    
    mov     ax, 1h
    mov     cx, 0ah 
    mov     dx, 0
Label1:
    add     dx,ax
    inc     ax   
    loop    Label1   
ret




