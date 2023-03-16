
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV DX,0
MOV AX,8A0H
MOV CX,1B2H
IMUL CX 

ret




