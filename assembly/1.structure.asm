.MODEL SMALL 
.STACK 100H 
.DATA 
;VARIABLE      
 A DB 0AH, 0DH, "Name: Jim, Jamin Rahman$" 
 B DB 0AH, 0DH, "ID: 20-42732-1$" 
 C DB 0AH, 0DH, "Dept: BSc CSE$"   
 D DB 0AH, 0DH, "Course: Computer Organization and Architecture$" 
 
 .CODE 
  MAIN PROC          
    MOV AX,@DATA     
    MOV DS, AX          
    
    ;name    
     MOV AH,9     
     LEA DX,A     
     INT 21H          
     
     ;NEW LINE     
     MOV AH,2     
     MOV DL,10     
     INT 21H     
     MOV DL,13     
     INT 21H         
     
     ;id   
     MOV AH,9     
     LEA DX,B     
     INT 21H          
          
     MOV AH,2     
     MOV DL,10     
     INT 21H     
     MOV DL,13     
     INT 21H         
     
     ;dept   
     MOV AH,9     
     LEA DX,C    
     INT 21H          
          
     MOV AH,2     
     MOV DL,10     
     INT 21H     
     MOV DL,13     
     INT 21H         
     
     ;course 
     MOV AH,9     
     LEA DX,D    
     INT 21H          
     
     ;NEW LINE     
     MOV AH,2     
     MOV DL,10     
     INT 21H     
     MOV DL,13     
     INT 21H          
     
     


