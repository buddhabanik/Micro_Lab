.MODEL SMALL
.STACK 100H
.DATA
A   DW   8,28,43,1,47,37,7,8
COUNT DW  7 
EX DB ?
 
.CODE
MAIN PROC                                        
                                                
    MOV AX,@DATA
    MOV DS,AX
    
    MOV DX,COUNT
    
    OLOOP:
        MOV CX,COUNT
        LEA SI,A
        
        ILOOP:
           MOV AX,[SI]
           CMP AX,[SI+2]
           JL L1
           XCHG AX,[SI+2]
           MOV [SI],AX
        L1:
         ADD SI,2
         LOOP ILOOP    
    
    DEC DX
    JNZ OLOOP
    
    MOV CX,COUNT
    INC CX
    LEA SI,A
    
    P1:
      
      MOV BX,[SI]
      CMP BX,9
      JG P2
      
      MOV AH,2
      ADD BX,48
      MOV DX,BX
      INT 21H
      JMP P3 
      
      P2:   
        MOV EX,10
        MOV AX,BX
        DIV EX
        
        MOV EX,AH
        
       MOV AH,2
       ADD AL,48
       MOV DL,AL
       INT 21H
        
       MOV AH,2
       ADD EX,48
       MOV DL,EX
       INT 21H 
     
   P3:
   MOV AH,2
      
       MOV DL,32
       INT 21H
      
   ADD  SI,2
   LOOP P1   
      
    
    
    

        
    EXIT:
    MOV AH,4CH
    END MAIN
MAIN ENDP    
    
    
    









