
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
mov ax,1234h 
mov bx,5678h 
add ax,bx 
mov [5000h],ax

ret




