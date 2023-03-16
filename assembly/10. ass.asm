
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
 A DW 3
 B DW 2
 
.code  
MOV AX,A
MOV CX,B

ADD AX,CX
MUL AX  ; 25 (A+B)^2

MOV BX,AX
MOV AX,0

MOV AX,4 
MUL A
MUL B

SUB BX,AX


ret




