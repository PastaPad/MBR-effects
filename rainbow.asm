bits 16
org 0x7c00
mov bx, 0xa000
mov es, bx
mov ax, 0x13
int 0x10
v1:
    mov ax, si
v2:
    jge elp
    inc al
elp:
    stosb
    dec dx
    jnz v1
    inc si
    jnz v2
	
times 510-$+$$ db 0
dw 0xAA55
