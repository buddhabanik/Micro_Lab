.MODEL SMALL
.STACK 100H
.CODE
.DATA
A DB ?

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL

    
    SUB BL,48
      
    MOV A,'0'
    
    MOV CX,8
     
    L1:
    
    SHL BL,1
    JNC NEXT
    INC A
    NEXT:
    LOOP L1
    
  
   
    MOV AH,2
    MOV DL,A
    INT 21H
     
    
    
    MOV AX,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    
    



