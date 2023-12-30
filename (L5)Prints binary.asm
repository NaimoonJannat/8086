.model small
.stack 100h
.data
.code

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV BH,85H   
    
    MOV CX,8
    
ROTATION:
    ROL BH,1     ;Right Rotation   
    JC LEBEL1    ;JUMPS IF 1
    JNC LEBEL2   ;JUMPS IF 0
    
LEBEL1:
    MOV AH,2
    MOV DL,49
    INT 21H       ;PRINTS 1
    JMP LEBEL3   
    
LEBEL2:
    MOV AH,2
    MOV DL,48
    INT 21H       ;PRINTS 0
 
LEBEL3:
    LOOP ROTATION ;LOOP
        
    
EXIT:    
    MAIN ENDP
END MAIN      
 
