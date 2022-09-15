bits 16
org 0x7c00
mov bx, 0xa000
mov es, bx
mov ax, 0x13
int 0x10
v1:
	mov di, 10
	call print
print:								
    push ax
	cld
v2:
    jge elp
    inc al
elp:
	call printchar
    add dx, si
    stosb
    inc dx
	jnz v2
    inc bl
    jnz v2
    inc di
    jmp v1

printchar:							
    mov ah,0x0E
    int 0x10
    ret	
times 510-$+$$ db 0
dw 0xAA55