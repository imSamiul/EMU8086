include 'emu8086.inc'
.model small
.code
.stack 100h

main proc
     print "First Number: "
     mov ah,1
     int 21h
     mov bl,al
     printn
     print "Second Number: "
     int 21h
     mov bh,al
     printn
     print "Third Number: "
     int 21h
     mov cl,al
     printn
     print "Forth Number: "
     int 21h
     mov ch,al
     
     sub cl,ch
     sub bh,cl
     sub bl,bh
     add bl,30h
     
     printn
     print "Result: "
     mov ah,2
     mov dl,bl
     int 21h
     
     MOV AH,4CH
     INT 21H
     MAIN ENDP
END MAIN 
     
     
     
    




