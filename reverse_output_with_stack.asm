include 'emu8086.inc'
.model small
.stack 100h
.code

main proc
    mov ah,1
    xor cx,cx ;Why we use xor operation? Answer is noted in notebook
    
    input:
    int 21h
    cmp al,0dh
    je exit_input
    push ax
    inc cx
    jmp input
    
    exit_input:
    print "Your reverse output: "
    mov ah, 2 
    
    output:
    pop dx   ;for displaying (as we know we use dl to display out). here its a 16 bit register. So we use dx.
    int 21h
    loop output

    mov ah, 4ch
    int 21h
    main endp
end main


