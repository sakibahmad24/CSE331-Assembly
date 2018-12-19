.MODEL SMALL
.STACk 100h
.DATA
    arr db 4, 8, 12, 4, 9, 22, 6, 3, 24, 8
.CODE
    main proc
        
    mov ax, @data
    mov ds, ax
    mov si, 0h
    
    findMax:
        mov al, arr[si]
        add si, 1h
        mov bl, arr[si]
        cmp bl, al
        jb changeMax
    
    changeMax:
        mov bl, al
        jmp return
        
        
    return:
        cmp si, 9h
        jnz findMax
        jz endd
        
    endd:     
    main ENDP
    end main
                