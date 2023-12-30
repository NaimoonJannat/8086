.model small
.stack 100h
.data
MSG1 DB 'I am a student$'
 A db ? 
new_line DB 10,13,'$'
.code

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV CX, 48       ;initializing the value to 0
      
LEBEL0:
    
    CMP CX,52
    JG EXIT           ;using loop
    
LEBEL1:
    MOV AH,9
    LEA DX,MSG1
    INT 21H 
    
    LEA DX,new_line
    MOV AH,9
    INT 21h      ;printing new line
     
    INC CX        ;incrementing 1
    JMP LEBEL0 
    
    
    
EXIT:    
    MAIN ENDP
END MAIN      
 
