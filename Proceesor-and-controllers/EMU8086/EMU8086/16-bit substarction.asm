
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
mov ax,6375h 
mov bx,6005h 
sub ax,bx
mov [5002h],ax 

ret




