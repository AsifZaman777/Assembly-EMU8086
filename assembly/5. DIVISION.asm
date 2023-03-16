
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV DX,0
MOV AX,8003H
MOV CX, 100H
DIV CX   ; AX=0080 DX= 3       



ret 




