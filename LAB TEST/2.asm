INCLUDE 'EMU8086.INC'
.MODEL SMALL  
.STACK 100H
.DATA
.CODE

MAIN PROC
    PRINT "Input: " 
	MOV AH,1
	INT 21H
	MOV BL,AL
	PRINTN " "
	PRINT "Output: "
	MOV AH,2
	MOV DL,BL
	INT 21H 
	MOV AH,4CH
	INT 21H
	MAIN ENDP
END MAIN