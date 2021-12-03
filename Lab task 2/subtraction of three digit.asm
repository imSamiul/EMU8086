;Samiul Karim
;Subtraction
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
VARI DB ?
VARG DB 1
VARG2 DB 3
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    PRINTN "For Subtraction: "
    PRINT "Enter a digit between 4-9: "
    MOV AH,1 
    INT 21H
    MOV VARI,AL 
    ;moving to register
    MOV BL,VARI
    MOV CL,VARG
    MOV BH,VARG2
    PRINTN " "
    PRINT "Second Digit: "
    MOV AH,2
    ADD CL,30H
    MOV DL,CL
    INT 21H
    PRINTN " "
    PRINT "Third Digit: "
    ADD BH,30H
    MOV DL,BH
    INT 21H
    PRINTN " "
    PRINT "Subtraction of three digit: "
    SUB BL,CL
    ADD BL,30H
    SUB BL,BH
    ADD BL,30H
    MOV DL,BL
    INT 21H
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN




