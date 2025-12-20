; Problem 7: RCR - Rotate Through Carry Right

.MODEL SMALL
.STACK 100H
.DATA
    msg DB 'RCR Demo: Rotate right with carry$'
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ; Display message
    LEA DX, msg
    MOV AH, 09H
    INT 21H
    
    ; RCR Example
    STC                 ; Set carry flag (CF=1)
    MOV AL, 10000000b   ; Binary: 10000000
    RCR AL, 1           ; Rotate right through carry
    ; CF from LSB, AL = 11000000b (CF=1 enters MSB)
    
    ; Exit
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
