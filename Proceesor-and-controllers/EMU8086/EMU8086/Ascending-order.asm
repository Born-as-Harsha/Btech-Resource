
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

ORG 100h

        MOV CL, 0AH           ; Outer loop counter = 10 (for sorting passes)

AGAIN:  MOV DL, CL            ; Inner loop counter = CL
        MOV SI, 4000H         ; Starting address of data

BACK:   MOV AL, [SI]          ; Load AL with current element
        CMP AL, [SI+1]        ; Compare with next element
        JC NoXchg             ; If AL < [SI+1], no exchange needed

        XCHG AL, [SI+1]       ; Exchange AL with [SI+1]
        XCHG AL, [SI]         ; Exchange AL with [SI], completing swap

NoXchg: INC SI                ; Move to next element
        DEC DL                ; Decrement inner loop counter
        JNZ BACK              ; Repeat inner loop if DL ? 0

        DEC CL                ; Decrement outer loop counter
        JNZ AGAIN             ; Repeat outer loop if CL ? 0
ret



