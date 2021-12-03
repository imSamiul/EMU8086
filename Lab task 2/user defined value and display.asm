;Samiul Karim
;variable declare and display
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
VARI DB ?
VARG DB 2
VARG2 DB 4
.CODE

MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    PRINT "Enter the number 1 to 9: "
    MOV AH,1 
    INT 21H
    MOV VARI, AL
    
    PRINTN " "
    PRINT "Defined numbers: "
    
    MOV AH,2
    
    MOV BL,VARG
    ADD BL,30H
    MOV DL,BL
    INT 21H 
    PRINT " " 
    MOV CL,VARG2
    ADD CL,30H
    MOV DL,CL
    INT 21H
    PRINTN " "
    PRINT "Given Number: "
    MOV DL,VARI
    INT 21H
    
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    



