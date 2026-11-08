.MODEL SMALL
.STACK 100h
.DATA
    num1 db 5
    num2 db 3
    sum db ?
    msg1 db 'Without ASCII conversion: $'
    msg2 db 0DH, 0AH, 'With ASCII conversion: $'
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Calculate sum
    MOV AL, num1
    ADD AL, num2        ; AL = 5 + 3 = 8
    MOV sum, AL

    ; Display message 1
    MOV AH, 9
    LEA DX, msg1
    INT 21h

    ; Display WITHOUT ASCII conversion (shows nothing or weird character)
    MOV DL, sum         ; DL = 8 (numeric)
    MOV AH, 2
    INT 21h             ; Displays ASCII character 8 (backspace - invisible!)

    ; Display message 2  
    MOV AH, 9
    LEA DX, msg2
    INT 21h

    ; Display WITH ASCII conversion (shows '8')
    MOV DL, sum         ; DL = 8 (numeric)
    ADD DL, 30h         ; DL = 8 + 48 = 56 (ASCII '8')
    MOV AH, 2
    INT 21h             ; Displays character '8'

    ; Exit
    MOV AH, 4Ch
    INT 21h
MAIN ENDP
END MAIN