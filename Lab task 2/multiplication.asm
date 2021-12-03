;MULTIPLICATION
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    PRINT "First Digit: "
    MOV AH,2
    MOV DL,32H
    INT 21H
    PRINTN " "
    PRINT "Second Digit: "
    MOV DL,34H
    INT 21H
    PRINTN " "
    PRINT "Multipliation: " 
    MOV AL,2
    MOV BL,4
    MUL BL
   
    ADD AL,48
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN



