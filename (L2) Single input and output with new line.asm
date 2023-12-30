.model small
.stack 100h
.data

A db ? 
new_line DB 10,13,'$'

.code
Main proc 
    
    ;initialize
    mov ax,@data
    mov ds,ax  
    
     
    ;instructions
     mov ah,1
     int 21h   ;input 
     
     mov A,al
     
     lea dx,new_line
     mov ah,9
     int 21h   ;printing new line
     
     mov dl,A
     mov ah,2
     int 21h   ;printing output
     
                     
    ;exit to DOS
    mov ax, 4C00h
    int 21h
 Main endp
      end main              
      
     