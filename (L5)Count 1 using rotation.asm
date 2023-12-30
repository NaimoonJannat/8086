.model small
.stack 100h
.data
MSG1 DB 'The number of 1 is: $'
.code

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV BH,85H   
    
    XOR AL,AL    ;Clearing AL
    MOV CX,8
    
ROTATION:
    ROR BH,1     ;Right Rotation
    JNC LEBEL2
    INC AL       ;AL+1
    
    
LEBEL2: 
    LOOP ROTATION
    

PRINT:
    MOV AH,2
    MOV DL,AL
    ADD DL,48
    INT 21H      ;PRINTING THE NUMBER
     
      
EXIT:    
    MAIN ENDP
END MAIN      
 
