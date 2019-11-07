assume cs:code 
code segment 
    mov bx, 0 //偏移地址从0开始
    mov cx, 12a //循环12次
    //设置段起始地址
s:  mov ax, 0ffffh 
    //从ax所在单位的地址取值赋值给ds
    mov ds, ax //(ds)=0ffffh 
    //内存单元是８位，所以使用dl来接受偏移地址 //寄存器间接寻址
    //ds*10+bx对应的地址开始，找到一个字节的数据赋值给dl
    mov dl, [bx] //dl=((ds)*10h+(bx))
    //设置段地址
    mov ax, 0020h
    //将段地址重新赋值给ds
    mov ds, ax  //ds = 0020h
    //dl重新赋值给[bx]
    mov [bx], dl  //寄存器间接寻址方式ds*10h+bx找到相应地址空间，然后将dl中的值赋值填写到相应空间
    //递增bx
    inc bx
    //继续执行循环
    loop s  
    mov ax, 4c00h
    int 21h
code ends
end
