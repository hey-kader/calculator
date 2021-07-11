global start:
section start:
    mov rax, 1 ; in at&t notation - that is: mov <destination>, <source>

start:
    call      Count
 
Count:
    mov rax,  1
    cmp rax,  100

    beginning: 
      inc rax
      mov rax, 0x2000004    ; system call write
      mov rdi, 1            ; stdout
      mov rsi, rax          ; mov i onto the stack 
      syscall
      jne beginning
    end: 
    ret


/* vim: ft=gas :
*/
