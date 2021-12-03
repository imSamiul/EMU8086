;convert hexadecimal to deciaml value
;add header file
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    PRINT "Enter the hexadecimal number: "
    MOV AH,1 
    INT 21H
    MOV BL,AL
    
    
    PRINTN " "
    
    MOV AH,2
    MOV DL,31H
    INT 21H
    
    SUB BL,11H
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    



