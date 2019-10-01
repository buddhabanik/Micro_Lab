.MODEL SMALL
.STACK 100H
.DATA
A   DB   8,2,4,9,3,7
EX1 DW  ?
EX2 DW  ?

 
.CODE
MAIN PROC                                        
                                                
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AX,1
    MOV CX,5
    
    L1:
      MUL CX  
    LOOP L1
    
    MOV BX,10
    
    CMP AX,24
    JG L2
        
    DIV BX     
    MOV CX,DX 
            
    MOV AH,2 
    ADD AX,48
    MOV DX,AX
    INT 21H  
    
    MOV AH,2 
    ADD CX,48
    MOV DX,CX
    INT 21H
     
    L2: 
      DIV BX
      
      MOV EX1,DX
      
      DIV BX 
      
      MOV EX2,DX
      
      MOV AH,2 
      ADD AX,48
      MOV DX,AX
      INT 21H  
    
      MOV AH,2 
      ADD EX2,48
      MOV DX,EX2
      INT 21H
      
      MOV AH,2 
      ADD EX1,48
      MOV DX,EX1
      INT 21H
       
      
        
         
    EXIT:
    MOV AH,4CH
    END MAIN
MAIN ENDP    
    
    
    




