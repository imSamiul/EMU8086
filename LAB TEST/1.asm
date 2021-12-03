;Samiul Karim
;Ans to the question no 1
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
NAM DB "Samiul Karim $"
ID DB "201-15-3041 $"
SECTION DB "PC-D $" 


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS, AX
    
    MOV AH,9
    LEA DX,NAM 
    INT 21H
    PRINTN " "
    
  
    LEA DX,ID 
    INT 21H
    PRINTN " "
    
    
    LEA DX,SECTION 
    INT 21H
    PRINTN " "
    
    PRINT "Give the name initiaL: "
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    INT 21H
    MOV CL,AL
    PRINTN
    PRINT "Output: "
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,CL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
 




