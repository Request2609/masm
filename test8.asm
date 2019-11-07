data segment 
num db 01h, 12h, 34h, 45h
sum db ?
data ends

code segment 

assume cs:code, ds:data

start :
    //设置数据段为data
    mov ax, data 
    mov ds, ax
    //取地址指令，offset data 即指向num的首地址给bx
    mov bx, offset num
    
    //将数据段中bx指向的数据存到al中
    mov al, [bx]
    //将bx的指向递增
    inc bx

    add al, [bx]
    mov sum, al

    //将结果打印出来
    mov dl, sum
    mov dh, 09h
    int 21h
code ends
end start 
    
