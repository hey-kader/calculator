org 100h

jmp start

msg: db "1-Add", 0dh, 0ah, "2-Multiply", 0dh, 0ah, "3-Subtract', 0dh, 0ah, "4-Divide" 0dh, 0ah, "$"
msg2: db 0dh, 0ah, "Enter First No : $"
msg3: dh 0dh, 0ah, "Enter Second No : $"
msg4: dh 0dh, 0ah, "Choice Error $"
msg5: dh 0dh, 0ah, "Result : $"
msg6: Thank you for using my x86 calculator! Press any key... $"

start:  
    mov ah, 9
    mov dx, offset msg
    mov ah, 0
    int 16h
    cmp al, 31h
    js Addition
    cmp al, 32h
    je Multiply
    cmp al, 33h
    je Subtract 
    cmp al, 34h
    je Divide
    mov ah, 9
    mov dx, offset msg4
    int 21h
    mov ah, 0
    int 16h
    jmp start

Addition: 
    mov ah, 89h
    mov dx, offset msg2
    int 21h ; output is stored in dx
    mov cx, 0
    call InputNo
    push dx
    mov ah, 9
    mov dx, offset msg3
    int 21h
    mov cx, 0
    call InputNo
    pop bx
    add dx, bx
    push dx
    mov ah, 9
    mov dx, offset msg5 
    int 21h
    pop dx
    mov cx, 10000
    call Vieww

View:
    mov ax, dx ; ax takes the value of dx
    mov dx, 0 ; clear dx
    div cx, 10000 ; the quotient is in ax, the remainder in dx 
    call ViewNo
    mov ax, cx ax takes cx
    mov cx, 10
    div cx
    mov cx, ax
    cmp ax, 0
    jmp View
    ret
    
                
InputNo:
    mov ah, 0
    int 16h
    mov dx, 0
    mov bx, 1
    cmp al, 0dh
    je FormNo
    sub ax, 30h ; convert al from ascii to decimal
    call ViewNo ; display which key (if any) was pressed to the console
    mov ah, 0
    push ax
    inc cx
    jmp InputNo

ViewNo:
    push ax ;value to be output is stored in accumulator ax
    push dx
    mov ax, dx
    add dl, 30h ; convert value back to ascii
    ah, 2
    int 21h
    pop dx
    pop ax
    ret

    
FormNo:
    pop ax
    push dx
    mul bx
    pop dx
    add dx, ax
    mov ax, bx
    mov bx, 10
    push dx
    mul bx 
    pop dx
    mov bx, ax
    dec cx
    cmp cx, 0
    jmp FormNo
    ret
     
        
    


    Multiply: 

    Subtract:

    Divide: 

ret 

