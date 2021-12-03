;addition and subtraction
INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
     PRINT "Enter two numbers: "
     
     MOV AH,1
     INT 21H
     MOV BL,AL
     INT 21H
     MOV CL,AL
     
     PRINTN " "
     
     ADD BL,CL
     MOV AH,2
     SUB BL,30H
     MOV DL,BL
     INT 21H
     
     MOV AH,4CH
     INT 21H
     MAIN ENDP
END MAIN
    
    
                                                        


