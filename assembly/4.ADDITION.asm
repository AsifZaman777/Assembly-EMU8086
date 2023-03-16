.model small
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AL,2
    MOV BL,AL
    
    MOV AL,3
    
    ADD BL,AL
    ADD BL,48
    
    MOV AH,2
    MOV DL, BL
    INT 21H
    
    MAIN ENDP
END MAIN





