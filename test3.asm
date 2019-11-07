assume cs:code, ds:data, ss:stack

data segment 
    dw 0123H, 0234H, 0345H, 0456H, 0789H, 0987H, 0576H, 0907H
data ends

stack segment 
    dw 0, 0, 0 ,0, 0, 0, 0, 0
stack ends

code segment 
start : 
        //将stack 的地址传给ax
        mov ax, stack
        //将ax的地址传给ss
        mov ss, ax
        //堆栈偏移的长度
        mov sp, 16
        //将data的地址传给ax
        mov ax, data 
        //将数据段的地址传给ds
        mov ds, ax
        //从ds中压入并弹出
        push ds:[0]
        push ds:[2]
        pop  ds:[2]
        pop  ds:[0]
        
        mov ax, 4c00h
        int 21h
code ends

end start
