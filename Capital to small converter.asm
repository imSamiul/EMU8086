;Capital to small
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
    PRINT "Enter the capital letter: "
    MOV AH,1
    INT 21H
    MOV BL,AL
    ADD BL,32 
    
    PRINTN
    
   
               
    MOV AH,2
    MOV DL,BL
    INT 21H
               
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN




