.MODEL SMALL
.STACK 100H

.CODE

MAIN PROC

    ; Take single character input and echo it back
    MOV AH, 1       ; DOS function 01H - Read character from standard input
    INT 21H         ; Call DOS interrupt 21H
    MOV BL, AL      ; Move input character to BL for output
    
    ;Print a new line for better readability
    MOV AH, 2       ; DOS function 02H - Display character
    MOV DL, 0DH     ; Carriage return
    INT 21H         ; Call DOS interrupt 21H
    MOV DL, 0AH     ; Line feed
    INT 21H         ; Call DOS interrupt 21H

    ; Echo the character back
    MOV AH, 2
    MOV DL, BL      ; Move character to DL for output
    INT 21H         ; Call DOS interrupt 21H

    
    MOV AH, 4CH     ; DOS function 4CH - Terminate program
    INT 21H         ; Call DOS interrupt 21H



MAIN ENDP
END MAIN