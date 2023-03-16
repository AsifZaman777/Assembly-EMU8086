
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.DATA
ARRML DW 0  0
.CODE
MOV CX,9AFH
MOV BX, 0F5B6H

MOV AX,CX
MOV CX,0
MOV CX,15
IMUL CX   ; 15*CX STORE AX

MOV ARRML,AX
MOV AX,0 ; 15*CX IS IN ARRML

MOV AX,BX
MOV BX,0
MOV BX,25
MUL BX ; 25*BX IN AX


ADD AX,ARRML

ret




