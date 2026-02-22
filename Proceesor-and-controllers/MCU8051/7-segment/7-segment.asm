            ORG     0000H          
            MOV     P2, #00H      

MAIN:       MOV     DPTR, #CODES   

BACK:       CLR     A             
            MOVC    A, @A+DPTR     
            JZ      NEXT           
            MOV     P2, A         
            ACALL   DELAY          
            INC     DPTR           
            SJMP    BACK           

NEXT:       SJMP    MAIN           
DELAY:      MOV     R0, #01H

HERE1:      MOV     R1, #02H

HERE:       DJNZ    R1, HERE
            DJNZ    R0, HERE1
            RET

CODES:      DB      3FH, 06H, 5BH, 4FH, 7DH, 07H, 7FH, 6FH, 00H

            END
