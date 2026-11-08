.MODEL SMALL
.STACK 100H
.DATA
    frist_char db 'T'
    last_char db 'J'

.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX
    ; Your code here

    ;print first character
    MOV AH, 2       ; DOS function to display character
    MOV DL, frist_char     ; Load first character
    INT 21H         ; Call DOS interrupt

    ;print new line
    MOV AH, 2       ; DOS function to display character
    MOV DL, 0dh     ; Carriage return
    INT 21H         ; Call DOS interrupt
    MOV DL, 0ah     ; Line feed
    INT 21H         ; Call DOS interrupt

    ;print last character
    MOV AH, 2       ; DOS function to display character
    MOV DL, last_char     ; Load last character
    INT 21H         ; Call DOS interrupt

    
    ; Exit program
    MOV AH, 4CH     ; DOS function to exit
    INT 21H         ; Call DOS interrupt
MAIN ENDP
END MAIN