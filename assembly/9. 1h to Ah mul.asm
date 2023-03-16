
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt



org 100h
mov dx,0  
mov ax,1h  
mov cx, 0Ah  

counter:
  
mul cx 
loop counter  

ret  



