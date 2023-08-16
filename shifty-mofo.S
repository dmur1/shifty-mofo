section .data
    format_str db "rax : 0x%016lx", 10, 0

section .text
    extern  printf
    global  main

main:
    push    rax

    mov     rax, 0x0123456789ABCDEF
    shl     al, 1
    mov     rdi, format_str
    mov     rsi, rax
    call    printf

    mov     rax, 0x0123456789ABCDEF
    shl     ax, 1
    mov     rdi, format_str
    mov     rsi, rax
    call    printf

    mov     rax, 0x0123456789ABCDEF
    shl     eax, 1
    mov     rdi, format_str
    mov     rsi, rax
    call    printf

    mov rax, 60
    xor edi, edi
    syscall
