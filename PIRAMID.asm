.MODEL SMALL
.STACK 100H
.CODE
.DATA
A DB ? 
EX DB ?
COUNT DB ?
SPACE DB ?

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
       
    MOV BL,5
    
    MOV COUNT, 1
    MOV SPACE, 4
     
    L1:
     
     CMP SPACE,0
     JE NEXT 
     MOV DL,SPACE
     MOV EX,DL
     
     
     L3:        
        MOV AH,2
        MOV DL,' '
        INT 21H 
        DEC EX
        CMP EX,0                              
        JNZ L3 
     
     DEC SPACE
     
     NEXT: 
      
     MOV BH,COUNT
     L2:
        MOV AH,2
        MOV DL,'*'
        INT 21H 
        DEC BH
        CMP BH,0                              
        JNZ L2
           
     ;NEWLINE
     MOV AH,2
     MOV DL,0AH
     INT 21H
     MOV DL,0DH
     INT 21H
     
     ADD COUNT,2
     
     DEC BL
     CMP BL,0
     JNZ L1
     
    EXIT:
    MOV AX,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    
    



