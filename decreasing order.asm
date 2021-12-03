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
    
    mov ah,2
    mov dl,bl
    
    sub bl,30h
    ;mov ch,0
    mov cx,0
    mov cl,bl ;6
    
    loop1:
    int 21h
    print ' '
    dec dl
    loop loop1
    
  exit:
   mov ah, 4ch
   int 21h
   main endp
end main



