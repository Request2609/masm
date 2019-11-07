//将大写字母转换成小写字母
assume cs:code, ds:data, ss:stack

data segment 
    db 'HELLO'
data ends


code segment 
    
start :
    mov ax, data 
    mov ds, ax 
    mov sp, 8
    //将大写字母转换成小写字母
    and ds:[0], 00010000b
    and ds:[1], 00010000b
    and ds:[2], 00010000b
    and ds:[3], 00010000b
    and ds:[4], 00010000b
code ends 

end start
