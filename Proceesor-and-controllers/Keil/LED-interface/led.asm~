ORG 0x00        ; Origin address

START:
    MOV P1, #0x00   ; Turn OFF all LEDs (Port 1 = 00000000)
    ACALL DELAY     ; Call delay subroutine

    MOV P1, #0xFF   ; Turn ON all LEDs (Port 1 = 11111111)
    ACALL DELAY     ; Call delay subroutine

    SJMP START      ; Infinite loop

; --- Delay Subroutine ---
DELAY:
    MOV R2, #0xFF   ; Outer loop
DELAY1:
    MOV R1, #0xFF   ; Inner loop
DELAY2:
    DJNZ R1, DELAY2
    DJNZ R2, DELAY1
    RET

END
