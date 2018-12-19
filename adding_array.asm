.MODEL SMALL
.STACK 100h
.DATA
    arr1 db 1, 3, 4, 2, 5
    arr2 db 3, 4, 2, 1, 4
    sum db 5 0, 0, 0, 0, 0
    
.CODE
  
  start:
        
        mov ax, @data
        mov ds, ax
        
        lea si, arr1
        lea di, arr2
        lea bx, sum
        
        mov cx, 5h
        
   loop1:
        mov al, [si]
        add al, [di]
        mov [bx], al
        
        inc bx
        inc si
        inc si
        
        loop loop1
        
       mov ah, 4ch
       int 21h
       
       end start