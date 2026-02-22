
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

ORG 00H

        MOV SI, 5000H       ; Point to the start of data in memory
        MOV CL, 08H         ; Set count to 8 bytes
        MOV BL, 00H         ; Initialize BL to count positive numbers
        MOV BH, 00H         ; Initialize BH to count negative numbers

LOOP:   MOV AL, [SI]        ; Load byte from memory into AL
        RCR AL, 01H         ; Rotate right through carry to check MSB
        JC NEGATIVE         ; If carry is set, it's a negative number
        INC BL              ; Increment positive count
        JMP REPEAT          ; Skip NEGATIVE label

NEGATIVE:
        INC BH              ; Increment negative count

REPEAT: INC SI              ; Move to next memory byte
        DEC CL              ; Decrement counter
        JNZ LOOP            ; Repeat if count not zero

        HLT                 ; Halt program
ret



