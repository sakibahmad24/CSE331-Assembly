.MODEL SMALL
.STACK 100h
.DATA
.CODE
    MAIN PROC
        MOV CX, 5
        
        L1:
            MOV BX, CX
            
            L2:
                MOV DL, "*"
                MOV AH, 2
                INT 21H
                
                LOOP L2
                
                MOV DL, 0AH
                MOV AH, 02H
                INT 21H
                
                MOV DL, 0DH
                MOV AH, 02H
                INT 21H
                
                MOV CX, BX
                
                LOOP L1
                
                
         MOV AH, 4CH
                INT 21H
                MAIN ENDP
                END MAIN



