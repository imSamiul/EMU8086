;taking multiple input

.MODEL SMALL  ;TINNY, LARGE, EXTRA LARGE
.STACK 100H   ;STACK MEMORY
.CODE

MAIN PROC
    ;input
    MOV AH,1
    INT 21H ;EXECUTION
    MOV BL,AL ;BL CONTAIN THE VALUE OF AL REGISTER
    INT 21H
    MOV CL,AL
    
    ;new line
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    ;output
    MOV AH,2
    MOV DL, BL
    INT 21H
    MOV DL,CL
    INT 21H 
    
    
     MOV AH,4CH
     INT 21H
     MAIN ENDP
END MAIN



