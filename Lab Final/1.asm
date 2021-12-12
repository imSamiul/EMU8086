include 'emu8086.inc'
.model small
.stack 100h
.code

main proc
    print "Enter the number: " 
    mov ah,1
    int 21h
    mov bl,al
    printn
    
    cmp bl,32h
    je even
    cmp bl,34h
    je even
    cmp bl,36h
    je even
    cmp bl,38h
    je even
    jne odd
    
      
    odd:
    mov cx,5 
    mov ah,2
    mov dl,31h
    l1:
    int 21h
    inc dl
    loop l1
    jmp ai

    even:
    mov cx,4 
    mov ah,2
    mov dl,36h
    l2:
    int 21h
    inc dl
    loop l2
    jmp ai
    
    ai:
    printn
    print "Enter another number: " 
    mov ah,1
    int 21h
    mov cl,al
    printn
    cmp cl,bl
    je exit
    print "1 3 5 7 9"
    
  
    exit:
    mov ah,4ch
    int 21h
    main endp
end main