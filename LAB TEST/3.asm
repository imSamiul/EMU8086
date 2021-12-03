;Samiul Karim
;Addition
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
S DB ?
K DB ?
P DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    
    PRINT "Enter the first digit: "
    MOV AH,1 
    INT 21H
    MOV S,AL
    PRINTN 
    PRINT "Enter the second digit: "
    MOV AH,1 
    INT 21H
    MOV K,AL
    PRINTN 
    PRINT "Enter the third digit: "
    MOV AH,1 
    INT 21H
    MOV P,AL
    PRINTN  
    
    MOV CL,S
    MOV BL,K
    MOV BH,P
    
    PRINT "The subtraction of three numbers: "
    SUB CL,BL
    ADD CL,30H
    SUB CL,BH
    ADD CL,30H 
    MOV AH,2
    MOV DL,CL
    INT 21H
   
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN




