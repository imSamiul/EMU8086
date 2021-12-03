INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
  
    MOV BL,33H
    
    PRINT 'Enter the number: '
    MOV AH,1
    INT 21H
    MOV CL,AL
    PRINTN
    
    CMP CL,BL
    JE EQUAL
    JG GREATER
    JL LESSER
    
    EQUAL:
    PRINT "Equal"
    JMP EXIT
    
    GREATER:
    PRINT "Greater"
    JMP EXIT
    
    LESSER:
    PRINT "Lower"
    JMP EXIT
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN




