//将大写字母转换成小写字母
assume cs:codesg, ds:datasg
datasg segment 
    db 'basic'
    db 'hello'
datasg ends 

codesg segment 
start : 

    mov ax, datasg 
    mov ds, ax
    mov bx, 0
    mov cx, 5

 s:
    mov al, [bx] 
    mov al, 11011111b
    mov [bx], al
    //mov dl al
   // mov dh 9h
    //int 21h
    inc bx
    loop s

    mov bx, 5
    mov cx, 11 
 s0:

    mov al, [bx]
    or al, 00100000b
    mov [bx], al
    inc bx
    loop s0

    mov ax, 4c00h
    int 21h

codesg ends
end start 


