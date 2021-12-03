;Samiul Karim Prodhan
;Displaying String

.MODEL SMALL
.STACK 100H
.DATA 
NAM DB "SAMIUL KARIM PRODHAN Shrabon$"
ID DB "201-15-3041 $"
SECTION DB "PC-D $"
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS, AX 
    
    ;displaying name
    LEA DX,NAM
    MOV AH,9
    INT 21H
    ;moving to next line
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    ;displaying id
    LEA DX, ID
    MOV AH,9
    INT 21H
    ;moving to next line
    MOV AH,2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    
    ;displaying section
    MOV AH,9
    LEA DX, SECTION
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    




