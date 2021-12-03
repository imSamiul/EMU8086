INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
    PRINT "For Increment: "
    MOV BL,2
    INC BL
    ADD BL,48
               
    MOV AH,2
    MOV DL,BL
    INT 21H
               
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN




