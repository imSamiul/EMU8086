;Lowest number among 3
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
    jl check_bl
    jmp check_cl
    
    check_bl:
    cmp bl,bh
    jl print_bl
    jmp print_bh
    
    check_cl:
    cmp cl,bh
    jl print_cl
    jmp print_bh
    
    print_bl:
    mov ah,2
    mov dl,bl
    int 21h
    print " is lower number"
    jmp exit
    
    print_cl:
    mov ah,2
    mov dl,cl
    int 21h
    print " is lower number"
    jmp exit
    
    print_bh:
    mov ah,2
    mov dl,bh
    int 21h
    print " is lower number"
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    



