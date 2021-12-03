;taking input from user
;take a user defined value
;add the numerical or hexadecimal value to display the number
.MODEL SMALL
.STACK 100H
.DATA
NAM DB ?
LAST_DIGIT DB 1
SECOND_LAST_DIGIT DB 4  
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV NAM,AL
     
    MOV AH,2
    MOV DL,NAM
    INT 21H
    
    ;PRINTING A NEW LINE
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    ;ADD 30H AND DISPLAY THE LAST DIGIT 
    MOV BL, LAST_DIGIT
    ADD BL,30H
    MOV DL,BL
    INT 21H 
    
    ;PRINTING A NEW LINE
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    ;ADD 48 AND DISPLAY THE SECOND LAST DIGIT
    MOV CL,SECOND_LAST_DIGIT
    ADD CL,48
    MOV DL,CL
    INT 21H 
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    
    