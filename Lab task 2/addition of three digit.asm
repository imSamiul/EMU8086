;Samiul Karim
;Addition
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
VARI DB ?
VARG DB 2
VARG2 DB 3
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    PRINTN "For Summation: "
    PRINT "Enter a digit between 1-4: "
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
    PRINT "Summation of three digit: "
    ADD BL,CL
    SUB BL,30H
    ADD BL,BH
    SUB BL,30H
    MOV DL,BL
    INT 21H
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN




