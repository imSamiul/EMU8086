;Exit code if user give input 2 else show the output
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
    je equal
    jne show
    
    equal:
    print 'Your program already exit.'
    jmp exit
    
    show:
    print 'Your given value is :'
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    



