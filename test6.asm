//使用汇编语言实现c=a+b，并在屏幕上显示

//数据段定义三个变量
data segment 
a db ?
b db ?
c db ?
//结束符
string db 'c=$'
data ends

code segment 

main proc far
    assume cs:code, ds:data 
    assume es:data 
    
    start :
        push ds
        //减法运算，讲寄存器中存储的值，进行减运算
        //将结果放入ax寄存器中
        sub ax, ax
        //讲ax压入栈中
        push ax
        
        mov ax, data 
        mov ds, ax
        mov es, ax
        
        mov a, 1
        mov b, 2
        mov al, a 
        mov al, b
        mov c al 

        //获取字符数组的地址
        lea ds, string 
        mov ah, 09
        int 21h
        
        add c, 30h
        mov dl, c 
        mov ah, 2
        int 21h

        mov dl, 0ah
        int 21h
        mov dl, 0dh
        int 21h
        ret
main endp
code ends
end start 
