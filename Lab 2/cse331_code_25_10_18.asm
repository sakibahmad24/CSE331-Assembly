
org 100h

mov al,arr1[4]
mov arr2[0],al

mov al,arr1[3]
mov arr2[1],al

mov al,arr1[2]
mov arr2[2],al

mov al,arr1[1]
mov arr2[3],al

mov al,arr1[0]
mov arr2[4],al


ret

arr1 DB 24h, 10h, 8Ch, 6Ch, 4Fh
arr2 DB 5 dup(?)





