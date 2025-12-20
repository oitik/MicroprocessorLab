; Problem 2: SHR - Shift Right (Divide by 2)

.MODEL SMALL
.STACK 100H
.DATA
    msg DB 'SHR Demonstration $'
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ; Display message
    LEA DX, msg
    MOV AH, 09H
    INT 21H
    
    ; SHR Example
    MOV AL, 20       ; AL = 8
    SHR AL, 1       ; Shift right by 1 (divide by 2)
    SHR AL, 1       ; Shift right by 1 (divide by 2)
    ; Now AL = 4
    
    ; Display result
    OR AL, 30H     ; Convert to ASCII
    MOV DL, AL
    MOV AH, 02H
    INT 21H
    
    ; Exit
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN