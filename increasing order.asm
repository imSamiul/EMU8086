;increasing order
include 'emu8086.inc'
.model small
.stack 100h
.code

main proc
    print 'Enter a number: '
    mov ah,1
    int 21h
    mov bl,al
    printn
    
    ;making range to 9
    mov bh,39h
    sub bh, bl
    add bh,1
    
    
    print 'Increasing order: '
    
    mov ah,2
    mov dl,bl
    
    mov cx,0
    mov cl,bh
    
    loop1:
    int 21h
    print ' '
    inc dl
    loop loop1
    
  exit:
   mov ah, 4ch
   int 21h
   main endp
end main



