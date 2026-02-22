
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

ORG 100h

MOV SI, 5000H        ; Source index pointing to memory location 5000H
MOV CL, 08H          ; COUNT = 8
MOV BL, 00H          ; Initialize BL to count positive numbers
MOV BH, 00H          ; Initialize BH to count negative numbers

LOOP:  MOV AL, [SI]      ; Load byte from memory into AL
       RCL AL, 01H       ; Rotate AL left through carry by 1 bit
       JC NEGATIVE       ; If carry is set, it's a negative number
       INC BL            ; Increment positive count
       JMP REPEAT        ; Jump to REPEAT

NEGATIVE: INC BH         ; Increment negative count

REPEAT:  INC SI          ; Move to next memory location
         DEC CL          ; Decrease count
         JNZ LOOP        ; Repeat loop if CL != 0

RET




