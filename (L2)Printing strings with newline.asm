;input and output

.model small                                                                                  ;code,data,stack,extra (segmented memory)
.stack 100h
.data                                                                                         ;newline=10d /Ah
    msg1 db "HELLO WORLD!!",10,13,'$'                                                                   ;carrage return= 13d/Dh
    msg2 db "THIS IS 8086!!$"                                                                                     
                                                                                      
.code                                                                                         
    main proc
                                                                                                      
        
        ;initialize ds                                                                      
        mov ax,@data
        mov ds,ax                                                                               
        
       
        mov ah,9
        lea dx,msg1
        int 21h     ;oputput msg1 
        
        
        mov ah,9
        lea dx,msg2
        int 21h      ;output msg2
        
        
       
        
        
        EXIT:
        main endp
        end main
        