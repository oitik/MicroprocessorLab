.MODEL SMALL
.STACK 100H
.DATA
    fname db 'Tanbeer $'
    lname db 0dh, 0ah, 'Jubaer $'

.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX
    
    ; Display the message
    MOV AH, 9       ; DOS function to display string
    LEA DX, fname   ; Load address of first name
    INT 21H         ; Call DOS interrupt

    ; ; Display a new line
    ; MOV AH, 2       ; DOS function to display character
    ; MOV DL, 0dh     ; Carriage return
    ; INT 21H         ; Call DOS interrupt
    ; MOV DL, 0ah     ; Line feed
    ; INT 21H         ; Call DOS interrupt    
    
    ; Display the last name
    LEA DX, lname   ; Load address of last name
    INT 21H         ; Call DOS interrupt
    
    ; Exit program
    MOV AH, 4CH     ; DOS function to exit
    INT 21H         ; Call DOS interrupt
    
MAIN ENDP
END MAIN