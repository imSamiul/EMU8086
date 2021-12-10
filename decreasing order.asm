;decreasing order
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
    print 'Decreasing order: ' 
    
    sub al,30h 
    cmp al,0
    je exit
    jne l1
    
    l1:
    mov cx,0
    mov cl,al
    
    loop1:
    mov ah,2
    mov dl,bl
    int 21h
    print ' '
    dec bl
    loop loop1
    
  exit:
   mov ah, 4ch
   int 21h
   main endp
end main



