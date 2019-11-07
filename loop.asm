assume cs:code
code segment
    //设置段开始的地址
    move ax, 0ffffh
    //设置段前缀
    move ds, ax
    //初始化bx，dx的值
    mov bx, 0
    mov dx, 0
    //初始化计数器的值，和loop关系密切
    mov cx, 12
    //cs:[0]段前缀加偏移地址
    //没有段前缀的默认段前缀是ds
s:  mov al, [bx]
    mov ah, 0
    add dx, ax
    inc bx
    loop s
    //回到dos
    mov ax, 4c00h
    int 21h
code ends
end
