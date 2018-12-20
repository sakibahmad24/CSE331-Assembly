.MODEL SMALL
.STACK 100h
.DATA
arr db 6, 2, 9, 7, 5

.CODE     

    start:
    mov ax, @data
    mov ds, ax
    
    mov si, offset arr
    
    mov cx, 5
    
    findMin:
        mov al, arr[si]
        inc si
        mov bl, arr[si]
        cmp bl, al
        ja replaceMin
        jmp findMin
        
        
    replaceMin:
        mov bl, al
        dec cx
        cmp cx, 0h
        je start2
        jne findMin
        
    start2:    
     mov cx, 5   
    findMax:
        
        mov ah, arr[si]
        inc si
        mov bh, arr[si]
        cmp bh, ah
        jb replaceMax
        jmp findMax
        
        
    replaceMax:
        mov bh, ah
        dec cx
        cmp cx, 0h
        je addSum
        jne findMax
        
    addSum:
        add bl, bh
        
 
        end start
        
        