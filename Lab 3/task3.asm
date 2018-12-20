org 100h

lea si,str
mov cx,25

count_loop:

mov al,[si]
cmp al,"$"
JZ count
inc si
LOOP count_loop
mov ah,9
int 21h
ret




count:
lea di,str
mov ax,si
mov bx,di
sub ax,bx
add ax,'0'
mov dx,ax
mov ah,2
int 21h
ret

str db "hello$"
