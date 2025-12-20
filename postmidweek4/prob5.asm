; Problem 5: ROR - Rotate Right

.MODEL SMALL
.STACK 100H
.DATA
    msg DB 'ROR Demo: Rotate bits right:   $'
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ; Display message
    LEA DX, msg
    MOV AH, 09H
    INT 21H
    
    ; ROR Example
    MOV AL, 00001000b   ; Binary: 00001000
    ROR AL, 1           ; Rotate right by 1
    ; Now AL = 00000100b (LSB moved to MSB)
    
    ; prints = 4
    ; Display result
    ADD AL, 30H
    MOV DL, AL
    MOV AH, 02H    
    INT 21H


    ; Exit
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
