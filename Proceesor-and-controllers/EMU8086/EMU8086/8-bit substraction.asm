
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 

MOV AL,05H
MOV BL,02H
SUB AL,BL
MOV [5001H],AL
ret




