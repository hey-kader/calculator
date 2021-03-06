; /usr/local/bin/nasm -f macho64 64.asm && ld -macosx_version_min 10.7.0 -lSystem -o 64 64.o && ./64

global start:
section .text

start:
    mov rax, 0x2000004 ; write
    mov rdi, 1 ; stdout
    mov rsi, message
    mov rdx, message.len 
    syscall

    mov rax, 0x2000001 ; exit 
    mov rdi, 0
    syscall

section .data

message:  db  "Hello, World", 10
.len: equ $ - message
