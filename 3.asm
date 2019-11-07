assume cs:test

test segment 
start : move ax 2000H    
        mov ds, ax
        mov bx, [1000H]
        mov ax, [bx]
        inc bx
        inc bx
        mov [bx], ax
        inc bx
        inc bx
        mov [bx], ax
        inc bx
        mov [bx], ax
        inc bx
        mov ax, 4C00H
        int 21H
test ends
end start 
