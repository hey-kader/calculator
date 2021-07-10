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

ret 

