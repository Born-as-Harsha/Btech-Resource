
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

    MOV CL, 0AH        ; Outer loop counter (number of passes)

AGAIN:  
    MOV DL, CL         ; Inner loop counter = outer loop count
    MOV SI, 4000H      ; Start address of array

BACK:  
    MOV AL, [SI]       ; Load current element into AL
    CMP AL, [SI+1]     ; Compare with next element
    JNC NoXchg         ; If AL >= [SI+1], no exchange

    XCHG AL, [SI+1]    ; Swap AL with [SI+1]
    XCHG AL, [SI]      ; Swap AL with [SI] (completing the exchange)

NoXchg:  
    INC SI             ; Move to next element
    DEC DL             ; Decrement inner loop counter
    JNZ BACK           ; Repeat inner loop if DL ? 0

    DEC CL             ; Decrement outer loop counter
    JNZ AGAIN          ; Repeat outer loop if CL ? 0

    RET                ; Return to DOS




