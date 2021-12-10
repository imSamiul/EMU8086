include "emu8086.inc"
.model small
.stack 100h
.code
.data
count db ?
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    sub al,30h
    mov count,al  ;al=count=3
    printn
    
    ;mov ch,0
    ;mov cl,count ;cl=3,2,1
    mov bl,1
    
    loop1:
    mov cx,bx   ;cx=1,2,3
    
     loop2:
     cmp bl,count  ;bl=1,2,3
     jg exit 
     
     print '*'
     loop loop2
     printn
     inc bl
     loop loop1
     
     exit:
     mov ah,4ch
     int 21h
     main endp
end main
     
    




