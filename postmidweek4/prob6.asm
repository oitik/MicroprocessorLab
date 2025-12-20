; Problem 6: RCL - Rotate Through Carry Left

.MODEL SMALL
.STACK 100H
.DATA
    msg DB 'RCL Demo: Rotate with carry$'
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ; Display message
    LEA DX, msg
    MOV AH, 09H
    INT 21H
    
    ; RCL Example
    CLC                 ; Clear carry flag (CF=0)
    MOV AL, 10000001b   ; Binary: 10000001
    RCL AL, 1           ; Rotate left through carry
    ; CF becomes 1, AL = 00000010b
    
    ; Exit
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
