.model small
.stack 100h
.data
.code

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV BX, 0473H       ;initializing BX
      
    
    SHL BH,4            ;SHIFT LEFT BH = 40
    SHL BL,4            ;SHIFT LEFT BL = 30
    SHR BL,4            ;SHIFT RIGHT BL = 03
    
    OR BL,BH            ;BL OR BH = C
    
LEBEL1:
    MOV DL,BL
    MOV AH,2
     int 21h   ;printing output
      
      
    
EXIT:    
    MAIN ENDP
END MAIN      
 
