.MODEL SMALL
.STACK 100h
.DATA
    arr1 db 1, 3, 4, 2, 5
    arr2 db 3, 4, 2, 1, 4
    sum db 5 DUP(0)
    
.CODE
  
  start:
        
        mov ax, @data
        mov ds, ax
        
        mov si, offset arr1
        mov di, offset arr2
        mov bx, offset sum
        mov cx, 5
        
        
   loop1:
        mov al, [si]
        add al, [di]
        mov [bx], al
        
        
        inc si
        inc di
        inc bx
        
        loop loop1
        
       ;mov ah, 4ch
       ;int 21h
       
       end start