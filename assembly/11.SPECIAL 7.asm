
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
A DW 4
B DW 5

.CODE
MOV AX,4
MUL B

MOV BX,AX ; STORING 20 IN BX
MOV AX,0; AX EMPTY

MOV AX,B
MUL B   ; 25 STORING IN AX

ADD AX,BX ; (A+B^2)
MUL AX    ; (A+B^2)^2

MOV BX,0
MOV BX,AX;  (A+B^2)^2 STORE AT BX

MOV AX,0; AX EMPTY NOW  
MOV AX,4
MUL A
MOV CX,4
MUL CX  ; 4A^2 IN AX

SUB BX,AX ; (A+B^2)^2 -  4A^2 IN BX

MOV AX,0 
MOV CX,0

MOV CX,9
MOV AX,CX
MUL A
MUL B   ; 9AB IN AX

ADD BX,AX ; FINAL VALUE STORED IN BX

MOV AX,0
MOV CX,0



ret




