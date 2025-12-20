; Problem 3: SAR - Shift Arithmetic Right (Preserves sign)

.MODEL SMALL
.STACK 100H
.DATA
    msg DB 'SAR Demo: Divide with sign:     $'
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ; Display message
    LEA DX, msg
    MOV AH, 09H
    INT 21H
    ;1111 0001
    ;1111 1000
    ; SAR Example with negative number
    MOV AL, 11110001b   ; -15 in signed binary
    SAR AL, 1           ; Divide by 2, sign preserved
    ; Now AL = 11111110b (-2)
    ; MSB stays 1 (negative)

    ADD AL, 50h
    MOV DL, AL
    MOV AH, 02H
    INT 21H
    
    ; Exit
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
