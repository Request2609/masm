data segment 
a db ?
b db ?
c db ?
string db 'c=S'
data ends 
code segment 
main proc far 
assume cs:code, ds:data 
assume es:data 
start :
push ds
sub ax, ax
push ax, mov

