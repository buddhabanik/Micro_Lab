.MODEL SMALL
.STACK 100H
.DATA
A   DB   8,2,4,9,3,7
COUNT DW  5
 
.CODE
MAIN PROC                                        
                                                
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AX,1
    MOV CX,2
    
    L1:
      MUL CX  
    LOOP L1
    
    
    
    MOV AH,2 
    ADD AX,48
    MOV DX,AX
    INT 21H  
             
    EXIT:
    MOV AH,4CH
    END MAIN
MAIN ENDP    
    
    
    




