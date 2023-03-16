.model small
.stack 100h ;100h byte declaration 
                                              
 
.data ; data segment (variable declaration)          
 msg db 'Hello world $'  ;$means the end of string

.code
main proc ; main function
    
    ;give permission to access the data segment
    mov ax,@data
    mov ds,ax
    
    ;printing 
     
    mov ah,09 ;09 is used for output of string
    lea dx,msg
    int 21h ;show output
    
    main endp
end main
    