.MODEL SMALL
.STACK 100H
.DATA
A   DB   8,2,4,9,3,7
COUNT DW  5
 
.CODE
MAIN PROC                                        
                                                
    MOV AX,@DATA
    MOV DS,AX
    
    MOV DX,COUNT
    
    OLOOP:
        MOV CX,COUNT
        LEA SI,A
        
        ILOOP:
           MOV AL,[SI]
           CMP AL,[SI+1]
           JL L1
           XCHG AL,[SI+1]
           MOV [SI],AL
        L1:
         INC SI
         LOOP ILOOP    
    
    DEC DX
    JNZ OLOOP
    
    MOV CX,COUNT
    INC CX
    LEA SI,A
    
    P1:
      MOV AH,2
      MOV BL,[SI] 
      ADD BL,48
      MOV DL,BL
      INC SI
      INT 21H
   LOOP P1   
      
    
    
    

        
    EXIT:
    MOV AH,4CH
    END MAIN
MAIN ENDP    
    
    
    




