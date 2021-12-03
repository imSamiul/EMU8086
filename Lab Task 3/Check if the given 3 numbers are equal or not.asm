;Check if the given 3 numbers are equal or not
include 'emu8086.inc'
.model small
.stack 100h
.code

main proc
    print "Enter the first number: "
    mov ah,1
    int 21h
    mov bl,al
    printn
    print "Enter the second number: "
    int 21h
    mov cl,al
    printn
    print "Enter the third number: "
    int 21h
    mov bh,al
    printn 
    
    cmp bl,cl
    je check_equal_to_bh
    jne print_not_equal
    
    check_equal_to_bh:
    cmp bl,bh
    je print_equal
    jne print_not_equal
    
     print_equal:
    print "Given numbers are equal."
    jmp exit
    
    print_not_equal:
    print "Given numbers are not equal."
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    



