;Samiul Karim Prodhan
;Name initial

.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AH,2
    MOV DL,53H
    INT 21H
    MOV DL,4BH
    INT 21H
    MOV DL,50H
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN



