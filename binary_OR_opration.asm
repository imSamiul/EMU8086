include 'emu8086.inc'
.model small
.stack 100h
.code

main proc
    mov bh, 101b ;101==5
    or bh, 010b  ;010==2
    add bh,48
    
    mov ah,2
    mov dl,bh
    int 21h ;output = 7 (5+2)
    
    mov ah,4ch
    int 21h
    main endp
end main