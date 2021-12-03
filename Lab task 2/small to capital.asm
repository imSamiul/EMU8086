;small to capital
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    PRINT "Enter a small letter: "
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    SUB BL,20H
    PRINTN " "
    PRINT "Capital letter: "
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN




