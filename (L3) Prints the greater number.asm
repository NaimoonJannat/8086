

.model small
.stack 100h
.data
.code

MAIN PROC 
    
    MOV AL,48
    MOV BL,50
    
    CMP AL,BL  ;COMPARES AL AND BL
    JL LEBEL1  ;JUMPS TO LEBEL1 IF AL IS GREATER
    
    MOV AH,2
    MOV DL,AL
    INT 21H    ;PRINTS AL
    JMP EXIT
    

    
LEBEL1:
    MOV AH,2
    MOV DL,BL   ;PRINTS BL   
    INT 21H
    

       
EXIT:MOV AH,4CH
    INT 21H
       
    MAIN ENDP
END MAIN      
 
