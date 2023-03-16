.model small
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1 ; INPUT VALUE //STORED IN AL
    INT 21H   ; INTERUPT 
    MOV BL,AL  ; AL SHOULD BE EMPTY FOR NEXT INPUT
    
    MOV AH,1
    INT 21H 
    
    SUB BL,AL
    ADD BL,48 ; TYPE CASTING   
 
     
    MOV AH,2  ;OUTPUT
       
    ;VERTICAL GAP
    MOV DL,0Dh
    INT 21H
    MOV DL,0Ah
    INT 21H  
    
    MOV DL,BL ; DATA REGISTER ENTRY (without data register we can not see any result) 
    INT 21H
              
    MAIN ENDP
END MAIN

    
    
    