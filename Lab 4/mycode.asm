
org 100h

mov bx, offset arr
mov al,0

add al, bx[0]
add al, bx[1]
add al, bx[2]
add al, bx[3]
add al, bx[4]
add al, bx[5]
add al, bx[6]
add al, bx[7]
add al, bx[8]
add al, bx[9]


mov bl,0Ah

;mov dx,al
mov ah,9





ret

arr db 10 dup(5,2,3) 



