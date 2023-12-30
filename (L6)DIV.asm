.model small
.stack 100h
.data 
  

.code

MAIN PROC 
    
    MOV AX,3A0H        ;STORE AE IN AX
    MOV BL,10H
    DIV BL              ;DEVIDES AND STORES IN AX
    

    MOV BH,AL           ;MOV AL TO BH
    MOV CX,2            ;RUN THE LOOP 2 TIME
    MOV CH,AH           ;STORES THE REMINDER IN CH
    
    
COMPARE:
    MOV DL,BH     ;MOVE TO DL 
    SHR DL,4      ;RIGHT SHIFT DL
    SHL BX,4      ;LEFT SHIFT BX 
           
    CMP DL,9      ;compare to 9
    JLE DIGIT     ;jumps if less than or equal
    

    
LETTER:
    ADD DL,55
    MOV AH,2
    INT 21H       ;PRINTS HEXA 
    JMP LEBEL_LOOP  
    
DIGIT:
    ADD DL,48
    MOV AH,2
    INT 21H       ;PRINTS HEXA
        

LEBEL_LOOP:
    LOOP COMPARE
    
    
    

NEWLINE:    
    MOV AH, 2                    
    MOV DL, 0DH          
    INT 21H 
    
    MOV DL, 0AH                
    INT 21H      ;NEW LINE
    
            
REMINDER:    
    MOV DL,CH
    ADD DL,48       ;PRINTS THE REMINDER
    MOV AH,2
    INT 21H
        
    
EXIT:    
    MAIN ENDP
END MAIN      
 
