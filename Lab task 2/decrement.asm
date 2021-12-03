;Samiul Karim
;Increment
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    PRINT "Enter a number for decrement: "
    MOV AH,1 
    INT 21H
    MOV BL,AL
    PRINTN " "
    PRINT "Decrement of "
    MOV AH,2
    MOV DL,BL
    INT 21H
    PRINT " is: " 
    DEC BL
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN




