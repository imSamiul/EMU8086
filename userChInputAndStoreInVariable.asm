;taking input from user and keep it in a variable
.MODEL SMALL
.STACK 100H
.DATA
NAM DB ?  ;VARIABLE_NAME DB ?
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV NAM,AL
    
    ;printing a new line
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    ;displaying the variable value
    MOV AH,2
    MOV DL,NAM
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    
    