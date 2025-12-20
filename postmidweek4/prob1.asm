; Problem 1: SHL - Shift Left (Multiply by 2)

.MODEL SMALL
.STACK 100H
.DATA
    msg DB 'SHL Demonstration:  $'

    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ; Display message
    LEA DX, msg
    MOV AH, 09H
    INT 21H
    
    ; ; SHL Example
    ; MOV AL, 2       ; AL = 2
    ; SHL AL, 1       ; Shift left by 1 (multiply by 2)
    ; SHL AL, 1       ; Shift left by 1 (multiply by 2)
    ; ; Now AL = 8
    
    MOV CL, 2
    ; SHL Example
    MOV AL, 2       ; AL = 2
    SHL AL, CL
    ; Now AL = 8


    ; Display result
    ADD AL, 30H     ; Convert to ASCII
    MOV DL, AL
    MOV AH, 02H
    INT 21H
    
    ; Exit
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN