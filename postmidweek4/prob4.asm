; Problem 4: ROL - Rotate Left

.MODEL SMALL
.STACK 100H
.DATA
    msg DB 'ROL Demo: Rotate bits left$'
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ; Display message
    LEA DX, msg
    MOV AH, 09H
    INT 21H
    
    ; ROL Example
    MOV AL, 10000001b   ; Binary: 10000001
    ROL AL, 1           ; Rotate left by 1
    ; Now AL = 00000011b (MSB moved to LSB)


    ; prints = 3
    
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
