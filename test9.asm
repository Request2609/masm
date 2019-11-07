
data segment 
    data1 db 01h, 02h, 03h
    sum ?
data ends

code segment 
main proc far 
    assume cs:code, ds:data
start :
    push ds 
    xor ax, ax
    push ax

    //设置数据段
    mov ax, data 
    mov ds, ax

    //bx指向数组num的首地址
    lea bx, data1 
    
    //累加数组中的元素
    mov al, [bx]
    inc bx 
    add al, [bx]
    inc bx
    add al, [bx]
    mov sum, al
    ret
main endp
code ends
end start
