;display string

.MODEL LARGE  ;TINNY, LARGE, EXTRA LARGE
.STACK 100H   ;STACK MEMORY
.DATA         ;DATA SEGMENT DB=DEFINE BYTE(SMALL) DW=DEFINE WORD(LARGE)
NAM DB "SAMIUL KARIM PRODHAN $"
ID DB "201-15-3041 $"
SECTION DB "PC-D $"
.CODE

MAIN PROC
    
    ;DATA SEGMENT INITIALIZATION
    MOV AX,@DATA
    MOV DS,AX 
     
    ;displaying name 
    LEA DX,NAM   
    MOV AH,9
    INT 21H
    
   ;printing new line
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    INT 21H   
    
    ;displaying id
    LEA DX,ID
    MOV AH,9
    INT 21H
    
    ;printing new line
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    INT 21H
    
    ;displaying section
    LEA DX,SECTION
    MOV AH,9
    INT 21H
 
     MOV AH,4CH
     INT 21H
     MAIN ENDP
END MAIN



