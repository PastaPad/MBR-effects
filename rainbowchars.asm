bits 16
org 0x7c00
mov bx, 0xa000
mov es, bx
mov ax, 0x13
int 0x10
v2:
    jge elp
    inc al
elp:
    call printchar
    stosb
    dec dx
    jnz v2
    inc bl
    jnz v2

printchar:							
    mov ah,0x0E
    int 0x10
    ret	
times 510-$+$$ db 0
dw 0xAA55
