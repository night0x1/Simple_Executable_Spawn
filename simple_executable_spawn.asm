section .data
    cmd db '/bin/sh', 0

section .text
    global _start

_start:
    ; Load /bin/sh string address into rdi
    mov rdi, cmd
    
    ; Set rax to 59 for execve system call
    mov rax, 59
    
    ; Set rdx to 0 for NULL environment
    xor rdx, rdx
    
    ; Invoke execve system call
    syscall
