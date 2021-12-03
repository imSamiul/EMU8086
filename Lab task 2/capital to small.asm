;capital to small
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    PRINT "Enter a capital letter: "
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    ADD BL,20H
    PRINTN " "
    PRINT "Small letter: "
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN




