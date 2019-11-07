//多字节加法
data segment
    data1 db 0f8h, 60h, 0ach, 74h, 3bh
    data2 db 0c1h, 36h, 9eh, 0d5h, 20h
data ends

code segment 

assume cs: code, ds:data 

start 
    mov ax, data 
    mov ds, ax
    mov cx, 5
    //设置源变址寄存器，还有个di是目标变址寄存器
    //可以存放数据，地址。功能类似，用法类似，一般使用那个都可以
    //在串指令中si用作隐含的源串地址，默认在ds中，di用作目的串地址，默认在es中
    mov si, 0
    //清除cf为标志，单操作码指令，可以直接使用
    clc
looper : 
    mov al, data2[si]
    //带进位的加法指令，会影响标志位cf的变化
    adc, data1[si], al
    inc si
    dec cx 
    //cx结果不为０就跳转
    jnz looper

    //mov ah时结束程序
    //4ch 
    //int 21h是返回操作系统
    //int 21h功能是将ah设置成功能编号
    mov ah, 4ch
    int 21h
code ends
end start 

