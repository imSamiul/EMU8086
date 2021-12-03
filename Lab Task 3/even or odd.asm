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
    je even
    cmp bl,34h
    je even
    cmp bl,36h
    je even
    cmp bl,38h
    je even
    jne odd
    
    even:
    print 'This is a even number.'
    jmp exit
    
    odd:
    print 'This is a odd number.'
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    



