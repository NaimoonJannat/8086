;NAME: NAIMOON JANNAT PRAPTI
;ID: 2157CSE00922
;BATCH: 57

.model small
.stack 100h
.data
A db ?
B db ?
Diff db ?  


.code

main proc
    mov ax,@data
    mov ds,ax
    
    ;intructions 
    
    ONE:      ;input a
    mov ah,1
    int 21h
    
    mov A,al 
    
    TWO:      ;print newline
    MOV AH, 2                    
    MOV DL, 0DH          
    INT 21H 
    
    MOV DL, 0AH                
    INT 21H
               
    THREE:     ;input b
    MOV AH, 1   
    INT 21H     
    MOV B, AL 
    
    OUTPUT:
    MOV AH, 2                    
    MOV DL, 0DH          
    INT 21H
    
    MOV DL, 0AH                  
    INT 21H          ;print newline
    
    
   
    
    MOV DL,A
    MOV AH,2
    INT 21H
    
    MOV DL,B
    MOV AH,2
    INT 21H
    
     
    
     
    
    ;Exit
    
    mov ax,4c00h
    int 21h  
main endp
end main
    
    