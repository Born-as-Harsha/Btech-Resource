
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
mov ax,0009h 
mov dx,0000h 
mov bx,0002h 
div bx 
mov [5008h],ax
mov [500Ah],dx 

ret




