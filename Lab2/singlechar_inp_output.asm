.MODEL SMALL
.STACK 100H

.DATA
    MSG1 DB 'Enter a character: $'
    MSG2 DB 'You entered: $'
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Display prompt message
    MOV AH, 9       ; DOS function 09H - Display string
    LEA DX, MSG1    ; Load address of the message
    INT 21H         ; Call DOS interrupt 21H

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

    ; Display prompt message for echo
    MOV AH, 9       ; DOS function 09H - Display string
    LEA DX, MSG2    ; Load address of the message
    INT 21H         ; Call DOS interrupt 21H

    ; Echo the character back
    MOV AH, 2
    MOV DL, BL      ; Move character to DL for output
    INT 21H         ; Call DOS interrupt 21H

    
    MOV AH, 4CH     ; DOS function 4CH - Terminate program
    INT 21H         ; Call DOS interrupt 21H



MAIN ENDP
END MAIN