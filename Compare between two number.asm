;Conditional statement
;compare two value
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
    PRINT "Enter the first digit: "
    MOV AH,1
    INT 21H                                                      
    MOV BL,AL
     
    
    PRINTN
    PRINT "Enter the second digit: "  
    MOV AH,1
    INT 21H
    MOV CL,AL
             
    PRINTN
    CMP BL,CL 
    
    JE EQUAL ;EQUAL == LABEL_NAME  
    JNE NOT_EQUAL ;NOT_EQUAL == LABEL_NAME   
    
    
    EQUAL:
    PRINT "EQUAL"
    JMP EXIT
    
    NOT_EQUAL:
    PRINT "NOT EQUAL"
    JMP EXIT
  
    EXIT:          
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN




