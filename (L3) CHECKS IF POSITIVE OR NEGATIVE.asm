.model small
.stack 100h
.data
MSG1 DB 'POSITIVE$'
MSG2 DB 'NEGATIVE$'
MSG3 DB 'ZERO$' 

 A db ? 
new_line DB 10,13,'$'
.code

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV AH,1       ;TAKING INPUT
    INT 21H

COMPARE:
    CMP AL,48
    JG LEBEL1       ;JUMP IF GREATER
    JL LEBEL2       ;JUMP IF LESS
    JE LEBEL3       ;JUMP IF EQUAL

    
LEBEL1:
    MOV AH,9
    LEA DX,MSG1      ;PRINTS MSG1
    INT 21H
    JMP EXIT    
    
LEBEL2:
    MOV AH,9
    LEA DX,MSG2      ;PRINTS MSG2
    INT 21H
    JMP EXIT 
    
LEBEL3:
    MOV AH,9
    LEA DX,MSG3       ;PRINTS MSG3
    INT 21H
    JMP EXIT     
    
       
EXIT:MOV AH,4CH
    INT 21H
       
    MAIN ENDP
END MAIN      
 
