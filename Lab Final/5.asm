INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB "Enter the 1st digit: $"
MSG2 DB "Enter the 2nd digit: $"
MSG3 DB "Enter the highest number of loops of the 2nd digit: $"
VAR DB ?
A DB ?
B DB ?
C DB ?
.CODE
MAIN PROC 
    MOV AX, @DATA
 MOV DS,AX

 LEA DX,MSG1
 MOV AH,9
 INT 21H

 MOV AH,1

 INT 21H
 SUB AL,48
 MOV A,AL
 PRINTN

 LEA DX,MSG2
 MOV AH,9
 INT 21H

 MOV AH,1
 INT 21H
 SUB AL,48
 MOV B,AL
 PRINTN

 LEA DX,MSG3
 MOV AH,9
 INT 21H

 MOV AH,1
 INT 21H
 SUB AL,48

 MOV C,AL
 PRINTN

 MOV VAR, AL


 MOV CX,0
 MOV CL,C
 MOV BL,C


 FIRST:

 CMP BL, 0
 JE EXIT

 MOV AH,2
 MOV AL,A
 ADD AL,48
 MOV DL,AL

 INT 21H

 MOV CX,BX

 SECOND:




 MOV AH,2
 MOV AL,B
 ADD AL,48
 MOV DL,AL
 INT 21H

 LOOP SECOND
 DEC BL

 LOOP FIRST

 EXIT:
 MOV AH,4CH
 
 INT 21H
 MAIN ENDP
END MAIN
.MODEL SMALL
.STACK 100H
.DATA
STRING DB 100 DUP(?)
MSG1 DB "ENTER A STRING: $"
MSG2 DB 0DH, 0AH, "NO. OF CHARACTERS: $"
CHARACTERS DW 0
.CODE
MAIN PROC

 MOV AX, @DATA
 MOV DS, AX
 MOV ES, AX

 MOV AH, 9
 LEA DX, MSG1
 INT 21H

 LEA DI, STRING

 MOV AH, 1
 READ:
 INT 21H
 CMP AL, 0DH
 JE ENDOFSTRING
 STOSB
 JMP READ

 ENDOFSTRING:
 MOV AL, "$"
 STOSB

 XOR BX, BX

 COUNT:
 CMP [STRING+BX], '$'
 JE EXIT
 INC BX
 INC CHARACTERS
 JMP COUNT




 EXIT:

 MOV AH, 9
 LEA DX, MSG2
 INT 21H

 MOV AH, 2
 MOV DX, CHARACTERS
 ADD DX, 30H
 INT 21H

 MAIN ENDP

 
END MAIN