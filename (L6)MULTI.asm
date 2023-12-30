.model small
.stack 100h
.data
.code

MAIN PROC 
    
    MOV BX, 0AEh        ;STORE AE IN BX
    MOV AL,10h          ;STORE 10 IN AL
    MUL BX              ;MULTIPLIES AND STORES IN AX
    
    
    
    

    MOV BX,AX           ;MOV AX TO BX
    MOV CX,4            ;RUN THE LOOP 4 TIME
    MOV AH,2
    
COMPARE:
    MOV DL,BH     ;MOVE TO DL 
     
    SHR DL,4      ;RIGHT SHIFT DL
    SHL BX,4      ;LEFT SHIFT BX 
           
    CMP DL,9
    JLE DIGIT
    

    
LETTER:
    ADD DL,55
    
    INT 21H       ;PRINTS HEXA 
    JMP LEBEL_LOOP  
    
DIGIT:
    ADD DL,48
    INT 21H       ;PRINTS HEXA
       
      
    


LEBEL_LOOP:
    LOOP COMPARE      
    
EXIT:    
    MAIN ENDP
END MAIN      
 
