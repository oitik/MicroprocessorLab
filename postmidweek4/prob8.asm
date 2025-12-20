; Problem 8: Multiple Shifts - Multiply by 4

.MODEL SMALL
.STACK 100H
.DATA
    msg DB 'Multiply by 4 using SHL$'
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ; Display message
    LEA DX, msg
    MOV AH, 09H
    INT 21H
    
    ; Multiply by 4 = Shift left 2 times
    MOV AL, 2       ; AL = 2
    SHL AL, 2       ; Shift left by 2 (2 * 4 = 8)
    ; Now AL = 8
    
    ; Exit
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
