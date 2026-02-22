
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
MOV AL,05H
MOV BL,02H
DIV BL
MOV [5004H],AX

ret




